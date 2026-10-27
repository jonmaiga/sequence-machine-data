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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C013
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A054640.P5644575553481038270

`A000203(A002110(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054640.P5644575553481038270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002110 n).toNat

end

end A054640.P5644575553481038270

noncomputable section

/-- A054640: a(n) is the sum of the divisors of the n-th primorial: a(n) = A000203(A002110(n)).

Offset 0, canonical program `A054640.P5644575553481038270`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054640 (n : ℕ) : ℤ :=
  A054640.P5644575553481038270.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073272.P15073051830064550089

`A000040(n+2)-A073271(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073272.P15073051830064550089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A073271 (n + 1)

end

end A073272.P15073051830064550089

noncomputable section

/-- A073272: A000040(n+1) - A073271(n).

Offset 1, canonical program `A073272.P15073051830064550089`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-A073271(n+1)` (program `A073272.P15073051830064550089`, by `A073272.P15073051830064550089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073272 (n : ℕ) : ℤ :=
  A073272.P15073051830064550089.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-A073271(n+1)` (program `A073272.P15073051830064550089`, by `A073272.P15073051830064550089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073272.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A073274.P9123969946531876833

`A000040(n+2)-A073273(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073274.P9123969946531876833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A073273 (n + 1)

end

end A073274.P9123969946531876833

noncomputable section

/-- A073274: a(n) = A000040(n+1) - A073273(n).

Offset 1, canonical program `A073274.P9123969946531876833`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-A073273(n+1)` (program `A073274.P9123969946531876833`, by `A073274.P9123969946531876833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073274 (n : ℕ) : ℤ :=
  A073274.P9123969946531876833.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-A073273(n+1)` (program `A073274.P9123969946531876833`, by `A073274.P9123969946531876833.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073274.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A075424.P8873536088424695582

`A075423(A075423(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075424.P8873536088424695582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (A075423 (n + 2)).toNat

end

end A075424.P8873536088424695582

noncomputable section

/-- A075424: a(n) = A075423(A075423(n)).

Offset 2, canonical program `A075424.P8873536088424695582`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A075423(A075423(n+2))` (program `A075424.P8873536088424695582`, by `A075424.P8873536088424695582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A075424 (n : ℕ) : ℤ :=
  A075424.P8873536088424695582.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A075423(A075423(n+2))` (program `A075424.P8873536088424695582`, by `A075424.P8873536088424695582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A075424.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A048881.P16567064232951496228

`A000120(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048881.P16567064232951496228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - 1

end

end A048881.P16567064232951496228

noncomputable section

/-- A048881: a(n) = A000120(n+1) - 1 = wt(n+1) - 1.

Offset 0, canonical program `A048881.P16567064232951496228`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(n+1)-1` (program `A048881.P16567064232951496228`, by `A048881.P16567064232951496228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048881 (n : ℕ) : ℤ :=
  A048881.P16567064232951496228.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(n+1)-1` (program `A048881.P16567064232951496228`, by `A048881.P16567064232951496228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048881.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A057335.P1378643245781663048

`A000040(A000120(n))*a(floor(n/2))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057335.P1378643245781663048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A000120 n).toNat * a ⌊(n : ℚ) / 2⌋.toNat

end

end A057335.P1378643245781663048

noncomputable section

/-- A057335: a(0) = 1, and for n > 0, a(n) = A000040(A000120(n)) * a(floor(n/2)); essentially sequence A055932 generated using A000120, hence sorted by number of factors.

Offset 0, canonical program `A057335.P1378643245781663048`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000120(n))*a(floor(n/2))` (program `A057335.P1378643245781663048`, by `A057335.P1378643245781663048.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A057335 (n : ℕ) : ℤ :=
  A057335.P1378643245781663048.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000120(n))*a(floor(n/2))` (program `A057335.P1378643245781663048`, by `A057335.P1378643245781663048.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A057335.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A062822.P9758035009921016818

`A000203(A005117(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062822.P9758035009921016818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005117 (n + 1)).toNat

end

end A062822.P9758035009921016818

noncomputable section

/-- A062822: Sum of divisors of the squarefree numbers: sigma(A005117(n)).

Offset 1, canonical program `A062822.P9758035009921016818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062822 (n : ℕ) : ℤ :=
  A062822.P9758035009921016818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062822.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072047.P5309175407323094817

`A001221(A005117(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072047.P5309175407323094817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005117 (n + 1)).toNat

end

end A072047.P5309175407323094817

noncomputable section

/-- A072047: Number of prime factors of the squarefree numbers: omega(A005117(n)).

Offset 1, canonical program `A072047.P5309175407323094817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072047 (n : ℕ) : ℤ :=
  A072047.P5309175407323094817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005117, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072047.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076259.P17974691457858298678

`A005117(n+2)-A005117(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076259.P17974691457858298678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2) - A005117 (n + 1)

end

end A076259.P17974691457858298678

noncomputable section

/-- A076259: Gaps between squarefree numbers: a(n) = A005117(n+1) - A005117(n).

Offset 1, canonical program `A076259.P17974691457858298678`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076259 (n : ℕ) : ℤ :=
  A076259.P17974691457858298678.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A044432.P5964800957522265017

`2*a(n-1)+A005614(n)` with `a(0)=1`
-/

namespace A044432.P5964800957522265017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A005614 n

end

end A044432.P5964800957522265017

noncomputable section

/-- A044432: a(n) is the number whose base-2 representation is d(0)d(1)...d(n), where d=A005614 (the infinite Fibonacci word).

Offset 0, canonical program `A044432.P5964800957522265017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A044432 (n : ℕ) : ℤ :=
  A044432.P5964800957522265017.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A044432.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A045948.P12134323424524739817

`A003418(n+1)/A034386(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045948.P12134323424524739817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A034386 (n + 1) : ℚ)

end

end A045948.P12134323424524739817

noncomputable section

/-- A045948: a(n) = A003418(n)/A034386(n).

Offset 1, canonical program `A045948.P12134323424524739817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045948.P12134323424524739817.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045948.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046818.P4833358550115723064

`A000120(3*n+1)`
-/

namespace A046818.P4833358550115723064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (3 * n + 1)

end

end A046818.P4833358550115723064

noncomputable section

/-- A046818: Number of 1's in binary expansion of 3n+1.

Offset 0, canonical program `A046818.P4833358550115723064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046818 (n : ℕ) : ℤ :=
  A046818.P4833358550115723064.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046820.P8521944609786113338

`A000120(5*n)`
-/

namespace A046820.P8521944609786113338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (5 * n)

end

end A046820.P8521944609786113338

noncomputable section

/-- A046820: Number of 1's in binary expansion of 5n.

Offset 0, canonical program `A046820.P8521944609786113338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046820 (n : ℕ) : ℤ :=
  A046820.P8521944609786113338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046885.P1063669167236759791

`(A046748(n+1)-5^n)/2`
-/

namespace A046885.P1063669167236759791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046748 (n + 1) - (5 ^ n : ℤ) : ℚ) / 2

end

end A046885.P1063669167236759791

noncomputable section

/-- A046885: Row sums of triangle A046658.

Offset 1, canonical program `A046885.P1063669167236759791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046885.P1063669167236759791.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049090.P1203215937391654981

`A006450(A006450(n+1))`
-/

namespace A049090.P1203215937391654981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A006450 (n + 1)).toNat

end

end A049090.P1203215937391654981

noncomputable section

/-- A049090: Primes for which A049076 >= 4.

Offset 1, canonical program `A049090.P1203215937391654981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049090 (n : ℕ) : ℤ :=
  A049090.P1203215937391654981.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049236.P12657372269658951537

`A001221(A052147(n+1))`
-/

namespace A049236.P12657372269658951537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A052147 (n + 1)).toNat

end

end A049236.P12657372269658951537

noncomputable section

/-- A049236: a(n) is the number of distinct prime factors of prime(n) + 2.

Offset 1, canonical program `A049236.P12657372269658951537`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049236 (n : ℕ) : ℤ :=
  A049236.P12657372269658951537.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049457.P8150701209677912842

`A007913((n+1)²+4*(n+1))`
-/

namespace A049457.P8150701209677912842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) ^ 2 + 4 * (n + 1))

end

end A049457.P8150701209677912842

noncomputable section

/-- A049457: Least positive integer k such that the number having periodic continued fraction [ 1,m,1,m,1,m,... ] is of form (a+b*sqrt(k))/c, where a,b,c are positive integers.

Offset 1, canonical program `A049457.P8150701209677912842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049457 (n : ℕ) : ℤ :=
  A049457.P8150701209677912842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049613.P4444371646384926939

`2*(n+3)-A007917(2*(n+3)-2)`
-/

namespace A049613.P4444371646384926939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A007917 (2 * (n + 3) - 2)

end

end A049613.P4444371646384926939

noncomputable section

/-- A049613: a(n) = 2n - (largest prime < 2n-2).

Offset 3, canonical program `A049613.P4444371646384926939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049613 (n : ℕ) : ℤ :=
  A049613.P4444371646384926939.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049614.P5818696899068743169

`A000142(n)/A034386(n)`
-/

namespace A049614.P5818696899068743169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A034386 n : ℚ)

end

end A049614.P5818696899068743169

noncomputable section

/-- A049614: n! divided by its squarefree kernel.

Offset 0, canonical program `A049614.P5818696899068743169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A049614.P5818696899068743169.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050476.P4852240921440524385

`A000984(n)+5*A001791(n)`
-/

namespace A050476.P4852240921440524385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 5 * A001791 n

end

end A050476.P4852240921440524385

noncomputable section

/-- A050476: a(n) = C(n)*(6*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050476.P4852240921440524385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050476 (n : ℕ) : ℤ :=
  A050476.P4852240921440524385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050477.P1271674813469624088

`A000984(n)+6*A001791(n)`
-/

namespace A050477.P1271674813469624088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 6 * A001791 n

end

end A050477.P1271674813469624088

noncomputable section

/-- A050477: a(n) = C(n)*(7*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050477.P1271674813469624088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050477 (n : ℕ) : ℤ :=
  A050477.P1271674813469624088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050478.P11948312383121739126

`A000984(n)+7*A001791(n)`
-/

namespace A050478.P11948312383121739126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 7 * A001791 n

end

end A050478.P11948312383121739126

noncomputable section

/-- A050478: a(n) = C(n)*(8*n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050478.P11948312383121739126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050478 (n : ℕ) : ℤ :=
  A050478.P11948312383121739126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050479.P17354006399765808413

`A000984(n)+8*A001791(n)`
-/

namespace A050479.P17354006399765808413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 8 * A001791 n

end

end A050479.P17354006399765808413

noncomputable section

/-- A050479: a(n) = C(n)*(9*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050479.P17354006399765808413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050479 (n : ℕ) : ℤ :=
  A050479.P17354006399765808413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050489.P16526552866551306306

`A000984(n)+9*A001791(n)`
-/

namespace A050489.P16526552866551306306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 9 * A001791 n

end

end A050489.P16526552866551306306

noncomputable section

/-- A050489: a(n) = C(n)*(10*n + 1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A050489.P16526552866551306306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050489 (n : ℕ) : ℤ :=
  A050489.P16526552866551306306.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050493.P3448081831434903334

`A000120(A000217(n))`
-/

namespace A050493.P3448081831434903334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000217 n).toNat

end

end A050493.P3448081831434903334

noncomputable section

/-- A050493: a(n) = sum of binary digits of n-th triangular number.

Offset 0, canonical program `A050493.P3448081831434903334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050493 (n : ℕ) : ℤ :=
  A050493.P3448081831434903334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A050493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051128.P16009406906113116031

`A004736(n+1)^A002260(n+1)`
-/

namespace A051128.P16009406906113116031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A002260 (n + 1) : ℤ)

end

end A051128.P16009406906113116031

noncomputable section

/-- A051128: Table T(n,k) = n^k read by upwards antidiagonals (n >= 1, k >= 1).

Offset 1, canonical program `A051128.P16009406906113116031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051128 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051128.P16009406906113116031.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051543.P13545436261029071682

`A025555(n+2)/A025555(n+1)`
-/

namespace A051543.P13545436261029071682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025555 (n + 2) : ℚ) / (A025555 (n + 1) : ℚ)

end

end A051543.P13545436261029071682

noncomputable section

/-- A051543: Quotients of consecutive values of lcm of first n triangular numbers (A000217).

Offset 1, canonical program `A051543.P13545436261029071682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051543 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051543.P13545436261029071682.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051944.P8157116428899209073

`A000984(n)+3*A001791(n)`
-/

namespace A051944.P8157116428899209073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 3 * A001791 n

end

end A051944.P8157116428899209073

noncomputable section

/-- A051944: a(n) = C(n)*(4*n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A051944.P8157116428899209073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051944 (n : ℕ) : ℤ :=
  A051944.P8157116428899209073.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051945.P12563148972350424108

`A000984(n)+4*A001791(n)`
-/

namespace A051945.P12563148972350424108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + 4 * A001791 n

end

end A051945.P12563148972350424108

noncomputable section

/-- A051945: a(n) = C(n)*(5*n+1) where C(n) = Catalan numbers (A000108).

Offset 0, canonical program `A051945.P12563148972350424108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051945 (n : ℕ) : ℤ :=
  A051945.P12563148972350424108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051945.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A052795.P17977277070724234113

`A000142(n)*A002295(n)`
-/

namespace A052795.P17977277070724234113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002295 n

end

end A052795.P17977277070724234113

noncomputable section

/-- A052795: a(n) = (6*n)!/(5*n+1)!.

Offset 0, canonical program `A052795.P17977277070724234113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052795 (n : ℕ) : ℤ :=
  A052795.P17977277070724234113.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053144.P18068775638831871522

`A002110(n+1)-A005867(n+1)`
-/

namespace A053144.P18068775638831871522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A005867 (n + 1)

end

end A053144.P18068775638831871522

noncomputable section

/-- A053144: Cototient of the n-th primorial number.

Offset 1, canonical program `A053144.P18068775638831871522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053144 (n : ℕ) : ℤ :=
  A053144.P18068775638831871522.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053840.P4860895383705530862

`A010874(A053824(n))`
-/

namespace A053840.P4860895383705530862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A053824 n).toNat

end

end A053840.P4860895383705530862

noncomputable section

/-- A053840: (Sum of digits of n written in base 5) modulo 5.

Offset 0, canonical program `A053840.P4860895383705530862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053840 (n : ℕ) : ℤ :=
  A053840.P4860895383705530862.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053867.P619439304857458615

`A001065(n+1)%2`
-/

namespace A053867.P619439304857458615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1)) 2

end

end A053867.P619439304857458615

noncomputable section

/-- A053867: Parity of sum of divisors of n less than n.

Offset 1, canonical program `A053867.P619439304857458615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053867 (n : ℕ) : ℤ :=
  A053867.P619439304857458615.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053867.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054271.P15805124556475953257

`A000040(n+1)²-A007917(A000040(n+1)²)`
-/

namespace A054271.P15805124556475953257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A007917 (A000040 (n + 1) ^ 2).toNat

end

end A054271.P15805124556475953257

noncomputable section

/-- A054271: Difference between prime(n)^2 and the previous prime.

Offset 1, canonical program `A054271.P15805124556475953257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054271 (n : ℕ) : ℤ :=
  A054271.P15805124556475953257.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054652.P17368560212762667573

`n!*A002720(n)`
-/

namespace A054652.P17368560212762667573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002720 n

end

end A054652.P17368560212762667573

noncomputable section

/-- A054652: Number of acyclic orientations of the Hamming graph (K_2) x (K_n).

Offset 0, canonical program `A054652.P17368560212762667573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054652 (n : ℕ) : ℤ :=
  A054652.P17368560212762667573.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054763.P11453275678035021289

`A001223(n+1)%6`
-/

namespace A054763.P11453275678035021289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 6

end

end A054763.P11453275678035021289

noncomputable section

/-- A054763: Residues of consecutive prime differences modulo 6.

Offset 1, canonical program `A054763.P11453275678035021289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054763 (n : ℕ) : ℤ :=
  A054763.P11453275678035021289.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054868.P12564420483956128132

`A000120(A000120(n))`
-/

namespace A054868.P12564420483956128132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n).toNat

end

end A054868.P12564420483956128132

noncomputable section

/-- A054868: Sum of bits of sum of bits of n: a(n) = wt(wt(n)).

Offset 0, canonical program `A054868.P12564420483956128132`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054868 (n : ℕ) : ℤ :=
  A054868.P12564420483956128132.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054888.P1121100851620150953

`A203976(A004277(n))`
-/

namespace A054888.P1121100851620150953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (A004277 n).toNat

end

end A054888.P1121100851620150953

noncomputable section

/-- A054888: Layer counting sequence for hyperbolic tessellation by regular pentagons of angle Pi/2.

Offset 0, canonical program `A054888.P1121100851620150953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054888 (n : ℕ) : ℤ :=
  A054888.P1121100851620150953.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054992.P12592111826039149461

`A046051(2*(n+1))-A046051(n+1)`
-/

namespace A054992.P12592111826039149461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (2 * (n + 1)) - A046051 (n + 1)

end

end A054992.P12592111826039149461

noncomputable section

/-- A054992: Number of prime factors of 2^n + 1 (counted with multiplicity).

Offset 1, canonical program `A054992.P12592111826039149461`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054992 (n : ℕ) : ℤ :=
  A054992.P12592111826039149461.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055204.P17370574123234970740

`(n+1)!/A055071(n+1)`
-/

namespace A055204.P17370574123234970740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A055071 (n + 1) : ℚ)

end

end A055204.P17370574123234970740

noncomputable section

/-- A055204: Squarefree part of n!: n! divided by its largest square divisor.

Offset 1, canonical program `A055204.P17370574123234970740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055204.P17370574123234970740.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055229.P14192550897555320768

`gcd(A008833(n+1), A007913(n+1))`
-/

namespace A055229.P14192550897555320768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008833 (n + 1)) (A007913 (n + 1))

end

end A055229.P14192550897555320768

noncomputable section

/-- A055229: Greatest common divisor of largest square dividing n and squarefree part of n.

Offset 1, canonical program `A055229.P14192550897555320768`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055229 (n : ℕ) : ℤ :=
  (A055229.P14192550897555320768.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055231.P8962300905713718501

`A007947(n+1)/A071773(n+1)`
-/

namespace A055231.P8962300905713718501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A055231.P8962300905713718501

noncomputable section

/-- A055231: Powerfree part of n: product of primes that divide n only once.

Offset 1, canonical program `A055231.P8962300905713718501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055231.P8962300905713718501.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055491.P10975517249915323208

`A007913(n+1)²`
-/

namespace A055491.P10975517249915323208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2

end

end A055491.P10975517249915323208

noncomputable section

/-- A055491: Smallest square divisible by n divided by largest square which divides n.

Offset 1, canonical program `A055491.P10975517249915323208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055491 (n : ℕ) : ℤ :=
  A055491.P10975517249915323208.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055500.P10640790533868860470

`A007917(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A055500.P10640790533868860470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007917 (a (n - 1) + a (n - 2)).toNat

end

end A055500.P10640790533868860470

noncomputable section

/-- A055500: a(0)=1, a(1)=1, a(n) = largest prime <= a(n-1) + a(n-2).

Offset 0, canonical program `A055500.P10640790533868860470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055500 (n : ℕ) : ℤ :=
  A055500.P10640790533868860470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055772.P17344968557640667669

`sqrt(A055071(n+1))`
-/

namespace A055772.P17344968557640667669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055071 (n + 1) : ℝ)

end

end A055772.P17344968557640667669

noncomputable section

/-- A055772: Square root of largest square dividing n!.

Offset 1, canonical program `A055772.P17344968557640667669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055772 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055772.P17344968557640667669.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055772.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055980.P11010028541122949967

`floor(A001008(n+1)/A002805(n+1))`
-/

namespace A055980.P11010028541122949967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)⌋

end

end A055980.P11010028541122949967

noncomputable section

/-- A055980: a(n) = floor(Sum_{i=1..n} 1/i).

Offset 1, canonical program `A055980.P11010028541122949967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055980 (n : ℕ) : ℤ :=
  A055980.P11010028541122949967.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056058.P9205737737520577246

`A007913(A001405(n+1))`
-/

namespace A056058.P9205737737520577246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001405 (n + 1)).toNat

end

end A056058.P9205737737520577246

noncomputable section

/-- A056058: Squarefree part of the n-th central binomial coefficient.

Offset 1, canonical program `A056058.P9205737737520577246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056058 (n : ℕ) : ℤ :=
  A056058.P9205737737520577246.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056175.P9200230780470454519

`A001221(A056057(n+1))`
-/

namespace A056175.P9200230780470454519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056057 (n + 1)).toNat

end

end A056175.P9200230780470454519

noncomputable section

/-- A056175: Number of nonunitary prime divisors of the central binomial coefficient C(n, floor(n/2)) (A001405).

Offset 1, canonical program `A056175.P9200230780470454519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056057, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056175 (n : ℕ) : ℤ :=
  A056175.P9200230780470454519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A056057, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056175.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056565.P10357243078553620225

`29*a(n-1)+a(n-2)+(-1)^n*A001657(n)` with `a(0)=1, a(1)=21`
-/

namespace A056565.P10357243078553620225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  29 * a (n - 1) + a (n - 2) + (-1) ^ n * A001657 n

end

end A056565.P10357243078553620225

noncomputable section

/-- A056565: Fibonomial coefficients.

Offset 0, canonical program `A056565.P10357243078553620225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056565 (n : ℕ) : ℤ :=
  A056565.P10357243078553620225.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056566.P12632555178412067870

`47*a(n-1)-a(n-2)+(-1)^n*A001658(n)` with `a(0)=1, a(1)=34`
-/

namespace A056566.P12632555178412067870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 34] fun n a =>
  47 * a (n - 1) - a (n - 2) + (-1) ^ n * A001658 n

end

end A056566.P12632555178412067870

noncomputable section

/-- A056566: Fibonomial coefficients.

Offset 0, canonical program `A056566.P12632555178412067870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056566 (n : ℕ) : ℤ :=
  A056566.P12632555178412067870.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056566.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A056612.P14448878183547563608

`A000142(n+1)/A002805(n+1)`
-/

namespace A056612.P14448878183547563608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A056612.P14448878183547563608

noncomputable section

/-- A056612: a(n) = gcd(n!, n!*(1 + 1/2 + 1/3 + ... + 1/n)).

Offset 1, canonical program `A056612.P14448878183547563608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056612.P14448878183547563608.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056612.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056791.P10588008937732959129

`A000120(n)+A070939(n)`
-/

namespace A056791.P10588008937732959129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A070939 n

end

end A056791.P10588008937732959129

noncomputable section

/-- A056791: Weight of binary expansion of n + length of binary expansion of n.

Offset 0, canonical program `A056791.P10588008937732959129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056791 (n : ℕ) : ℤ :=
  A056791.P10588008937732959129.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056792.P13266386025487519892

`A000120(n)+A070939(n)-1`
-/

namespace A056792.P13266386025487519892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A070939 n - 1

end

end A056792.P13266386025487519892

noncomputable section

/-- A056792: Minimal number of steps to get from 0 to n by (a) adding 1 or (b) multiplying by 2.

Offset 0, canonical program `A056792.P13266386025487519892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056792 (n : ℕ) : ℤ :=
  A056792.P13266386025487519892.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056839.P9485991888657918283

`A007913(A003418(n))`
-/

namespace A056839.P9485991888657918283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003418 n).toNat

end

end A056839.P9485991888657918283

noncomputable section

/-- A056839: Squarefree part of lcm(1,...,n).

Offset 0, canonical program `A056839.P9485991888657918283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056839 (n : ℕ) : ℤ :=
  A056839.P9485991888657918283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056927.P15198729554865341557

`A000290(n+2)-A053001(n+2)`
-/

namespace A056927.P15198729554865341557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) - A053001 (n + 2)

end

end A056927.P15198729554865341557

noncomputable section

/-- A056927: Difference between n^2 and largest prime less than n^2.

Offset 2, canonical program `A056927.P15198729554865341557`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056927 (n : ℕ) : ℤ :=
  A056927.P15198729554865341557.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057023.P16348844648520426339

`A000265(A006093(n+1))`
-/

namespace A057023.P16348844648520426339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006093 (n + 1)).toNat

end

end A057023.P16348844648520426339

noncomputable section

/-- A057023: Largest odd factor of (n-th prime-1); k when n-th prime is written as k*2^m+1 [with k odd].

Offset 1, canonical program `A057023.P16348844648520426339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057023 (n : ℕ) : ℤ :=
  A057023.P16348844648520426339.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057023.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057061.P8781047681454840188

`A004736(A000040(n+1))`
-/

namespace A057061.P8781047681454840188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000040 (n + 1)).toNat

end

end A057061.P8781047681454840188

noncomputable section

/-- A057061: a(n) = number of the column of (R(i,j)) that contains prime(n), where R(i,j) is the rectangle with antidiagonals 1; 2,3; 4,5,6; ...

Offset 1, canonical program `A057061.P8781047681454840188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057061 (n : ℕ) : ℤ :=
  A057061.P8781047681454840188.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057131.P9189334889060454335

`6*A057130(n+1)-1`
-/

namespace A057131.P9189334889060454335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A057130 (n + 1) - 1

end

end A057131.P9189334889060454335

noncomputable section

/-- A057131: One less than six times product of first n primes of form 6k-1.

Offset 1, canonical program `A057131.P9189334889060454335`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057131 (n : ℕ) : ℤ :=
  A057131.P9189334889060454335.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057130, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057212.P15780615681694366480

`1-A057211(n+1)`
-/

namespace A057212.P15780615681694366480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057211 (n + 1)

end

end A057212.P15780615681694366480

noncomputable section

/-- A057212: n-th run has length n.

Offset 1, canonical program `A057212.P15780615681694366480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057212 (n : ℕ) : ℤ :=
  A057212.P15780615681694366480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057428.P2999489532230392221

`-A057427(n)`
-/

namespace A057428.P2999489532230392221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057427 n

end

end A057428.P2999489532230392221

noncomputable section

/-- A057428: Sign(-n): a(n) = 1 if -n > 0, = -1 if -n < 0, = 0 if n = 0.

Offset 0, canonical program `A057428.P2999489532230392221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057428 (n : ℕ) : ℤ :=
  A057428.P2999489532230392221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057467.P15766535263390806898

`gcd(A001223(n+2), A001223(n+1))`
-/

namespace A057467.P15766535263390806898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001223 (n + 2)) (A001223 (n + 1))

end

end A057467.P15766535263390806898

noncomputable section

/-- A057467: GCD of n-th and (n+1)-st term in the sequence of first differences between primes, A001223.

Offset 1, canonical program `A057467.P15766535263390806898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057467 (n : ℕ) : ℤ :=
  (A057467.P15766535263390806898.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057527.P524985246487583325

`a(n-1)*A055462(n)` with `a(0)=1`
-/

namespace A057527.P524985246487583325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A055462 n

end

end A057527.P524985246487583325

noncomputable section

/-- A057527: 4th level factorials: product of first n superduperfactorials.

Offset 0, canonical program `A057527.P524985246487583325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057527 (n : ℕ) : ℤ :=
  A057527.P524985246487583325.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057588.P10863952034039063574

`A002110(n+1)-1`
-/

namespace A057588.P10863952034039063574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - 1

end

end A057588.P10863952034039063574

noncomputable section

/-- A057588: Kummer numbers: -1 + product of first n consecutive primes.

Offset 1, canonical program `A057588.P10863952034039063574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057588 (n : ℕ) : ℤ :=
  A057588.P10863952034039063574.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057723.P9092718560045484766

`A007947(n+1)*A000203(A003557(n+1))`
-/

namespace A057723.P9092718560045484766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A000203 (A003557 (n + 1)).toNat

end

end A057723.P9092718560045484766

noncomputable section

/-- A057723: Sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A057723.P9092718560045484766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057723 (n : ℕ) : ℤ :=
  A057723.P9092718560045484766.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057835.P14657973214948545378

`A006880(n+1)-A057834(n+1)`
-/

namespace A057835.P14657973214948545378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A057834 (n + 1)

end

end A057835.P14657973214948545378

noncomputable section

/-- A057835: Difference between pi(10^n) and the integer nearest to 10^n / log(10^n).

Offset 1, canonical program `A057835.P14657973214948545378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057835 (n : ℕ) : ℤ :=
  A057835.P14657973214948545378.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057857.P7925582756686219733

`A005867(n)+n`
-/

namespace A057857.P7925582756686219733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n + (n : ℤ)

end

end A057857.P7925582756686219733

noncomputable section

/-- A057857: Number of residue classes modulo n-th primorial number which contain a prime.

Offset 0, canonical program `A057857.P7925582756686219733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057857 (n : ℕ) : ℤ :=
  A057857.P7925582756686219733.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057953.P15661035165603541200

`A046051(3*(n+1))`
-/

namespace A057953.P15661035165603541200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (3 * (n + 1))

end

end A057953.P15661035165603541200

noncomputable section

/-- A057953: Number of prime factors of 8^n - 1 (counted with multiplicity).

Offset 1, canonical program `A057953.P15661035165603541200`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057953 (n : ℕ) : ℤ :=
  A057953.P15661035165603541200.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057957.P2044955254362379841

`A046051(2*(n+1))`
-/

namespace A057957.P2044955254362379841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046051 (2 * (n + 1))

end

end A057957.P2044955254362379841

noncomputable section

/-- A057957: Number of prime factors of 4^n - 1 (counted with multiplicity).

Offset 1, canonical program `A057957.P2044955254362379841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057957 (n : ℕ) : ℤ :=
  A057957.P2044955254362379841.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058220.P17014344912578400484

`A013603(2^(n+1))`
-/

namespace A058220.P17014344912578400484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013603 (2 ^ (n + 1))

end

end A058220.P17014344912578400484

noncomputable section

/-- A058220: Ultra-useful primes: smallest k such that 2^(2^n) - k is prime.

Offset 1, canonical program `A058220.P17014344912578400484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058220 (n : ℕ) : ℤ :=
  A058220.P17014344912578400484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058250.P7078996756873702717

`gcd(A002110(n), A005867(n))`
-/

namespace A058250.P7078996756873702717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A005867 n)

end

end A058250.P7078996756873702717

noncomputable section

/-- A058250: GCD of n-th primorial number and its totient.

Offset 0, canonical program `A058250.P7078996756873702717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058250 (n : ℕ) : ℤ :=
  (A058250.P7078996756873702717.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058251.P2816861864388605484

`lcm(A002110(n), A005867(n))`
-/

namespace A058251.P2816861864388605484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002110 n) (A005867 n)

end

end A058251.P2816861864388605484

noncomputable section

/-- A058251: LCM of n-th primorial number and its Euler totient.

Offset 0, canonical program `A058251.P2816861864388605484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058251 (n : ℕ) : ℤ :=
  (A058251.P2816861864388605484.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059591.P11025850722583355818

`A007913(n²+1)`
-/

namespace A059591.P11025850722583355818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n ^ 2 + 1)

end

end A059591.P11025850722583355818

noncomputable section

/-- A059591: Squarefree part of n^2+1.

Offset 0, canonical program `A059591.P11025850722583355818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059591 (n : ℕ) : ℤ :=
  A059591.P11025850722583355818.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060265.P9470967359991943160

`A007917(2*(n+2))`
-/

namespace A060265.P9470967359991943160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (2 * (n + 2))

end

end A060265.P9470967359991943160

noncomputable section

/-- A060265: Largest prime less than 2n.

Offset 2, canonical program `A060265.P9470967359991943160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060265 (n : ℕ) : ℤ :=
  A060265.P9470967359991943160.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060308.P17439184872653742562

`A007917(2*(n+1))`
-/

namespace A060308.P17439184872653742562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (2 * (n + 1))

end

end A060308.P17439184872653742562

noncomputable section

/-- A060308: Largest prime <= 2n.

Offset 1, canonical program `A060308.P17439184872653742562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060308 (n : ℕ) : ℤ :=
  A060308.P17439184872653742562.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060389.P323680034055948747

`A002110(n-1)*A286624(n)+a(n-3)` with `a(0)=2, a(1)=8, a(2)=38`
-/

namespace A060389.P323680034055948747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 38] fun n a =>
  A002110 (n - 1) * A286624 n + a (n - 3)

end

end A060389.P323680034055948747

noncomputable section

/-- A060389: a(1)=p_1, a(2)=p_1 + p_1*p_2, a(3)=p_1 + p_1*p_2 + p_1*p_2*p_3, ... where p_i is the i-th prime.

Offset 1, canonical program `A060389.P323680034055948747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060389 (n : ℕ) : ℤ :=
  A060389.P323680034055948747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060389.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060432.P9064666053418794146

`A000330(A003056(n+1))+(A003056(n+1)+1)*(n+1-A057944(n+1))`
-/

namespace A060432.P9064666053418794146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A003056 (n + 1)).toNat + (A003056 (n + 1) + 1) * ((n + 1 : ℤ) - A057944 (n + 1))

end

end A060432.P9064666053418794146

noncomputable section

/-- A060432: Partial sums of A002024.

Offset 1, canonical program `A060432.P9064666053418794146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060432 (n : ℕ) : ℤ :=
  A060432.P9064666053418794146.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060542.P12410524968826904241

`A006480(n+1)/6`
-/

namespace A060542.P12410524968826904241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006480 (n + 1) : ℚ) / 6

end

end A060542.P12410524968826904241

noncomputable section

/-- A060542: a(n) = (1/6)*multinomial(3*n;n,n,n).

Offset 1, canonical program `A060542.P12410524968826904241`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060542 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060542.P12410524968826904241.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060549.P14112489990380296126

`A060546(n+1)-A060548(n+1)`
-/

namespace A060549.P14112489990380296126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 1) - A060548 (n + 1)

end

end A060549.P14112489990380296126

noncomputable section

/-- A060549: a(n) is the number of distinct patterns (modulo geometric D3-operations) with strict median-reflective (palindrome) symmetry (i.e., having no other symmetry) which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

Offset 1, canonical program `A060549.P14112489990380296126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060549 (n : ℕ) : ℤ :=
  A060549.P14112489990380296126.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060550.P2251018908041164968

`(A060547(n+1)-A060548(n+1))/2`
-/

namespace A060550.P2251018908041164968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060547 (n + 1) - A060548 (n + 1) : ℚ) / 2

end

end A060550.P2251018908041164968

noncomputable section

/-- A060550: a(n) is the number of distinct patterns (modulo geometric D_3-operations) with no other than strict 120-degree rotational symmetry which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement.

Offset 1, canonical program `A060550.P2251018908041164968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060550.P2251018908041164968.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060551.P6924873238948629771

`A000079(n+1)-3*A060546(n+1)-A060547(n+1)+3*A060548(n+1)`
-/

namespace A060551.P6924873238948629771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - 3 * A060546 (n + 1) - A060547 (n + 1) + 3 * A060548 (n + 1)

end

end A060551.P6924873238948629771

noncomputable section

/-- A060551: a(n) is the number of nonsymmetric patterns (no reflective, nor rotational symmetry) which may be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

Offset 1, canonical program `A060551.P6924873238948629771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060551 (n : ℕ) : ℤ :=
  A060551.P6924873238948629771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060552.P4431457088495515140

`(A000079(n)-A060547(n+1)/2)/3+A060548(n+1)/2-A060546(n+1)/2`
-/

namespace A060552.P4431457088495515140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000079 n : ℚ) - (A060547 (n + 1) : ℚ) / 2) / 3 + (A060548 (n + 1) : ℚ) / 2 - (A060546 (n + 1) : ℚ) / 2

end

end A060552.P4431457088495515140

noncomputable section

/-- A060552: a(n) is the number of distinct (modulo geometric D3-operations) nonsymmetric (no reflective nor rotational symmetry) patterns which can be formed by an equilateral triangular arrangement of closely packed black and white cells satisfying the local matching rule of Pascal's triangle modulo 2, where n is the number of cells in each edge of the arrangement. The matching rule is such that any elementary top-down triangle of three neighboring cells in the arrangement contains either one or three white cells.

Offset 1, canonical program `A060552.P4431457088495515140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060552 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060552.P4431457088495515140.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060753.P10668017178475688467

`A002110(n)/gcd(A005867(n), A002110(n))`
-/

namespace A060753.P10668017178475688467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (Int.gcd (A005867 n) (A002110 n) : ℚ)

end

end A060753.P10668017178475688467

noncomputable section

/-- A060753: Denominator of 1*2*4*6*...*(prime(n-1)-1) / (2*3*5*7*...*prime(n-1)).

Offset 1, canonical program `A060753.P10668017178475688467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060753 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060753.P10668017178475688467.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060797.P4035583817382841193

`floor(sqrt(A002110(n)))`
-/

namespace A060797.P4035583817382841193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002110 n)

end

end A060797.P4035583817382841193

noncomputable section

/-- A060797: Integer part of square root of n-th primorial, A002110(n).

Offset 0, canonical program `A060797.P4035583817382841193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060797 (n : ℕ) : ℤ :=
  A060797.P4035583817382841193.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060881.P16432498397085267069

`A002110(n)+A000040(n+1)`
-/

namespace A060881.P16432498397085267069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + A000040 (n + 1)

end

end A060881.P16432498397085267069

noncomputable section

/-- A060881: a(n) = primorial(n) + prime(n + 1), where primorial(n) = A002110(n).

Offset 0, canonical program `A060881.P16432498397085267069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060881 (n : ℕ) : ℤ :=
  A060881.P16432498397085267069.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061019.P3085281496578978067

`(n+1)*A008836(n+1)`
-/

namespace A061019.P3085281496578978067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008836 (n + 1)

end

end A061019.P3085281496578978067

noncomputable section

/-- A061019: Negate primes in factorization of n.

Offset 1, canonical program `A061019.P3085281496578978067`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061019 (n : ℕ) : ℤ :=
  A061019.P3085281496578978067.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061019.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061104.P7332019098736278192

`A051885(n²)`
-/

namespace A061104.P7332019098736278192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (n ^ 2)

end

end A061104.P7332019098736278192

noncomputable section

/-- A061104: Smallest number whose sum of digits is n^2.

Offset 0, canonical program `A061104.P7332019098736278192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061104 (n : ℕ) : ℤ :=
  A061104.P7332019098736278192.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061213.P18150382600562520076

`A006472(n+2)+1`
-/

namespace A061213.P18150382600562520076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006472 (n + 2) + 1

end

end A061213.P18150382600562520076

noncomputable section

/-- A061213: a(n) = 1 + product of first n positive triangular numbers (A000217).

Offset 1, canonical program `A061213.P18150382600562520076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061213 (n : ℕ) : ℤ :=
  A061213.P18150382600562520076.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061285.P10609956706754571851

`sqrt(A034785(n+2)/2)`
-/

namespace A061285.P10609956706754571851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A034785 (n + 2) : ℚ) / 2 : ℝ)

end

end A061285.P10609956706754571851

noncomputable section

/-- A061285: a(n) = 2^((prime(n) - 1)/2).

Offset 2, canonical program `A061285.P10609956706754571851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061285.P10609956706754571851.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061286.P17711368514956108922

`2^A006093(n+1)`
-/

namespace A061286.P17711368514956108922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006093 (n + 1) : ℤ)

end

end A061286.P17711368514956108922

noncomputable section

/-- A061286: Smallest integer for which the number of divisors is the n-th prime.

Offset 1, canonical program `A061286.P17711368514956108922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061286.P17711368514956108922.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061319.P10407569909786837890

`A061318(n)/4`
-/

namespace A061319.P10407569909786837890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061318 n : ℚ) / 4

end

end A061319.P10407569909786837890

noncomputable section

/-- A061319: Column 4 of A061315.

Offset 0, canonical program `A061319.P10407569909786837890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061319.P10407569909786837890.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061537.P7218639686472403361

`(n+1)^(A034444(n+1)/2)`
-/

namespace A061537.P7218639686472403361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A034444 (n + 1) : ℚ) / 2 : ℝ)

end

end A061537.P7218639686472403361

noncomputable section

/-- A061537: Product of the unitary divisors of n: a(n) = Product_{d|n, gcd(d,n/d) = 1} d.

Offset 1, canonical program `A061537.P7218639686472403361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061537.P7218639686472403361.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061537.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061593.P3672767219440793987

`17*A027471(n+3)-126*A000244(n+1)+A025169(n+5)`
-/

namespace A061593.P3672767219440793987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A027471 (n + 3) - 126 * A000244 (n + 1) + A025169 (n + 5)

end

end A061593.P3672767219440793987

noncomputable section

/-- A061593: Number of ways to place 2n nonattacking kings on a 4 X 2n chessboard.

Offset 1, canonical program `A061593.P3672767219440793987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061593 (n : ℕ) : ℤ :=
  A061593.P3672767219440793987.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061720.P15207056722546151889

`A002110(n+1)-A002110(n)`
-/

namespace A061720.P15207056722546151889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A002110 n

end

end A061720.P15207056722546151889

noncomputable section

/-- A061720: First differences of sequence of primorials.

Offset 0, canonical program `A061720.P15207056722546151889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061720 (n : ℕ) : ℤ :=
  A061720.P15207056722546151889.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061885.P4567764245783084005

`n+A057944(n)`
-/

namespace A061885.P4567764245783084005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A057944 n

end

end A061885.P4567764245783084005

noncomputable section

/-- A061885: n + largest triangular number less than or equal to n.

Offset 0, canonical program `A061885.P4567764245783084005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061885 (n : ℕ) : ℤ :=
  A061885.P4567764245783084005.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062378.P530133715863786862

`A003557(A003557(n+1))`
-/

namespace A062378.P530133715863786862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1)).toNat

end

end A062378.P530133715863786862

noncomputable section

/-- A062378: n divided by largest cubefree factor of n.

Offset 1, canonical program `A062378.P530133715863786862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062378 (n : ℕ) : ℤ :=
  A062378.P530133715863786862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062447.P5261838897295069790

`A000040(A002110(n))`
-/

namespace A062447.P5261838897295069790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002110 n).toNat

end

end A062447.P5261838897295069790

noncomputable section

/-- A062447: a(n) = prime(q(n)), where q(n) = A002110(n).

Offset 0, canonical program `A062447.P5261838897295069790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062447 (n : ℕ) : ℤ :=
  A062447.P5261838897295069790.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062503.P11230107813318854754

`A000290(A005117(n+1))`
-/

namespace A062503.P11230107813318854754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A005117 (n + 1)).toNat

end

end A062503.P11230107813318854754

noncomputable section

/-- A062503: Squarefree numbers squared.

Offset 1, canonical program `A062503.P11230107813318854754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062503 (n : ℕ) : ℤ :=
  A062503.P11230107813318854754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062590.P15736737728538598181

`A010051(n+1)*A029835(n+1)`
-/

namespace A062590.P15736737728538598181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A029835 (n + 1)

end

end A062590.P15736737728538598181

noncomputable section

/-- A062590: Variation on A029834: a discrete version of the Mangoldt function. If n is prime then floor(log(prime(n))) else 0.

Offset 1, canonical program `A062590.P15736737728538598181`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062590 (n : ℕ) : ℤ :=
  A062590.P15736737728538598181.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062590.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062731.P15391118010266102110

`A000203(n+1)+A054785(n+1)`
-/

namespace A062731.P15391118010266102110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A054785 (n + 1)

end

end A062731.P15391118010266102110

noncomputable section

/-- A062731: Sum of divisors of 2*n.

Offset 1, canonical program `A062731.P15391118010266102110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062731 (n : ℕ) : ℤ :=
  A062731.P15391118010266102110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062838.P4769683379412633527

`A005117(n+1)^3`
-/

namespace A062838.P4769683379412633527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) ^ 3

end

end A062838.P4769683379412633527

noncomputable section

/-- A062838: Cubes of squarefree numbers.

Offset 1, canonical program `A062838.P4769683379412633527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062838 (n : ℕ) : ℤ :=
  A062838.P4769683379412633527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062970.P9271376026130432570

`A001923(n)+1`
-/

namespace A062970.P9271376026130432570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n + 1

end

end A062970.P9271376026130432570

noncomputable section

/-- A062970: a(n) = 1 + Sum_{j=1..n} j^j.

Offset 0, canonical program `A062970.P9271376026130432570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062970 (n : ℕ) : ℤ :=
  A062970.P9271376026130432570.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063787.P13236937262237871159

`A000120(n)+1`
-/

namespace A063787.P13236937262237871159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

end

end A063787.P13236937262237871159

noncomputable section

/-- A063787: a(2^k) = k + 1 and a(2^k + i) = 1 + a(i) for k >= 0 and 0 < i < 2^k.

Offset 1, canonical program `A063787.P13236937262237871159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063787 (n : ℕ) : ℤ :=
  A063787.P13236937262237871159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064027.P15469288149459066613

`(-1)^(n+1)*(A001157(n+1)-2*A050999(n+1))`
-/

namespace A064027.P15469288149459066613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * (A001157 (n + 1) - 2 * A050999 (n + 1))

end

end A064027.P15469288149459066613

noncomputable section

/-- A064027: a(n) = (-1)^n*Sum_{d|n} (-1)^d*d^2.

Offset 1, canonical program `A064027.P15469288149459066613`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064027 (n : ℕ) : ℤ :=
  A064027.P15469288149459066613.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, A050999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A064027.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064030.P13053883513226172745

`(n+1)!^(A034444((n+1)!)/2)`
-/

namespace A064030.P13053883513226172745
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℝ) ^ ((A034444 (Nat.factorial (n + 1)) : ℚ) / 2 : ℝ)

end

end A064030.P13053883513226172745

noncomputable section

/-- A064030: Product of unitary divisors of n!.

Offset 1, canonical program `A064030.P13053883513226172745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064030 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064030.P13053883513226172745.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064030.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064038.P15280687467531965894

`A026741(A000217(n))`
-/

namespace A064038.P15280687467531965894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000217 n).toNat

end

end A064038.P15280687467531965894

noncomputable section

/-- A064038: Numerator of average number of swaps needed to bubble sort a string of n distinct letters.

Offset 1, canonical program `A064038.P15280687467531965894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064038 (n : ℕ) : ℤ :=
  A064038.P15280687467531965894.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064169.P16990074960060079416

`A001008(n+1)-A002805(n+1)`
-/

namespace A064169.P16990074960060079416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) - A002805 (n + 1)

end

end A064169.P16990074960060079416

noncomputable section

/-- A064169: Numerator - denominator in n-th harmonic number, 1 + 1/2 + 1/3 + ... + 1/n.

Offset 1, canonical program `A064169.P16990074960060079416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064169 (n : ℕ) : ℤ :=
  A064169.P16990074960060079416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064382.P16123904375842693300

`2^n*A022915(n+1)`
-/

namespace A064382.P16123904375842693300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A022915 (n + 1)

end

end A064382.P16123904375842693300

noncomputable section

/-- A064382: Number of ways to put numbers 1, 2, ..., n*(n+1)/2 in a triangular array of n rows in such a way that each row is increasing or decreasing.

Offset 1, canonical program `A064382.P16123904375842693300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064382 (n : ℕ) : ℤ :=
  A064382.P16123904375842693300.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064382.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064464.P4731212445350682202

`ceil(log2(A060692(n+1)))`
-/

namespace A064464.P4731212445350682202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A060692 (n + 1) : ℝ)⌉

end

end A064464.P4731212445350682202

noncomputable section

/-- A064464: Binary order (cf. A029837) of the number of parts if 3^n is partitioned into parts of size 2^n as far as possible and into parts of size 1^n (cf. A060692).

Offset 1, canonical program `A064464.P4731212445350682202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064464 (n : ℕ) : ℤ :=
  A064464.P4731212445350682202.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064464.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064489.P3294584178431202200

`1+A006880(A000040(n+1)-1)`
-/

namespace A064489.P3294584178431202200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A006880 (A000040 (n + 1) - 1).toNat

end

end A064489.P3294584178431202200

noncomputable section

/-- A064489: a(n) is the smallest number m such that prime(m) has prime(n) decimal digits.

Offset 1, canonical program `A064489.P3294584178431202200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064489 (n : ℕ) : ℤ :=
  A064489.P3294584178431202200.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064608.P13779215787646709680

`a(n-1)+A034444(n+1)` with `a(0)=1`
-/

namespace A064608.P13779215787646709680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A034444 (n + 1)

end

end A064608.P13779215787646709680

noncomputable section

/-- A064608: Partial sums of A034444: sum of number of unitary divisors from 1 to n.

Offset 1, canonical program `A064608.P13779215787646709680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064608 (n : ℕ) : ℤ :=
  A064608.P13779215787646709680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064631.P16161069675877379103

`A029837(A064630(n+1)+1)`
-/

namespace A064631.P16161069675877379103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A064630 (n + 1) + 1).toNat

end

end A064631.P16161069675877379103

noncomputable section

/-- A064631: a(n) = ceiling(log_2(A064630(n))).

Offset 1, canonical program `A064631.P16161069675877379103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064631 (n : ℕ) : ℤ :=
  A064631.P16161069675877379103.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064801.P16911737620259658980

`A004202(n+1)-1`
-/

namespace A064801.P16911737620259658980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1) - 1

end

end A064801.P16911737620259658980

noncomputable section

/-- A064801: Take 1, skip 2, take 2, skip 3, take 3, etc.

Offset 1, canonical program `A064801.P16911737620259658980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064801 (n : ℕ) : ℤ :=
  A064801.P16911737620259658980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065043.P15027714353296076488

`A007421(n+1)-1`
-/

namespace A065043.P15027714353296076488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1) - 1

end

end A065043.P15027714353296076488

noncomputable section

/-- A065043: Characteristic function of the numbers with an even number of prime factors (counted with multiplicity): a(n) = 1 if n = A028260(k) for some k then 1 else 0.

Offset 1, canonical program `A065043.P15027714353296076488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065043 (n : ℕ) : ℤ :=
  A065043.P15027714353296076488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065384.P7913686886370303870

`A007917((n+2)*(n+3)/2)`
-/

namespace A065384.P7913686886370303870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (SequenceMachineLib.roundAway (((n + 2) * (n + 3) : ℚ) / 2)).toNat

end

end A065384.P7913686886370303870

noncomputable section

/-- A065384: Largest prime <= n * (n + 1) / 2.

Offset 2, canonical program `A065384.P7913686886370303870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065384 (n : ℕ) : ℤ :=
  A065384.P7913686886370303870.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065412.P611516107746542456

`(A005867(n+1)-A000165(n))/96`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065412.P611516107746542456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) - A000165 n : ℚ) / 96

end

end A065412.P611516107746542456

noncomputable section

/-- A065412: a(n) = (A005867(n+1) - A000165(n))/96.

Offset 0, canonical program `A065412.P611516107746542456`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065412.P611516107746542456.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065423.P420877629150630235

`A026741(n+1)-1`
-/

namespace A065423.P420877629150630235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) - 1

end

end A065423.P420877629150630235

noncomputable section

/-- A065423: Number of ordered length 2 compositions of n with at least one even summand.

Offset 1, canonical program `A065423.P420877629150630235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065423 (n : ℕ) : ℤ :=
  A065423.P420877629150630235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065424.P15360640815705919714

`1/9*A000245(3*(n+1))`
-/

namespace A065424.P15360640815705919714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 9 * (A000245 (3 * (n + 1)) : ℚ)

end

end A065424.P15360640815705919714

noncomputable section

/-- A065424: Catalan-like formula: a(n) = binomial(6*n, 3*n+1)/(9*n+6).

Offset 1, canonical program `A065424.P15360640815705919714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065424.P15360640815705919714.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065435.P6402340277804625801

`A007917(a(n-2))+A007917(a(n-1))` with `a(0)=2, a(1)=3`
-/

namespace A065435.P6402340277804625801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A007917 (a (n - 2)).toNat + A007917 (a (n - 1)).toNat

end

end A065435.P6402340277804625801

noncomputable section

/-- A065435: a(3) = 2, a(4) = 3; for n > 4, a(n) = {a(n-2)}+{a(n-1)}, where {a} means largest prime <= a.

Offset 3, canonical program `A065435.P6402340277804625801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065435 (n : ℕ) : ℤ :=
  A065435.P6402340277804625801.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065730.P12344914159723627506

`A048760(A000040(n+1))`
-/

namespace A065730.P12344914159723627506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000040 (n + 1)).toNat

end

end A065730.P12344914159723627506

noncomputable section

/-- A065730: Largest square <= n-th prime.

Offset 1, canonical program `A065730.P12344914159723627506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065730 (n : ℕ) : ℤ :=
  A065730.P12344914159723627506.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065732.P606433591344290576

`A048760(2^(n+1))`
-/

namespace A065732.P606433591344290576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (2 ^ (n + 1))

end

end A065732.P606433591344290576

noncomputable section

/-- A065732: Largest square <= 2^n.

Offset 1, canonical program `A065732.P606433591344290576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065732 (n : ℕ) : ℤ :=
  A065732.P606433591344290576.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065734.P4170492142303936260

`A048760(A000203(n+1))`
-/

namespace A065734.P4170492142303936260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000203 (n + 1)).toNat

end

end A065734.P4170492142303936260

noncomputable section

/-- A065734: Largest square <= sigma(n).

Offset 1, canonical program `A065734.P4170492142303936260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065734 (n : ℕ) : ℤ :=
  A065734.P4170492142303936260.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065735.P11352999734742994570

`A048760(A002110(n+1))`
-/

namespace A065735.P11352999734742994570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A002110 (n + 1)).toNat

end

end A065735.P11352999734742994570

noncomputable section

/-- A065735: Largest square <= product of first n primes.

Offset 1, canonical program `A065735.P11352999734742994570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065735 (n : ℕ) : ℤ :=
  A065735.P11352999734742994570.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065737.P13959888304798218717

`A048760(C(n+1, 2))`
-/

namespace A065737.P13959888304798218717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (Nat.choose (n + 1) 2)

end

end A065737.P13959888304798218717

noncomputable section

/-- A065737: Largest square <= binomial(n,2).

Offset 1, canonical program `A065737.P13959888304798218717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065737 (n : ℕ) : ℤ :=
  A065737.P13959888304798218717.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065737.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065738.P10550845341086057778

`A048760(A000984(n))`
-/

namespace A065738.P10550845341086057778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000984 n).toNat

end

end A065738.P10550845341086057778

noncomputable section

/-- A065738: Largest square <= binomial(2n,n).

Offset 0, canonical program `A065738.P10550845341086057778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065738 (n : ℕ) : ℤ :=
  A065738.P10550845341086057778.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065738.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065739.P4915094411017210688

`A048760(A000330(n+1))`
-/

namespace A065739.P4915094411017210688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000330 (n + 1)).toNat

end

end A065739.P4915094411017210688

noncomputable section

/-- A065739: Largest square <= sum of first n squares.

Offset 1, canonical program `A065739.P4915094411017210688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065739 (n : ℕ) : ℤ :=
  A065739.P4915094411017210688.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065741.P168978404757248362

`A048760(A001157(n+1))`
-/

namespace A065741.P168978404757248362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A001157 (n + 1)).toNat

end

end A065741.P168978404757248362

noncomputable section

/-- A065741: Largest square <= sum of squares of divisors of n.

Offset 1, canonical program `A065741.P168978404757248362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065741 (n : ℕ) : ℤ :=
  A065741.P168978404757248362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065741.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065766.P4585120731458497929

`A065765(n+1)/3`
-/

namespace A065766.P4585120731458497929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065765 (n + 1) : ℚ) / 3

end

end A065766.P4585120731458497929

noncomputable section

/-- A065766: Sum of divisors of twice a square number, divided by three.

Offset 1, canonical program `A065766.P4585120731458497929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065766 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065766.P4585120731458497929.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065855.P16805213270251966039

`A062298(n+1)-1`
-/

namespace A065855.P16805213270251966039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - 1

end

end A065855.P16805213270251966039

noncomputable section

/-- A065855: Number of composites <= n.

Offset 1, canonical program `A065855.P16805213270251966039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065855 (n : ℕ) : ℤ :=
  A065855.P16805213270251966039.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065863.P16865468073834718678

`A000040(n+1)%A062298(n+1)`
-/

namespace A065863.P16865468073834718678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A062298 (n + 1))

end

end A065863.P16865468073834718678

noncomputable section

/-- A065863: Remainder when n-th prime is divided by the number of nonprimes not exceeding n.

Offset 1, canonical program `A065863.P16865468073834718678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065863 (n : ℕ) : ℤ :=
  A065863.P16865468073834718678.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065864.P2109158428830391663

`(n+1)%A062298(n+1)`
-/

namespace A065864.P2109158428830391663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A062298 (n + 1))

end

end A065864.P2109158428830391663

noncomputable section

/-- A065864: Remainder when n is divided by the number of nonprimes not exceeding n.

Offset 1, canonical program `A065864.P2109158428830391663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065864 (n : ℕ) : ℤ :=
  A065864.P2109158428830391663.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065890.P15936493256530540462

`A014689(n+1)-1`
-/

namespace A065890.P15936493256530540462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 1

end

end A065890.P15936493256530540462

noncomputable section

/-- A065890: Number of composites less than the n-th prime.

Offset 1, canonical program `A065890.P15936493256530540462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065890 (n : ℕ) : ℤ :=
  A065890.P15936493256530540462.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065892.P2310162947045499830

`(n+1)!-A003604(n+1)-1`
-/

namespace A065892.P2310162947045499830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A003604 (n + 1) - 1

end

end A065892.P2310162947045499830

noncomputable section

/-- A065892: Which composite number is n! ?: a(n) = k such that A002808(k) = n!, or 0 if n! is not composite.

Offset 1, canonical program `A065892.P2310162947045499830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065892 (n : ℕ) : ℤ :=
  A065892.P2310162947045499830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065892.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065894.P12674390457359744932

`10^n-1-A006880(n)`
-/

namespace A065894.P12674390457359744932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) - 1 - A006880 n

end

end A065894.P12674390457359744932

noncomputable section

/-- A065894: Number of composites <= 10^n.

Offset 0, canonical program `A065894.P12674390457359744932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065894 (n : ℕ) : ℤ :=
  A065894.P12674390457359744932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065895.P12859102474593536539

`(n+1)^(n+1)-A064151(n+1)-1`
-/

namespace A065895.P12859102474593536539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A064151 (n + 1) - 1

end

end A065895.P12859102474593536539

noncomputable section

/-- A065895: Which composite number is n^n ?: a(n) = k such that A002808(k) = n^n, or 0 if n^n is not composite.

Offset 1, canonical program `A065895.P12859102474593536539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065895 (n : ℕ) : ℤ :=
  A065895.P12859102474593536539.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066838.P8327435795258635139

`A034386(n+1)/A007947(n+1)`
-/

namespace A066838.P8327435795258635139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A066838.P8327435795258635139

noncomputable section

/-- A066838: Product of primes < n that do not divide n.

Offset 1, canonical program `A066838.P8327435795258635139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066838.P8327435795258635139.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066859.P18175774334382217177

`A000203(n+1)*A024816(n+1)`
-/

namespace A066859.P18175774334382217177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A024816 (n + 1)

end

end A066859.P18175774334382217177

noncomputable section

/-- A066859: Product of sums of divisors and non-divisors.

Offset 1, canonical program `A066859.P18175774334382217177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066859 (n : ℕ) : ℤ :=
  A066859.P18175774334382217177.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067076.P14247190955968615804

`A006254(n+1)-2`
-/

namespace A067076.P14247190955968615804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 2

end

end A067076.P14247190955968615804

noncomputable section

/-- A067076: Numbers k such that 2*k + 3 is a prime.

Offset 1, canonical program `A067076.P14247190955968615804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067076 (n : ℕ) : ℤ :=
  A067076.P14247190955968615804.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068068.P4574816363977512760

`A034444(2*(n+1))/2`
-/

namespace A068068.P4574816363977512760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (2 * (n + 1)) : ℚ) / 2

end

end A068068.P4574816363977512760

noncomputable section

/-- A068068: Number of odd unitary divisors of n. d is a unitary divisor of n if d divides n and gcd(d,n/d) = 1.

Offset 1, canonical program `A068068.P4574816363977512760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068068 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068068.P4574816363977512760.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068310.P4092952894517886942

`A007913((n+2)²-1)`
-/

namespace A068310.P4092952894517886942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 2) ^ 2 - 1)

end

end A068310.P4092952894517886942

noncomputable section

/-- A068310: n^2 - 1 divided by its largest square divisor.

Offset 2, canonical program `A068310.P4092952894517886942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068310 (n : ℕ) : ℤ :=
  A068310.P4092952894517886942.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069110.P17141342125716669975

`A007913(A000045(n+1))`
-/

namespace A069110.P17141342125716669975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000045 (n + 1)).toNat

end

end A069110.P17141342125716669975

noncomputable section

/-- A069110: Squarefree part of F(n) (the Fibonacci numbers): the smallest number such that a(n)*F(n) is a square.

Offset 1, canonical program `A069110.P17141342125716669975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069110 (n : ℕ) : ℤ :=
  A069110.P17141342125716669975.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069111.P12631494153249817284

`A007913(2^n+1)`
-/

namespace A069111.P12631494153249817284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 ^ n + 1)

end

end A069111.P12631494153249817284

noncomputable section

/-- A069111: Squarefree part of 2^n+1 : the smallest number such that a(n)*(2^n+1) is a square.

Offset 0, canonical program `A069111.P12631494153249817284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069111 (n : ℕ) : ℤ :=
  A069111.P12631494153249817284.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069112.P8105260594896950661

`A007913(2^(n+1)-1)`
-/

namespace A069112.P8105260594896950661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 ^ (n + 1) - 1)

end

end A069112.P8105260594896950661

noncomputable section

/-- A069112: Squarefree part of 2^n-1 : the smallest number such that a(n)*(2^n-1) is a square.

Offset 1, canonical program `A069112.P8105260594896950661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069112 (n : ℕ) : ℤ :=
  A069112.P8105260594896950661.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069113.P8105437494189770969

`A007913(A000984(n))`
-/

namespace A069113.P8105437494189770969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000984 n).toNat

end

end A069113.P8105437494189770969

noncomputable section

/-- A069113: Squarefree part of C(2n,n), the central binomial numbers: the smallest number such that a(n)*C(2n,n) is a square.

Offset 0, canonical program `A069113.P8105437494189770969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069113 (n : ℕ) : ℤ :=
  A069113.P8105437494189770969.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069114.P11265781668908461192

`A007913(A006093(n+1))`
-/

namespace A069114.P11265781668908461192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A006093 (n + 1)).toNat

end

end A069114.P11265781668908461192

noncomputable section

/-- A069114: Squarefree part of prime(n)-1 : the smallest number such that a(n)*(prime(n)-1) is a square.

Offset 1, canonical program `A069114.P11265781668908461192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069114 (n : ℕ) : ℤ :=
  A069114.P11265781668908461192.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069115.P13502381392976731434

`A007913(A008864(n+1))`
-/

namespace A069115.P13502381392976731434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A008864 (n + 1)).toNat

end

end A069115.P13502381392976731434

noncomputable section

/-- A069115: Squarefree part of prime(n)+1 : the smallest number such that a(n)*(prime(n)+1) is a square.

Offset 1, canonical program `A069115.P13502381392976731434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069115 (n : ℕ) : ℤ :=
  A069115.P13502381392976731434.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069487.P13320891053902283797

`A030078(n+2)*A000040(n+1)-A000040(n+2)*A030078(n+1)`
-/

namespace A069487.P13320891053902283797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 2) * A000040 (n + 1) - A000040 (n + 2) * A030078 (n + 1)

end

end A069487.P13320891053902283797

noncomputable section

/-- A069487: Areas of Pythagorean triangles (A069482, A069484, A069486).

Offset 1, canonical program `A069487.P13320891053902283797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069487 (n : ℕ) : ℤ :=
  A069487.P13320891053902283797.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070010.P5053100523494625955

`gcd(A001065(n+1), A001065(n+2))`
-/

namespace A070010.P5053100523494625955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (n + 1)) (A001065 (n + 2))

end

end A070010.P5053100523494625955

noncomputable section

/-- A070010: GCD of consecutive values of sum-of-proper divisors.

Offset 1, canonical program `A070010.P5053100523494625955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070010 (n : ℕ) : ℤ :=
  (A070010.P5053100523494625955.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070031.P4889884996952388328

`2*A000245(n+1)-A000108(n+1)`
-/

namespace A070031.P4889884996952388328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000245 (n + 1) - A000108 (n + 1)

end

end A070031.P4889884996952388328

noncomputable section

/-- A070031: Expansion of (1+x*C)*C^3, where C = (1-sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A070031.P4889884996952388328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070031 (n : ℕ) : ℤ :=
  A070031.P4889884996952388328.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070750.P13196581040963341553

`2-A039702(n+1)`
-/

namespace A070750.P13196581040963341553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039702 (n + 1)

end

end A070750.P13196581040963341553

noncomputable section

/-- A070750: 0 if n-th prime is even, 1 if n-th prime is == 1 (mod 4), and -1 if n-th prime is == 3 (mod 4).

Offset 1, canonical program `A070750.P13196581040963341553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070750 (n : ℕ) : ℤ :=
  A070750.P13196581040963341553.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070801.P1990675938953888760

`A007917(A000203(n+2))`
-/

namespace A070801.P1990675938953888760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000203 (n + 2)).toNat

end

end A070801.P1990675938953888760

noncomputable section

/-- A070801: Largest prime <= sigma(n): a(n) = prevprime(sigma(n)), where prevprime(n) = A007917(n), the largest prime less than or equal to n.

Offset 2, canonical program `A070801.P1990675938953888760`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070801 (n : ℕ) : ℤ :=
  A070801.P1990675938953888760.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070857.P5345200539959730910

`2*A002057(n)-A000245(n+1)`
-/

namespace A070857.P5345200539959730910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002057 n - A000245 (n + 1)

end

end A070857.P5345200539959730910

noncomputable section

/-- A070857: Expansion of (1+x*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A070857.P5345200539959730910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070857 (n : ℕ) : ℤ :=
  A070857.P5345200539959730910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071215.P17835193548993946931

`A001221(A001043(n+1))`
-/

namespace A071215.P17835193548993946931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001043 (n + 1)).toNat

end

end A071215.P17835193548993946931

noncomputable section

/-- A071215: Number of distinct prime factors of sum of 2 successive primes.

Offset 1, canonical program `A071215.P17835193548993946931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071215 (n : ℕ) : ℤ :=
  A071215.P17835193548993946931.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071255.P17108161913792232219

`A005117(a(n-1)+1)` with `a(0)=2`
-/

namespace A071255.P17108161913792232219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005117 (a (n - 1) + 1).toNat

end

end A071255.P17108161913792232219

noncomputable section

/-- A071255: a(1) = 2, a(n+1) = a(n)-th squarefree number > 1.

Offset 1, canonical program `A071255.P17108161913792232219`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071255 (n : ℕ) : ℤ :=
  A071255.P17108161913792232219.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071555.P10545301006804963414

`1+A002110(n+3)/6`
-/

namespace A071555.P10545301006804963414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (A002110 (n + 3) : ℚ) / 6

end

end A071555.P10545301006804963414

noncomputable section

/-- A071555: Smallest x > 1 such that x^prime(n) == 1 mod(prime(i)) 3<=i<=n.

Offset 3, canonical program `A071555.P10545301006804963414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071555.P10545301006804963414.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071556.P8477878609162426221

`1+A002110(n+4)/30`
-/

namespace A071556.P8477878609162426221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (A002110 (n + 4) : ℚ) / 30

end

end A071556.P8477878609162426221

noncomputable section

/-- A071556: Smallest x > 1 such that x^prime(n) == 1 mod(prime(i)) 4<=i<=n.

Offset 4, canonical program `A071556.P8477878609162426221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071556.P8477878609162426221.a (n - 4))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071617.P17182786669336089371

`A000312(A006093(n+1))`
-/

namespace A071617.P17182786669336089371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A006093 (n + 1)).toNat

end

end A071617.P17182786669336089371

noncomputable section

/-- A071617: a(n) = phi(p)^phi(p) where p = prime(n).

Offset 1, canonical program `A071617.P17182786669336089371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071617 (n : ℕ) : ℤ :=
  A071617.P17182786669336089371.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071674.P17626301056953081499

`A071673(n)%2`
-/

namespace A071674.P17626301056953081499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071673 n) 2

end

end A071674.P17626301056953081499

noncomputable section

/-- A071674: Sequence A071673 reduced modulo 2.

Offset 0, canonical program `A071674.P17626301056953081499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071674 (n : ℕ) : ℤ :=
  A071674.P17626301056953081499.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071682.P9807782394022364356

`ceil(log2(A007097(n)))`
-/

namespace A071682.P9807782394022364356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A007097 n : ℝ)⌉

end

end A071682.P9807782394022364356

noncomputable section

/-- A071682: Least m such that A060207(m) = n.

Offset 2, canonical program `A071682.P9807782394022364356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071682 (n : ℕ) : ℤ :=
  A071682.P9807782394022364356.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071762.P10622872981181749292

`A002275(A003056(n))+(1-A010054(n))*10^A025581(n)`
-/

namespace A071762.P10622872981181749292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (A003056 n).toNat : ℚ) + (1 - A010054 n : ℚ) * (10 : ℚ) ^ (A025581 n : ℤ)

end

end A071762.P10622872981181749292

noncomputable section

/-- A071762: Leftmost 1 is converted to a 2, which then propagates one step at a time until it is rightmost; then it changes to a pair of 1's and the process repeats.

Offset 0, canonical program `A071762.P10622872981181749292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071762 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071762.P10622872981181749292.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071811.P5564819025798822458

`A022559(10^n)`
-/

namespace A071811.P5564819025798822458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (10 ^ n)

end

end A071811.P5564819025798822458

noncomputable section

/-- A071811: a(n) = Sum_{k = 1..10^n} number of primes (counted with multiplicity) dividing k (A001222).

Offset 0, canonical program `A071811.P5564819025798822458`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071811 (n : ℕ) : ℤ :=
  A071811.P5564819025798822458.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071811.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071858.P17336919292413007964

`A010872(A000120(n))`
-/

namespace A071858.P17336919292413007964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000120 n).toNat

end

end A071858.P17336919292413007964

noncomputable section

/-- A071858: (Number of 1's in binary expansion of n) mod 3.

Offset 0, canonical program `A071858.P17336919292413007964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071858 (n : ℕ) : ℤ :=
  A071858.P17336919292413007964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071910.P12114120493175264682

`A059827(n+1)-A000537(n+1)`
-/

namespace A071910.P12114120493175264682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059827 (n + 1) - A000537 (n + 1)

end

end A071910.P12114120493175264682

noncomputable section

/-- A071910: a(n) = t(n)*t(n+1)*t(n+2), where t() are the triangular numbers.

Offset 0, canonical program `A071910.P12114120493175264682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071910 (n : ℕ) : ℤ :=
  A071910.P12114120493175264682.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072057.P2864237752006151958

`A000203(A072055(n+1))`
-/

namespace A072057.P2864237752006151958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072055 (n + 1)).toNat

end

end A072057.P2864237752006151958

noncomputable section

/-- A072057: Sum of divisors of 2*prime(n)+1.

Offset 1, canonical program `A072057.P2864237752006151958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072057 (n : ℕ) : ℤ :=
  A072057.P2864237752006151958.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072058.P15477409953588563310

`A007947(A072055(n+1))`
-/

namespace A072058.P15477409953588563310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A072055 (n + 1)).toNat

end

end A072058.P15477409953588563310

noncomputable section

/-- A072058: Squarefree kernel of 2*prime(n)+1.

Offset 1, canonical program `A072058.P15477409953588563310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072058 (n : ℕ) : ℤ :=
  A072058.P15477409953588563310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072118.P12861172535850328345

`(2*(n+1))!/A007913((n+1)!)²/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072118.P12861172535850328345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / (A007913 (Nat.factorial (n + 1)) ^ 2 : ℚ) / (n + 2 : ℚ)

end

end A072118.P12861172535850328345

noncomputable section

/-- A072118: a(n) = (2*n)!/core(n!)^2/(n+1) where core(x) is the squarefree part of x.

Offset 1, canonical program `A072118.P12861172535850328345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072118.P12861172535850328345.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072205.P4241057387685092381

`A008837(n+1)+1`
-/

namespace A072205.P4241057387685092381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1) + 1

end

end A072205.P4241057387685092381

noncomputable section

/-- A072205: a(n) = (p^2 - p + 2)/2 for p = prime(n); number of squares modulo p^2.

Offset 1, canonical program `A072205.P4241057387685092381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072205 (n : ℕ) : ℤ :=
  A072205.P4241057387685092381.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072206.P1665309574646380212

`A000125(A006093(n+1))`
-/

namespace A072206.P1665309574646380212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A006093 (n + 1)).toNat

end

end A072206.P1665309574646380212

noncomputable section

/-- A072206: Third terms of triple Peano sequence A071988.

Offset 1, canonical program `A072206.P1665309574646380212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072206 (n : ℕ) : ℤ :=
  A072206.P1665309574646380212.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072206.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072491.P3065312345271467892

`1+a(n-A007917(n))` with `a(0)=0, a(1)=1`
-/

namespace A072491.P3065312345271467892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A007917 n).toNat

end

end A072491.P3065312345271467892

noncomputable section

/-- A072491: Define f(1) = 0. For n>=2, let f(n) = n - p where p is the largest prime <= n. a(n) = number of iterations of f to reach 0, starting from n.

Offset 0, canonical program `A072491.P3065312345271467892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072491 (n : ℕ) : ℤ :=
  (A072491.P3065312345271467892.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072608.P17252208234084094213

`A004648(n+1)%2`
-/

namespace A072608.P17252208234084094213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004648 (n + 1)) 2

end

end A072608.P17252208234084094213

noncomputable section

/-- A072608: Parity of remainder Mod(prime(n),n) = A004648(n).

Offset 1, canonical program `A072608.P17252208234084094213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072608 (n : ℕ) : ℤ :=
  A072608.P17252208234084094213.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072638.P14031279018864755668

`A006894(n+1)-1`
-/

namespace A072638.P14031279018864755668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006894 (n + 1) - 1

end

end A072638.P14031279018864755668

noncomputable section

/-- A072638: Number of unary-binary rooted trees of height at most n.

Offset 0, canonical program `A072638.P14031279018864755668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072638 (n : ℕ) : ℤ :=
  A072638.P14031279018864755668.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072680.P3143065957285476925

`A057427(n+2-A007917(n+2))*A001223(A049084(A007917(n+2)))`
-/

namespace A072680.P3143065957285476925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n + 2 : ℤ) - A007917 (n + 2)).toNat * A001223 (A049084 (A007917 (n + 2)).toNat).toNat

end

end A072680.P3143065957285476925

noncomputable section

/-- A072680: Difference between (least prime >= n) and (largest prime <= n).

Offset 2, canonical program `A072680.P3143065957285476925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072680 (n : ℕ) : ℤ :=
  A072680.P3143065957285476925.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072689.P10418100748501464398

`A048761(n+1)-A048760(n+1)`
-/

namespace A072689.P10418100748501464398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (n + 1) - A048760 (n + 1)

end

end A072689.P10418100748501464398

noncomputable section

/-- A072689: Difference between (least square >= n) and (largest square <= n).

Offset 1, canonical program `A072689.P10418100748501464398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072689 (n : ℕ) : ℤ :=
  A072689.P10418100748501464398.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072690.P15726135173610324113

`(n+1-A048760(n+1))*(A048761(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072690.P15726135173610324113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A048760 (n + 1)) * (A048761 (n + 1) - (n + 1 : ℤ))

end

end A072690.P15726135173610324113

noncomputable section

/-- A072690: a(n) = (n - A048760(n)) * (A048761(n) - n).

Offset 1, canonical program `A072690.P15726135173610324113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072690 (n : ℕ) : ℤ :=
  A072690.P15726135173610324113.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072815.P16142886840254368994

`A001065(A016921(n))`
-/

namespace A072815.P16142886840254368994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A016921 n).toNat

end

end A072815.P16142886840254368994

noncomputable section

/-- A072815: Sum of proper divisors of 6n + 1.

Offset 0, canonical program `A072815.P16142886840254368994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072815 (n : ℕ) : ℤ :=
  A072815.P16142886840254368994.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072905.P2770806912493137566

`A007913(n+1)*(A000188(n+1)+1)²`
-/

namespace A072905.P2770806912493137566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * (A000188 (n + 1) + 1) ^ 2

end

end A072905.P2770806912493137566

noncomputable section

/-- A072905: a(n) is the least k > n such that k*n is a square.

Offset 1, canonical program `A072905.P2770806912493137566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072905 (n : ℕ) : ℤ :=
  A072905.P2770806912493137566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074265.P15367670436916694011

`A000002(5*(n+1))`
-/

namespace A074265.P15367670436916694011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (5 * (n + 1))

end

end A074265.P15367670436916694011

noncomputable section

/-- A074265: Values of Kolakoski sequence A000002 at positions n = 0 mod 5.

Offset 1, canonical program `A074265.P15367670436916694011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074265 (n : ℕ) : ℤ :=
  A074265.P15367670436916694011.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074283.P13789611695152124336

`A063477(n+1)-A000045(n+1)`
-/

namespace A074283.P13789611695152124336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063477 (n + 1) - A000045 (n + 1)

end

end A074283.P13789611695152124336

noncomputable section

/-- A074283: Sum of the aliquot divisors of n-th Fibonacci number.

Offset 1, canonical program `A074283.P13789611695152124336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074283 (n : ℕ) : ℤ :=
  A074283.P13789611695152124336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074292.P4626438801662741758

`A000002(3*(n+1)-2)+A000002(3*(n+1)-1)+A000002(3*(n+1))-3`
-/

namespace A074292.P4626438801662741758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * (n + 1) - 2) + A000002 (3 * (n + 1) - 1) + A000002 (3 * (n + 1)) - 3

end

end A074292.P4626438801662741758

noncomputable section

/-- A074292: Dominant digit in successive groups of 3 from the Kolakoski sequence (A000002).

Offset 1, canonical program `A074292.P4626438801662741758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074292 (n : ℕ) : ℤ :=
  A074292.P4626438801662741758.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074325.P346685710110645117

`A001223(A000079(n))`
-/

namespace A074325.P346685710110645117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000079 n).toNat

end

end A074325.P346685710110645117

noncomputable section

/-- A074325: Difference between (1+2^n)-th and (2^n)-th primes. Also number of terms in blocks of A073798.

Offset 0, canonical program `A074325.P346685710110645117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074325 (n : ℕ) : ℤ :=
  A074325.P346685710110645117.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074823.P11429893750671731771

`A034444(n+1)*A008966(n+1)`
-/

namespace A074823.P11429893750671731771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A008966 (n + 1)

end

end A074823.P11429893750671731771

noncomputable section

/-- A074823: a(n) = 2^omega(n)*mu(n)^2.

Offset 1, canonical program `A074823.P11429893750671731771`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074823 (n : ℕ) : ℤ :=
  A074823.P11429893750671731771.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074823.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075062.P14867312179758516467

`(n+1)*A075059(n+1)+A000217(n)`
-/

namespace A075062.P14867312179758516467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075059 (n + 1) + A000217 n

end

end A075062.P14867312179758516467

noncomputable section

/-- A075062: Row sums of triangle in A075059.

Offset 1, canonical program `A075062.P14867312179758516467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075062 (n : ℕ) : ℤ :=
  A075062.P14867312179758516467.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075105.P11919910157851516665

`(n+2)/A075104(n+2)`
-/

namespace A075105.P11919910157851516665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A075104 (n + 2) : ℚ)

end

end A075105.P11919910157851516665

noncomputable section

/-- A075105: Numerator of n/floor(log_2(n)); denominator is A075106(n).

Offset 2, canonical program `A075105.P11919910157851516665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075105 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075105.P11919910157851516665.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075106.P12256319414279370391

`A000523(n+2)/A075104(n+2)`
-/

namespace A075106.P12256319414279370391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000523 (n + 2) : ℚ) / (A075104 (n + 2) : ℚ)

end

end A075106.P12256319414279370391

noncomputable section

/-- A075106: Denominator of n/floor(log_2(n)); numerator is A075105(n).

Offset 2, canonical program `A075106.P12256319414279370391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075106 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075106.P12256319414279370391.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075872.P5560417521258274242

`A060604(n+1)/A000040(n+1)`
-/

namespace A075872.P5560417521258274242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060604 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A075872.P5560417521258274242

noncomputable section

/-- A075872: a(n) = binomial(prime(n),n)/prime(n) where prime(n) = n-th prime.

Offset 1, canonical program `A075872.P5560417521258274242`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075872.P5560417521258274242.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075888.P13966252635621325754

`A069482(n+3)/24`
-/

namespace A075888.P13966252635621325754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069482 (n + 3) : ℚ) / 24

end

end A075888.P13966252635621325754

noncomputable section

/-- A075888: Difference of successive primes squared divided by 24, (prime(n+1)^2 - prime(n)^2)/24.

Offset 3, canonical program `A075888.P13966252635621325754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075888 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075888.P13966252635621325754.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076240.P6976988568774898577

`A006450(n+1)%A000040(n+1)`
-/

namespace A076240.P6976988568774898577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (n + 1)) (A000040 (n + 1))

end

end A076240.P6976988568774898577

noncomputable section

/-- A076240: Remainder when 2nd order prime pp(n) = A006450(n) is divided by n-th prime = A000040(n).

Offset 1, canonical program `A076240.P6976988568774898577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076240 (n : ℕ) : ℤ :=
  A076240.P6976988568774898577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076241.P16335535541013075277

`A006450(n+1)%(n+1)`
-/

namespace A076241.P16335535541013075277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (n + 1)) (n + 1 : ℤ)

end

end A076241.P16335535541013075277

noncomputable section

/-- A076241: Remainder when 2nd order prime pp(n)=A006450(n) is divided by n.

Offset 1, canonical program `A076241.P16335535541013075277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076241 (n : ℕ) : ℤ :=
  A076241.P16335535541013075277.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076242.P9726685083958255532

`A038580(n+1)%A000040(n+1)`
-/

namespace A076242.P9726685083958255532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038580 (n + 1)) (A000040 (n + 1))

end

end A076242.P9726685083958255532

noncomputable section

/-- A076242: Remainder when 3rd order prime A038580(n) is divided by n-th prime=A000040(n).

Offset 1, canonical program `A076242.P9726685083958255532`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076242 (n : ℕ) : ℤ :=
  A076242.P9726685083958255532.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076243.P16034999221877447586

`A038580(n+1)%(n+1)`
-/

namespace A076243.P16034999221877447586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038580 (n + 1)) (n + 1 : ℤ)

end

end A076243.P16034999221877447586

noncomputable section

/-- A076243: Remainder when 3rd-order prime ppp(n) = A038580(n) is divided by n.

Offset 1, canonical program `A076243.P16034999221877447586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076243 (n : ℕ) : ℤ :=
  A076243.P16034999221877447586.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048619.P16767299098900104543

`A180000(n+1)/A152271(n)`
-/

namespace A048619.P16767299098900104543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (A152271 n : ℚ)

end

end A048619.P16767299098900104543

noncomputable section

/-- A048619: a(n) = LCM(binomial(n,0), ..., binomial(n,n)) / binomial(n,floor(n/2)).

Offset 0, canonical program `A048619.P16767299098900104543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048619 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048619.P16767299098900104543.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048671.P10271734858964489763

`A003418(n)/A002944(n+1)`
-/

namespace A048671.P10271734858964489763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A002944 (n + 1) : ℚ)

end

end A048671.P10271734858964489763

noncomputable section

/-- A048671: a(n) is the least common multiple of the proper divisors of n.

Offset 1, canonical program `A048671.P10271734858964489763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048671.P10271734858964489763.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048671.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048974.P12620924037349992420

`A065091(n+1)+2`
-/

namespace A048974.P12620924037349992420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 2

end

end A048974.P12620924037349992420

noncomputable section

/-- A048974: Odd numbers that are the sum of 2 primes.

Offset 1, canonical program `A048974.P12620924037349992420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048974 (n : ℕ) : ℤ :=
  A048974.P12620924037349992420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053105.P6373947143947019943

`A034829(n+2)/9`
-/

namespace A053105.P6373947143947019943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034829 (n + 2) : ℚ) / 9

end

end A053105.P6373947143947019943

noncomputable section

/-- A053105: a(n) = ((7*n+9)(!^7))/9(!^7), related to A034829 (((7*n+2)(!^7))/2 sept-, or 7-factorials).

Offset 0, canonical program `A053105.P6373947143947019943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053105 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053105.P6373947143947019943.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053601.P7804858873248441211

`A002884(n)/n!`
-/

namespace A053601.P7804858873248441211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002884 n : ℚ) / (Nat.factorial n : ℚ)

end

end A053601.P7804858873248441211

noncomputable section

/-- A053601: Number of bases of an n-dimensional vector space over GF(2).

Offset 0, canonical program `A053601.P7804858873248441211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053601 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053601.P7804858873248441211.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053838.P12960240221396794079

`A010872(A053735(n))`
-/

namespace A053838.P12960240221396794079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A053735 n).toNat

end

end A053838.P12960240221396794079

noncomputable section

/-- A053838: a(n) = (sum of digits of n written in base 3) modulo 3.

Offset 0, canonical program `A053838.P12960240221396794079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053838 (n : ℕ) : ℤ :=
  A053838.P12960240221396794079.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053839.P2067355896077085715

`A010873(A053737(n))`
-/

namespace A053839.P2067355896077085715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A053737 n).toNat

end

end A053839.P2067355896077085715

noncomputable section

/-- A053839: a(n) = (sum of digits of n written in base 4) modulo 4.

Offset 0, canonical program `A053839.P2067355896077085715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053839 (n : ℕ) : ℤ :=
  A053839.P2067355896077085715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053841.P1470426052583301090

`A010875(A053827(n))`
-/

namespace A053841.P1470426052583301090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A053827 n).toNat

end

end A053841.P1470426052583301090

noncomputable section

/-- A053841: (Sum of digits of n written in base 6) modulo 6.

Offset 0, canonical program `A053841.P1470426052583301090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053841 (n : ℕ) : ℤ :=
  A053841.P1470426052583301090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054248.P10611427663173372780

`A123753(n)-n%2`
-/

namespace A054248.P10611427663173372780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123753 n - ((n % 2 : ℕ) : ℤ)

end

end A054248.P10611427663173372780

noncomputable section

/-- A054248: Binary entropy: a(n) = n + min { a(k)+a(n-k) : 1 <= k <= n-1 }.

Offset 1, canonical program `A054248.P10611427663173372780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054248 (n : ℕ) : ℤ :=
  A054248.P10611427663173372780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054521.P4283920493715643574

`A063524(A050873(n+1))`
-/

namespace A054521.P4283920493715643574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A050873 (n + 1)).toNat

end

end A054521.P4283920493715643574

noncomputable section

/-- A054521: Triangle read by rows: T(n,k) = 1 if gcd(n, k) = 1, T(n,k) = 0 otherwise (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A054521.P4283920493715643574`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054521 (n : ℕ) : ℤ :=
  A054521.P4283920493715643574.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054563.P17816310526759205414

`A373733(n)-A000292(n)`
-/

namespace A054563.P17816310526759205414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373733 n - A000292 n

end

end A054563.P17816310526759205414

noncomputable section

/-- A054563: a(n) = n*(n^2 - 1)*(n + 2)*(n^2 + 4*n + 6)/72.

Offset 0, canonical program `A054563.P17816310526759205414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054563 (n : ℕ) : ℤ :=
  A054563.P17816310526759205414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055669.P6290050088216304237

`24*A055670(n+1)`
-/

namespace A055669.P6290050088216304237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A055670 (n + 1)

end

end A055669.P6290050088216304237

noncomputable section

/-- A055669: Number of prime Hurwitz quaternions of norm prime(n).

Offset 1, canonical program `A055669.P6290050088216304237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055669 (n : ℕ) : ℤ :=
  A055669.P6290050088216304237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055669.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056328.P13611939948640542517

`A056323(n+1)-A001998(n)`
-/

namespace A056328.P13611939948640542517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056323 (n + 1) - A001998 n

end

end A056328.P13611939948640542517

noncomputable section

/-- A056328: Number of reversible string structures with n beads using exactly four different colors.

Offset 1, canonical program `A056328.P13611939948640542517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056328 (n : ℕ) : ℤ :=
  A056328.P13611939948640542517.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056606.P13726235353481560659

`A007947(A002944(n+1))`
-/

namespace A056606.P13726235353481560659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002944 (n + 1)).toNat

end

end A056606.P13726235353481560659

noncomputable section

/-- A056606: Squarefree kernel of lcm(binomial(n,0), ..., binomial(n,n)).

Offset 0, canonical program `A056606.P13726235353481560659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056606 (n : ℕ) : ℤ :=
  A056606.P13726235353481560659.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057521.P7284310941140114823

`A064549(A003557(n+1))`
-/

namespace A057521.P7284310941140114823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A003557 (n + 1)).toNat

end

end A057521.P7284310941140114823

noncomputable section

/-- A057521: Powerful part of n: if n = Product_i (pi^ei) then a(n) = Product_{i : ei > 1} (pi^ei); if n = b*c^2*d^3 then a(n) = c^2*d^3 when b is minimized.

Offset 1, canonical program `A057521.P7284310941140114823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057521 (n : ℕ) : ℤ :=
  A057521.P7284310941140114823.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057660.P308819105178745283

`A001157(A000290(n+1))/A065764(n+1)`
-/

namespace A057660.P308819105178745283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (A000290 (n + 1)).toNat : ℚ) / (A065764 (n + 1) : ℚ)

end

end A057660.P308819105178745283

noncomputable section

/-- A057660: a(n) = Sum_{k=1..n} n/gcd(n,k).

Offset 1, canonical program `A057660.P308819105178745283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057660 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057660.P308819105178745283.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059788.P7916108785684957971

`A007917(A100484(n+1))`
-/

namespace A059788.P7916108785684957971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A100484 (n + 1)).toNat

end

end A059788.P7916108785684957971

noncomputable section

/-- A059788: a(n) = largest prime < 2*prime(n).

Offset 1, canonical program `A059788.P7916108785684957971`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059788 (n : ℕ) : ℤ :=
  A059788.P7916108785684957971.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060236.P15045569037773550193

`1+A080846(n+1)`
-/

namespace A060236.P15045569037773550193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A080846 (n + 1)

end

end A060236.P15045569037773550193

noncomputable section

/-- A060236: If n mod 3 = 0 then a(n) = a(n/3), otherwise a(n) = n mod 3.

Offset 1, canonical program `A060236.P15045569037773550193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060236 (n : ℕ) : ℤ :=
  A060236.P15045569037773550193.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060325.P9919999057588717172

`A054265(n+1)-A065091(n+1)`
-/

namespace A060325.P9919999057588717172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) - A065091 (n + 1)

end

end A060325.P9919999057588717172

noncomputable section

/-- A060325: a(n) = n-th prime prime(n) subtracted from sum of all composites between prime(n) and prime(n-1).

Offset 2, canonical program `A060325.P9919999057588717172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060325 (n : ℕ) : ℤ :=
  A060325.P9919999057588717172.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060704.P15838284810732561717

`2^(n+1)²-A002884(n+1)`
-/

namespace A060704.P15838284810732561717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) ^ 2 : ℤ) - A002884 (n + 1)

end

end A060704.P15838284810732561717

noncomputable section

/-- A060704: Singular n X n matrices over GF(2).

Offset 1, canonical program `A060704.P15838284810732561717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060704 (n : ℕ) : ℤ :=
  A060704.P15838284810732561717.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060842.P4772576142690345548

`A177454(n+1)/A000040(n+1)`
-/

namespace A060842.P4772576142690345548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177454 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A060842.P4772576142690345548

noncomputable section

/-- A060842: a(n) = (binomial(2*p,p)-2)/p^2 where p = prime(n).

Offset 1, canonical program `A060842.P4772576142690345548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060842 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060842.P4772576142690345548.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061354.P2974258783270563027

`A000522(n)/A093101(n)`
-/

namespace A061354.P2974258783270563027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 n : ℚ) / (A093101 n : ℚ)

end

end A061354.P2974258783270563027

noncomputable section

/-- A061354: Numerator of Sum_{k=0..n} 1/k!.

Offset 0, canonical program `A061354.P2974258783270563027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061354.P2974258783270563027.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061601.P11117984480287527776

`10^A055642(n)-1-n`
-/

namespace A061601.P11117984480287527776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ) - 1 - (n : ℚ)

end

end A061601.P11117984480287527776

noncomputable section

/-- A061601: 9's complement of n: a(n) = 10^d - 1 - n where d is the number of digits in n. If a is a digit in n replace it with 9 - a.

Offset 0, canonical program `A061601.P11117984480287527776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061601 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061601.P11117984480287527776.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062785.P8716232642993824825

`A000203(n+1)*A048050(n+1)`
-/

namespace A062785.P8716232642993824825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A048050 (n + 1)

end

end A062785.P8716232642993824825

noncomputable section

/-- A062785: a(n) = Chowla's function of n * sigma(n).

Offset 1, canonical program `A062785.P8716232642993824825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062785 (n : ℕ) : ℤ :=
  A062785.P8716232642993824825.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062824.P11206584974579503261

`A048050(A005117(n+1))`
-/

namespace A062824.P11206584974579503261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A005117 (n + 1)).toNat

end

end A062824.P11206584974579503261

noncomputable section

/-- A062824: a(n) = Ch(A005117(n)) where Ch(n) is Chowla's function and A005117(n) are the squarefree numbers.

Offset 1, canonical program `A062824.P11206584974579503261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062824 (n : ℕ) : ℤ :=
  A062824.P11206584974579503261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062824.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062875.P9437955210362976688

`5^A102781(n+1)`
-/

namespace A062875.P9437955210362976688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A102781 (n + 1) : ℤ)

end

end A062875.P9437955210362976688

noncomputable section

/-- A062875: Records in A046112 (or A006339).

Offset 1, canonical program `A062875.P9437955210362976688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062875 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062875.P9437955210362976688.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062875.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062876.P12290400857756145582

`8*A111333(n+1)-4`
-/

namespace A062876.P12290400857756145582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A111333 (n + 1) - 4

end

end A062876.P12290400857756145582

noncomputable section

/-- A062876: Numbers of lattice points corresponding to incrementally largest circle radii in A062875.

Offset 1, canonical program `A062876.P12290400857756145582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062876 (n : ℕ) : ℤ :=
  A062876.P12290400857756145582.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064002.P15142336824653210743

`2*A064064(n)-1`
-/

namespace A064002.P15142336824653210743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064064 n - 1

end

end A064002.P15142336824653210743

noncomputable section

/-- A064002: List pairs (i,j) with 1 <= i <= j in colexicographic order: (1,1), (1,2), (2,2), (1,3), (2,3), (3,3), (1,4), ... Let a(1) = 1. Then for n>=2 if the (n-1)-st pair is (i,j) then a(n) = a(i) + a(j) + 1.

Offset 1, canonical program `A064002.P15142336824653210743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064002 (n : ℕ) : ℤ :=
  A064002.P15142336824653210743.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064100.P6200468658701185567

`(n+1)*A094028(n)`
-/

namespace A064100.P6200468658701185567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A094028 n

end

end A064100.P6200468658701185567

noncomputable section

/-- A064100: a(n) = n * (100^n - 1)/99.

Offset 1, canonical program `A064100.P6200468658701185567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064100 (n : ℕ) : ℤ :=
  A064100.P6200468658701185567.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065128.P10641093618533566819

`2^n²*A002884(n)`
-/

namespace A065128.P10641093618533566819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A002884 n

end

end A065128.P10641093618533566819

noncomputable section

/-- A065128: Number of invertible n X n matrices mod 4 (i.e., over the ring Z_4).

Offset 0, canonical program `A065128.P10641093618533566819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065128 (n : ℕ) : ℤ :=
  A065128.P10641093618533566819.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065363.P10338292447349607337

`A053735(2*n)-A053735(n)`
-/

namespace A065363.P10338292447349607337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * n) - A053735 n

end

end A065363.P10338292447349607337

noncomputable section

/-- A065363: Sum of balanced ternary digits in n. Replace 3^k with 1 in balanced ternary expansion of n.

Offset 0, canonical program `A065363.P10338292447349607337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065363 (n : ℕ) : ℤ :=
  A065363.P10338292447349607337.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066106.P205978337921741403

`4*A129889(n+1)`
-/

namespace A066106.P205978337921741403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A129889 (n + 1)

end

end A066106.P205978337921741403

noncomputable section

/-- A066106: a(2*n) = (2*n)*(2*n+2); a(2*n+1) = 4*n + 4.

Offset 0, canonical program `A066106.P205978337921741403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066106 (n : ℕ) : ℤ :=
  A066106.P205978337921741403.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066118.P17146450638493411080

`A180119(n)+A001563(n+1)`
-/

namespace A066118.P17146450638493411080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 n + A001563 (n + 1)

end

end A066118.P17146450638493411080

noncomputable section

/-- A066118: a(n) = n!*(3*n-1)/2.

Offset 1, canonical program `A066118.P17146450638493411080`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!*(3*(n+1)-1)/2` (program `A066118.P10208422893267154933`, by `A066118.P10208422893267154933.correct`). Lean does not check the parsing of the name. -/
def A066118 (n : ℕ) : ℤ :=
  A066118.P17146450638493411080.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!*(3*(n+1)-1)/2` (program `A066118.P10208422893267154933`, by `A066118.P10208422893267154933.correct`). Lean does not check the parsing of the name. -/
def A066118.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067397.P1658473277541325480

`(A053735(n)+A053735(n+1)-A053735(2*n)-1)/2`
-/

namespace A067397.P1658473277541325480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n + A053735 (n + 1) - A053735 (2 * n) - 1 : ℚ) / 2

end

end A067397.P1658473277541325480

noncomputable section

/-- A067397: Maximal power of 3 that divides n-th Catalan number.

Offset 0, canonical program `A067397.P1658473277541325480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067397 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067397.P1658473277541325480.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068901.P8285558021144733875

`A068902(n+1)-A000040(n+1)`
-/

namespace A068901.P8285558021144733875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068902 (n + 1) - A000040 (n + 1)

end

end A068901.P8285558021144733875

noncomputable section

/-- A068901: Least number that when added to the n-th prime gives a multiple of n.

Offset 1, canonical program `A068901.P8285558021144733875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068901 (n : ℕ) : ℤ :=
  A068901.P8285558021144733875.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069879.P15875305375985047542

`2*A071917(n+1)`
-/

namespace A069879.P15875305375985047542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071917 (n + 1)

end

end A069879.P15875305375985047542

noncomputable section

/-- A069879: Number of pairs {i,j} with i different from j; 1<=i<=n; 1<= j <=n such that i+j is a prime number.

Offset 1, canonical program `A069879.P15875305375985047542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069879 (n : ℕ) : ℤ :=
  A069879.P15875305375985047542.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070563.P11869556616697573668

`A011655(n+1)*A353815(n+1)`
-/

namespace A070563.P11869556616697573668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A353815 (n + 1)

end

end A070563.P11869556616697573668

noncomputable section

/-- A070563: a(n) = 0 if 3 divides the Ramanujan number tau(n) (A000594(n)), otherwise 1.

Offset 1, canonical program `A070563.P11869556616697573668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070563 (n : ℕ) : ℤ :=
  A070563.P11869556616697573668.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073882.P10708538489612221498

`A117490(n+1)+A010051(n+1)`
-/

namespace A073882.P10708538489612221498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (n + 1) + A010051 (n + 1)

end

end A073882.P10708538489612221498

noncomputable section

/-- A073882: Number of primes between n and n^2.

Offset 1, canonical program `A073882.P10708538489612221498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073882 (n : ℕ) : ℤ :=
  A073882.P10708538489612221498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073882.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075677.P6882598793627865394

`A139391(2*n+1)`
-/

namespace A075677.P6882598793627865394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (2 * n + 1)

end

end A075677.P6882598793627865394

noncomputable section

/-- A075677: Reduced Collatz function R applied to the odd integers: a(n) = R(2n-1), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 1, canonical program `A075677.P6882598793627865394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075677 (n : ℕ) : ℤ :=
  A075677.P6882598793627865394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051329.P676158539143154078

`A053735(n)%4`
-/

namespace A051329.P676158539143154078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 n) 4

end

end A051329.P676158539143154078

noncomputable section

/-- A051329: A generalized Thue-Morse sequence.

Offset 0, canonical program `A051329.P676158539143154078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051329 (n : ℕ) : ℤ :=
  A051329.P676158539143154078.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073779.P14309526426205803288

`A077267(A000040(n+1))`
-/

namespace A073779.P14309526426205803288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A000040 (n + 1)).toNat

end

end A073779.P14309526426205803288

noncomputable section

/-- A073779: Number of 0's in base-3 representation of n-th prime.

Offset 1, canonical program `A073779.P14309526426205803288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073779 (n : ℕ) : ℤ :=
  A073779.P14309526426205803288.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046970.P18046929235984925317

`A023900(n+1)*A048250(n+1)`
-/

namespace A046970.P18046929235984925317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A048250 (n + 1)

end

end A046970.P18046929235984925317

noncomputable section

/-- A046970: Dirichlet inverse of the Jordan function J_2 (A007434).

Offset 1, canonical program `A046970.P18046929235984925317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046970 (n : ℕ) : ℤ :=
  A046970.P18046929235984925317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A046970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A043548.P6626003684055450292

`A087811(A004277(n)-A055086(n))`
-/

namespace A043548.P6626003684055450292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A004277 n - A055086 n).toNat

end

end A043548.P6626003684055450292

noncomputable section

/-- A043548: Least separator of first n Egyptian fractions; i.e., least k for which the integers floor(k/m) for m=1,2,...,n are distinct.

Offset 1, canonical program `A043548.P6626003684055450292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A043548 (n : ℕ) : ℤ :=
  A043548.P6626003684055450292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1687 terms. -/
def A043548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043683.P1797186298449808662

`A043573(n+1)/2`
-/

namespace A043683.P1797186298449808662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043573 (n + 1) : ℚ) / 2

end

end A043683.P1797186298449808662

noncomputable section

/-- A043683: a(n) = (1/2)*(n-th number whose base-2 representation has exactly 6 runs).

Offset 1, canonical program `A043683.P1797186298449808662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043683 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A043683.P1797186298449808662.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A043683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043736.P4860904662440002957

`∩[2*n+1, A043721(n+1)]`
-/

namespace A043736.P4860904662440002957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A043736.P4860904662440002957

noncomputable section

/-- A043736: Numbers whose number of runs in their base-2 representation is congruent to 3 mod 6.

Offset 1, canonical program `A043736.P4860904662440002957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5102 terms. -/
def A043736 (n : ℕ) : ℤ :=
  (A043736.P4860904662440002957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5102 terms. -/
def A043736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044438.P5204322575316227369

`lt[A023713(n+1), A006288(n)%A023713(n+2)]`
-/

namespace A044438.P5204322575316227369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006288 n) (A023713 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A044438.P5204322575316227369

noncomputable section

/-- A044438: Numbers n such that string 1,2 occurs in the base 3 representation of n but not of n+1.

Offset 1, canonical program `A044438.P5204322575316227369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A044438 (n : ℕ) : ℤ :=
  (A044438.P5204322575316227369.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A044438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044975.P9580616891766218747

`A005823(eq[3, A008687(n)])`
-/

namespace A044975.P9580616891766218747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044975.P9580616891766218747

noncomputable section

/-- A044975: Numbers whose base-3 representation contains exactly two 0's and no 1's.

Offset 1, canonical program `A044975.P9580616891766218747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044975 (n : ℕ) : ℤ :=
  A044975.P9580616891766218747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A044975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044980.P4515869477869152908

`A005823(eq[4, A008687(n)])`
-/

namespace A044980.P4515869477869152908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A044980.P4515869477869152908

noncomputable section

/-- A044980: Numbers whose base-3 representation contains exactly three 0's and no 1's.

Offset 1, canonical program `A044980.P4515869477869152908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044980 (n : ℕ) : ℤ :=
  A044980.P4515869477869152908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 718 terms. -/
def A044980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045066.P6394012223862104434

`A023717(eq[1, A077267(n)])`
-/

namespace A045066.P6394012223862104434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045066.P6394012223862104434

noncomputable section

/-- A045066: Numbers whose base-4 representation contains exactly one 0 and no 3's.

Offset 1, canonical program `A045066.P6394012223862104434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. -/
def A045066 (n : ℕ) : ℤ :=
  A045066.P6394012223862104434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. -/
def A045066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045086.P17864132043894525623

`A023709(A023692(n+1)+1)`
-/

namespace A045086.P17864132043894525623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023692 (n + 1) + 1).toNat

end

end A045086.P17864132043894525623

noncomputable section

/-- A045086: Numbers whose base-4 representation contains no 1's and exactly one 2.

Offset 1, canonical program `A045086.P17864132043894525623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045086 (n : ℕ) : ℤ :=
  A045086.P17864132043894525623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045090.P11088706688697243182

`A023713(A023692(n+1)+1)`
-/

namespace A045090.P11088706688697243182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023692 (n + 1) + 1).toNat

end

end A045090.P11088706688697243182

noncomputable section

/-- A045090: Numbers whose base-4 representation contains exactly one 1 and no 2's.

Offset 1, canonical program `A045090.P11088706688697243182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045090 (n : ℕ) : ℤ :=
  A045090.P11088706688697243182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045095.P15217836163504484556

`A023713(A023693(n+1)+1)`
-/

namespace A045095.P15217836163504484556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023693 (n + 1) + 1).toNat

end

end A045095.P15217836163504484556

noncomputable section

/-- A045095: Numbers whose base-4 representation contains exactly two 1's and no 2's.

Offset 1, canonical program `A045095.P15217836163504484556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A045095 (n : ℕ) : ℤ :=
  A045095.P15217836163504484556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A045095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045111.P17883204334826938828

`A023709(A023700(n+1)+1)`
-/

namespace A045111.P17883204334826938828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023700 (n + 1) + 1).toNat

end

end A045111.P17883204334826938828

noncomputable section

/-- A045111: Numbers whose base-4 representation contains no 1's and exactly two 3's.

Offset 1, canonical program `A045111.P17883204334826938828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A045111 (n : ℕ) : ℤ :=
  A045111.P17883204334826938828.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A045111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045112.P14322503297143553076

`A023709(A023701(n+1)+1)`
-/

namespace A045112.P14322503297143553076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023701 (n + 1) + 1).toNat

end

end A045112.P14322503297143553076

noncomputable section

/-- A045112: Numbers whose base-4 representation contains no 1's and exactly three 3's.

Offset 1, canonical program `A045112.P14322503297143553076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045112 (n : ℕ) : ℤ :=
  A045112.P14322503297143553076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045114.P12965799165865166822

`A023717(A023692(n+1))`
-/

namespace A045114.P12965799165865166822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023692 (n + 1)).toNat

end

end A045114.P12965799165865166822

noncomputable section

/-- A045114: Numbers whose base-4 representation contains exactly one 1 and no 3's.

Offset 1, canonical program `A045114.P12965799165865166822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045114 (n : ℕ) : ℤ :=
  A045114.P12965799165865166822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. -/
def A045114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045124.P1610314079926387521

`A023717(A023694(n+1))`
-/

namespace A045124.P1610314079926387521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023694 (n + 1)).toNat

end

end A045124.P1610314079926387521

noncomputable section

/-- A045124: Numbers whose base-4 representation contains exactly three 1's and no 3's.

Offset 1, canonical program `A045124.P1610314079926387521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2696 terms. -/
def A045124 (n : ℕ) : ℤ :=
  A045124.P1610314079926387521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2696 terms. -/
def A045124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045134.P3283556967636376471

`A023713(A023699(n+1)+1)`
-/

namespace A045134.P3283556967636376471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023699 (n + 1) + 1).toNat

end

end A045134.P3283556967636376471

noncomputable section

/-- A045134: Numbers whose base-4 representation contains no 2's and exactly one 3.

Offset 1, canonical program `A045134.P3283556967636376471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A045134 (n : ℕ) : ℤ :=
  A045134.P3283556967636376471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A045134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045136.P16542609465213325021

`A023713(A023701(n+1)+1)`
-/

namespace A045136.P16542609465213325021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (A023701 (n + 1) + 1).toNat

end

end A045136.P16542609465213325021

noncomputable section

/-- A045136: Numbers whose base-4 representation contains no 2's and exactly three 3's.

Offset 1, canonical program `A045136.P16542609465213325021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045136 (n : ℕ) : ℤ :=
  A045136.P16542609465213325021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045138.P13109970554052411139

`A023717(A023699(n+1))`
-/

namespace A045138.P13109970554052411139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023699 (n + 1)).toNat

end

end A045138.P13109970554052411139

noncomputable section

/-- A045138: Numbers whose base-4 representation contains exactly one 2 and no 3's.

Offset 1, canonical program `A045138.P13109970554052411139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1838 terms. -/
def A045138 (n : ℕ) : ℤ :=
  A045138.P13109970554052411139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1838 terms. -/
def A045138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045139.P3460865892790876897

`∩[A023714(n+1), A023718(n+1)]`
-/

namespace A045139.P3460865892790876897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045139.P3460865892790876897

noncomputable section

/-- A045139: Numbers whose base-4 representation contains exactly one 2 and one 3.

Offset 1, canonical program `A045139.P3460865892790876897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2669 terms. -/
def A045139 (n : ℕ) : ℤ :=
  (A045139.P3460865892790876897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2669 terms. -/
def A045139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045143.P2709884776078427861

`A023717(A023700(n+1))`
-/

namespace A045143.P2709884776078427861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023700 (n + 1)).toNat

end

end A045143.P2709884776078427861

noncomputable section

/-- A045143: Numbers whose base-4 representation contains exactly two 2's and no 3's.

Offset 1, canonical program `A045143.P2709884776078427861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A045143 (n : ℕ) : ℤ :=
  A045143.P2709884776078427861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2880 terms. -/
def A045143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045144.P13758676442053423134

`∩[A023715(n+1), A023718(n+1)]`
-/

namespace A045144.P13758676442053423134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045144.P13758676442053423134

noncomputable section

/-- A045144: Numbers whose base-4 representation contains exactly two 2's and one 3.

Offset 1, canonical program `A045144.P13758676442053423134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. -/
def A045144 (n : ℕ) : ℤ :=
  (A045144.P13758676442053423134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3296 terms. -/
def A045144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045148.P17079126829677960024

`A023717(A023701(n+1))`
-/

namespace A045148.P17079126829677960024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A023701 (n + 1)).toNat

end

end A045148.P17079126829677960024

noncomputable section

/-- A045148: Numbers whose base-4 representation contains exactly three 2's and no 3's.

Offset 1, canonical program `A045148.P17079126829677960024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045148 (n : ℕ) : ℤ :=
  A045148.P17079126829677960024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2599 terms. -/
def A045148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045622.P11433442131743350876

`A045543(n)+A045543(n)-A045530(n)`
-/

namespace A045622.P11433442131743350876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045543 n + (A045543 n - A045530 n)

end

end A045622.P11433442131743350876

noncomputable section

/-- A045622: Convolution of A000108 (Catalan numbers) with A045543.

Offset 1, canonical program `A045622.P11433442131743350876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A045622 (n : ℕ) : ℤ :=
  A045622.P11433442131743350876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A045622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045635.P4073587291953969490

`Δ[A045445(n+1)-A039919(n+1)]-A045445(n+1)`
-/

namespace A045635.P4073587291953969490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (n + 1) - A039919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045445 (n + 1)

end

end A045635.P4073587291953969490

noncomputable section

/-- A045635: Catafusenes (see references for precise definition).

Offset 1, canonical program `A045635.P4073587291953969490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045635 (n : ℕ) : ℤ :=
  A045635.P4073587291953969490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045664.P10163269847227854319

`A000007(n)+n*A027375(n)`
-/

namespace A045664.P10163269847227854319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A027375 n

end

end A045664.P10163269847227854319

noncomputable section

/-- A045664: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement.

Offset 0, canonical program `A045664.P10163269847227854319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045664 (n : ℕ) : ℤ :=
  A045664.P10163269847227854319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045708.P4966505932698422722

`p?[A034843(n+1)]`
-/

namespace A045708.P4966505932698422722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045708.P4966505932698422722

noncomputable section

/-- A045708: Primes with first digit 2.

Offset 1, canonical program `A045708.P4966505932698422722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A045708 (n : ℕ) : ℤ :=
  A045708.P4966505932698422722.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A045708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045717.P14974844081395038994

`A034953(n+1)-∑[A000040(n+1)]`
-/

namespace A045717.P14974844081395038994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045717.P14974844081395038994

noncomputable section

/-- A045717: For each prime p take the sum of nonprimes < p.

Offset 1, canonical program `A045717.P14974844081395038994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045717 (n : ℕ) : ℤ :=
  A045717.P14974844081395038994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045751.P2664961897306149397

`eq[0, A101264(2*n)]`
-/

namespace A045751.P2664961897306149397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045751.P2664961897306149397

noncomputable section

/-- A045751: Numbers k such that 4*k + 1 is not prime.

Offset 1, canonical program `A045751.P2664961897306149397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045751 (n : ℕ) : ℤ :=
  (A045751.P2664961897306149397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045752.P3490376513677938941

`eq[0, A101264(2*n+1)]+1`
-/

namespace A045752.P3490376513677938941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045752.P3490376513677938941

noncomputable section

/-- A045752: 4n-1 is composite.

Offset 1, canonical program `A045752.P3490376513677938941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045752 (n : ℕ) : ℤ :=
  (A045752.P3490376513677938941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045833.P12838744438603727675

`∑{d}[A091684(n), A102283(#)]`
-/

namespace A045833.P12838744438603727675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102283 d

end

end A045833.P12838744438603727675

noncomputable section

/-- A045833: Expansion of eta(q^9)^3 / eta(q^3) in powers of q.

Offset 0, canonical program `A045833.P12838744438603727675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045833 (n : ℕ) : ℤ :=
  A045833.P12838744438603727675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045890.P3522164862785645351

`Δ[Δ[A039919(A028310(n))]]`
-/

namespace A045890.P3522164862785645351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045890.P3522164862785645351

noncomputable section

/-- A045890: Catafusenes (see reference for precise definition).

Offset 0, canonical program `A045890.P3522164862785645351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A045890 (n : ℕ) : ℤ :=
  A045890.P3522164862785645351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A045890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045902.P1362283279913711618

`Δ[Δ[A045445(A028310(n))]]`
-/

namespace A045902.P1362283279913711618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045445 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A045902.P1362283279913711618

noncomputable section

/-- A045902: Catafusenes (see reference for precise definition).

Offset 0, canonical program `A045902.P1362283279913711618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045902 (n : ℕ) : ℤ :=
  A045902.P1362283279913711618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A045902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045975.P10197366877055002796

`∑[A109043(A002024(n+1))-A010054(n)]`
-/

namespace A045975.P10197366877055002796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A002024 (n + 1)).toNat - A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A045975.P10197366877055002796

noncomputable section

/-- A045975: Take the first odd integer and multiple of 1, the next 2 even integers and multiples of 2, the next 3 odd integers and multiples of 3, the next 4 even integers and multiples of 4, ...

Offset 1, canonical program `A045975.P10197366877055002796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045975 (n : ℕ) : ℤ :=
  A045975.P10197366877055002796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046302.P14230165923865904189

`lcm(A046301(n+1), A090090(n+1))`
-/

namespace A046302.P14230165923865904189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046301 (n + 1)) (A090090 (n + 1))

end

end A046302.P14230165923865904189

noncomputable section

/-- A046302: Products of 4 successive primes.

Offset 1, canonical program `A046302.P14230165923865904189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046302 (n : ℕ) : ℤ :=
  (A046302.P14230165923865904189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046318.P16238112957922994965

`record[A000265(A014614(n+14))]`
-/

namespace A046318.P16238112957922994965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A014614 (n + 14)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046318.P16238112957922994965

noncomputable section

/-- A046318: Odd numbers divisible by exactly 5 primes (counted with multiplicity).

Offset 1, canonical program `A046318.P16238112957922994965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A046318 (n : ℕ) : ℤ :=
  A046318.P16238112957922994965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A046318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046646.P11064455806647030670

`(A057427(n)+1)*A001764(n)`
-/

namespace A046646.P11064455806647030670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A001764 n

end

end A046646.P11064455806647030670

noncomputable section

/-- A046646: a(n) = 2*binomial(3*n-3, n-1)/(2*n-1) for n >= 2, and a(1) = 1.

Offset 1, canonical program `A046646.P11064455806647030670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A046646 (n : ℕ) : ℤ :=
  A046646.P11064455806647030670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A046646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046684.P10571284585019546125

`eq[1, A179930(n+1)]+1`
-/

namespace A046684.P10571284585019546125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046684.P10571284585019546125

noncomputable section

/-- A046684: Numbers k such that k and sum of squares of divisors of k are relatively prime.

Offset 1, canonical program `A046684.P10571284585019546125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A046684 (n : ℕ) : ℤ :=
  (A046684.P10571284585019546125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A046684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046864.P8515681666187092735

`A051885(A000040(n+1))`
-/

namespace A046864.P8515681666187092735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A000040 (n + 1)).toNat

end

end A046864.P8515681666187092735

noncomputable section

/-- A046864: Smallest number whose digits sum to n-th prime.

Offset 1, canonical program `A046864.P8515681666187092735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A046864 (n : ℕ) : ℤ :=
  A046864.P8515681666187092735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A046864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046971.P1759314852335327146

`∏[char[A045716(n+1)-1]+1]`
-/

namespace A046971.P1759314852335327146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046971.P1759314852335327146

noncomputable section

/-- A046971: Maximal value of number of unitary divisors (see A034444) for integers in binary order range of n.

Offset 1, canonical program `A046971.P1759314852335327146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A046971 (n : ℕ) : ℤ :=
  (A046971.P1759314852335327146.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. -/
def A046971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047075.P16391672911939574512

`record[A168256(n)-A000108(A025581(n))]`
-/

namespace A047075.P16391672911939574512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168256 n - A000108 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A047075.P16391672911939574512

noncomputable section

/-- A047075: All differences C(j)-C(i), j>i, of Catalan numbers A000108.

Offset 0, canonical program `A047075.P16391672911939574512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9721 terms. -/
def A047075 (n : ℕ) : ℤ :=
  A047075.P16391672911939574512.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9721 terms. -/
def A047075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047670.P11744031878755806296

`(A001848(n)+A001847(n+1))/2`
-/

namespace A047670.P11744031878755806296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001848 n + A001847 (n + 1) : ℚ) / 2

end

end A047670.P11744031878755806296

noncomputable section

/-- A047670: Row 6 of array in A047666.

Offset 1, canonical program `A047670.P11744031878755806296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A047670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047670.P11744031878755806296.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A047670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047755.P17216177778010743063

`(A001764(n)-A047749(n))/2`
-/

namespace A047755.P17216177778010743063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n - A047749 n : ℚ) / 2

end

end A047755.P17216177778010743063

noncomputable section

/-- A047755: a(n) = A047752(12n+5).

Offset 0, canonical program `A047755.P17216177778010743063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A047755 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047755.P17216177778010743063.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A047755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047845.P10472410554983521945

`eq[0, A101264(n)]`
-/

namespace A047845.P10472410554983521945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A047845.P10472410554983521945

noncomputable section

/-- A047845: a(n) = (m-1)/2, where m is the n-th odd nonprime (A014076(n)).

Offset 1, canonical program `A047845.P10472410554983521945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047845 (n : ℕ) : ℤ :=
  (A047845.P10472410554983521945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047972.P12401252622405867247

`A049581(A130290(n+1))`
-/

namespace A047972.P12401252622405867247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A130290 (n + 1)).toNat

end

end A047972.P12401252622405867247

noncomputable section

/-- A047972: Distance of n-th prime to nearest square.

Offset 1, canonical program `A047972.P12401252622405867247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A047972 (n : ℕ) : ℤ :=
  A047972.P12401252622405867247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2262 terms. -/
def A047972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048321.P9828915903064324253

`A059995(11*A032945(n+1))`
-/

namespace A048321.P9828915903064324253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A032945 (n + 1)).toNat

end

end A048321.P9828915903064324253

noncomputable section

/-- A048321: Reading a(n) expansion from left to right, run lengths strictly decrease.

Offset 1, canonical program `A048321.P9828915903064324253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A048321 (n : ℕ) : ℤ :=
  A048321.P9828915903064324253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A048321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048633.P1441411904083909438

`gcd(A001405(n+1), A034386(n+1))`
-/

namespace A048633.P1441411904083909438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (n + 1)) (A034386 (n + 1))

end

end A048633.P1441411904083909438

noncomputable section

/-- A048633: Largest squarefree number dividing n-th central binomial coefficient C(n,[ n/2 ]).

Offset 1, canonical program `A048633.P1441411904083909438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A048633 (n : ℕ) : ℤ :=
  (A048633.P1441411904083909438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A048633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048645.P10151414295702732837

`floor(A018900(n+1)/2)`
-/

namespace A048645.P10151414295702732837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018900 (n + 1) : ℚ) / 2⌋

end

end A048645.P10151414295702732837

noncomputable section

/-- A048645: Integers with one or two 1-bits in their binary expansion.

Offset 1, canonical program `A048645.P10151414295702732837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048645 (n : ℕ) : ℤ :=
  A048645.P10151414295702732837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048733.P10785183318991941354

`A048730(n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048733.P10785183318991941354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048730 n : ℚ) / 4

end

end A048733.P10785183318991941354

noncomputable section

/-- A048733: a(n) = A048730(n)/4.

Offset 0, canonical program `A048733.P10785183318991941354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048733.P10785183318991941354.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049031.P15455535512012466543

`2*A000292(A057353(n))*A110655(n)`
-/

namespace A049031.P15455535512012466543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000292 (A057353 n).toNat * A110655 n)

end

end A049031.P15455535512012466543

noncomputable section

/-- A049031: Maximization of sums of cubes of integer differences (b_[ i ]-i)^3 over permutations {b_[ i ], for i-1,2,...,n} on first n integers.

Offset 1, canonical program `A049031.P15455535512012466543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049031 (n : ℕ) : ℤ :=
  A049031.P15455535512012466543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049032.P6256970175047943519

`A000292(A057353(n))*A110655(n)`
-/

namespace A049032.P6256970175047943519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A057353 n).toNat * A110655 n

end

end A049032.P6256970175047943519

noncomputable section

/-- A049032: A049031/2.

Offset 1, canonical program `A049032.P6256970175047943519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049032 (n : ℕ) : ℤ :=
  A049032.P6256970175047943519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049195.P7381529559572275784

`lt[A008683(∏{p}[n+1, #-1]*A003557(n+1))², 1]+1`
-/

namespace A049195.P7381529559572275784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) * A003557 (n + 1)).toNat ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A049195.P7381529559572275784

noncomputable section

/-- A049195: Numbers k such that the Euler totient function phi(k) is divisible by a square.

Offset 1, canonical program `A049195.P7381529559572275784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9256 terms. -/
def A049195 (n : ℕ) : ℤ :=
  (A049195.P7381529559572275784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9256 terms. -/
def A049195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049231.P1078354899549931316

`p?[A005117(n+1)+2]`
-/

namespace A049231.P1078354899549931316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049231.P1078354899549931316

noncomputable section

/-- A049231: Primes p such that p - 2 is squarefree.

Offset 1, canonical program `A049231.P1078354899549931316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. -/
def A049231 (n : ℕ) : ℤ :=
  A049231.P1078354899549931316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7175 terms. -/
def A049231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049233.P6371991846237013089

`p?[A005117(n+1)-2]`
-/

namespace A049233.P6371991846237013089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049233.P6371991846237013089

noncomputable section

/-- A049233: Primes p such that p + 2 is squarefree.

Offset 1, canonical program `A049233.P6371991846237013089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7192 terms. -/
def A049233 (n : ℕ) : ℤ :=
  A049233.P6371991846237013089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7192 terms. -/
def A049233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049296.P11557902124767277285

`Δ[A008364(n+1)]`
-/

namespace A049296.P11557902124767277285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049296.P11557902124767277285

noncomputable section

/-- A049296: First differences of A008364. Also first differences of reduced residue system (RRS) for 4th primorial number, A002110(4)=210.

Offset 1, canonical program `A049296.P11557902124767277285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A049296 (n : ℕ) : ℤ :=
  A049296.P11557902124767277285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A049296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049445.P7939714702885269085

`lt[lcm(n, A000120(n)), 2*n]`
-/

namespace A049445.P7939714702885269085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000120 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A049445.P7939714702885269085

noncomputable section

/-- A049445: Numbers k with the property that the number of 1's in binary expansion of k (see A000120) divides k.

Offset 1, canonical program `A049445.P7939714702885269085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. -/
def A049445 (n : ℕ) : ℤ :=
  (A049445.P7939714702885269085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1764 terms. -/
def A049445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049491.P3427742740246822641

`p?[A065091(n+2)-A171442(n)]`
-/

namespace A049491.P3427742740246822641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A171442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049491.P3427742740246822641

noncomputable section

/-- A049491: Numbers k such that k and k+128 are both prime.

Offset 1, canonical program `A049491.P3427742740246822641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A049491 (n : ℕ) : ℤ :=
  A049491.P3427742740246822641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. -/
def A049491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049563.P8325218319628296000

`gcd(A175217(n+1), A179546(n+1))`
-/

namespace A049563.P8325218319628296000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175217 (n + 1)) (A179546 (n + 1))

end

end A049563.P8325218319628296000

noncomputable section

/-- A049563: a(n) = ((prime(n)-1)! + 1) mod (prime(n) + 2).

Offset 1, canonical program `A049563.P8325218319628296000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049563 (n : ℕ) : ℤ :=
  (A049563.P8325218319628296000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049579.P9136295119594597063

`lt[2, A001223(n+1)]+1`
-/

namespace A049579.P9136295119594597063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049579.P9136295119594597063

noncomputable section

/-- A049579: Numbers k such that prime(k)+2 divides (prime(k)-1)!.

Offset 1, canonical program `A049579.P9136295119594597063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049579 (n : ℕ) : ℤ :=
  (A049579.P9136295119594597063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049591.P2776477659953961474

`A065091(lt[2, A001223(n+1)])`
-/

namespace A049591.P2776477659953961474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049591.P2776477659953961474

noncomputable section

/-- A049591: Odd primes p such that p+2 is composite.

Offset 1, canonical program `A049591.P2776477659953961474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8730 terms. -/
def A049591 (n : ℕ) : ℤ :=
  A049591.P2776477659953961474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8730 terms. -/
def A049591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049705.P11002765941806409636

`3-A000002(n+1)`
-/

namespace A049705.P11002765941806409636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000002 (n + 1)

end

end A049705.P11002765941806409636

noncomputable section

/-- A049705: a(n)=3-k(n), where k=A000002=Kolakoski sequence; also the sequence of runlengths of a is k.

Offset 1, canonical program `A049705.P11002765941806409636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049705 (n : ℕ) : ℤ :=
  A049705.P11002765941806409636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049798.P9252601489208202656

`∑[round(n/2)-A296955(n+2)]`
-/

namespace A049798.P9252601489208202656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) - A296955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049798.P9252601489208202656

noncomputable section

/-- A049798: a(n) = (1/2)*Sum_{k = 1..n} T(n,k), array T as in A049800.

Offset 1, canonical program `A049798.P9252601489208202656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049798 (n : ℕ) : ℤ :=
  A049798.P9252601489208202656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050469.P17801092767341696516

`Δ[xor(n, floor(n/2))]*A050457(n+1)`
-/

namespace A050469.P17801092767341696516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A050457 (n + 1)

end

end A050469.P17801092767341696516

noncomputable section

/-- A050469: a(n) = Sum_{ d divides n, n/d=1 mod 4} d - Sum_{ d divides n, n/d=3 mod 4} d.

Offset 1, canonical program `A050469.P17801092767341696516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050469 (n : ℕ) : ℤ :=
  A050469.P17801092767341696516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050625.P8966498542950054992

`lt[A055642(n), A051064(n+1)]+1`
-/

namespace A050625.P8966498542950054992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050625.P8966498542950054992

noncomputable section

/-- A050625: Divisible by 3^k (where k is digit length of a(n)).

Offset 1, canonical program `A050625.P8966498542950054992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A050625 (n : ℕ) : ℤ :=
  (A050625.P8966498542950054992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A050625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050798.P8630715380825418408

`eq[gcd(6, A158478(n)), A193330(n)]`
-/

namespace A050798.P8630715380825418408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A158478 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050798.P8630715380825418408

noncomputable section

/-- A050798: Numbers n such that m = n^2 + 1 is expressible as the sum of two nonzero squares in exactly two ways.

Offset 1, canonical program `A050798.P8630715380825418408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3816 terms. -/
def A050798 (n : ℕ) : ℤ :=
  (A050798.P8630715380825418408.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3816 terms. -/
def A050798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051125.P9703982554680975134

`A003984(n)+1`
-/

namespace A051125.P9703982554680975134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + 1

end

end A051125.P9703982554680975134

noncomputable section

/-- A051125: Table T(n,k) = max{n,k} read by antidiagonals (n >= 1, k >= 1).

Offset 1, canonical program `A051125.P9703982554680975134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051125 (n : ℕ) : ℤ :=
  A051125.P9703982554680975134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051144.P15705721184741371757

`comp[∪[A005117(n+1), n²]]`
-/

namespace A051144.P15705721184741371757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A051144.P15705721184741371757

noncomputable section

/-- A051144: Nonsquarefree nonsquares: each term has a square factor but is not a perfect square itself.

Offset 1, canonical program `A051144.P15705721184741371757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051144 (n : ℕ) : ℤ :=
  (A051144.P15705721184741371757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051276.P61944378441826423

`gcd(12, Δ[A034935(n)])`
-/

namespace A051276.P61944378441826423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (f1 (n + 1) - f1 n)

end

end A051276.P61944378441826423

noncomputable section

/-- A051276: Nonzero coefficients in one of the 5-adic expansions of sqrt(-1).

Offset 0, canonical program `A051276.P61944378441826423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A051276 (n : ℕ) : ℤ :=
  (A051276.P61944378441826423.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A051276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051349.P2414547720400107792

`a(n-1)+A018252(n)` with `a(0)=0`
-/

namespace A051349.P2414547720400107792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A018252 n

end

end A051349.P2414547720400107792

noncomputable section

/-- A051349: Sum of first n nonprimes.

Offset 0, canonical program `A051349.P2414547720400107792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051349 (n : ℕ) : ℤ :=
  A051349.P2414547720400107792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051433.P4257297967773585722

`A029605(n)/2`
-/

namespace A051433.P4257297967773585722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029605 n : ℚ) / 2

end

end A051433.P4257297967773585722

noncomputable section

/-- A051433: (Terms in A029605)/2.

Offset 0, canonical program `A051433.P4257297967773585722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051433 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051433.P4257297967773585722.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051467.P17492901673061742527

`A029640(n+2)/2`
-/

namespace A051467.P17492901673061742527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029640 (n + 2) : ℚ) / 2

end

end A051467.P17492901673061742527

noncomputable section

/-- A051467: (Terms in A029640)/2.

Offset 0, canonical program `A051467.P17492901673061742527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A051467 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051467.P17492901673061742527.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A051467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051474.P5764131462460255452

`A014450(n+1)/2`
-/

namespace A051474.P5764131462460255452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014450 (n + 1) : ℚ) / 2

end

end A051474.P5764131462460255452

noncomputable section

/-- A051474: (Terms in A014450)/2.

Offset 0, canonical program `A051474.P5764131462460255452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1752 terms. -/
def A051474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051474.P5764131462460255452.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1752 terms. -/
def A051474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051541.P4009717404532660083

`(4*n+5)/gcd(4*n+5, A002944(n+1))`
-/

namespace A051541.P4009717404532660083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℚ) / (Int.gcd (4 * n + 5 : ℤ) (A002944 (n + 1)) : ℚ)

end

end A051541.P4009717404532660083

noncomputable section

/-- A051541: Quotients of consecutive values of LCM {1, 5, 9, 13, 17, ..., (4n+1)}.

Offset 1, canonical program `A051541.P4009717404532660083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A051541 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051541.P4009717404532660083.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A051541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051597.P4383731425265306086

`A014430(n)-A014473(n)`
-/

namespace A051597.P4383731425265306086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 n - A014473 n

end

end A051597.P4383731425265306086

noncomputable section

/-- A051597: Rows of triangle formed using Pascal's rule except begin and end n-th row with n+1.

Offset 0, canonical program `A051597.P4383731425265306086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051597 (n : ℕ) : ℤ :=
  A051597.P4383731425265306086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051803.P17294987635553116970

`eq[1, A051802(A051801(n))]`
-/

namespace A051803.P17294987635553116970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 (A051801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051803.P17294987635553116970

noncomputable section

/-- A051803: Numbers with nonzero multiplicative digital root 1.

Offset 1, canonical program `A051803.P17294987635553116970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A051803 (n : ℕ) : ℤ :=
  (A051803.P17294987635553116970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. -/
def A051803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051804.P929861666918418574

`eq[2, A051802(n)]`
-/

namespace A051804.P929861666918418574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051804.P929861666918418574

noncomputable section

/-- A051804: Numbers with nonzero multiplicative digital root 2.

Offset 1, canonical program `A051804.P929861666918418574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. -/
def A051804 (n : ℕ) : ℤ :=
  (A051804.P929861666918418574.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. -/
def A051804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051805.P10692238855703908079

`eq[3, A051802(n)]`
-/

namespace A051805.P10692238855703908079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051805.P10692238855703908079

noncomputable section

/-- A051805: Numbers with nonzero multiplicative digital root 3.

Offset 1, canonical program `A051805.P10692238855703908079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A051805 (n : ℕ) : ℤ :=
  (A051805.P10692238855703908079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. -/
def A051805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051806.P3686198131234600742

`eq[4, A051802(n)]`
-/

namespace A051806.P3686198131234600742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051806.P3686198131234600742

noncomputable section

/-- A051806: Numbers with nonzero multiplicative digital root 4.

Offset 1, canonical program `A051806.P3686198131234600742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A051806 (n : ℕ) : ℤ :=
  (A051806.P3686198131234600742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A051806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051807.P4293244900954420581

`eq[5, A051802(n)]`
-/

namespace A051807.P4293244900954420581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051807.P4293244900954420581

noncomputable section

/-- A051807: Numbers with nonzero multiplicative digital root 5.

Offset 1, canonical program `A051807.P4293244900954420581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. -/
def A051807 (n : ℕ) : ℤ :=
  (A051807.P4293244900954420581.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. -/
def A051807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051808.P3656897858601393824

`eq[6, A051802(n)]`
-/

namespace A051808.P3656897858601393824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051808.P3656897858601393824

noncomputable section

/-- A051808: Numbers with nonzero multiplicative digital root 6.

Offset 1, canonical program `A051808.P3656897858601393824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A051808 (n : ℕ) : ℤ :=
  (A051808.P3656897858601393824.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A051808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051809.P8083613344598909675

`eq[7, A051802(n)]`
-/

namespace A051809.P8083613344598909675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051809.P8083613344598909675

noncomputable section

/-- A051809: Numbers with nonzero multiplicative digital root 7.

Offset 1, canonical program `A051809.P8083613344598909675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A051809 (n : ℕ) : ℤ :=
  (A051809.P8083613344598909675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A051809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051810.P7616896201699025823

`eq[8, A051802(n)]`
-/

namespace A051810.P7616896201699025823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051810.P7616896201699025823

noncomputable section

/-- A051810: Numbers with nonzero multiplicative digital root 8.

Offset 1, canonical program `A051810.P7616896201699025823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A051810 (n : ℕ) : ℤ :=
  (A051810.P7616896201699025823.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A051810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051811.P7186394499949268145

`lt[8, A051802(n)]`
-/

namespace A051811.P7186394499949268145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051811.P7186394499949268145

noncomputable section

/-- A051811: Numbers with nonzero multiplicative digital root 9.

Offset 1, canonical program `A051811.P7186394499949268145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051811 (n : ℕ) : ℤ :=
  (A051811.P7186394499949268145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A051811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052769.P5138098286952425402

`n*A052760(abs(1-n))`
-/

namespace A052769.P5138098286952425402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052760 |1 - (n : ℤ)|.toNat

end

end A052769.P5138098286952425402

noncomputable section

/-- A052769: E.g.f.: x^3*(exp(x)-1)^2.

Offset 0, canonical program `A052769.P5138098286952425402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A052769 (n : ℕ) : ℤ :=
  A052769.P5138098286952425402.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A052769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052777.P1349421382293424451

`n*A052761(abs(1-n))`
-/

namespace A052777.P1349421382293424451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A052761 |1 - (n : ℤ)|.toNat

end

end A052777.P1349421382293424451

noncomputable section

/-- A052777: E.g.f.: x^2*(exp(x)-1)^3.

Offset 0, canonical program `A052777.P1349421382293424451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A052777 (n : ℕ) : ℤ :=
  A052777.P1349421382293424451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A052777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053210.P657780142327635725

`2*(A001223(n)+a(n-1))` with `a(0)=2`
-/

namespace A053210.P657780142327635725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A001223 n + a (n - 1))

end

end A053210.P657780142327635725

noncomputable section

/-- A053210: Row sums of A051599.

Offset 0, canonical program `A053210.P657780142327635725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A053210 (n : ℕ) : ℤ :=
  A053210.P657780142327635725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A053210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053225.P1720383942302282191

`A053222(A053224(n+1))`
-/

namespace A053225.P1720383942302282191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A053224 (n + 1)).toNat

end

end A053225.P1720383942302282191

noncomputable section

/-- A053225: First differences of sigma(n) that are positive.

Offset 1, canonical program `A053225.P1720383942302282191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053225 (n : ℕ) : ℤ :=
  A053225.P1720383942302282191.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053228.P2496063461288682118

`lt[0, A053223(n+1)]+1`
-/

namespace A053228.P2496063461288682118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053228.P2496063461288682118

noncomputable section

/-- A053228: n for which second differences of sigma(n) are positive.

Offset 1, canonical program `A053228.P2496063461288682118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. -/
def A053228 (n : ℕ) : ℤ :=
  (A053228.P2496063461288682118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4851 terms. -/
def A053228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053229.P8465332529038904274

`lt[A053223(n+1), 0]+1`
-/

namespace A053229.P8465332529038904274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A053229.P8465332529038904274

noncomputable section

/-- A053229: Numbers n for which second differences of sigma(n) are negative.

Offset 1, canonical program `A053229.P8465332529038904274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. -/
def A053229 (n : ℕ) : ℤ :=
  (A053229.P8465332529038904274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5147 terms. -/
def A053229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053230.P8529302224406390971

`A053224(n+2)-A053224(n+1)`
-/

namespace A053230.P8529302224406390971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 2) - A053224 (n + 1)

end

end A053230.P8529302224406390971

noncomputable section

/-- A053230: First differences between numbers k for which sigma(k) < sigma(k+1).

Offset 1, canonical program `A053230.P8529302224406390971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053230 (n : ℕ) : ℤ :=
  A053230.P8529302224406390971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053224, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053230.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053241.P3444779152513090390

`eq[2, A053238(n+1)]+1`
-/

namespace A053241.P3444779152513090390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053241.P3444779152513090390

noncomputable section

/-- A053241: Numbers k such that A053238(k) = 2.

Offset 1, canonical program `A053241.P3444779152513090390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8492 terms. -/
def A053241 (n : ℕ) : ℤ :=
  (A053241.P3444779152513090390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8492 terms. -/
def A053241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053246.P12887110105512609269

`A053222(A028310(n)+1)-1`
-/

namespace A053246.P12887110105512609269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (A028310 n + 1).toNat - 1

end

end A053246.P12887110105512609269

noncomputable section

/-- A053246: First differences of chowla(n).

Offset 1, canonical program `A053246.P12887110105512609269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053246 (n : ℕ) : ℤ :=
  A053246.P12887110105512609269.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053336.P2907877663529464855

`10^(n+1)-A035014(n+1)`
-/

namespace A053336.P2907877663529464855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A035014 (n + 1)

end

end A053336.P2907877663529464855

noncomputable section

/-- A053336: a(n) contains n digits (either '5' or '6') and is divisible by 2^n.

Offset 1, canonical program `A053336.P2907877663529464855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A053336 (n : ℕ) : ℤ :=
  A053336.P2907877663529464855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A053336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053569.P672169449860306161

`A000203(A007369(n+1))`
-/

namespace A053569.P672169449860306161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007369 (n + 1)).toNat

end

end A053569.P672169449860306161

noncomputable section

/-- A053569: Sum of divisors of numbers which cannot be sum of divisors of any number.

Offset 1, canonical program `A053569.P672169449860306161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053569 (n : ℕ) : ℤ :=
  A053569.P672169449860306161.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007369, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053569.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A053821.P9529170289535089362

`∑{d}[n+1, A029833(#)]`
-/

namespace A053821.P9529170289535089362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029833 d

end

end A053821.P9529170289535089362

noncomputable section

/-- A053821: A discrete approximation to log(n): Sum_{ d divides n } A029833(d).

Offset 1, canonical program `A053821.P9529170289535089362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053821 (n : ℕ) : ℤ :=
  A053821.P9529170289535089362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053821.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A054067.P7097243798565487157

`A019587(n+1)+∑[n]`
-/

namespace A054067.P7097243798565487157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019587 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A054067.P7097243798565487157

noncomputable section

/-- A054067: Position of first appearance of n in A054065.

Offset 1, canonical program `A054067.P7097243798565487157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054067 (n : ℕ) : ℤ :=
  A054067.P7097243798565487157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054084.P17694258563391689400

`A001950(A008619(n))+A027656(n)-A008619(n)`
-/

namespace A054084.P17694258563391689400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A008619 n).toNat + (A027656 n - A008619 n)

end

end A054084.P17694258563391689400

noncomputable section

/-- A054084: Permutation of N: for each k >= 1, let p(k)=least natural number not already an a(i), q(k)=p(k)+k, a(2k-1)=q(k), a(2k)=p(k).

Offset 1, canonical program `A054084.P17694258563391689400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054084 (n : ℕ) : ℤ :=
  A054084.P17694258563391689400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054122.P7130601607095019707

`ceil((n+1)/2*A047891(n+1))`
-/

namespace A054122.P7130601607095019707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2 * (A047891 (n + 1) : ℚ)⌉

end

end A054122.P7130601607095019707

noncomputable section

/-- A054122: T(2n,n), array T as in A054120.

Offset 0, canonical program `A054122.P7130601607095019707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A054122 (n : ℕ) : ℤ :=
  A054122.P7130601607095019707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A054122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054354.P7688672416916511946

`Δ[A000002(n+1)]`
-/

namespace A054354.P7688672416916511946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054354.P7688672416916511946

noncomputable section

/-- A054354: First differences of Kolakoski sequence A000002.

Offset 1, canonical program `A054354.P7688672416916511946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054354 (n : ℕ) : ℤ :=
  A054354.P7688672416916511946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054459.P14953385742709259650

`2*A006645(n+2)-A000129(n+1)`
-/

namespace A054459.P14953385742709259650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006645 (n + 2) - A000129 (n + 1)

end

end A054459.P14953385742709259650

noncomputable section

/-- A054459: A001333(n), n >= 1, convolved with itself.

Offset 0, canonical program `A054459.P14953385742709259650`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054459 (n : ℕ) : ℤ :=
  A054459.P14953385742709259650.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054460.P9460801062302457116

`A364619(n+1)+A364619(n+2)`
-/

namespace A054460.P9460801062302457116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364619 (n + 1) + A364619 (n + 2)

end

end A054460.P9460801062302457116

noncomputable section

/-- A054460: A001333(n), n >= 1, convolved twice with itself.

Offset 0, canonical program `A054460.P9460801062302457116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A054460 (n : ℕ) : ℤ :=
  A054460.P9460801062302457116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 249 terms. -/
def A054460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054524.P18058734108985721974

`∑{d}[A127093(n+1), A007427(#)]`
-/

namespace A054524.P18058734108985721974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A054524.P18058734108985721974

noncomputable section

/-- A054524: Triangle T(n,k): T(n,k) = mu(k) if k divides n, T(n,k)=0 otherwise (n >= 1, 1<=k<=n).

Offset 1, canonical program `A054524.P18058734108985721974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054524 (n : ℕ) : ℤ :=
  A054524.P18058734108985721974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054546.P7941677746410983189

`A018252(n+1)-A141468(n+1)`
-/

namespace A054546.P7941677746410983189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - A141468 (n + 1)

end

end A054546.P7941677746410983189

noncomputable section

/-- A054546: First differences of nonprimes (including 0 and 1, A002808).

Offset 1, canonical program `A054546.P7941677746410983189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054546 (n : ℕ) : ℤ :=
  A054546.P7941677746410983189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054546.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054549.P14228439514455555932

`∑[∑[∑[A038166(n)]]]`
-/

namespace A054549.P14228439514455555932
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054549.P14228439514455555932

noncomputable section

/-- A054549: Number of symmetric nonnegative integer 9 X 9 matrices with sum of elements equal to 4*n, under action of dihedral group D_4.

Offset 0, canonical program `A054549.P14228439514455555932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054549 (n : ℕ) : ℤ :=
  A054549.P14228439514455555932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054622.P9035516813408174709

`A006528(n)+A006011(n)*A037270(n)`
-/

namespace A054622.P9035516813408174709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n + A006011 n * A037270 n

end

end A054622.P9035516813408174709

noncomputable section

/-- A054622: Number of ways to color vertices of an octagon using <= n colors, allowing only rotations.

Offset 0, canonical program `A054622.P9035516813408174709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054622 (n : ℕ) : ℤ :=
  A054622.P9035516813408174709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054796.P2330397691738017337

`A054795(n+1)-6`
-/

namespace A054796.P2330397691738017337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054795 (n + 1) - 6

end

end A054796.P2330397691738017337

noncomputable section

/-- A054796: Numbers of form 17+n^2+n or 17+2*n^2.

Offset 1, canonical program `A054796.P2330397691738017337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054796 (n : ℕ) : ℤ :=
  A054796.P2330397691738017337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054843.P5783791251269044681

`A010054(n)+∑{d}[n, #%2]`
-/

namespace A054843.P5783791251269044681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A054843.P5783791251269044681

noncomputable section

/-- A054843: Number of sequences of consecutive nonnegative integers (including sequences of length 1) that sum to n.

Offset 0, canonical program `A054843.P5783791251269044681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054843 (n : ℕ) : ℤ :=
  A054843.P5783791251269044681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054848.P2491255757427976434

`n-A054847(n)`
-/

namespace A054848.P2491255757427976434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054847 n

end

end A054848.P2491255757427976434

noncomputable section

/-- A054848: n - nearest integer to (nearest integer to n^(2/3))^(3/2).

Offset 0, canonical program `A054848.P2491255757427976434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054848 (n : ℕ) : ℤ :=
  A054848.P2491255757427976434.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054847, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055025.P1840419419277559172

`∪[A002313(n+1), A087691(n+1)]`
-/

namespace A055025.P1840419419277559172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055025.P1840419419277559172

noncomputable section

/-- A055025: Norms of Gaussian primes.

Offset 1, canonical program `A055025.P1840419419277559172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055025 (n : ℕ) : ℤ :=
  (A055025.P1840419419277559172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055040.P4027519978801195908

`eq[6, dr(A007913(n+1))]+1`
-/

namespace A055040.P4027519978801195908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A055040.P4027519978801195908

noncomputable section

/-- A055040: Numbers of the form 3^(2i+1)*(3*j+2).

Offset 1, canonical program `A055040.P4027519978801195908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6248 terms. -/
def A055040 (n : ℕ) : ℤ :=
  (A055040.P4027519978801195908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6248 terms. -/
def A055040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055050.P594376311552955695

`eq[3, and(3, A007913(n+1))]+1`
-/

namespace A055050.P594376311552955695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A007913 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055050.P594376311552955695

noncomputable section

/-- A055050: Numbers of the form 4^i*(8*j+3) or 4^i*(8*j+7).

Offset 1, canonical program `A055050.P594376311552955695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055050 (n : ℕ) : ℤ :=
  (A055050.P594376311552955695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055208.P10297010048786365053

`∑{digits}[A004736(n+1), #^A002260(n+1)]`
-/

namespace A055208.P10297010048786365053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) ^ (A002260 (n + 1) : ℤ)).sum

end

end A055208.P10297010048786365053

noncomputable section

/-- A055208: Table read by ascending antidiagonals: T(n,k) (n >= 1, k >= 1) is the sum of k-th powers of digits of n.

Offset 1, canonical program `A055208.P10297010048786365053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6432 terms. -/
def A055208 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055208.P10297010048786365053.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6432 terms. -/
def A055208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055217.P14417909885086279290

`∑[3^n]-A097861(n+1)`
-/

namespace A055217.P14417909885086279290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A097861 (n + 1)

end

end A055217.P14417909885086279290

noncomputable section

/-- A055217: a(n) = sum of the first n coefficients of (1+x+x^2)^n.

Offset 0, canonical program `A055217.P14417909885086279290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A055217 (n : ℕ) : ℤ :=
  A055217.P14417909885086279290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A055217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055377.P4852534291270494815

`A007917(floor(n/2)+2)`
-/

namespace A055377.P4852534291270494815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A055377.P4852534291270494815

noncomputable section

/-- A055377: a(n) = largest prime <= n/2.

Offset 4, canonical program `A055377.P4852534291270494815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055377 (n : ℕ) : ℤ :=
  A055377.P4852534291270494815.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055562.P16948608332266635314

`A022441(n)-a(n-1)` with `a(0)=2`
-/

namespace A055562.P16948608332266635314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A022441 n - a (n - 1)

end

end A055562.P16948608332266635314

noncomputable section

/-- A055562: a(n) = least number greater than a(n-1) not the sum of an earlier pair of consecutive terms, a(0) = 2.

Offset 0, canonical program `A055562.P16948608332266635314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055562 (n : ℕ) : ℤ :=
  A055562.P16948608332266635314.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055783.P3116272067737530295

`p?[A142342(n+1)+7]`
-/

namespace A055783.P3116272067737530295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A055783.P3116272067737530295

noncomputable section

/-- A055783: Primes q of form q=10p+7, where p is also prime.

Offset 1, canonical program `A055783.P3116272067737530295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. -/
def A055783 (n : ℕ) : ℤ :=
  A055783.P3116272067737530295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. -/
def A055783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055810.P3913804122985795468

`A006416(n+2)+A055821(n+4)*A057427(n)`
-/

namespace A055810.P3913804122985795468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2) + A055821 (n + 4) * A057427 n

end

end A055810.P3913804122985795468

noncomputable section

/-- A055810: a(n) = T(n,n-5), array T as in A055807.

Offset 5, canonical program `A055810.P3913804122985795468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055810 (n : ℕ) : ℤ :=
  A055810.P3913804122985795468.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055879.P6759021124133317183

`A039658(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A055879.P6759021124133317183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039658 n + (2 - a (n - 1))

end

end A055879.P6759021124133317183

noncomputable section

/-- A055879: Least nondecreasing sequence with a(1) = 1 and Hankel transform {1,1,1,1,...}.

Offset 1, canonical program `A055879.P6759021124133317183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A055879 (n : ℕ) : ℤ :=
  A055879.P6759021124133317183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A055879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056056.P8939201320321533669

`sqrt(A056057(n+1))`
-/

namespace A056056.P8939201320321533669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056057 (n + 1) : ℝ)

end

end A056056.P8939201320321533669

noncomputable section

/-- A056056: Square root of largest square dividing n-th central binomial coefficient.

Offset 1, canonical program `A056056.P8939201320321533669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056056 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056056.P8939201320321533669.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056167.P7985296362378324712

`lt[0, A053214(A008619(n))]`
-/

namespace A056167.P7985296362378324712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A056167.P7985296362378324712

noncomputable section

/-- A056167: Numbers k such that k! is not divisible by the square of (f+1)!, where f = floor(k/2).

Offset 1, canonical program `A056167.P7985296362378324712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9017 terms. -/
def A056167 (n : ℕ) : ℤ :=
  (A056167.P7985296362378324712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9017 terms. -/
def A056167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056289.P8446985334841541821

`A056269(n+1)/(n+1)`
-/

namespace A056289.P8446985334841541821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056269 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A056289.P8446985334841541821

noncomputable section

/-- A056289: Number of primitive (period n) n-bead necklaces with exactly four different colored beads.

Offset 1, canonical program `A056289.P8446985334841541821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056289 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056289.P8446985334841541821.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056319.P2109455741368262411

`∑{d}[n+1, A008683(#)*A056310((n+1)/#)]`
-/

namespace A056319.P2109455741368262411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056310 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056319.P2109455741368262411

noncomputable section

/-- A056319: Number of primitive (aperiodic) reversible strings with n beads using exactly three different colors.

Offset 1, canonical program `A056319.P2109455741368262411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A056319 (n : ℕ) : ℤ :=
  A056319.P2109455741368262411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A056319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056320.P10734550537264793216

`∑{d}[n+1, A008683(#)*A056311((n+1)/#)]`
-/

namespace A056320.P10734550537264793216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056311 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056320.P10734550537264793216

noncomputable section

/-- A056320: Number of primitive (aperiodic) reversible strings with n beads using exactly four different colors.

Offset 1, canonical program `A056320.P10734550537264793216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056320 (n : ℕ) : ℤ :=
  A056320.P10734550537264793216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A056320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056322.P10987569585989631847

`∑{d}[n+1, A056313(#)*A069158((n+1)/#)]`
-/

namespace A056322.P10987569585989631847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056313 d * A069158 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056322.P10987569585989631847

noncomputable section

/-- A056322: Number of primitive (aperiodic) reversible strings with n beads using exactly six different colors.

Offset 1, canonical program `A056322.P10987569585989631847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A056322 (n : ℕ) : ℤ :=
  A056322.P10987569585989631847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A056322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056336.P11547497222831665764

`A056331(n+1)-A063524(n+1)`
-/

namespace A056336.P11547497222831665764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056331 (n + 1) - A063524 (n + 1)

end

end A056336.P11547497222831665764

noncomputable section

/-- A056336: Number of primitive (aperiodic) reversible string structures with n beads using exactly two different colors.

Offset 1, canonical program `A056336.P11547497222831665764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056336 (n : ℕ) : ℤ :=
  A056336.P11547497222831665764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056331, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056337.P9761899805015618625

`A056332(n+1)-A056331(n+1)`
-/

namespace A056337.P9761899805015618625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056332 (n + 1) - A056331 (n + 1)

end

end A056337.P9761899805015618625

noncomputable section

/-- A056337: Number of primitive (aperiodic) reversible string structures with n beads using exactly three different colors.

Offset 1, canonical program `A056337.P9761899805015618625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056331, A056332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056337 (n : ℕ) : ℤ :=
  A056337.P9761899805015618625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056331, A056332, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A056337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056464.P10441682946801096791

`∑{d}[n+1, A008683(#)*A056454((n+1)/#)]`
-/

namespace A056464.P10441682946801096791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056454 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056464.P10441682946801096791

noncomputable section

/-- A056464: Number of primitive (aperiodic) palindromes using exactly three different symbols.

Offset 1, canonical program `A056464.P10441682946801096791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056464 (n : ℕ) : ℤ :=
  A056464.P10441682946801096791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056465.P10456151034550717981

`∑{d}[n+1, A008683(#)*A056455((n+1)/#)]`
-/

namespace A056465.P10456151034550717981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056455 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056465.P10456151034550717981

noncomputable section

/-- A056465: Number of primitive (aperiodic) palindromes using exactly four different symbols.

Offset 1, canonical program `A056465.P10456151034550717981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056465 (n : ℕ) : ℤ :=
  A056465.P10456151034550717981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A056465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056481.P6036497099892352670

`A056463(A028310(n))/2`
-/

namespace A056481.P6036497099892352670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056463 (A028310 n).toNat : ℚ) / 2

end

end A056481.P6036497099892352670

noncomputable section

/-- A056481: Number of primitive (aperiodic) palindromic structures using exactly two different symbols.

Offset 0, canonical program `A056481.P6036497099892352670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056481.P6036497099892352670.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056483.P9343784737776717252

`∑{d}[n+1, A008683(#)*A056473((n+1)/#)]`
-/

namespace A056483.P9343784737776717252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056483.P9343784737776717252

noncomputable section

/-- A056483: Number of primitive (aperiodic) palindromic structures using exactly four different symbols.

Offset 1, canonical program `A056483.P9343784737776717252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A056483 (n : ℕ) : ℤ :=
  A056483.P9343784737776717252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A056483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056490.P4426162943331204535

`A056455(n+1)+Δ[A056455(n+1)/2]`
-/

namespace A056490.P4426162943331204535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056455 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056455 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A056490.P4426162943331204535

noncomputable section

/-- A056490: Number of periodic palindromes using exactly four different symbols.

Offset 1, canonical program `A056490.P4426162943331204535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A056490 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056490.P4426162943331204535.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A056490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056498.P10808203384033100118

`A056493(n+1)-A000038(n)`
-/

namespace A056498.P10808203384033100118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056493 (n + 1) - A000038 n

end

end A056498.P10808203384033100118

noncomputable section

/-- A056498: Number of primitive (period n) periodic palindromes using exactly two different symbols.

Offset 1, canonical program `A056498.P10808203384033100118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A056498 (n : ℕ) : ℤ :=
  A056498.P10808203384033100118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A056498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056556.P11335361665985267770

`∑[A023533(n)]-1`
-/

namespace A056556.P11335361665985267770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A056556.P11335361665985267770

noncomputable section

/-- A056556: First tetrahedral coordinate; repeat m (m+1)*(m+2)/2 times.

Offset 0, canonical program `A056556.P11335361665985267770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056556 (n : ℕ) : ℤ :=
  A056556.P11335361665985267770.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056562.P16284294879331375478

`A101264(n+1)+A101264(A006370(n))`
-/

namespace A056562.P16284294879331375478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1) + A101264 (A006370 n).toNat

end

end A056562.P16284294879331375478

noncomputable section

/-- A056562: Number of primes which are the difference between two triangular numbers, where the smaller is the n-th triangular number.

Offset 0, canonical program `A056562.P16284294879331375478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056562 (n : ℕ) : ℤ :=
  A056562.P16284294879331375478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056563.P15214927666009346148

`char[A006254(n+1)]+char[A065091(n+1)]`
-/

namespace A056563.P15214927666009346148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A056563.P15214927666009346148

noncomputable section

/-- A056563: Number of primes which are the difference between two triangular numbers, where the larger is the n-th triangular number.

Offset 0, canonical program `A056563.P15214927666009346148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056563 (n : ℕ) : ℤ :=
  (A056563.P15214927666009346148.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057056.P3364605959562525484

`A057057(n+3)+1-A057055(n+3)`
-/

namespace A057056.P3364605959562525484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057057 (n + 3) + (1 - A057055 (n + 3))

end

end A057056.P3364605959562525484

noncomputable section

/-- A057056: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and a(n) = j(C(n,3)).

Offset 3, canonical program `A057056.P3364605959562525484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057056 (n : ℕ) : ℤ :=
  A057056.P3364605959562525484.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057536.P3712307123288283069

`∑{digits}[2*n, A008624(#+1)]`
-/

namespace A057536.P3712307123288283069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008624 (x + 1)).sum

end

end A057536.P3712307123288283069

noncomputable section

/-- A057536: Minimal number of coins needed to pay n Euro-cents using the Euro currency.

Offset 0, canonical program `A057536.P3712307123288283069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057536 (n : ℕ) : ℤ :=
  A057536.P3712307123288283069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057541.P12411612141850877214

`∩[A056020(n+1), A057540(n+1)]`
-/

namespace A057541.P12411612141850877214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057541.P12411612141850877214

noncomputable section

/-- A057541: Birthday set of order 9: i.e., numbers congruent to +- 1 modulo 2, 3, 4, 5, 6, 7, 8 and 9.

Offset 1, canonical program `A057541.P12411612141850877214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A057541 (n : ℕ) : ℤ :=
  (A057541.P12411612141850877214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A057541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057552.P15801216228860048418

`∑[A001791(n+1)]`
-/

namespace A057552.P15801216228860048418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A057552.P15801216228860048418

noncomputable section

/-- A057552: a(n) = Sum_{k=0..n} C(2k+2,k).

Offset 0, canonical program `A057552.P15801216228860048418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A057552 (n : ℕ) : ℤ :=
  A057552.P15801216228860048418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A057552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057930.P8479828398702324174

`A057929(n+1)+A057929(n)`
-/

namespace A057930.P8479828398702324174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057929 (n + 1) + A057929 n

end

end A057930.P8479828398702324174

noncomputable section

/-- A057930: Sequence b(n) mentioned in A057929.

Offset 1, canonical program `A057930.P8479828398702324174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057930 (n : ℕ) : ℤ :=
  A057930.P8479828398702324174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A057930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058026.P13354462320521443041

`∏{p}[n+1, #-2]*A003557(n+1)`
-/

namespace A058026.P13354462320521443041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 2)) * A003557 (n + 1)

end

end A058026.P13354462320521443041

noncomputable section

/-- A058026: Number of positive integers, k, where k <= n and gcd(k,n) = gcd(k+1,n) = 1.

Offset 1, canonical program `A058026.P13354462320521443041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058026 (n : ℕ) : ℤ :=
  A058026.P13354462320521443041.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058032.P13195019555166246922

`∑[char[A045716(n+1)]]`
-/

namespace A058032.P13195019555166246922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058032.P13195019555166246922

noncomputable section

/-- A058032: Largest m such that 2^n / primorial(m) >= 1.

Offset 0, canonical program `A058032.P13195019555166246922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058032 (n : ℕ) : ℤ :=
  (A058032.P13195019555166246922.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058079.P6918650657682453408

`A000040(eq[1, A058078(n+1)]+3)`
-/

namespace A058079.P6918650657682453408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A058079.P6918650657682453408

noncomputable section

/-- A058079: a(n) = p3, where {p1,p2,p3} are 3 consecutive primes with increasing order such that gcd(C(p3,p2), C(p2,p1)) = 1, where C is the binomial coefficient.

Offset 1, canonical program `A058079.P6918650657682453408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A058079 (n : ℕ) : ℤ :=
  A058079.P6918650657682453408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A058079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058183.P4906920629226833825

`A055642(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A058183.P4906920629226833825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (n + 1) + a (n - 1)

end

end A058183.P4906920629226833825

noncomputable section

/-- A058183: Number of digits in concatenation of first n positive integers.

Offset 1, canonical program `A058183.P4906920629226833825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058183 (n : ℕ) : ℤ :=
  A058183.P4906920629226833825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058186.P13779469765456657561

`A007091(A058185(n+1))`
-/

namespace A058186.P13779469765456657561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A058185 (n + 1)).toNat

end

end A058186.P13779469765456657561

noncomputable section

/-- A058186: Numbers (written in base 5) which appear the same when written in base 5 and base 10/2.

Offset 1, canonical program `A058186.P13779469765456657561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A058185, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A058186 (n : ℕ) : ℤ :=
  A058186.P13779469765456657561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A058185, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A058186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058188.P9072146060356888764

`A000720(A000040(n+1)+A000006(n+1))-(n+1)`
-/

namespace A058188.P9072146060356888764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) + A000006 (n + 1)).toNat - (n + 1 : ℤ)

end

end A058188.P9072146060356888764

noncomputable section

/-- A058188: Number of primes between prime(n) and prime(n) + sqrt(prime(n)), where prime(n) is the n-th prime.

Offset 1, canonical program `A058188.P9072146060356888764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9563 terms. -/
def A058188 (n : ℕ) : ℤ :=
  A058188.P9072146060356888764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9563 terms. -/
def A058188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058254.P3014103695995548683

`lcm(a(n-1), A006093(n))` with `a(0)=1`
-/

namespace A058254.P3014103695995548683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A006093 n)

end

end A058254.P3014103695995548683

noncomputable section

/-- A058254: a(n) = lcm{prime(i)-1, i=1..n}.

Offset 0, canonical program `A058254.P3014103695995548683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A058254 (n : ℕ) : ℤ :=
  (A058254.P3014103695995548683.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A058254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058271.P8840651636009119007

`A058269(n+1)+A057427(n)`
-/

namespace A058271.P8840651636009119007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058269 (n + 1) + A057427 n

end

end A058271.P8840651636009119007

noncomputable section

/-- A058271: An approximation to sigma_{3/2}(n): ceiling( sum_{d|n} d^(3/2) ).

Offset 1, canonical program `A058271.P8840651636009119007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058271 (n : ℕ) : ℤ :=
  A058271.P8840651636009119007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058274.P5628590533721201962

`A058272(n+1)+A057427(n)`
-/

namespace A058274.P5628590533721201962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058272 (n + 1) + A057427 n

end

end A058274.P5628590533721201962

noncomputable section

/-- A058274: An approximation to sigma_{5/2}(n): ceiling( sum_{d|n} d^(5/2) ).

Offset 1, canonical program `A058274.P5628590533721201962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058274 (n : ℕ) : ℤ :=
  A058274.P5628590533721201962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058541.P10676030891438900090

`A033885(a(n-1))` with `a(0)=1`
-/

namespace A058541.P10676030891438900090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033885 (a (n - 1)).toNat

end

end A058541.P10676030891438900090

noncomputable section

/-- A058541: Trajectory of 1 under map that sends x to 3x - sigma(x).

Offset 0, canonical program `A058541.P10676030891438900090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058541 (n : ℕ) : ℤ :=
  A058541.P10676030891438900090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058749.P7714984297869943431

`A058738(n)+A057427(n)`
-/

namespace A058749.P7714984297869943431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058738 n + A057427 n

end

end A058749.P7714984297869943431

noncomputable section

/-- A058749: a(n) = ceiling(n*exp(n)).

Offset 0, canonical program `A058749.P7714984297869943431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A058749 (n : ℕ) : ℤ :=
  A058749.P7714984297869943431.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A058749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058751.P13043009951730416498

`A058750(n+1)+A057427(n)`
-/

namespace A058751.P13043009951730416498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058750 (n + 1) + A057427 n

end

end A058751.P13043009951730416498

noncomputable section

/-- A058751: a(n) = ceiling(log(n)*exp(n)).

Offset 1, canonical program `A058751.P13043009951730416498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A058751 (n : ℕ) : ℤ :=
  A058751.P13043009951730416498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A058751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059012.P14582640495260364617

`xor(1, A059011(n+1))`
-/

namespace A059012.P14582640495260364617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059011 (n + 1))

end

end A059012.P14582640495260364617

noncomputable section

/-- A059012: Numbers that have an even number of 0's and 1's in their binary expansion.

Offset 1, canonical program `A059012.P14582640495260364617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059012 (n : ℕ) : ℤ :=
  A059012.P14582640495260364617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059014.P3544405708758436744

`xor(1, A059013(n+1))`
-/

namespace A059014.P3544405708758436744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059013 (n + 1))

end

end A059014.P3544405708758436744

noncomputable section

/-- A059014: Numbers that have an even number of 0's and an odd number of 1's in binary expansion.

Offset 1, canonical program `A059014.P3544405708758436744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059014 (n : ℕ) : ℤ :=
  A059014.P3544405708758436744.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059131.P15079196428124471253

`A059129(A002264(n))+(n%3)%2`
-/

namespace A059131.P15079196428124471253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (A002264 n).toNat + ((n % 3 % 2 : ℕ) : ℤ)

end

end A059131.P15079196428124471253

noncomputable section

/-- A059131: A hierarchical sequence (W3{2,2}* - see A059126).

Offset 0, canonical program `A059131.P15079196428124471253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059131 (n : ℕ) : ℤ :=
  A059131.P15079196428124471253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059174.P3103714182843874225

`A059173(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A059174.P3103714182843874225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059173 (n - 1) + a (n - 1)

end

end A059174.P3103714182843874225

noncomputable section

/-- A059174: Maximal number of regions into which 5-space can be divided by n hyperspheres.

Offset 0, canonical program `A059174.P3103714182843874225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059174 (n : ℕ) : ℤ :=
  A059174.P3103714182843874225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059324.P9355351555036225255

`eq[0, A075743(2*n+1)]`
-/

namespace A059324.P9355351555036225255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059324.P9355351555036225255

noncomputable section

/-- A059324: Numbers n such that 6n + 5 is composite.

Offset 1, canonical program `A059324.P9355351555036225255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059324 (n : ℕ) : ℤ :=
  (A059324.P9355351555036225255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059325.P16762475601172180159

`A024898(n+1)-1`
-/

namespace A059325.P16762475601172180159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 1

end

end A059325.P16762475601172180159

noncomputable section

/-- A059325: Numbers n such that 6n + 5 is prime.

Offset 1, canonical program `A059325.P16762475601172180159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059325 (n : ℕ) : ℤ :=
  A059325.P16762475601172180159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059348.P17500318434418441565

`A208355(n+1)+A208355(n)`
-/

namespace A059348.P17500318434418441565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) + A208355 n

end

end A059348.P17500318434418441565

noncomputable section

/-- A059348: Third diagonal of array in A059347.

Offset 2, canonical program `A059348.P17500318434418441565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A059348 (n : ℕ) : ℤ :=
  A059348.P17500318434418441565.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A059348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059376.P12656735072516275082

`∑{d}[n+1, A001158(#)*A007427((n+1)/#)]`
-/

namespace A059376.P12656735072516275082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P12656735072516275082

noncomputable section

/-- A059376: Jordan function J_3(n).

Offset 1, canonical program `A059376.P12656735072516275082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059376 (n : ℕ) : ℤ :=
  A059376.P12656735072516275082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059377.P4346818254889849577

`∑{d}[n+1, A001159(#)*A007427((n+1)/#)]`
-/

namespace A059377.P4346818254889849577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P4346818254889849577

noncomputable section

/-- A059377: Jordan function J_4(n).

Offset 1, canonical program `A059377.P4346818254889849577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059377 (n : ℕ) : ℤ :=
  A059377.P4346818254889849577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059378.P847336418425473705

`∑{d}[n+1, A001160(#)*A007427((n+1)/#)]`
-/

namespace A059378.P847336418425473705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P847336418425473705

noncomputable section

/-- A059378: Jordan function J_5(n).

Offset 1, canonical program `A059378.P847336418425473705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059378 (n : ℕ) : ℤ :=
  A059378.P847336418425473705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059390.P1527196255180977362

`comp[A131411(n+1)]+1`
-/

namespace A059390.P1527196255180977362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A059390.P1527196255180977362

noncomputable section

/-- A059390: Numbers that are not the sum of two nonzero Fibonacci numbers.

Offset 1, canonical program `A059390.P1527196255180977362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059390 (n : ℕ) : ℤ :=
  (A059390.P1527196255180977362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059581.P17730618558655217201

`A059571(n+1)-abs(A002321(n+1))`
-/

namespace A059581.P17730618558655217201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - |A002321 (n + 1)|

end

end A059581.P17730618558655217201

noncomputable section

/-- A059581: From Von Sterneck's conjecture: floor(sqrt(n)) - 2*|Mertens's function A002321(n)|.

Offset 1, canonical program `A059581.P17730618558655217201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059581 (n : ℕ) : ℤ :=
  A059581.P17730618558655217201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059595.P15272793515478132709

`∑[A038166(n)]+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A059595.P15272793515478132709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038166 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A059595.P15272793515478132709

noncomputable section

/-- A059595: Seventh column (m=6) of convolution triangle A059594(n,m).

Offset 0, canonical program `A059595.P15272793515478132709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059595 (n : ℕ) : ℤ :=
  A059595.P15272793515478132709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059616.P15840929490615819020

`A051712(A028310(n))*A106609(n)`
-/

namespace A059616.P15840929490615819020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (A028310 n).toNat * A106609 n

end

end A059616.P15840929490615819020

noncomputable section

/-- A059616: Numerator of n*(n-1)/(8*(2*n+1)).

Offset 0, canonical program `A059616.P15840929490615819020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059616 (n : ℕ) : ℤ :=
  A059616.P15840929490615819020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059708.P17038311625249914196

`eq[0, A374097(n)]`
-/

namespace A059708.P17038311625249914196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059708.P17038311625249914196

noncomputable section

/-- A059708: Numbers k such that all digits have same parity.

Offset 1, canonical program `A059708.P17038311625249914196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A059708 (n : ℕ) : ℤ :=
  (A059708.P17038311625249914196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1405 terms. -/
def A059708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059714.P16536608506160703509

`(A049027(n+1)+A000108(n+1))/2`
-/

namespace A059714.P16536608506160703509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049027 (n + 1) + A000108 (n + 1) : ℚ) / 2

end

end A059714.P16536608506160703509

noncomputable section

/-- A059714: Number of stacked directed animals on the triangular lattice.

Offset 1, canonical program `A059714.P16536608506160703509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A059714 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059714.P16536608506160703509.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A059714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059779.P4415360293391952996

`A058071(n)-A152163(A002024(n+1))`
-/

namespace A059779.P4415360293391952996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 n - A152163 (A002024 (n + 1)).toNat

end

end A059779.P4415360293391952996

noncomputable section

/-- A059779: A Lucas triangle: T(m,n), m >= n >= 0.

Offset 0, canonical program `A059779.P4415360293391952996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059779 (n : ℕ) : ℤ :=
  A059779.P4415360293391952996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059990.P17006573359253022065

`floor(A000225(n+1)/A060901(2*(n+1)))`
-/

namespace A059990.P17006573359253022065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 (n + 1) : ℚ) / (A060901 (2 * (n + 1)) : ℚ)⌋

end

end A059990.P17006573359253022065

noncomputable section

/-- A059990: Number of points of period n under the dual of the map x->2x on Z[1/6].

Offset 1, canonical program `A059990.P17006573359253022065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A059990 (n : ℕ) : ℤ :=
  A059990.P17006573359253022065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A059990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060024.P6216530268530384553

`A026810(n+4)-A026811(n+4)`
-/

namespace A060024.P6216530268530384553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 4) - A026811 (n + 4)

end

end A060024.P6216530268530384553

noncomputable section

/-- A060024: Expansion of (1-x-x^N)/((1-x)(1-x^2)(1-x^3)...(1-x^N)) for N = 5.

Offset 0, canonical program `A060024.P6216530268530384553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060024 (n : ℕ) : ℤ :=
  A060024.P6216530268530384553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026811, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060037.P5636579364470323384

`A007606(n+1)²%A027434(n+1)`
-/

namespace A060037.P5636579364470323384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007606 (n + 1) ^ 2) (A027434 (n + 1))

end

end A060037.P5636579364470323384

noncomputable section

/-- A060037: Triangular array T read by rows: T(n,k)=k^2 mod n, for k=1,2,...,[n/2], n=2,3,...

Offset 2, canonical program `A060037.P5636579364470323384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060037 (n : ℕ) : ℤ :=
  A060037.P5636579364470323384.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060062.P9908052312092922423

`∑[(n+1)²*A060061(n+1)]`
-/

namespace A060062.P9908052312092922423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A060061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060062.P9908052312092922423

noncomputable section

/-- A060062: Fifth column of triangle A060058.

Offset 0, canonical program `A060062.P9908052312092922423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060062 (n : ℕ) : ℤ :=
  A060062.P9908052312092922423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060074.P16963241375478212679

`gcd(A000038(n), A060058(A061579(n)))`
-/

namespace A060074.P16963241375478212679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060058 (A061579 n).toNat)

end

end A060074.P16963241375478212679

noncomputable section

/-- A060074: Triangle A060058 by diagonals.

Offset 0, canonical program `A060074.P16963241375478212679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A060074 (n : ℕ) : ℤ :=
  (A060074.P16963241375478212679.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 820 terms. -/
def A060074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060097.P1955645356064434113

`gcd(A137688(n), A159335(A014132(n+1)-1))`
-/

namespace A060097.P1955645356064434113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137688 n) (A159335 (A014132 (n + 1) - 1).toNat)

end

end A060097.P1955645356064434113

noncomputable section

/-- A060097: Denominator of coefficients of Euler polynomials (rising powers).

Offset 0, canonical program `A060097.P1955645356064434113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A060097 (n : ℕ) : ℤ :=
  (A060097.P1955645356064434113.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A060097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060155.P3988702080630872113

`floor(A051129(n+1)/A004736(n+1))`
-/

namespace A060155.P3988702080630872113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051129 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A060155.P3988702080630872113

noncomputable section

/-- A060155: Table T(n,k) by antidiagonals of floor(n^k/k) [n,k >= 1].

Offset 1, canonical program `A060155.P3988702080630872113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A060155 (n : ℕ) : ℤ :=
  A060155.P3988702080630872113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4579 terms. -/
def A060155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060191.P13050475962778099044

`∪[A031337(n+1), A031385(n+1)]`
-/

namespace A060191.P13050475962778099044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060191.P13050475962778099044

noncomputable section

/-- A060191: Union_i p(4i), p(4i+1), where p(k) = k-th prime.

Offset 0, canonical program `A060191.P13050475962778099044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060191 (n : ℕ) : ℤ :=
  (A060191.P13050475962778099044.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060199.P18406765508866115629

`Δ[A038098(n-n²%(n+1)+1)]`
-/

namespace A060199.P18406765508866115629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 ((n : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060199.P18406765508866115629

noncomputable section

/-- A060199: Number of primes between n^3 and (n+1)^3.

Offset 0, canonical program `A060199.P18406765508866115629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A060199 (n : ℕ) : ℤ :=
  A060199.P18406765508866115629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 529 terms. -/
def A060199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060312.P18115054716268968437

`A001224(n+1)-A063524(n)`
-/

namespace A060312.P18115054716268968437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001224 (n + 1) - A063524 n

end

end A060312.P18115054716268968437

noncomputable section

/-- A060312: Number of distinct ways to tile a 2 X n rectangle with dominoes (solutions are identified if they are rotations or reflections of each other).

Offset 1, canonical program `A060312.P18115054716268968437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A060312 (n : ℕ) : ℤ :=
  A060312.P18115054716268968437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A060312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060338.P8584543920789306308

`gcd(A000038(n), A060524(A061579(n)))`
-/

namespace A060338.P8584543920789306308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060524 (A061579 n).toNat)

end

end A060338.P8584543920789306308

noncomputable section

/-- A060338: Triangle T(n,k) of coefficients of Meixner polynomials of degree n, k=0..n.

Offset 0, canonical program `A060338.P8584543920789306308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A060338 (n : ℕ) : ℤ :=
  (A060338.P8584543920789306308.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A060338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060476.P15326547790520508984

`record[(n+1)*A005171(A051903(n+1)+1)]`
-/

namespace A060476.P15326547790520508984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (A051903 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060476.P15326547790520508984

noncomputable section

/-- A060476: Let n = 2^e_2 * 3^e_3 * 5^e_5 * ... be the prime factorization of n; sequence gives n such that 1 + max{e_2, e_3, ...} is nonprime.

Offset 1, canonical program `A060476.P15326547790520508984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060476 (n : ℕ) : ℤ :=
  A060476.P15326547790520508984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060477.P12484986106392669418

`or(C(n, a(n-1)), A059966(n+1))` with `a(0)=3`
-/

namespace A060477.P12484986106392669418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (Nat.choose n (a (n - 1)).toNat : ℤ) (A059966 (n + 1))

end

end A060477.P12484986106392669418

noncomputable section

/-- A060477: Number of orbits of length n in map whose periodic points are A000051.

Offset 1, canonical program `A060477.P12484986106392669418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A060477 (n : ℕ) : ℤ :=
  A060477.P12484986106392669418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A060477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060586.P12534353226957296192

`A060585(A060583(n))`
-/

namespace A060586.P12534353226957296192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060585 (A060583 n).toNat

end

end A060586.P12534353226957296192

noncomputable section

/-- A060586: Minimum number of moves required to reach position n starting from 0 in Tower of Hanoi (with three pegs: 0,1,2), where with position n written in base 3, xyz means smallest disk is on peg z, second smallest is on peg y, third smallest on peg x, etc. and leading zeros indicate largest disks are all on peg 0.

Offset 0, canonical program `A060586.P12534353226957296192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060586 (n : ℕ) : ℤ :=
  A060586.P12534353226957296192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060586.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060634.P1496846286509724012

`∪[A006005(n+1), A020695(n)]`
-/

namespace A060634.P1496846286509724012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060634.P1496846286509724012

noncomputable section

/-- A060634: Union of Fibonacci numbers and prime numbers.

Offset 1, canonical program `A060634.P1496846286509724012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060634 (n : ℕ) : ℤ :=
  (A060634.P1496846286509724012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060658.P10391522768157546059

`∩[2*n, A007369(n+1)]`
-/

namespace A060658.P10391522768157546059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060658.P10391522768157546059

noncomputable section

/-- A060658: Even numbers n such that sigma(x) = n has no solution.

Offset 1, canonical program `A060658.P10391522768157546059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3522 terms. -/
def A060658 (n : ℕ) : ℤ :=
  (A060658.P10391522768157546059.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3522 terms. -/
def A060658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060854.P4186796300289775074

`A177939(n+1)/A009963(n)`
-/

namespace A060854.P4186796300289775074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177939 (n + 1) : ℚ) / (A009963 n : ℚ)

end

end A060854.P4186796300289775074

noncomputable section

/-- A060854: Array T(m,n) read by antidiagonals: T(m,n) (m >= 1, n >= 1) = number of ways to arrange the numbers 1,2,...,m*n in an m X n matrix so that each row and each column is increasing.

Offset 1, canonical program `A060854.P4186796300289775074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A060854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060854.P4186796300289775074.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A060854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060866.P6702575079618569107

`A000203(n+1)+A037213(n+1)`
-/

namespace A060866.P6702575079618569107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A037213 (n + 1)

end

end A060866.P6702575079618569107

noncomputable section

/-- A060866: Sum of (d+d') over all unordered pairs (d,d') with d*d' = n.

Offset 1, canonical program `A060866.P6702575079618569107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060866 (n : ℕ) : ℤ :=
  A060866.P6702575079618569107.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037213, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060866.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060885.P6901912794972420859

`n*(A228293(n)+1)+1`
-/

namespace A060885.P6901912794972420859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A228293 n + 1) + 1

end

end A060885.P6901912794972420859

noncomputable section

/-- A060885: a(n) = Sum_{j=0..10} n^j.

Offset 0, canonical program `A060885.P6901912794972420859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060885 (n : ℕ) : ℤ :=
  A060885.P6901912794972420859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060929.P2101954034627007323

`A005408(n)*A136376(n+1)-A086926(n)`
-/

namespace A060929.P2101954034627007323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A136376 (n + 1) - A086926 n

end

end A060929.P2101954034627007323

noncomputable section

/-- A060929: Second convolution of Lucas numbers A000032(n+1), n >= 0.

Offset 0, canonical program `A060929.P2101954034627007323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A060929 (n : ℕ) : ℤ :=
  A060929.P2101954034627007323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A060929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060978.P9465525614971023355

`eq[10, abs(A055017(n))]`
-/

namespace A060978.P9465525614971023355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060978.P9465525614971023355

noncomputable section

/-- A060978: |First digit - second digit + third digit - fourth digit ...| = 10.

Offset 1, canonical program `A060978.P9465525614971023355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A060978 (n : ℕ) : ℤ :=
  (A060978.P9465525614971023355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A060978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060980.P16396531685761901116

`eq[12, abs(A055017(n))]`
-/

namespace A060980.P16396531685761901116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060980.P16396531685761901116

noncomputable section

/-- A060980: |First digit - second digit + third digit - fourth digit ...| = 12.

Offset 1, canonical program `A060980.P16396531685761901116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A060980 (n : ℕ) : ℤ :=
  (A060980.P16396531685761901116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A060980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061009.P3866037910941706690

`A061008(n+1)-2`
-/

namespace A061009.P3866037910941706690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061008 (n + 1) - 2

end

end A061009.P3866037910941706690

noncomputable section

/-- A061009: a(n) = -2 + Sum_{j=1..n} (-(n-1)!) mod n.

Offset 1, canonical program `A061009.P3866037910941706690`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061008, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061009 (n : ℕ) : ℤ :=
  A061009.P3866037910941706690.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061008, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061020.P8856517168126816648

`∑{d}[n+1, A000203(#)*A298473((n+1)/#)]`
-/

namespace A061020.P8856517168126816648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P8856517168126816648

noncomputable section

/-- A061020: Negate primes in factorizations of divisors of n, then sum.

Offset 1, canonical program `A061020.P8856517168126816648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061020 (n : ℕ) : ℤ :=
  A061020.P8856517168126816648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061150.P16059668170846377960

`∑{d}[n+1, A033286(#)]`
-/

namespace A061150.P16059668170846377960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033286 d

end

end A061150.P16059668170846377960

noncomputable section

/-- A061150: a(n) = Sum_{d|n} d*prime(d).

Offset 1, canonical program `A061150.P16059668170846377960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061150 (n : ℕ) : ℤ :=
  A061150.P16059668170846377960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061179.P5321176616929705182

`A001872(2*n)`
-/

namespace A061179.P5321176616929705182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001872 (2 * n)

end

end A061179.P5321176616929705182

noncomputable section

/-- A061179: Fourth column (m=3) of triangle A060920 (bisection of Fibonacci triangle, even part).

Offset 0, canonical program `A061179.P5321176616929705182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A061179 (n : ℕ) : ℤ :=
  A061179.P5321176616929705182.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A061179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061183.P7540145295357739120

`A001872(2*n+1)/4`
-/

namespace A061183.P7540145295357739120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001872 (2 * n + 1) : ℚ) / 4

end

end A061183.P7540145295357739120

noncomputable section

/-- A061183: One-fourth of the fourth (m=3) column of triangle A060921 (bisection of Fibonacci triangle, odd part).

Offset 0, canonical program `A061183.P7540145295357739120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A061183 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061183.P7540145295357739120.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A061183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061376.P1276602125877968792

`A105221(n+1)+A105221(A028310(A105221(n+1)))`
-/

namespace A061376.P1276602125877968792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105221 (n + 1) + A105221 (A028310 (A105221 (n + 1)).toNat).toNat

end

end A061376.P1276602125877968792

noncomputable section

/-- A061376: a(n) = f(n) + f(f(n)) where f(n) = 0 if n <= 1 or a prime, otherwise f(n) = sum of distinct primes dividing n.

Offset 1, canonical program `A061376.P1276602125877968792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061376 (n : ℕ) : ℤ :=
  A061376.P1276602125877968792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061439.P5107726913665687421

`A018005(n+2)-1`
-/

namespace A061439.P5107726913665687421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 2) - 1

end

end A061439.P5107726913665687421

noncomputable section

/-- A061439: Largest number whose cube has n digits.

Offset 1, canonical program `A061439.P5107726913665687421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A061439 (n : ℕ) : ℤ :=
  A061439.P5107726913665687421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A061439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061471.P7279720619341012991

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=2`
-/

namespace A061471.P7279720619341012991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061471.P7279720619341012991

noncomputable section

/-- A061471: First (leftmost) digit - second digit + third digit - fourth digit .... = 2.

Offset 1, canonical program `A061471.P7279720619341012991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A061471 (n : ℕ) : ℤ :=
  (A061471.P7279720619341012991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A061471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061472.P7918386733509279837

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=3`
-/

namespace A061472.P7918386733509279837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061472.P7918386733509279837

noncomputable section

/-- A061472: First (leftmost) digit - second digit + third digit - fourth digit .... = 3.

Offset 1, canonical program `A061472.P7918386733509279837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A061472 (n : ℕ) : ℤ :=
  (A061472.P7918386733509279837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. -/
def A061472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061473.P12784798883308001340

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=4`
-/

namespace A061473.P12784798883308001340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061473.P12784798883308001340

noncomputable section

/-- A061473: First (leftmost) digit - second digit + third digit - fourth digit .... = 4.

Offset 1, canonical program `A061473.P12784798883308001340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A061473 (n : ℕ) : ℤ :=
  (A061473.P12784798883308001340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. -/
def A061473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061474.P6394223303749271842

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=5`
-/

namespace A061474.P6394223303749271842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061474.P6394223303749271842

noncomputable section

/-- A061474: First (leftmost) digit - second digit + third digit - fourth digit .... = 5.

Offset 1, canonical program `A061474.P6394223303749271842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A061474 (n : ℕ) : ℤ :=
  (A061474.P6394223303749271842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 541 terms. -/
def A061474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061475.P655871579169783819

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=6`
-/

namespace A061475.P655871579169783819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061475.P655871579169783819

noncomputable section

/-- A061475: First (leftmost) digit - second digit + third digit - fourth digit .... = 6.

Offset 1, canonical program `A061475.P655871579169783819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A061475 (n : ℕ) : ℤ :=
  (A061475.P655871579169783819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A061475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061476.P279424405032594170

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=7`
-/

namespace A061476.P279424405032594170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061476.P279424405032594170

noncomputable section

/-- A061476: First (leftmost) digit - second digit + third digit - fourth digit .... = 7.

Offset 1, canonical program `A061476.P279424405032594170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A061476 (n : ℕ) : ℤ :=
  (A061476.P279424405032594170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A061476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061477.P4513353281043858727

`eq[0, A000038(n)+n%10-a(floor(n/10))]` with `a(0)=8`
-/

namespace A061477.P4513353281043858727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A000038 n + ((n % 10 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061477.P4513353281043858727

noncomputable section

/-- A061477: First (leftmost) digit - second digit + third digit - fourth digit .... = 8.

Offset 1, canonical program `A061477.P4513353281043858727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A061477 (n : ℕ) : ℤ :=
  (A061477.P4513353281043858727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A061477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061819.P9298517690584947382

`A007090(3*n)`
-/

namespace A061819.P9298517690584947382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (3 * n)

end

end A061819.P9298517690584947382

noncomputable section

/-- A061819: Multiples of 3 containing only digits 0,1,2,3.

Offset 1, canonical program `A061819.P9298517690584947382`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061819 (n : ℕ) : ℤ :=
  A061819.P9298517690584947382.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061819.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061820.P11905399859182740360

`filter[A007091(n), A121262(#)]`
-/

namespace A061820.P11905399859182740360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A061820.P11905399859182740360

noncomputable section

/-- A061820: Multiples of 4 containing only digits 0,...,4.

Offset 0, canonical program `A061820.P11905399859182740360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A061820 (n : ℕ) : ℤ :=
  A061820.P11905399859182740360.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A061820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061830.P4448825705646134847

`A159966(20*A007091(n))`
-/

namespace A061830.P4448825705646134847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (20 * A007091 n).toNat

end

end A061830.P4448825705646134847

noncomputable section

/-- A061830: Multiples of 5 having only even digits.

Offset 0, canonical program `A061830.P4448825705646134847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A061830 (n : ℕ) : ℤ :=
  A061830.P4448825705646134847.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A061830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061837.P5567670417075928045

`lt[2, A296955(n+2)-2]`
-/

namespace A061837.P5567670417075928045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (n + 2) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061837.P5567670417075928045

noncomputable section

/-- A061837: Numbers k such that (k+2)^2 | k!.

Offset 1, canonical program `A061837.P5567670417075928045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061837 (n : ℕ) : ℤ :=
  (A061837.P5567670417075928045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061871.P4211668016980417817

`eq[2, abs(A055017(n))]`
-/

namespace A061871.P4211668016980417817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061871.P4211668016980417817

noncomputable section

/-- A061871: |First digit - second digit + third digit - fourth digit ...| = 2.

Offset 1, canonical program `A061871.P4211668016980417817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1266 terms. -/
def A061871 (n : ℕ) : ℤ :=
  (A061871.P4211668016980417817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1266 terms. -/
def A061871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061872.P8936749673548333355

`eq[3, abs(A055017(n))]`
-/

namespace A061872.P8936749673548333355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061872.P8936749673548333355

noncomputable section

/-- A061872: |First digit - second digit + third digit - fourth digit ...| = 3.

Offset 1, canonical program `A061872.P8936749673548333355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A061872 (n : ℕ) : ℤ :=
  (A061872.P8936749673548333355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1184 terms. -/
def A061872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061873.P6247734028720904394

`eq[4, abs(A055017(n))]`
-/

namespace A061873.P6247734028720904394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061873.P6247734028720904394

noncomputable section

/-- A061873: Numbers k such that |first digit - second digit + third digit - fourth digit ...| = 4.

Offset 1, canonical program `A061873.P6247734028720904394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A061873 (n : ℕ) : ℤ :=
  (A061873.P6247734028720904394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1080 terms. -/
def A061873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061874.P18279928376283005520

`eq[5, abs(A055017(n))]`
-/

namespace A061874.P18279928376283005520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061874.P18279928376283005520

noncomputable section

/-- A061874: |First digit - second digit + third digit - fourth digit ...| = 5.

Offset 1, canonical program `A061874.P18279928376283005520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A061874 (n : ℕ) : ℤ :=
  (A061874.P18279928376283005520.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A061874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061875.P9907277657578756427

`eq[6, abs(A055017(n))]`
-/

namespace A061875.P9907277657578756427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061875.P9907277657578756427

noncomputable section

/-- A061875: |First digit - second digit + third digit - fourth digit ...| = 6.

Offset 1, canonical program `A061875.P9907277657578756427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A061875 (n : ℕ) : ℤ :=
  (A061875.P9907277657578756427.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A061875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061876.P5832762416077138613

`eq[7, abs(A055017(n))]`
-/

namespace A061876.P5832762416077138613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061876.P5832762416077138613

noncomputable section

/-- A061876: |First digit - second digit + third digit - fourth digit ...| = 7.

Offset 1, canonical program `A061876.P5832762416077138613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 696 terms. -/
def A061876 (n : ℕ) : ℤ :=
  (A061876.P5832762416077138613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 696 terms. -/
def A061876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061877.P2858329656975612530

`eq[8, abs(A055017(n))]`
-/

namespace A061877.P2858329656975612530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061877.P2858329656975612530

noncomputable section

/-- A061877: |First digit - second digit + third digit - fourth digit ...| = 8.

Offset 1, canonical program `A061877.P2858329656975612530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A061877 (n : ℕ) : ℤ :=
  (A061877.P2858329656975612530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. -/
def A061877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061878.P8172059552371590788

`eq[9, abs(A055017(n))]`
-/

namespace A061878.P8172059552371590788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055017 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A061878.P8172059552371590788

noncomputable section

/-- A061878: |First digit - second digit + third digit - fourth digit ...| = 9.

Offset 1, canonical program `A061878.P8172059552371590788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061878 (n : ℕ) : ℤ :=
  (A061878.P8172059552371590788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062172.P4489819024102910936

`A009998(n)%A004736(n+1)`
-/

namespace A062172.P4489819024102910936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009998 n) (A004736 (n + 1))

end

end A062172.P4489819024102910936

noncomputable section

/-- A062172: Table T(n,k) by antidiagonals of n^(k-1) mod k [n,k > 0].

Offset 1, canonical program `A062172.P4489819024102910936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A062172 (n : ℕ) : ℤ :=
  A062172.P4489819024102910936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4675 terms. -/
def A062172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062269.P6653936082748876429

`eq[0, A053188(A038128(n))]`
-/

namespace A062269.P6653936082748876429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A038128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062269.P6653936082748876429

noncomputable section

/-- A062269: Numbers k such that floor(gamma * k) is a square, where gamma is the Euler-Mascheroni constant (A001620).

Offset 0, canonical program `A062269.P6653936082748876429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A062269 (n : ℕ) : ℤ :=
  (A062269.P6653936082748876429.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A062269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062312.P6574845971519993361

`A018252(n+1)²`
-/

namespace A062312.P6574845971519993361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) ^ 2

end

end A062312.P6574845971519993361

noncomputable section

/-- A062312: Positive nonprime numbers squared.

Offset 1, canonical program `A062312.P6574845971519993361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062312 (n : ℕ) : ℤ :=
  A062312.P6574845971519993361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062312.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062337.P4010670014355010102

`p?[A052221(n+1)]`
-/

namespace A062337.P4010670014355010102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062337.P4010670014355010102

noncomputable section

/-- A062337: Primes whose sum of digits is 7.

Offset 1, canonical program `A062337.P4010670014355010102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A062337 (n : ℕ) : ℤ :=
  A062337.P4010670014355010102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A062337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062344.P9027567334916144000

`A034870(A063656(n))`
-/

namespace A062344.P9027567334916144000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (A063656 n).toNat

end

end A062344.P9027567334916144000

noncomputable section

/-- A062344: Triangle of binomial(2*n, k) with n >= k.

Offset 0, canonical program `A062344.P9027567334916144000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062344 (n : ℕ) : ℤ :=
  A062344.P9027567334916144000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062501.P13013082678036744864

`A001221(A018252(n+1))`
-/

namespace A062501.P13013082678036744864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A018252 (n + 1)).toNat

end

end A062501.P13013082678036744864

noncomputable section

/-- A062501: Number of distinct prime divisors of the nonprimes (including 1).

Offset 1, canonical program `A062501.P13013082678036744864`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062501 (n : ℕ) : ℤ :=
  A062501.P13013082678036744864.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062501.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062502.P13690945609050823001

`A001222(A018252(n+1))`
-/

namespace A062502.P13690945609050823001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A018252 (n + 1)).toNat

end

end A062502.P13690945609050823001

noncomputable section

/-- A062502: Number of prime divisors (with repetition) of the nonprimes (including 1).

Offset 1, canonical program `A062502.P13690945609050823001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062502 (n : ℕ) : ℤ :=
  A062502.P13690945609050823001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A062502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062562.P16887642206633692389

`∑[∑{d}[n, A055615(n)/#]]`
-/

namespace A062562.P16887642206633692389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A055615 n : ℚ) / (d : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062562.P16887642206633692389

noncomputable section

/-- A062562: a(n) = Sum_{k=1..n} mu(k)*sigma(k).

Offset 0, canonical program `A062562.P16887642206633692389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062562.P16887642206633692389.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062627.P16947834308808858695

`A000108(n)*A054527(A034856(n+1))`
-/

namespace A062627.P16947834308808858695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A054527 (A034856 (n + 1)).toNat

end

end A062627.P16947834308808858695

noncomputable section

/-- A062627: a(n) = mu(n) * Catalan(n).

Offset 0, canonical program `A062627.P16947834308808858695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A062627 (n : ℕ) : ℤ :=
  A062627.P16947834308808858695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A062627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062737.P15537786315737208090

`(p?[A001749(n+1)-1]+1)/4`
-/

namespace A062737.P15537786315737208090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 4

end

end A062737.P15537786315737208090

noncomputable section

/-- A062737: Primes p such that 4p-1 is also prime.

Offset 1, canonical program `A062737.P15537786315737208090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A062737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062737.P15537786315737208090.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A062737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062820.P14889107755262625484

`∑[A062007(n+1)]`
-/

namespace A062820.P14889107755262625484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062820.P14889107755262625484

noncomputable section

/-- A062820: Sum_{k=1..n} p(k)*mu(k).

Offset 1, canonical program `A062820.P14889107755262625484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062820 (n : ℕ) : ℤ :=
  A062820.P14889107755262625484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062836.P109274199651695140

`floor(A024450(n+1)/∑[A006093(n+1)])`
-/

namespace A062836.P109274199651695140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024450 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A062836.P109274199651695140

noncomputable section

/-- A062836: Floor[ Sum_{k=1..n,p(k)^2} / Sum_{k=1..n,p(k)-1} ].

Offset 1, canonical program `A062836.P109274199651695140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062836 (n : ℕ) : ℤ :=
  A062836.P109274199651695140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062941.P13715714431049639666

`A000007(n)+Δ[A018005(n+1)]`
-/

namespace A062941.P13715714431049639666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A062941.P13715714431049639666

noncomputable section

/-- A062941: Number of n-digit cubes (0 is included as a single-digit number).

Offset 1, canonical program `A062941.P13715714431049639666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A062941 (n : ℕ) : ℤ :=
  A062941.P13715714431049639666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A062941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062983.P5959405275320518108

`comp[A062982(n+1)-1]+1`
-/

namespace A062983.P5959405275320518108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062982 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A062983.P5959405275320518108

noncomputable section

/-- A062983: Numbers k such that Mertens's function of k (A002321) is not divisible by phi(k).

Offset 1, canonical program `A062983.P5959405275320518108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062983 (n : ℕ) : ℤ :=
  (A062983.P5959405275320518108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062984.P9111632731463951526

`A002321(abs(1-A048050(n+1))+1)`
-/

namespace A062984.P9111632731463951526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (|1 - A048050 (n + 1)| + 1).toNat

end

end A062984.P9111632731463951526

noncomputable section

/-- A062984: a(n) = M(C(n)), where M(n) is Mertens's function (A002321) and C(n) is Chowla's function (A048050).

Offset 1, canonical program `A062984.P9111632731463951526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A062984 (n : ℕ) : ℤ :=
  A062984.P9111632731463951526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A062984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063235.P16999452272687535801

`A063230(n+1)+Δ[n²]`
-/

namespace A063235.P16999452272687535801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063230 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063235.P16999452272687535801

noncomputable section

/-- A063235: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 83 ).

Offset 1, canonical program `A063235.P16999452272687535801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063235 (n : ℕ) : ℤ :=
  A063235.P16999452272687535801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063240.P17061771090218456608

`Δ[8*n²-A053799(n)]`
-/

namespace A063240.P17061771090218456608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - A053799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A063240.P17061771090218456608

noncomputable section

/-- A063240: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 89 ).

Offset 1, canonical program `A063240.P17061771090218456608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063240 (n : ℕ) : ℤ :=
  A063240.P17061771090218456608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063452.P9477363027529647391

`or(2, A062304(n+1)-1)`
-/

namespace A063452.P9477363027529647391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A062304 (n + 1) - 1)

end

end A063452.P9477363027529647391

noncomputable section

/-- A063452: Numbers k such that k - mu(k) is prime.

Offset 1, canonical program `A063452.P9477363027529647391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063452 (n : ℕ) : ℤ :=
  A063452.P9477363027529647391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063479.P3402868684958619055

`eq[A034444(n+1)², A034444(n+2)]+1`
-/

namespace A063479.P3402868684958619055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063479.P3402868684958619055

noncomputable section

/-- A063479: Numbers k such that omega(k+1) = 2*omega(k), where omega is the number of distinct prime factors.

Offset 1, canonical program `A063479.P3402868684958619055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A063479 (n : ℕ) : ℤ :=
  (A063479.P3402868684958619055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. -/
def A063479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063531.P3268237155309024633

`eq[1, A007913(A000203(n+1)+1)]+1`
-/

namespace A063531.P3268237155309024633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000203 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A063531.P3268237155309024633

noncomputable section

/-- A063531: Numbers k such that sigma(k) + 1 is a square.

Offset 1, canonical program `A063531.P3268237155309024633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A063531 (n : ℕ) : ℤ :=
  (A063531.P3268237155309024633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 795 terms. -/
def A063531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063534.P17795295830584222676

`xor(A001748(n+1), A063524(n))`
-/

namespace A063534.P17795295830584222676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001748 (n + 1)) (A063524 n)

end

end A063534.P17795295830584222676

noncomputable section

/-- A063534: Numbers k such that C(k) = H(k) + d(k), where C(k) is Chowla's function A048050, H(k) is the half-totient function A023022 and d(k) is the number of divisors function A000005.

Offset 1, canonical program `A063534.P17795295830584222676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063534 (n : ℕ) : ℤ :=
  A063534.P17795295830584222676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063535.P4924521992092445288

`A000040(lt[A056221(n+1), 0]+1)`
-/

namespace A063535.P4924521992092445288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A063535.P4924521992092445288

noncomputable section

/-- A063535: Primes prime(n) such that prime(n+1)^2 < prime(n)*prime(n+2).

Offset 0, canonical program `A063535.P4924521992092445288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4802 terms. -/
def A063535 (n : ℕ) : ℤ :=
  A063535.P4924521992092445288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4802 terms. -/
def A063535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063880.P5681857792840883182

`record[lcm(4, lcm(27, A005117(n+1)))]`
-/

namespace A063880.P5681857792840883182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (Int.lcm 27 (A005117 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A063880.P5681857792840883182

noncomputable section

/-- A063880: Numbers k such that sigma(k) = 2*usigma(k).

Offset 1, canonical program `A063880.P5681857792840883182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063880 (n : ℕ) : ℤ :=
  (A063880.P5681857792840883182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063910.P3796173184105421740

`p?[2*A005099(n+1)+3]`
-/

namespace A063910.P3796173184105421740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005099 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063910.P3796173184105421740

noncomputable section

/-- A063910: Primes p such that 2*p - 7 is also prime.

Offset 1, canonical program `A063910.P3796173184105421740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1545 terms. -/
def A063910 (n : ℕ) : ℤ :=
  A063910.P3796173184105421740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1545 terms. -/
def A063910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063912.P3574652520992359286

`p?[A001281(A001223(n+1))+a(n-1)]` with `a(0)=7`
-/

namespace A063912.P3574652520992359286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A001281 (A001223 (n + 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063912.P3574652520992359286

noncomputable section

/-- A063912: Primes p such that 2*p - 11 is also prime.

Offset 1, canonical program `A063912.P3574652520992359286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6017 terms. -/
def A063912 (n : ℕ) : ℤ :=
  A063912.P3574652520992359286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6017 terms. -/
def A063912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063930.P17082922277373076399

`A063929(n+1)+A057105(n+1)`
-/

namespace A063930.P17082922277373076399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (n + 1) + A057105 (n + 1)

end

end A063930.P17082922277373076399

noncomputable section

/-- A063930: Radius of B-excircle of Pythagorean triangle with a=(n+1)^2-m^2, b=2*(n+1)*m and c=(n+1)^2+m^2.

Offset 1, canonical program `A063930.P17082922277373076399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063930 (n : ℕ) : ℤ :=
  A063930.P17082922277373076399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064009.P12108905506998327831

`∑[A006094(n+1)-A001248(n+1)]`
-/

namespace A064009.P12108905506998327831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064009.P12108905506998327831

noncomputable section

/-- A064009: a(n) = Sum_{k=1..n} d(k)*prime(k), where d(k) = A001223.

Offset 1, canonical program `A064009.P12108905506998327831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064009 (n : ℕ) : ℤ :=
  A064009.P12108905506998327831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064058.P300498006429403485

`∑[A064057(n)-C(n+3, 3)]`
-/

namespace A064058.P300498006429403485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064057 n - (Nat.choose (n + 3) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064058.P300498006429403485

noncomputable section

/-- A064058: Ninth column of quintinomial coefficients.

Offset 0, canonical program `A064058.P300498006429403485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064058 (n : ℕ) : ℤ :=
  A064058.P300498006429403485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064148.P16794264450961538406

`eq[1, A127440(n+1)+1]+1`
-/

namespace A064148.P16794264450961538406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064148.P16794264450961538406

noncomputable section

/-- A064148: Numbers k such that mu(k) = mu(k+1), where mu is the Möbius function (A008683).

Offset 1, canonical program `A064148.P16794264450961538406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5384 terms. -/
def A064148 (n : ℕ) : ℤ :=
  (A064148.P16794264450961538406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5384 terms. -/
def A064148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064150.P222219124651733771

`eq[0, (n+1)%A053735(n+1)]+1`
-/

namespace A064150.P222219124651733771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A053735 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064150.P222219124651733771

noncomputable section

/-- A064150: Numbers divisible by the sum of their ternary digits.

Offset 1, canonical program `A064150.P222219124651733771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A064150 (n : ℕ) : ℤ :=
  (A064150.P222219124651733771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A064150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064167.P14975930253514547645

`A001008(n+1)*A002805(n+1)`
-/

namespace A064167.P14975930253514547645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A002805 (n + 1)

end

end A064167.P14975930253514547645

noncomputable section

/-- A064167: Product of numerator and denominator of the n-th harmonic number, 1 + 1/2 + 1/3 +...+ 1/n.

Offset 1, canonical program `A064167.P14975930253514547645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A064167 (n : ℕ) : ℤ :=
  A064167.P14975930253514547645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A064167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064168.P14856509466120462602

`A002805(n+1)+A001008(n+1)`
-/

namespace A064168.P14856509466120462602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) + A001008 (n + 1)

end

end A064168.P14856509466120462602

noncomputable section

/-- A064168: Sum of numerator and denominator in n-th harmonic number, 1 + 1/2 + 1/3 +...+ 1/n.

Offset 1, canonical program `A064168.P14856509466120462602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A064168 (n : ℕ) : ℤ :=
  A064168.P14856509466120462602.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A064168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064306.P10514764993973728359

`A151374(n)-a(n-1)` with `a(0)=1`
-/

namespace A064306.P10514764993973728359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151374 n - a (n - 1)

end

end A064306.P10514764993973728359

noncomputable section

/-- A064306: Convolution of A052701 (Catalan numbers multiplied by powers of 2) with powers of -1.

Offset 0, canonical program `A064306.P10514764993973728359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A064306 (n : ℕ) : ℤ :=
  A064306.P10514764993973728359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A064306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064438.P12984857444962612531

`eq[0, (n+1)%A053737(n+1)]+1`
-/

namespace A064438.P12984857444962612531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A053737 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A064438.P12984857444962612531

noncomputable section

/-- A064438: Numbers which are divisible by the sum of their quaternary digits.

Offset 1, canonical program `A064438.P12984857444962612531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. -/
def A064438 (n : ℕ) : ℤ :=
  (A064438.P12984857444962612531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. -/
def A064438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064466.P13132782915619239599

`∪[or(1, 3*n), A215848(n+1)]+5`
-/

namespace A064466.P13132782915619239599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n + 5

end

end A064466.P13132782915619239599

noncomputable section

/-- A064466: a(0) = 6 and a(n) = Min { m > a(n-1) | both a(n-1) - p and m - p are prime for some prime p } for n > 0.

Offset 0, canonical program `A064466.P13132782915619239599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064466 (n : ℕ) : ℤ :=
  (A064466.P13132782915619239599.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064481.P13336890321893071903

`record[gcd(n+1, (n+1)%A053824(n+1))]`
-/

namespace A064481.P13336890321893071903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A053824 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064481.P13336890321893071903

noncomputable section

/-- A064481: Numbers which are divisible by the sum of their base-5 digits.

Offset 1, canonical program `A064481.P13336890321893071903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. -/
def A064481 (n : ℕ) : ℤ :=
  (A064481.P13336890321893071903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2086 terms. -/
def A064481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064528.P6641944518489254211

`comp[A064520(n+1)]`
-/

namespace A064528.P6641944518489254211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A064528.P6641944518489254211

noncomputable section

/-- A064528: Positive numbers that do not appear in A064520.

Offset 1, canonical program `A064528.P6641944518489254211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A064528 (n : ℕ) : ℤ :=
  (A064528.P6641944518489254211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2330 terms. -/
def A064528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064601.P5730512470654133780

`∑[char[A141208(n+1)]]`
-/

namespace A064601.P5730512470654133780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141208 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064601.P5730512470654133780

noncomputable section

/-- A064601: a(n) = # { p | A064558(k) = p prime and k <= n}.

Offset 1, canonical program `A064601.P5730512470654133780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064601 (n : ℕ) : ℤ :=
  (A064601.P5730512470654133780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064693.P14262218597709513042

`A064692(n)+1`
-/

namespace A064693.P14262218597709513042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n + 1

end

end A064693.P14262218597709513042

noncomputable section

/-- A064693: Number of connected components remaining when decimal expansion of the number n is cut from a piece of paper.

Offset 0, canonical program `A064693.P14262218597709513042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064693 (n : ℕ) : ℤ :=
  A064693.P14262218597709513042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064694.P9523278426856522305

`2*A002623(n)-A058187(n)`
-/

namespace A064694.P9523278426856522305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002623 n - A058187 n

end

end A064694.P9523278426856522305

noncomputable section

/-- A064694: Add column entries of the table with rows (1,2,0,0...), (0,3,4,5,0,0...), (0,0,6,7,8,9,0,0...), (0,0,0,10,11,12,13,14,0,0...), ...

Offset 1, canonical program `A064694.P9523278426856522305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064694 (n : ℕ) : ℤ :=
  A064694.P9523278426856522305.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064789.P9104811540179186593

`A057944(n)+abs(A056951(n+1))`
-/

namespace A064789.P9104811540179186593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + |A056951 (n + 1)|

end

end A064789.P9104811540179186593

noncomputable section

/-- A064789: Inverse permutation to A057028.

Offset 1, canonical program `A064789.P9104811540179186593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064789 (n : ℕ) : ℤ :=
  A064789.P9104811540179186593.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065018.P12289181754646712942

`∑{d}[n+1, A072861(#)]`
-/

namespace A065018.P12289181754646712942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072861 d

end

end A065018.P12289181754646712942

noncomputable section

/-- A065018: a(n) = Sum_{d|n} sigma(d)^2.

Offset 1, canonical program `A065018.P12289181754646712942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065018 (n : ℕ) : ℤ :=
  A065018.P12289181754646712942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065071.P2618642326571619513

`A057427(n)+A002387(2*n)`
-/

namespace A065071.P2618642326571619513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A002387 (2 * n)

end

end A065071.P2618642326571619513

noncomputable section

/-- A065071: Minimum number of identical bricks of length 1 which, when stacked without mortar in the naive way, form a stack of length >=n.

Offset 1, canonical program `A065071.P2618642326571619513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A065071 (n : ℕ) : ℤ :=
  A065071.P2618642326571619513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A065071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065090.P2734464943258358199

`A018252(n%a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A065090.P2734464943258358199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A018252 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A065090.P2734464943258358199

noncomputable section

/-- A065090: Natural numbers which are not odd primes: composites plus 1 and 2.

Offset 1, canonical program `A065090.P2734464943258358199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065090 (n : ℕ) : ℤ :=
  A065090.P2734464943258358199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065126.P13933962713951851804

`eq[3, A065803((n+1)²)]+1`
-/

namespace A065126.P13933962713951851804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065803 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065126.P13933962713951851804

noncomputable section

/-- A065126: Numbers n for which sigma_2(n^2) == 3 (mod 10).

Offset 1, canonical program `A065126.P13933962713951851804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A065126 (n : ℕ) : ℤ :=
  (A065126.P13933962713951851804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A065126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065305.P13588559578432600534

`A001281(A116366(n+1))`
-/

namespace A065305.P13588559578432600534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A116366 (n + 1)).toNat

end

end A065305.P13588559578432600534

noncomputable section

/-- A065305: Triangular array giving means of two odd primes: T(n,k) = (n-th prime + k-th prime)/2, n >= k >= 2.

Offset 2, canonical program `A065305.P13588559578432600534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A065305 (n : ℕ) : ℤ :=
  A065305.P13588559578432600534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A065305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065310.P13031903484145223612

`Δ[A018252(n+1)]`
-/

namespace A065310.P13031903484145223612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065310.P13031903484145223612

noncomputable section

/-- A065310: Number of occurrences of n-th prime in A065308, where A065308(j) = prime(j - pi(j)).

Offset 1, canonical program `A065310.P13031903484145223612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065310 (n : ℕ) : ℤ :=
  A065310.P13031903484145223612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065311.P12801822224862950029

`A065994(n+3)`
-/

namespace A065311.P12801822224862950029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065994 (n + 3)

end

end A065311.P12801822224862950029

noncomputable section

/-- A065311: Primes which occur exactly twice in the sequence of a(n) = prime(n) - prime(n - pi(n)) = A065308(n).

Offset 1, canonical program `A065311.P12801822224862950029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A065311 (n : ℕ) : ℤ :=
  A065311.P12801822224862950029.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A065311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065342.P17350315595011203306

`A037126(n+1)+A005145(n+1)`
-/

namespace A065342.P17350315595011203306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) + A005145 (n + 1)

end

end A065342.P17350315595011203306

noncomputable section

/-- A065342: Triangle of sum of two primes: prime(n)+prime(k) with n >= k >= 1.

Offset 1, canonical program `A065342.P17350315595011203306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065342 (n : ℕ) : ℤ :=
  A065342.P17350315595011203306.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065491.P13921789583420836592

`A059966(n+1)-A060280(n+1)`
-/

namespace A065491.P13921789583420836592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A060280 (n + 1)

end

end A065491.P13921789583420836592

noncomputable section

/-- A065491: Exponents in expansion of constant A065479 as a product zeta(n)^(-a(n)).

Offset 0, canonical program `A065491.P13921789583420836592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A065491 (n : ℕ) : ℤ :=
  A065491.P13921789583420836592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A065491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065714.P2804291034299227177

`∑{digits}[A000079(n), A115346(A000045(#))%2]`
-/

namespace A065714.P2804291034299227177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (A115346 (A000045 x).toNat) 2).sum

end

end A065714.P2804291034299227177

noncomputable section

/-- A065714: Number of 3's in decimal expansion of 2^n.

Offset 0, canonical program `A065714.P2804291034299227177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065714 (n : ℕ) : ℤ :=
  A065714.P2804291034299227177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065796.P7106408873075919693

`A055017((n+1)²)`
-/

namespace A065796.P7106408873075919693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 ((n + 1) ^ 2)

end

end A065796.P7106408873075919693

noncomputable section

/-- A065796: Alternating sum of digits of n^2.

Offset 1, canonical program `A065796.P7106408873075919693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065796 (n : ℕ) : ℤ :=
  A065796.P7106408873075919693.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065796.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065943.P6936668345606970424

`lcm(A033999(n), A065931(A014132(n+1)))`
-/

namespace A065943.P6936668345606970424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A065931 (A014132 (n + 1)).toNat)

end

end A065943.P6936668345606970424

noncomputable section

/-- A065943: Triangle of coefficients of Bessel polynomials {y_n(x)}''.

Offset 2, canonical program `A065943.P6936668345606970424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A065943 (n : ℕ) : ℤ :=
  (A065943.P6936668345606970424.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. -/
def A065943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066169.P16801772389171406171

`A103517(n)-A033558(n+1)`
-/

namespace A066169.P16801772389171406171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A033558 (n + 1)

end

end A066169.P16801772389171406171

noncomputable section

/-- A066169: Least k such that phi(k) >= n.

Offset 1, canonical program `A066169.P16801772389171406171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066169 (n : ℕ) : ℤ :=
  A066169.P16801772389171406171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066182.P18414975574033607487

`ceil(A198954(n)/2+n)`
-/

namespace A066182.P18414975574033607487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198954 n : ℚ) / 2 + (n : ℚ)⌉

end

end A066182.P18414975574033607487

noncomputable section

/-- A066182: Permutation of the integers with cycle form {1}, {3, 2}, {6, 5, 4}, {10, 9, 8, 7}, ...

Offset 1, canonical program `A066182.P18414975574033607487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066182 (n : ℕ) : ℤ :=
  A066182.P18414975574033607487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066190.P14350641075084876655

`2*A053813(n+1)`
-/

namespace A066190.P14350641075084876655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053813 (n + 1)

end

end A066190.P14350641075084876655

noncomputable section

/-- A066190: Numbers k such that the sum of the even aliquot parts of k divides k.

Offset 1, canonical program `A066190.P14350641075084876655`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066190 (n : ℕ) : ℤ :=
  A066190.P14350641075084876655.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053813, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066190.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066324.P4406262514538240262

`A061356(n+2)*A166350(n+1)`
-/

namespace A066324.P4406262514538240262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061356 (n + 2) * A166350 (n + 1)

end

end A066324.P4406262514538240262

noncomputable section

/-- A066324: Number of endofunctions on n labeled points constructed from k rooted trees.

Offset 1, canonical program `A066324.P4406262514538240262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A066324 (n : ℕ) : ℤ :=
  A066324.P4406262514538240262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A066324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066344.P7210307204516309196

`lt[n, n*A008952(n+1)]`
-/

namespace A066344.P7210307204516309196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066344.P7210307204516309196

noncomputable section

/-- A066344: Beatty sequence for log_5(10).

Offset 1, canonical program `A066344.P7210307204516309196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066344 (n : ℕ) : ℤ :=
  (A066344.P7210307204516309196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066513.P13292651458917012293

`eq[A093667(n+2), A093667(n+1)]+3`
-/

namespace A066513.P13292651458917012293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A066513.P13292651458917012293

noncomputable section

/-- A066513: Numbers n such that f(n) = f(n-1) - f(n-2) where f is the prime gap function given by f(m) = prime(m+1) - prime(m) and prime(m) denotes the m-th prime.

Offset 1, canonical program `A066513.P13292651458917012293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 590 terms. -/
def A066513 (n : ℕ) : ℤ :=
  (A066513.P13292651458917012293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 590 terms. -/
def A066513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066560.P2608043460305824476

`A061397(abs(1-n)+2)+n+1`
-/

namespace A066560.P2608043460305824476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (|1 - (n : ℤ)| + 2).toNat + (n + 1 : ℤ)

end

end A066560.P2608043460305824476

noncomputable section

/-- A066560: Smallest composite number divisible by n.

Offset 1, canonical program `A066560.P2608043460305824476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066560 (n : ℕ) : ℤ :=
  A066560.P2608043460305824476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066635.P3813954879404359062

`A053188(n+1)+Δ[A000196(n)²]`
-/

namespace A066635.P3813954879404359062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (n + 1) + (f1 (n + 1) - f1 n)

end

end A066635.P3813954879404359062

noncomputable section

/-- A066635: Distance from n to closest square different from n.

Offset 1, canonical program `A066635.P3813954879404359062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066635 (n : ℕ) : ℤ :=
  A066635.P3813954879404359062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066638.P1945052902267666698

`A066636(n+1)*(n+1)`
-/

namespace A066638.P1945052902267666698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1) * (n + 1 : ℤ)

end

end A066638.P1945052902267666698

noncomputable section

/-- A066638: Smallest power of a squarefree number that is a multiple of n.

Offset 1, canonical program `A066638.P1945052902267666698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066638 (n : ℕ) : ℤ :=
  A066638.P1945052902267666698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066636, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066638.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066652.P2742565410773785786

`p?[A050377(n+1)+2*n]`
-/

namespace A066652.P2742565410773785786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066652.P2742565410773785786

noncomputable section

/-- A066652: Primes of the form 2*s - 1, where s is a squarefree number (A005117).

Offset 1, canonical program `A066652.P2742565410773785786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066652 (n : ℕ) : ℤ :=
  A066652.P2742565410773785786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066686.P6513295060811700972

`(col(n)+1)*10^A055642(row(n)-col(n)+1)+row(n)-col(n)+1`
-/

namespace A066686.P6513295060811700972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℚ) * (10 : ℚ) ^ (A055642 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)

end

end A066686.P6513295060811700972

noncomputable section

/-- A066686: Array T(i,j) read by antidiagonals, where T(i,j) is the concatenation of i and j (1<=i, 1<=j).

Offset 1, canonical program `A066686.P6513295060811700972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066686 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066686.P6513295060811700972.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066744.P13027750496536240928

`or(4*a(n-1), Δ[A003623(n+1)])` with `a(0)=1`
-/

namespace A066744.P13027750496536240928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (4 * a (n - 1)) (f1 (n + 1) - f1 n)

end

end A066744.P13027750496536240928

noncomputable section

/-- A066744: a(n) = either 4a(n-1)+1 or 4a(n-1)+3 depending on corresponding term of A005614, +3 for 0, +1 for 1.

Offset 1, canonical program `A066744.P13027750496536240928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A066744 (n : ℕ) : ℤ :=
  A066744.P13027750496536240928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A066744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066777.P8976218830756872695

`A005230(n+2)-A005230(n+1)`
-/

namespace A066777.P8976218830756872695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 2) - A005230 (n + 1)

end

end A066777.P8976218830756872695

noncomputable section

/-- A066777: First differences of Stern's sequence A005230.

Offset 0, canonical program `A066777.P8976218830756872695`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066777 (n : ℕ) : ℤ :=
  A066777.P8976218830756872695.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005230, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066822.P225537740992169790

`record[A005773(n)-A002026(n)]`
-/

namespace A066822.P225537740992169790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n - A002026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066822.P225537740992169790

noncomputable section

/-- A066822: The fourth column of A038622, triangular array that counts rooted polyominoes.

Offset 0, canonical program `A066822.P225537740992169790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A066822 (n : ℕ) : ℤ :=
  A066822.P225537740992169790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A066822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066846.P13614351158377627118

`A033918(n+1)+A000312(A002024(n+1))`
-/

namespace A066846.P13614351158377627118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) + A000312 (A002024 (n + 1)).toNat

end

end A066846.P13614351158377627118

noncomputable section

/-- A066846: Numbers of the form a^a + b^b, a >= b > 0.

Offset 0, canonical program `A066846.P13614351158377627118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A066846 (n : ℕ) : ℤ :=
  A066846.P13614351158377627118.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1596 terms. -/
def A066846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066911.P6571933624612694988

`∑[∑{p}[n, #]-A105221(n+1)]`
-/

namespace A066911.P6571933624612694988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - A105221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066911.P6571933624612694988

noncomputable section

/-- A066911: Sum of primes < n that do not divide n.

Offset 1, canonical program `A066911.P6571933624612694988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066911 (n : ℕ) : ℤ :=
  A066911.P6571933624612694988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066927.P9705809913949217984

`floor(sqrt(A130290(n+1)))+1`
-/

namespace A066927.P9705809913949217984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A130290 (n + 1)) + 1

end

end A066927.P9705809913949217984

noncomputable section

/-- A066927: Least k such that between p and 2p, for all primes > 3, there is always a number that is twice a square, i.e.; a k such that p < 2k^2 < 2p.

Offset 1, canonical program `A066927.P9705809913949217984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066927 (n : ℕ) : ℤ :=
  A066927.P9705809913949217984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066940.P14356666684523876078

`eq[2, A063086(n+1)]+1`
-/

namespace A066940.P14356666684523876078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066940.P14356666684523876078

noncomputable section

/-- A066940: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 2.

Offset 1, canonical program `A066940.P14356666684523876078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A066940 (n : ℕ) : ℤ :=
  (A066940.P14356666684523876078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A066940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066941.P4211167729421485919

`eq[4, A063086(n+1)]+1`
-/

namespace A066941.P4211167729421485919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066941.P4211167729421485919

noncomputable section

/-- A066941: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 4.

Offset 1, canonical program `A066941.P4211167729421485919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1417 terms. -/
def A066941 (n : ℕ) : ℤ :=
  (A066941.P4211167729421485919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1417 terms. -/
def A066941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066942.P934297260943197593

`eq[6, A063086(n+6)]+6`
-/

namespace A066942.P934297260943197593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 6

end

end A066942.P934297260943197593

noncomputable section

/-- A066942: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 6.

Offset 1, canonical program `A066942.P934297260943197593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1599 terms. -/
def A066942 (n : ℕ) : ℤ :=
  (A066942.P934297260943197593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1599 terms. -/
def A066942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066943.P8029319133329898766

`eq[8, A063086(n+1)]+1`
-/

namespace A066943.P8029319133329898766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066943.P8029319133329898766

noncomputable section

/-- A066943: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 8.

Offset 1, canonical program `A066943.P8029319133329898766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A066943 (n : ℕ) : ℤ :=
  (A066943.P8029319133329898766.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. -/
def A066943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066944.P2385431604871524094

`eq[10, A063086(n+1)]+1`
-/

namespace A066944.P2385431604871524094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066944.P2385431604871524094

noncomputable section

/-- A066944: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 10.

Offset 1, canonical program `A066944.P2385431604871524094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A066944 (n : ℕ) : ℤ :=
  (A066944.P2385431604871524094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A066944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067047.P11301032730929694730

`gcd(A154286(n), A291288(n))`
-/

namespace A067047.P11301032730929694730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154286 n) (A291288 n)

end

end A067047.P11301032730929694730

noncomputable section

/-- A067047: a(n) = lcm(n, n+1, n+2, n+3)/12.

Offset 1, canonical program `A067047.P11301032730929694730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067047 (n : ℕ) : ℤ :=
  (A067047.P11301032730929694730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067264.P3036750254141973823

`eq[A001222(n+1), A001223(n+1)]+1`
-/

namespace A067264.P3036750254141973823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067264.P3036750254141973823

noncomputable section

/-- A067264: Numbers n such that prime(n+1)-prime(n)=bigomega(n).

Offset 1, canonical program `A067264.P3036750254141973823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. -/
def A067264 (n : ℕ) : ℤ :=
  (A067264.P3036750254141973823.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. -/
def A067264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067268.P9303226199233799514

`eq[A001221(n+1), A128428(n+1)]+1`
-/

namespace A067268.P9303226199233799514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067268.P9303226199233799514

noncomputable section

/-- A067268: Numbers k such that k and k^2+1 have the same number of distinct prime factors.

Offset 1, canonical program `A067268.P9303226199233799514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A067268 (n : ℕ) : ℤ :=
  (A067268.P9303226199233799514.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A067268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067289.P994081153811343972

`A020725(eq[A032741(n+1)+1, A038605(n+1)])`
-/

namespace A067289.P994081153811343972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A067289.P994081153811343972

noncomputable section

/-- A067289: Numbers k such that the number of divisors of k is floor(prime(k)/k).

Offset 1, canonical program `A067289.P994081153811343972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A067289 (n : ℕ) : ℤ :=
  A067289.P994081153811343972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A067289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067324.P1061078649515513046

`∑[A002057(n)+A000108(n)]`
-/

namespace A067324.P1061078649515513046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067324.P1061078649515513046

noncomputable section

/-- A067324: Third column of triangle A067323.

Offset 0, canonical program `A067324.P1061078649515513046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067324 (n : ℕ) : ℤ :=
  A067324.P1061078649515513046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067462.P13589642650643839564

`(A049782(n+1)+n)%(n+1)`
-/

namespace A067462.P13589642650643839564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049782 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A067462.P13589642650643839564

noncomputable section

/-- A067462: a(n) = (1! + 2! + ... + (n-1)!) mod n.

Offset 1, canonical program `A067462.P13589642650643839564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067462 (n : ℕ) : ℤ :=
  A067462.P13589642650643839564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067469.P1772719252959586475

`eq[2, A008952(n)]`
-/

namespace A067469.P1772719252959586475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067469.P1772719252959586475

noncomputable section

/-- A067469: Numbers k such that 2 is the first digit of 2^k.

Offset 1, canonical program `A067469.P1772719252959586475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067469 (n : ℕ) : ℤ :=
  (A067469.P1772719252959586475.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A067469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067574.P3266997638448240978

`(row(n)-col(n)+1)*10^A055642(col(n)+1)+col(n)+1`
-/

namespace A067574.P3266997638448240978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ) * (10 : ℚ) ^ (A055642 (SequenceMachineLib.triCol n + 1) : ℤ) + (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A067574.P3266997638448240978

noncomputable section

/-- A067574: Array T(i,j) read by ascending antidiagonals, where T(i,j) is the concatenation of i and j (1<=i, 1<=j).

Offset 1, canonical program `A067574.P3266997638448240978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067574 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067574.P3266997638448240978.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067672.P58353765302069128

`A065554(eq[1, A065554(n+2)-A065554(n+1)]+1)`
-/

namespace A067672.P58353765302069128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (n + 2) - A065554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A067672.P58353765302069128

noncomputable section

/-- A067672: Numbers k such that floor((3/2)^(k+2))/floor((3/2)^k) = (3/2)^2.

Offset 1, canonical program `A067672.P58353765302069128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A067672 (n : ℕ) : ℤ :=
  A067672.P58353765302069128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3305 terms. -/
def A067672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067712.P5394162300607780817

`lt[A212445(n+1), A064800(n+1)]+1`
-/

namespace A067712.P5394162300607780817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A067712.P5394162300607780817

noncomputable section

/-- A067712: Numbers k such that sum of exponents in prime factorization of k is > log(k).

Offset 1, canonical program `A067712.P5394162300607780817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A067712 (n : ℕ) : ℤ :=
  (A067712.P5394162300607780817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A067712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067731.P9905737685120558648

`abs(A003056(n)-A060510(n))`
-/

namespace A067731.P9905737685120558648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 n - A060510 n|

end

end A067731.P9905737685120558648

noncomputable section

/-- A067731: Maximum number of distinct parts in a self-conjugate partition of n, or 0 if n=2.

Offset 0, canonical program `A067731.P9905737685120558648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067731 (n : ℕ) : ℤ :=
  A067731.P9905737685120558648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067790.P737613375994059207

`eq[A007652(A028310(n)), A010879(n)]`
-/

namespace A067790.P737613375994059207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067790.P737613375994059207

noncomputable section

/-- A067790: Numbers n such that n and prime(n) end with the same digit.

Offset 1, canonical program `A067790.P737613375994059207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A067790 (n : ℕ) : ℤ :=
  (A067790.P737613375994059207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. -/
def A067790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067807.P1106689296877050053

`lt[A195735(n+1), 0]+1`
-/

namespace A067807.P1106689296877050053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195735 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A067807.P1106689296877050053

noncomputable section

/-- A067807: Numbers k such that sigma(k)^2 > 2*sigma(k^2).

Offset 1, canonical program `A067807.P1106689296877050053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A067807 (n : ℕ) : ℤ :=
  (A067807.P1106689296877050053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1265 terms. -/
def A067807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067833.P2986960847933786226

`p?[A018252(n+6)+4]`
-/

namespace A067833.P2986960847933786226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 6) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067833.P2986960847933786226

noncomputable section

/-- A067833: Primes p such that sigma(p-4) > p.

Offset 1, canonical program `A067833.P2986960847933786226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A067833 (n : ℕ) : ℤ :=
  A067833.P2986960847933786226.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1914 terms. -/
def A067833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067856.P11218736261645060229

`∑{d}[n+1, A007427(#)*A038712((n+1)/#)]`
-/

namespace A067856.P11218736261645060229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P11218736261645060229

noncomputable section

/-- A067856: Sum_{n >= 1} a(n)/n^s = 1/(Sum_{n >= 1} (-1)^(n + 1)/n^s).

Offset 1, canonical program `A067856.P11218736261645060229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067856 (n : ℕ) : ℤ :=
  A067856.P11218736261645060229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067859.P15803946867159928236

`sqrt(A061886(n))`
-/

namespace A067859.P15803946867159928236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061886 n : ℝ)

end

end A067859.P15803946867159928236

noncomputable section

/-- A067859: a(1) = 1; a(n+1) = floor(sqrt(Sum_{k=1..n} a(k)^2)).

Offset 1, canonical program `A067859.P15803946867159928236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A067859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067859.P15803946867159928236.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A067859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067869.P4129813629611928479

`A067867(5*(2*n+1))`
-/

namespace A067869.P4129813629611928479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067867 (5 * (2 * n + 1))

end

end A067869.P4129813629611928479

noncomputable section

/-- A067869: Numbers n such that n and 2^n end with the same 5 digits.

Offset 1, canonical program `A067869.P4129813629611928479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067869 (n : ℕ) : ℤ :=
  A067869.P4129813629611928479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067977.P5847705129826826634

`A067431(n)+A067430(n)`
-/

namespace A067977.P5847705129826826634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067431 n + A067430 n

end

end A067977.P5847705129826826634

noncomputable section

/-- A067977: Convolution of Fibonacci F(n+1), n>=0, with F(n+9), n>=0.

Offset 0, canonical program `A067977.P5847705129826826634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A067977 (n : ℕ) : ℤ :=
  A067977.P5847705129826826634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. -/
def A067977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067989.P3676896507050172247

`(n/2+1)*A004799(n+1)`
-/

namespace A067989.P3676896507050172247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A004799 (n + 1) : ℚ)

end

end A067989.P3676896507050172247

noncomputable section

/-- A067989: Row sums of triangle A067979; also of triangle A067990.

Offset 0, canonical program `A067989.P3676896507050172247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A067989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067989.P3676896507050172247.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A067989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068033.P10495819639348123950

`ceil((abs(2-A068012(n))+1)/2)`
-/

namespace A068033.P10495819639348123950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|2 - A068012 n| + 1 : ℚ) / 2⌉

end

end A068033.P10495819639348123950

noncomputable section

/-- A068033: Number of subsets of {1,2,3,...,n} that sum to 0 mod 12.

Offset 0, canonical program `A068033.P10495819639348123950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A068033 (n : ℕ) : ℤ :=
  A068033.P10495819639348123950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A068033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068555.P14892946262437006528

`A067804(n)/A007318(n)`
-/

namespace A068555.P14892946262437006528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / (A007318 n : ℚ)

end

end A068555.P14892946262437006528

noncomputable section

/-- A068555: Triangle read by rows in which row n contains (2i)!*(2j)!/(i!*j!*(i+j)!) for i + j = n, i = 0..n.

Offset 0, canonical program `A068555.P14892946262437006528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068555 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068555.P14892946262437006528.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068937.P5265066105242018592

`comp[A068935(n+1)-1]+1`
-/

namespace A068937.P5265066105242018592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068935 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A068937.P5265066105242018592

noncomputable section

/-- A068937: Numbers having the sum of distinct prime factors not less than the sum of exponents in prime factorization, A008472(n)>=A001222(n).

Offset 1, canonical program `A068937.P5265066105242018592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068937 (n : ℕ) : ℤ :=
  (A068937.P5265066105242018592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068984.P5244751518024861276

`∑{d}[n+1, A034718(#)*A048250((n+1)/#)]`
-/

namespace A068984.P5244751518024861276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A068984.P5244751518024861276

noncomputable section

/-- A068984: a(n) = Sum_{d|n} d*tau(d)^2.

Offset 1, canonical program `A068984.P5244751518024861276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068984 (n : ℕ) : ℤ :=
  A068984.P5244751518024861276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069091.P1979038829960387113

`∑{d}[n+1, A007427(#)*A013954((n+1)/#)]`
-/

namespace A069091.P1979038829960387113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P1979038829960387113

noncomputable section

/-- A069091: Jordan function J_6(n).

Offset 1, canonical program `A069091.P1979038829960387113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069091 (n : ℕ) : ℤ :=
  A069091.P1979038829960387113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069092.P6462397685710627288

`∑{d}[n+1, A007427(#)*A013955((n+1)/#)]`
-/

namespace A069092.P6462397685710627288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P6462397685710627288

noncomputable section

/-- A069092: Jordan function J_7(n).

Offset 1, canonical program `A069092.P6462397685710627288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069092 (n : ℕ) : ℤ :=
  A069092.P6462397685710627288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069093.P9664081380654551987

`∑{d}[n+1, A007427(#)*A013956((n+1)/#)]`
-/

namespace A069093.P9664081380654551987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013956 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069093.P9664081380654551987

noncomputable section

/-- A069093: Jordan function J_8(n).

Offset 1, canonical program `A069093.P9664081380654551987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069093 (n : ℕ) : ℤ :=
  A069093.P9664081380654551987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069094.P5596882665967745649

`∑{d}[n+1, A007427(#)*A013957((n+1)/#)]`
-/

namespace A069094.P5596882665967745649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013957 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069094.P5596882665967745649

noncomputable section

/-- A069094: Jordan function J_9(n).

Offset 1, canonical program `A069094.P5596882665967745649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069094 (n : ℕ) : ℤ :=
  A069094.P5596882665967745649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069095.P10263333998620390818

`∑{d}[n+1, A007427(#)*A013958((n+1)/#)]`
-/

namespace A069095.P10263333998620390818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069095.P10263333998620390818

noncomputable section

/-- A069095: Jordan function J_10(n).

Offset 1, canonical program `A069095.P10263333998620390818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069095 (n : ℕ) : ℤ :=
  A069095.P10263333998620390818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069122.P5368121479878641074

`lt[A007913(n+2), A007913(n+1)]+1`
-/

namespace A069122.P5368121479878641074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069122.P5368121479878641074

noncomputable section

/-- A069122: Numbers k such that the squarefree part of k is greater than the squarefree part of (k+1).

Offset 1, canonical program `A069122.P5368121479878641074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069122 (n : ℕ) : ℤ :=
  (A069122.P5368121479878641074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069180.P16586707681015165107

`eq[1, A247193(n+1)]+1`
-/

namespace A069180.P16586707681015165107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069180.P16586707681015165107

noncomputable section

/-- A069180: F(n) and n! are relatively prime where F(n) are the Fibonacci numbers.

Offset 1, canonical program `A069180.P16586707681015165107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A069180 (n : ℕ) : ℤ :=
  (A069180.P16586707681015165107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A069180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069209.P1495088304037464611

`lt[1, A126864(n+1)]+1`
-/

namespace A069209.P1495088304037464611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069209.P1495088304037464611

noncomputable section

/-- A069209: Orders of non-Abelian Z-groups.

Offset 1, canonical program `A069209.P1495088304037464611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069209 (n : ℕ) : ℤ :=
  (A069209.P1495088304037464611.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069537.P88310199312240341

`A052216(A080036(n))`
-/

namespace A069537.P88310199312240341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (A080036 n).toNat

end

end A069537.P88310199312240341

noncomputable section

/-- A069537: Multiples of 2 whose digit sum is 2.

Offset 1, canonical program `A069537.P88310199312240341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4951 terms. -/
def A069537 (n : ℕ) : ℤ :=
  A069537.P88310199312240341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4951 terms. -/
def A069537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069550.P15066678685378130192

`eq[A001222(n+1), A007913(n+1)]+1`
-/

namespace A069550.P15066678685378130192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069550.P15066678685378130192

noncomputable section

/-- A069550: Squarefree part of n equals bigomega(n).

Offset 1, canonical program `A069550.P15066678685378130192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A069550 (n : ℕ) : ℤ :=
  (A069550.P15066678685378130192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A069550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069577.P2323388338216370360

`A000040(∑[char[A040976(2*n+1)]])`
-/

namespace A069577.P2323388338216370360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069577.P2323388338216370360

noncomputable section

/-- A069577: Smallest prime p such that pi(n) <= pi(p)*2, where pi(n) is the number of primes <= n, A000720.

Offset 2, canonical program `A069577.P2323388338216370360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069577 (n : ℕ) : ℤ :=
  A069577.P2323388338216370360.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069658.P1396198842885057433

`(A057427(n)+A018072(2*n))²`
-/

namespace A069658.P1396198842885057433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + A018072 (2 * n)) ^ 2

end

end A069658.P1396198842885057433

noncomputable section

/-- A069658: a(1) = 1; a(n) = smallest nontrivial n-digit perfect power.

Offset 1, canonical program `A069658.P1396198842885057433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069658 (n : ℕ) : ℤ :=
  A069658.P1396198842885057433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069721.P15657058802008382559

`floor(2^(n-1))*A276666(n)`
-/

namespace A069721.P15657058802008382559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * A276666 n

end

end A069721.P15657058802008382559

noncomputable section

/-- A069721: Number of rooted unicursal planar maps with n edges and no vertices of valency 1 (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

Offset 1, canonical program `A069721.P15657058802008382559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A069721 (n : ℕ) : ℤ :=
  A069721.P15657058802008382559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A069721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069891.P9601038511984379204

`A007913(n)+a(n-1)` with `a(0)=0`
-/

namespace A069891.P9601038511984379204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007913 n + a (n - 1)

end

end A069891.P9601038511984379204

noncomputable section

/-- A069891: a(n) = Sum_{k=1..n} A007913(k), the squarefree part of k.

Offset 0, canonical program `A069891.P9601038511984379204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069891 (n : ℕ) : ℤ :=
  A069891.P9601038511984379204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069906.P3213861137805963780

`A026811(n)-∑[A026810(A142150(n))]`
-/

namespace A069906.P3213861137805963780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069906.P3213861137805963780

noncomputable section

/-- A069906: Number of pentagons that can be formed with perimeter n. In other words, number of partitions of n into five parts such that the sum of any four is more than the fifth.

Offset 0, canonical program `A069906.P3213861137805963780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069906 (n : ℕ) : ℤ :=
  A069906.P3213861137805963780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069933.P8410770447695468430

`∑{d}[n+1, A086671(#)*A271102((n+1)/#)]`
-/

namespace A069933.P8410770447695468430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086671 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069933.P8410770447695468430

noncomputable section

/-- A069933: Number of k, 1<=k<=n, such that core(k) divides n, where core(x) is the squarefree part of x, the smallest integer such that x*core(x) is a square.

Offset 1, canonical program `A069933.P8410770447695468430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069933 (n : ℕ) : ℤ :=
  A069933.P8410770447695468430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069972.P10372143076871340489

`∑{d}[n+1, A004524(A198954(#))]`
-/

namespace A069972.P10372143076871340489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004524 (A198954 d).toNat

end

end A069972.P10372143076871340489

noncomputable section

/-- A069972: a(n) = Sum_{d|2*n,d+1|2*n} d.

Offset 1, canonical program `A069972.P10372143076871340489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069972 (n : ℕ) : ℤ :=
  A069972.P10372143076871340489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070139.P10794529069713137926

`A004526(A057918(Δ[A004526(n)²]+1))`
-/

namespace A070139.P10794529069713137926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057918 (f1 (n + 1) - f1 n + 1).toNat).toNat

end

end A070139.P10794529069713137926

noncomputable section

/-- A070139: Number of isosceles integer triangles with perimeter n having integral area.

Offset 1, canonical program `A070139.P10794529069713137926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070139 (n : ℕ) : ℤ :=
  A070139.P10794529069713137926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A070139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070320.P6872280522638046061

`A007917(or(1, n)+1)-1`
-/

namespace A070320.P6872280522638046061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Nat.lor 1 n + 1) - 1

end

end A070320.P6872280522638046061

noncomputable section

/-- A070320: a(n) = Max( phi(k) : k=1..n ).

Offset 1, canonical program `A070320.P6872280522638046061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070320 (n : ℕ) : ℤ :=
  A070320.P6872280522638046061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070886.P8245477547153296858

`A034870(n)%2`
-/

namespace A070886.P8245477547153296858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034870 n) 2

end

end A070886.P8245477547153296858

noncomputable section

/-- A070886: Triangle read by rows giving successive states of cellular automaton generated by "Rule 90".

Offset 0, canonical program `A070886.P8245477547153296858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070886 (n : ℕ) : ℤ :=
  A070886.P8245477547153296858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071037.P9726721186916925675

`A071030(A052928(n*A071030(n+1)))`
-/

namespace A071037.P9726721186916925675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 (A052928 ((n : ℤ) * A071030 (n + 1)).toNat).toNat

end

end A071037.P9726721186916925675

noncomputable section

/-- A071037: Triangle read by rows giving successive states of cellular automaton generated by "Rule 158".

Offset 0, canonical program `A071037.P9726721186916925675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071037 (n : ℕ) : ℤ :=
  A071037.P9726721186916925675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071038.P13125423546124706682

`A057427(and(A071797(n+1), A080883(n)))`
-/

namespace A071038.P13125423546124706682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.land (A071797 (n + 1)) (A080883 n)).toNat

end

end A071038.P13125423546124706682

noncomputable section

/-- A071038: Triangle read by rows giving successive states of cellular automaton generated by "Rule 182".

Offset 0, canonical program `A071038.P13125423546124706682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071038 (n : ℕ) : ℤ :=
  A071038.P13125423546124706682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071089.P10721152534759414151

`∑[A000040(n+1)]%A006005(n+1)`
-/

namespace A071089.P10721152534759414151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A006005 (n + 1))

end

end A071089.P10721152534759414151

noncomputable section

/-- A071089: Remainder when sum of first n primes is divided by n-th prime.

Offset 1, canonical program `A071089.P10721152534759414151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071089 (n : ℕ) : ℤ :=
  A071089.P10721152534759414151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071318.P4179928839339890454

`A067259(eq[1, A067259(n+2)-A067259(n+1)]+1)`
-/

namespace A071318.P4179928839339890454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 2) - A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071318.P4179928839339890454

noncomputable section

/-- A071318: Lesser of 2 consecutive numbers which are cubefree and not squarefree, i.e., numbers k such that both k and k+1 are in A067259.

Offset 1, canonical program `A071318.P4179928839339890454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A071318 (n : ℕ) : ℤ :=
  A071318.P4179928839339890454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A071318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071357.P14620908527479147409

`(Δ[A071356(n)]-A071356(n))/2`
-/

namespace A071357.P14620908527479147409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071356 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A071356 n : ℚ) / 2

end

end A071357.P14620908527479147409

noncomputable section

/-- A071357: Expansion of (1 - 4*x - (1-2*x)*sqrt(1-4*x-4*x^2))/(8*x^3).

Offset 0, canonical program `A071357.P14620908527479147409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A071357 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071357.P14620908527479147409.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A071357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071532.P10723472939112800491

`∑[2*A072418(n+1)-1]`
-/

namespace A071532.P10723472939112800491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072418 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071532.P10723472939112800491

noncomputable section

/-- A071532: a(n) = (-1) * Sum_{k=1..n} (-1)^floor((3/2)^k).

Offset 1, canonical program `A071532.P10723472939112800491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071532 (n : ℕ) : ℤ :=
  A071532.P10723472939112800491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071557.P9922815785651542708

`eq[A000034(n), A128428(A000007(n)+n)]`
-/

namespace A071557.P9922815785651542708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128428 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071557.P9922815785651542708

noncomputable section

/-- A071557: Numbers k such that A065876(k) = k^2-k+1.

Offset 1, canonical program `A071557.P9922815785651542708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A071557 (n : ℕ) : ℤ :=
  (A071557.P9922815785651542708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A071557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071578.P14197670125788474709

`A060197(n+1)-2`
-/

namespace A071578.P14197670125788474709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060197 (n + 1) - 2

end

end A071578.P14197670125788474709

noncomputable section

/-- A071578: Number of iterations of Pi(n) needed to reach 1, where Pi(x) denotes the number of primes <= x.

Offset 1, canonical program `A071578.P14197670125788474709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071578 (n : ℕ) : ℤ :=
  A071578.P14197670125788474709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060197, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071727.P16205519223476338135

`A000245(floor(n-atan(n)))+A000108(n+1)`
-/

namespace A071727.P16205519223476338135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat + A000108 (n + 1)

end

end A071727.P16205519223476338135

noncomputable section

/-- A071727: Expansion of (1+x^3*C)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071727.P16205519223476338135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071727 (n : ℕ) : ℤ :=
  A071727.P16205519223476338135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071737.P12356561809484092700

`A002057(n)+A000588(n)`
-/

namespace A071737.P12356561809484092700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 n

end

end A071737.P12356561809484092700

noncomputable section

/-- A071737: Expansion of (1+x^3*C^3)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071737.P12356561809484092700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071737 (n : ℕ) : ℤ :=
  A071737.P12356561809484092700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071738.P7757935969038714407

`abs(Δ[A000245(abs(1-n))])`
-/

namespace A071738.P7757935969038714407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A071738.P7757935969038714407

noncomputable section

/-- A071738: Expansion of (1+x^3*C^4)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071738.P7757935969038714407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071738 (n : ℕ) : ℤ :=
  A071738.P7757935969038714407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071753.P30936712519136142

`A002057(n)+A000588(abs(1-n))`
-/

namespace A071753.P30936712519136142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 |1 - (n : ℤ)|.toNat

end

end A071753.P30936712519136142

noncomputable section

/-- A071753: Expansion of (1+x^4*C^3)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071753.P30936712519136142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071753 (n : ℕ) : ℤ :=
  A071753.P30936712519136142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071849.P6031364836765928747

`lt[A038605(n+1), A000120(n+1)]+1`
-/

namespace A071849.P6031364836765928747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A071849.P6031364836765928747

noncomputable section

/-- A071849: Numbers k such that A245788(k) > prime(k).

Offset 1, canonical program `A071849.P6031364836765928747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A071849 (n : ℕ) : ℤ :=
  (A071849.P6031364836765928747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A071849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071868.P4330058732517651371

`∑[A295405(n+1)]`
-/

namespace A071868.P4330058732517651371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P4330058732517651371

noncomputable section

/-- A071868: Number of integers k (1 <= k <= n) such that k^2+1 is prime.

Offset 1, canonical program `A071868.P4330058732517651371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071868 (n : ℕ) : ℤ :=
  A071868.P4330058732517651371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072004.P1142489555843543606

`∑[A066872(n+1)-1]%A000040(n+1)`
-/

namespace A072004.P1142489555843543606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A072004.P1142489555843543606

noncomputable section

/-- A072004: Remainder when sum of squares of first n primes is divided by n-th prime.

Offset 1, canonical program `A072004.P1142489555843543606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072004 (n : ℕ) : ℤ :=
  A072004.P1142489555843543606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072373.P2283036377366837827

`gcd(and(4, A001794(n)), A006235(n+1))`
-/

namespace A072373.P2283036377366837827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.land 4 (A001794 n)) (A006235 (n + 1))

end

end A072373.P2283036377366837827

noncomputable section

/-- A072373: Number of spanning trees of the n-prism graph Y_n (regarding case n = 2 as a simple graph).

Offset 1, canonical program `A072373.P2283036377366837827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A072373 (n : ℕ) : ℤ :=
  (A072373.P2283036377366837827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A072373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072505.P1528102251887923534

`(n+1)/A072504(n+1)`
-/

namespace A072505.P1528102251887923534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072504 (n + 1) : ℚ)

end

end A072505.P1528102251887923534

noncomputable section

/-- A072505: a(n) = n / (LCM of divisors of n which are <= sqrt(n)).

Offset 1, canonical program `A072505.P1528102251887923534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072505.P1528102251887923534.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072566.P2708539642026713051

`eq[n%10, A105853(round(sqrt(n²+1)))]`
-/

namespace A072566.P2708539642026713051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105853 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072566.P2708539642026713051

noncomputable section

/-- A072566: Numbers n such that n and sigma(n) end with the same digit in base 10.

Offset 1, canonical program `A072566.P2708539642026713051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A072566 (n : ℕ) : ℤ :=
  (A072566.P2708539642026713051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A072566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072669.P12110075394284509004

`p?[A001043(n+1)-1]`
-/

namespace A072669.P12110075394284509004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072669.P12110075394284509004

noncomputable section

/-- A072669: Primes of the form prime(x) + prime(x+1) - 1.

Offset 1, canonical program `A072669.P12110075394284509004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. -/
def A072669 (n : ℕ) : ℤ :=
  A072669.P12110075394284509004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. -/
def A072669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072710.P10047720630133660350

`A072708(n+1)-15`
-/

namespace A072710.P10047720630133660350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072708 (n + 1) - 15

end

end A072710.P10047720630133660350

noncomputable section

/-- A072710: Last digit of F(n) is 8 where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A072710.P10047720630133660350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072710 (n : ℕ) : ℤ :=
  A072710.P10047720630133660350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072747.P10312719963861894901

`∑[val(A005117(n+1), 2)]`
-/

namespace A072747.P10312719963861894901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005117 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072747.P10312719963861894901

noncomputable section

/-- A072747: Counting factor 2 in the first n squarefree numbers.

Offset 1, canonical program `A072747.P10312719963861894901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072747 (n : ℕ) : ℤ :=
  (A072747.P10312719963861894901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072750.P10876359717229383901

`∑[val(A005117(n+1), 7)]`
-/

namespace A072750.P10876359717229383901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005117 (n + 1)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072750.P10876359717229383901

noncomputable section

/-- A072750: Counting factor 7 in the first n squarefree numbers.

Offset 1, canonical program `A072750.P10876359717229383901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072750 (n : ℕ) : ℤ :=
  (A072750.P10876359717229383901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072774.P8652726476267271771

`eq[1, A066636(n+1)]+1`
-/

namespace A072774.P8652726476267271771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072774.P8652726476267271771

noncomputable section

/-- A072774: Powers of squarefree numbers.

Offset 1, canonical program `A072774.P8652726476267271771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072774 (n : ℕ) : ℤ :=
  (A072774.P8652726476267271771.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072795.P2013222351577719000

`n+A000108(A072643(n))`
-/

namespace A072795.P2013222351577719000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000108 (A072643 n).toNat

end

end A072795.P2013222351577719000

noncomputable section

/-- A072795: A014486-indices of the plane binary trees AND plane general trees whose left subtree is just a stick: \. thus corresponding to the parenthesizations whose first element (of the top-level list) is an empty parenthesization: ().

Offset 0, canonical program `A072795.P2013222351577719000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072795 (n : ℕ) : ℤ :=
  A072795.P2013222351577719000.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072806.P3541746247059658521

`A007091(A007528(n+1))`
-/

namespace A072806.P3541746247059658521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A007528 (n + 1)).toNat

end

end A072806.P3541746247059658521

noncomputable section

/-- A072806: Primes of the form 6k+5 written in base 5.

Offset 1, canonical program `A072806.P3541746247059658521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A007528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072806 (n : ℕ) : ℤ :=
  A072806.P3541746247059658521.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, A007528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072994.P17924656576761691658

`gcd(∏{p}[n+1, (n+1)/#], A003557((n+1)*∏{p}[n+1, #-1]))`
-/

namespace A072994.P17924656576761691658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) (A003557 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))).toNat)

end

end A072994.P17924656576761691658

noncomputable section

/-- A072994: Number of solutions to x^n==1 (mod n), 1<=x<=n.

Offset 1, canonical program `A072994.P17924656576761691658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A072994 (n : ℕ) : ℤ :=
  (A072994.P17924656576761691658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A072994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073094.P6042488046944227531

`A008458(A120880(n+1))%10`
-/

namespace A073094.P6042488046944227531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A120880 (n + 1)).toNat) 10

end

end A073094.P6042488046944227531

noncomputable section

/-- A073094: Final digit of C(2k,k) when not equal to zero.

Offset 1, canonical program `A073094.P6042488046944227531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073094 (n : ℕ) : ℤ :=
  A073094.P6042488046944227531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073122.P3306057294327154330

`A003188(2*(n+1)-1+A038189(n+1))`
-/

namespace A073122.P3306057294327154330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 ((2 * (n + 1) : ℤ) - 1 + A038189 (n + 1)).toNat

end

end A073122.P3306057294327154330

noncomputable section

/-- A073122: Minimal reversing binary representation of n. Converting sum of powers of 2 in binary representation of a(n) to alternating sum gives n. See A072339.

Offset 1, canonical program `A073122.P3306057294327154330`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073122 (n : ℕ) : ℤ :=
  A073122.P3306057294327154330.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038189, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073122.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073170.P2641425171227108068

`A006005(A028310(n))-A028310(n)`
-/

namespace A073170.P2641425171227108068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A028310 n).toNat - A028310 n

end

end A073170.P2641425171227108068

noncomputable section

/-- A073170: a(1) = a(2) = 0; for n>2, a(n) = prime(n-1)-n+1.

Offset 1, canonical program `A073170.P2641425171227108068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073170 (n : ℕ) : ℤ :=
  A073170.P2641425171227108068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073217.P2646747774313223643

`A055237(n)/2`
-/

namespace A073217.P2646747774313223643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055237 n : ℚ) / 2

end

end A073217.P2646747774313223643

noncomputable section

/-- A073217: The terms of A055237 (sums of two powers of 5) divided by 2.

Offset 1, canonical program `A073217.P2646747774313223643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073217.P2646747774313223643.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073258.P5210968974332604288

`eq[1, gcd(n+1, A018252(n+2))]+1`
-/

namespace A073258.P5210968974332604288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A018252 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A073258.P5210968974332604288

noncomputable section

/-- A073258: Numbers n such that gcd(c(n),n) = gcd(A002808(n),n) = A064814(n)=1 where c(n) is the n-th composite number.

Offset 1, canonical program `A073258.P5210968974332604288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9908 terms. -/
def A073258 (n : ℕ) : ℤ :=
  (A073258.P5210968974332604288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9908 terms. -/
def A073258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073373.P2538529934833961043

`A073370(A167614(n+2))`
-/

namespace A073373.P2538529934833961043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A167614 (n + 2)).toNat

end

end A073373.P2538529934833961043

noncomputable section

/-- A073373: Third convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

Offset 0, canonical program `A073373.P2538529934833961043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A073373 (n : ℕ) : ℤ :=
  A073373.P2538529934833961043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A073373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073380.P17236384958808292089

`A054456(A167614(n+2))`
-/

namespace A073380.P17236384958808292089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054456 (A167614 (n + 2)).toNat

end

end A073380.P17236384958808292089

noncomputable section

/-- A073380: Third convolution of A000129(n+1) (generalized (2,1)-Fibonacci, called Pell numbers), n>=0, with itself.

Offset 0, canonical program `A073380.P17236384958808292089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A073380 (n : ℕ) : ℤ :=
  A073380.P17236384958808292089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A073380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073389.P15188036603537810710

`A073387(A167614(n+1)-1)`
-/

namespace A073389.P15188036603537810710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 (A167614 (n + 1) - 1).toNat

end

end A073389.P15188036603537810710

noncomputable section

/-- A073389: Third column of the convolution triangle A073387(n+2, 2), for n >= 0.

Offset 0, canonical program `A073389.P15188036603537810710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A073389 (n : ℕ) : ℤ :=
  A073389.P15188036603537810710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A073389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073390.P6557461652562236747

`A073387(A167614(n+2))`
-/

namespace A073390.P6557461652562236747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073387 (A167614 (n + 2)).toNat

end

end A073390.P6557461652562236747

noncomputable section

/-- A073390: Fourth column of the convolution triangle A073387(n+3, 3), for n >= 0.

Offset 0, canonical program `A073390.P6557461652562236747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A073390 (n : ℕ) : ℤ :=
  A073390.P6557461652562236747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A073390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073480.P1134209135426630822

`A024167(A004736(n+1))*A074909(n)`
-/

namespace A073480.P1134209135426630822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024167 (A004736 (n + 1)).toNat * A074909 n

end

end A073480.P1134209135426630822

noncomputable section

/-- A073480: Triangle T(n,k) read by rows, where e.g.f. for T(n,k) is exp(x*y)*log(1+x)/(1-x).

Offset 1, canonical program `A073480.P1134209135426630822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A073480 (n : ℕ) : ℤ :=
  A073480.P1134209135426630822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A073480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073634.P3279946231504670858

`eq[0, A072418(n+2)]+2`
-/

namespace A073634.P3279946231504670858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073634.P3279946231504670858

noncomputable section

/-- A073634: Numbers k such that floor((3/2)^k) = A002379(k) is even.

Offset 1, canonical program `A073634.P3279946231504670858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A073634 (n : ℕ) : ℤ :=
  (A073634.P3279946231504670858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A073634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073721.P5082412934630916663

`eq[0, A072548(n+2)]+2`
-/

namespace A073721.P5082412934630916663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072548 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073721.P5082412934630916663

noncomputable section

/-- A073721: Numbers k such that PrimePi(k) divides sigma(k).

Offset 1, canonical program `A073721.P5082412934630916663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A073721 (n : ℕ) : ℤ :=
  (A073721.P5082412934630916663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A073721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073798.P9052725351204481887

`record[(n+1)*(2-A000120(A000720(n+1)))]`
-/

namespace A073798.P9052725351204481887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A000120 (A000720 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073798.P9052725351204481887

noncomputable section

/-- A073798: pi(n) is a power of 2, where pi(n) = A000720(n) is the number of primes <= n.

Offset 1, canonical program `A073798.P9052725351204481887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A073798 (n : ℕ) : ℤ :=
  A073798.P9052725351204481887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A073798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073846.P6597412170005078554

`A018252(ceil((n+1)/2))*A000035(n+1)+A000040(ceil((n+1)/2))*A059841(n+1)`
-/

namespace A073846.P6597412170005078554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ⌈(n + 1 : ℚ) / 2⌉.toNat * A000035 (n + 1) + A000040 ⌈(n + 1 : ℚ) / 2⌉.toNat * A059841 (n + 1)

end

end A073846.P6597412170005078554

noncomputable section

/-- A073846: a(1) = 1; thereafter, every even-indexed term is prime and every odd-indexed term is composite.

Offset 1, canonical program `A073846.P6597412170005078554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073846 (n : ℕ) : ℤ :=
  A073846.P6597412170005078554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073997.P4523075487907254813

`A073996(n+1)+A009116(n)²`
-/

namespace A073997.P4523075487907254813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A009116 n ^ 2

end

end A073997.P4523075487907254813

noncomputable section

/-- A073997: Number of strings of length n over GF(4) with trace 1 and subtrace 0.

Offset 1, canonical program `A073997.P4523075487907254813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073997 (n : ℕ) : ℤ :=
  A073997.P4523075487907254813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073998.P13650005313177628228

`A073996(n+1)+A009545(n)²`
-/

namespace A073998.P13650005313177628228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A009545 n ^ 2

end

end A073998.P13650005313177628228

noncomputable section

/-- A073998: Number of strings of length n over GF(4) with trace 1 and subtrace 1.

Offset 1, canonical program `A073998.P13650005313177628228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073998 (n : ℕ) : ℤ :=
  A073998.P13650005313177628228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074039.P2969745360173369401

`A071538(n+1)*A353463(n+1)`
-/

namespace A074039.P2969745360173369401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 1) * A353463 (n + 1)

end

end A074039.P2969745360173369401

noncomputable section

/-- A074039: If (n, n+2) is the k-th twin prime pair then k else 0.

Offset 1, canonical program `A074039.P2969745360173369401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074039 (n : ℕ) : ℤ :=
  A074039.P2969745360173369401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074133.P15112670593807680285

`A074132(n+1)/(n+1)`
-/

namespace A074133.P15112670593807680285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074132 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A074133.P15112670593807680285

noncomputable section

/-- A074133: Average of the n-th group, if positive integers are rearranged in groups of k=1,2,3,... numbers whose sum is a multiple of k.

Offset 1, canonical program `A074133.P15112670593807680285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074133.P15112670593807680285.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074272.P2503447662547922239

`∑[(-1)^n*A000002(n+1)]`
-/

namespace A074272.P2503447662547922239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074272.P2503447662547922239

noncomputable section

/-- A074272: Partial alternating sums of the Kolakoski sequence A000002.

Offset 1, canonical program `A074272.P2503447662547922239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074272 (n : ℕ) : ℤ :=
  A074272.P2503447662547922239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074284.P11772456317702970427

`A074285(n+1)-∑[n+1]`
-/

namespace A074284.P11772456317702970427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074285 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074284.P11772456317702970427

noncomputable section

/-- A074284: Sum of the aliquot divisors of n-th triangular number.

Offset 1, canonical program `A074284.P11772456317702970427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074284 (n : ℕ) : ℤ :=
  A074284.P11772456317702970427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074291.P12773255083296410343

`eq[A000002(n+1), A014681(a(n-1))]+1` with `a(0)=1`
-/

namespace A074291.P12773255083296410343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A014681 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074291.P12773255083296410343

noncomputable section

/-- A074291: Positions in the Kolakoski sequence where A000002(n) is 1 if n is odd, or 2 if n is even.

Offset 1, canonical program `A074291.P12773255083296410343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5249 terms. -/
def A074291 (n : ℕ) : ℤ :=
  (A074291.P12773255083296410343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5249 terms. -/
def A074291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074691.P2345954875371412393

`A000045(eq[-1, A174340(n+2)]+2)`
-/

namespace A074691.P2345954875371412393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A074691.P2345954875371412393

noncomputable section

/-- A074691: Squarefree Fibonacci numbers with odd number of prime factors.

Offset 1, canonical program `A074691.P2345954875371412393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A074691 (n : ℕ) : ℤ :=
  A074691.P2345954875371412393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A074691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074739.P8677531906933437778

`lt[A062419(n+1), A062509(n+1)]+1`
-/

namespace A074739.P8677531906933437778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074739.P8677531906933437778

noncomputable section

/-- A074739: Numbers n such that omega(n) > log(log(n)).

Offset 1, canonical program `A074739.P8677531906933437778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. -/
def A074739 (n : ℕ) : ℤ :=
  (A074739.P8677531906933437778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. -/
def A074739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074745.P3958489061865529795

`∑[A006094(n+1)]`
-/

namespace A074745.P3958489061865529795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074745.P3958489061865529795

noncomputable section

/-- A074745: a(n) = sum_{k=1..n} prime(k)*prime(k+1).

Offset 1, canonical program `A074745.P3958489061865529795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074745 (n : ℕ) : ℤ :=
  A074745.P3958489061865529795.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074938.P9120139472351872222

`or(1, A081601(n+1))`
-/

namespace A074938.P9120139472351872222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081601 (n + 1))

end

end A074938.P9120139472351872222

noncomputable section

/-- A074938: Odd numbers such that base 3 representation contains no 2.

Offset 0, canonical program `A074938.P9120139472351872222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074938 (n : ℕ) : ℤ :=
  A074938.P9120139472351872222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075061.P6005277005558474816

`A003418(∑[A010054(n)])+A002260(n+1)`
-/

namespace A075061.P6005277005558474816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A002260 (n + 1)

end

end A075061.P6005277005558474816

noncomputable section

/-- A075061: Triangle in A075059 read by rows.

Offset 1, canonical program `A075061.P6005277005558474816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075061 (n : ℕ) : ℤ :=
  A075061.P6005277005558474816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075149.P18175513624776809686

`floor(A051656(n)/A000032(n))`
-/

namespace A075149.P18175513624776809686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051656 n : ℚ) / (A000032 n : ℚ)⌋

end

end A075149.P18175513624776809686

noncomputable section

/-- A075149: Sum_{i=0..2*A053645(n)} (C(2*A053645(n),i) mod 2)*A000045(n-i) [where C(r,c) is the binomial coefficient (A007318) and A000045(n) is the n-th Fibonacci number].

Offset 0, canonical program `A075149.P18175513624776809686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A075149 (n : ℕ) : ℤ :=
  A075149.P18175513624776809686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A075149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075425.P11313490393567044434

`A110157(n+1)-1`
-/

namespace A075425.P11313490393567044434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110157 (n + 1) - 1

end

end A075425.P11313490393567044434

noncomputable section

/-- A075425: Number of steps to reach 1 starting with n and iterating the map n ->rad(n)-1, where rad(n) is the squarefree kernel of n (A007947).

Offset 1, canonical program `A075425.P11313490393567044434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075425 (n : ℕ) : ℤ :=
  A075425.P11313490393567044434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075438.P6472558506111138179

`A034867(n)%2`
-/

namespace A075438.P6472558506111138179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034867 n) 2

end

end A075438.P6472558506111138179

noncomputable section

/-- A075438: Triangle read by rows giving successive iterations of the Rule 60 elementary cellular automaton starting with a single ON cell where row n is of length 2n+1.

Offset 0, canonical program `A075438.P6472558506111138179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075438 (n : ℕ) : ℤ :=
  A075438.P6472558506111138179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075465.P1079195501132241979

`round((∑[A014686(n+1)]-1)/(n+1))`
-/

namespace A075465.P1079195501132241979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / (n + 1 : ℚ))

end

end A075465.P1079195501132241979

noncomputable section

/-- A075465: Rounded average of first n primes.

Offset 1, canonical program `A075465.P1079195501132241979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075465 (n : ℕ) : ℤ :=
  A075465.P1079195501132241979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075471.P15021078902774570681

`round(sqrt(A024450(n+1)/(n+1)))`
-/

namespace A075471.P15021078902774570681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A024450 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A075471.P15021078902774570681

noncomputable section

/-- A075471: Rounded root-mean-square (RMS) value of first n primes.

Offset 1, canonical program `A075471.P15021078902774570681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075471 (n : ℕ) : ℤ :=
  A075471.P15021078902774570681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075521.P14244373856164998827

`floor(p?[A075520(n+1)]/4)`
-/

namespace A075521.P14244373856164998827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A075521.P14244373856164998827

noncomputable section

/-- A075521: Primes p such that 4*p + (p mod 4) is also a prime.

Offset 1, canonical program `A075521.P14244373856164998827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A075521 (n : ℕ) : ℤ :=
  A075521.P14244373856164998827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1667 terms. -/
def A075521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075524.P11710820957233170645

`record[A074591(A075520(n+1))]`
-/

namespace A075524.P11710820957233170645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A075520 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075524.P11710820957233170645

noncomputable section

/-- A075524: Nonprimes of form 4*p + (p mod 4), p prime.

Offset 1, canonical program `A075524.P11710820957233170645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. -/
def A075524 (n : ℕ) : ℤ :=
  A075524.P11710820957233170645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. -/
def A075524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075544.P11404657353925885647

`p?[∑[A038194(n+1)]]`
-/

namespace A075544.P11404657353925885647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075544.P11404657353925885647

noncomputable section

/-- A075544: Primes which are the sum of the digital root of the first n primes for some n.

Offset 1, canonical program `A075544.P11404657353925885647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. -/
def A075544 (n : ℕ) : ℤ :=
  A075544.P11404657353925885647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1053 terms. -/
def A075544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075735.P8566099337576240137

`A000045(eq[1, A174340(n+1)]+1)`
-/

namespace A075735.P8566099337576240137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075735.P8566099337576240137

noncomputable section

/-- A075735: Squarefree Fibonacci numbers with an even number of prime factors (mu(n)=1).

Offset 1, canonical program `A075735.P8566099337576240137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A075735 (n : ℕ) : ℤ :=
  A075735.P8566099337576240137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A075735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075875.P16800868637644229346

`A000217(eq[3, A069904(n+1)]+1)`
-/

namespace A075875.P16800868637644229346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075875.P16800868637644229346

noncomputable section

/-- A075875: Triangular numbers that are 3-almost primes.

Offset 1, canonical program `A075875.P16800868637644229346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A075875 (n : ℕ) : ℤ :=
  A075875.P16800868637644229346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. -/
def A075875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075897.P8597218280166842261

`C(C(3, A000120(n)), 3)`
-/

namespace A075897.P8597218280166842261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 (A000120 n).toNat) 3

end

end A075897.P8597218280166842261

noncomputable section

/-- A075897: 1 if binary weight of n is 1 or 2, otherwise 0.

Offset 0, canonical program `A075897.P8597218280166842261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075897 (n : ℕ) : ℤ :=
  (A075897.P8597218280166842261.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075994.P16345749398604770429

`A010766(record[n*(1-A101688(n))]+1)`
-/

namespace A075994.P16345749398604770429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A101688 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A075994.P16345749398604770429

noncomputable section

/-- A075994: Irregular triangle T(n,k) = floor(n/k) for k = 1, 2, ..., floor(n/2) for n>=2 and T(1,1)=1.

Offset 1, canonical program `A075994.P16345749398604770429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A075994 (n : ℕ) : ℤ :=
  A075994.P16345749398604770429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A075994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076025.P10278836771716070548

`ceil(A076035(n)/4)`
-/

namespace A076025.P10278836771716070548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076035 n : ℚ) / 4⌉

end

end A076025.P10278836771716070548

noncomputable section

/-- A076025: Expansion of g.f.: (1-3*x*C)/(1-4*x*C) where C = (1 - sqrt(1-4*x))/(2*x) = g.f. for Catalan numbers A000108.

Offset 0, canonical program `A076025.P10278836771716070548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A076025 (n : ℕ) : ℤ :=
  A076025.P10278836771716070548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A076025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076079.P11386046758032469833

`A006005(n+1)-A004648(n+1)`
-/

namespace A076079.P11386046758032469833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) - A004648 (n + 1)

end

end A076079.P11386046758032469833

noncomputable section

/-- A076079: Largest multiple of n < the n-th prime.

Offset 1, canonical program `A076079.P11386046758032469833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076079 (n : ℕ) : ℤ :=
  A076079.P11386046758032469833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076109.P16207230652435772450

`A005920(n)%A099985(n+1)`
-/

namespace A076109.P16207230652435772450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005920 n) (A099985 (n + 1))

end

end A076109.P16207230652435772450

noncomputable section

/-- A076109: Least positive k such that k^n is the sum of n consecutive integers, or 0 if no such k exists.

Offset 1, canonical program `A076109.P16207230652435772450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076109 (n : ℕ) : ℤ :=
  A076109.P16207230652435772450.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076112.P16955840187618448059

`∑[A010054(n)]^A002262(n)`
-/

namespace A076112.P16955840187618448059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A002262 n : ℤ)

end

end A076112.P16955840187618448059

noncomputable section

/-- A076112: Triangle (read by rows) in which the n-th row contains first n terms of n geometric progression with first term 1 and common ratio (n-1).

Offset 1, canonical program `A076112.P16955840187618448059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A076112 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076112.P16955840187618448059.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A076112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076144.P6283573199368845019

`A005117(C(A029358(n), n)+n)`
-/

namespace A076144.P6283573199368845019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.choose (A029358 n).toNat n + n)

end

end A076144.P6283573199368845019

noncomputable section

/-- A076144: Largest squarefree m <= sfn(n) such that m*sfn(n) is also squarefree, where sfn(n) is the n-th squarefree number.

Offset 1, canonical program `A076144.P6283573199368845019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A076144 (n : ℕ) : ℤ :=
  A076144.P6283573199368845019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A076144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043441.P6379859131163105572

`eq[1, A316866(A007094(n))]`
-/

namespace A043441.P6379859131163105572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043441.P6379859131163105572

noncomputable section

/-- A043441: Numbers having one 5 in base 8.

Offset 1, canonical program `A043441.P6379859131163105572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043441 (n : ℕ) : ℤ :=
  (A043441.P6379859131163105572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043445.P5603443380075508067

`eq[1, A316867(A007094(n))]`
-/

namespace A043445.P5603443380075508067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043445.P5603443380075508067

noncomputable section

/-- A043445: Numbers having exactly one 6 in base 8.

Offset 1, canonical program `A043445.P5603443380075508067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043445 (n : ℕ) : ℤ :=
  (A043445.P5603443380075508067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A043445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043450.P5047331127486138788

`eq[2, A102679(A007094(n))]`
-/

namespace A043450.P5047331127486138788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A007094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043450.P5047331127486138788

noncomputable section

/-- A043450: Numbers having two 7's in base 8.

Offset 1, canonical program `A043450.P5047331127486138788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043450 (n : ℕ) : ℤ :=
  (A043450.P5047331127486138788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A043450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043453.P3959600562205998710

`eq[A055641(A007095(n)), A057427(n)]`
-/

namespace A043453.P3959600562205998710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007095 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043453.P3959600562205998710

noncomputable section

/-- A043453: Numbers having one 0 in base 9.

Offset 1, canonical program `A043453.P3959600562205998710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1672 terms. -/
def A043453 (n : ℕ) : ℤ :=
  (A043453.P3959600562205998710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1672 terms. -/
def A043453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043466.P4392991474352702089

`eq[2, A316864(A007095(n))]`
-/

namespace A043466.P4392991474352702089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043466.P4392991474352702089

noncomputable section

/-- A043466: Numbers having two 3's in base 9.

Offset 1, canonical program `A043466.P4392991474352702089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043466 (n : ℕ) : ℤ :=
  (A043466.P4392991474352702089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 384 terms. -/
def A043466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043469.P1102294554062349445

`eq[1, A316865(A007095(n))]`
-/

namespace A043469.P1102294554062349445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043469.P1102294554062349445

noncomputable section

/-- A043469: Numbers having one 4 in base 9.

Offset 1, canonical program `A043469.P1102294554062349445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043469 (n : ℕ) : ℤ :=
  (A043469.P1102294554062349445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043473.P2283782173635327789

`eq[1, A316866(A007095(n))]`
-/

namespace A043473.P2283782173635327789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043473.P2283782173635327789

noncomputable section

/-- A043473: Numbers having exactly one 5 in base 9.

Offset 1, canonical program `A043473.P2283782173635327789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043473 (n : ℕ) : ℤ :=
  (A043473.P2283782173635327789.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043481.P16324422325216548464

`eq[1, A316868(A007095(n))]`
-/

namespace A043481.P16324422325216548464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A043481.P16324422325216548464

noncomputable section

/-- A043481: Numbers having one 7 in base 9.

Offset 1, canonical program `A043481.P16324422325216548464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043481 (n : ℕ) : ℤ :=
  (A043481.P16324422325216548464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A043481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043509.P6603774125387812743

`eq[A008461(n+1), A316866(n)]`
-/

namespace A043509.P6603774125387812743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043509.P6603774125387812743

noncomputable section

/-- A043509: Numbers having exactly one 5 in base 10.

Offset 1, canonical program `A043509.P6603774125387812743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043509 (n : ℕ) : ℤ :=
  (A043509.P6603774125387812743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043513.P16611777798555394452

`eq[A008461(n+1), A316867(n)]`
-/

namespace A043513.P16611777798555394452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043513.P16611777798555394452

noncomputable section

/-- A043513: Numbers having one 6 in base 10.

Offset 1, canonical program `A043513.P16611777798555394452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043513 (n : ℕ) : ℤ :=
  (A043513.P16611777798555394452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2916 terms. -/
def A043513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044966.P1757624402048700845

`2*A309758(n+1)-1`
-/

namespace A044966.P1757624402048700845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309758 (n + 1) - 1

end

end A044966.P1757624402048700845

noncomputable section

/-- A044966: Numbers whose base-3 representation contains no 0's and exactly one 1.

Offset 1, canonical program `A044966.P1757624402048700845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A044966 (n : ℕ) : ℤ :=
  A044966.P1757624402048700845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A044966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045377.P3285065259095593402

`∪[A045392(n+1), A045464(n+1)]`
-/

namespace A045377.P3285065259095593402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045377.P3285065259095593402

noncomputable section

/-- A045377: Primes congruent to {0, 2, 6} mod 7.

Offset 1, canonical program `A045377.P3285065259095593402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045377 (n : ℕ) : ℤ :=
  (A045377.P3285065259095593402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045387.P7630780652864986613

`A045374((n+1)%(2*n+1)+1)`
-/

namespace A045387.P7630780652864986613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045374 ((n + 1) % (2 * n + 1) + 1)

end

end A045387.P7630780652864986613

noncomputable section

/-- A045387: Primes congruent to {2, 4} mod 7.

Offset 1, canonical program `A045387.P7630780652864986613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045387 (n : ℕ) : ℤ :=
  A045387.P7630780652864986613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045459.P13155566144370101843

`∪[A045463(n+1), A045471(n+1)]`
-/

namespace A045459.P13155566144370101843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045459.P13155566144370101843

noncomputable section

/-- A045459: Primes congruent to {0, 1, 4, 6} mod 7.

Offset 1, canonical program `A045459.P13155566144370101843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045459 (n : ℕ) : ℤ :=
  (A045459.P13155566144370101843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045460.P779687424357472890

`∪[A045471(n+1), A045464(n+1)]`
-/

namespace A045460.P779687424357472890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045460.P779687424357472890

noncomputable section

/-- A045460: Primes congruent to {0, 4, 6} mod 7.

Offset 1, canonical program `A045460.P779687424357472890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045460 (n : ℕ) : ℤ :=
  (A045460.P779687424357472890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045625.P16510546480136589796

`A063524(n)+A056318(A233583(n+1))`
-/

namespace A045625.P16510546480136589796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A056318 (A233583 (n + 1)).toNat

end

end A045625.P16510546480136589796

noncomputable section

/-- A045625: Number of n-bead black-white reversible strings with fundamental period n.

Offset 0, canonical program `A045625.P16510546480136589796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A045625 (n : ℕ) : ℤ :=
  A045625.P16510546480136589796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A045625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045694.P7872206853554572603

`∑{d}[n+1, A019308(#-1)*A154269((n+1)/#)]`
-/

namespace A045694.P7872206853554572603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019308 (d - 1) * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A045694.P7872206853554572603

noncomputable section

/-- A045694: Number of ternary words of length n (beginning with 0) with autocorrelation function 2^(n-1).

Offset 1, canonical program `A045694.P7872206853554572603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A045694 (n : ℕ) : ℤ :=
  A045694.P7872206853554572603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A045694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045749.P16244404807237622354

`comp[A187571(n+1)]`
-/

namespace A045749.P16244404807237622354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045749.P16244404807237622354

noncomputable section

/-- A045749: Extension of Beatty sequence; complement of A045750.

Offset 0, canonical program `A045749.P16244404807237622354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045749 (n : ℕ) : ℤ :=
  (A045749.P16244404807237622354.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045765.P13008518942715425430

`comp[1-A000005(n+1)+n]`
-/

namespace A045765.P13008518942715425430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000005 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A045765.P13008518942715425430

noncomputable section

/-- A045765: k - d(k) never takes these values, where d(k) = A000005(k).

Offset 1, canonical program `A045765.P13008518942715425430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045765 (n : ℕ) : ℤ :=
  (A045765.P13008518942715425430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045803.P1981501651766823381

`A045800(n+1)+A045807(n+1)-A045809(n+2)`
-/

namespace A045803.P1981501651766823381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1) + (A045807 (n + 1) - A045809 (n + 2))

end

end A045803.P1981501651766823381

noncomputable section

/-- A045803: 3-ish numbers (end in 17, 19, 31, 33).

Offset 1, canonical program `A045803.P1981501651766823381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045803 (n : ℕ) : ℤ :=
  A045803.P1981501651766823381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A045803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045829.P12089540855350358845

`A057427(A004524(n))*A091965(A152950(n+1))`
-/

namespace A045829.P12089540855350358845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A004524 n).toNat * A091965 (A152950 (n + 1)).toNat

end

end A045829.P12089540855350358845

noncomputable section

/-- A045829: Catafusenes (see reference for precise definition).

Offset 1, canonical program `A045829.P12089540855350358845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A045829 (n : ℕ) : ℤ :=
  A045829.P12089540855350358845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A045829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045901.P13923899749826472928

`A020703(A170950(n+1))`
-/

namespace A045901.P13923899749826472928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A170950 (n + 1)).toNat

end

end A045901.P13923899749826472928

noncomputable section

/-- A045901: Group the natural numbers into blocks: B_1 = 1, B_2 = 2,3,4, B_3 = 5,6,7,8,9, ..., each block ending in a square. Permute each block B_k by beginning with the central term, followed by the transposed symmetric pairs from B_k.

Offset 1, canonical program `A045901.P13923899749826472928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045901 (n : ℕ) : ℤ :=
  A045901.P13923899749826472928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046100.P13811187242506642601

`lt[A299090(n+1), 3]+1`
-/

namespace A046100.P13811187242506642601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046100.P13811187242506642601

noncomputable section

/-- A046100: Biquadratefree numbers: numbers that are not divisible by any 4th power greater than 1.

Offset 1, canonical program `A046100.P13811187242506642601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046100 (n : ℕ) : ℤ :=
  (A046100.P13811187242506642601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046316.P8314194811840766040

`eq[1, A369058(n+1)]+1`
-/

namespace A046316.P8314194811840766040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369058 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046316.P8314194811840766040

noncomputable section

/-- A046316: Numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

Offset 1, canonical program `A046316.P8314194811840766040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A046316 (n : ℕ) : ℤ :=
  (A046316.P8314194811840766040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A046316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046363.P11241308616928514988

`filter[A100118(n+1), A005171(#)]`
-/

namespace A046363.P11241308616928514988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046363.P11241308616928514988

noncomputable section

/-- A046363: Composite numbers whose sum of prime factors (with multiplicity) is prime.

Offset 1, canonical program `A046363.P11241308616928514988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5510 terms. -/
def A046363 (n : ℕ) : ℤ :=
  A046363.P11241308616928514988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5510 terms. -/
def A046363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046470.P11553915186870651729

`2*A028260(n+1)`
-/

namespace A046470.P11553915186870651729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028260 (n + 1)

end

end A046470.P11553915186870651729

noncomputable section

/-- A046470: Even numbers with an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A046470.P11553915186870651729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046470 (n : ℕ) : ℤ :=
  A046470.P11553915186870651729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046522.P2243799263287364353

`2*floor(sqrt(n+1))-A000005(n+1)`
-/

namespace A046522.P2243799263287364353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.sqrt (n + 1) : ℤ) - A000005 (n + 1)

end

end A046522.P2243799263287364353

noncomputable section

/-- A046522: a(n) = 2*floor(sqrt(n)) - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A046522.P2243799263287364353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046522 (n : ℕ) : ℤ :=
  A046522.P2243799263287364353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046687.P16814962762525960109

`eq[1, gcd(n+1, A279363(n+1))]+1`
-/

namespace A046687.P16814962762525960109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A279363 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A046687.P16814962762525960109

noncomputable section

/-- A046687: Numbers k such that k and sum of 4th powers of divisors of k are relatively prime.

Offset 1, canonical program `A046687.P16814962762525960109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. -/
def A046687 (n : ℕ) : ℤ :=
  (A046687.P16814962762525960109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4718 terms. -/
def A046687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046798.P1283499417333976298

`A000005(2^n+1)`
-/

namespace A046798.P1283499417333976298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n + 1)

end

end A046798.P1283499417333976298

noncomputable section

/-- A046798: Number of divisors of 2^n + 1.

Offset 0, canonical program `A046798.P1283499417333976298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046798 (n : ℕ) : ℤ :=
  A046798.P1283499417333976298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046801.P9484727387141696253

`A000005(2^(n+1)-1)`
-/

namespace A046801.P9484727387141696253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ (n + 1) - 1)

end

end A046801.P9484727387141696253

noncomputable section

/-- A046801: Number of divisors of 2^n-1.

Offset 1, canonical program `A046801.P9484727387141696253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046801 (n : ℕ) : ℤ :=
  A046801.P9484727387141696253.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046839.P16105332668956259502

`lt[A001158(n+1)%A000005(n+1), 1]+1`
-/

namespace A046839.P16105332668956259502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001158 (n + 1)) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A046839.P16105332668956259502

noncomputable section

/-- A046839: Numbers k such that the number of divisors of k divides the sum of cubes of divisors of k.

Offset 1, canonical program `A046839.P16105332668956259502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. -/
def A046839 (n : ℕ) : ℤ :=
  (A046839.P16105332668956259502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7812 terms. -/
def A046839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046840.P11712278196667640381

`eq[0, A001159(n+1)%A000005(n+1)]+1`
-/

namespace A046840.P11712278196667640381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001159 (n + 1)) (A000005 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046840.P11712278196667640381

noncomputable section

/-- A046840: Numbers k such that the number of divisors of k divides the sum of the 4th powers of the divisors of k.

Offset 1, canonical program `A046840.P11712278196667640381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. -/
def A046840 (n : ℕ) : ℤ :=
  (A046840.P11712278196667640381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6066 terms. -/
def A046840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046902.P13185243045177966618

`A096956(A007401(n+1))-A097805(n)`
-/

namespace A046902.P13185243045177966618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096956 (A007401 (n + 1)).toNat - A097805 n

end

end A046902.P13185243045177966618

noncomputable section

/-- A046902: Clark's triangle: left border = 0 1 1 1..., right border = multiples of 6; other entries = sum of 2 entries above.

Offset 0, canonical program `A046902.P13185243045177966618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046902 (n : ℕ) : ℤ :=
  A046902.P13185243045177966618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046951.P12586408086602964063

`A000005(A000188(n+1))`
-/

namespace A046951.P12586408086602964063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat

end

end A046951.P12586408086602964063

noncomputable section

/-- A046951: a(n) is the number of squares dividing n.

Offset 1, canonical program `A046951.P12586408086602964063`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046951 (n : ℕ) : ℤ :=
  A046951.P12586408086602964063.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046951.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046992.P5723550036857346414

`A002815(n+1)-(n+1)`
-/

namespace A046992.P5723550036857346414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 (n + 1) - (n + 1 : ℤ)

end

end A046992.P5723550036857346414

noncomputable section

/-- A046992: a(n) = Sum_{k=1..n} pi(k) (cf. A000720).

Offset 1, canonical program `A046992.P5723550036857346414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046992 (n : ℕ) : ℤ :=
  A046992.P5723550036857346414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046992.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047098.P2815314934957914121

`A321957(n)+2*C(3*n, n)-8^n`
-/

namespace A047098.P2815314934957914121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321957 n + (2 * Nat.choose (3 * n) n : ℤ) - (8 ^ n : ℤ)

end

end A047098.P2815314934957914121

noncomputable section

/-- A047098: a(n) = 2*binomial(3*n, n) - Sum_{k=0..n} binomial(3*n, k).

Offset 0, canonical program `A047098.P2815314934957914121`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047098 (n : ℕ) : ℤ :=
  A047098.P2815314934957914121.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A047098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047666.P2227435095313128948

`A391318(n)+A108350(n)`
-/

namespace A047666.P2227435095313128948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391318 n + A108350 n

end

end A047666.P2227435095313128948

noncomputable section

/-- A047666: Square array a(n,k) read by antidiagonals: a(n,1)=n, a(1,k)=k, a(n,k) = a(n-1,k-1) + a(n-1,k) + a(n,k-1).

Offset 1, canonical program `A047666.P2227435095313128948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047666 (n : ℕ) : ℤ :=
  A047666.P2227435095313128948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047924.P14531844885665270262

`abs(A288709(n+1)-n)`
-/

namespace A047924.P14531844885665270262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288709 (n + 1) - (n : ℤ)|

end

end A047924.P14531844885665270262

noncomputable section

/-- A047924: a(n) = B_{A_n+1}+1, where A_n = floor(n*phi) = A000201(n), B_n = floor(n*phi^2) = A001950(n) and phi is the golden ratio.

Offset 0, canonical program `A047924.P14531844885665270262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924 (n : ℕ) : ℤ :=
  A047924.P14531844885665270262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048105.P14513846835403787716

`A000005(n+1)-A034444(n+1)`
-/

namespace A048105.P14513846835403787716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A034444 (n + 1)

end

end A048105.P14513846835403787716

noncomputable section

/-- A048105: Number of non-unitary divisors of n.

Offset 1, canonical program `A048105.P14513846835403787716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048105 (n : ℕ) : ℤ :=
  A048105.P14513846835403787716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048106.P2251062442645378634

`2^(1+A001221(n+1))-A000005(n+1)`
-/

namespace A048106.P2251062442645378634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (1 + A001221 (n + 1) : ℤ) - (A000005 (n + 1) : ℚ)

end

end A048106.P2251062442645378634

noncomputable section

/-- A048106: Number of unitary divisors of n (A034444) - number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048106.P2251062442645378634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048106 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048106.P2251062442645378634.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048166.P12188423200704413564

`lt[(n+1)%A000005(A007947(n+1)), 1]+1`
-/

namespace A048166.P12188423200704413564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (A007947 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A048166.P12188423200704413564

noncomputable section

/-- A048166: Numbers k that are divisible by the number of unitary divisors of k (A034444).

Offset 1, canonical program `A048166.P12188423200704413564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. -/
def A048166 (n : ℕ) : ℤ :=
  (A048166.P12188423200704413564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7090 terms. -/
def A048166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048448.P11536706727464176124

`A000040(n+1)+∑{p}[A158611(n+1), #]`
-/

namespace A048448.P11536706727464176124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A048448.P11536706727464176124

noncomputable section

/-- A048448: a(n) = prime(n-1) + prime(n+1) (assuming prime(i) = 0 for i < 1).

Offset 0, canonical program `A048448.P11536706727464176124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048448 (n : ℕ) : ℤ :=
  A048448.P11536706727464176124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048570.P17125824842376526747

`A000005(A007318(n))`
-/

namespace A048570.P17125824842376526747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007318 n).toNat

end

end A048570.P17125824842376526747

noncomputable section

/-- A048570: Triangle T(n,k) = number of divisors of binomial(n,k).

Offset 0, canonical program `A048570.P17125824842376526747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048570 (n : ℕ) : ℤ :=
  A048570.P17125824842376526747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048691.P3815437841091875311

`A000005((n+1)²)`
-/

namespace A048691.P3815437841091875311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

end

end A048691.P3815437841091875311

noncomputable section

/-- A048691: a(n) = d(n^2), where d(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A048691.P3815437841091875311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048691 (n : ℕ) : ℤ :=
  A048691.P3815437841091875311.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048719.P18299439018409905840

`3*A048718(n)`
-/

namespace A048719.P18299439018409905840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A048718 n

end

end A048719.P18299439018409905840

noncomputable section

/-- A048719: Binary expansion matches ((0)*0011)*(0*).

Offset 0, canonical program `A048719.P18299439018409905840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048719 (n : ℕ) : ℤ :=
  A048719.P18299439018409905840.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048718, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048784.P11824088214636792720

`A000005(C(2*n, n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048784.P11824088214636792720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (2 * n) n)

end

end A048784.P11824088214636792720

noncomputable section

/-- A048784: a(n) = tau(binomial(2*n,n)), where tau = number of divisors (A000005).

Offset 0, canonical program `A048784.P11824088214636792720`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(C(2*n, n))` (program `A048784.P11824088214636792720`, by `A048784.P11824088214636792720.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048784 (n : ℕ) : ℤ :=
  A048784.P11824088214636792720.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(C(2*n, n))` (program `A048784.P11824088214636792720`, by `A048784.P11824088214636792720.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A048784.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A049218.P5043714939123262351

`A111594(A014132(n+1))*A117568(n)`
-/

namespace A049218.P5043714939123262351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111594 (A014132 (n + 1)).toNat * A117568 n

end

end A049218.P5043714939123262351

noncomputable section

/-- A049218: Triangle T(n,k) of arctangent numbers: expansion of arctan(x)^n/n!.

Offset 1, canonical program `A049218.P5043714939123262351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A049218 (n : ℕ) : ℤ :=
  A049218.P5043714939123262351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A049218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049234.P3422205690596115663

`A000005(A052147(n+1))`
-/

namespace A049234.P3422205690596115663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A052147 (n + 1)).toNat

end

end A049234.P3422205690596115663

noncomputable section

/-- A049234: Number of divisors of prime(n) + 2.

Offset 1, canonical program `A049234.P3422205690596115663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049234 (n : ℕ) : ℤ :=
  A049234.P3422205690596115663.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049234.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049238.P1185425134299913023

`A000005(A040976(n+2))`
-/

namespace A049238.P1185425134299913023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A040976 (n + 2)).toNat

end

end A049238.P1185425134299913023

noncomputable section

/-- A049238: a(n) is the number of divisors of prime(n) - 2.

Offset 2, canonical program `A049238.P1185425134299913023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049238 (n : ℕ) : ℤ :=
  A049238.P1185425134299913023.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049310.P1662014320520452531

`A117568(n)*A168561(n)`
-/

namespace A049310.P1662014320520452531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A168561 n

end

end A049310.P1662014320520452531

noncomputable section

/-- A049310: Triangle of coefficients of Chebyshev's S(n,x) := U(n,x/2) polynomials (exponents in increasing order).

Offset 0, canonical program `A049310.P1662014320520452531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049310 (n : ℕ) : ℤ :=
  A049310.P1662014320520452531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049439.P3678346078929510445

`record[(n+1)*A336040(A000265(n+1))]`
-/

namespace A049439.P3678346078929510445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336040 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049439.P3678346078929510445

noncomputable section

/-- A049439: Numbers k such that the number of odd divisors of k is an odd divisor of k.

Offset 1, canonical program `A049439.P3678346078929510445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A049439 (n : ℕ) : ℤ :=
  A049439.P3678346078929510445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A049439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049482.P14194032820589337229

`p?[n+1-C(10, A000005(n+1)²)]`
-/

namespace A049482.P14194032820589337229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose 10 (A000005 (n + 1) ^ 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049482.P14194032820589337229

noncomputable section

/-- A049482: Primes p such that p + 210 is also prime.

Offset 1, canonical program `A049482.P14194032820589337229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. -/
def A049482 (n : ℕ) : ℤ :=
  A049482.P14194032820589337229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3923 terms. -/
def A049482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049509.P18024564109362952829

`A000720(A030432(n+1))`
-/

namespace A049509.P18024564109362952829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030432 (n + 1)).toNat

end

end A049509.P18024564109362952829

noncomputable section

/-- A049509: Numbers k such that prime(k) == 7 (mod 10).

Offset 1, canonical program `A049509.P18024564109362952829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049509 (n : ℕ) : ℤ :=
  A049509.P18024564109362952829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030432, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049573.P10186833783548255734

`A158611(A086858(n+5)+n+1)`
-/

namespace A049573.P10186833783548255734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A086858 (n + 5) + (n + 1 : ℤ)).toNat

end

end A049573.P10186833783548255734

noncomputable section

/-- A049573: Primes p such that x^41 = 2 has a solution mod p.

Offset 1, canonical program `A049573.P10186833783548255734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A049573 (n : ℕ) : ℤ :=
  A049573.P10186833783548255734.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A049573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049645.P576075873221011945

`lt[A000203(n+1)%A000005(n+1)², 1]+1`
-/

namespace A049645.P576075873221011945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000005 (n + 1) ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049645.P576075873221011945

noncomputable section

/-- A049645: Numbers k such that the square of the number of divisors of k divides the sum of the divisors of k.

Offset 1, canonical program `A049645.P576075873221011945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049645 (n : ℕ) : ℤ :=
  (A049645.P576075873221011945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049766.P13668387565428548660

`A004125(n+1)+A161680(n+1)`
-/

namespace A049766.P13668387565428548660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + A161680 (n + 1)

end

end A049766.P13668387565428548660

noncomputable section

/-- A049766: a(n) = Sum_{k=1..n} T(n,k), array T as in A049765.

Offset 1, canonical program `A049766.P13668387565428548660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049766 (n : ℕ) : ℤ :=
  A049766.P13668387565428548660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049766.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049820.P9428372222244335888

`n+1-A000005(n+1)`
-/

namespace A049820.P9428372222244335888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000005 (n + 1)

end

end A049820.P9428372222244335888

noncomputable section

/-- A049820: a(n) = n - d(n), where d(n) is the number of divisors of n (A000005).

Offset 1, canonical program `A049820.P9428372222244335888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049820 (n : ℕ) : ℤ :=
  A049820.P9428372222244335888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A049820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A050156.P13048179924757720797

`A128899(lt[1, A128899(n)]+1)`
-/

namespace A050156.P13048179924757720797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A050156.P13048179924757720797

noncomputable section

/-- A050156: T(n,k)=M(2n+3,n+3,k+3), 0<=k<=n, n >= 0, array M as in A050144.

Offset 0, canonical program `A050156.P13048179924757720797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050156 (n : ℕ) : ℤ :=
  A050156.P13048179924757720797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050448.P12990945603469115476

`A051001(n+1)-A050455(n+1)`
-/

namespace A050448.P12990945603469115476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051001 (n + 1) - A050455 (n + 1)

end

end A050448.P12990945603469115476

noncomputable section

/-- A050448: a(n) = Sum_{d|n, d==1 (mod 4)} d^4.

Offset 1, canonical program `A050448.P12990945603469115476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050448 (n : ℕ) : ℤ :=
  A050448.P12990945603469115476.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050450.P4021675749699126775

`A050999(n+1)-A050453(n+1)`
-/

namespace A050450.P4021675749699126775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) - A050453 (n + 1)

end

end A050450.P4021675749699126775

noncomputable section

/-- A050450: a(n) = Sum_{d|n, d=1 mod 4} d^2.

Offset 1, canonical program `A050450.P4021675749699126775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050450 (n : ℕ) : ℤ :=
  A050450.P4021675749699126775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050451.P9220370011251437069

`A051000(n+1)-A050454(n+1)`
-/

namespace A050451.P9220370011251437069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051000 (n + 1) - A050454 (n + 1)

end

end A050451.P9220370011251437069

noncomputable section

/-- A050451: a(n) = Sum_{d|n, d=1 mod 4} d^3.

Offset 1, canonical program `A050451.P9220370011251437069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050451 (n : ℕ) : ℤ :=
  A050451.P9220370011251437069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050482.P1462171223400709831

`A004125(A000040(n+1))`
-/

namespace A050482.P1462171223400709831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (A000040 (n + 1)).toNat

end

end A050482.P1462171223400709831

noncomputable section

/-- A050482: Sum of remainders when n-th prime is divided by all preceding integers.

Offset 1, canonical program `A050482.P1462171223400709831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050482 (n : ℕ) : ℤ :=
  A050482.P1462171223400709831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050482.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050704.P1369494930655348781

`eq[1, A105700(A075255(n+1))]+1`
-/

namespace A050704.P1369494930655348781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A075255 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050704.P1369494930655348781

noncomputable section

/-- A050704: Composite numbers k with the property that k minus the sum of the prime factors of k is prime.

Offset 1, canonical program `A050704.P1369494930655348781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A050704 (n : ℕ) : ℤ :=
  (A050704.P1369494930655348781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A050704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051194.P17118644438746036718

`A000005(A050873(n+1))`
-/

namespace A051194.P17118644438746036718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A050873 (n + 1)).toNat

end

end A051194.P17118644438746036718

noncomputable section

/-- A051194: Triangular array T read by rows: T(n,k) = number of positive integers that divide both n and k.

Offset 1, canonical program `A051194.P17118644438746036718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051194 (n : ℕ) : ℤ :=
  A051194.P17118644438746036718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051348.P7480873453457337069

`A000045(n+1)/A113176(n+1)`
-/

namespace A051348.P7480873453457337069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A113176 (n + 1) : ℚ)

end

end A051348.P7480873453457337069

noncomputable section

/-- A051348: a(n) = F(n) / Product_{p|n} F(p), where F(k) is k-th Fibonacci number and the p's in product are the distinct primes dividing n.

Offset 1, canonical program `A051348.P7480873453457337069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A051348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051348.P7480873453457337069.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A051348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051361.P4102761191167575367

`A052387(n)-A256857(n)`
-/

namespace A051361.P4102761191167575367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052387 n - A256857 n

end

end A051361.P4102761191167575367

noncomputable section

/-- A051361: A class of Boolean functions of n variables and rank 3.

Offset 0, canonical program `A051361.P4102761191167575367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051361 (n : ℕ) : ℤ :=
  A051361.P4102761191167575367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051542.P15319725995359775341

`A051538(n+2)/A051538(n+1)`
-/

namespace A051542.P15319725995359775341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051538 (n + 2) : ℚ) / (A051538 (n + 1) : ℚ)

end

end A051542.P15319725995359775341

noncomputable section

/-- A051542: Quotients of consecutive values of LCM {b(1),...,b(n)}, b() = A000330.

Offset 1, canonical program `A051542.P15319725995359775341`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051542 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051542.P15319725995359775341.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051538, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051542.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051777.P15797319284762546370

`A123578(n)%A193592(n)`
-/

namespace A051777.P15797319284762546370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 n) (A193592 n)

end

end A051777.P15797319284762546370

noncomputable section

/-- A051777: Triangle read by rows, where row (n) = n mod n, n mod (n-1), n mod (n-2), ...n mod 1.

Offset 1, canonical program `A051777.P15797319284762546370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051777 (n : ℕ) : ℤ :=
  A051777.P15797319284762546370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A051777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051950.P1558606958145203364

`A000005(n+2)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051950.P1558606958145203364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) - A000005 (n + 1)

end

end A051950.P1558606958145203364

noncomputable section

/-- A051950: Differences between values of tau(n) (A000005): a(n) = tau(n)-tau(n-1).

Offset 2, canonical program `A051950.P1558606958145203364`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+2)-A000005(n+1)` (program `A051950.P1558606958145203364`, by `A051950.P1558606958145203364.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051950 (n : ℕ) : ℤ :=
  A051950.P1558606958145203364.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+2)-A000005(n+1)` (program `A051950.P1558606958145203364`, by `A051950.P1558606958145203364.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A051950.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A052413.P9361150373408811121

`comp[A011535(n+1)]`
-/

namespace A052413.P9361150373408811121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052413.P9361150373408811121

noncomputable section

/-- A052413: Numbers without 5 as a digit.

Offset 1, canonical program `A052413.P9361150373408811121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052413 (n : ℕ) : ℤ :=
  (A052413.P9361150373408811121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052414.P5436341790358726284

`comp[A011536(n+1)]`
-/

namespace A052414.P5436341790358726284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052414.P5436341790358726284

noncomputable section

/-- A052414: Numbers without 6 as a digit.

Offset 1, canonical program `A052414.P5436341790358726284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052414 (n : ℕ) : ℤ :=
  (A052414.P5436341790358726284.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052419.P1356006972829932329

`comp[A011537(n+1)]`
-/

namespace A052419.P1356006972829932329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052419.P1356006972829932329

noncomputable section

/-- A052419: Numbers without 7 as a digit.

Offset 1, canonical program `A052419.P1356006972829932329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052419 (n : ℕ) : ℤ :=
  (A052419.P1356006972829932329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052421.P4187799602558401077

`comp[A011538(n+1)]`
-/

namespace A052421.P4187799602558401077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A052421.P4187799602558401077

noncomputable section

/-- A052421: Numbers without 8 as a digit.

Offset 1, canonical program `A052421.P4187799602558401077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052421 (n : ℕ) : ℤ :=
  (A052421.P4187799602558401077.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052701.P6192577118575342611

`floor(A115125(n)/2)`
-/

namespace A052701.P6192577118575342611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115125 n : ℚ) / 2⌋

end

end A052701.P6192577118575342611

noncomputable section

/-- A052701: a(0) = 0; for n >= 1, a(n) = 2^(n-1)*C(n-1), where C(n) = A000108(n) Catalan numbers, n>0.

Offset 0, canonical program `A052701.P6192577118575342611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A052701 (n : ℕ) : ℤ :=
  A052701.P6192577118575342611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A052701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052776.P17031965558761558606

`n*A056455(comp[2*n+5]+1)`
-/

namespace A052776.P17031965558761558606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A056455 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A052776.P17031965558761558606

noncomputable section

/-- A052776: a(n) = 4!*n*Stirling2(n-1,4).

Offset 0, canonical program `A052776.P17031965558761558606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A052776 (n : ℕ) : ℤ :=
  A052776.P17031965558761558606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A052776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053000.P7278427673394138104

`A013632(n²)`
-/

namespace A053000.P7278427673394138104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n ^ 2)

end

end A053000.P7278427673394138104

noncomputable section

/-- A053000: a(n) = (smallest prime > n^2) - n^2.

Offset 0, canonical program `A053000.P7278427673394138104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053000 (n : ℕ) : ℤ :=
  A053000.P7278427673394138104.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053044.P12715760243015014670

`A060606(n)-A004526(n)`
-/

namespace A053044.P12715760243015014670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060606 n - A004526 n

end

end A053044.P12715760243015014670

noncomputable section

/-- A053044: a(n) is the number of iterations of the Euler totient function to reach 1, starting at n!.

Offset 1, canonical program `A053044.P12715760243015014670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053044 (n : ℕ) : ℤ :=
  A053044.P12715760243015014670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053226.P231918640518342816

`A053238(n)+a(n-1)` with `a(0)=4`
-/

namespace A053226.P231918640518342816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A053238 n + a (n - 1)

end

end A053226.P231918640518342816

noncomputable section

/-- A053226: Numbers k for which sigma(k) > sigma(k+1).

Offset 1, canonical program `A053226.P231918640518342816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053226 (n : ℕ) : ℤ :=
  A053226.P231918640518342816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053667.P8788573721861177498

`A007954(n²)`
-/

namespace A053667.P8788573721861177498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n ^ 2)

end

end A053667.P8788573721861177498

noncomputable section

/-- A053667: Product of digits of n^2.

Offset 0, canonical program `A053667.P8788573721861177498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053667 (n : ℕ) : ℤ :=
  A053667.P8788573721861177498.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053668.P4825794436022991672

`A007954(n^3)`
-/

namespace A053668.P4825794436022991672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n ^ 3)

end

end A053668.P4825794436022991672

noncomputable section

/-- A053668: Product of digits of n^3.

Offset 0, canonical program `A053668.P4825794436022991672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053668 (n : ℕ) : ℤ :=
  A053668.P4825794436022991672.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053668.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A053864.P17726123655565789623

`∏{d}[n+1, A189021(#)]`
-/

namespace A053864.P17726123655565789623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A189021 d

end

end A053864.P17726123655565789623

noncomputable section

/-- A053864: A second-order generalization of the Mobius function of n.

Offset 1, canonical program `A053864.P17726123655565789623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053864 (n : ℕ) : ℤ :=
  A053864.P17726123655565789623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054008.P12646982696001564694

`(n+1)%A000005(n+1)`
-/

namespace A054008.P12646982696001564694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000005 (n + 1))

end

end A054008.P12646982696001564694

noncomputable section

/-- A054008: n read modulo (number of divisors of n).

Offset 1, canonical program `A054008.P12646982696001564694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054008 (n : ℕ) : ℤ :=
  A054008.P12646982696001564694.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054009.P16648506082513592123

`(n+2)%(A000005(n+2)-1)`
-/

namespace A054009.P16648506082513592123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (n + 2) - 1)

end

end A054009.P16648506082513592123

noncomputable section

/-- A054009: n read modulo (number of proper divisors of n).

Offset 2, canonical program `A054009.P16648506082513592123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054009 (n : ℕ) : ℤ :=
  A054009.P16648506082513592123.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054014.P1187298453451747541

`A048050(n+1)%A000005(n+1)`
-/

namespace A054014.P1187298453451747541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (n + 1)) (A000005 (n + 1))

end

end A054014.P1187298453451747541

noncomputable section

/-- A054014: Chowla function of n read modulo (the number of divisors of n).

Offset 1, canonical program `A054014.P1187298453451747541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054014 (n : ℕ) : ℤ :=
  A054014.P1187298453451747541.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054015.P3785762614888052805

`A048050(n+1)%A325765(n)`
-/

namespace A054015.P3785762614888052805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048050 (n + 1)) (A325765 n)

end

end A054015.P3785762614888052805

noncomputable section

/-- A054015: a(n) is Chowla function of n read modulo (number of proper divisors of n), a(1) = 0 by convention.

Offset 1, canonical program `A054015.P3785762614888052805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054015 (n : ℕ) : ℤ :=
  A054015.P3785762614888052805.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054025.P3713677026187420569

`A000203(n+1)%A000005(n+1)`
-/

namespace A054025.P3713677026187420569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000005 (n + 1))

end

end A054025.P3713677026187420569

noncomputable section

/-- A054025: Sum of divisors of n read modulo (number of divisors of n).

Offset 1, canonical program `A054025.P3713677026187420569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054025 (n : ℕ) : ℤ :=
  A054025.P3713677026187420569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A054025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054056.P7272504195874728976

`A054795(n+1)+6`
-/

namespace A054056.P7272504195874728976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054795 (n + 1) + 6

end

end A054056.P7272504195874728976

noncomputable section

/-- A054056: Numbers of form 29+n^2+n or 29+2*n^2.

Offset 1, canonical program `A054056.P7272504195874728976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054056 (n : ℕ) : ℤ :=
  A054056.P7272504195874728976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054115.P12923722601801715663

`A143122(A038722(n+1)%A080036(n))`
-/

namespace A054115.P12923722601801715663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143122 (Int.tmod (A038722 (n + 1)) (A080036 n)).toNat

end

end A054115.P12923722601801715663

noncomputable section

/-- A054115: Triangular array generated by its row sums: T(n,0)=1 for n >= 1, T(n,1)=r(n-1), T(n,k)=T(n,k-1)+r(n-k) for k=2,3,...,n, n >= 2, r(h)=sum of the numbers in row h of T.

Offset 0, canonical program `A054115.P12923722601801715663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A054115 (n : ℕ) : ℤ :=
  A054115.P12923722601801715663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A054115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054121.P15490617491472344944

`A172229(n+1)+A140091(n)+A028310(n)`
-/

namespace A054121.P15490617491472344944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172229 (n + 1) + (A140091 n + A028310 n)

end

end A054121.P15490617491472344944

noncomputable section

/-- A054121: T(n,n-3), array T as in A054120.

Offset 3, canonical program `A054121.P15490617491472344944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054121 (n : ℕ) : ℤ :=
  A054121.P15490617491472344944.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054141.P11387286021896505430

`A160906(n)+A011782(n)`
-/

namespace A054141.P11387286021896505430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160906 n + A011782 n

end

end A054141.P11387286021896505430

noncomputable section

/-- A054141: T(2n-1,n), array T as in A054134.

Offset 1, canonical program `A054141.P11387286021896505430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A054141 (n : ℕ) : ℤ :=
  A054141.P11387286021896505430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A054141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054429.P11515140416303889102

`A092569(A065190(n+1))`
-/

namespace A054429.P11515140416303889102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A065190 (n + 1)).toNat

end

end A054429.P11515140416303889102

noncomputable section

/-- A054429: Simple self-inverse permutation of natural numbers: list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

Offset 1, canonical program `A054429.P11515140416303889102`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054429 (n : ℕ) : ℤ :=
  A054429.P11515140416303889102.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055064.P8614903045957376733

`A004125(2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055064.P8614903045957376733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (2 ^ (n + 1))

end

end A055064.P8614903045957376733

noncomputable section

/-- A055064: a(n) = A004125(2^n) = A004125(2^n-1).

Offset 1, canonical program `A055064.P8614903045957376733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055064 (n : ℕ) : ℤ :=
  A055064.P8614903045957376733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055064.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055097.P7629506041412364577

`A000005(A055096(n+2))`
-/

namespace A055097.P7629506041412364577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055096 (n + 2)).toNat

end

end A055097.P7629506041412364577

noncomputable section

/-- A055097: Number of divisors for each term in the triangle A055096. It is 2 for primes (all of the form 4k+1).

Offset 1, canonical program `A055097.P7629506041412364577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055097 (n : ℕ) : ℤ :=
  A055097.P7629506041412364577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055210.P13897525650667942629

`∑{d}[n+1, A055615(#)*A337180((n+1)/#)]`
-/

namespace A055210.P13897525650667942629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A337180 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055210.P13897525650667942629

noncomputable section

/-- A055210: Sum of totients of square divisors of n.

Offset 1, canonical program `A055210.P13897525650667942629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055210 (n : ℕ) : ℤ :=
  A055210.P13897525650667942629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055636.P15468858473462785345

`∑[A144494(n+1)]`
-/

namespace A055636.P15468858473462785345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055636.P15468858473462785345

noncomputable section

/-- A055636: Partial sums of A144494.

Offset 1, canonical program `A055636.P15468858473462785345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055636 (n : ℕ) : ℤ :=
  A055636.P15468858473462785345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055636.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A055640.P11694689918486202378`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055640 (n : ℕ) : ℤ :=
  A055640.P11694689918486202378.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055720.P4153619795851742296

`eq[1, (n+2)%(A000005(n+1)+1)]+1`
-/

namespace A055720.P4153619795851742296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000005 (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055720.P4153619795851742296

noncomputable section

/-- A055720: Numbers k such that d(k)+1 | k.

Offset 1, canonical program `A055720.P4153619795851742296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3364 terms. -/
def A055720 (n : ℕ) : ℤ :=
  (A055720.P4153619795851742296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3364 terms. -/
def A055720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055881.P16218723346386416985

`∑{d}[n+1, A012245(#)]`
-/

namespace A055881.P16218723346386416985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A012245 d

end

end A055881.P16218723346386416985

noncomputable section

/-- A055881: a(n) = largest m such that m! divides n.

Offset 1, canonical program `A055881.P16218723346386416985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055881 (n : ℕ) : ℤ :=
  A055881.P16218723346386416985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056166.P4154456828195991417

`record[(n+1)*A293449(n+1)]`
-/

namespace A056166.P4154456828195991417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A293449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A056166.P4154456828195991417

noncomputable section

/-- A056166: Numbers which are the product of distinct primes raised to prime powers.

Offset 1, canonical program `A056166.P4154456828195991417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A056166 (n : ℕ) : ℤ :=
  A056166.P4154456828195991417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A056166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056224.P11237647721291882159

`A000005(n+2)²-A000005(n+1)*A000005(n+3)`
-/

namespace A056224.P11237647721291882159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) ^ 2 - A000005 (n + 1) * A000005 (n + 3)

end

end A056224.P11237647721291882159

noncomputable section

/-- A056224: Image of number of divisors sequence (A000005) under "little Hankel" transform that sends [c_0, c_1, ...] to [d_0, d_1, ...] where d_n = c_n^2 - c_{n+1}*c_{n-1}.

Offset 1, canonical program `A056224.P11237647721291882159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056224 (n : ℕ) : ℤ :=
  A056224.P11237647721291882159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056321.P14643319120034034187

`∑{d}[n+1, A056312(#)*A253206((n+1)/#)]`
-/

namespace A056321.P14643319120034034187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056312 d * A253206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056321.P14643319120034034187

noncomputable section

/-- A056321: Number of primitive (aperiodic) reversible strings with n beads using exactly five different colors.

Offset 1, canonical program `A056321.P14643319120034034187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A056321 (n : ℕ) : ℤ :=
  A056321.P14643319120034034187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A056321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056324.P15857874115330470588

`(A056272(n)+A305751(n))/2`
-/

namespace A056324.P15857874115330470588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056272 n + A305751 n : ℚ) / 2

end

end A056324.P15857874115330470588

noncomputable section

/-- A056324: Number of reversible string structures with n beads using a maximum of five different colors.

Offset 0, canonical program `A056324.P15857874115330470588`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056324 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056324.P15857874115330470588.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056272, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056470.P17206839489425412925

`A056272(∑[char[2*n]])`
-/

namespace A056470.P17206839489425412925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A056470.P17206839489425412925

noncomputable section

/-- A056470: Number of palindromic structures using a maximum of five different symbols.

Offset 1, canonical program `A056470.P17206839489425412925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A056470 (n : ℕ) : ℤ :=
  A056470.P17206839489425412925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A056470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056641.P8807853742238268131

`A305233(abs(1-n)+3)`
-/

namespace A056641.P8807853742238268131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305233 (|1 - (n : ℤ)| + 3).toNat

end

end A056641.P8807853742238268131

noncomputable section

/-- A056641: Least positive integer k for which (b+1)^k is not palindromic in base b, b = 2, 3, 4, ...

Offset 2, canonical program `A056641.P8807853742238268131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A056641 (n : ℕ) : ℤ :=
  A056641.P8807853742238268131.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A056641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056653.P4720559690192011754

`A118742(n)+1`
-/

namespace A056653.P4720559690192011754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n + 1

end

end A056653.P4720559690192011754

noncomputable section

/-- A056653: Composite numbers together with 1 but excluding 4.

Offset 1, canonical program `A056653.P4720559690192011754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056653 (n : ℕ) : ℤ :=
  A056653.P4720559690192011754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056757.P10338499769578600041

`lt[n+1, A000005(n+1)^3]+1`
-/

namespace A056757.P10338499769578600041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A056757.P10338499769578600041

noncomputable section

/-- A056757: Cube of number of divisors is larger than the number.

Offset 1, canonical program `A056757.P10338499769578600041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A056757 (n : ℕ) : ℤ :=
  (A056757.P10338499769578600041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4259 terms. -/
def A056757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056793.P8595197413582490209

`A000005(A003418(n+1))`
-/

namespace A056793.P8595197413582490209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003418 (n + 1)).toNat

end

end A056793.P8595197413582490209

noncomputable section

/-- A056793: Number of divisors of lcm(1..n).

Offset 1, canonical program `A056793.P8595197413582490209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056793 (n : ℕ) : ℤ :=
  A056793.P8595197413582490209.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056924.P8846060015044098494

`floor(A000005(n+1)/2)`
-/

namespace A056924.P8846060015044098494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) / 2⌋

end

end A056924.P8846060015044098494

noncomputable section

/-- A056924: Number of divisors of n that are smaller than sqrt(n).

Offset 1, canonical program `A056924.P8846060015044098494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056924 (n : ℕ) : ℤ :=
  A056924.P8846060015044098494.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057050.P6691171465393059928

`∑[A214848(n)]-A057049(n+1)+1`
-/

namespace A057050.P6691171465393059928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057049 (n + 1) + 1

end

end A057050.P6691171465393059928

noncomputable section

/-- A057050: Let R(i,j) be the rectangle with antidiagonals 1; 2,3; 4,5,6; ...; each k is an R(i(k),j(k)) and A057050(n)=j(n^2).

Offset 1, canonical program `A057050.P6691171465393059928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057050 (n : ℕ) : ℤ :=
  A057050.P6691171465393059928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057094.P5134780784658940036

`A062157(A051162(n))*A284938(n+1)`
-/

namespace A057094.P5134780784658940036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A051162 n).toNat * A284938 (n + 1)

end

end A057094.P5134780784658940036

noncomputable section

/-- A057094: Coefficient triangle for certain polynomials (rising powers).

Offset 0, canonical program `A057094.P5134780784658940036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057094 (n : ℕ) : ℤ :=
  A057094.P5134780784658940036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057104.P15360914800133724793

`comp[A007094(n)]`
-/

namespace A057104.P15360914800133724793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A057104.P15360914800133724793

noncomputable section

/-- A057104: The non-octal numbers: numbers containing an 8 or 9 (they cannot be mistaken for octal numbers).

Offset 1, canonical program `A057104.P15360914800133724793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057104 (n : ℕ) : ℤ :=
  (A057104.P15360914800133724793.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057215.P5065651634132639339

`A026605(A000027(n+1))-1`
-/

namespace A057215.P5065651634132639339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026605 (A000027 (n + 1)).toNat - 1

end

end A057215.P5065651634132639339

noncomputable section

/-- A057215: [1->01, 2->10, 3->01]-transform of 3-symbol Thue-Morse A026600.

Offset 0, canonical program `A057215.P5065651634132639339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057215 (n : ℕ) : ℤ :=
  A057215.P5065651634132639339.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058060.P4447355735283951934

`A001221(A000005(n+1))`
-/

namespace A058060.P4447355735283951934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (n + 1)).toNat

end

end A058060.P4447355735283951934

noncomputable section

/-- A058060: Number of distinct prime factors of d(n), the number of divisors of n.

Offset 1, canonical program `A058060.P4447355735283951934`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058060 (n : ℕ) : ℤ :=
  A058060.P4447355735283951934.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058061.P15238060395017308637

`A001222(A000005(n+1))`
-/

namespace A058061.P15238060395017308637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (n + 1)).toNat

end

end A058061.P15238060395017308637

noncomputable section

/-- A058061: Number of prime factors (counted with multiplicity) of d(n), the number of divisors of n.

Offset 1, canonical program `A058061.P15238060395017308637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058061 (n : ℕ) : ℤ :=
  A058061.P15238060395017308637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A058061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058074.P81869804986245876

`record[(n+1)/gcd(A000005(n+2), A000005(n+1))]`
-/

namespace A058074.P81869804986245876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000005 (n + 2)) (A000005 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P81869804986245876

noncomputable section

/-- A058074: Integers m such that gcd(d(m),d(m+1)) = 1, where d(m) is number of positive divisors of m.

Offset 1, canonical program `A058074.P81869804986245876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A058074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058074.P81869804986245876.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A058074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058298.P11921164029853105158

`A077012(A080036(n+1))`
-/

namespace A058298.P11921164029853105158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (A080036 (n + 1)).toNat

end

end A058298.P11921164029853105158

noncomputable section

/-- A058298: Triangle n!/(n-k), 1 <= k < n, read by rows.

Offset 2, canonical program `A058298.P11921164029853105158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A058298 (n : ℕ) : ℤ :=
  A058298.P11921164029853105158.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A058298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058841.P3157289429620972729

`Δ[eq[1, A058840(n)]]-1`
-/

namespace A058841.P3157289429620972729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A058841.P3157289429620972729

noncomputable section

/-- A058841: From Renyi's "beta expansion of 1 in base 3/2": sequence gives lengths of runs of 0's in A058840.

Offset 0, canonical program `A058841.P3157289429620972729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A058841 (n : ℕ) : ℤ :=
  A058841.P3157289429620972729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A058841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059267.P2704590181977768791

`lt[0, A099475(A028310(n))]`
-/

namespace A059267.P2704590181977768791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099475 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059267.P2704590181977768791

noncomputable section

/-- A059267: Numbers n with 2 divisors d1 and d2 having difference 2: d2 - d1 = 2; equivalently, numbers that are 0 (mod 4) or have a divisor d of the form d = m^2 - 1.

Offset 1, canonical program `A059267.P2704590181977768791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5219 terms. -/
def A059267 (n : ℕ) : ℤ :=
  (A059267.P2704590181977768791.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5219 terms. -/
def A059267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059374.P8362716122805063671

`A007318(n)*A206703(A007401(n+1))`
-/

namespace A059374.P8362716122805063671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A206703 (A007401 (n + 1)).toNat

end

end A059374.P8362716122805063671

noncomputable section

/-- A059374: Triangle read by rows, T(n, k) = Sum_{i=0..n} L'(n, n-i) * binomial(i, k), for k = 0..n-1.

Offset 1, canonical program `A059374.P8362716122805063671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A059374 (n : ℕ) : ℤ :=
  A059374.P8362716122805063671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. -/
def A059374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059389.P7252088712234272494

`A131410(n+1)+a(A083920(n))` with `a(0)=2`
-/

namespace A059389.P7252088712234272494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A131410 (n + 1) + a (A083920 n).toNat

end

end A059389.P7252088712234272494

noncomputable section

/-- A059389: Sums of two nonzero Fibonacci numbers.

Offset 1, canonical program `A059389.P7252088712234272494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059389 (n : ℕ) : ℤ :=
  A059389.P7252088712234272494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059558.P6729229487912804406

`2*A138999(A016993(2*n+1))`
-/

namespace A059558.P6729229487912804406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138999 (A016993 (2 * n + 1)).toNat

end

end A059558.P6729229487912804406

noncomputable section

/-- A059558: Beatty sequence for 1 + 1/gamma^2.

Offset 1, canonical program `A059558.P6729229487912804406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A059558 (n : ℕ) : ℤ :=
  A059558.P6729229487912804406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. -/
def A059558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059603.P16506682477234733057

`∑[A060105(n)]`
-/

namespace A059603.P16506682477234733057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059603.P16506682477234733057

noncomputable section

/-- A059603: Expansion of (1+15*x+15*x^2+x^3)/(1-x)^12.

Offset 0, canonical program `A059603.P16506682477234733057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059603 (n : ℕ) : ℤ :=
  A059603.P16506682477234733057.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060602.P16987508513754279043

`2*A133546(n+2)`
-/

namespace A060602.P16987508513754279043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133546 (n + 2)

end

end A060602.P16987508513754279043

noncomputable section

/-- A060602: Number of tilings of the d-dimensional zonotope constructed from d+3 vectors.

Offset 0, canonical program `A060602.P16987508513754279043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060602 (n : ℕ) : ℤ :=
  A060602.P16987508513754279043.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A133546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060778.P264232021939492228

`gcd(A000005(n+2), A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060778.P264232021939492228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (n + 2)) (A000005 (n + 1))

end

end A060778.P264232021939492228

noncomputable section

/-- A060778: a(n) = gcd(tau(n+1), tau(n)), where tau = A000005.

Offset 1, canonical program `A060778.P264232021939492228`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000005(n+2), A000005(n+1))` (program `A060778.P264232021939492228`, by `A060778.P264232021939492228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A060778 (n : ℕ) : ℤ :=
  (A060778.P264232021939492228.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000005(n+2), A000005(n+1))` (program `A060778.P264232021939492228`, by `A060778.P264232021939492228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A060778.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A060779.P6742782322133404121

`lcm(A000005(n+2), A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060779.P6742782322133404121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 2)) (A000005 (n + 1))

end

end A060779.P6742782322133404121

noncomputable section

/-- A060779: a(n) = lcm(tau(n+1), tau(n)), where tau = A000005.

Offset 1, canonical program `A060779.P6742782322133404121`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A000005(n+2), A000005(n+1))` (program `A060779.P6742782322133404121`, by `A060779.P6742782322133404121.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A060779 (n : ℕ) : ℤ :=
  (A060779.P6742782322133404121.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(A000005(n+2), A000005(n+1))` (program `A060779.P6742782322133404121`, by `A060779.P6742782322133404121.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A060779.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A060833.P4612277402793640164

`eq[0, A073089(2*n+1)]+1`
-/

namespace A060833.P4612277402793640164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060833.P4612277402793640164

noncomputable section

/-- A060833: Separate the natural numbers into disjoint sets A, B with 1 in A, such that the sum of any 2 distinct elements of the same set never equals 2^k + 2. Sequence gives elements of set A.

Offset 1, canonical program `A060833.P4612277402793640164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060833 (n : ℕ) : ℤ :=
  (A060833.P4612277402793640164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060969.P5244792844776780560

`A000720(A017979(n))`
-/

namespace A060969.P5244792844776780560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A017979 n).toNat

end

end A060969.P5244792844776780560

noncomputable section

/-- A060969: Number of cubes of primes <= 2^n.

Offset 0, canonical program `A060969.P5244792844776780560`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017979, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060969 (n : ℕ) : ℤ :=
  A060969.P5244792844776780560.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017979, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060969.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060971.P12339436187900354391

`A000720(A018117(n))`
-/

namespace A060971.P12339436187900354391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018117 n).toNat

end

end A060971.P12339436187900354391

noncomputable section

/-- A060971: Number of fifth powers of primes <= 2^n.

Offset 0, canonical program `A060971.P12339436187900354391`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060971 (n : ℕ) : ℤ :=
  A060971.P12339436187900354391.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061023.P5958186205212772420

`abs(A053187(n)-A201053(n))`
-/

namespace A061023.P5958186205212772420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053187 n - A201053 n|

end

end A061023.P5958186205212772420

noncomputable section

/-- A061023: Difference between the closest square and the closest cube to n.

Offset 0, canonical program `A061023.P5958186205212772420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A201053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061023 (n : ℕ) : ℤ :=
  A061023.P5958186205212772420.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A201053, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061116.P14055420966358378018

`eq[1, gcd(n, A007954(n))]`
-/

namespace A061116.P14055420966358378018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A007954 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A061116.P14055420966358378018

noncomputable section

/-- A061116: Numbers coprime to each of their decimal digits.

Offset 1, canonical program `A061116.P14055420966358378018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A061116 (n : ℕ) : ℤ :=
  (A061116.P14055420966358378018.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A061116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061274.P8702699645916910216

`A071973(n+1)-A071973(n)`
-/

namespace A061274.P8702699645916910216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071973 (n + 1) - A071973 n

end

end A061274.P8702699645916910216

noncomputable section

/-- A061274: Number of primes between Pi^(n-1) and Pi^n.

Offset 1, canonical program `A061274.P8702699645916910216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061274 (n : ℕ) : ℤ :=
  A061274.P8702699645916910216.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061408.P4570989241539993166

`2*(∑[char[A211264(n+1)]]+1)`
-/

namespace A061408.P4570989241539993166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211264 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A061408.P4570989241539993166

noncomputable section

/-- A061408: For each y >= 1 there are only finitely many values of x >= 1 such that x-y and x+y are both positive squares; list all such pairs (x,y) ordered by values of y; sequence gives y values.

Offset 0, canonical program `A061408.P4570989241539993166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061408 (n : ℕ) : ℤ :=
  (A061408.P4570989241539993166.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061446.P13544086601414576898

`∑[A212804(n)]/A105602(n+1)`
-/

namespace A061446.P13544086601414576898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A105602 (n + 1) : ℚ)

end

end A061446.P13544086601414576898

noncomputable section

/-- A061446: Primitive part of Fibonacci(n).

Offset 1, canonical program `A061446.P13544086601414576898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A061446 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061446.P13544086601414576898.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A061446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061496.P15702873449731097200

`gcd(A005101(n+1), A005101(n+2))`
-/

namespace A061496.P15702873449731097200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005101 (n + 1)) (A005101 (n + 2))

end

end A061496.P15702873449731097200

noncomputable section

/-- A061496: a(n) = gcd(abundant(n), abundant(n+1)) where abundant(n) is the n-th abundant number.

Offset 1, canonical program `A061496.P15702873449731097200`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061496 (n : ℕ) : ℤ :=
  (A061496.P15702873449731097200.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061496.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061673.P6703242266188128252

`2*lt[3, A175851(2*n+1)]`
-/

namespace A061673.P6703242266188128252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A061673.P6703242266188128252

noncomputable section

/-- A061673: Even numbers k such that k+1 and k-1 are both composite.

Offset 1, canonical program `A061673.P6703242266188128252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061673 (n : ℕ) : ℤ :=
  (A061673.P6703242266188128252.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061751.P3051654264705780643

`A271345(n+2)-1`
-/

namespace A061751.P3051654264705780643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 2) - 1

end

end A061751.P3051654264705780643

noncomputable section

/-- A061751: Numbers k such that k! is divisible by (k+1)^3.

Offset 1, canonical program `A061751.P3051654264705780643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A061751 (n : ℕ) : ℤ :=
  A061751.P3051654264705780643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A061751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061823.P1878343261154301216

`∩[A007094(n), A008589(n)]`
-/

namespace A061823.P1878343261154301216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061823.P1878343261154301216

noncomputable section

/-- A061823: Multiples of 7 containing only digits 0,...,7.

Offset 1, canonical program `A061823.P1878343261154301216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A061823 (n : ℕ) : ℤ :=
  (A061823.P1878343261154301216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A061823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061824.P7099681490639419618

`∩[8*n, A007095(n)]`
-/

namespace A061824.P7099681490639419618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061824.P7099681490639419618

noncomputable section

/-- A061824: Multiples of 8 containing only the digits 0, ..., 8.

Offset 1, canonical program `A061824.P7099681490639419618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A061824 (n : ℕ) : ℤ :=
  (A061824.P7099681490639419618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1427 terms. -/
def A061824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062011.P17525320077853469406

`2*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062011.P17525320077853469406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

end

end A062011.P17525320077853469406

noncomputable section

/-- A062011: a(n) = 2*tau(n) = 2*A000005(n).

Offset 1, canonical program `A062011.P17525320077853469406`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000005(n+1)` (program `A062011.P17525320077853469406`, by `A062011.P17525320077853469406.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A062011 (n : ℕ) : ℤ :=
  A062011.P17525320077853469406.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000005(n+1)` (program `A062011.P17525320077853469406`, by `A062011.P17525320077853469406.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A062011.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A062052.P7099610489018356514

`record[A115216(A014132(n+2))]`
-/

namespace A062052.P7099610489018356514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115216 (A014132 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062052.P7099610489018356514

noncomputable section

/-- A062052: Numbers with exactly 2 odd integers in their Collatz (or 3x+1) trajectory.

Offset 1, canonical program `A062052.P7099610489018356514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A062052 (n : ℕ) : ℤ :=
  A062052.P7099610489018356514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A062052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062068.P2815547987536140537

`A000005(A000203(n+1))`
-/

namespace A062068.P2815547987536140537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1)).toNat

end

end A062068.P2815547987536140537

noncomputable section

/-- A062068: a(n) = d(sigma(n)), where d(k) is the number of divisors function (A000005) and sigma(k) is the sum of divisor function (A000203).

Offset 1, canonical program `A062068.P2815547987536140537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062068 (n : ℕ) : ℤ :=
  A062068.P2815547987536140537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062069.P14373188164258229122

`A000203(A000005(n+1))`
-/

namespace A062069.P14373188164258229122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (n + 1)).toNat

end

end A062069.P14373188164258229122

noncomputable section

/-- A062069: a(n) = sigma(d(n)), where d(k) is the number of divisors function (A000005) and sigma(k) is the sum of divisors function (A000203).

Offset 1, canonical program `A062069.P14373188164258229122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062069 (n : ℕ) : ℤ :=
  A062069.P14373188164258229122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062249.P5473932307129171226

`n+1+A000005(n+1)`
-/

namespace A062249.P5473932307129171226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000005 (n + 1)

end

end A062249.P5473932307129171226

noncomputable section

/-- A062249: a(n) = n + d(n), where d(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A062249.P5473932307129171226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062249 (n : ℕ) : ℤ :=
  A062249.P5473932307129171226.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062358.P16688096118729418345

`(n+1)!/A000005(n+1)`
-/

namespace A062358.P16688096118729418345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A062358.P16688096118729418345

noncomputable section

/-- A062358: a(n) = n! / d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A062358.P16688096118729418345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062358 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062358.P16688096118729418345.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062558.P7608322866353480072

`A000005(n+1)+A000035(n+1)`
-/

namespace A062558.P7608322866353480072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A000035 (n + 1)

end

end A062558.P7608322866353480072

noncomputable section

/-- A062558: Number of nonisomorphic cyclic subgroups of dihedral group with 2n elements.

Offset 1, canonical program `A062558.P7608322866353480072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062558 (n : ℕ) : ℤ :=
  A062558.P7608322866353480072.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062673.P17258762634191360488

`p?[A011536(A110654(A008486(n)))]`
-/

namespace A062673.P17258762634191360488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (A110654 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062673.P17258762634191360488

noncomputable section

/-- A062673: Every divisor (except 1) contains the digit 6.

Offset 1, canonical program `A062673.P17258762634191360488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A062673 (n : ℕ) : ℤ :=
  A062673.P17258762634191360488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. -/
def A062673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062778.P15711731261721006587

`∑{d}[n+1, A007427(#)*A062774((n+1)/#)]`
-/

namespace A062778.P15711731261721006587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062778.P15711731261721006587

noncomputable section

/-- A062778: Values of Moebius-transform of PrimePi function.

Offset 1, canonical program `A062778.P15711731261721006587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062778 (n : ℕ) : ℤ :=
  A062778.P15711731261721006587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062832.P107409337447898240

`eq[A000005(n+1), A000005(n+3)]+1`
-/

namespace A062832.P107409337447898240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062832.P107409337447898240

noncomputable section

/-- A062832: Numbers k such that k and k+2 have the same number of divisors.

Offset 1, canonical program `A062832.P107409337447898240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6968 terms. -/
def A062832 (n : ℕ) : ℤ :=
  (A062832.P107409337447898240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6968 terms. -/
def A062832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062833.P4238056213169230346

`2*(n+1)!/A000005(n+1)`
-/

namespace A062833.P4238056213169230346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A062833.P4238056213169230346

noncomputable section

/-- A062833: a(n) = 2 * n! / number of divisors of n.

Offset 1, canonical program `A062833.P4238056213169230346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062833 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062833.P4238056213169230346.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062969.P2182184149283088773

`eq[2, A000005(2-A000005(n+1)+n)]+1`
-/

namespace A062969.P2182184149283088773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 - A000005 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062969.P2182184149283088773

noncomputable section

/-- A062969: Numbers k such that abs(d(k)-k-1) is prime, where d(k) is the number of divisors of k.

Offset 1, canonical program `A062969.P2182184149283088773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5201 terms. -/
def A062969 (n : ℕ) : ℤ :=
  (A062969.P2182184149283088773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5201 terms. -/
def A062969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062991.P862635828570248787

`A097807(A061579(n))*A234950(n)`
-/

namespace A062991.P862635828570248787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A234950 n

end

end A062991.P862635828570248787

noncomputable section

/-- A062991: Coefficient triangle for certain polynomials N(2; n,x) (rising powers of x).

Offset 0, canonical program `A062991.P862635828570248787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6720 terms. -/
def A062991 (n : ℕ) : ℤ :=
  A062991.P862635828570248787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6720 terms. -/
def A062991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063005.P5081767072072148156

`A000079(n)-3^A136409(n)`
-/

namespace A063005.P5081767072072148156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) - (3 : ℚ) ^ (A136409 n : ℤ)

end

end A063005.P5081767072072148156

noncomputable section

/-- A063005: Difference between 2^n and the next smaller or equal power of 3.

Offset 0, canonical program `A063005.P5081767072072148156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063005 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063005.P5081767072072148156.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136409, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063038.P10011791712976178041

`A000093(n+1)-A000005(n+1)`
-/

namespace A063038.P10011791712976178041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (n + 1) - A000005 (n + 1)

end

end A063038.P10011791712976178041

noncomputable section

/-- A063038: a(n) = floor(n*sqrt(n)) - d(n), where d(n) is the number of divisors function.

Offset 1, canonical program `A063038.P10011791712976178041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063038 (n : ℕ) : ℤ :=
  A063038.P10011791712976178041.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063375.P4586247262053786237

`A000005(A000045(n+1))`
-/

namespace A063375.P4586247262053786237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000045 (n + 1)).toNat

end

end A063375.P4586247262053786237

noncomputable section

/-- A063375: Number of divisors of Fibonacci(n).

Offset 1, canonical program `A063375.P4586247262053786237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063375 (n : ℕ) : ℤ :=
  A063375.P4586247262053786237.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063440.P18217187952549154344

`A000005((n+1)*(n+2)/2)`
-/

namespace A063440.P18217187952549154344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat

end

end A063440.P18217187952549154344

noncomputable section

/-- A063440: Number of divisors of n-th triangular number.

Offset 1, canonical program `A063440.P18217187952549154344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063440 (n : ℕ) : ℤ :=
  A063440.P18217187952549154344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063446.P12120454612501902942

`eq[2*A000005(n+1), A000005(n+2)]+1`
-/

namespace A063446.P12120454612501902942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A063446.P12120454612501902942

noncomputable section

/-- A063446: Integers m such that d(m+1) = 2*d(m), where d(m) = A000005(m).

Offset 1, canonical program `A063446.P12120454612501902942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4747 terms. -/
def A063446 (n : ℕ) : ℤ :=
  (A063446.P12120454612501902942.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4747 terms. -/
def A063446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063473.P11387380042524476190

`A181587(Δ[n²])`
-/

namespace A063473.P11387380042524476190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A063473.P11387380042524476190

noncomputable section

/-- A063473: a(n) = M(2*n-1), where M(n) is Mertens's function (A002321): Sum_{k=1..n} mu(k), where mu = Moebius function (A008683).

Offset 1, canonical program `A063473.P11387380042524476190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063473 (n : ℕ) : ℤ :=
  A063473.P11387380042524476190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063955.P15955011138369882518

`A034387(n+1)-A034387(A065033(n))`
-/

namespace A063955.P15955011138369882518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A034387 (A065033 n).toNat

end

end A063955.P15955011138369882518

noncomputable section

/-- A063955: Sum of the unitary prime divisors of n!.

Offset 1, canonical program `A063955.P15955011138369882518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063955 (n : ℕ) : ℤ :=
  A063955.P15955011138369882518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063956.P10696679261973728554

`A008472(n+1)-A063958(n+1)`
-/

namespace A063956.P10696679261973728554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A063958 (n + 1)

end

end A063956.P10696679261973728554

noncomputable section

/-- A063956: Sum of the unitary prime divisors of n.

Offset 1, canonical program `A063956.P10696679261973728554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A063958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063956 (n : ℕ) : ℤ :=
  A063956.P10696679261973728554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A063958, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063959.P710531058493753582

`A034387(A000142(n))`
-/

namespace A063959.P710531058493753582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A000142 n).toNat

end

end A063959.P710531058493753582

noncomputable section

/-- A063959: Sum of the primes from 1 to n!.

Offset 0, canonical program `A063959.P710531058493753582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063959 (n : ℕ) : ℤ :=
  A063959.P710531058493753582.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063960.P16738888457334796570

`A034387(n%∑[and(1, n+1)]+1)`
-/

namespace A063960.P16738888457334796570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n % (∑ j ∈ Finset.range (n + 1), f1 j) + 1)

end

end A063960.P16738888457334796570

noncomputable section

/-- A063960: Sum of non-unitary prime divisors of n!: sum of those prime divisors for which the exponent in the prime factorization exceeds 1.

Offset 1, canonical program `A063960.P16738888457334796570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063960 (n : ℕ) : ℤ :=
  A063960.P16738888457334796570.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064310.P3912504138029418483

`(-1)^n*A126983(n)`
-/

namespace A064310.P3912504138029418483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A126983 n

end

end A064310.P3912504138029418483

noncomputable section

/-- A064310: Generalized Catalan numbers C(-1; n).

Offset 0, canonical program `A064310.P3912504138029418483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A064310 (n : ℕ) : ℤ :=
  A064310.P3912504138029418483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A064310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064368.P11239250656650870174

`ceil(A211422(n)/4+n)`
-/

namespace A064368.P11239250656650870174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211422 n : ℚ) / 4 + (n : ℚ)⌉

end

end A064368.P11239250656650870174

noncomputable section

/-- A064368: Number of 2 X 2 symmetric singular matrices with entries from {0,...,n}.

Offset 0, canonical program `A064368.P11239250656650870174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064368 (n : ℕ) : ℤ :=
  A064368.P11239250656650870174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064372.P556679171329570331

`A000005(A000005(∑{e}[n+1, A001221(#)!]!))`
-/

namespace A064372.P556679171329570331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (A001221 (Nat.factorization (f1 n) p)).toNat))).toNat

end

end A064372.P556679171329570331

noncomputable section

/-- A064372: Additive function a(n) defined by the recursive formula a(1)=1 and a(p^k)=a(k) for any prime p.

Offset 1, canonical program `A064372.P556679171329570331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064372 (n : ℕ) : ℤ :=
  A064372.P556679171329570331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064491.P8693567279936684108

`a(n-1)+A000005(a(n-1))` with `a(0)=1`
-/

namespace A064491.P8693567279936684108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000005 (a (n - 1)).toNat

end

end A064491.P8693567279936684108

noncomputable section

/-- A064491: a(1) = 1, a(n+1) = a(n) + tau(a(n)), where tau(n) (A000005) is the number of divisors of n.

Offset 1, canonical program `A064491.P8693567279936684108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7877 terms. -/
def A064491 (n : ℕ) : ℤ :=
  A064491.P8693567279936684108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7877 terms. -/
def A064491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064717.P13793230735173341254

`comp[A064718(n+1)-1]+1`
-/

namespace A064717.P13793230735173341254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064718 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064717.P13793230735173341254

noncomputable section

/-- A064717: A Beatty sequence for 2^i + 2^(-i) where i = sqrt(-1).

Offset 1, canonical program `A064717.P13793230735173341254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064717 (n : ℕ) : ℤ :=
  (A064717.P13793230735173341254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064719.P7995491773970243797

`comp[A064720(n+1)-1]+1`
-/

namespace A064719.P7995491773970243797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064720 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A064719.P7995491773970243797

noncomputable section

/-- A064719: A Beatty sequence for 3^i + 3^-i + 1.

Offset 1, canonical program `A064719.P7995491773970243797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064719 (n : ℕ) : ℤ :=
  (A064719.P7995491773970243797.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064722.P17255395012520951887

`A175851(n+1)-1`
-/

namespace A064722.P17255395012520951887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1) - 1

end

end A064722.P17255395012520951887

noncomputable section

/-- A064722: a(1) = 0; for n >= 2, a(n) = n - (largest prime <= n).

Offset 1, canonical program `A064722.P17255395012520951887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064722 (n : ℕ) : ℤ :=
  A064722.P17255395012520951887.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064805.P13829295626154547422

`lt[A109607(n+2), A109607(n)]`
-/

namespace A064805.P13829295626154547422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064805.P13829295626154547422

noncomputable section

/-- A064805: Numbers k such that phi(k) > phi(k+2).

Offset 1, canonical program `A064805.P13829295626154547422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6849 terms. -/
def A064805 (n : ℕ) : ℤ :=
  (A064805.P13829295626154547422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6849 terms. -/
def A064805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064840.P1031066778155785146

`A000005(n+1)*A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064840.P1031066778155785146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000203 (n + 1)

end

end A064840.P1031066778155785146

noncomputable section

/-- A064840: a(n) = tau(n)*sigma(n).

Offset 1, canonical program `A064840.P1031066778155785146`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000203(n+1)` (program `A064840.P1031066778155785146`, by `A064840.P1031066778155785146.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A064840 (n : ℕ) : ℤ :=
  A064840.P1031066778155785146.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)*A000203(n+1)` (program `A064840.P1031066778155785146`, by `A064840.P1031066778155785146.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A064840.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064866.P4672307026795007307

`A345018(n+1)+1-A074279(n+1)`
-/

namespace A064866.P4672307026795007307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345018 (n + 1) + (1 - A074279 (n + 1))

end

end A064866.P4672307026795007307

noncomputable section

/-- A064866: Write numbers 1, then 1 up to 2^2, then 1 up to 3^2, then 1 up to 4^2 and so on.

Offset 1, canonical program `A064866.P4672307026795007307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064866 (n : ℕ) : ℤ :=
  A064866.P4672307026795007307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064950.P4902822540981006057

`∑{d}[n+1, #*A357938((n+1)/#)]`
-/

namespace A064950.P4902822540981006057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064950.P4902822540981006057

noncomputable section

/-- A064950: a(n) = Sum_{i|n, j|n} lcm(i,j).

Offset 1, canonical program `A064950.P4902822540981006057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064950 (n : ℕ) : ℤ :=
  A064950.P4902822540981006057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065006.P13856800642416821077

`A300154(n+1)+A033638(A135711(n+1))`
-/

namespace A065006.P13856800642416821077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300154 (n + 1) + A033638 (A135711 (n + 1)).toNat

end

end A065006.P13856800642416821077

noncomputable section

/-- A065006: Integers for which the periodic part of the continued fraction for the square root of n begins with 3.

Offset 1, canonical program `A065006.P13856800642416821077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A065006 (n : ℕ) : ℤ :=
  A065006.P13856800642416821077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A065006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065010.P16498944840396974367

`eq[7, A091453(n)]`
-/

namespace A065010.P16498944840396974367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065010.P16498944840396974367

noncomputable section

/-- A065010: Integers for which the periodic part of the continued fraction for the square root of n begins with 7.

Offset 1, canonical program `A065010.P16498944840396974367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A065010 (n : ℕ) : ℤ :=
  (A065010.P16498944840396974367.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A065010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065011.P17167326907996405947

`eq[8, A091453(n)]`
-/

namespace A065011.P17167326907996405947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065011.P17167326907996405947

noncomputable section

/-- A065011: Integers for which the periodic part of the continued fraction for the square root of n begins with 8.

Offset 1, canonical program `A065011.P17167326907996405947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A065011 (n : ℕ) : ℤ :=
  (A065011.P17167326907996405947.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A065011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065012.P14673952544101312650

`eq[9, A091453(n)]`
-/

namespace A065012.P14673952544101312650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065012.P14673952544101312650

noncomputable section

/-- A065012: Integers for which the periodic part of the continued fraction for the square root of n begins with 9.

Offset 1, canonical program `A065012.P14673952544101312650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A065012 (n : ℕ) : ℤ :=
  (A065012.P14673952544101312650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A065012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065096.P13759543189893559780

`A057427(n)*A110440(A000124(n))`
-/

namespace A065096.P13759543189893559780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A110440 (A000124 n).toNat

end

end A065096.P13759543189893559780

noncomputable section

/-- A065096: Sums of lists produced by a variant of the iteration that produces the Catalan numbers: start with 0 and at each iteration replace each integer k with the list 0,1,...,k-1,k,k+1,k,k-1,...,1,0 and let a(n) be the sum of the resulting (flattened) list after n iterations.

Offset 0, canonical program `A065096.P13759543189893559780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A065096 (n : ℕ) : ℤ :=
  A065096.P13759543189893559780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A065096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065367.P971973594092129975

`A065369(Δ[n²])-A065369(n)`
-/

namespace A065367.P971973594092129975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A065369 n

end

end A065367.P971973594092129975

noncomputable section

/-- A065367: Replace 3^k with (-3)^k in balanced ternary expansion of n.

Offset 1, canonical program `A065367.P971973594092129975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065367 (n : ℕ) : ℤ :=
  A065367.P971973594092129975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9841 terms. -/
def A065367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065497.P12696224305831479734

`2^n-A065494(n)`
-/

namespace A065497.P12696224305831479734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A065494 n

end

end A065497.P12696224305831479734

noncomputable section

/-- A065497: Number of (binary) bit strings of length n having at least one even length block of 0's followed by an even length block of 1's.

Offset 0, canonical program `A065497.P12696224305831479734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065497 (n : ℕ) : ℤ :=
  A065497.P12696224305831479734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065608.P12445239359989980431

`A000203(n+1)-A000005(n+1)`
-/

namespace A065608.P12445239359989980431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000005 (n + 1)

end

end A065608.P12445239359989980431

noncomputable section

/-- A065608: Sum of divisors of n minus the number of divisors of n.

Offset 1, canonical program `A065608.P12445239359989980431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065608 (n : ℕ) : ℤ :=
  A065608.P12445239359989980431.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065680.P1696660172782244765

`∑[round(acot(A077648(n+1)))]`
-/

namespace A065680.P1696660172782244765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A077648 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065680.P1696660172782244765

noncomputable section

/-- A065680: Number of primes <= prime(n) which begin with a 1.

Offset 1, canonical program `A065680.P1696660172782244765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065680 (n : ℕ) : ℤ :=
  A065680.P1696660172782244765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065682.P15404421544339977332

`∑[(4%A077648(n+1))%4]`
-/

namespace A065682.P15404421544339977332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod 4 (A077648 (n + 1))) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065682.P15404421544339977332

noncomputable section

/-- A065682: Number of primes <= prime(n) which begin with a 3.

Offset 1, canonical program `A065682.P15404421544339977332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065682 (n : ℕ) : ℤ :=
  A065682.P15404421544339977332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065684.P16389121019470855818

`∑[val(A077648(n+1), 5)]`
-/

namespace A065684.P16389121019470855818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077648 (n + 1)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065684.P16389121019470855818

noncomputable section

/-- A065684: Number of primes <= prime(n) which begin with a 5.

Offset 1, canonical program `A065684.P16389121019470855818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065684 (n : ℕ) : ℤ :=
  (A065684.P16389121019470855818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065685.P897262154083078228

`∑[val(A077648(n+1), 6)]`
-/

namespace A065685.P897262154083078228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077648 (n + 1)).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065685.P897262154083078228

noncomputable section

/-- A065685: Number of primes <= prime(n) which begin with a 6.

Offset 1, canonical program `A065685.P897262154083078228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065685 (n : ℕ) : ℤ :=
  (A065685.P897262154083078228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065686.P3443444841372550912

`∑[val(A077648(n+1), 7)]`
-/

namespace A065686.P3443444841372550912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077648 (n + 1)).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065686.P3443444841372550912

noncomputable section

/-- A065686: Number of primes <= prime(n) which begin with a 7.

Offset 1, canonical program `A065686.P3443444841372550912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065686 (n : ℕ) : ℤ :=
  (A065686.P3443444841372550912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065687.P2261015865180936265

`∑[val(A077648(n+1), 8)]`
-/

namespace A065687.P2261015865180936265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A077648 (n + 1)).toNat 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065687.P2261015865180936265

noncomputable section

/-- A065687: Number of primes <= prime(n) which begin with an 8.

Offset 1, canonical program `A065687.P2261015865180936265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065687 (n : ℕ) : ℤ :=
  (A065687.P2261015865180936265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065814.P17060691313472206262

`A000005(n+1)²-A000005((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065814.P17060691313472206262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 - A000005 ((n + 1) ^ 2)

end

end A065814.P17060691313472206262

noncomputable section

/-- A065814: a(n) = tau(n)^2 - tau(n^2), where tau(n) = A000005(n).

Offset 1, canonical program `A065814.P17060691313472206262`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²-A000005((n+1)²)` (program `A065814.P17060691313472206262`, by `A065814.P17060691313472206262.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065814 (n : ℕ) : ℤ :=
  A065814.P17060691313472206262.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²-A000005((n+1)²)` (program `A065814.P17060691313472206262`, by `A065814.P17060691313472206262.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065814.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066038.P15086675894489846112

`∩[A114522(n+1), A275665(n+1)]`
-/

namespace A066038.P15086675894489846112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066038.P15086675894489846112

noncomputable section

/-- A066038: Numbers with at least two prime factors such that the sum of the prime factors is prime.

Offset 1, canonical program `A066038.P15086675894489846112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A066038 (n : ℕ) : ℤ :=
  (A066038.P15086675894489846112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2252 terms. -/
def A066038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066355.P2910643592321595961

`A066577(A055471(n+1))`
-/

namespace A066355.P2910643592321595961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066577 (A055471 (n + 1)).toNat

end

end A066355.P2910643592321595961

noncomputable section

/-- A066355: A055471(n)/(product of nonzero digits of A055471(n)).

Offset 1, canonical program `A066355.P2910643592321595961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A066355 (n : ℕ) : ℤ :=
  A066355.P2910643592321595961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 292 terms. -/
def A066355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066446.P5739828571146208619

`A000217(A000005(n+1)-1)`
-/

namespace A066446.P5739828571146208619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1) - 1).toNat

end

end A066446.P5739828571146208619

noncomputable section

/-- A066446: Number of unordered divisor pairs of n.

Offset 1, canonical program `A066446.P5739828571146208619`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066446 (n : ℕ) : ℤ :=
  A066446.P5739828571146208619.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066518.P12709718911375413060

`-Δ[A161116(abs(1-n))]`
-/

namespace A066518.P12709718911375413060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161116 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A066518.P12709718911375413060

noncomputable section

/-- A066518: Anti-divisor class sums of n.

Offset 1, canonical program `A066518.P12709718911375413060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066518 (n : ℕ) : ℤ :=
  A066518.P12709718911375413060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066620.P11508911738246050856

`(A000005((n+1)^3)-3*A000005(n+1)+2)/6`
-/

namespace A066620.P11508911738246050856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) ^ 3) - 3 * A000005 (n + 1) + 2 : ℚ) / 6

end

end A066620.P11508911738246050856

noncomputable section

/-- A066620: Number of unordered triples of distinct pairwise coprime divisors of n.

Offset 1, canonical program `A066620.P11508911738246050856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066620 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066620.P11508911738246050856.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066640.P6323078218630825378

`eq[1, and(1, A190997(n+1))]+1`
-/

namespace A066640.P6323078218630825378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A190997 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066640.P6323078218630825378

noncomputable section

/-- A066640: Numbers such that all divisors have only odd digits.

Offset 1, canonical program `A066640.P6323078218630825378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A066640 (n : ℕ) : ℤ :=
  (A066640.P6323078218630825378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. -/
def A066640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066660.P17487963968517902439

`A069930(n+1)+1`
-/

namespace A066660.P17487963968517902439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) + 1

end

end A066660.P17487963968517902439

noncomputable section

/-- A066660: Number of divisors of 2n excluding 1.

Offset 1, canonical program `A066660.P17487963968517902439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066660 (n : ℕ) : ℤ :=
  A066660.P17487963968517902439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069930, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066728.P7235498834417940186

`A000005((n+1)*(n+3))/2-1`
-/

namespace A066728.P7235498834417940186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 ((n + 1) * (n + 3)) : ℚ) / 2 - 1

end

end A066728.P7235498834417940186

noncomputable section

/-- A066728: a(n) is the number of integers of the form (n+k+n*k)/(n-k) for k = 1,2,...,n-1.

Offset 1, canonical program `A066728.P7235498834417940186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066728 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066728.P7235498834417940186.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066760.P15906391362368166906

`1+A067392(n+1)-A000203(n+1)`
-/

namespace A066760.P15906391362368166906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A067392 (n + 1) - A000203 (n + 1)

end

end A066760.P15906391362368166906

noncomputable section

/-- A066760: a(n) = Sum_{1<=k<=n, k is not a divisor of n and k is not coprime to n} k.

Offset 1, canonical program `A066760.P15906391362368166906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066760 (n : ℕ) : ℤ :=
  A066760.P15906391362368166906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067392, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066843.P18056148427984289734

`a(n-1)*A000005(n)` with `a(0)=1`
-/

namespace A066843.P18056148427984289734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000005 n

end

end A066843.P18056148427984289734

noncomputable section

/-- A066843: a(n) = Product_{k=1..n} d(k); d(k) = A000005(k) is the number of positive divisors of k.

Offset 0, canonical program `A066843.P18056148427984289734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066843 (n : ℕ) : ℤ :=
  A066843.P18056148427984289734.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067274.P8254854340625410811

`a(n-1)+2*(A000005(n)+1)+A010052(n)` with `a(0)=1, a(1)=4`
-/

namespace A067274.P8254854340625410811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + 2 * (A000005 n + 1) + A010052 n

end

end A067274.P8254854340625410811

noncomputable section

/-- A067274: Number of ordered integer pairs (b,c), with -n<=b<=n, -n<=c<=n, such that both roots of x^2+bx+c=0 are integers.

Offset 0, canonical program `A067274.P8254854340625410811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067274 (n : ℕ) : ℤ :=
  A067274.P8254854340625410811.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067292.P1668061141920978615

`A000040(n+1)-(n+1)*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067292.P1668061141920978615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n + 1 : ℤ) * A000005 (n + 1)

end

end A067292.P1668061141920978615

noncomputable section

/-- A067292: a(n) = prime(n)-n*tau(n) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A067292.P1668061141920978615`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-(n+1)*A000005(n+1)` (program `A067292.P1668061141920978615`, by `A067292.P1668061141920978615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A067292 (n : ℕ) : ℤ :=
  A067292.P1668061141920978615.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)-(n+1)*A000005(n+1)` (program `A067292.P1668061141920978615`, by `A067292.P1668061141920978615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A067292.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067340.P7171830791748777074

`eq[1, A088530(n+2)]+2`
-/

namespace A067340.P7171830791748777074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A067340.P7171830791748777074

noncomputable section

/-- A067340: Numbers k such that (number of distinct prime factors of k) divides (number of prime factors of k).

Offset 1, canonical program `A067340.P7171830791748777074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6905 terms. -/
def A067340 (n : ℕ) : ℤ :=
  (A067340.P7171830791748777074.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6905 terms. -/
def A067340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067436.P3160659514685204136

`2*A004125(n+1)`
-/

namespace A067436.P3160659514685204136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004125 (n + 1)

end

end A067436.P3160659514685204136

noncomputable section

/-- A067436: a(n) = sum of all the remainders when n-th even number is divided by even numbers < 2n.

Offset 1, canonical program `A067436.P3160659514685204136`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067436 (n : ℕ) : ℤ :=
  A067436.P3160659514685204136.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067436.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067439.P11811676257442922889

`∑{d}[n+1, A004125(#)*A055615((n+1)/#)]`
-/

namespace A067439.P11811676257442922889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004125 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067439.P11811676257442922889

noncomputable section

/-- A067439: a(n) = sum of all the remainders when n is divided by positive integers less than and coprime to n.

Offset 1, canonical program `A067439.P11811676257442922889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067439 (n : ℕ) : ℤ :=
  A067439.P11811676257442922889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067532.P15581183791114753305

`record[(n+1)/A001222(A000005(n+1)+n+1)]`
-/

namespace A067532.P15581183791114753305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A000005 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067532.P15581183791114753305

noncomputable section

/-- A067532: Numbers k such that k + number of divisors of k is a prime.

Offset 1, canonical program `A067532.P15581183791114753305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8651 terms. -/
def A067532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067532.P15581183791114753305.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8651 terms. -/
def A067532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067656.P6610012476319395165

`A166602(n+2)`
-/

namespace A067656.P6610012476319395165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 2)

end

end A067656.P6610012476319395165

noncomputable section

/-- A067656: Numbers n such that n!*B(2n) is an integer, where B(2n) are the Bernoulli numbers.

Offset 1, canonical program `A067656.P6610012476319395165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. -/
def A067656 (n : ℕ) : ℤ :=
  A067656.P6610012476319395165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. -/
def A067656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067775.P8759455663766693638

`p?[A156037(n+1)+A005171(A175221(n+1))]`
-/

namespace A067775.P8759455663766693638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) + A005171 (A175221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A067775.P8759455663766693638

noncomputable section

/-- A067775: Primes p such that p + 4 is composite.

Offset 1, canonical program `A067775.P8759455663766693638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5682 terms. -/
def A067775 (n : ℕ) : ℤ :=
  A067775.P8759455663766693638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5682 terms. -/
def A067775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068050.P2800692697421074325

`A013939(n+1)-∑[A072627(n+1)]`
-/

namespace A068050.P2800692697421074325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068050.P2800692697421074325

noncomputable section

/-- A068050: Number of values of k, 1<=k<=n, for which floor(n/k) is prime.

Offset 1, canonical program `A068050.P2800692697421074325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068050 (n : ℕ) : ℤ :=
  A068050.P2800692697421074325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068497.P16499874508488581460

`p?[lt[A175851(n+2), A175851(2*n+1)]]`
-/

namespace A068497.P16499874508488581460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068497.P16499874508488581460

noncomputable section

/-- A068497: Primes p such that 2*p+1 and 2*p-1 are composites.

Offset 1, canonical program `A068497.P16499874508488581460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. -/
def A068497 (n : ℕ) : ℤ :=
  (A068497.P16499874508488581460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1755 terms. -/
def A068497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068526.P8816428566634844446

`eq[A000005(n+1), A001223(n+1)]+1`
-/

namespace A068526.P8816428566634844446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068526.P8816428566634844446

noncomputable section

/-- A068526: Numbers n such that prime(n+1)-prime(n) = tau(n) = A000005(n).

Offset 1, canonical program `A068526.P8816428566634844446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4175 terms. -/
def A068526 (n : ℕ) : ℤ :=
  (A068526.P8816428566634844446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4175 terms. -/
def A068526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068903.P12295161243239988693

`C(A000005(n+1), A001221(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068903.P12295161243239988693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1)).toNat (A001221 (n + 1)).toNat

end

end A068903.P12295161243239988693

noncomputable section

/-- A068903: Binomial(tau(n),omega(n)), where tau(n) is the number of divisors of n (A000005) and omega the number of distinct prime factors (A001221).

Offset 1, canonical program `A068903.P12295161243239988693`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068903 (n : ℕ) : ℤ :=
  (A068903.P12295161243239988693.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068904.P11299921973537422911

`C(A000203(n+1), A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068904.P11299921973537422911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000203 (n + 1)).toNat (A000005 (n + 1)).toNat

end

end A068904.P11299921973537422911

noncomputable section

/-- A068904: a(n) = binomial(sigma(n),tau(n)), where sigma(n) is the sum and tau(n) the number of divisors of n (A000203, A000005).

Offset 1, canonical program `A068904.P11299921973537422911`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000203(n+1), A000005(n+1))` (program `A068904.P11299921973537422911`, by `A068904.P11299921973537422911.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A068904 (n : ℕ) : ℤ :=
  (A068904.P11299921973537422911.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000203(n+1), A000005(n+1))` (program `A068904.P11299921973537422911`, by `A068904.P11299921973537422911.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A068904.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069067.P5386481408011505101

`eq[A007913(A000005(n+1)), A007913(n+1)]+1`
-/

namespace A069067.P5386481408011505101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069067.P5386481408011505101

noncomputable section

/-- A069067: Numbers k such that k*tau(k) is a perfect square.

Offset 1, canonical program `A069067.P5386481408011505101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A069067 (n : ℕ) : ℤ :=
  (A069067.P5386481408011505101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A069067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069141.P16616877968455605190

`(n+2)!/(n+1)^(A000005(n+1)-2)`
-/

namespace A069141.P16616877968455605190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) / (n + 1 : ℚ) ^ (A000005 (n + 1) - 2 : ℤ)

end

end A069141.P16616877968455605190

noncomputable section

/-- A069141: a(n) = n^2*(n+1)!/(n^tau(n)) where tau(n) is the number of divisors of n.

Offset 1, canonical program `A069141.P16616877968455605190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069141 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069141.P16616877968455605190.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069141.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069152.P15886533522229236481

`(n+1)!-(n+2)^A000005(n+2)/(n+2)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069152.P15886533522229236481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) - (n + 2 : ℚ) ^ (A000005 (n + 2) : ℤ) / ((n + 2) ^ 2 : ℚ)

end

end A069152.P15886533522229236481

noncomputable section

/-- A069152: a(n) = (n-1)!-n^tau(n)/n^2.

Offset 2, canonical program `A069152.P15886533522229236481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069152.P15886533522229236481.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069230.P4570500113169538551

`A000720(A000005(n+1)²+n)-A000720(n+1)`
-/

namespace A069230.P4570500113169538551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000005 (n + 1) ^ 2 + (n : ℤ)).toNat - A000720 (n + 1)

end

end A069230.P4570500113169538551

noncomputable section

/-- A069230: Number of primes p such that n < p < n + tau(n)^2 where tau(n) = A000005(n).

Offset 1, canonical program `A069230.P4570500113169538551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069230 (n : ℕ) : ℤ :=
  A069230.P4570500113169538551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069264.P13901458901501386413

`A000005(n+1)*A001222(n+1)/2`
-/

namespace A069264.P13901458901501386413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A001222 (n + 1) : ℚ) / 2

end

end A069264.P13901458901501386413

noncomputable section

/-- A069264: Inverse Moebius transform of bigomega(n).

Offset 1, canonical program `A069264.P13901458901501386413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069264.P13901458901501386413.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069348.P4647406691888658330

`p?[A337455(n+1)]`
-/

namespace A069348.P4647406691888658330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069348.P4647406691888658330

noncomputable section

/-- A069348: Primes of the form k + Omega(k), where Omega(k) is the number of prime factors of k, A001222(k).

Offset 1, canonical program `A069348.P4647406691888658330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A069348 (n : ℕ) : ℤ :=
  A069348.P4647406691888658330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A069348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069553.P833839346037670753

`(n+1)*(n+1-A000005(n+1)+1)`
-/

namespace A069553.P833839346037670753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A000005 (n + 1) + 1)

end

end A069553.P833839346037670753

noncomputable section

/-- A069553: Define S(k) to be the sequence of divisors and multiples of k, e.g. S(1) = 1,2,3,4,5... S(2) = 1,2,4,6,8,10,... S(10) = 1,2,5,10,20,30,40,50,...; a(n) = n-th term of the n-th sequence S(n).

Offset 1, canonical program `A069553.P833839346037670753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069553 (n : ℕ) : ℤ :=
  A069553.P833839346037670753.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069623.P16188465153472375596

`A076411(n+2)`
-/

namespace A069623.P16188465153472375596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (n + 2)

end

end A069623.P16188465153472375596

noncomputable section

/-- A069623: Number of perfect powers <= n.

Offset 1, canonical program `A069623.P16188465153472375596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069623 (n : ℕ) : ℤ :=
  A069623.P16188465153472375596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069626.P14114950081823336595

`∑{d}[n+1, A007427(#)*A347405((n+1)/#)]`
-/

namespace A069626.P14114950081823336595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A347405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069626.P14114950081823336595

noncomputable section

/-- A069626: Number of sets of integers larger than one whose least common multiple is n.

Offset 1, canonical program `A069626.P14114950081823336595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069626 (n : ℕ) : ℤ :=
  A069626.P14114950081823336595.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069780.P15483284136396145549

`gcd(A000005((n+1)^3), A000005(n+1))`
-/

namespace A069780.P15483284136396145549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 ((n + 1) ^ 3)) (A000005 (n + 1))

end

end A069780.P15483284136396145549

noncomputable section

/-- A069780: a(n) = gcd(d(n^3), d(n)).

Offset 1, canonical program `A069780.P15483284136396145549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069780 (n : ℕ) : ℤ :=
  (A069780.P15483284136396145549.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069977.P573260272244437111

`eq[1, A379971(n+1)]`
-/

namespace A069977.P573260272244437111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069977.P573260272244437111

noncomputable section

/-- A069977: Numbers k such that k and k+2 are squarefree.

Offset 1, canonical program `A069977.P573260272244437111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069977 (n : ℕ) : ℤ :=
  (A069977.P573260272244437111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070011.P608421611522145988

`lt[1, A088530(n+2)]+2`
-/

namespace A070011.P608421611522145988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A070011.P608421611522145988

noncomputable section

/-- A070011: Numbers n such that number of prime factors divided by the number of distinct prime factors is not an integer.

Offset 1, canonical program `A070011.P608421611522145988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3095 terms. -/
def A070011 (n : ℕ) : ℤ :=
  (A070011.P608421611522145988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3095 terms. -/
def A070011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070043.P2240004718848674346

`lt[2, A359309(n+1)]`
-/

namespace A070043.P2240004718848674346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070043.P2240004718848674346

noncomputable section

/-- A070043: Numbers of the form 6*j*k+j+k for positive integers j and k.

Offset 1, canonical program `A070043.P2240004718848674346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4477 terms. -/
def A070043 (n : ℕ) : ℤ :=
  (A070043.P2240004718848674346.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4477 terms. -/
def A070043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070098.P11418208378011695116

`A059169(n+1)-A070106(n+1)`
-/

namespace A070098.P11418208378011695116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) - A070106 (n + 1)

end

end A070098.P11418208378011695116

noncomputable section

/-- A070098: Number of integer triangles with perimeter n which are acute and isosceles.

Offset 1, canonical program `A070098.P11418208378011695116`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070098 (n : ℕ) : ℤ :=
  A070098.P11418208378011695116.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070106, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070098.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070537.P519828097946199931

`record[C(n+1, A340363(n+1)+n)]`
-/

namespace A070537.P519828097946199931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A340363 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070537.P519828097946199931

noncomputable section

/-- A070537: Numbers k such that the k-th cyclotomic polynomial has more terms than the largest prime factor of k.

Offset 1, canonical program `A070537.P519828097946199931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070537 (n : ℕ) : ℤ :=
  (A070537.P519828097946199931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070776.P10943609566453861141

`eq[1, A340363(n+2)]+2`
-/

namespace A070776.P10943609566453861141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A070776.P10943609566453861141

noncomputable section

/-- A070776: Numbers k such that number of terms in the k-th cyclotomic polynomial is equal to the largest prime factor of k.

Offset 1, canonical program `A070776.P10943609566453861141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070776 (n : ℕ) : ℤ :=
  (A070776.P10943609566453861141.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070992.P10139312046146458352

`∑[abs(Δ[A007729(n)])]`
-/

namespace A070992.P10139312046146458352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070992.P10139312046146458352

noncomputable section

/-- A070992: Partial sums of A002487.

Offset 0, canonical program `A070992.P10139312046146458352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070992 (n : ℕ) : ℤ :=
  A070992.P10139312046146458352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071026.P2916990353363770740

`A071027(A061579(n))`
-/

namespace A071026.P2916990353363770740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071027 (A061579 n).toNat

end

end A071026.P2916990353363770740

noncomputable section

/-- A071026: Triangle read by rows giving successive states of cellular automaton generated by "Rule 188".

Offset 0, canonical program `A071026.P2916990353363770740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A071026 (n : ℕ) : ℤ :=
  A071026.P2916990353363770740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A071026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071108.P11210016546691817073

`A000005(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A071108.P11210016546691817073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000005 (n + 1) * a (n - 1) + a (n - 2)

end

end A071108.P11210016546691817073

noncomputable section

/-- A071108: CONTINUANT transform of {d(n)}, 1, 2, 2, 3, 2, 4, ... (A000005).

Offset 1, canonical program `A071108.P11210016546691817073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071108 (n : ℕ) : ℤ :=
  A071108.P11210016546691817073.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071186.P1213708103561543319

`eq[2, A000005(A022457(n+1))]+1`
-/

namespace A071186.P1213708103561543319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022457 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071186.P1213708103561543319

noncomputable section

/-- A071186: Numbers k such that prime(2*k)-2*prime(k) is prime.

Offset 1, canonical program `A071186.P1213708103561543319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A071186 (n : ℕ) : ℤ :=
  (A071186.P1213708103561543319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. -/
def A071186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071415.P1186602952399303221

`A033638(A083479(n)+1+n)+n`
-/

namespace A071415.P1186602952399303221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 n + 1 + (n : ℤ)).toNat + (n : ℤ)

end

end A071415.P1186602952399303221

noncomputable section

/-- A071415: Maximal m such that all numbers in [0,m] are expressible as a*b + c with a + c <= n, b <= n and a,b,c nonnegative integers.

Offset 1, canonical program `A071415.P1186602952399303221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4513 terms. -/
def A071415 (n : ℕ) : ℤ :=
  A071415.P1186602952399303221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4513 terms. -/
def A071415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071718.P1631232272951733655

`A099376(n)+A071721(n)`
-/

namespace A071718.P1631232272951733655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071721 n

end

end A071718.P1631232272951733655

noncomputable section

/-- A071718: Expansion of (1+x^2*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071718.P1631232272951733655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071718 (n : ℕ) : ℤ :=
  A071718.P1631232272951733655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071728.P8013549024474898456

`A099376(n)+A071731(n)`
-/

namespace A071728.P8013549024474898456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071731 n

end

end A071728.P8013549024474898456

noncomputable section

/-- A071728: Expansion of (1+x^3*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071728.P8013549024474898456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071728 (n : ℕ) : ℤ :=
  A071728.P8013549024474898456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071747.P16063353787672862217

`A071731(A289207(n+1))+A000245(n)`
-/

namespace A071747.P16063353787672862217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071731 (A289207 (n + 1)).toNat + A000245 n

end

end A071747.P16063353787672862217

noncomputable section

/-- A071747: Expansion of (1+x^4*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071747.P16063353787672862217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071747 (n : ℕ) : ℤ :=
  A071747.P16063353787672862217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071831.P2153084829713789991

`A071832(n)/24*A071833(n)`
-/

namespace A071831.P2153084829713789991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071832 n : ℚ) / 24 * (A071833 n : ℚ)

end

end A071831.P2153084829713789991

noncomputable section

/-- A071831: Frequency ratios for notes of C-major scale starting at c = 1 (numerators).

Offset 0, canonical program `A071831.P2153084829713789991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A071831 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071831.P2153084829713789991.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A071831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071941.P10099421233231050487

`eq[Δ[A065357(n)], A323547(n+1)]+1`
-/

namespace A071941.P10099421233231050487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A071941.P10099421233231050487

noncomputable section

/-- A071941: Nonprimes for which floor(2^n/n) is even.

Offset 1, canonical program `A071941.P10099421233231050487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5826 terms. -/
def A071941 (n : ℕ) : ℤ :=
  (A071941.P10099421233231050487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5826 terms. -/
def A071941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072048.P3004576775245362888

`A000005(A005117(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072048.P3004576775245362888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005117 (n + 1)).toNat

end

end A072048.P3004576775245362888

noncomputable section

/-- A072048: Number of divisors of the squarefree numbers: tau(A005117(n)).

Offset 1, canonical program `A072048.P3004576775245362888`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072048 (n : ℕ) : ℤ :=
  A072048.P3004576775245362888.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072056.P13940639996211056336

`A000005(A072055(n+1))`
-/

namespace A072056.P13940639996211056336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072055 (n + 1)).toNat

end

end A072056.P13940639996211056336

noncomputable section

/-- A072056: Number of divisors of 2*prime(n)+1.

Offset 1, canonical program `A072056.P13940639996211056336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072056 (n : ℕ) : ℤ :=
  A072056.P13940639996211056336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072284.P10214590110291181418

`record[A007913(A105570(n)+1)]`
-/

namespace A072284.P10214590110291181418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A105570 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072284.P10214590110291181418

noncomputable section

/-- A072284: Numbers k begins a new chain of squarefree integers. I.e., k is squarefree but k-1 is not.

Offset 1, canonical program `A072284.P10214590110291181418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072284 (n : ℕ) : ℤ :=
  A072284.P10214590110291181418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072391.P4293839543337263031

`A182082(n+1)+∑[∏{p}[n+1, #^val(n+1, #²)]-1]`
-/

namespace A072391.P4293839543337263031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182082 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072391.P4293839543337263031

noncomputable section

/-- A072391: D2(n,n) = Sum_{1<=k<=n} (d_n(k^2)), where d_a(k^2)=card{d: d|k and 1<=d<=a} for real a.

Offset 1, canonical program `A072391.P4293839543337263031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072391 (n : ℕ) : ℤ :=
  A072391.P4293839543337263031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072437.P9080563627844174689

`lt[A140211(n+1), 2]+1`
-/

namespace A072437.P9080563627844174689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140211 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P9080563627844174689

noncomputable section

/-- A072437: Numbers with no prime factors of form 4*k+3.

Offset 1, canonical program `A072437.P9080563627844174689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A072437 (n : ℕ) : ℤ :=
  (A072437.P9080563627844174689.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. -/
def A072437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072442.P9458739971674614714

`A055642(A211422(2*n+1))+n`
-/

namespace A072442.P9458739971674614714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A211422 (2 * n + 1)).toNat + (n : ℤ)

end

end A072442.P9458739971674614714

noncomputable section

/-- A072442: Least k such that Sum_{i=1..k} cos(1/sqrt(i)) > n.

Offset 0, canonical program `A072442.P9458739971674614714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A072442 (n : ℕ) : ℤ :=
  A072442.P9458739971674614714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A072442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072461.P3037339602671730277

`A028982(eq[1, A152677(n+1)%4]+1)`
-/

namespace A072461.P3037339602671730277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152677 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072461.P3037339602671730277

noncomputable section

/-- A072461: Numbers k such that sigma(k) == 1 (mod 4).

Offset 1, canonical program `A072461.P3037339602671730277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. -/
def A072461 (n : ℕ) : ℤ :=
  A072461.P3037339602671730277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. -/
def A072461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072462.P1277985972236002111

`A028982(eq[3, A152677(n+1)%4]+1)`
-/

namespace A072462.P1277985972236002111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152677 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072462.P1277985972236002111

noncomputable section

/-- A072462: Numbers k such that sigma(k) == 3 (mod 4).

Offset 1, canonical program `A072462.P1277985972236002111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5105 terms. -/
def A072462 (n : ℕ) : ℤ :=
  A072462.P1277985972236002111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5105 terms. -/
def A072462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072614.P16482730328586580813

`2*A111775(n+1)+3-a(n-1)` with `a(0)=1`
-/

namespace A072614.P16482730328586580813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A111775 (n + 1) + (3 - a (n - 1))

end

end A072614.P16482730328586580813

noncomputable section

/-- A072614: a(n) = Sum_{k = 1..n} (-1)^(n reduced mod k).

Offset 1, canonical program `A072614.P16482730328586580813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072614 (n : ℕ) : ℤ :=
  A072614.P16482730328586580813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072628.P15487048248922606126

`A000005(n+1)-A072627(n+1)`
-/

namespace A072628.P15487048248922606126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A072627 (n + 1)

end

end A072628.P15487048248922606126

noncomputable section

/-- A072628: Number of divisors d of n such that d-1 is not prime.

Offset 1, canonical program `A072628.P15487048248922606126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072628 (n : ℕ) : ℤ :=
  A072628.P15487048248922606126.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072628.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072675.P8953100869094184126

`eq[A082116(n), A101443(n)]`
-/

namespace A072675.P8953100869094184126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P8953100869094184126

noncomputable section

/-- A072675: Integers m such that the last digit of Fibonacci(m) is 1.

Offset 1, canonical program `A072675.P8953100869094184126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A072675 (n : ℕ) : ℤ :=
  (A072675.P8953100869094184126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A072675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072683.P17274139737255269736

`eq[A101443(n)+2, A082116(n)]`
-/

namespace A072683.P17274139737255269736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P17274139737255269736

noncomputable section

/-- A072683: Numbers k such that the last digit of F(k) is 3 where F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A072683.P17274139737255269736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A072683 (n : ℕ) : ℤ :=
  (A072683.P17274139737255269736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A072683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072695.P4658259756490484901

`lcm(A000005(n+1), A000005((n+1)²))`
-/

namespace A072695.P4658259756490484901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A000005 ((n + 1) ^ 2))

end

end A072695.P4658259756490484901

noncomputable section

/-- A072695: a(n) = lcm(d(n^2),d(n)), where d(n) = A000005, the number of divisors of n.

Offset 1, canonical program `A072695.P4658259756490484901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072695 (n : ℕ) : ℤ :=
  (A072695.P4658259756490484901.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072696.P2919287904563779489

`lcm(A000005(n+1), A000005((n+1)^3))`
-/

namespace A072696.P2919287904563779489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (n + 1)) (A000005 ((n + 1) ^ 3))

end

end A072696.P2919287904563779489

noncomputable section

/-- A072696: a(n) = lcm(d(n^3), d(n)), where d(n) = A000005, the number of divisors of n.

Offset 1, canonical program `A072696.P2919287904563779489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072696 (n : ℕ) : ℤ :=
  (A072696.P2919287904563779489.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072711.P2168519290706385150

`eq[(A101443(n)+1)², A082116(n)]`
-/

namespace A072711.P2168519290706385150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101443 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P2168519290706385150

noncomputable section

/-- A072711: Integers m such that the last digit of Fibonacci(m) is 9.

Offset 1, canonical program `A072711.P2168519290706385150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A072711 (n : ℕ) : ℤ :=
  (A072711.P2168519290706385150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A072711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072918.P13812427544987107066

`A013632(A000203(n+1))`
-/

namespace A072918.P13812427544987107066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A000203 (n + 1)).toNat

end

end A072918.P13812427544987107066

noncomputable section

/-- A072918: a(n) = p(n) - sigma(n), where p(n) is the least prime greater than sigma(n).

Offset 1, canonical program `A072918.P13812427544987107066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072918 (n : ℕ) : ℤ :=
  A072918.P13812427544987107066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072918.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073102.P7643878403766509078

`∩[A124826(n+1), A140535(n+1)]`
-/

namespace A073102.P7643878403766509078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073102.P7643878403766509078

noncomputable section

/-- A073102: Primes of the form 210n + 1.

Offset 1, canonical program `A073102.P7643878403766509078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A073102 (n : ℕ) : ℤ :=
  (A073102.P7643878403766509078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A073102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073247.P10439319067162305814

`record[A007947(A281192(n+1))]`
-/

namespace A073247.P10439319067162305814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A281192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073247.P10439319067162305814

noncomputable section

/-- A073247: Squarefree numbers k such that k-1 and k+1 are not squarefree.

Offset 1, canonical program `A073247.P10439319067162305814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8246 terms. -/
def A073247 (n : ℕ) : ℤ :=
  A073247.P10439319067162305814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8246 terms. -/
def A073247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073278.P2371061609722676516

`A066325(A061579(n))*A097807(n)`
-/

namespace A073278.P2371061609722676516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A061579 n).toNat * A097807 n

end

end A073278.P2371061609722676516

noncomputable section

/-- A073278: Triangle read by rows. The triangle is constructed from the coefficients of the n-th derivative of the normal probability distribution function.

Offset 0, canonical program `A073278.P2371061609722676516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7008 terms. -/
def A073278 (n : ℕ) : ℤ :=
  A073278.P2371061609722676516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7008 terms. -/
def A073278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073372.P7469859071560885610

`∑[∑[∑[A279865(n+2)]]]`
-/

namespace A073372.P7469859071560885610
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279865 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073372.P7469859071560885610

noncomputable section

/-- A073372: Second convolution of A001045(n+1) (generalized (1,2)-Fibonacci), n>=0, with itself.

Offset 0, canonical program `A073372.P7469859071560885610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A073372 (n : ℕ) : ℤ :=
  A073372.P7469859071560885610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A073372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073391.P6908540770274710825

`A208759(∑[n+5]+6)`
-/

namespace A073391.P6908540770274710825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A073391.P6908540770274710825

noncomputable section

/-- A073391: Fifth column of the convolution triangle A073387(n+4 4), for n >= 0.

Offset 0, canonical program `A073391.P6908540770274710825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A073391 (n : ℕ) : ℤ :=
  A073391.P6908540770274710825.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A073391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073392.P14766006045527505463

`A208759(A052905(n+3))`
-/

namespace A073392.P14766006045527505463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A052905 (n + 3)).toNat

end

end A073392.P14766006045527505463

noncomputable section

/-- A073392: Sixth column of the convolution triangle A073387(n+5, 5), for n >= 0.

Offset 0, canonical program `A073392.P14766006045527505463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A073392 (n : ℕ) : ℤ :=
  A073392.P14766006045527505463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A073392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073393.P8091193301050601399

`A208759(A055999(n+4))`
-/

namespace A073393.P8091193301050601399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A055999 (n + 4)).toNat

end

end A073393.P8091193301050601399

noncomputable section

/-- A073393: Seventh column of the convolution triangle A073387(n+6,6), for n >= 0.

Offset 0, canonical program `A073393.P8091193301050601399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A073393 (n : ℕ) : ℤ :=
  A073393.P8091193301050601399.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A073393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073394.P16341799801780487140

`A208759(eq[7, A193592(n)])`
-/

namespace A073394.P16341799801780487140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073394.P16341799801780487140

noncomputable section

/-- A073394: Eighth column of the convolution triangle A073387(n+7, 7), for n >= 0.

Offset 0, canonical program `A073394.P16341799801780487140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A073394 (n : ℕ) : ℤ :=
  A073394.P16341799801780487140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A073394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073397.P1668113486188789943

`A208759(A155212(n+5))`
-/

namespace A073397.P1668113486188789943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A155212 (n + 5)).toNat

end

end A073397.P1668113486188789943

noncomputable section

/-- A073397: Eighth convolution of A002605(n) (generalized (2,2)-Fibonacci), n>=0, with itself.

Offset 0, canonical program `A073397.P1668113486188789943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A073397 (n : ℕ) : ℤ :=
  A073397.P1668113486188789943.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A073397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073398.P5681811995576572084

`A208759(A052905(n+7)-4)`
-/

namespace A073398.P5681811995576572084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208759 (A052905 (n + 7) - 4).toNat

end

end A073398.P5681811995576572084

noncomputable section

/-- A073398: Ninth convolution of A002605(n) (generalized (2,2)-Fibonacci), n>=0, with itself.

Offset 0, canonical program `A073398.P5681811995576572084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A073398 (n : ℕ) : ℤ :=
  A073398.P5681811995576572084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A073398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073575.P12510821698240124249

`∑{d}[n+1, #*A012245(#)]`
-/

namespace A073575.P12510821698240124249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A012245 d

end

end A073575.P12510821698240124249

noncomputable section

/-- A073575: Sum of factorial numbers dividing n.

Offset 1, canonical program `A073575.P12510821698240124249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073575 (n : ℕ) : ℤ :=
  A073575.P12510821698240124249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073802.P5532415741210097139

`A000005(A009194(n+1))`
-/

namespace A073802.P5532415741210097139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A009194 (n + 1)).toNat

end

end A073802.P5532415741210097139

noncomputable section

/-- A073802: Number of common divisors of n and sigma(n).

Offset 1, canonical program `A073802.P5532415741210097139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073802 (n : ℕ) : ℤ :=
  A073802.P5532415741210097139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073806.P9628583595315297770

`A000005(A001157(n+1))`
-/

namespace A073806.P9628583595315297770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001157 (n + 1)).toNat

end

end A073806.P9628583595315297770

noncomputable section

/-- A073806: Number of divisors of sum of square of divisors.

Offset 1, canonical program `A073806.P9628583595315297770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073806 (n : ℕ) : ℤ :=
  A073806.P9628583595315297770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073807.P6967064192508235977

`A000005(A001158(n+1))`
-/

namespace A073807.P6967064192508235977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001158 (n + 1)).toNat

end

end A073807.P6967064192508235977

noncomputable section

/-- A073807: Number of divisors of sum of cube of divisors.

Offset 1, canonical program `A073807.P6967064192508235977`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073807 (n : ℕ) : ℤ :=
  A073807.P6967064192508235977.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073808.P17656715201060370419

`A000005(gcd(A000203(n+1), A001157(n+1)))`
-/

namespace A073808.P17656715201060370419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000203 (n + 1)) (A001157 (n + 1)))

end

end A073808.P17656715201060370419

noncomputable section

/-- A073808: Number of common divisors of sigma_1(n) and sigma_2(n).

Offset 1, canonical program `A073808.P17656715201060370419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073808 (n : ℕ) : ℤ :=
  A073808.P17656715201060370419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073808.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073809.P76428896373836633

`A000005(gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #]))`
-/

namespace A073809.P76428896373836633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d ^ 3) (∑ d ∈ Nat.divisors (f2 n), d))

end

end A073809.P76428896373836633

noncomputable section

/-- A073809: Number of common divisors of sigma_1(n) and sigma_3(n).

Offset 1, canonical program `A073809.P76428896373836633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073809 (n : ℕ) : ℤ :=
  A073809.P76428896373836633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073810.P16325406888385012119

`A000005(gcd(∑{d}[n+1, #^3], ∑{d}[n+1, #²]))`
-/

namespace A073810.P16325406888385012119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d ^ 3) (∑ d ∈ Nat.divisors (f2 n), d ^ 2))

end

end A073810.P16325406888385012119

noncomputable section

/-- A073810: Number of common divisors of sigma(2,n) and sigma(3,n).

Offset 1, canonical program `A073810.P16325406888385012119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8511 terms. -/
def A073810 (n : ℕ) : ℤ :=
  A073810.P16325406888385012119.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8511 terms. -/
def A073810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073881.P14801290186884067211

`A158611(2*∑[C(2, ∑{e}[n+1, #+1])])`
-/

namespace A073881.P14801290186884067211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A073881.P14801290186884067211

noncomputable section

/-- A073881: a(n) = smallest number m (obviously prime) such that pi(m) = 2*pi(n).

Offset 1, canonical program `A073881.P14801290186884067211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073881 (n : ℕ) : ℤ :=
  A073881.P14801290186884067211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073897.P11908229186590286199

`xor(A057427(n), A073898(n+1))`
-/

namespace A073897.P11908229186590286199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A073898 (n + 1))

end

end A073897.P11908229186590286199

noncomputable section

/-- A073897: a(1) = 1, a(n) = smallest odd or even number not occurring earlier according as n is prime or composite.

Offset 1, canonical program `A073897.P11908229186590286199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073897 (n : ℕ) : ℤ :=
  A073897.P11908229186590286199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073995.P1846185900125942284

`A073996(n+1)+A090132(n)²`
-/

namespace A073995.P1846185900125942284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A090132 n ^ 2

end

end A073995.P1846185900125942284

noncomputable section

/-- A073995: Number of strings of length n over GF(4) with trace 0 and subtrace 0.

Offset 1, canonical program `A073995.P1846185900125942284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073995 (n : ℕ) : ℤ :=
  A073995.P1846185900125942284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074230.P11228100867499027670

`eq[A121238(n), A175629(n)]`
-/

namespace A074230.P11228100867499027670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A074230.P11228100867499027670

noncomputable section

/-- A074230: Numbers n such that A089509(n)=1.

Offset 1, canonical program `A074230.P11228100867499027670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4289 terms. -/
def A074230 (n : ℕ) : ℤ :=
  (A074230.P11228100867499027670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4289 terms. -/
def A074230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074261.P16825806500781685750

`lt[0, A294448(n+1)]+1`
-/

namespace A074261.P16825806500781685750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074261.P16825806500781685750

noncomputable section

/-- A074261: Positions in the Kolakoski sequence (A000002) when the number of 2's is greater than the number of 1's.

Offset 1, canonical program `A074261.P16825806500781685750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4601 terms. -/
def A074261 (n : ℕ) : ℤ :=
  (A074261.P16825806500781685750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4601 terms. -/
def A074261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074287.P17554689060709443169

`2*(lt[A294448(2*(n+1)), 0]+1)`
-/

namespace A074287.P17554689060709443169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A074287.P17554689060709443169

noncomputable section

/-- A074287: Even numbers n such that the partial sum of the Kolakoski sequence (A000002) at n is less than 3n/2.

Offset 1, canonical program `A074287.P17554689060709443169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A074287 (n : ℕ) : ℤ :=
  (A074287.P17554689060709443169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A074287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074697.P17142386647616674480

`lt[n, A152774(n+1)]+1`
-/

namespace A074697.P17142386647616674480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152774 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A074697.P17142386647616674480

noncomputable section

/-- A074697: Fibonacci(k) has more than k divisors (k such that A000005(A000045(k)) > k).

Offset 1, canonical program `A074697.P17142386647616674480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A074697 (n : ℕ) : ℤ :=
  (A074697.P17142386647616674480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A074697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074821.P5811129272772757011

`eq[A000005(2*n+3), A000005(n+1)]+1`
-/

namespace A074821.P5811129272772757011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A074821.P5811129272772757011

noncomputable section

/-- A074821: Numbers k such that tau(k) = tau(2k+1).

Offset 1, canonical program `A074821.P5811129272772757011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7994 terms. -/
def A074821 (n : ℕ) : ℤ :=
  (A074821.P5811129272772757011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7994 terms. -/
def A074821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074943.P18225326473908618885

`A000005(n+1)%3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A074943.P18225326473908618885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) 3

end

end A074943.P18225326473908618885

noncomputable section

/-- A074943: a(n) = tau(n) mod 3.

Offset 1, canonical program `A074943.P18225326473908618885`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)%3` (program `A074943.P18225326473908618885`, by `A074943.P18225326473908618885.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A074943 (n : ℕ) : ℤ :=
  A074943.P18225326473908618885.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)%3` (program `A074943.P18225326473908618885`, by `A074943.P18225326473908618885.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A074943.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A075326.P6416656601313117773

`(10*n)%A297469(n)`
-/

namespace A075326.P6416656601313117773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * n : ℤ) (A297469 n)

end

end A075326.P6416656601313117773

noncomputable section

/-- A075326: Anti-Fibonacci numbers: start with a(0) = 0, and extend by the rule that the next term is the sum of the two smallest numbers that are not in the sequence nor were used to form an earlier sum.

Offset 0, canonical program `A075326.P6416656601313117773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075326 (n : ℕ) : ℤ :=
  A075326.P6416656601313117773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075704.P3489623955875780024

`p?[A110801(n+1)]`
-/

namespace A075704.P3489623955875780024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075704.P3489623955875780024

noncomputable section

/-- A075704: p and 12*p+1 are both primes.

Offset 0, canonical program `A075704.P3489623955875780024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A075704 (n : ℕ) : ℤ :=
  A075704.P3489623955875780024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A075704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075747.P3624415254183292028

`eq[2, A000005(A128468(7*n))]`
-/

namespace A075747.P3624415254183292028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A128468 (7 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075747.P3624415254183292028

noncomputable section

/-- A075747: Numbers n such that 210*n + 17 is prime.

Offset 1, canonical program `A075747.P3624415254183292028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A075747 (n : ℕ) : ℤ :=
  (A075747.P3624415254183292028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A075747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075988.P11951307643143853652

`A347286(2*(n+1))-A059851(2*n+1)`
-/

namespace A075988.P11951307643143853652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347286 (2 * (n + 1)) - A059851 (2 * n + 1)

end

end A075988.P11951307643143853652

noncomputable section

/-- A075988: Number of integers k satisfying 1 <= k <= n and 0 < frac(n/k) < 1/2, where frac(n/k) is the fractional part of n/k; i.e., frac(n/k) = n/k - floor(n,k).

Offset 1, canonical program `A075988.P11951307643143853652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A075988 (n : ℕ) : ℤ :=
  A075988.P11951307643143853652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A075988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075989.P4483249775475525588

`∑[Δ[A059851(2*n)]-1]`
-/

namespace A075989.P4483249775475525588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075989.P4483249775475525588

noncomputable section

/-- A075989: Number of k satisfying 1<=k<=n and {n/k} >= 1/2, where {n/k} is the fractional part of n/k, i.e., {n/k} = n/k - floor(n/k).

Offset 1, canonical program `A075989.P4483249775475525588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A075989 (n : ℕ) : ℤ :=
  A075989.P4483249775475525588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A075989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075997.P4978135503421497941

`n-A059851(n)`
-/

namespace A075997.P4978135503421497941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059851 n

end

end A075997.P4978135503421497941

noncomputable section

/-- A075997: a(n) = [n/2] - [n/3] + [n/4] - [n/5] + [n/6] - ..., where [n/k] = floor(n/k).

Offset 0, canonical program `A075997.P4978135503421497941`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075997 (n : ℕ) : ℤ :=
  A075997.P4978135503421497941.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059851, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076136.P16925837628229497617

`eq[A076191(n+1), A252736(A004277(n))]+2`
-/

namespace A076136.P16925837628229497617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A076136.P16925837628229497617

noncomputable section

/-- A076136: Numbers n such that Omega(n) = Omega(n-1) + Omega(n-2), where Omega(n) (A001222) denotes the number of prime factors of n, counting multiplicity.

Offset 1, canonical program `A076136.P16925837628229497617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A076136 (n : ℕ) : ℤ :=
  (A076136.P16925837628229497617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A076136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076150.P17154060652409901030

`lt[10, A013632(n)]+1`
-/

namespace A076150.P17154060652409901030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076150.P17154060652409901030

noncomputable section

/-- A076150: Start of 10 consecutive composite numbers.

Offset 1, canonical program `A076150.P17154060652409901030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A076150 (n : ℕ) : ℤ :=
  (A076150.P17154060652409901030.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A076150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076167.P1925826582817303362

`p?[A036301(n+1)]`
-/

namespace A076167.P1925826582817303362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076167.P1925826582817303362

noncomputable section

/-- A076167: Primes p such that sum of even digits of p equals sum of odd digits of p.

Offset 1, canonical program `A076167.P1925826582817303362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A076167 (n : ℕ) : ℤ :=
  A076167.P1925826582817303362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A076167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045322.P12367082732951431422

`∪[A045325(n+1), A045335(n+1)]`
-/

namespace A045322.P12367082732951431422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A045322.P12367082732951431422

noncomputable section

/-- A045322: Primes congruent to {0, 2, 3, 4, 6} (mod 7).

Offset 1, canonical program `A045322.P12367082732951431422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045322 (n : ℕ) : ℤ :=
  (A045322.P12367082732951431422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049807.P8313610108641097684

`∑[A133755(n+1)+A084091(C(2, n))]`
-/

namespace A049807.P8313610108641097684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (n + 1) + A084091 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049807.P8313610108641097684

noncomputable section

/-- A049807: a(n)=number of Farey fractions of order n that are <=1/3; cf. A049805.

Offset 1, canonical program `A049807.P8313610108641097684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A049807 (n : ℕ) : ℤ :=
  A049807.P8313610108641097684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A049807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055671.P14398958328813777781

`24*A055672(n)`
-/

namespace A055671.P14398958328813777781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A055672 n

end

end A055671.P14398958328813777781

noncomputable section

/-- A055671: Number of prime Hurwitz quaternions of norm n.

Offset 0, canonical program `A055671.P14398958328813777781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055671 (n : ℕ) : ℤ :=
  A055671.P14398958328813777781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056536.P15475188742304027796

`A091995(A056537(A091995(n+1)))`
-/

namespace A056536.P15475188742304027796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (A056537 (A091995 (n + 1)).toNat).toNat

end

end A056536.P15475188742304027796

noncomputable section

/-- A056536: Mapping from half-antidiagonal reading of the triangle (as used in A028297) to the column-by-column reading of the triangular tables.

Offset 1, canonical program `A056536.P15475188742304027796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A056536 (n : ℕ) : ℤ :=
  A056536.P15475188742304027796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5111 terms. -/
def A056536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066423.P13134788901235726609

`comp[A084116(n+1)-2]+2`
-/

namespace A066423.P13134788901235726609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084116 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A066423.P13134788901235726609

noncomputable section

/-- A066423: Composite numbers n such that the product of proper divisors of the n does not equal n.

Offset 1, canonical program `A066423.P13134788901235726609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066423 (n : ℕ) : ℤ :=
  (A066423.P13134788901235726609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069170.P12605403305095502815

`A069208(A018252(n+1))`
-/

namespace A069170.P12605403305095502815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (A018252 (n + 1)).toNat

end

end A069170.P12605403305095502815

noncomputable section

/-- A069170: Values of phi(k)*Sum_{d|k} 1/phi(d) for nonprimes k.

Offset 1, canonical program `A069170.P12605403305095502815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A069208, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069170 (n : ℕ) : ℤ :=
  A069170.P12605403305095502815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, A069208, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069170.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071046.P14189912899326059712

`A005408(n)-A071047(n)`
-/

namespace A071046.P14189912899326059712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A071047 n

end

end A071046.P14189912899326059712

noncomputable section

/-- A071046: Number of 0's in n-th row of triangle in A071031, cellular automaton "rule 62".

Offset 0, canonical program `A071046.P14189912899326059712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071046 (n : ℕ) : ℤ :=
  A071046.P14189912899326059712.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072502.P9604153156894014729

`eq[3, A318874(n+1)]+1`
-/

namespace A072502.P9604153156894014729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072502.P9604153156894014729

noncomputable section

/-- A072502: Numbers that are run sums (trapezoidal, the difference between two triangular numbers) in exactly 3 ways.

Offset 1, canonical program `A072502.P9604153156894014729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A072502 (n : ℕ) : ℤ :=
  (A072502.P9604153156894014729.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A072502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053164.P6072530198200345480

`A008835(n+1)^(1/4)`
-/

namespace A053164.P6072530198200345480
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008835 (n + 1) : ℝ) ^ ((1 : ℚ) / 4 : ℝ)

end

end A053164.P6072530198200345480

noncomputable section

/-- A053164: 4th root of largest 4th power dividing n.

Offset 1, canonical program `A053164.P6072530198200345480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053164 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053164.P6072530198200345480.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053164.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053165.P13091499758417546177

`(n+1)/A008835(n+1)`
-/

namespace A053165.P13091499758417546177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008835 (n + 1) : ℚ)

end

end A053165.P13091499758417546177

noncomputable section

/-- A053165: 4th-power-free part of n.

Offset 1, canonical program `A053165.P13091499758417546177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053165 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053165.P13091499758417546177.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053167.P8322437054193827478

`((n+1)*A007913(n+1))²/A008835((n+1)*A007913(n+1))`
-/

namespace A053167.P8322437054193827478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) * A007913 (n + 1)) ^ 2 : ℚ) / (A008835 ((n + 1 : ℤ) * A007913 (n + 1)).toNat : ℚ)

end

end A053167.P8322437054193827478

noncomputable section

/-- A053167: Smallest 4th power divisible by n.

Offset 1, canonical program `A053167.P8322437054193827478`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053167 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053167.P8322437054193827478.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045920.P4151423795650373720

`floor(A115167(n+1)/2)`
-/

namespace A045920.P4151423795650373720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115167 (n + 1) : ℚ) / 2⌋

end

end A045920.P4151423795650373720

noncomputable section

/-- A045920: Numbers m such that the factorizations of m..m+1 have the same number of primes (including multiplicities).

Offset 1, canonical program `A045920.P4151423795650373720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045920 (n : ℕ) : ℤ :=
  A045920.P4151423795650373720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046644.P16655248551205198622

`∏{e}[n+1, A046161(#)]`
-/

namespace A046644.P16655248551205198622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A046161 (Nat.factorization (f1 n) p)

end

end A046644.P16655248551205198622

noncomputable section

/-- A046644: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives denominator of b_n.

Offset 1, canonical program `A046644.P16655248551205198622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046644 (n : ℕ) : ℤ :=
  A046644.P16655248551205198622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050449.P3812122387069373176

`∑{d}[n+1, #]-A082052(n+1)`
-/

namespace A050449.P3812122387069373176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A082052 (n + 1)

end

end A050449.P3812122387069373176

noncomputable section

/-- A050449: a(n) = Sum_{d|n, d == 1 (mod 4)} d.

Offset 1, canonical program `A050449.P3812122387069373176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050449 (n : ℕ) : ℤ :=
  A050449.P3812122387069373176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050465.P7394313666540459640

`∑{d}[n+1, A038189(#)*A308422((n+1)/#)]`
-/

namespace A050465.P7394313666540459640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038189 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050465.P7394313666540459640

noncomputable section

/-- A050465: a(n) = Sum_{d|n, n/d=3 mod 4} d^2.

Offset 1, canonical program `A050465.P7394313666540459640`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050465 (n : ℕ) : ℤ :=
  A050465.P7394313666540459640.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051472.P14650939250664835705

`A028317(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051472.P14650939250664835705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028317 n : ℚ) / 2

end

end A051472.P14650939250664835705

noncomputable section

/-- A051472: a(n) = A028317(n)/2.

Offset 0, canonical program `A051472.P14650939250664835705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028317, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051472 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051472.P14650939250664835705.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028317, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A051472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054353.P16739713460901819012

`∑[A000002(n+1)]`
-/

namespace A054353.P16739713460901819012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054353.P16739713460901819012

noncomputable section

/-- A054353: Partial sums of Kolakoski sequence A000002.

Offset 1, canonical program `A054353.P16739713460901819012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054353 (n : ℕ) : ℤ :=
  A054353.P16739713460901819012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056172.P4823837235628316593

`A000720(n+1)-A056171(n+1)`
-/

namespace A056172.P4823837235628316593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056171 (n + 1)

end

end A056172.P4823837235628316593

noncomputable section

/-- A056172: Number of non-unitary prime divisors of n!.

Offset 1, canonical program `A056172.P4823837235628316593`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056172 (n : ℕ) : ℤ :=
  A056172.P4823837235628316593.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056672.P11089533315272226003

`2^A056171(n+1)`
-/

namespace A056672.P11089533315272226003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056171 (n + 1) : ℤ)

end

end A056672.P11089533315272226003

noncomputable section

/-- A056672: Number of unitary and squarefree divisors of n! Also, number of divisors of the special squarefree part of n!, A055773(n).

Offset 1, canonical program `A056672.P11089533315272226003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056672.P11089533315272226003.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056171, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059485.P2045085870398299258

`lt[1, A035218(n+1)]+1`
-/

namespace A059485.P2045085870398299258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A059485.P2045085870398299258

noncomputable section

/-- A059485: Highest prime factor is greater than 3.

Offset 1, canonical program `A059485.P2045085870398299258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059485 (n : ℕ) : ℤ :=
  (A059485.P2045085870398299258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061399.P875585814381713750

`A046933(n+1)-A061398(n+1)`
-/

namespace A061399.P875585814381713750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) - A061398 (n + 1)

end

end A061399.P875585814381713750

noncomputable section

/-- A061399: Number of nonsquarefree integers between primes prime(n) and prime(n+1).

Offset 1, canonical program `A061399.P875585814381713750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061399 (n : ℕ) : ℤ :=
  A061399.P875585814381713750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063657.P9374789070347928920

`A377809(n+1)+1+n`
-/

namespace A063657.P9374789070347928920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) + 1 + (n : ℤ)

end

end A063657.P9374789070347928920

noncomputable section

/-- A063657: Numbers whose truncated square root is unequal to rounded square root.

Offset 1, canonical program `A063657.P9374789070347928920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063657 (n : ℕ) : ℤ :=
  A063657.P9374789070347928920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065515.P15129427044826637405

`A025528(n+1)+1`
-/

namespace A065515.P15129427044826637405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) + 1

end

end A065515.P15129427044826637405

noncomputable section

/-- A065515: Number of prime powers <= n.

Offset 1, canonical program `A065515.P15129427044826637405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065515 (n : ℕ) : ℤ :=
  A065515.P15129427044826637405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067535.P4022981712752583231

`A005117(∑[char[A005117(n+1)]]+1)`
-/

namespace A067535.P4022981712752583231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A067535.P4022981712752583231

noncomputable section

/-- A067535: Smallest squarefree number >= n.

Offset 1, canonical program `A067535.P4022981712752583231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067535 (n : ℕ) : ℤ :=
  A067535.P4022981712752583231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068360.P6452734454492579560

`lt[A061398(n+1), 1]+1`
-/

namespace A068360.P6452734454492579560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061398 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068360.P6452734454492579560

noncomputable section

/-- A068360: Numbers n such that there is no squarefree number between prime(n) and prime(n+1).

Offset 1, canonical program `A068360.P6452734454492579560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A068360 (n : ℕ) : ℤ :=
  (A068360.P6452734454492579560.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A068360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069637.P6505014191313825967

`A025528(n+1)-A000720(n+1)`
-/

namespace A069637.P6505014191313825967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) - A000720 (n + 1)

end

end A069637.P6505014191313825967

noncomputable section

/-- A069637: Number of prime powers <= n with exponents > 1.

Offset 1, canonical program `A069637.P6505014191313825967`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069637 (n : ℕ) : ℤ :=
  A069637.P6505014191313825967.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070321.P7130479332265893626

`A005117(A013928(n+2))`
-/

namespace A070321.P7130479332265893626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A013928 (n + 2)).toNat

end

end A070321.P7130479332265893626

noncomputable section

/-- A070321: Greatest squarefree number <= n.

Offset 1, canonical program `A070321.P7130479332265893626`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070321 (n : ℕ) : ℤ :=
  A070321.P7130479332265893626.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070549.P7239971299778395815

`A070548(n+1)-A002321(n+1)`
-/

namespace A070549.P7239971299778395815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (n + 1) - A002321 (n + 1)

end

end A070549.P7239971299778395815

noncomputable section

/-- A070549: a(n) = Cardinality{ k in range 1 <= k <= n such that Moebius(k) = -1 }.

Offset 1, canonical program `A070549.P7239971299778395815`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A070548, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070549 (n : ℕ) : ℤ :=
  A070549.P7239971299778395815.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A070548, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070549.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073642.P15123079599203656975

`A029931(floor(n/2))`
-/

namespace A073642.P15123079599203656975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 ⌊(n : ℚ) / 2⌋.toNat

end

end A073642.P15123079599203656975

noncomputable section

/-- A073642: Replace 2^k in the binary representation of n with k (i.e., if n = 2^b + 2^c + 2^d + ... then a(n) = b + c + d + ...).

Offset 0, canonical program `A073642.P15123079599203656975`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073642 (n : ℕ) : ℤ :=
  A073642.P15123079599203656975.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073642.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074905.P15432550881472388053

`Δ[A070548(p?[A165754(n)])]`
-/

namespace A074905.P15432550881472388053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A074905.P15432550881472388053

noncomputable section

/-- A074905: a(n) = number of terms in A030229 between prime(n) and prime(n+1).

Offset 1, canonical program `A074905.P15432550881472388053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A074905 (n : ℕ) : ℤ :=
  A074905.P15432550881472388053.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A074905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048111.P1097856479310663445

`filter[A048108(n+1), A380454(#)]`
-/

namespace A048111.P1097856479310663445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380454 (f1 j).toNat = 1) n)

end

end A048111.P1097856479310663445

noncomputable section

/-- A048111: Number of unitary divisors of n (A034444) < number of non-unitary divisors of n (A048105).

Offset 1, canonical program `A048111.P1097856479310663445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6119 terms. -/
def A048111 (n : ℕ) : ℤ :=
  A048111.P1097856479310663445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6119 terms. -/
def A048111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048572.P13017132504727043006

`A007953(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A048572.P13017132504727043006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A007953 (a (n - 1) * a (n - 2)).toNat

end

end A048572.P13017132504727043006

noncomputable section

/-- A048572: a(n) = sum of digits of a(n-1)*a(n-2).

Offset 1, canonical program `A048572.P13017132504727043006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048572 (n : ℕ) : ℤ :=
  A048572.P13017132504727043006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049076.P17652482635542047239

`1+A078442(n+1)`
-/

namespace A049076.P17652482635542047239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A078442 (n + 1)

end

end A049076.P17652482635542047239

noncomputable section

/-- A049076: Number of steps in the prime index chain for the n-th prime.

Offset 1, canonical program `A049076.P17652482635542047239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049076 (n : ℕ) : ℤ :=
  A049076.P17652482635542047239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A050926.P6020126411824028661

`A007088(A007908(n+1))`
-/

namespace A050926.P6020126411824028661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007908 (n + 1)).toNat

end

end A050926.P6020126411824028661

noncomputable section

/-- A050926: Binary representation of A007908(n).

Offset 1, canonical program `A050926.P6020126411824028661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050926 (n : ℕ) : ℤ :=
  A050926.P6020126411824028661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A050926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053837.P1951223835563838367

`A010879(A007953(n))`
-/

namespace A053837.P1951223835563838367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007953 n).toNat

end

end A053837.P1951223835563838367

noncomputable section

/-- A053837: Sum of digits of n modulo 10.

Offset 0, canonical program `A053837.P1951223835563838367`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053837 (n : ℕ) : ℤ :=
  A053837.P1951223835563838367.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053843.P17953415486736752166

`A010877(A053829(n))`
-/

namespace A053843.P17953415486736752166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A053829 n).toNat

end

end A053843.P17953415486736752166

noncomputable section

/-- A053843: (Sum of digits of n written in base 8) modulo 8.

Offset 0, canonical program `A053843.P17953415486736752166`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053843 (n : ℕ) : ℤ :=
  A053843.P17953415486736752166.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053829, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A054238.P17285390839564699796

`A000695(row(n)-col(n))+2*A000695(col(n))`
-/

namespace A054238.P17285390839564699796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) + 2 * A000695 (SequenceMachineLib.triCol n)

end

end A054238.P17285390839564699796

noncomputable section

/-- A054238: Array read by downward antidiagonals: T(i,j) = bits of binary expansion of i interleaved with that of j.

Offset 0, canonical program `A054238.P17285390839564699796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054238 (n : ℕ) : ℤ :=
  A054238.P17285390839564699796.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A054238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055262.P5810071582875388114

`n+A007953(a(n-1))` with `a(0)=0`
-/

namespace A055262.P5810071582875388114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) + A007953 (a (n - 1)).toNat

end

end A055262.P5810071582875388114

noncomputable section

/-- A055262: n + sum of digits of a(n-1).

Offset 0, canonical program `A055262.P5810071582875388114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055262 (n : ℕ) : ℤ :=
  A055262.P5810071582875388114.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055262.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055263.P15720072045721252872

`A007953(n+a(n-1))` with `a(0)=0`
-/

namespace A055263.P15720072045721252872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007953 ((n : ℤ) + a (n - 1)).toNat

end

end A055263.P15720072045721252872

noncomputable section

/-- A055263: a(n) = Sum of digits of (n + a(n-1)).

Offset 0, canonical program `A055263.P15720072045721252872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055263 (n : ℕ) : ℤ :=
  A055263.P15720072045721252872.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055473.P15962732397737186787

`A007088(A011557(n))`
-/

namespace A055473.P15962732397737186787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A011557 n).toNat

end

end A055473.P15962732397737186787

noncomputable section

/-- A055473: Powers of ten written in base 2.

Offset 0, canonical program `A055473.P15962732397737186787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055473 (n : ℕ) : ℤ :=
  A055473.P15962732397737186787.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055647.P1414518620111921284

`eq[A028901(n), A081597(A081597(n))]`
-/

namespace A055647.P1414518620111921284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 (A081597 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055647.P1414518620111921284

noncomputable section

/-- A055647: Integers in base 14 with each base 14 digit represented by 2 decimal digits.

Offset 0, canonical program `A055647.P1414518620111921284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A055647 (n : ℕ) : ℤ :=
  (A055647.P1414518620111921284.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A055647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055933.P1168599586007844264

`eq[A007953(n)%A051801(n), A000007(n)]`
-/

namespace A055933.P1168599586007844264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 n) (A051801 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055933.P1168599586007844264

noncomputable section

/-- A055933: Product of digits (not counting zeros) of n divides sum of digits of n.

Offset 1, canonical program `A055933.P1168599586007844264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A055933 (n : ℕ) : ℤ :=
  (A055933.P1168599586007844264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A055933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057147.P6552464879974957451

`n*A007953(n)`
-/

namespace A057147.P6552464879974957451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007953 n

end

end A057147.P6552464879974957451

noncomputable section

/-- A057147: a(n) = n times sum of digits of n.

Offset 0, canonical program `A057147.P6552464879974957451`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057147 (n : ℕ) : ℤ :=
  A057147.P6552464879974957451.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057531.P15483397355566411150

`eq[A032741(n)+1, A007953(n)]`
-/

namespace A057531.P15483397355566411150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057531.P15483397355566411150

noncomputable section

/-- A057531: Numbers whose sum of digits and number of divisors are equal.

Offset 1, canonical program `A057531.P15483397355566411150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A057531 (n : ℕ) : ℤ :=
  (A057531.P15483397355566411150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A057531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060150.P5157050367033873665

`A088218(n)²`
-/

namespace A060150.P5157050367033873665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n ^ 2

end

end A060150.P5157050367033873665

noncomputable section

/-- A060150: a(0) = 1; for n > 0, binomial(2n-1, n-1)^2.

Offset 0, canonical program `A060150.P5157050367033873665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060150 (n : ℕ) : ℤ :=
  A060150.P5157050367033873665.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060150.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061762.P2226516995009236848

`A007953(n)+A007954(n)`
-/

namespace A061762.P2226516995009236848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A007954 n

end

end A061762.P2226516995009236848

noncomputable section

/-- A061762: a(n) = (sum of digits of n) + (product of digits of n).

Offset 0, canonical program `A061762.P2226516995009236848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061762 (n : ℕ) : ℤ :=
  A061762.P2226516995009236848.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A007954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A061762.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062028.P8420805724104474199

`n+A007953(n)`
-/

namespace A062028.P8420805724104474199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007953 n

end

end A062028.P8420805724104474199

noncomputable section

/-- A062028: a(n) = n + sum of the digits of n.

Offset 0, canonical program `A062028.P8420805724104474199`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062028 (n : ℕ) : ℤ :=
  A062028.P8420805724104474199.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062028.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062331.P5956035598862090697

`A007953(n+1)*A051801(n+1)`
-/

namespace A062331.P5956035598862090697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) * A051801 (n + 1)

end

end A062331.P5956035598862090697

noncomputable section

/-- A062331: a(n) is the product of the sum and the product of the digits of n (0 is not to be considered a factor in the product).

Offset 1, canonical program `A062331.P5956035598862090697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062331 (n : ℕ) : ℤ :=
  A062331.P5956035598862090697.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062846.P15925224058452454034

`record[gcd(n, A000695(n))]`
-/

namespace A062846.P15925224058452454034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000695 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062846.P15925224058452454034

noncomputable section

/-- A062846: When expressed in base 2 and then interpreted in base 4, is a multiple of the original number.

Offset 1, canonical program `A062846.P15925224058452454034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A062846 (n : ℕ) : ℤ :=
  (A062846.P15925224058452454034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A062846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062880.P2055745413581106128

`2*A000695(n)`
-/

namespace A062880.P2055745413581106128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000695 n

end

end A062880.P2055745413581106128

noncomputable section

/-- A062880: Zero together with the numbers which can be written as a sum of distinct odd powers of 2.

Offset 0, canonical program `A062880.P2055745413581106128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062880 (n : ℕ) : ℤ :=
  A062880.P2055745413581106128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062997.P4649149388555751464

`lt[A007954(n), A007953(n)]`
-/

namespace A062997.P4649149388555751464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062997.P4649149388555751464

noncomputable section

/-- A062997: Numbers whose sum of digits is strictly greater than its product of digits.

Offset 1, canonical program `A062997.P4649149388555751464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2716 terms. -/
def A062997 (n : ℕ) : ℤ :=
  (A062997.P4649149388555751464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2716 terms. -/
def A062997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063009.P15492951971823313216

`A007088(n)²`
-/

namespace A063009.P15492951971823313216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n ^ 2

end

end A063009.P15492951971823313216

noncomputable section

/-- A063009: Write n in binary then square as if written in base 10.

Offset 0, canonical program `A063009.P15492951971823313216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063009 (n : ℕ) : ℤ :=
  A063009.P15492951971823313216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065076.P12545874303154124249

`A007953(a(n-1))+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A065076.P12545874303154124249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 2)

end

end A065076.P12545874303154124249

noncomputable section

/-- A065076: a(0) = 0, a(1) = 1, a(n) = (sum of digits of a(n-1)) + a(n-2).

Offset 0, canonical program `A065076.P12545874303154124249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1179 terms. -/
def A065076 (n : ℕ) : ℤ :=
  A065076.P12545874303154124249.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1179 terms. -/
def A065076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065124.P8285279052872578272

`A007953(a(n-2))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A065124.P8285279052872578272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007953 (a (n - 2)).toNat + a (n - 1)

end

end A065124.P8285279052872578272

noncomputable section

/-- A065124: a(n) = (sum of digits of a(n-2)) + a(n-1); a(0) = 0 and a(1) = 1.

Offset 0, canonical program `A065124.P8285279052872578272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 594 terms. -/
def A065124 (n : ℕ) : ℤ :=
  A065124.P8285279052872578272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 594 terms. -/
def A065124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065137.P7010743803192741555

`A007953(n)+A055012(n)`
-/

namespace A065137.P7010743803192741555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + A055012 n

end

end A065137.P7010743803192741555

noncomputable section

/-- A065137: Sum of digits of n plus sum of cubes of digits of n.

Offset 0, canonical program `A065137.P7010743803192741555`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065137 (n : ℕ) : ℤ :=
  A065137.P7010743803192741555.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066335.P12188652827000201606

`A007088(xor(3, n+3))`
-/

namespace A066335.P12188652827000201606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.xor 3 (n + 3))

end

end A066335.P12188652827000201606

noncomputable section

/-- A066335: Binary string which equals n when 1's and 2's bits have negative weights.

Offset 0, canonical program `A066335.P12188652827000201606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066335 (n : ℕ) : ℤ :=
  A066335.P12188652827000201606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066568.P9469533663660008085

`n-A007953(n)`
-/

namespace A066568.P9469533663660008085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007953 n

end

end A066568.P9469533663660008085

noncomputable section

/-- A066568: a(n) = n - sum of digits of n.

Offset 0, canonical program `A066568.P9469533663660008085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066568 (n : ℕ) : ℤ :=
  A066568.P9469533663660008085.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066750.P131990197536732529

`gcd(n+1, A007953(n+1))`
-/

namespace A066750.P131990197536732529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007953 (n + 1))

end

end A066750.P131990197536732529

noncomputable section

/-- A066750: Greatest common divisor of n and its digit sum.

Offset 1, canonical program `A066750.P131990197536732529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066750 (n : ℕ) : ℤ :=
  (A066750.P131990197536732529.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067040.P6507352666235301990

`n^A007953(n)`
-/

namespace A067040.P6507352666235301990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A007953 n : ℤ)

end

end A067040.P6507352666235301990

noncomputable section

/-- A067040: a(n) = n^(sum of digits of n).

Offset 0, canonical program `A067040.P6507352666235301990`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067040.P6507352666235301990.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067342.P529008459942700744

`A007953(A000203(n+1))`
-/

namespace A067342.P529008459942700744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000203 (n + 1)).toNat

end

end A067342.P529008459942700744

noncomputable section

/-- A067342: Sum of decimal digits of sum of divisors of n.

Offset 1, canonical program `A067342.P529008459942700744`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067342 (n : ℕ) : ℤ :=
  A067342.P529008459942700744.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A068395.P13008118586817300563

`A000040(n+1)-A007953(A000040(n+1))`
-/

namespace A068395.P13008118586817300563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A007953 (A000040 (n + 1)).toNat

end

end A068395.P13008118586817300563

noncomputable section

/-- A068395: a(n) = n-th prime minus its sum of digits.

Offset 1, canonical program `A068395.P13008118586817300563`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068395 (n : ℕ) : ℤ :=
  A068395.P13008118586817300563.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069723.P7209051585346191421

`2^n*A088218(n)`
-/

namespace A069723.P7209051585346191421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A088218 n

end

end A069723.P7209051585346191421

noncomputable section

/-- A069723: a(n) = 2^(n-1)*binomial(2*n-3, n-1).

Offset 1, canonical program `A069723.P7209051585346191421`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069723 (n : ℕ) : ℤ :=
  A069723.P7209051585346191421.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088218, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069723.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069958.P13422372317707970472

`A007953(n)^3-A055012(n)`
-/

namespace A069958.P13422372317707970472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 3 - A055012 n

end

end A069958.P13422372317707970472

noncomputable section

/-- A069958: (Sum of digits of n)^3 - (sum of digits^3 of n).

Offset 0, canonical program `A069958.P13422372317707970472`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069958 (n : ℕ) : ℤ :=
  A069958.P13422372317707970472.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069979.P15807187482805731575

`A007953(n)^5-A055566(n)`
-/

namespace A069979.P15807187482805731575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 5 - A055566 n

end

end A069979.P15807187482805731575

noncomputable section

/-- A069979: (Sum of digits of n)^5 - (sum of digits of n^5).

Offset 0, canonical program `A069979.P15807187482805731575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069979 (n : ℕ) : ℤ :=
  A069979.P15807187482805731575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070635.P9037631964849950479

`(n+1)%A007953(n+1)`
-/

namespace A070635.P9037631964849950479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A007953 (n + 1))

end

end A070635.P9037631964849950479

noncomputable section

/-- A070635: a(n) = n mod (sum of digits of n).

Offset 1, canonical program `A070635.P9037631964849950479`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070635 (n : ℕ) : ℤ :=
  A070635.P9037631964849950479.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071403.P15817908968978529389

`A112929(n+1)+1`
-/

namespace A071403.P15817908968978529389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112929 (n + 1) + 1

end

end A071403.P15817908968978529389

noncomputable section

/-- A071403: Which squarefree number is prime? a(n)-th squarefree number equals n-th prime.

Offset 1, canonical program `A071403.P15817908968978529389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071403 (n : ℕ) : ℤ :=
  A071403.P15817908968978529389.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112929, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071562.P15566010243578516595

`eq[1, A347950(n+1)]+1`
-/

namespace A071562.P15566010243578516595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071562.P15566010243578516595

noncomputable section

/-- A071562: Numbers n such that the sum of the middle divisors of n (A071090) is not zero.

Offset 1, canonical program `A071562.P15566010243578516595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071562 (n : ℕ) : ℤ :=
  (A071562.P15566010243578516595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071648.P10804961591303459157

`A007953(n+1)-A071649(n+1)`
-/

namespace A071648.P10804961591303459157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A071649 (n + 1)

end

end A071648.P10804961591303459157

noncomputable section

/-- A071648: Sum of even decimal digits of n.

Offset 1, canonical program `A071648.P10804961591303459157`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A071649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071648 (n : ℕ) : ℤ :=
  A071648.P10804961591303459157.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A071649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A071648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071906.P14558966377414500287

`A007953(2^n)%2`
-/

namespace A071906.P14558966377414500287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (2 ^ n)) 2

end

end A071906.P14558966377414500287

noncomputable section

/-- A071906: Sum of digits of 2^n (mod 2).

Offset 0, canonical program `A071906.P14558966377414500287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071906 (n : ℕ) : ℤ :=
  A071906.P14558966377414500287.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071992.P9612405317653658171

`∑[2*A071993(n+1)-1]`
-/

namespace A071992.P9612405317653658171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071993 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071992.P9612405317653658171

noncomputable section

/-- A071992: a(n) = 3*n^2 + 2*n - 4 * Sum_{k=1..n} A003159(k).

Offset 1, canonical program `A071992.P9612405317653658171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071992 (n : ℕ) : ℤ :=
  A071992.P9612405317653658171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071998.P8978306300852152956

`A007088(A007088(n))`
-/

namespace A071998.P8978306300852152956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A007088 n).toNat

end

end A071998.P8978306300852152956

noncomputable section

/-- A071998: Write n in binary, interpret that as a decimal number, convert back to binary.

Offset 0, canonical program `A071998.P8978306300852152956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071998 (n : ℕ) : ℤ :=
  A071998.P8978306300852152956.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075491.P11550484863816011754

`A007953(n+1)-A000005(n+1)`
-/

namespace A075491.P11550484863816011754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A000005 (n + 1)

end

end A075491.P11550484863816011754

noncomputable section

/-- A075491: Sum of digits of n minus number of divisors of n.

Offset 1, canonical program `A075491.P11550484863816011754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075491 (n : ℕ) : ℤ :=
  A075491.P11550484863816011754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075491.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063735.P13700721079844602380

`∩[A204826(n+1), n²]`
-/

namespace A063735.P13700721079844602380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204826 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A063735.P13700721079844602380

noncomputable section

/-- A063735: Square deficient numbers.

Offset 1, canonical program `A063735.P13700721079844602380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3040 terms. -/
def A063735 (n : ℕ) : ℤ :=
  (A063735.P13700721079844602380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3040 terms. -/
def A063735.provenance : SequenceMachineLib.Provenance := .conjectured

