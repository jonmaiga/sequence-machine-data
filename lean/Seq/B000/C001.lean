import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A081123.P8894457904069050108

`floor(n/2)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081123.P8894457904069050108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / 2⌋.toNat

end

end A081123.P8894457904069050108

noncomputable section

/-- A081123: a(n) = floor(n/2)!.

Offset 0, canonical program `A081123.P8894457904069050108`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)!` (program `A081123.P8894457904069050108`, by `A081123.P8894457904069050108.correct`). Lean does not check the parsing of the name. -/
def A081123 (n : ℕ) : ℤ :=
  (A081123.P8894457904069050108.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)!` (program `A081123.P8894457904069050108`, by `A081123.P8894457904069050108.correct`). Lean does not check the parsing of the name. -/
def A081123.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A081125.P3254837725225927038

`n!/floor(n/2)!`
-/

namespace A081125.P3254837725225927038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℚ)

end

end A081125.P3254837725225927038

noncomputable section

/-- A081125: a(n) = n! / floor(n/2)!.

Offset 0, canonical program `A081125.P3254837725225927038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081125 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081125.P3254837725225927038.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081147.P562166116975668183

`floor((n+1)*sqrt(5))-floor(n*sqrt(5))`
-/

namespace A081147.P562166116975668183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋ - ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

end

end A081147.P562166116975668183

noncomputable section

/-- A081147: First differences of A022839.

Offset 0, canonical program `A081147.P562166116975668183`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081147 (n : ℕ) : ℤ :=
  A081147.P562166116975668183.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081172.P8597232712458185604

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081172.P8597232712458185604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A081172.P8597232712458185604

noncomputable section

/-- A081172: Tribonacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = 1, a(2) = 0.

Offset 0, canonical program `A081172.P8597232712458185604`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A081172.P8597232712458185604`, by `A081172.P8597232712458185604.correct`). Lean does not check the parsing of the name. -/
def A081172 (n : ℕ) : ℤ :=
  (A081172.P8597232712458185604.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A081172.P8597232712458185604`, by `A081172.P8597232712458185604.correct`). Lean does not check the parsing of the name. -/
def A081172.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A081254.P13822013102060523607

`floor(5*2^n/3)`
-/

namespace A081254.P13822013102060523607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((2 ^ n : ℚ) / 3)⌋

end

end A081254.P13822013102060523607

noncomputable section

/-- A081254: Numbers k such that A081252(m)/m^2 has a local maximum for m = k.

Offset 1, canonical program `A081254.P13822013102060523607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A081254 (n : ℕ) : ℤ :=
  A081254.P13822013102060523607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A081254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081294.P5223419883173528882

`4*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A081294.P5223419883173528882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1)

end

end A081294.P5223419883173528882

noncomputable section

/-- A081294: Expansion of (1-2*x)/(1-4*x).

Offset 0, canonical program `A081294.P5223419883173528882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081294 (n : ℕ) : ℤ :=
  (A081294.P5223419883173528882.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081596.P9671227950668524431

`n-5*floor(n/10)`
-/

namespace A081596.P9671227950668524431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5 * ⌊(n : ℚ) / 10⌋

end

end A081596.P9671227950668524431

noncomputable section

/-- A081596: Let n = 10x + y where 0 <= y <= 9, x >= 0. Then a(n) = 5x+y.

Offset 0, canonical program `A081596.P9671227950668524431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081596 (n : ℕ) : ℤ :=
  A081596.P9671227950668524431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081597.P17692367477237151114

`n-4*floor(n/10)`
-/

namespace A081597.P17692367477237151114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 * ⌊(n : ℚ) / 10⌋

end

end A081597.P17692367477237151114

noncomputable section

/-- A081597: Let n = 10*x + y where 0 <= y <= 9, x >= 0. Then a(n) = 6*x + y.

Offset 0, canonical program `A081597.P17692367477237151114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081597 (n : ℕ) : ℤ :=
  A081597.P17692367477237151114.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081674.P13940095872098999332

`8*a(n-1)-19*a(n-2)+12*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A081674.P13940095872098999332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  8 * a (n - 1) - 19 * a (n - 2) + 12 * a (n - 3)

end

end A081674.P13940095872098999332

noncomputable section

/-- A081674: Generalized Poly-Bernoulli numbers.

Offset 0, canonical program `A081674.P13940095872098999332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081674 (n : ℕ) : ℤ :=
  A081674.P13940095872098999332.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082134.P2549787548527765533

`n*2^(n-2)*(1+2^(n-1))`
-/

namespace A082134.P2549787548527765533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (1 + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A082134.P2549787548527765533

noncomputable section

/-- A082134: Expansion of e.g.f. x*exp(3*x)*cosh(x).

Offset 0, canonical program `A082134.P2549787548527765533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082134.P2549787548527765533.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082450.P10495458497955973017

`5*n+a(n-1)-5` with `a(0)=5`
-/

namespace A082450.P10495458497955973017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (5 * n : ℤ) + a (n - 1) - 5

end

end A082450.P10495458497955973017

noncomputable section

/-- A082450: a(n) = 5*(n^2 - n + 2)/2.

Offset 0, canonical program `A082450.P10495458497955973017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082450 (n : ℕ) : ℤ :=
  A082450.P10495458497955973017.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082784.P13357688651719004354

`(gcd(n, 7)-1)/6`
-/

namespace A082784.P13357688651719004354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd n 7 : ℤ) - 1 : ℚ) / 6

end

end A082784.P13357688651719004354

noncomputable section

/-- A082784: Characteristic function of multiples of 7.

Offset 0, canonical program `A082784.P13357688651719004354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082784.P13357688651719004354.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083220.P880613249531740876

`n%4+n`
-/

namespace A083220.P880613249531740876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4 + n

end

end A083220.P880613249531740876

noncomputable section

/-- A083220: a(n) = n + (n mod 4).

Offset 0, canonical program `A083220.P880613249531740876`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083220 (n : ℕ) : ℤ :=
  (A083220.P880613249531740876.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083313.P2331717050571725320

`3^n-floor(2^(n-1))`
-/

namespace A083313.P2331717050571725320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A083313.P2331717050571725320

noncomputable section

/-- A083313: a(0)=1; a(n) = 3^n - 2^(n-1) for n >= 1.

Offset 0, canonical program `A083313.P2331717050571725320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A083313 (n : ℕ) : ℤ :=
  A083313.P2331717050571725320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A083313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083323.P7131212959900331336

`3^n-2^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083323.P7131212959900331336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (2 ^ n : ℤ) + 1

end

end A083323.P7131212959900331336

noncomputable section

/-- A083323: a(n) = 3^n - 2^n + 1.

Offset 0, canonical program `A083323.P7131212959900331336`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2^n+1` (program `A083323.P7131212959900331336`, by `A083323.P7131212959900331336.correct`). Lean does not check the parsing of the name. -/
def A083323 (n : ℕ) : ℤ :=
  A083323.P7131212959900331336.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-2^n+1` (program `A083323.P7131212959900331336`, by `A083323.P7131212959900331336.correct`). Lean does not check the parsing of the name. -/
def A083323.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A083420.P7041071117902394658

`2*4^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083420.P7041071117902394658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - 1

end

end A083420.P7041071117902394658

noncomputable section

/-- A083420: a(n) = 2*4^n - 1.

Offset 0, canonical program `A083420.P7041071117902394658`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n-1` (program `A083420.P7041071117902394658`, by `A083420.P7041071117902394658.correct`). Lean does not check the parsing of the name. -/
def A083420 (n : ℕ) : ℤ :=
  A083420.P7041071117902394658.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n-1` (program `A083420.P7041071117902394658`, by `A083420.P7041071117902394658.correct`). Lean does not check the parsing of the name. -/
def A083420.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A083479.P91858068577157620

`floor((a(a(n-1))-1+n)/2)` with `a(0)=0, a(1)=1`
-/

namespace A083479.P91858068577157620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(a (a (n - 1)).toNat - 1 + (n : ℤ) : ℚ) / 2⌋

end

end A083479.P91858068577157620

noncomputable section

/-- A083479: The natural numbers with all terms of A033638 inserted.

Offset 0, canonical program `A083479.P91858068577157620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083479 (n : ℕ) : ℤ :=
  A083479.P91858068577157620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083686.P7034874534047711666

`7*2^n+1`
-/

namespace A083686.P7034874534047711666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * 2 ^ n + 1

end

end A083686.P7034874534047711666

noncomputable section

/-- A083686: a(0) = 8; for n>0, a(n) = 2*a(n-1) - 1.

Offset 0, canonical program `A083686.P7034874534047711666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083686 (n : ℕ) : ℤ :=
  (A083686.P7034874534047711666.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083910.P1777275044733097431

`∑{d}[n+1, C(gcd(10, #), 10)]`
-/

namespace A083910.P1777275044733097431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (Nat.gcd 10 d) 10

end

end A083910.P1777275044733097431

noncomputable section

/-- A083910: Number of divisors of n that are congruent to 0 modulo 10.

Offset 1, canonical program `A083910.P1777275044733097431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083910 (n : ℕ) : ℤ :=
  (A083910.P1777275044733097431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083915.P1694659271945774476

`∑{d}[n+1, val(#²+5, 10)]`
-/

namespace A083915.P1694659271945774476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d ^ 2 + 5) 10

end

end A083915.P1694659271945774476

noncomputable section

/-- A083915: Number of divisors of n that are congruent to 5 modulo 10.

Offset 1, canonical program `A083915.P1694659271945774476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083915 (n : ℕ) : ℤ :=
  (A083915.P1694659271945774476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083917.P4566676204785968317

`∑{d}[n+1, val(#%10+3, 10)]`
-/

namespace A083917.P4566676204785968317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (d % 10 + 3) 10

end

end A083917.P4566676204785968317

noncomputable section

/-- A083917: Number of divisors of n that are congruent to 7 modulo 10.

Offset 1, canonical program `A083917.P4566676204785968317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083917 (n : ℕ) : ℤ :=
  (A083917.P4566676204785968317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083919.P9599260367588607406

`∑{d}[n+1, C(#%10, 9)]`
-/

namespace A083919.P9599260367588607406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose (d % 10) 9

end

end A083919.P9599260367588607406

noncomputable section

/-- A083919: Number of divisors of n that are congruent to 9 modulo 10.

Offset 1, canonical program `A083919.P9599260367588607406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083919 (n : ℕ) : ℤ :=
  (A083919.P9599260367588607406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083920.P13248752610546876947

`n-floor(sqrt(2*n+1)-1/2)`
-/

namespace A083920.P13248752610546876947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊Real.sqrt (2 * n + 1 : ℝ) - ((1 : ℚ) / 2 : ℝ)⌋

end

end A083920.P13248752610546876947

noncomputable section

/-- A083920: Number of nontriangular numbers <= n.

Offset 0, canonical program `A083920.P13248752610546876947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083920 (n : ℕ) : ℤ :=
  A083920.P13248752610546876947.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084158.P3989063176071994718

`6*a(n-1)-a(n-2)-(-1)^n` with `a(0)=0, a(1)=1`
-/

namespace A084158.P3989063176071994718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) - a (n - 2) - (-1) ^ n

end

end A084158.P3989063176071994718

noncomputable section

/-- A084158: a(n) = A000129(n) * A000129(n+1)/2.

Offset 0, canonical program `A084158.P3989063176071994718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084158 (n : ℕ) : ℤ :=
  A084158.P3989063176071994718.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084509.P7384577674323070191

`ceil(6*4^(n-3))`
-/

namespace A084509.P7384577674323070191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 * (4 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉

end

end A084509.P7384577674323070191

noncomputable section

/-- A084509: Number of ground-state 3-ball juggling sequences of period n.

Offset 0, canonical program `A084509.P7384577674323070191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A084509 (n : ℕ) : ℤ :=
  A084509.P7384577674323070191.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A084509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084637.P14296954667831689830

`2^n-n*(n^4-10*n^3+55*n²-110*n+184)/120`
-/

namespace A084637.P14296954667831689830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (n : ℚ) * (((n ^ 4 : ℤ) - (10 * n ^ 3 : ℤ) + (55 * n ^ 2 : ℤ) - (110 * n : ℤ) + 184 : ℚ) / 120)

end

end A084637.P14296954667831689830

noncomputable section

/-- A084637: Binomial transform of (1,0,1,0,1,0,1,1,1,1,1,...).

Offset 0, canonical program `A084637.P14296954667831689830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084637 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084637.P14296954667831689830.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084849.P12066089379512336478

`1+n+2*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084849.P12066089379512336478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + (n + 2 * n ^ 2)

end

end A084849.P12066089379512336478

noncomputable section

/-- A084849: a(n) = 1 + n + 2*n^2.

Offset 0, canonical program `A084849.P12066089379512336478`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+n+2*n²` (program `A084849.P12066089379512336478`, by `A084849.P12066089379512336478.correct`). Lean does not check the parsing of the name. -/
def A084849 (n : ℕ) : ℤ :=
  (A084849.P12066089379512336478.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+n+2*n²` (program `A084849.P12066089379512336478`, by `A084849.P12066089379512336478.correct`). Lean does not check the parsing of the name. -/
def A084849.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A084964.P4621905136888418764

`n+1-a(n-1)` with `a(0)=2`
-/

namespace A084964.P4621905136888418764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) + (1 - a (n - 1))

end

end A084964.P4621905136888418764

noncomputable section

/-- A084964: Follow n+2 by n. Also solution of a(n+2)=a(n)+1, a(0)=2, a(1)=0.

Offset 0, canonical program `A084964.P4621905136888418764`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084964 (n : ℕ) : ℤ :=
  A084964.P4621905136888418764.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085090.P7648760271981686645

`∑{p}[2*n+1, #*floor(#/(n+1))]`
-/

namespace A085090.P7648760271981686645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A085090.P7648760271981686645

noncomputable section

/-- A085090: If 2n-1 is prime then a(n) = 2n-1, otherwise a(n) = 0.

Offset 1, canonical program `A085090.P7648760271981686645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085090 (n : ℕ) : ℤ :=
  A085090.P7648760271981686645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085141.P2552504133626541575

`floor((sqrt(24*n+1)-1)/6)`
-/

namespace A085141.P2552504133626541575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (24 * n + 1 : ℝ) - 1) / 6⌋

end

end A085141.P2552504133626541575

noncomputable section

/-- A085141: Greatest nonnegative integer k such that k(3k+1)/2 <= n.

Offset 0, canonical program `A085141.P2552504133626541575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085141 (n : ℕ) : ℤ :=
  A085141.P2552504133626541575.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085141.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085281.P9557865631393772857

`ceil(2^(n-1)+3^(n-1))`
-/

namespace A085281.P9557865631393772857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A085281.P9557865631393772857

noncomputable section

/-- A085281: Expansion of (1 - 3*x + x^2)/((1-2*x)*(1-3*x)).

Offset 0, canonical program `A085281.P9557865631393772857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A085281 (n : ℕ) : ℤ :=
  A085281.P9557865631393772857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A085281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085750.P14403151785011647536

`(-2)^n+4*a(n-2)` with `a(0)=0, a(1)=-1`
-/

namespace A085750.P14403151785011647536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n a =>
  (-2) ^ n + 4 * a (n - 2)

end

end A085750.P14403151785011647536

noncomputable section

/-- A085750: Determinant of the symmetric n X n matrix A defined by A[i,j] = |i-j| for 1 <= i,j <= n.

Offset 1, canonical program `A085750.P14403151785011647536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A085750 (n : ℕ) : ℤ :=
  A085750.P14403151785011647536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A085750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085839.P11294222464140753470

`floor((π+1/π)*a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A085839.P11294222464140753470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(Real.pi + 1 / Real.pi) * (a (n - 1) : ℝ) - (a (n - 2) : ℝ)⌋

end

end A085839.P11294222464140753470

noncomputable section

/-- A085839: a(0)=1, a(1)=3, a(n) = floor((Pi + 1/Pi)*a(n-1) - a(n-2)).

Offset 0, canonical program `A085839.P11294222464140753470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A085839 (n : ℕ) : ℤ :=
  A085839.P11294222464140753470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A085839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085960.P9607881349891133100

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=16, a(4)=25, a(5)=34, a(6)=49, a(7)=64, a(8)=81`
-/

namespace A085960.P9607881349891133100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9, 16, 25, 34, 49, 64, 81] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A085960.P9607881349891133100

noncomputable section

/-- A085960: Size of the largest code of length 4 and minimum distance 3 over an alphabet of size n. This is usually denoted by A_{n}(4,3).

Offset 1, canonical program `A085960.P9607881349891133100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085960 (n : ℕ) : ℤ :=
  A085960.P9607881349891133100.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086090.P1910188759893739702

`2^n+n*3^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086090.P1910188759893739702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n * 3 ^ n

end

end A086090.P1910188759893739702

noncomputable section

/-- A086090: a(n) = 2^n + n*3^n.

Offset 0, canonical program `A086090.P1910188759893739702`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n*3^n` (program `A086090.P1910188759893739702`, by `A086090.P1910188759893739702.correct`). Lean does not check the parsing of the name. -/
def A086090 (n : ℕ) : ℤ :=
  (A086090.P1910188759893739702.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+n*3^n` (program `A086090.P1910188759893739702`, by `A086090.P1910188759893739702.correct`). Lean does not check the parsing of the name. -/
def A086090.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A086436.P11265761020980018024

`∑{e}[abs(1-n)+2, #]`
-/

namespace A086436.P11265761020980018024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A086436.P11265761020980018024

noncomputable section

/-- A086436: Maximum number of parts possible in a factorization of n; a(1) = 1, and for n > 1, a(n) = A001222(n) = bigomega(n).

Offset 1, canonical program `A086436.P11265761020980018024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086436 (n : ℕ) : ℤ :=
  (A086436.P11265761020980018024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086799.P9205918305807423925

`or(n+1, n)`
-/

namespace A086799.P9205918305807423925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) n

end

end A086799.P9205918305807423925

noncomputable section

/-- A086799: Replace all trailing 0's with 1's in binary representation of n.

Offset 1, canonical program `A086799.P9205918305807423925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086799 (n : ℕ) : ℤ :=
  (A086799.P9205918305807423925.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086972.P628227835051383847

`n*3^(n-1)+(3^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086972.P628227835051383847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (3 ^ n + 1 : ℚ) / 2

end

end A086972.P628227835051383847

noncomputable section

/-- A086972: a(n) = n*3^(n-1) + (3^n + 1)/2.

Offset 0, canonical program `A086972.P628227835051383847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086972 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086972.P628227835051383847.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087049.P15788393958415365993

`round((n-2)/(∏{p}[n, #]+n-3))`
-/

namespace A087049.P15788393958415365993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) / (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ((n : ℤ) - 3) : ℚ))

end

end A087049.P15788393958415365993

noncomputable section

/-- A087049: Characteristic sequence for numbers n>=0 that are either squares or have a square > 1 as factor.

Offset 0, canonical program `A087049.P15788393958415365993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087049 (n : ℕ) : ℤ :=
  A087049.P15788393958415365993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087100.P1092758754216716327

`4*a(n-2)-5*a(n-4)+2*a(n-6)` with `a(0)=0, a(1)=1, a(2)=11, a(3)=3, a(4)=22, a(5)=7`
-/

namespace A087100.P1092758754216716327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11, 3, 22, 7] fun n a =>
  4 * a (n - 2) - 5 * a (n - 4) + 2 * a (n - 6)

end

end A087100.P1092758754216716327

noncomputable section

/-- A087100: A000225 (2^n - 1) interlaced with A008593 (11n).

Offset 0, canonical program `A087100.P1092758754216716327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087100 (n : ℕ) : ℤ :=
  A087100.P1092758754216716327.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087299.P14264434224945864369

`2*n*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A087299.P14264434224945864369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (n * a (n - 2))

end

end A087299.P14264434224945864369

noncomputable section

/-- A087299: Ratio of volume of n-dimensional ball to circumscribing n-cube is Pi^floor(n/2) divided by a(n).

Offset 0, canonical program `A087299.P14264434224945864369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087299 (n : ℕ) : ℤ :=
  (A087299.P14264434224945864369.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087433.P13544932972812539470

`8*a(n-1)-19*a(n-2)+12*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`
-/

namespace A087433.P13544932972812539470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20] fun n a =>
  8 * a (n - 1) - 19 * a (n - 2) + 12 * a (n - 3)

end

end A087433.P13544932972812539470

noncomputable section

/-- A087433: Expansion of g.f.: (1-2*x)*(1-4*x+x^2)/((1-x)*(1-3*x)*(1-4*x)).

Offset 0, canonical program `A087433.P13544932972812539470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087433 (n : ℕ) : ℤ :=
  A087433.P13544932972812539470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087507.P14226368822229017275

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=2, a(5)=2`
-/

namespace A087507.P14226368822229017275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4, 2, 2] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A087507.P14226368822229017275

noncomputable section

/-- A087507: #{0<=k<=n: k*n is divisible by 3}.

Offset 0, canonical program `A087507.P14226368822229017275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087507 (n : ℕ) : ℤ :=
  A087507.P14226368822229017275.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087745.P15266154555943106725

`a(n-2)+2*a(and(n, n-2))` with `a(0)=1, a(1)=1`
-/

namespace A087745.P15266154555943106725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

end

end A087745.P15266154555943106725

noncomputable section

/-- A087745: Numbers A001317 repeated.

Offset 0, canonical program `A087745.P15266154555943106725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A087745 (n : ℕ) : ℤ :=
  (A087745.P15266154555943106725.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A087745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087826.P2960150435277069079

`a(n-a(n-1))+a(a(n-a(n-2))-1)` with `a(0)=1, a(1)=1`
-/

namespace A087826.P2960150435277069079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - a (n - 1)) + a (a (n - a (n - 2)) - 1)

end

end A087826.P2960150435277069079

noncomputable section

/-- A087826: a(n) = a(n-a(n-1)) + a(a(n-a(n-2))).

Offset 1, canonical program `A087826.P2960150435277069079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087826 (n : ℕ) : ℤ :=
  (A087826.P2960150435277069079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087960.P15232368387022886755

`a(n-4)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=1`
-/

namespace A087960.P15232368387022886755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 1] fun n a =>
  a (n - 4)

end

end A087960.P15232368387022886755

noncomputable section

/-- A087960: a(n) = (-1)^binomial(n+1,2).

Offset 0, canonical program `A087960.P15232368387022886755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087960 (n : ℕ) : ℤ :=
  A087960.P15232368387022886755.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088163.P10907963566702275842

`5*a(n-3)-4*a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7, a(5)=10`
-/

namespace A088163.P10907963566702275842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 7, 10] fun n a =>
  5 * a (n - 3) - 4 * a (n - 6)

end

end A088163.P10907963566702275842

noncomputable section

/-- A088163: Numbers for which rotating one binary place to the right less rotating one binary place to the left is equal to zero.

Offset 0, canonical program `A088163.P10907963566702275842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088163 (n : ℕ) : ℤ :=
  A088163.P10907963566702275842.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088226.P6783138897017131927

`abs(a(n-1)-a(n-2)-a(n-3))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A088226.P6783138897017131927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  |a (n - 1) - a (n - 2) - a (n - 3)|

end

end A088226.P6783138897017131927

noncomputable section

/-- A088226: a(1)=0, a(2)=0, a(3)=1; for n>3, a(n) = abs(a(n-1) - a(n-2) - a(n-3)).

Offset 1, canonical program `A088226.P6783138897017131927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088226 (n : ℕ) : ℤ :=
  A088226.P6783138897017131927.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088705.P12224062743589857877

`∑{e}[xor(n, -n), 2-#]`
-/

namespace A088705.P12224062743589857877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (2 - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A088705.P12224062743589857877

noncomputable section

/-- A088705: First differences of A000120. One minus exponent of 2 in n.

Offset 0, canonical program `A088705.P12224062743589857877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088705 (n : ℕ) : ℤ :=
  A088705.P12224062743589857877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088911.P10625138519151970146

`a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=0, a(5)=0`
-/

namespace A088911.P10625138519151970146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 0, 0, 0] fun n a =>
  a (n - 6)

end

end A088911.P10625138519151970146

noncomputable section

/-- A088911: Period 6: repeat [1, 1, 1, 0, 0, 0].

Offset 0, canonical program `A088911.P10625138519151970146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088911 (n : ℕ) : ℤ :=
  (A088911.P10625138519151970146.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089068.P5558120928903495532

`a(n-1)+a(n-2)+a(n-3)+2` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A089068.P5558120928903495532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + 2

end

end A089068.P5558120928903495532

noncomputable section

/-- A089068: a(n) = a(n-1)+a(n-2)+a(n-3)+2 with a(0)=0, a(1)=0 and a(2)=1.

Offset 0, canonical program `A089068.P5558120928903495532`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+2` (program `A089068.P5558120928903495532`, by `A089068.P5558120928903495532.correct`). Lean does not check the parsing of the name. -/
def A089068 (n : ℕ) : ℤ :=
  (A089068.P5558120928903495532.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+2` (program `A089068.P5558120928903495532`, by `A089068.P5558120928903495532.correct`). Lean does not check the parsing of the name. -/
def A089068.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A089612.P18446740052930697388

`(xor(n+1, or(1, n))+1)%5`
-/

namespace A089612.P18446740052930697388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor (n + 1) (Nat.lor 1 n) + 1) % 5

end

end A089612.P18446740052930697388

noncomputable section

/-- A089612: a(n) = ((-1)^(n+1)*A002425(n)) modulo 5.

Offset 1, canonical program `A089612.P18446740052930697388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A089612 (n : ℕ) : ℤ :=
  (A089612.P18446740052930697388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A089612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089800.P1400056330218484811

`2*(floor(sqrt(n+1)+1/2)-floor(sqrt(n)+1/2))`
-/

namespace A089800.P1400056330218484811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊Real.sqrt (n + 1 : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ - ⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋)

end

end A089800.P1400056330218484811

noncomputable section

/-- A089800: Expansion of Jacobi theta function theta_2(q)/q^(1/4).

Offset 0, canonical program `A089800.P1400056330218484811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089800 (n : ℕ) : ℤ :=
  A089800.P1400056330218484811.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090244.P2139374117242828698

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=1`
-/

namespace A090244.P2139374117242828698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 1] fun n a =>
  a (n - 2) + a (n - 4)

end

end A090244.P2139374117242828698

noncomputable section

/-- A090244: a(0) = 1; a(1) = 2; a(n) = { a(n-1) + a(n-2) for n even, a(n-1) - a(n-2) for n odd }.

Offset 0, canonical program `A090244.P2139374117242828698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A090244 (n : ℕ) : ℤ :=
  (A090244.P2139374117242828698.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A090244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090585.P14463148610154552064

`or(1, C(∏{p}[n+2, #-1], n))`
-/

namespace A090585.P14463148610154552064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat n)

end

end A090585.P14463148610154552064

noncomputable section

/-- A090585: Numerator of (Sum_{k=1..n} k) / (Product_{k=1..n} k).

Offset 1, canonical program `A090585.P14463148610154552064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090585 (n : ℕ) : ℤ :=
  (A090585.P14463148610154552064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090740.P5994543931448372202

`val(∑[∑[4*n]+2], 2)`
-/

namespace A090740.P5994543931448372202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A090740.P5994543931448372202

noncomputable section

/-- A090740: Exponent of 2 in 3^n - 1.

Offset 1, canonical program `A090740.P5994543931448372202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090740 (n : ℕ) : ℤ :=
  (A090740.P5994543931448372202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090809.P13992595601183232083

`2*C(n, 2)+4*C(n, 3)+3*C(n, 4)`
-/

namespace A090809.P13992595601183232083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2 + 4 * Nat.choose n 3 + 3 * Nat.choose n 4

end

end A090809.P13992595601183232083

noncomputable section

/-- A090809: Coefficient of the irreducible character of S_m indexed by (m-2n+2,2n-2) in the n-th Kronecker power of the representation indexed by (m-2,2).

Offset 0, canonical program `A090809.P13992595601183232083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090809 (n : ℕ) : ℤ :=
  (A090809.P13992595601183232083.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A091379.P6458046850271695309

`∏{p}[n+1, and(2, -#)]`
-/

namespace A091379.P6458046850271695309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.land 2 (-(p : ℤ))

end

end A091379.P6458046850271695309

noncomputable section

/-- A091379: a(n) = Product_{ p | n } (1 + Legendre(-1,p) ).

Offset 1, canonical program `A091379.P6458046850271695309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091379 (n : ℕ) : ℤ :=
  A091379.P6458046850271695309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091393.P13380500772166686256

`∏{p}[n+1, (#+1)%3]`
-/

namespace A091393.P13380500772166686256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 1) % 3

end

end A091393.P13380500772166686256

noncomputable section

/-- A091393: a(n) = Product_{ p | n } (1 + Legendre(-3,p) ).

Offset 1, canonical program `A091393.P13380500772166686256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091393 (n : ℕ) : ℤ :=
  (A091393.P13380500772166686256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091400.P16416560500438088350

`∏{p}[n+1, 3-#%4]`
-/

namespace A091400.P16416560500438088350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (3 - ((p % 4 : ℕ) : ℤ))

end

end A091400.P16416560500438088350

noncomputable section

/-- A091400: a(n) = Product_{ odd primes p | n } (1 + Legendre(-1,p) ).

Offset 1, canonical program `A091400.P16416560500438088350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091400 (n : ℕ) : ℤ :=
  A091400.P16416560500438088350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091712.P8668537984067465717

`a(n-1)*(4*n-10)/n` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A091712.P8668537984067465717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  a (n - 1) * (((4 * n : ℤ) - 10 : ℚ) / (n : ℚ))

end

end A091712.P8668537984067465717

noncomputable section

/-- A091712: a(n) = 6*(2n-4)!/((n-2)!n!), if n>2. a(0) = 1, a(1) = a(2) = 2.

Offset 0, canonical program `A091712.P8668537984067465717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091712 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091712.P8668537984067465717.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A091712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092206.P7989034121377248669

`comp[∪[3*n², n²]]`
-/

namespace A092206.P7989034121377248669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A092206.P7989034121377248669

noncomputable section

/-- A092206: Positive integers that are not of the form n^2 or 3n^2.

Offset 1, canonical program `A092206.P7989034121377248669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092206 (n : ℕ) : ℤ :=
  (A092206.P7989034121377248669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092261.P13352791853033325172

`∑{d}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #]`
-/

namespace A092261.P13352791853033325172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A092261.P13352791853033325172

noncomputable section

/-- A092261: Sum of unitary, squarefree divisors of n, including 1.

Offset 1, canonical program `A092261.P13352791853033325172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092261 (n : ℕ) : ℤ :=
  (A092261.P13352791853033325172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092278.P7619994046950136213

`floor((3*n+4)/16)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092278.P7619994046950136213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n + 4 : ℚ) / 16⌋

end

end A092278.P7619994046950136213

noncomputable section

/-- A092278: Floor( (3*n+4)/16 ).

Offset 0, canonical program `A092278.P7619994046950136213`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*n+4)/16)` (program `A092278.P7619994046950136213`, by `A092278.P7619994046950136213.correct`). Lean does not check the parsing of the name. -/
def A092278 (n : ℕ) : ℤ :=
  A092278.P7619994046950136213.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*n+4)/16)` (program `A092278.P7619994046950136213`, by `A092278.P7619994046950136213.correct`). Lean does not check the parsing of the name. -/
def A092278.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A092323.P13780629136480377901

`or(ceil(n/2), a(n-1))` with `a(0)=0`
-/

namespace A092323.P13780629136480377901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor ⌈(n : ℚ) / 2⌉ (a (n - 1))

end

end A092323.P13780629136480377901

noncomputable section

/-- A092323: 2^m - 1 appears 2^m times.

Offset 1, canonical program `A092323.P13780629136480377901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092323 (n : ℕ) : ℤ :=
  A092323.P13780629136480377901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092412.P7620267113920684330

`(val(n+1, 2)+1)%4`
-/

namespace A092412.P7620267113920684330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1) % 4

end

end A092412.P7620267113920684330

noncomputable section

/-- A092412: Fixed point of the morphism 0->11, 1->12, 2->13, 3->10, starting from a(1) = 1.

Offset 1, canonical program `A092412.P7620267113920684330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092412 (n : ℕ) : ℤ :=
  (A092412.P7620267113920684330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092498.P1690611083289899372

`(4*n^3+21*n²+35*n+18-6*floor((n+2)/3))/18`
-/

namespace A092498.P1690611083289899372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 + 21 * n ^ 2 + 35 * n : ℤ) + (18 - 6 * ⌊(n + 2 : ℚ) / 3⌋) : ℚ) / 18

end

end A092498.P1690611083289899372

noncomputable section

/-- A092498: Expansion of g.f. (1 + x + 2*x^2)/((1 - x)^3*(1 - x^3)).

Offset 0, canonical program `A092498.P1690611083289899372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A092498.P1690611083289899372.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092535.P17236715165485829059

`ceil(Δ[(n²/(n+2))²])`
-/

namespace A092535.P17236715165485829059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℚ) / (n + 2 : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A092535.P17236715165485829059

noncomputable section

/-- A092535: Expansion of g.f. (1+x^2)*(1+x^3)/((1-x)*(1-x^2)).

Offset 0, canonical program `A092535.P17236715165485829059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092535 (n : ℕ) : ℤ :=
  A092535.P17236715165485829059.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092886.P5116893376255672126

`a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A092886.P5116893376255672126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A092886.P5116893376255672126

noncomputable section

/-- A092886: Expansion of x/(x^4-x^3-2x^2-x+1).

Offset 0, canonical program `A092886.P5116893376255672126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092886 (n : ℕ) : ℤ :=
  A092886.P5116893376255672126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092886.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093148.P13253956686497616578

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A093148.P13253956686497616578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  a (n - 4)

end

end A093148.P13253956686497616578

noncomputable section

/-- A093148: a(n) = gcd(Fibonacci(n+5), Fibonacci(n+1)).

Offset 0, canonical program `A093148.P13253956686497616578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093148 (n : ℕ) : ℤ :=
  (A093148.P13253956686497616578.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093178.P12085837158869515185

`C(n, 2*floor(n/2))`
-/

namespace A093178.P12085837158869515185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A093178.P12085837158869515185

noncomputable section

/-- A093178: If n is even then 1, otherwise n.

Offset 0, canonical program `A093178.P12085837158869515185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093178 (n : ℕ) : ℤ :=
  (A093178.P12085837158869515185.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093178.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093390.P1811915316347876173

`floor(n/9)+floor((n+1)/9)+floor((n+2)/9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093390.P1811915316347876173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 9⌋ + ⌊(n + 1 : ℚ) / 9⌋ + ⌊(n + 2 : ℚ) / 9⌋

end

end A093390.P1811915316347876173

noncomputable section

/-- A093390: a(n) = floor(n/9) + floor((n+1)/9) + floor((n+2)/9).

Offset 0, canonical program `A093390.P1811915316347876173`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/9)+floor((n+1)/9)+floor((n+2)/9)` (program `A093390.P1811915316347876173`, by `A093390.P1811915316347876173.correct`). Lean does not check the parsing of the name. -/
def A093390 (n : ℕ) : ℤ :=
  A093390.P1811915316347876173.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/9)+floor((n+1)/9)+floor((n+2)/9)` (program `A093390.P1811915316347876173`, by `A093390.P1811915316347876173.correct`). Lean does not check the parsing of the name. -/
def A093390.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A093646.P9679200679627754189

`Δ[n*C(n+8, 9)]`
-/

namespace A093646.P9679200679627754189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 8) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A093646.P9679200679627754189

noncomputable section

/-- A093646: Higher dimensional figurate numbers based on 12-gonal numbers A051624.

Offset 0, canonical program `A093646.P9679200679627754189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093646 (n : ℕ) : ℤ :=
  A093646.P9679200679627754189.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093709.P8053872499898483409

`(∑{d}[n, #]%2)^n`
-/

namespace A093709.P8053872499898483409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d) % 2) ^ n

end

end A093709.P8053872499898483409

noncomputable section

/-- A093709: Characteristic function of squares or twice squares.

Offset 0, canonical program `A093709.P8053872499898483409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093709 (n : ℕ) : ℤ :=
  (A093709.P8053872499898483409.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A093709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094024.P11019212625529605167

`(1-(-1)^n)*2^floor(n/2)+(-1)^n`
-/

namespace A094024.P11019212625529605167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ n : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + ((-1) ^ n : ℚ)

end

end A094024.P11019212625529605167

noncomputable section

/-- A094024: Alternating 1 with one less than the powers of 2.

Offset 0, canonical program `A094024.P11019212625529605167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094024 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094024.P11019212625529605167.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094024.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094025.P1832247547136000823

`4*a(n-2)-3*a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=12`
-/

namespace A094025.P1832247547136000823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 12] fun n a =>
  4 * a (n - 2) - 3 * a (n - 4)

end

end A094025.P1832247547136000823

noncomputable section

/-- A094025: Expansion of (1+3x)/((1-x^2)(1-3x^2)).

Offset 0, canonical program `A094025.P1832247547136000823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094025 (n : ℕ) : ℤ :=
  A094025.P1832247547136000823.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094033.P8500141743841796110

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A094033.P8500141743841796110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A094033.P8500141743841796110

noncomputable section

/-- A094033: Number of connected 2-element antichains on a labeled n-set.

Offset 0, canonical program `A094033.P8500141743841796110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094033 (n : ℕ) : ℤ :=
  A094033.P8500141743841796110.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094373.P8694457968209466808

`2*a(n-1)-1` with `a(0)=1, a(1)=2`
-/

namespace A094373.P8694457968209466808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - 1

end

end A094373.P8694457968209466808

noncomputable section

/-- A094373: Expansion of (1-x-x^2)/((1-x)*(1-2*x)).

Offset 0, canonical program `A094373.P8694457968209466808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094373 (n : ℕ) : ℤ :=
  A094373.P8694457968209466808.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094373.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094388.P2877217115633599599

`floor(3^(n-1))+1`
-/

namespace A094388.P2877217115633599599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1

end

end A094388.P2877217115633599599

noncomputable section

/-- A094388: Expansion of (1- 2*x - x^2)/((1-x)*(1-3*x)).

Offset 0, canonical program `A094388.P2877217115633599599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A094388 (n : ℕ) : ℤ :=
  A094388.P2877217115633599599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A094388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094686.P17669754225829605447

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A094686.P17669754225829605447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A094686.P17669754225829605447

noncomputable section

/-- A094686: A Fibonacci convolution.

Offset 0, canonical program `A094686.P17669754225829605447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094686 (n : ℕ) : ℤ :=
  (A094686.P17669754225829605447.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094688.P7047330486356587838

`4*a(n-1)-2*a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A094688.P7047330486356587838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 3 * a (n - 3)

end

end A094688.P7047330486356587838

noncomputable section

/-- A094688: Convolution of Fibonacci(n) and 3^n.

Offset 0, canonical program `A094688.P7047330486356587838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094688 (n : ℕ) : ℤ :=
  A094688.P7047330486356587838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094705.P6205004324361361156

`4*a(n-1)-a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A094705.P6205004324361361156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  4 * a (n - 1) - a (n - 2) - 6 * a (n - 3)

end

end A094705.P6205004324361361156

noncomputable section

/-- A094705: Convolution of Jacobsthal(n) and 3^n.

Offset 0, canonical program `A094705.P6205004324361361156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094705 (n : ℕ) : ℤ :=
  A094705.P6205004324361361156.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094729.P13902128729243799292

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A094729.P13902128729243799292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 7] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A094729.P13902128729243799292

noncomputable section

/-- A094729: Number of connected ordered 2-element multiantichains on a labeled n-set.

Offset 0, canonical program `A094729.P13902128729243799292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094729 (n : ℕ) : ℤ :=
  A094729.P13902128729243799292.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094734.P15058109410242893930

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A094734.P15058109410242893930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A094734.P15058109410242893930

noncomputable section

/-- A094734: Number of connected 2-element multiantichains on a labeled n-set.

Offset 0, canonical program `A094734.P15058109410242893930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094734 (n : ℕ) : ℤ :=
  A094734.P15058109410242893930.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094958.P10548225227132967451

`2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A094958.P10548225227132967451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5] fun n a =>
  2 * a (n - 2)

end

end A094958.P10548225227132967451

noncomputable section

/-- A094958: Numbers of the form 2^k or 5*2^k.

Offset 1, canonical program `A094958.P10548225227132967451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094958 (n : ℕ) : ℤ :=
  (A094958.P10548225227132967451.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095114.P18128364600797049740

`∑[a(n-a(a(n-1)))+1]` with `a(0)=1, a(1)=1`
-/

namespace A095114.P18128364600797049740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - f1 (f1 (n - 1))) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095114.P18128364600797049740

noncomputable section

/-- A095114: a(1)=1. a(n) = a(n-1) + (number of elements of {a(1),...,a(n-1)} that are <= n-1).

Offset 1, canonical program `A095114.P18128364600797049740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095114 (n : ℕ) : ℤ :=
  (A095114.P18128364600797049740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095116.P1610433664583290048

`p?[round(8*n/7)]+n`
-/

namespace A095116.P1610433664583290048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)

end

end A095116.P1610433664583290048

noncomputable section

/-- A095116: a(n) = prime(n) + n - 1.

Offset 1, canonical program `A095116.P1610433664583290048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095116 (n : ℕ) : ℤ :=
  A095116.P1610433664583290048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095117.P12920599782158258117

`∑[∑{p}[n, val(#, n)]]+n`
-/

namespace A095117.P12920599782158258117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A095117.P12920599782158258117

noncomputable section

/-- A095117: a(n) = pi(n) + n, where pi(n) = A000720(n) is the number of primes <= n.

Offset 0, canonical program `A095117.P12920599782158258117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095117 (n : ℕ) : ℤ :=
  (A095117.P12920599782158258117.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095121.P7315330406200092026

`2+2*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A095121.P7315330406200092026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 + 2 * a (n - 1)

end

end A095121.P7315330406200092026

noncomputable section

/-- A095121: Expansion of (1-x+2x^2)/((1-x)*(1-2x)).

Offset 0, canonical program `A095121.P7315330406200092026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095121 (n : ℕ) : ℤ :=
  (A095121.P7315330406200092026.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A095121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095661.P13867903499089103124

`∑[∑[∑[3+n]]]`
-/

namespace A095661.P13867903499089103124
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095661.P13867903499089103124

noncomputable section

/-- A095661: Fifth column (m=4) of (1,3)-Pascal triangle A095660.

Offset 0, canonical program `A095661.P13867903499089103124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095661 (n : ℕ) : ℤ :=
  (A095661.P13867903499089103124.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095662.P9837488028632929701

`∑[∑[∑[∑[∑[3+n]]]]]`
-/

namespace A095662.P9837488028632929701
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095662.P9837488028632929701

noncomputable section

/-- A095662: Seventh column (m=6) of (1,3)-Pascal triangle A095660.

Offset 0, canonical program `A095662.P9837488028632929701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095662 (n : ℕ) : ℤ :=
  (A095662.P9837488028632929701.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095664.P15803753863637898017

`∑[∑[∑[∑[∑[∑[∑[3+n]]]]]]]`
-/

namespace A095664.P15803753863637898017
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095664.P15803753863637898017

noncomputable section

/-- A095664: Ninth column (m=8) of (1,3)-Pascal triangle A095660.

Offset 0, canonical program `A095664.P15803753863637898017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095664 (n : ℕ) : ℤ :=
  (A095664.P15803753863637898017.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095665.P8124640242841663410

`∑[∑[∑[∑[∑[∑[∑[∑[3+n]]]]]]]]`
-/

namespace A095665.P8124640242841663410
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095665.P8124640242841663410

noncomputable section

/-- A095665: Tenth column (m=9) of (1,3)-Pascal triangle A095660.

Offset 0, canonical program `A095665.P8124640242841663410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095665 (n : ℕ) : ℤ :=
  (A095665.P8124640242841663410.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095667.P15204375136566822115

`∑[∑[∑[4+n]]]`
-/

namespace A095667.P15204375136566822115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095667.P15204375136566822115

noncomputable section

/-- A095667: Fifth column of the (1,4)-Pascal triangle A095666.

Offset 0, canonical program `A095667.P15204375136566822115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095667 (n : ℕ) : ℤ :=
  (A095667.P15204375136566822115.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095668.P14395489791798396254

`∑[∑[∑[∑[4+n]]]]`
-/

namespace A095668.P14395489791798396254
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095668.P14395489791798396254

noncomputable section

/-- A095668: Sixth column (m=5) of (1,4)-Pascal triangle A095666.

Offset 0, canonical program `A095668.P14395489791798396254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095668 (n : ℕ) : ℤ :=
  (A095668.P14395489791798396254.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095671.P17568862850067756937

`∑[∑[∑[∑[∑[∑[∑[4+n]]]]]]]`
-/

namespace A095671.P17568862850067756937
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095671.P17568862850067756937

noncomputable section

/-- A095671: Ninth column (m=8) of (1,4)-Pascal triangle A095666.

Offset 0, canonical program `A095671.P17568862850067756937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095671 (n : ℕ) : ℤ :=
  (A095671.P17568862850067756937.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095819.P8458071415618170944

`∑[∑[∑[∑[∑[∑[∑[∑[4+n]]]]]]]]`
-/

namespace A095819.P8458071415618170944
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095819.P8458071415618170944

noncomputable section

/-- A095819: Tenth column (m=9) of (1,4)-Pascal triangle A095666.

Offset 0, canonical program `A095819.P8458071415618170944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095819 (n : ℕ) : ℤ :=
  (A095819.P8458071415618170944.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095982.P14027984297251162201

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095982.P14027984297251162201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6, 9] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 4)

end

end A095982.P14027984297251162201

noncomputable section

/-- A095982: a(n) = a(n-1) + a(n-2) + a(n-4) with a(0) = 2, a(1) = 3, a(2) = 6, a(3) = 9.

Offset 0, canonical program `A095982.P14027984297251162201`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A095982.P14027984297251162201`, by `A095982.P14027984297251162201.correct`). Lean does not check the parsing of the name. -/
def A095982 (n : ℕ) : ℤ :=
  (A095982.P14027984297251162201.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A095982.P14027984297251162201`, by `A095982.P14027984297251162201.correct`). Lean does not check the parsing of the name. -/
def A095982.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A095987.P7585680597754048457

`floor(n/and(n, 1-n))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A095987.P7585680597754048457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(n : ℚ) / (Int.land (n : ℤ) (1 - (n : ℤ)) : ℚ)⌋ * a (n - 2)

end

end A095987.P7585680597754048457

noncomputable section

/-- A095987: a(n) = gcd(n!!, (n-1)!!) where n!! = A006882.

Offset 0, canonical program `A095987.P7585680597754048457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A095987 (n : ℕ) : ℤ :=
  A095987.P7585680597754048457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A095987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096036.P2579463199901115478

`floor(n/a(floor(n/2)))+1` with `a(0)=1`
-/

namespace A096036.P2579463199901115478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) / (a ⌊(n : ℚ) / 2⌋.toNat : ℚ)⌋ + 1

end

end A096036.P2579463199901115478

noncomputable section

/-- A096036: a(n) = ceiling(n/a(ceiling(n/2))); a(1) = 1.

Offset 1, canonical program `A096036.P2579463199901115478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096036 (n : ℕ) : ℤ :=
  A096036.P2579463199901115478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096338.P16121698530532459035

`2/(n-1)*a(n-1)+(n+5)/(n-1)*a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096338.P16121698530532459035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 / ((n : ℤ) - 1 : ℚ) * a (n - 1) + (n + 5 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 2)

end

end A096338.P16121698530532459035

noncomputable section

/-- A096338: a(n) = (2/(n-1))*a(n-1) + ((n+5)/(n-1))*a(n-2) with a(0)=0 and a(1)=1.

Offset 0, canonical program `A096338.P16121698530532459035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096338.P16121698530532459035.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A096338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096582.P14526000618292949311

`200/2-n`
-/

namespace A096582.P14526000618292949311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (200 : ℚ) / 2 - (n : ℚ)

end

end A096582.P14526000618292949311

noncomputable section

/-- A096582: From the "100 Green Bottles" song.

Offset 1, canonical program `A096582.P14526000618292949311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A096582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096582.P14526000618292949311.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A096582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096942.P5195580502088150757

`∑[∑[∑[5+n]]]`
-/

namespace A096942.P5195580502088150757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096942.P5195580502088150757

noncomputable section

/-- A096942: Fifth column of (1,5)-Pascal triangle A096940.

Offset 0, canonical program `A096942.P5195580502088150757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096942 (n : ℕ) : ℤ :=
  (A096942.P5195580502088150757.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096943.P14727218153049152550

`∑[∑[∑[∑[5+n]]]]`
-/

namespace A096943.P14727218153049152550
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096943.P14727218153049152550

noncomputable section

/-- A096943: Sixth column of (1,5)-Pascal triangle A096940.

Offset 0, canonical program `A096943.P14727218153049152550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096943 (n : ℕ) : ℤ :=
  (A096943.P14727218153049152550.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096946.P10356546321730772549

`∑[∑[∑[∑[∑[∑[∑[5+n]]]]]]]`
-/

namespace A096946.P10356546321730772549
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096946.P10356546321730772549

noncomputable section

/-- A096946: Ninth column of (1,5)-Pascal triangle A096940.

Offset 0, canonical program `A096946.P10356546321730772549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096946 (n : ℕ) : ℤ :=
  (A096946.P10356546321730772549.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096947.P13858147006956726110

`∑[∑[∑[∑[∑[∑[∑[∑[5+n]]]]]]]]`
-/

namespace A096947.P13858147006956726110
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A096947.P13858147006956726110

noncomputable section

/-- A096947: Tenth column of (1,5)-Pascal triangle A096940.

Offset 0, canonical program `A096947.P13858147006956726110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096947 (n : ℕ) : ℤ :=
  (A096947.P13858147006956726110.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097064.P3247379512299581942

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A097064.P3247379512299581942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A097064.P3247379512299581942

noncomputable section

/-- A097064: Expansion of (1 - 4*x + 6*x^2)/(1 - 2*x)^2.

Offset 0, canonical program `A097064.P3247379512299581942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097064 (n : ℕ) : ℤ :=
  A097064.P3247379512299581942.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097065.P10835122678995950078

`n-2-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A097065.P10835122678995950078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  (n : ℤ) - 2 - a (n - 3)

end

end A097065.P10835122678995950078

noncomputable section

/-- A097065: Interleave n+1 and n-1.

Offset 0, canonical program `A097065.P10835122678995950078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097065 (n : ℕ) : ℤ :=
  A097065.P10835122678995950078.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097067.P17173510728612276543

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A097067.P17173510728612276543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A097067.P17173510728612276543

noncomputable section

/-- A097067: Expansion of g.f. (1-4*x+5*x^2)/(1-2*x)^2.

Offset 0, canonical program `A097067.P17173510728612276543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097067 (n : ℕ) : ℤ :=
  A097067.P17173510728612276543.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097256.P18324559811505528946

`5*(2*a(floor(n/2))-(-1)^n+1)-n%2` with `a(0)=0`
-/

namespace A097256.P18324559811505528946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A097256.P18324559811505528946

noncomputable section

/-- A097256: Numbers whose set of base 10 digits is {0,9}.

Offset 0, canonical program `A097256.P18324559811505528946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097256 (n : ℕ) : ℤ :=
  A097256.P18324559811505528946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097299.P5102729888030222150

`∑[∑[∑[∑[∑[∑[∑[6+n]]]]]]]`
-/

namespace A097299.P5102729888030222150
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097299.P5102729888030222150

noncomputable section

/-- A097299: Ninth column (m=8) of (1,6)-Pascal triangle A096956.

Offset 0, canonical program `A097299.P5102729888030222150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097299 (n : ℕ) : ℤ :=
  (A097299.P5102729888030222150.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097300.P13929863190191987126

`∑[∑[∑[∑[∑[∑[∑[∑[n+6]]]]]]]]`
-/

namespace A097300.P13929863190191987126
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097300.P13929863190191987126

noncomputable section

/-- A097300: Tenth column (m=9) of (1,6)-Pascal triangle A096956.

Offset 0, canonical program `A097300.P13929863190191987126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097300 (n : ℕ) : ℤ :=
  (A097300.P13929863190191987126.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097325.P186850824810798276

`ceil(5*n/6)-floor(5*n/6)`
-/

namespace A097325.P186850824810798276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 6)⌉ - ⌊5 * ((n : ℚ) / 6)⌋

end

end A097325.P186850824810798276

noncomputable section

/-- A097325: Period 6: repeat [0, 1, 1, 1, 1, 1].

Offset 0, canonical program `A097325.P186850824810798276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097325 (n : ℕ) : ℤ :=
  A097325.P186850824810798276.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097362.P15319810050143725646

`floor((n+3)/gcd(2, n))`
-/

namespace A097362.P15319810050143725646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (Nat.gcd 2 n : ℚ)⌋

end

end A097362.P15319810050143725646

noncomputable section

/-- A097362: a(n) = (n+1)/2 if n is odd, n+2 otherwise.

Offset 1, canonical program `A097362.P15319810050143725646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097362 (n : ℕ) : ℤ :=
  A097362.P15319810050143725646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097801.P16842108591234661419

`a(n-1)*(2*n-1)` with `a(0)=2, a(1)=2`
-/

namespace A097801.P16842108591234661419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) * ((2 * n : ℤ) - 1)

end

end A097801.P16842108591234661419

noncomputable section

/-- A097801: a(n) = (2*n)!/(n!*2^(n-1)).

Offset 0, canonical program `A097801.P16842108591234661419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097801 (n : ℕ) : ℤ :=
  A097801.P16842108591234661419.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098180.P11629086435957811381

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A098180.P11629086435957811381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A098180.P11629086435957811381

noncomputable section

/-- A098180: Odd numbers with twice the odd numbers repeated in order between them.

Offset 0, canonical program `A098180.P11629086435957811381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098180 (n : ℕ) : ℤ :=
  A098180.P11629086435957811381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098180.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098600.P9313807844199052119

`2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A098600.P9313807844199052119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 2) + a (n - 3)

end

end A098600.P9313807844199052119

noncomputable section

/-- A098600: a(n) = Fibonacci(n-1) + Fibonacci(n+1) - (-1)^n.

Offset 0, canonical program `A098600.P9313807844199052119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098600 (n : ℕ) : ℤ :=
  (A098600.P9313807844199052119.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A098662.P3829456231515821937

`C(n, floor(n/2))*3^floor(n/2)`
-/

namespace A098662.P3829456231515821937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℚ) * (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A098662.P3829456231515821937

noncomputable section

/-- A098662: Expansion of e.g.f. BesselI(0,2*sqrt(3)*x) + BesselI(1,2*sqrt(3)*x)/sqrt(3).

Offset 0, canonical program `A098662.P3829456231515821937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098662 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A098662.P3829456231515821937.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099196.P16367201159128015509

`18*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A099196.P16367201159128015509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  18 * a (n - 1) / ((n : ℤ) - 1 : ℚ) + a (n - 2)

end

end A099196.P16367201159128015509

noncomputable section

/-- A099196: a(n) = n*(2*n^8 + 84*n^6 + 798*n^4 + 1636*n^2 + 315)/2835.

Offset 0, canonical program `A099196.P16367201159128015509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A099196.P16367201159128015509.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099777.P15028538309011940573

`∏{e}[2*(n+1), #+1]`
-/

namespace A099777.P15028538309011940573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A099777.P15028538309011940573

noncomputable section

/-- A099777: Number of divisors of 2n.

Offset 1, canonical program `A099777.P15028538309011940573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099777 (n : ℕ) : ℤ :=
  (A099777.P15028538309011940573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099838.P16347369657432020008

`a(n-3)` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=3, a(4)=-3`
-/

namespace A099838.P16347369657432020008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 3, -3] fun n a =>
  a (n - 3)

end

end A099838.P16347369657432020008

noncomputable section

/-- A099838: Expansion of (1-x)^2*(1+x)/(1+x+x^2).

Offset 0, canonical program `A099838.P16347369657432020008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099838 (n : ℕ) : ℤ :=
  A099838.P16347369657432020008.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099925.P4208860571590985935

`2*a(n-2)+a(n-3)` with `a(0)=3, a(1)=0, a(2)=4`
-/

namespace A099925.P4208860571590985935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 4] fun n a =>
  2 * a (n - 2) + a (n - 3)

end

end A099925.P4208860571590985935

noncomputable section

/-- A099925: a(n) = Lucas(n) + (-1)^n.

Offset 0, canonical program `A099925.P4208860571590985935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099925 (n : ℕ) : ℤ :=
  (A099925.P4208860571590985935.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099990.P7805276027461421133

`∏{e}[2*n+1, -floor(1/#)]`
-/

namespace A099990.P7805276027461421133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A099990.P7805276027461421133

noncomputable section

/-- A099990: a(n) = Moebius(2n+1).

Offset 0, canonical program `A099990.P7805276027461421133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099990 (n : ℕ) : ℤ :=
  A099990.P7805276027461421133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100051.P4999783186224815608

`a(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A100051.P4999783186224815608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 1) - a (n - 2)

end

end A100051.P4999783186224815608

noncomputable section

/-- A100051: A Chebyshev transform of 1,1,1,...

Offset 0, canonical program `A100051.P4999783186224815608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100051 (n : ℕ) : ℤ :=
  A100051.P4999783186224815608.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100157.P4385611677759606701

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=55, a(3)=140`
-/

namespace A100157.P4385611677759606701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 55, 140] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A100157.P4385611677759606701

noncomputable section

/-- A100157: Structured rhombic dodecahedral numbers (vertex structure 9).

Offset 1, canonical program `A100157.P4385611677759606701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100157 (n : ℕ) : ℤ :=
  A100157.P4385611677759606701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100995.P9596901243079307024

`round(n*∏{e}[n+1, #/n])`
-/

namespace A100995.P9596901243079307024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n : ℚ)))

end

end A100995.P9596901243079307024

noncomputable section

/-- A100995: If n is a prime power p^m, m >= 1, then m, otherwise 0.

Offset 1, canonical program `A100995.P9596901243079307024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100995 (n : ℕ) : ℤ :=
  A100995.P9596901243079307024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101400.P1282599316843606203

`a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A101400.P1282599316843606203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  a (n - 1) + 2 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A101400.P1282599316843606203

noncomputable section

/-- A101400: a(n) = a(n-1) + 2*a(n-2) + a(n-3) - a(n-4).

Offset 0, canonical program `A101400.P1282599316843606203`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` (program `A101400.P1282599316843606203`, by `A101400.P1282599316843606203.correct`). Lean does not check the parsing of the name. -/
def A101400 (n : ℕ) : ℤ :=
  A101400.P1282599316843606203.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)-a(n-4)` (program `A101400.P1282599316843606203`, by `A101400.P1282599316843606203.correct`). Lean does not check the parsing of the name. -/
def A101400.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A101605.P6889417430511911463

`val(∑{e}[n+1, #]+abs(1-n), n+2)`
-/

namespace A101605.P6889417430511911463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + |1 - (n : ℤ)|).toNat (n + 2)

end

end A101605.P6889417430511911463

noncomputable section

/-- A101605: a(n) = 1 if n is a product of exactly 3 (not necessarily distinct) primes, otherwise 0.

Offset 1, canonical program `A101605.P6889417430511911463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101605 (n : ℕ) : ℤ :=
  (A101605.P6889417430511911463.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101776.P7591987110136871603

`ceil(sqrt(2*n+1))`
-/

namespace A101776.P7591987110136871603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n + 1 : ℝ)⌉

end

end A101776.P7591987110136871603

noncomputable section

/-- A101776: Smallest k such that k^2 is equal to the sum of n not-necessarily-distinct primes plus 1.

Offset 0, canonical program `A101776.P7591987110136871603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101776 (n : ℕ) : ℤ :=
  A101776.P7591987110136871603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101808.P11599829099457824818

`∏{p}[Δ[n²], round(#/(2*n))]`
-/

namespace A101808.P11599829099457824818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.roundAway ((p : ℚ) / (2 * n : ℚ))

end

end A101808.P11599829099457824818

noncomputable section

/-- A101808: Number of primes between two consecutive even numbers.

Offset 0, canonical program `A101808.P11599829099457824818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101808 (n : ℕ) : ℤ :=
  A101808.P11599829099457824818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101855.P8821500953977609156

`∑[∑[∑[∑[n+5]+1]]]`
-/

namespace A101855.P8821500953977609156
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A101855.P8821500953977609156

noncomputable section

/-- A101855: a(n) = n*(n+1)*(n+2)*(n+4)*(n+23)/120.

Offset 1, canonical program `A101855.P8821500953977609156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101855 (n : ℕ) : ℤ :=
  (A101855.P8821500953977609156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101882.P8942969414078229061

`C(ceil((n+1)/3), 2)+n+1`
-/

namespace A101882.P8942969414078229061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n + 1 : ℚ) / 3⌉.toNat 2 + (n + 1)

end

end A101882.P8942969414078229061

noncomputable section

/-- A101882: Write three numbers, skip one, write three, skip two, write three, skip three... and so on.

Offset 1, canonical program `A101882.P8942969414078229061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101882 (n : ℕ) : ℤ :=
  (A101882.P8942969414078229061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102239.P15409400863625826799

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=7, a(2)=31`
-/

namespace A102239.P15409400863625826799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 31] fun n a =>
  5 * a (n - 1) + a (n - 2) - 5 * a (n - 3)

end

end A102239.P15409400863625826799

noncomputable section

/-- A102239: a(n) = (Sum_{i=0..n} 5^i) + 1 - (Sum_{i=0..n} 5^i) mod 2.

Offset 0, canonical program `A102239.P15409400863625826799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102239 (n : ℕ) : ℤ :=
  A102239.P15409400863625826799.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102283.P18218274576938374007

`a(n-3)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A102283.P18218274576938374007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  a (n - 3)

end

end A102283.P18218274576938374007

noncomputable section

/-- A102283: Period 3: repeat [0, 1, -1].

Offset 0, canonical program `A102283.P18218274576938374007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102283 (n : ℕ) : ℤ :=
  A102283.P18218274576938374007.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102631.P17520873199879242700

`ceil(∑[n+1+n]/∏{p}[n+1, #])`
-/

namespace A102631.P17520873199879242700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌉

end

end A102631.P17520873199879242700

noncomputable section

/-- A102631: a(n) = n^2 / (squarefree kernel of n).

Offset 1, canonical program `A102631.P17520873199879242700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102631 (n : ℕ) : ℤ :=
  A102631.P17520873199879242700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102669.P5830126414193983171

`∑{digits}[n, gcd(2, #!)-1]`
-/

namespace A102669.P5830126414193983171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (Nat.gcd 2 (Nat.factorial x) : ℤ) - 1).sum

end

end A102669.P5830126414193983171

noncomputable section

/-- A102669: Number of digits >= 2 in decimal representation of n.

Offset 0, canonical program `A102669.P5830126414193983171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102669 (n : ℕ) : ℤ :=
  A102669.P5830126414193983171.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102673.P6409883008678884231

`∑{digits}[n, round(#/7)]`
-/

namespace A102673.P6409883008678884231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway ((x : ℚ) / 7)).sum

end

end A102673.P6409883008678884231

noncomputable section

/-- A102673: Number of digits >= 4 in decimal representation of n.

Offset 0, canonical program `A102673.P6409883008678884231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102673 (n : ℕ) : ℤ :=
  A102673.P6409883008678884231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102677.P13177228487956605855

`∑{digits}[n, floor(#/6)]`
-/

namespace A102677.P13177228487956605855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum

end

end A102677.P13177228487956605855

noncomputable section

/-- A102677: Number of digits >= 6 in decimal representation of n.

Offset 0, canonical program `A102677.P13177228487956605855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102677 (n : ℕ) : ℤ :=
  A102677.P13177228487956605855.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102681.P10763331520782827620

`∑{digits}[n, and(1, C(#, 8))]`
-/

namespace A102681.P10763331520782827620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land 1 (Nat.choose x 8)).sum

end

end A102681.P10763331520782827620

noncomputable section

/-- A102681: Number of digits >= 8 in decimal representation of n.

Offset 0, canonical program `A102681.P10763331520782827620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102681 (n : ℕ) : ℤ :=
  (A102681.P10763331520782827620.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102899.P16218481938815569470

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=3, a(5)=3`
-/

namespace A102899.P16218481938815569470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 0, 3, 3] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A102899.P16218481938815569470

noncomputable section

/-- A102899: a(n) = ceiling(n/3)^2 - floor(n/3)^2.

Offset 0, canonical program `A102899.P16218481938815569470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102899 (n : ℕ) : ℤ :=
  A102899.P16218481938815569470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103128.P639343782142332252

`floor(sqrt(Δ[n²]))`
-/

namespace A103128.P639343782142332252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A103128.P639343782142332252

noncomputable section

/-- A103128: a(n) = floor(sqrt(2n-1)).

Offset 1, canonical program `A103128.P639343782142332252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103128 (n : ℕ) : ℤ :=
  A103128.P639343782142332252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103290.P8332542490144600548

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=10, a(4)=32`
-/

namespace A103290.P8332542490144600548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 10, 32] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A103290.P8332542490144600548

noncomputable section

/-- A103290: a(n) = n*(n-1)*(n^2-n+4)/6.

Offset 0, canonical program `A103290.P8332542490144600548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103290 (n : ℕ) : ℤ :=
  A103290.P8332542490144600548.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103461.P16645134995885624755

`or(1, (-10)^n)`
-/

namespace A103461.P16645134995885624755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((-10) ^ n)

end

end A103461.P16645134995885624755

noncomputable section

/-- A103461: a(n) = (-10)^n + 1 - 0^n.

Offset 0, canonical program `A103461.P16645134995885624755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A103461 (n : ℕ) : ℤ :=
  A103461.P16645134995885624755.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A103461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103517.P15939059245170795698

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A103517.P15939059245170795698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A103517.P15939059245170795698

noncomputable section

/-- A103517: Expansion of g.f. (1+2*x-x^2)/(1-x)^2.

Offset 0, canonical program `A103517.P15939059245170795698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103517 (n : ℕ) : ℤ :=
  A103517.P15939059245170795698.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103609.P15544429394990847361

`a(n-2)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A103609.P15544429394990847361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  a (n - 2) + a (n - 4)

end

end A103609.P15544429394990847361

noncomputable section

/-- A103609: Fibonacci numbers repeated (cf. A000045).

Offset 0, canonical program `A103609.P15544429394990847361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103609 (n : ℕ) : ℤ :=
  (A103609.P15544429394990847361.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104449.P3916126840219185072

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=1`
-/

namespace A104449.P3916126840219185072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 1) + a (n - 2)

end

end A104449.P3916126840219185072

noncomputable section

/-- A104449: Fibonacci sequence with initial values a(0) = 3 and a(1) = 1.

Offset 0, canonical program `A104449.P3916126840219185072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104449 (n : ℕ) : ℤ :=
  (A104449.P3916126840219185072.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104670.P18004450851264002417

`C(n+7, 7)*∑[n+1]`
-/

namespace A104670.P18004450851264002417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104670.P18004450851264002417

noncomputable section

/-- A104670: a(n) = binomial(n+2, 2)*binomial(n+7, n).

Offset 0, canonical program `A104670.P18004450851264002417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104670 (n : ℕ) : ℤ :=
  (A104670.P18004450851264002417.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104671.P8285096393018449203

`C(n+8, 8)*∑[∑[n+1]]`
-/

namespace A104671.P8285096393018449203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A104671.P8285096393018449203

noncomputable section

/-- A104671: a(n) = binomial(n+3,n)*binomial(n+8,n).

Offset 0, canonical program `A104671.P8285096393018449203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104671 (n : ℕ) : ℤ :=
  (A104671.P8285096393018449203.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105042.P10666840312701966561

`floor(p?[abs(1-5*n)]/10)+1`
-/

namespace A105042.P10666840312701966561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (5 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 10⌋ + 1

end

end A105042.P10666840312701966561

noncomputable section

/-- A105042: Numbers n such that 10n - 1 is prime.

Offset 1, canonical program `A105042.P10666840312701966561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105042 (n : ℕ) : ℤ :=
  A105042.P10666840312701966561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105254.P1105968928150324897

`C(n+7, 7)*C(n+11, 11)`
-/

namespace A105254.P1105968928150324897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * Nat.choose (n + 11) 11

end

end A105254.P1105968928150324897

noncomputable section

/-- A105254: a(n) = binomial(n+7,n)*binomial(n+11,n).

Offset 0, canonical program `A105254.P1105968928150324897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105254 (n : ℕ) : ℤ :=
  (A105254.P1105968928150324897.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105397.P12786109591907576801

`3+(-1)^n`
-/

namespace A105397.P12786109591907576801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + (-1) ^ n

end

end A105397.P12786109591907576801

noncomputable section

/-- A105397: Periodic with period 2: repeat [4,2].

Offset 0, canonical program `A105397.P12786109591907576801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105397 (n : ℕ) : ℤ :=
  A105397.P12786109591907576801.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105570.P6688953478002029428

`lcm(n, -1%∏{e}[n, #])`
-/

namespace A105570.P6688953478002029428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ))

end

end A105570.P6688953478002029428

noncomputable section

/-- A105570: Nonsquarefree numbers in place: a(n) = n if n is not squarefree, 0 otherwise.

Offset 0, canonical program `A105570.P6688953478002029428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105570 (n : ℕ) : ℤ :=
  (A105570.P6688953478002029428.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105927.P9644413219685560799

`n*(n-1)*(a(n-1)+a(n-2))/(n-2)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A105927.P9644413219685560799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  (n : ℚ) * (((n : ℤ) - 1 : ℚ) * ((a (n - 1) + a (n - 2)) / ((n : ℤ) - 2 : ℚ)))

end

end A105927.P9644413219685560799

noncomputable section

/-- A105927: Let d(n) = A000166(n); then a(n) = ( (n^2+n-1)*d(n) + (-1)^(n-1)*(n-1) )/2.

Offset 0, canonical program `A105927.P9644413219685560799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A105927.P9644413219685560799.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106232.P9003985020460360387

`a(n%2)*∑[n]` with `a(0)=4, a(1)=4`
-/

namespace A106232.P9003985020460360387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  a (n % 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106232.P9003985020460360387

noncomputable section

/-- A106232: Least k > 0 such that (4*n^2 + 2)*(k^2) + (4*n^2 + 2)*k + 1 = j^2.

Offset 1, canonical program `A106232.P9003985020460360387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106232 (n : ℕ) : ℤ :=
  (A106232.P9003985020460360387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106318.P4247534376116463278

`2*(n+1)^6`
-/

namespace A106318.P4247534376116463278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 6

end

end A106318.P4247534376116463278

noncomputable section

/-- A106318: Bhaskara twins: n such that 2*n^2 = X^3 and 2*n^3 = Y^2.

Offset 1, canonical program `A106318.P4247534376116463278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106318 (n : ℕ) : ℤ :=
  (A106318.P4247534376116463278.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106466.P13635453221219634513

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3, a(5)=2`
-/

namespace A106466.P13635453221219634513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 3, 2] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A106466.P13635453221219634513

noncomputable section

/-- A106466: Interleave 1,2,3,.. with 1,1,2,2,3,3,...

Offset 0, canonical program `A106466.P13635453221219634513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106466 (n : ℕ) : ℤ :=
  A106466.P13635453221219634513.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107418.P5448703285232012241

`∑[∑[n+1]]*∑[∑[∑[∑[∑[n+1]]]]]`
-/

namespace A107418.P5448703285232012241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A107418.P5448703285232012241

noncomputable section

/-- A107418: a(n) = binomial(n+3,3)*binomial(n+6,6).

Offset 0, canonical program `A107418.P5448703285232012241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107418 (n : ℕ) : ℤ :=
  (A107418.P5448703285232012241.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107422.P7406720574690014575

`C(n+7, 7)*C(n+10, 10)`
-/

namespace A107422.P7406720574690014575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * Nat.choose (n + 10) 10

end

end A107422.P7406720574690014575

noncomputable section

/-- A107422: a(n) = binomial(n+7,7) * binomial(n+10,10).

Offset 0, canonical program `A107422.P7406720574690014575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107422 (n : ℕ) : ℤ :=
  (A107422.P7406720574690014575.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107458.P15330796296843734207

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A107458.P15330796296843734207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 2) + a (n - 3) + a (n - 4)

end

end A107458.P15330796296843734207

noncomputable section

/-- A107458: Expansion of g.f.: (1-x^2-x^3)/( (1+x)*(1-x-x^3) ).

Offset 0, canonical program `A107458.P15330796296843734207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107458 (n : ℕ) : ℤ :=
  (A107458.P15330796296843734207.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108104.P7537875615996482833

`a(n-2)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A108104.P7537875615996482833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1] fun n a =>
  a (n - 2) + a (n - 6)

end

end A108104.P7537875615996482833

noncomputable section

/-- A108104: Sequence A000930 with terms repeated.

Offset 0, canonical program `A108104.P7537875615996482833`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108104 (n : ℕ) : ℤ :=
  (A108104.P7537875615996482833.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108411.P9799689297515495700

`3^floor(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108411.P9799689297515495700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A108411.P9799689297515495700

noncomputable section

/-- A108411: a(n) = 3^floor(n/2). Powers of 3 repeated.

Offset 0, canonical program `A108411.P9799689297515495700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108411 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108411.P9799689297515495700.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108673.P2648331123237715933

`(n+1)*(n+2)*(n+3)*(2*n+3)*(10*n²+27*n+20)/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108673.P2648331123237715933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((2 * n + 3 : ℚ) * ((10 * n ^ 2 + 27 * n + 20 : ℚ) / 360))))

end

end A108673.P2648331123237715933

noncomputable section

/-- A108673: a(n) = (n+1)(n+2)(n+3)(2n+3)(10n^2 + 27n + 20)/360.

Offset 0, canonical program `A108673.P2648331123237715933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108673 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108673.P2648331123237715933.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A108674.P6985386326771940225

`(n+1)²*(n+2)²*(2*n+3)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A108674.P6985386326771940225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (n + 2) ^ 2 : ℚ) * ((2 * n + 3 : ℚ) / 12)

end

end A108674.P6985386326771940225

noncomputable section

/-- A108674: a(n) = (n+1)^2 * (n+2)^2 * (2*n+3) / 12.

Offset 0, canonical program `A108674.P6985386326771940225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108674 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108674.P6985386326771940225.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A108674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109043.P13676580040803735715

`lcm(n, 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109043.P13676580040803735715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n 2

end

end A109043.P13676580040803735715

noncomputable section

/-- A109043: a(n) = lcm(n,2).

Offset 0, canonical program `A109043.P13676580040803735715`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 2)` (program `A109043.P13676580040803735715`, by `A109043.P13676580040803735715.correct`). Lean does not check the parsing of the name. -/
def A109043 (n : ℕ) : ℤ :=
  (A109043.P13676580040803735715.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 2)` (program `A109043.P13676580040803735715`, by `A109043.P13676580040803735715.correct`). Lean does not check the parsing of the name. -/
def A109043.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A109256.P12787104831792183

`(n²-2)*(n²-3)*(n²-6)`
-/

namespace A109256.P12787104831792183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 2) * (((n ^ 2 : ℤ) - 3) * ((n ^ 2 : ℤ) - 6))

end

end A109256.P12787104831792183

noncomputable section

/-- A109256: a(n) = n^6 - 11n^4 + 36n^2 - 36.

Offset 0, canonical program `A109256.P12787104831792183`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109256 (n : ℕ) : ℤ :=
  A109256.P12787104831792183.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109613.P11033607296544520888

`2*floor(n/2)+1`
-/

namespace A109613.P11033607296544520888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 2⌋ + 1

end

end A109613.P11033607296544520888

noncomputable section

/-- A109613: Odd numbers repeated.

Offset 0, canonical program `A109613.P11033607296544520888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109613 (n : ℕ) : ℤ :=
  A109613.P11033607296544520888.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110286.P7755220645129352326

`15*2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110286.P7755220645129352326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * 2 ^ n

end

end A110286.P7755220645129352326

noncomputable section

/-- A110286: a(n) = 15*2^n.

Offset 0, canonical program `A110286.P7755220645129352326`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*2^n` (program `A110286.P7755220645129352326`, by `A110286.P7755220645129352326.correct`). Lean does not check the parsing of the name. -/
def A110286 (n : ℕ) : ℤ :=
  (A110286.P7755220645129352326.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*2^n` (program `A110286.P7755220645129352326`, by `A110286.P7755220645129352326.correct`). Lean does not check the parsing of the name. -/
def A110286.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A110325.P3093289086518705686

`1+n-2*n²`
-/

namespace A110325.P3093289086518705686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) - (2 * n ^ 2 : ℤ))

end

end A110325.P3093289086518705686

noncomputable section

/-- A110325: Row sums of number triangle related to the Jacobsthal numbers.

Offset 0, canonical program `A110325.P3093289086518705686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110325 (n : ℕ) : ℤ :=
  A110325.P3093289086518705686.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110654.P360289776162656549

`ceil(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110654.P360289776162656549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

end

end A110654.P360289776162656549

noncomputable section

/-- A110654: a(n) = ceiling(n/2), or: a(2*k) = k, a(2*k+1) = k+1.

Offset 0, canonical program `A110654.P360289776162656549`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/2)` (program `A110654.P360289776162656549`, by `A110654.P360289776162656549.correct`). Lean does not check the parsing of the name. -/
def A110654 (n : ℕ) : ℤ :=
  A110654.P360289776162656549.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/2)` (program `A110654.P360289776162656549`, by `A110654.P360289776162656549.correct`). Lean does not check the parsing of the name. -/
def A110654.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A110656.P16727579256919553801

`ceil(n/8)`
-/

namespace A110656.P16727579256919553801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 8⌉

end

end A110656.P16727579256919553801

noncomputable section

/-- A110656: a(n) = A110654(A110654(A110654(n))).

Offset 0, canonical program `A110656.P16727579256919553801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110656 (n : ℕ) : ℤ :=
  A110656.P16727579256919553801.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111277.P12980364291347629386

`5*a(n-1)-7*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A111277.P12980364291347629386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 3 * a (n - 3)

end

end A111277.P12980364291347629386

noncomputable section

/-- A111277: Number of permutations avoiding the patterns {2413,4213,2431,4231,4321}; also number of permutations avoiding the patterns {3142,3412,3421,4312,4321}; number of weak sorting class based on 2413 or 3142.

Offset 0, canonical program `A111277.P12980364291347629386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111277 (n : ℕ) : ℤ :=
  A111277.P12980364291347629386.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111396.P7392532804184819900

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=12, a(2)=30, a(3)=55`
-/

namespace A111396.P7392532804184819900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12, 30, 55] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A111396.P7392532804184819900

noncomputable section

/-- A111396: a(n) = n*(n+7)*(n+8)/6.

Offset 0, canonical program `A111396.P7392532804184819900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111396 (n : ℕ) : ℤ :=
  A111396.P7392532804184819900.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111567.P5018651694238807994

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A111567.P5018651694238807994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2)

end

end A111567.P5018651694238807994

noncomputable section

/-- A111567: Binomial transform of A048654: generalized Pellian with second term equal to 4.

Offset 0, canonical program `A111567.P5018651694238807994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111567 (n : ℕ) : ℤ :=
  A111567.P5018651694238807994.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112132.P3090505254011190502

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=7`
-/

namespace A112132.P3090505254011190502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1, 7] fun n a =>
  a (n - 4)

end

end A112132.P3090505254011190502

noncomputable section

/-- A112132: Period 4: repeat [1, 3, 1, 7].

Offset 1, canonical program `A112132.P3090505254011190502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112132 (n : ℕ) : ℤ :=
  (A112132.P3090505254011190502.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112476.P604809942526993508

`2*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=0`
-/

namespace A112476.P604809942526993508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, 0] fun n a =>
  2 * a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A112476.P604809942526993508

noncomputable section

/-- A112476: Diagonal sums of Riordan array (1/(1+x),x(1+x)/(1-x)).

Offset 0, canonical program `A112476.P604809942526993508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112476 (n : ℕ) : ℤ :=
  A112476.P604809942526993508.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112495.P7859627621178874014

`3*a(n-1)+(n+3)*(2^(n+2)-(n+3))` with `a(0)=3`
-/

namespace A112495.P7859627621178874014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) + (n + 3 : ℤ) * ((2 ^ (n + 2) : ℤ) - (n + 3 : ℤ))

end

end A112495.P7859627621178874014

noncomputable section

/-- A112495: Third column of triangle A112493 used for e.g.f.s of Stirling2 diagonals.

Offset 0, canonical program `A112495.P7859627621178874014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112495 (n : ℕ) : ℤ :=
  A112495.P7859627621178874014.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112526.P9678413385243085703

`∏{e}[n+1, (#+1)%#]`
-/

namespace A112526.P9678413385243085703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) % Nat.factorization (f1 n) p

end

end A112526.P9678413385243085703

noncomputable section

/-- A112526: Characteristic function for powerful numbers.

Offset 1, canonical program `A112526.P9678413385243085703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112526 (n : ℕ) : ℤ :=
  (A112526.P9678413385243085703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112765.P4892120039852414895

`val(n+1, 5)`
-/

namespace A112765.P4892120039852414895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 5

end

end A112765.P4892120039852414895

noncomputable section

/-- A112765: Exponent of highest power of 5 dividing n. Or, 5-adic valuation of n.

Offset 1, canonical program `A112765.P4892120039852414895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112765 (n : ℕ) : ℤ :=
  (A112765.P4892120039852414895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114569.P5471291263109344837

`9*4^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A114569.P5471291263109344837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * 4 ^ n : ℤ) - 1

end

end A114569.P5471291263109344837

noncomputable section

/-- A114569: a(n) = 9*4^n - 1.

Offset 0, canonical program `A114569.P5471291263109344837`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*4^n-1` (program `A114569.P5471291263109344837`, by `A114569.P5471291263109344837.correct`). Lean does not check the parsing of the name. -/
def A114569 (n : ℕ) : ℤ :=
  A114569.P5471291263109344837.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*4^n-1` (program `A114569.P5471291263109344837`, by `A114569.P5471291263109344837.correct`). Lean does not check the parsing of the name. -/
def A114569.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A114752.P15799403053793373342

`n*gcd(2, n)+1`
-/

namespace A114752.P15799403053793373342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

end

end A114752.P15799403053793373342

noncomputable section

/-- A114752: a(2n)=2n, a(2n+1)=4n+1.

Offset 1, canonical program `A114752.P15799403053793373342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114752 (n : ℕ) : ℤ :=
  (A114752.P15799403053793373342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114986.P6596508872872694334

`Δ[n+1-a(a(n-1))]²` with `a(0)=0, a(1)=1`
-/

namespace A114986.P6596508872872694334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 1 : ℤ) - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A114986.P6596508872872694334

noncomputable section

/-- A114986: Characteristic function of (A000201 prefixed with 0).

Offset 0, canonical program `A114986.P6596508872872694334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114986 (n : ℕ) : ℤ :=
  A114986.P6596508872872694334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115525.P1254738320040468933

`n%2-(a(n-2)+n²%3)` with `a(0)=1, a(1)=1`
-/

namespace A115525.P1254738320040468933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n % 2 : ℕ) : ℤ) - (a (n - 2) + ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A115525.P1254738320040468933

noncomputable section

/-- A115525: Periodic {1,1,-2,0,1,0,-1,0,0,1,-1,-1}.

Offset 0, canonical program `A115525.P1254738320040468933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115525 (n : ℕ) : ℤ :=
  A115525.P1254738320040468933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116607.P13757310521233190436

`∑{d}[n+1, #%lcm(9, #)]`
-/

namespace A116607.P13757310521233190436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Nat.lcm 9 d

end

end A116607.P13757310521233190436

noncomputable section

/-- A116607: Sum of the divisors of n which are not divisible by 9.

Offset 1, canonical program `A116607.P13757310521233190436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116607 (n : ℕ) : ℤ :=
  (A116607.P13757310521233190436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116701.P3635068034440940175

`(n^4-4*n^3+11*n²-8*n+12)/12`
-/

namespace A116701.P3635068034440940175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (4 * n ^ 3 : ℤ) + (11 * n ^ 2 : ℤ) - (8 * n : ℤ) + 12 : ℚ) / 12

end

end A116701.P3635068034440940175

noncomputable section

/-- A116701: Number of permutations of length n that avoid the patterns 132, 4321.

Offset 0, canonical program `A116701.P3635068034440940175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116701 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A116701.P3635068034440940175.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116721.P7080034720775740217

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=24`
-/

namespace A116721.P7080034720775740217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 12, 24] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A116721.P7080034720775740217

noncomputable section

/-- A116721: Number of permutations of length n which avoid the patterns 123, 3142, 4312; or avoid the patterns 123, 3421, 4231.

Offset 1, canonical program `A116721.P7080034720775740217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116721 (n : ℕ) : ℤ :=
  A116721.P7080034720775740217.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116731.P7057768896231789940

`∑[(1-n)²+n]`
-/

namespace A116731.P7057768896231789940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116731.P7057768896231789940

noncomputable section

/-- A116731: Number of permutations of length n which avoid the patterns 321, 2143, 3124; or avoid the patterns 132, 2314, 4312, etc.

Offset 1, canonical program `A116731.P7057768896231789940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116731 (n : ℕ) : ℤ :=
  A116731.P7057768896231789940.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A116731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116940.P15309001525567772111

`2*n+ceil(n²/2)`
-/

namespace A116940.P15309001525567772111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ⌈(n ^ 2 : ℚ) / 2⌉

end

end A116940.P15309001525567772111

noncomputable section

/-- A116940: Greatest m such that A116939(m) = n.

Offset 0, canonical program `A116940.P15309001525567772111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116940 (n : ℕ) : ℤ :=
  A116940.P15309001525567772111.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A116966.P7903116622855519725

`a(n-4)+4` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4`
-/

namespace A116966.P7903116622855519725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4] fun n a =>
  a (n - 4) + 4

end

end A116966.P7903116622855519725

noncomputable section

/-- A116966: a(n) = n + {1,2,0,1} according as n == {0,1,2,3} mod 4.

Offset 0, canonical program `A116966.P7903116622855519725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116966 (n : ℕ) : ℤ :=
  (A116966.P7903116622855519725.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117188.P10063495552458321556

`a(n-6)` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=0, a(4)=1, a(5)=0`
-/

namespace A117188.P10063495552458321556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, 0, 1, 0] fun n a =>
  a (n - 6)

end

end A117188.P10063495552458321556

noncomputable section

/-- A117188: Expansion of (1-x^2)/(1+x^2+x^4).

Offset 0, canonical program `A117188.P10063495552458321556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117188 (n : ℕ) : ℤ :=
  A117188.P10063495552458321556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117189.P1901729098156263523

`4*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A117189.P1901729098156263523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 3)

end

end A117189.P1901729098156263523

noncomputable section

/-- A117189: Binomial transform of the tribonacci sequence A000073 (shifted left twice).

Offset 0, canonical program `A117189.P1901729098156263523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117189 (n : ℕ) : ℤ :=
  A117189.P1901729098156263523.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117575.P9142946732823253204

`a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2`
-/

namespace A117575.P9142946732823253204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2] fun n a =>
  a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3)

end

end A117575.P9142946732823253204

noncomputable section

/-- A117575: Expansion of (1-x^3)/((1-x)*(1+2*x^2)).

Offset 0, canonical program `A117575.P9142946732823253204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117575 (n : ℕ) : ℤ :=
  A117575.P9142946732823253204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117625.P13405498447810154116

`n*(9*n-7)/2+1`
-/

namespace A117625.P13405498447810154116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((9 * n : ℤ) - 7 : ℚ) / 2) + 1

end

end A117625.P13405498447810154116

noncomputable section

/-- A117625: Maximum number of regions defined by n zigzag-lines in the plane when a zigzag-line is defined as consisting of two parallel infinite half-lines joined by a straight line segment.

Offset 0, canonical program `A117625.P13405498447810154116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117625 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117625.P13405498447810154116.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117662.P736767780201089082

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=14`
-/

namespace A117662.P736767780201089082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 3, 14] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A117662.P736767780201089082

noncomputable section

/-- A117662: a(n) = n*(n-1)*(n-2)*(n+3)/12.

Offset 0, canonical program `A117662.P736767780201089082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117662 (n : ℕ) : ℤ :=
  A117662.P736767780201089082.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117856.P15098391357658261084

`4*a(n-2)` with `a(0)=3, a(1)=3`
-/

namespace A117856.P15098391357658261084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  4 * a (n - 2)

end

end A117856.P15098391357658261084

noncomputable section

/-- A117856: Number of palindromes of length n (in base 4).

Offset 1, canonical program `A117856.P15098391357658261084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117856 (n : ℕ) : ℤ :=
  (A117856.P15098391357658261084.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A117856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118175.P8288483454984530262

`round(sqrt(n+1))-floor(sqrt(n))`
-/

namespace A118175.P8288483454984530262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - (Nat.sqrt n : ℤ)

end

end A118175.P8288483454984530262

noncomputable section

/-- A118175: Binary representation of n-th iteration of the Rule 220 elementary cellular automaton starting with a single black cell.

Offset 0, canonical program `A118175.P8288483454984530262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118175 (n : ℕ) : ℤ :=
  A118175.P8288483454984530262.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118442.P2021376891503570147

`(-1)^floor(n/2)*n*2^(n-1)`
-/

namespace A118442.P2021376891503570147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A118442.P2021376891503570147

noncomputable section

/-- A118442: Column 0 of triangle A118441, which is the matrix log of triangle A118435.

Offset 0, canonical program `A118442.P2021376891503570147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118442 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A118442.P2021376891503570147.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A118658.P8652943087803871292

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=0`
-/

namespace A118658.P8652943087803871292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n a =>
  a (n - 1) + a (n - 2)

end

end A118658.P8652943087803871292

noncomputable section

/-- A118658: a(n) = 2*F(n-1) = L(n) - F(n), where F(n) and L(n) are Fibonacci and Lucas numbers respectively.

Offset 0, canonical program `A118658.P8652943087803871292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118658 (n : ℕ) : ℤ :=
  (A118658.P8652943087803871292.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A118658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A121384.P6174891099336009590

`ceil(n*e)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121384.P6174891099336009590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.exp 1⌉

end

end A121384.P6174891099336009590

noncomputable section

/-- A121384: a(n) = ceiling(n*e).

Offset 0, canonical program `A121384.P6174891099336009590`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*e)` (program `A121384.P6174891099336009590`, by `A121384.P6174891099336009590.correct`). Lean does not check the parsing of the name. -/
def A121384 (n : ℕ) : ℤ :=
  A121384.P6174891099336009590.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*e)` (program `A121384.P6174891099336009590`, by `A121384.P6174891099336009590.correct`). Lean does not check the parsing of the name. -/
def A121384.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A122031.P13081537344647698062

`a(n-1)+(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122031.P13081537344647698062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + ((n : ℤ) - 1) * a (n - 2)

end

end A122031.P13081537344647698062

noncomputable section

/-- A122031: a(n) = a(n - 1) + (n - 1)*a(n - 2).

Offset 0, canonical program `A122031.P13081537344647698062`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-1)*a(n-2)` (program `A122031.P13081537344647698062`, by `A122031.P13081537344647698062.correct`). Lean does not check the parsing of the name. -/
def A122031 (n : ℕ) : ℤ :=
  A122031.P13081537344647698062.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-1)*a(n-2)` (program `A122031.P13081537344647698062`, by `A122031.P13081537344647698062.correct`). Lean does not check the parsing of the name. -/
def A122031.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A122046.P14111764381793131601

`round((2*n^3+3*n²-8*n)/48)`
-/

namespace A122046.P14111764381793131601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n ^ 3 + 3 * n ^ 2 : ℤ) - (8 * n : ℤ) : ℚ) / 48)

end

end A122046.P14111764381793131601

noncomputable section

/-- A122046: Partial sums of floor(n^2/8).

Offset 0, canonical program `A122046.P14111764381793131601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122046 (n : ℕ) : ℤ :=
  A122046.P14111764381793131601.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122164.P2347712908985468989

`3*a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3, a(6)=4, a(7)=2`
-/

namespace A122164.P2347712908985468989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 3, 4, 2] fun n a =>
  3 * a (n - 5)

end

end A122164.P2347712908985468989

noncomputable section

/-- A122164: a(0) = 0, a(1) = 1, s = 0; for n >= 2, if a(n-1) is even and s = 0 then set a(n) = a(n-1)/2 and s = 1; otherwise set a(n) = a(n-1) + a(n-2) and s = 0.

Offset 0, canonical program `A122164.P2347712908985468989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122164 (n : ℕ) : ℤ :=
  (A122164.P2347712908985468989.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122553.P2409837566453629544

`a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A122553.P2409837566453629544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1)

end

end A122553.P2409837566453629544

noncomputable section

/-- A122553: a(0)=1, a(n)=3 for n > 0.

Offset 0, canonical program `A122553.P2409837566453629544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122553 (n : ℕ) : ℤ :=
  (A122553.P2409837566453629544.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122709.P10085587031026703332

`a(n-1)+9` with `a(0)=1, a(1)=6`
-/

namespace A122709.P10085587031026703332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + 9

end

end A122709.P10085587031026703332

noncomputable section

/-- A122709: a(0)=1; thereafter a(n) = 9*n - 3.

Offset 0, canonical program `A122709.P10085587031026703332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122709 (n : ℕ) : ℤ :=
  (A122709.P10085587031026703332.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122747.P18064843382434901665

`4*(2*n-1)²*a(n-1)` with `a(0)=1`
-/

namespace A122747.P18064843382434901665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((2 * n : ℤ) - 1) ^ 2 * a (n - 1)

end

end A122747.P18064843382434901665

noncomputable section

/-- A122747: Bishops on an n X n board (see Robinson paper for details).

Offset 0, canonical program `A122747.P18064843382434901665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122747 (n : ℕ) : ℤ :=
  A122747.P18064843382434901665.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122747.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A122803.P220057073400853330

`(-2)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122803.P220057073400853330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

end

end A122803.P220057073400853330

noncomputable section

/-- A122803: Powers of -2: a(n) = (-2)^n.

Offset 0, canonical program `A122803.P220057073400853330`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-2)^n` (program `A122803.P220057073400853330`, by `A122803.P220057073400853330.correct`). Lean does not check the parsing of the name. -/
def A122803 (n : ℕ) : ℤ :=
  A122803.P220057073400853330.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-2)^n` (program `A122803.P220057073400853330`, by `A122803.P220057073400853330.correct`). Lean does not check the parsing of the name. -/
def A122803.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A122825.P13856472018753362858

`comp[p?[comp[3*n]]]+1`
-/

namespace A122825.P13856472018753362858
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A122825.P13856472018753362858

noncomputable section

/-- A122825: a(n) = n + number of previous prime terms, a(1) = 1.

Offset 1, canonical program `A122825.P13856472018753362858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122825 (n : ℕ) : ℤ :=
  (A122825.P13856472018753362858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122840.P15384273099785302065

`val(n+1, 10)`
-/

namespace A122840.P15384273099785302065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10

end

end A122840.P15384273099785302065

noncomputable section

/-- A122840: a(n) is the number of 0's at the end of n when n is written in base 10.

Offset 1, canonical program `A122840.P15384273099785302065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122840 (n : ℕ) : ℤ :=
  (A122840.P15384273099785302065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122841.P30360687531022372

`val(n+1, 6)`
-/

namespace A122841.P30360687531022372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

end

end A122841.P30360687531022372

noncomputable section

/-- A122841: Greatest k such that 6^k divides n.

Offset 1, canonical program `A122841.P30360687531022372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122841 (n : ℕ) : ℤ :=
  (A122841.P30360687531022372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122958.P17438442665224267042

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A122958.P17438442665224267042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A122958.P17438442665224267042

noncomputable section

/-- A122958: a(0)=1, a(n) = 2 - 2^(n-1) for n>0.

Offset 0, canonical program `A122958.P17438442665224267042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122958 (n : ℕ) : ℤ :=
  A122958.P17438442665224267042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A122958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123003.P10720000390320228385

`(2*n+3-(n-1)*2^(n+4)-3^(n+5)+4^(n+4))/4`
-/

namespace A123003.P10720000390320228385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + (3 - ((n : ℤ) - 1) * (2 ^ (n + 4) : ℤ)) - (3 ^ (n + 5) : ℤ) + (4 ^ (n + 4) : ℤ) : ℚ) / 4

end

end A123003.P10720000390320228385

noncomputable section

/-- A123003: Expansion of g.f.: (8-29*x+24*x^2)/((1-4*x)*(1-3*x)*(1-2*x)^2*(1-x)^2).

Offset 0, canonical program `A123003.P10720000390320228385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123003.P10720000390320228385.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123003.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123023.P14029042805103886972

`(n-1)*a(n-2)` with `a(0)=1, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123023.P14029042805103886972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1) * a (n - 2)

end

end A123023.P14029042805103886972

noncomputable section

/-- A123023: a(n) = (n-1)*a(n-2), a(0)=1, a(1)=0.

Offset 0, canonical program `A123023.P14029042805103886972`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-2)` (program `A123023.P14029042805103886972`, by `A123023.P14029042805103886972.correct`). Lean does not check the parsing of the name. -/
def A123023 (n : ℕ) : ℤ :=
  A123023.P14029042805103886972.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)*a(n-2)` (program `A123023.P14029042805103886972`, by `A123023.P14029042805103886972.correct`). Lean does not check the parsing of the name. -/
def A123023.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A123108.P8709889862737691449

`n-2-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123108.P8709889862737691449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  (n : ℤ) - 2 - a (n - 3)

end

end A123108.P8709889862737691449

noncomputable section

/-- A123108: a(n) = a(n-1) + a(n-2) - a(n-3), for n > 3, with a(0)=1, a(1)=0, a(2)=1, a(3)=1.

Offset 0, canonical program `A123108.P8709889862737691449`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-2-a(n-3)` (program `A123108.P8709889862737691449`, by `A123108.P8709889862737691449.correct`). Lean does not check the parsing of the name. -/
def A123108 (n : ℕ) : ℤ :=
  A123108.P8709889862737691449.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-2-a(n-3)` (program `A123108.P8709889862737691449`, by `A123108.P8709889862737691449.correct`). Lean does not check the parsing of the name. -/
def A123108.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A123109.P10235107136971135650

`3+3*a(n-1)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123109.P10235107136971135650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 + 3 * a (n - 1)

end

end A123109.P10235107136971135650

noncomputable section

/-- A123109: a(0) = 1, a(1) = 3, a(n) = 3*a(n-1) + 3 for n > 1.

Offset 0, canonical program `A123109.P10235107136971135650`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+3*a(n-1)` (program `A123109.P10235107136971135650`, by `A123109.P10235107136971135650.correct`). Lean does not check the parsing of the name. -/
def A123109 (n : ℕ) : ℤ :=
  (A123109.P10235107136971135650.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+3*a(n-1)` (program `A123109.P10235107136971135650`, by `A123109.P10235107136971135650.correct`). Lean does not check the parsing of the name. -/
def A123109.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A123231.P9037956020649098209

`a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=3`
-/

namespace A123231.P9037956020649098209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 3] fun n a =>
  a (n - 2) + a (n - 4)

end

end A123231.P9037956020649098209

noncomputable section

/-- A123231: Row sums of A123230.

Offset 1, canonical program `A123231.P9037956020649098209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123231 (n : ℕ) : ℤ :=
  (A123231.P9037956020649098209.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123578.P15021592032537272378

`1+a(n-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A123578.P15021592032537272378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (n - a (n - 1))

end

end A123578.P15021592032537272378

noncomputable section

/-- A123578: The Kruskal-Macaulay function M_2(n).

Offset 0, canonical program `A123578.P15021592032537272378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123578 (n : ℕ) : ℤ :=
  (A123578.P15021592032537272378.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123596.P13725170469569972941

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4, a(5)=3`
-/

namespace A123596.P13725170469569972941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 4, 3] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A123596.P13725170469569972941

noncomputable section

/-- A123596: Squares alternating with triangular numbers.

Offset 0, canonical program `A123596.P13725170469569972941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123596 (n : ℕ) : ℤ :=
  A123596.P13725170469569972941.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A123596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A123866.P11621378827014358143

`(n+1)^6-1`
-/

namespace A123866.P11621378827014358143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 : ℤ) - 1

end

end A123866.P11621378827014358143

noncomputable section

/-- A123866: a(n) = n^6 - 1.

Offset 1, canonical program `A123866.P11621378827014358143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123866 (n : ℕ) : ℤ :=
  A123866.P11621378827014358143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123877.P14341730543568802042

`Δ[3*(1-(a(n-1)+a(n-2)))]` with `a(0)=0, a(1)=1`
-/

namespace A123877.P14341730543568802042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * (1 - (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123877.P14341730543568802042

noncomputable section

/-- A123877: Expansion of (1+2*x)/(1+3*x+3*x^2).

Offset 0, canonical program `A123877.P14341730543568802042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A123877 (n : ℕ) : ℤ :=
  A123877.P14341730543568802042.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. -/
def A123877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124090.P5259538866810562984

`C(n+7, 7)-1`
-/

namespace A124090.P5259538866810562984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - 1

end

end A124090.P5259538866810562984

noncomputable section

/-- A124090: a(n) = C(n,7)-1.

Offset 7, canonical program `A124090.P5259538866810562984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124090 (n : ℕ) : ℤ :=
  A124090.P5259538866810562984.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124302.P7197067930557024172

`4*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A124302.P7197067930557024172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2)

end

end A124302.P7197067930557024172

noncomputable section

/-- A124302: Number of set partitions with at most 3 blocks; number of Dyck paths of height at most 4; dimension of space of symmetric polynomials in 3 noncommuting variables.

Offset 0, canonical program `A124302.P7197067930557024172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124302 (n : ℕ) : ℤ :=
  A124302.P7197067930557024172.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124303.P8489952751879569892

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A124303.P8489952751879569892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5] fun n a =>
  7 * a (n - 1) - 14 * a (n - 2) + 8 * a (n - 3)

end

end A124303.P8489952751879569892

noncomputable section

/-- A124303: Number of set partitions of length <= 4; sum of first 4 columns of triangle of Stirling numbers of 2nd kind; dimension of space of symmetric polynomials in 4 noncommuting variables.

Offset 0, canonical program `A124303.P8489952751879569892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124303 (n : ℕ) : ℤ :=
  A124303.P8489952751879569892.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124625.P13711531339302041012

`(n-1)^((1-(-1)^n)/2)`
-/

namespace A124625.P13711531339302041012
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ)

end

end A124625.P13711531339302041012

noncomputable section

/-- A124625: Even numbers sandwiched between 1's.

Offset 0, canonical program `A124625.P13711531339302041012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124625 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124625.P13711531339302041012.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124745.P8957474839624364977

`a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A124745.P8957474839624364977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - a (n - 3)

end

end A124745.P8957474839624364977

noncomputable section

/-- A124745: Expansion of (1+x)/(1-x^2+x^3).

Offset 0, canonical program `A124745.P8957474839624364977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124745 (n : ℕ) : ℤ :=
  A124745.P8957474839624364977.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126564.P576208583452320244

`floor(sin(2*n))`
-/

namespace A126564.P576208583452320244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 * n : ℝ)⌋

end

end A126564.P576208583452320244

noncomputable section

/-- A126564: a(n) = floor( sin(n)*cos(n) ).

Offset 0, canonical program `A126564.P576208583452320244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126564 (n : ℕ) : ℤ :=
  A126564.P576208583452320244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127193.P18137219135264365321

`2*a(n-1)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=9`
-/

namespace A127193.P18137219135264365321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 1, 1, 9] fun n a =>
  2 * a (n - 1) - a (n - 10)

end

end A127193.P18137219135264365321

noncomputable section

/-- A127193: A 9th-order Fibonacci sequence.

Offset 1, canonical program `A127193.P18137219135264365321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127193 (n : ℕ) : ℤ :=
  A127193.P18137219135264365321.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127193.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127218.P15243934197128887519

`a(n-2)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=1, a(3)=2, a(4)=3, a(5)=3, a(6)=4, a(7)=6, a(8)=7, a(9)=8`
-/

namespace A127218.P15243934197128887519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 2, 3, 3, 4, 6, 7, 8] fun n a =>
  a (n - 2) + a (n - 4)

end

end A127218.P15243934197128887519

noncomputable section

/-- A127218: Half-indexed Lucas numbers second version L(n)=A000032=Lucas numbers a(0)=2, a(1)=2, a(2)=1, a(3)=2, a(4)=3, a(5)=3, a(2n)=L(n), for n>2: a(2n+1)=L(n)+L(n-3)=2*L(n-1) for n>5: a(n)+a(n+2)=a(n+4) a(2n)=L(n), so a(n)=L(n/2).

Offset 0, canonical program `A127218.P15243934197128887519`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127218 (n : ℕ) : ℤ :=
  (A127218.P15243934197128887519.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127218.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127802.P22673564577656166

`∏{p}[n+1, 3*val(#, 2)]`
-/

namespace A127802.P22673564577656166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 * SequenceMachineLib.valuation p 2

end

end A127802.P22673564577656166

noncomputable section

/-- A127802: a(0) = 1, a(n) = 3*A036987(n), n>1.

Offset 0, canonical program `A127802.P22673564577656166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127802 (n : ℕ) : ℤ :=
  (A127802.P22673564577656166.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127876.P8640691921181668160

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=13, a(2)=61, a(3)=172`
-/

namespace A127876.P8640691921181668160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 61, 172] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A127876.P8640691921181668160

noncomputable section

/-- A127876: Integers of the form (x^3)/6 + (x^2)/2 + x + 1.

Offset 1, canonical program `A127876.P8640691921181668160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127876 (n : ℕ) : ℤ :=
  A127876.P8640691921181668160.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128092.P6436350869765391509

`(n+1)*floor(2^(n+1)/(n+1))`
-/

namespace A128092.P6436350869765391509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A128092.P6436350869765391509

noncomputable section

/-- A128092: a(n) = largest multiple of n which is <= 2^n.

Offset 1, canonical program `A128092.P6436350869765391509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A128092 (n : ℕ) : ℤ :=
  A128092.P6436350869765391509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A128092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128209.P10032206597327132416

`2*(a(n-1)-∑[(-1)^n])` with `a(0)=1`
-/

namespace A128209.P10032206597327132416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128209.P10032206597327132416

noncomputable section

/-- A128209: Jacobsthal numbers(A001045) + 1.

Offset 0, canonical program `A128209.P10032206597327132416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A128209 (n : ℕ) : ℤ :=
  A128209.P10032206597327132416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A128209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128634.P14895499785382824922

`∑[floor(Δ[(4-6/(n+1))*a(n-1)])]` with `a(0)=2`
-/

namespace A128634.P14895499785382824922
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P14895499785382824922

noncomputable section

/-- A128634: Number of parallel permutations of length n.

Offset 1, canonical program `A128634.P14895499785382824922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A128634 (n : ℕ) : ℤ :=
  A128634.P14895499785382824922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A128634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128918.P8575397873609176070

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=7`
-/

namespace A128918.P8575397873609176070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 7] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A128918.P8575397873609176070

noncomputable section

/-- A128918: a(n) = n*(n+1)/2 if n is odd, otherwise (n-1)*n/2 + 1.

Offset 0, canonical program `A128918.P8575397873609176070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128918 (n : ℕ) : ℤ :=
  A128918.P8575397873609176070.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129527.P16393117615783917162

`a(∑[n]%n)+n` with `a(0)=0`
-/

namespace A129527.P16393117615783917162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((∑ j ∈ Finset.range (n + 1), f1 j) % n) + n

end

end A129527.P16393117615783917162

noncomputable section

/-- A129527: a(2n) = a(n) + 2n, a(2n+1) = 2n + 1.

Offset 0, canonical program `A129527.P16393117615783917162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129527 (n : ℕ) : ℤ :=
  (A129527.P16393117615783917162.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129952.P2409925324620898391

`4*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A129952.P2409925324620898391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A129952.P2409925324620898391

noncomputable section

/-- A129952: Binomial transform of A124625.

Offset 0, canonical program `A129952.P2409925324620898391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A129952 (n : ℕ) : ℤ :=
  A129952.P2409925324620898391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A129952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130404.P7634820302190363083

`∑[gcd(n, or(1, n))]`
-/

namespace A130404.P7634820302190363083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130404.P7634820302190363083

noncomputable section

/-- A130404: Partial sums of A093178.

Offset 1, canonical program `A130404.P7634820302190363083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130404 (n : ℕ) : ℤ :=
  (A130404.P7634820302190363083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130520.P5043744750705606164

`round(n*(n-3)/10)`
-/

namespace A130520.P5043744750705606164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - 3 : ℚ) / 10))

end

end A130520.P5043744750705606164

noncomputable section

/-- A130520: a(n) = Sum_{k=0..n} floor(k/5). (Partial sums of A002266.)

Offset 0, canonical program `A130520.P5043744750705606164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130520 (n : ℕ) : ℤ :=
  A130520.P5043744750705606164.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130658.P17554939015796868672

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A130658.P17554939015796868672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n a =>
  a (n - 4)

end

end A130658.P17554939015796868672

noncomputable section

/-- A130658: Period 4: repeat [1, 1, 2, 2].

Offset 0, canonical program `A130658.P17554939015796868672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130658 (n : ℕ) : ℤ :=
  (A130658.P17554939015796868672.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130659.P9513506422310936001

`floor(log2(exp(n%4)))`
-/

namespace A130659.P9513506422310936001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (Real.exp ((n % 4 : ℕ) : ℝ))⌋

end

end A130659.P9513506422310936001

noncomputable section

/-- A130659: Period 4: repeat [0, 1, 2, 4].

Offset 0, canonical program `A130659.P9513506422310936001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130659 (n : ℕ) : ℤ :=
  A130659.P9513506422310936001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130706.P15856520674389082666

`C(2, n²)`
-/

namespace A130706.P15856520674389082666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2)

end

end A130706.P15856520674389082666

noncomputable section

/-- A130706: a(0) = 1, a(1) = 2, a(n) = 0 for n > 1.

Offset 0, canonical program `A130706.P15856520674389082666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130706 (n : ℕ) : ℤ :=
  (A130706.P15856520674389082666.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130731.P2200076964011723733

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0`
-/

namespace A130731.P2200076964011723733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 0] fun n a =>
  a (n - 4)

end

end A130731.P2200076964011723733

noncomputable section

/-- A130731: Period 4: repeat [1, 2, 0, 0].

Offset 0, canonical program `A130731.P2200076964011723733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130731 (n : ℕ) : ℤ :=
  (A130731.P2200076964011723733.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130783.P13161733300622189129

`(n+1)*(2^n-C(n, floor(n/2)))/2`
-/

namespace A130783.P13161733300622189129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((2 ^ n : ℤ) - (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) : ℚ) / 2)

end

end A130783.P13161733300622189129

noncomputable section

/-- A130783: Maximum value of the n-th difference of a permutation of 0..n.

Offset 0, canonical program `A130783.P13161733300622189129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130783 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130783.P13161733300622189129.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130883.P3687789307616654688

`n*(2*n-1)+1`
-/

namespace A130883.P3687789307616654688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 * n : ℤ) - 1) + 1

end

end A130883.P3687789307616654688

noncomputable section

/-- A130883: a(n) = 2*n^2 - n + 1.

Offset 0, canonical program `A130883.P3687789307616654688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130883 (n : ℕ) : ℤ :=
  A130883.P3687789307616654688.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A130883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131179.P10692314329594943414

`(n²+1+(n-1)*(-1)^n)/2`
-/

namespace A131179.P10692314329594943414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + (1 + ((n : ℤ) - 1) * (-1) ^ n) : ℚ) / 2

end

end A131179.P10692314329594943414

noncomputable section

/-- A131179: a(n) = if n mod 2 == 0 then n*(n+1)/2, otherwise (n-1)*n/2 + 1.

Offset 0, canonical program `A131179.P10692314329594943414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131179 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131179.P10692314329594943414.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131471.P12482115226042697987

`n^5+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131471.P12482115226042697987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 + n

end

end A131471.P12482115226042697987

noncomputable section

/-- A131471: a(n) = n^5+n.

Offset 0, canonical program `A131471.P12482115226042697987`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n` (program `A131471.P12482115226042697987`, by `A131471.P12482115226042697987.correct`). Lean does not check the parsing of the name. -/
def A131471 (n : ℕ) : ℤ :=
  (A131471.P12482115226042697987.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5+n` (program `A131471.P12482115226042697987`, by `A131471.P12482115226042697987.correct`). Lean does not check the parsing of the name. -/
def A131471.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A131472.P7274504250054804871

`n^6+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131472.P7274504250054804871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 + n

end

end A131472.P7274504250054804871

noncomputable section

/-- A131472: a(n) = n^6 + n.

Offset 0, canonical program `A131472.P7274504250054804871`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+n` (program `A131472.P7274504250054804871`, by `A131472.P7274504250054804871.correct`). Lean does not check the parsing of the name. -/
def A131472 (n : ℕ) : ℤ :=
  (A131472.P7274504250054804871.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6+n` (program `A131472.P7274504250054804871`, by `A131472.P7274504250054804871.correct`). Lean does not check the parsing of the name. -/
def A131472.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A131572.P9577111679709135137

`2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A131572.P9577111679709135137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 2)

end

end A131572.P9577111679709135137

noncomputable section

/-- A131572: a(0) = 0 and a(1) = 1, continued such that absolute values of 2nd differences equal the original sequence.

Offset 0, canonical program `A131572.P9577111679709135137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131572 (n : ℕ) : ℤ :=
  (A131572.P9577111679709135137.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131577.P3998309598604981540

`floor(2^(n-1))`
-/

namespace A131577.P3998309598604981540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A131577.P3998309598604981540

noncomputable section

/-- A131577: Zero followed by powers of 2 (cf. A000079).

Offset 0, canonical program `A131577.P3998309598604981540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131577 (n : ℕ) : ℤ :=
  A131577.P3998309598604981540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131800.P15183140047121067424

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6`
-/

namespace A131800.P15183140047121067424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 6] fun n a =>
  a (n - 4)

end

end A131800.P15183140047121067424

noncomputable section

/-- A131800: Period 4: repeat [1, 2, 5, 6].

Offset 0, canonical program `A131800.P15183140047121067424`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131800 (n : ℕ) : ℤ :=
  (A131800.P15183140047121067424.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131800.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131818.P16625128543866202935

`(a(n-1)-1)%a(n-a(n-1))+2` with `a(0)=1`
-/

namespace A131818.P16625128543866202935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) - 1) (a ((n : ℤ) - a (n - 1)).toNat) + 2

end

end A131818.P16625128543866202935

noncomputable section

/-- A131818: A130296 + A002260 - A000012. Triangle read by rows: row n consists of n, 2, 3, 4, ..., n.

Offset 1, canonical program `A131818.P16625128543866202935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131818 (n : ℕ) : ℤ :=
  A131818.P16625128543866202935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131851.P1942102588328150094

`n%2-a(floor(n/4))` with `a(0)=0`
-/

namespace A131851.P1942102588328150094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 2 : ℕ) : ℤ) - a ⌊(n : ℚ) / 4⌋.toNat

end

end A131851.P1942102588328150094

noncomputable section

/-- A131851: Real part of the function z(n)=Sum(d(k)*i^k: d as in n=Sum(d(k)*2^k), i=sqrt(-1)).

Offset 0, canonical program `A131851.P1942102588328150094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131851 (n : ℕ) : ℤ :=
  A131851.P1942102588328150094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132045.P7577447969113283511

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A132045.P7577447969113283511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A132045.P7577447969113283511

noncomputable section

/-- A132045: Row sums of triangle A132044.

Offset 0, canonical program `A132045.P7577447969113283511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132045 (n : ℕ) : ℤ :=
  A132045.P7577447969113283511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132209.P5758200921783935227

`∑[10*n]%Δ[n^3]`
-/

namespace A132209.P5758200921783935227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A132209.P5758200921783935227

noncomputable section

/-- A132209: a(0) = 0 and a(n) = 2*n^2 + 2*n - 1, for n>=1.

Offset 0, canonical program `A132209.P5758200921783935227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132209 (n : ℕ) : ℤ :=
  A132209.P5758200921783935227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132357.P7570591492076313208

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=41`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A132357.P7570591492076313208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 14, 41] fun n a =>
  3 * a (n - 1) - a (n - 3) + 3 * a (n - 4)

end

end A132357.P7570591492076313208

noncomputable section

/-- A132357: a(n) = 3*a(n-1) - a(n-3) + 3*a(n-4), with initial values 1,4,14,41.

Offset 0, canonical program `A132357.P7570591492076313208`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A132357.P7570591492076313208`, by `A132357.P7570591492076313208.correct`). Lean does not check the parsing of the name. -/
def A132357 (n : ℕ) : ℤ :=
  A132357.P7570591492076313208.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)+3*a(n-4)` (program `A132357.P7570591492076313208`, by `A132357.P7570591492076313208.correct`). Lean does not check the parsing of the name. -/
def A132357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A132380.P1818607001720841548

`1/2*(1-(-1)^floor(n/2))*(-1)^floor(n/4)`
-/

namespace A132380.P1818607001720841548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((1 - (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) * (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))

end

end A132380.P1818607001720841548

noncomputable section

/-- A132380: Period 8: repeat [0, 0, 1, 1, 0, 0, -1, -1].

Offset 0, canonical program `A132380.P1818607001720841548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132380 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A132380.P1818607001720841548.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132636.P15244365434743485777

`∑[a(n-1)+a(n-2)]%((n+1)^3)` with `a(0)=1, a(1)=0`
-/

namespace A132636.P15244365434743485777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 3

end

end A132636.P15244365434743485777

noncomputable section

/-- A132636: a(n) = Fibonacci(n) mod n^3.

Offset 1, canonical program `A132636.P15244365434743485777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A132636 (n : ℕ) : ℤ :=
  (A132636.P15244365434743485777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A132636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132913.P4783954105006794207

`ceil(root(n+1, 2)+root(n+1, 3))`
-/

namespace A132913.P4783954105006794207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) ^ (1 / (2 : ℝ)) + (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A132913.P4783954105006794207

noncomputable section

/-- A132913: a(n) = ceiling(sqrt(n) + n^(1/3)).

Offset 1, canonical program `A132913.P4783954105006794207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132913 (n : ℕ) : ℤ :=
  A132913.P4783954105006794207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132914.P16629322210564430900

`floor(root(n+1, 2)+root(n+1, 3))`
-/

namespace A132914.P16629322210564430900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (2 : ℝ)) + (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A132914.P16629322210564430900

noncomputable section

/-- A132914: a(n) = floor(sqrt(n) + n^(1/3)).

Offset 1, canonical program `A132914.P16629322210564430900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132914 (n : ℕ) : ℤ :=
  A132914.P16629322210564430900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133034.P17997943347392917736

`a(n-2)+a(n-3)` with `a(0)=-1, a(1)=0, a(2)=1`
-/

namespace A133034.P17997943347392917736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1] fun n a =>
  a (n - 2) + a (n - 3)

end

end A133034.P17997943347392917736

noncomputable section

/-- A133034: First differences of Padovan sequence A000931.

Offset 0, canonical program `A133034.P17997943347392917736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133034 (n : ℕ) : ℤ :=
  A133034.P17997943347392917736.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133145.P3731618436186570124

`2^(n%4)`
-/

namespace A133145.P3731618436186570124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n % 4)

end

end A133145.P3731618436186570124

noncomputable section

/-- A133145: Period 4: repeat [1, 2, 4, 8].

Offset 0, canonical program `A133145.P3731618436186570124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133145 (n : ℕ) : ℤ :=
  (A133145.P3731618436186570124.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133145.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133186.P8395450353845744661

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=-4`
-/

namespace A133186.P8395450353845744661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, -4] fun n a =>
  a (n - 4)

end

end A133186.P8395450353845744661

noncomputable section

/-- A133186: Period 4: repeat [1, 2, 1, -4].

Offset 0, canonical program `A133186.P8395450353845744661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133186 (n : ℕ) : ℤ :=
  A133186.P8395450353845744661.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133223.P8864392423628790937

`∑[∏{p}[2-n, gcd(n, #)]]`
-/

namespace A133223.P8864392423628790937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.gcd n p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133223.P8864392423628790937

noncomputable section

/-- A133223: Sum of digits of primes (A007605), sorted and with duplicates removed.

Offset 1, canonical program `A133223.P8864392423628790937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5997 terms. -/
def A133223 (n : ℕ) : ℤ :=
  (A133223.P8864392423628790937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5997 terms. -/
def A133223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133263.P2239587293626440969

`a(n-1)+n` with `a(0)=1, a(1)=3`
-/

namespace A133263.P2239587293626440969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + n

end

end A133263.P2239587293626440969

noncomputable section

/-- A133263: Binomial transform of (1, 2, 0, 1, -1, 1, -1, 1, ...).

Offset 0, canonical program `A133263.P2239587293626440969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133263 (n : ℕ) : ℤ :=
  (A133263.P2239587293626440969.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133310.P6888286461156837281

`a(n-3)+2` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A133310.P6888286461156837281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 3) + 2

end

end A133310.P6888286461156837281

noncomputable section

/-- A133310: a(3n) = 2n+1, a(3n+1) = 2n+2, a(3n+2) = 2n+1.

Offset 0, canonical program `A133310.P6888286461156837281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133310 (n : ℕ) : ℤ :=
  (A133310.P6888286461156837281.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133455.P11309993230899329623

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=2, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133455.P11309993230899329623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3)

end

end A133455.P11309993230899329623

noncomputable section

/-- A133455: a(n) = 3*a(n-1) - 3*a(n-2) + 2*a(n-3), with a(0) = 4, a(1) = 2, a(2) = 1.

Offset 0, canonical program `A133455.P11309993230899329623`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A133455.P11309993230899329623`, by `A133455.P11309993230899329623.correct`). Lean does not check the parsing of the name. -/
def A133455 (n : ℕ) : ℤ :=
  A133455.P11309993230899329623.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+2*a(n-3)` (program `A133455.P11309993230899329623`, by `A133455.P11309993230899329623.correct`). Lean does not check the parsing of the name. -/
def A133455.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A133494.P1547426686957658687

`ceil(3^(n-1))`
-/

namespace A133494.P1547426686957658687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A133494.P1547426686957658687

noncomputable section

/-- A133494: Diagonal of the array of iterated differences of A047848.

Offset 0, canonical program `A133494.P1547426686957658687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133494 (n : ℕ) : ℤ :=
  A133494.P1547426686957658687.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133653.P3380395968508806703

`ceil(cot(Δ[sqrt(n)]²))`
-/

namespace A133653.P3380395968508806703
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot ((f1 (n + 1) - f1 n) ^ 2)⌉

end

end A133653.P3380395968508806703

noncomputable section

/-- A133653: A007318^(-1) * A003261.

Offset 1, canonical program `A133653.P3380395968508806703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133653 (n : ℕ) : ℤ :=
  A133653.P3380395968508806703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133754.P2736997531486272654

`n^5-n^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133754.P2736997531486272654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) - (n ^ 3 : ℤ)

end

end A133754.P2736997531486272654

noncomputable section

/-- A133754: a(n) = n^5 - n^3.

Offset 0, canonical program `A133754.P2736997531486272654`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^3` (program `A133754.P2736997531486272654`, by `A133754.P2736997531486272654.correct`). Lean does not check the parsing of the name. -/
def A133754 (n : ℕ) : ℤ :=
  A133754.P2736997531486272654.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^5-n^3` (program `A133754.P2736997531486272654`, by `A133754.P2736997531486272654.correct`). Lean does not check the parsing of the name. -/
def A133754.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A133818.P3839959710216431088

`(8*n+3)*(8*n+5)*(8*n+7)*(8*n+9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133818.P3839959710216431088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 3) * ((8 * n + 5) * ((8 * n + 7) * (8 * n + 9)))

end

end A133818.P3839959710216431088

noncomputable section

/-- A133818: a(n) = (8*n+3)*(8*n+5)*(8*n+7)*(8*n+9).

Offset 0, canonical program `A133818.P3839959710216431088`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)*(8*n+5)*(8*n+7)*(8*n+9)` (program `A133818.P3839959710216431088`, by `A133818.P3839959710216431088.correct`). Lean does not check the parsing of the name. -/
def A133818 (n : ℕ) : ℤ :=
  (A133818.P3839959710216431088.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+3)*(8*n+5)*(8*n+7)*(8*n+9)` (program `A133818.P3839959710216431088`, by `A133818.P3839959710216431088.correct`). Lean does not check the parsing of the name. -/
def A133818.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A133872.P12915600647969890054

`(1+(-1)^floor(n/2))/2`
-/

namespace A133872.P12915600647969890054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) / 2

end

end A133872.P12915600647969890054

noncomputable section

/-- A133872: Period 4: repeat [1, 1, 0, 0].

Offset 0, canonical program `A133872.P12915600647969890054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133872 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133872.P12915600647969890054.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133942.P740003747930035981

`(-1)^n*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133942.P740003747930035981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.factorial n : ℤ)

end

end A133942.P740003747930035981

noncomputable section

/-- A133942: a(n) = (-1)^n * n!.

Offset 0, canonical program `A133942.P740003747930035981`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*n!` (program `A133942.P740003747930035981`, by `A133942.P740003747930035981.correct`). Lean does not check the parsing of the name. -/
def A133942 (n : ℕ) : ℤ :=
  A133942.P740003747930035981.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*n!` (program `A133942.P740003747930035981`, by `A133942.P740003747930035981.correct`). Lean does not check the parsing of the name. -/
def A133942.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A134018.P16960506103177957056

`1/2*(4^n-3^(n+1)+5*2^n-3)`
-/

namespace A134018.P16960506103177957056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((4 ^ n : ℤ) - (3 ^ (n + 1) : ℤ) + (5 * 2 ^ n : ℤ) - 3 : ℚ)

end

end A134018.P16960506103177957056

noncomputable section

/-- A134018: Let P(A) be the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are disjoint and for which either x is a subset of y or y is a subset of x, or 1) x and y are intersecting but for which x is not a subset of y and y is not a subset of x.

Offset 0, canonical program `A134018.P16960506103177957056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134018 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134018.P16960506103177957056.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134019.P17003051754613294007

`(4^n-3^(n+1)+5*2^n-1)/2`
-/

namespace A134019.P17003051754613294007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (3 ^ (n + 1) : ℤ) + (5 * 2 ^ n : ℤ) - 1 : ℚ) / 2

end

end A134019.P17003051754613294007

noncomputable section

/-- A134019: Let P(A) be the power set of an n-element set A. Then a(n) = the number of pairs of elements {x,y} of P(A) for which either 0) x and y are intersecting but for which x is not a subset of y and y is not a subset of x, or 1) x = y.

Offset 0, canonical program `A134019.P17003051754613294007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134019 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134019.P17003051754613294007.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134063.P4682340820159510411

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A134063.P4682340820159510411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A134063.P4682340820159510411

noncomputable section

/-- A134063: a(n) = (1/2)*(3^n - 2^(n+1) + 3).

Offset 0, canonical program `A134063.P4682340820159510411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134063 (n : ℕ) : ℤ :=
  A134063.P4682340820159510411.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134667.P10516386716138511071

`n%2*round(sin(n%6))`
-/

namespace A134667.P10516386716138511071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A134667.P10516386716138511071

noncomputable section

/-- A134667: Period 6: repeat [0, 1, 0, 0, 0, -1].

Offset 0, canonical program `A134667.P10516386716138511071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134667 (n : ℕ) : ℤ :=
  A134667.P10516386716138511071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134816.P8825365697420007670

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A134816.P8825365697420007670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + a (n - 3)

end

end A134816.P8825365697420007670

noncomputable section

/-- A134816: Padovan's spiral numbers.

Offset 1, canonical program `A134816.P8825365697420007670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134816 (n : ℕ) : ℤ :=
  (A134816.P8825365697420007670.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134824.P15408137293539972542

`floor(acot(1-n))`
-/

namespace A134824.P15408137293539972542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)⌋

end

end A134824.P15408137293539972542

noncomputable section

/-- A134824: Generated by reverse of Schroeder II o.g.f.

Offset 0, canonical program `A134824.P15408137293539972542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134824 (n : ℕ) : ℤ :=
  A134824.P15408137293539972542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134869.P9616098060978576809

`∑[C(n, n²)+n]+n`
-/

namespace A134869.P9616098060978576809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A134869.P9616098060978576809

noncomputable section

/-- A134869: Row sums of triangle A134868.

Offset 1, canonical program `A134869.P9616098060978576809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134869 (n : ℕ) : ℤ :=
  (A134869.P9616098060978576809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134914.P12032048705105047186

`a(n-1)+C(n, a(n-1)^3)` with `a(0)=1`
-/

namespace A134914.P12032048705105047186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (a (n - 1) ^ 3)

end

end A134914.P12032048705105047186

noncomputable section

/-- A134914: a(n) = ceiling(n^(1/3)).

Offset 1, canonical program `A134914.P12032048705105047186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134914 (n : ℕ) : ℤ :=
  (A134914.P12032048705105047186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135055.P14920395580388249474

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=-2, a(1)=-1, a(2)=0, a(3)=1, a(4)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135055.P14920395580388249474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, -1, 0, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5)

end

end A135055.P14920395580388249474

noncomputable section

/-- A135055: Pentanacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5) for n>4 and with a(0)=-2, a(1)=-1, a(2)=0, a(3)=1, a(4)=2.

Offset 0, canonical program `A135055.P14920395580388249474`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A135055.P14920395580388249474`, by `A135055.P14920395580388249474.correct`). Lean does not check the parsing of the name. -/
def A135055 (n : ℕ) : ℤ :=
  A135055.P14920395580388249474.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A135055.P14920395580388249474`, by `A135055.P14920395580388249474.correct`). Lean does not check the parsing of the name. -/
def A135055.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A135056.P186587444853908980

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135056.P186587444853908980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5)

end

end A135056.P186587444853908980

noncomputable section

/-- A135056: Pentanacci numbers: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4) + a(n-5) if n>=5, and a(n) = n otherwise.

Offset 0, canonical program `A135056.P186587444853908980`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A135056.P186587444853908980`, by `A135056.P186587444853908980.correct`). Lean does not check the parsing of the name. -/
def A135056 (n : ℕ) : ℤ :=
  (A135056.P186587444853908980.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A135056.P186587444853908980`, by `A135056.P186587444853908980.correct`). Lean does not check the parsing of the name. -/
def A135056.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A135153.P17321168764094808209

`2*a(n-2)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A135153.P17321168764094808209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  2 * a (n - 2) + a (n - 4)

end

end A135153.P17321168764094808209

noncomputable section

/-- A135153: Repeat Pell numbers A000129.

Offset 0, canonical program `A135153.P17321168764094808209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135153 (n : ℕ) : ℤ :=
  (A135153.P17321168764094808209.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135153.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135435.P13074032533036431501

`a(n-4)+a(n-7)` with `a(0)=7, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=0, a(6)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135435.P13074032533036431501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 0, 0, 0, 4, 0, 0] fun n a =>
  a (n - 4) + a (n - 7)

end

end A135435.P13074032533036431501

noncomputable section

/-- A135435: a(n) = a(n-4) + a(n-7) with a(0), ..., a(6) = [7,0,0,0,4,0,0].

Offset 0, canonical program `A135435.P13074032533036431501`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+a(n-7)` (program `A135435.P13074032533036431501`, by `A135435.P13074032533036431501.correct`). Lean does not check the parsing of the name. -/
def A135435 (n : ℕ) : ℤ :=
  (A135435.P13074032533036431501.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-4)+a(n-7)` (program `A135435.P13074032533036431501`, by `A135435.P13074032533036431501.correct`). Lean does not check the parsing of the name. -/
def A135435.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A135491.P731866473722496995

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A135491.P731866473722496995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A135491.P731866473722496995

noncomputable section

/-- A135491: Number of ways to toss a coin n times and not get a run of four.

Offset 0, canonical program `A135491.P731866473722496995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135491 (n : ℕ) : ℤ :=
  (A135491.P731866473722496995.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135493.P54940314983461200

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32`
-/

namespace A135493.P54940314983461200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5)

end

end A135493.P54940314983461200

noncomputable section

/-- A135493: Number of ways to toss a coin n times and not get a run of six.

Offset 0, canonical program `A135493.P54940314983461200`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135493 (n : ℕ) : ℤ :=
  (A135493.P54940314983461200.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135528.P4460288723425439175

`(n%2)^n`
-/

namespace A135528.P4460288723425439175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

end

end A135528.P4460288723425439175

noncomputable section

/-- A135528: 1, then repeat 1,0.

Offset 1, canonical program `A135528.P4460288723425439175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135528 (n : ℕ) : ℤ :=
  (A135528.P4460288723425439175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135660.P13873516016911055730

`ceil(sqrt(n+1)-root(n+1, 3))`
-/

namespace A135660.P13873516016911055730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n + 1 : ℝ) - (n + 1 : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A135660.P13873516016911055730

noncomputable section

/-- A135660: a(n) = ceiling(sqrt(n) - n^(1/3)).

Offset 1, canonical program `A135660.P13873516016911055730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135660 (n : ℕ) : ℤ :=
  A135660.P13873516016911055730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135665.P15616476206632613682

`floor(root(n+1, 2)-root(n+1, 5))`
-/

namespace A135665.P15616476206632613682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (2 : ℝ)) - (n + 1 : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A135665.P15616476206632613682

noncomputable section

/-- A135665: a(n) = floor(sqrt(n) - n^(1/5)).

Offset 1, canonical program `A135665.P15616476206632613682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135665 (n : ℕ) : ℤ :=
  A135665.P15616476206632613682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135706.P11401560679944584335

`n*(5*n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A135706.P11401560679944584335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((5 * n : ℤ) - 3)

end

end A135706.P11401560679944584335

noncomputable section

/-- A135706: a(n) = n*(5*n-3).

Offset 0, canonical program `A135706.P11401560679944584335`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n-3)` (program `A135706.P11401560679944584335`, by `A135706.P11401560679944584335.correct`). Lean does not check the parsing of the name. -/
def A135706 (n : ℕ) : ℤ :=
  A135706.P11401560679944584335.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5*n-3)` (program `A135706.P11401560679944584335`, by `A135706.P11401560679944584335.correct`). Lean does not check the parsing of the name. -/
def A135706.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A135851.P2384895097992446206

`a(n-1)+a(n-3)` with `a(0)=-1, a(1)=0, a(2)=1`
-/

namespace A135851.P2384895097992446206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1] fun n a =>
  a (n - 1) + a (n - 3)

end

end A135851.P2384895097992446206

noncomputable section

/-- A135851: a(n) = n-1, if n <= 2, otherwise A107458(n-1) + A107458(n-2).

Offset 0, canonical program `A135851.P2384895097992446206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135851 (n : ℕ) : ℤ :=
  A135851.P2384895097992446206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136013.P12572160085575880269

`floor(n/2)+2*a(floor(n/2))` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A136013.P12572160085575880269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 2⌋ + 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A136013.P12572160085575880269

noncomputable section

/-- A136013: a(n) = floor(n/2) + 2*a(floor(n/2)), a(0) = 0.

Offset 0, canonical program `A136013.P12572160085575880269`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+2*a(floor(n/2))` (program `A136013.P12572160085575880269`, by `A136013.P12572160085575880269.correct`). Lean does not check the parsing of the name. -/
def A136013 (n : ℕ) : ℤ :=
  A136013.P12572160085575880269.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/2)+2*a(floor(n/2))` (program `A136013.P12572160085575880269`, by `A136013.P12572160085575880269.correct`). Lean does not check the parsing of the name. -/
def A136013.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A138569.P6926071866085161601

`4*a(n-2)-6*a(n-4)+4*a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=0`
-/

namespace A138569.P6926071866085161601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 0, 1, 1, 0] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6)

end

end A138569.P6926071866085161601

noncomputable section

/-- A138569: First differences of A137776.

Offset 0, canonical program `A138569.P6926071866085161601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138569 (n : ℕ) : ℤ :=
  A138569.P6926071866085161601.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138988.P3477283103971470026

`(n+2)*∑[char[7*n]]-1`
-/

namespace A138988.P3477283103971470026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A138988.P3477283103971470026

noncomputable section

/-- A138988: a(n) is the Frobenius number for 8 successive numbers n+1, n+2, ..., n+8.

Offset 1, canonical program `A138988.P3477283103971470026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138988 (n : ℕ) : ℤ :=
  A138988.P3477283103971470026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139267.P8170884913242914305

`6*n²-4*n`
-/

namespace A139267.P8170884913242914305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - (4 * n : ℤ)

end

end A139267.P8170884913242914305

noncomputable section

/-- A139267: Twice octagonal numbers: 2*n*(3*n-2).

Offset 0, canonical program `A139267.P8170884913242914305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139267 (n : ℕ) : ℤ :=
  A139267.P8170884913242914305.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139351.P2266554670828086265

`a(floor(n/4))+n%2` with `a(0)=0`
-/

namespace A139351.P2266554670828086265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + n % 2

end

end A139351.P2266554670828086265

noncomputable section

/-- A139351: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives e(n).

Offset 0, canonical program `A139351.P2266554670828086265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139351 (n : ℕ) : ℤ :=
  (A139351.P2266554670828086265.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139756.P10450278992530043659

`2*a(n-1)+2^(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A139756.P10450278992530043659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A139756.P10450278992530043659

noncomputable section

/-- A139756: Binomial transform of A004526.

Offset 0, canonical program `A139756.P10450278992530043659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139756.P10450278992530043659.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140106.P2802031220440771430

`floor(abs((1-n)/2))`
-/

namespace A140106.P2802031220440771430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(1 - (n : ℤ) : ℚ) / 2|⌋

end

end A140106.P2802031220440771430

noncomputable section

/-- A140106: Number of noncongruent diagonals in a regular n-gon.

Offset 1, canonical program `A140106.P2802031220440771430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140106 (n : ℕ) : ℤ :=
  A140106.P2802031220440771430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140144.P15060692294174994636

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6, a(4)=11`
-/

namespace A140144.P15060692294174994636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 6, 11] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A140144.P15060692294174994636

noncomputable section

/-- A140144: a(1)=1, a(n)=a(n-1)+n^1 if n odd, a(n)=a(n-1)+ n^0 if n is even.

Offset 1, canonical program `A140144.P15060692294174994636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140144 (n : ℕ) : ℤ :=
  A140144.P15060692294174994636.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140253.P16334260990602493394

`a(n-1)+2*a(n-2)+3` with `a(0)=-1, a(1)=1`
-/

namespace A140253.P16334260990602493394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 3

end

end A140253.P16334260990602493394

noncomputable section

/-- A140253: a(2*n) = 2*(2*4^(n-1)-1) and a(2*n-1) = 2*4^(n-1)-1.

Offset 0, canonical program `A140253.P16334260990602493394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140253 (n : ℕ) : ℤ :=
  A140253.P16334260990602493394.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140325.P11346817253485623384

`2^n*C(n+8, 8)`
-/

namespace A140325.P11346817253485623384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (n + 8) 8

end

end A140325.P11346817253485623384

noncomputable section

/-- A140325: a(n) = binomial(n+8,8) * 2^n.

Offset 0, canonical program `A140325.P11346817253485623384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A140325 (n : ℕ) : ℤ :=
  (A140325.P11346817253485623384.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A140325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140429.P7959095880599910709

`floor(3^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140429.P7959095880599910709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A140429.P7959095880599910709

noncomputable section

/-- A140429: a(n) = floor(3^(n-1)).

Offset 0, canonical program `A140429.P7959095880599910709`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n-1))` (program `A140429.P7959095880599910709`, by `A140429.P7959095880599910709.correct`). Lean does not check the parsing of the name. -/
def A140429 (n : ℕ) : ℤ :=
  A140429.P7959095880599910709.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n-1))` (program `A140429.P7959095880599910709`, by `A140429.P7959095880599910709.correct`). Lean does not check the parsing of the name. -/
def A140429.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140472.P15813874920454231005

`a(n-a(n-1))+a(floor(n/2))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140472.P15813874920454231005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - a (n - 1)) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A140472.P15813874920454231005

noncomputable section

/-- A140472: a(n) = a(n - a(n-1)) + a(floor(n/2)).

Offset 0, canonical program `A140472.P15813874920454231005`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(floor(n/2))` (program `A140472.P15813874920454231005`, by `A140472.P15813874920454231005.correct`). Lean does not check the parsing of the name. -/
def A140472 (n : ℕ) : ℤ :=
  (A140472.P15813874920454231005.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(floor(n/2))` (program `A140472.P15813874920454231005`, by `A140472.P15813874920454231005.correct`). Lean does not check the parsing of the name. -/
def A140472.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140979.P11570432372258368747

`floor(2*ϕ*floor(ϕ*(n+1)))`
-/

namespace A140979.P11570432372258368747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℝ))⌋

end

end A140979.P11570432372258368747

noncomputable section

/-- A140979: a(n) = floor(2*phi*floor(n*phi)) where phi = A001622.

Offset 1, canonical program `A140979.P11570432372258368747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140979 (n : ℕ) : ℤ :=
  A140979.P11570432372258368747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141036.P12016863932233638323

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141036.P12016863932233638323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A141036.P12016863932233638323

noncomputable section

/-- A141036: Tribonacci-like sequence; a(0)=2, a(1)=1, a(2)=1, a(n) = a(n-1) + a(n-2) + a(n-3).

Offset 0, canonical program `A141036.P12016863932233638323`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A141036.P12016863932233638323`, by `A141036.P12016863932233638323.correct`). Lean does not check the parsing of the name. -/
def A141036 (n : ℕ) : ℤ :=
  (A141036.P12016863932233638323.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A141036.P12016863932233638323`, by `A141036.P12016863932233638323.correct`). Lean does not check the parsing of the name. -/
def A141036.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141310.P2179789103957121271

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2`
-/

namespace A141310.P2179789103957121271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 2] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A141310.P2179789103957121271

noncomputable section

/-- A141310: The odd numbers interlaced with the constant-2 sequence.

Offset 0, canonical program `A141310.P2179789103957121271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141310 (n : ℕ) : ℤ :=
  A141310.P2179789103957121271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141523.P13632311774567877665

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A141523.P13632311774567877665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A141523.P13632311774567877665

noncomputable section

/-- A141523: Expansion of (3-2*x-3*x^2)/(1-x-x^2-x^3).

Offset 0, canonical program `A141523.P13632311774567877665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141523 (n : ℕ) : ℤ :=
  (A141523.P13632311774567877665.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142150.P17187063318547882225

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A142150.P17187063318547882225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A142150.P17187063318547882225

noncomputable section

/-- A142150: The nonnegative integers interleaved with 0's.

Offset 0, canonical program `A142150.P17187063318547882225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142150 (n : ℕ) : ℤ :=
  A142150.P17187063318547882225.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142463.P2232194029249576848

`2*n²+2*n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142463.P2232194029249576848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 + 2 * n : ℤ) - 1

end

end A142463.P2232194029249576848

noncomputable section

/-- A142463: a(n) = 2*n^2 + 2*n - 1.

Offset 0, canonical program `A142463.P2232194029249576848`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+2*n-1` (program `A142463.P2232194029249576848`, by `A142463.P2232194029249576848.correct`). Lean does not check the parsing of the name. -/
def A142463 (n : ℕ) : ℤ :=
  A142463.P2232194029249576848.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+2*n-1` (program `A142463.P2232194029249576848`, by `A142463.P2232194029249576848.correct`). Lean does not check the parsing of the name. -/
def A142463.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142974.P3482987154250714936

`2^n-n*(n-1)`
-/

namespace A142974.P3482987154250714936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n : ℤ) * ((n : ℤ) - 1)

end

end A142974.P3482987154250714936

noncomputable section

/-- A142974: A007318 * [1, 1, -1, 1, 1, 1, ...].

Offset 1, canonical program `A142974.P3482987154250714936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142974 (n : ℕ) : ℤ :=
  A142974.P3482987154250714936.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143038.P2553649687180786865

`or(floor((a(n-1)-1)/2), a(n-2))+1` with `a(0)=1, a(1)=1`
-/

namespace A143038.P2553649687180786865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor ⌊(a (n - 1) - 1 : ℚ) / 2⌋ (a (n - 2)) + 1

end

end A143038.P2553649687180786865

noncomputable section

/-- A143038: Triangle read by rows, A000012 * A134309 * A000012, where A134309 = an infinite lower triangular matrix with (1, 1, 2, 4, 8, 16, ...) in the main diagonal and the rest zeros.

Offset 0, canonical program `A143038.P2553649687180786865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143038 (n : ℕ) : ℤ :=
  A143038.P2553649687180786865.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143095.P12742843081317708221

`2*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A143095.P12742843081317708221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 2)

end

end A143095.P12742843081317708221

noncomputable section

/-- A143095: (1, 2, 4, 8, ...) interleaved with (4, 8, 16, 32, ...).

Offset 0, canonical program `A143095.P12742843081317708221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143095 (n : ℕ) : ℤ :=
  (A143095.P12742843081317708221.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143348.P8640106722930724051

`(-1)^n*∑{d}[n+1, #]`
-/

namespace A143348.P8640106722930724051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A143348.P8640106722930724051

noncomputable section

/-- A143348: a(n) = -(-1)^n times sum of divisors of n.

Offset 1, canonical program `A143348.P8640106722930724051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143348 (n : ℕ) : ℤ :=
  A143348.P8640106722930724051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143472.P10788111093639099678

`a(n-3)+a(n-5)+a(n-7)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=1, a(8)=2, a(9)=1`
-/

namespace A143472.P10788111093639099678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 1, 1, 1, 2, 1] fun n a =>
  a (n - 3) + a (n - 5) + a (n - 7) - a (n - 10)

end

end A143472.P10788111093639099678

noncomputable section

/-- A143472: Expansion of 1/(1 - x^3 - x^5 - x^7 + x^10), inverse of a Salem polynomial.

Offset 0, canonical program `A143472.P10788111093639099678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143472 (n : ℕ) : ℤ :=
  A143472.P10788111093639099678.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143689.P2779484328448269126

`C(n, 2)+n²+1`
-/

namespace A143689.P2779484328448269126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2 + 1

end

end A143689.P2779484328448269126

noncomputable section

/-- A143689: a(n) = (3*n^2 - n + 2)/2.

Offset 0, canonical program `A143689.P2779484328448269126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143689 (n : ℕ) : ℤ :=
  (A143689.P2779484328448269126.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144503.P17154859118278611338

`2*(n-1)*a(n-1)+a(n-2)-2*(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A144503.P17154859118278611338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (((n : ℤ) - 1) * a (n - 1)) + a (n - 2) - 2 * ((n : ℤ) - 2)

end

end A144503.P17154859118278611338

noncomputable section

/-- A144503: Sum of n-th antidiagonal of array in A144502.

Offset 0, canonical program `A144503.P17154859118278611338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144503 (n : ℕ) : ℤ :=
  A144503.P17154859118278611338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144677.P3181928791554283987

`∑[∑[∑[∑[n+1]]%(n+3)]]`
-/

namespace A144677.P3181928791554283987
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144677.P3181928791554283987

noncomputable section

/-- A144677: Related to enumeration of quantum states (see reference for precise definition).

Offset 0, canonical program `A144677.P3181928791554283987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144677 (n : ℕ) : ℤ :=
  (A144677.P3181928791554283987.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145018.P7943709918651486940

`a(n-1)+n` with `a(0)=4`
-/

namespace A145018.P7943709918651486940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + n

end

end A145018.P7943709918651486940

noncomputable section

/-- A145018: a(n) = (n^2 - n + 8)/2.

Offset 1, canonical program `A145018.P7943709918651486940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145018 (n : ℕ) : ℤ :=
  (A145018.P7943709918651486940.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145027.P14368156603503912894

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145027.P14368156603503912894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A145027.P14368156603503912894

noncomputable section

/-- A145027: a(n) = a(n-1) + a(n-2) + a(n-3) with a(1) = 2, a(2) = 3, a(3) = 4.

Offset 1, canonical program `A145027.P14368156603503912894`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A145027.P14368156603503912894`, by `A145027.P14368156603503912894.correct`). Lean does not check the parsing of the name. -/
def A145027 (n : ℕ) : ℤ :=
  (A145027.P14368156603503912894.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A145027.P14368156603503912894`, by `A145027.P14368156603503912894.correct`). Lean does not check the parsing of the name. -/
def A145027.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A145029.P3959200243693724933

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145029.P3959200243693724933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5)

end

end A145029.P3959200243693724933

noncomputable section

/-- A145029: Pentanacci numbers: a(n)=a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5), {1,2,3,4,5...}.

Offset 1, canonical program `A145029.P3959200243693724933`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A145029.P3959200243693724933`, by `A145029.P3959200243693724933.correct`). Lean does not check the parsing of the name. -/
def A145029 (n : ℕ) : ℤ :=
  (A145029.P3959200243693724933.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A145029.P3959200243693724933`, by `A145029.P3959200243693724933.correct`). Lean does not check the parsing of the name. -/
def A145029.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A145812.P7040268425871068342

`ceil((4*∑[ceil(xor(n, -n)²/3)]+1)/4)`
-/

namespace A145812.P7040268425871068342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℤ) : ℚ) / 4⌉

end

end A145812.P7040268425871068342

noncomputable section

/-- A145812: Odd positive integers a(n) such that for every odd integer m > 1 there exists a unique representation of m as a sum of the form a(l) + 2a(s).

Offset 1, canonical program `A145812.P7040268425871068342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145812 (n : ℕ) : ℤ :=
  A145812.P7040268425871068342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145818.P3179306849580850996

`1-4*(1-(a(floor(n/2))+n%2))` with `a(0)=1`
-/

namespace A145818.P3179306849580850996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 4 * (1 - (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)))

end

end A145818.P3179306849580850996

noncomputable section

/-- A145818: Odd positive integers a(n) such that for every integer m == 3 (mod 4) there exists a unique representation of the form m = a(l) + 2*a(s), but there are no such representations for m == 1 (mod 4).

Offset 1, canonical program `A145818.P3179306849580850996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145818 (n : ℕ) : ℤ :=
  A145818.P3179306849580850996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151666.P1623333586014949659

`a(floor(n/4))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A151666.P1623333586014949659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat - a (n - 2)

end

end A151666.P1623333586014949659

noncomputable section

/-- A151666: Number of partitions of n into distinct powers of 4.

Offset 0, canonical program `A151666.P1623333586014949659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151666 (n : ℕ) : ℤ :=
  A151666.P1623333586014949659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151675.P3600609076066140792

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=27, a(2)=63, a(3)=122`
-/

namespace A151675.P3600609076066140792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 27, 63, 122] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A151675.P3600609076066140792

noncomputable section

/-- A151675: Row sums of A154685.

Offset 1, canonical program `A151675.P3600609076066140792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151675 (n : ℕ) : ℤ :=
  A151675.P3600609076066140792.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A151675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A151821.P3447003275305928826

`record[and(-3, 2^n)]`
-/

namespace A151821.P3447003275305928826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151821.P3447003275305928826

noncomputable section

/-- A151821: Powers of 2, omitting 2 itself.

Offset 1, canonical program `A151821.P3447003275305928826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A151821 (n : ℕ) : ℤ :=
  A151821.P3447003275305928826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A151821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152163.P15912959983015136417

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152163.P15912959983015136417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 1) + a (n - 2)

end

end A152163.P15912959983015136417

noncomputable section

/-- A152163: a(n) = a(n-1)+a(n-2), n>1 ; a(0)=1, a(1)=-1.

Offset 0, canonical program `A152163.P15912959983015136417`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)` (program `A152163.P15912959983015136417`, by `A152163.P15912959983015136417.correct`). Lean does not check the parsing of the name. -/
def A152163 (n : ℕ) : ℤ :=
  A152163.P15912959983015136417.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)` (program `A152163.P15912959983015136417`, by `A152163.P15912959983015136417.correct`). Lean does not check the parsing of the name. -/
def A152163.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A152271.P6659965972248271911

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A152271.P6659965972248271911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A152271.P6659965972248271911

noncomputable section

/-- A152271: a(n)=1 for even n and (n+1)/2 for odd n.

Offset 0, canonical program `A152271.P6659965972248271911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152271 (n : ℕ) : ℤ :=
  A152271.P6659965972248271911.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152725.P16975564637981443221

`n*(n+1)*(n^4+2*n^3-2*n²-3*n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152725.P16975564637981443221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (((n ^ 4 + 2 * n ^ 3 : ℤ) - (2 * n ^ 2 : ℤ) - (3 * n : ℤ) + 3 : ℚ) / 2))

end

end A152725.P16975564637981443221

noncomputable section

/-- A152725: a(n) = n*(n+1)*(n^4 + 2*n^3 - 2*n^2 - 3*n + 3)/2.

Offset 0, canonical program `A152725.P16975564637981443221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A152725.P16975564637981443221.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152726.P8949207397735379088

`n^7-a(n-1)` with `a(0)=0`
-/

namespace A152726.P8949207397735379088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 7 : ℤ) - a (n - 1)

end

end A152726.P8949207397735379088

noncomputable section

/-- A152726: a(n) = n^7 - (n-1)^7 + (n-2)^7 - ... + ((-1)^n)*0^7.

Offset 0, canonical program `A152726.P8949207397735379088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152726 (n : ℕ) : ℤ :=
  A152726.P8949207397735379088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A152726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152751.P8581439308832197273

`9*n²-6*n`
-/

namespace A152751.P8581439308832197273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 : ℤ) - (6 * n : ℤ)

end

end A152751.P8581439308832197273

noncomputable section

/-- A152751: 3 times octagonal numbers: a(n) = 3*n*(3*n-2).

Offset 0, canonical program `A152751.P8581439308832197273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152751 (n : ℕ) : ℤ :=
  A152751.P8581439308832197273.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152773.P4356461927346527955

`a(n-1)+15*n-12` with `a(0)=0`
-/

namespace A152773.P4356461927346527955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (15 * n : ℤ) - 12

end

end A152773.P4356461927346527955

noncomputable section

/-- A152773: 3 times heptagonal numbers: a(n) = 3*n*(5*n-3)/2.

Offset 0, canonical program `A152773.P4356461927346527955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152773 (n : ℕ) : ℤ :=
  A152773.P4356461927346527955.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152777.P17984612969344526260

`a(n-1)+35*n-28` with `a(0)=0`
-/

namespace A152777.P17984612969344526260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (35 * n : ℤ) - 28

end

end A152777.P17984612969344526260

noncomputable section

/-- A152777: 7 times heptagonal numbers: a(n) = 7*n*(5*n-3)/2.

Offset 0, canonical program `A152777.P17984612969344526260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152777 (n : ℕ) : ℤ :=
  A152777.P17984612969344526260.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152777.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152947.P16367813442806996368

`1+C(n, 2)`
-/

namespace A152947.P16367813442806996368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.choose n 2

end

end A152947.P16367813442806996368

noncomputable section

/-- A152947: a(n) = 1 + (n-2)*(n-1)/2.

Offset 1, canonical program `A152947.P16367813442806996368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152947 (n : ℕ) : ℤ :=
  (A152947.P16367813442806996368.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152948.P6305161244529730027

`2+C(n, 2)`
-/

namespace A152948.P6305161244529730027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + Nat.choose n 2

end

end A152948.P6305161244529730027

noncomputable section

/-- A152948: a(n) = (n^2 - 3*n + 6)/2.

Offset 1, canonical program `A152948.P6305161244529730027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152948 (n : ℕ) : ℤ :=
  (A152948.P6305161244529730027.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152948.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152949.P6392678402352572629

`3+C(n, 2)`
-/

namespace A152949.P6392678402352572629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + Nat.choose n 2

end

end A152949.P6392678402352572629

noncomputable section

/-- A152949: a(n) = 3 + binomial(n-1,2).

Offset 1, canonical program `A152949.P6392678402352572629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152949 (n : ℕ) : ℤ :=
  (A152949.P6392678402352572629.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A152950.P1489661741398431625

`a(n-1)+n` with `a(0)=3`
-/

namespace A152950.P1489661741398431625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + n

end

end A152950.P1489661741398431625

noncomputable section

/-- A152950: a(n) = 3 + n*(n-1)/2.

Offset 1, canonical program `A152950.P1489661741398431625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152950 (n : ℕ) : ℤ :=
  (A152950.P1489661741398431625.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153772.P16564766298699754137

`a(n-1)+2*a(n-2)+4` with `a(0)=-1, a(1)=-2`
-/

namespace A153772.P16564766298699754137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -2] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 4

end

end A153772.P16564766298699754137

noncomputable section

/-- A153772: a(n) = (2^n + 2*(-1)^n - 6)/3.

Offset 0, canonical program `A153772.P16564766298699754137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153772 (n : ℕ) : ℤ :=
  A153772.P16564766298699754137.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153784.P17388329899855850561

`10*n²-6*n`
-/

namespace A153784.P17388329899855850561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℤ) - (6 * n : ℤ)

end

end A153784.P17388329899855850561

noncomputable section

/-- A153784: 4 times heptagonal numbers: a(n) = 2*n*(5*n-3).

Offset 0, canonical program `A153784.P17388329899855850561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153784 (n : ℕ) : ℤ :=
  A153784.P17388329899855850561.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153785.P13366704032253032705

`25*n+a(n-1)-20` with `a(0)=0`
-/

namespace A153785.P13366704032253032705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (25 * n : ℤ) + a (n - 1) - 20

end

end A153785.P13366704032253032705

noncomputable section

/-- A153785: 5 times heptagonal numbers: a(n) = 5*n*(5*n-3)/2.

Offset 0, canonical program `A153785.P13366704032253032705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153785 (n : ℕ) : ℤ :=
  A153785.P13366704032253032705.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153786.P10964187700300092121

`15*n²-9*n`
-/

namespace A153786.P10964187700300092121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * n ^ 2 : ℤ) - (9 * n : ℤ)

end

end A153786.P10964187700300092121

noncomputable section

/-- A153786: 6 times heptagonal numbers: a(n) = 3*n*(5*n-3).

Offset 0, canonical program `A153786.P10964187700300092121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153786 (n : ℕ) : ℤ :=
  A153786.P10964187700300092121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154570.P14382788854987615955

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=-4`
-/

namespace A154570.P14382788854987615955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, -4] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A154570.P14382788854987615955

noncomputable section

/-- A154570: The main diagonal of the successive differences of A154127.

Offset 0, canonical program `A154570.P14382788854987615955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154570 (n : ℕ) : ℤ :=
  A154570.P14382788854987615955.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154955.P16771413323250532122

`round(cos(4)^n)`
-/

namespace A154955.P16771413323250532122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)

end

end A154955.P16771413323250532122

noncomputable section

/-- A154955: a(1) = 1, a(2) = -1, followed by 0, 0, 0, ... .

Offset 1, canonical program `A154955.P16771413323250532122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154955 (n : ℕ) : ℤ :=
  A154955.P16771413323250532122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155014.P11135767582627579295

`floor(sqrt(n^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A155014.P11135767582627579295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (n ^ 7)

end

end A155014.P11135767582627579295

noncomputable section

/-- A155014: a(n) = floor(sqrt(n^7)).

Offset 0, canonical program `A155014.P11135767582627579295`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n^7))` (program `A155014.P11135767582627579295`, by `A155014.P11135767582627579295.correct`). Lean does not check the parsing of the name. -/
def A155014 (n : ℕ) : ℤ :=
  (A155014.P11135767582627579295.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(n^7))` (program `A155014.P11135767582627579295`, by `A155014.P11135767582627579295.correct`). Lean does not check the parsing of the name. -/
def A155014.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A155212.P18289356943293586603

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=7, a(2)=13`
-/

namespace A155212.P18289356943293586603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 13] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A155212.P18289356943293586603

noncomputable section

/-- A155212: a(n) = (n^2 + 9*n + 4)/2.

Offset 0, canonical program `A155212.P18289356943293586603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155212 (n : ℕ) : ℤ :=
  A155212.P18289356943293586603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A155212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156037.P5502727147183123732

`p?[a(n-2)+3]-1` with `a(0)=2, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A156037.P5502727147183123732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A156037.P5502727147183123732

noncomputable section

/-- A156037: Largest nonprime < n-th prime.

Offset 1, canonical program `A156037.P5502727147183123732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156037 (n : ℕ) : ℤ :=
  A156037.P5502727147183123732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156253.P8118062655165912383

`a(n-gcd(2, a(a(n-2))))+1` with `a(0)=1, a(1)=2`
-/

namespace A156253.P8118062655165912383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - Nat.gcd 2 (a (a (n - 2)))) + 1

end

end A156253.P8118062655165912383

noncomputable section

/-- A156253: Least k such that A054353(k) >= n.

Offset 1, canonical program `A156253.P8118062655165912383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156253 (n : ℕ) : ℤ :=
  (A156253.P8118062655165912383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156277.P16861373314057615380

`(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%3`
-/

namespace A156277.P16861373314057615380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))) 3

end

end A156277.P16861373314057615380

noncomputable section

/-- A156277: Dirichlet inverse of A011655, characteristic function of numbers that are not multiples of 3; Numbers appearing at every third row in the third column of A156241.

Offset 1, canonical program `A156277.P16861373314057615380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156277 (n : ℕ) : ℤ :=
  A156277.P16861373314057615380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157532.P12289797534039375947

`3-floor(acot(n))`
-/

namespace A157532.P12289797534039375947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A157532.P12289797534039375947

noncomputable section

/-- A157532: a(1) = 2; for n > 1, a(n) = 3.

Offset 1, canonical program `A157532.P12289797534039375947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157532 (n : ℕ) : ℤ :=
  A157532.P12289797534039375947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157658.P9261385800012601708

`round(-∏{p}[n+1, -#]/(n+3))`
-/

namespace A157658.P9261385800012601708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 3 : ℚ)))

end

end A157658.P9261385800012601708

noncomputable section

/-- A157658: a(1) = 0, a(n) = -mu(n) for n >= 2.

Offset 1, canonical program `A157658.P9261385800012601708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157658 (n : ℕ) : ℤ :=
  A157658.P9261385800012601708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157725.P16070813535678231770

`a(n-2)+a(n-1)-2` with `a(0)=2, a(1)=3`
-/

namespace A157725.P16070813535678231770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + a (n - 1) - 2

end

end A157725.P16070813535678231770

noncomputable section

/-- A157725: a(n) = Fibonacci(n) + 2.

Offset 0, canonical program `A157725.P16070813535678231770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157725 (n : ℕ) : ℤ :=
  A157725.P16070813535678231770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157726.P9748439790048040918

`a(n-2)+a(n-1)-3` with `a(0)=3, a(1)=4`
-/

namespace A157726.P9748439790048040918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + a (n - 1) - 3

end

end A157726.P9748439790048040918

noncomputable section

/-- A157726: a(n) = Fibonacci(n) + 3.

Offset 0, canonical program `A157726.P9748439790048040918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157726 (n : ℕ) : ℤ :=
  A157726.P9748439790048040918.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157727.P16938104516424481626

`a(n-2)+a(n-1)-4` with `a(0)=4, a(1)=5`
-/

namespace A157727.P16938104516424481626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 2) + a (n - 1) - 4

end

end A157727.P16938104516424481626

noncomputable section

/-- A157727: a(n) = Fibonacci(n) + 4.

Offset 0, canonical program `A157727.P16938104516424481626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157727 (n : ℕ) : ℤ :=
  A157727.P16938104516424481626.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157823.P16930194432974958498

`2*a(n-1)` with `a(0)=-5, a(1)=-1`
-/

namespace A157823.P16930194432974958498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-5, -1] fun n a =>
  2 * a (n - 1)

end

end A157823.P16930194432974958498

noncomputable section

/-- A157823: a(n) = A156591(n) + A156591(n+1).

Offset 0, canonical program `A157823.P16930194432974958498`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157823 (n : ℕ) : ℤ :=
  A157823.P16930194432974958498.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A157823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A157928.P11639971120062672373

`floor(atan(n))`
-/

namespace A157928.P11639971120062672373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋

end

end A157928.P11639971120062672373

noncomputable section

/-- A157928: a(n) = 0 if n < 2, = 1 otherwise.

Offset 0, canonical program `A157928.P11639971120062672373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157928 (n : ℕ) : ℤ :=
  A157928.P11639971120062672373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158364.P9795848080856613032

`∑[Δ[(23*n)²]-2]`
-/

namespace A158364.P9795848080856613032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (23 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158364.P9795848080856613032

noncomputable section

/-- A158364: a(n) = 529*n^2 - 2*n.

Offset 1, canonical program `A158364.P9795848080856613032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158364 (n : ℕ) : ℤ :=
  A158364.P9795848080856613032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158388.P7320455639458137227

`round(cos(acot(n)²))`
-/

namespace A158388.P7320455639458137227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (SequenceMachineLib.acot (n : ℝ) ^ 2))

end

end A158388.P7320455639458137227

noncomputable section

/-- A158388: -1 followed by infinitely many 1's.

Offset 0, canonical program `A158388.P7320455639458137227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158388 (n : ℕ) : ℤ :=
  A158388.P7320455639458137227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158416.P7125527701326166324

`ceil(C(or(1, n), n)/2)`
-/

namespace A158416.P7125527701326166324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

end

end A158416.P7125527701326166324

noncomputable section

/-- A158416: Expansion of g.f. (1+x-x^3)/(1-x^2)^2.

Offset 0, canonical program `A158416.P7125527701326166324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158416 (n : ℕ) : ℤ :=
  A158416.P7125527701326166324.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158780.P14450464506551947306

`2*a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A158780.P14450464506551947306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 * a (n - 2)

end

end A158780.P14450464506551947306

noncomputable section

/-- A158780: a(2n) = A131577(n), a(2n+1) = A011782(n).

Offset 0, canonical program `A158780.P14450464506551947306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A158780 (n : ℕ) : ℤ :=
  (A158780.P14450464506551947306.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A158780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159075.P2143252049747790800

`-char[1]`
-/

namespace A159075.P2143252049747790800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A159075.P2143252049747790800

noncomputable section

/-- A159075: a(1) = -1, otherwise a(n) = 0.

Offset 0, canonical program `A159075.P2143252049747790800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159075 (n : ℕ) : ℤ :=
  A159075.P2143252049747790800.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160384.P15664302299430304392

`a(floor(n/3))+n²%3` with `a(0)=0`
-/

namespace A160384.P15664302299430304392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + n ^ 2 % 3

end

end A160384.P15664302299430304392

noncomputable section

/-- A160384: Number of nonzero digits in the base-3 representation of n.

Offset 0, canonical program `A160384.P15664302299430304392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160384 (n : ℕ) : ℤ :=
  (A160384.P15664302299430304392.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160457.P13231799295759563819

`n²-2*n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160457.P13231799295759563819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (2 * n : ℤ) + 2

end

end A160457.P13231799295759563819

noncomputable section

/-- A160457: a(n) = n^2 - 2*n + 2.

Offset 0, canonical program `A160457.P13231799295759563819`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-2*n+2` (program `A160457.P13231799295759563819`, by `A160457.P13231799295759563819.correct`). Lean does not check the parsing of the name. -/
def A160457 (n : ℕ) : ℤ :=
  A160457.P13231799295759563819.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-2*n+2` (program `A160457.P13231799295759563819`, by `A160457.P13231799295759563819.correct`). Lean does not check the parsing of the name. -/
def A160457.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A160749.P14653260408238183573

`a(n-1)+11*n+4` with `a(0)=5`
-/

namespace A160749.P14653260408238183573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 11 * n + 4

end

end A160749.P14653260408238183573

noncomputable section

/-- A160749: a(n) = (11*n^2 + 19*n + 10)/2.

Offset 0, canonical program `A160749.P14653260408238183573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160749 (n : ℕ) : ℤ :=
  (A160749.P14653260408238183573.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160942.P9572384472061468384

`(n+1)*∑{digits}[n, #]`
-/

namespace A160942.P9572384472061468384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A160942.P9572384472061468384

noncomputable section

/-- A160942: a(n)= n * digital sum(n-1).

Offset 1, canonical program `A160942.P9572384472061468384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160942 (n : ℕ) : ℤ :=
  (A160942.P9572384472061468384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161680.P17206074215489759881

`C(n, 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161680.P17206074215489759881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

end

end A161680.P17206074215489759881

noncomputable section

/-- A161680: a(n) = binomial(n,2): number of size-2 subsets of {0,1,...,n} that contain no consecutive integers.

Offset 0, canonical program `A161680.P17206074215489759881`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 2)` (program `A161680.P17206074215489759881`, by `A161680.P17206074215489759881.correct`). Lean does not check the parsing of the name. -/
def A161680 (n : ℕ) : ℤ :=
  (A161680.P17206074215489759881.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 2)` (program `A161680.P17206074215489759881`, by `A161680.P17206074215489759881.correct`). Lean does not check the parsing of the name. -/
def A161680.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A162263.P9276387920888823342

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=9, a(1)=29, a(2)=66, a(3)=126`
-/

namespace A162263.P9276387920888823342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 29, 66, 126] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A162263.P9276387920888823342

noncomputable section

/-- A162263: a(n) = (2*n^3 + 5*n^2 + 11*n)/2.

Offset 1, canonical program `A162263.P9276387920888823342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162263 (n : ℕ) : ℤ :=
  A162263.P9276387920888823342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162296.P7435316520163346199

`∑{d}[n+1, #]-∏{p}[n+1, #+1]`
-/

namespace A162296.P7435316520163346199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℤ)

end

end A162296.P7435316520163346199

noncomputable section

/-- A162296: Sum of divisors of n that have a square factor.

Offset 1, canonical program `A162296.P7435316520163346199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162296 (n : ℕ) : ℤ :=
  A162296.P7435316520163346199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162395.P11335033700857061569

`(n+1)²*(-1)^n`
-/

namespace A162395.P11335033700857061569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (-1) ^ n

end

end A162395.P11335033700857061569

noncomputable section

/-- A162395: a(n) = -(-1)^n * n^2.

Offset 1, canonical program `A162395.P11335033700857061569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162395 (n : ℕ) : ℤ :=
  A162395.P11335033700857061569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163227.P1385844630762421150

`2*a(n-2)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=4`
-/

namespace A163227.P1385844630762421150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 4] fun n a =>
  2 * a (n - 2) - a (n - 6)

end

end A163227.P1385844630762421150

noncomputable section

/-- A163227: Fibonacci-accumulation sequence.

Offset 1, canonical program `A163227.P1385844630762421150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163227 (n : ℕ) : ℤ :=
  A163227.P1385844630762421150.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A164001.P3609606338369027636

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A164001.P3609606338369027636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 2) + a (n - 3)

end

end A164001.P3609606338369027636

noncomputable section

/-- A164001: Spiral of triangles around a hexagon.

Offset 1, canonical program `A164001.P3609606338369027636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164001 (n : ℕ) : ℤ :=
  (A164001.P3609606338369027636.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A164386.P1430727638017200738

`floor(2*n+1-(1-n)²/a(n-1))` with `a(0)=1`
-/

namespace A164386.P1430727638017200738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * n + 1 : ℚ) - ((1 - (n : ℤ)) ^ 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A164386.P1430727638017200738

noncomputable section

/-- A164386: Numbers which are not 1 larger than a nonzero square.

Offset 1, canonical program `A164386.P1430727638017200738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164386 (n : ℕ) : ℤ :=
  A164386.P1430727638017200738.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164514.P14123397766704682504

`2*n-floor(n*n/(a(n-1)+2))` with `a(0)=1`
-/

namespace A164514.P14123397766704682504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - ⌊(n : ℚ) * ((n : ℚ) / (a (n - 1) + 2 : ℚ))⌋

end

end A164514.P14123397766704682504

noncomputable section

/-- A164514: 1 followed by numbers that are not squares.

Offset 1, canonical program `A164514.P14123397766704682504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164514 (n : ℕ) : ℤ :=
  A164514.P14123397766704682504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164897.P16464991710066611624

`4*n*(n+1)+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A164897.P16464991710066611624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (n + 1)) + 3

end

end A164897.P16464991710066611624

noncomputable section

/-- A164897: a(n) = 4*n*(n+1) + 3.

Offset 0, canonical program `A164897.P16464991710066611624`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n+1)+3` (program `A164897.P16464991710066611624`, by `A164897.P16464991710066611624.correct`). Lean does not check the parsing of the name. -/
def A164897 (n : ℕ) : ℤ :=
  (A164897.P16464991710066611624.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(n+1)+3` (program `A164897.P16464991710066611624`, by `A164897.P16464991710066611624.correct`). Lean does not check the parsing of the name. -/
def A164897.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A165157.P4182987027322002924

`2*a(n-2)-a(n-4)+1` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A165157.P4182987027322002924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  2 * a (n - 2) - a (n - 4) + 1

end

end A165157.P4182987027322002924

noncomputable section

/-- A165157: Zero followed by partial sums of A133622.

Offset 0, canonical program `A165157.P4182987027322002924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165157 (n : ℕ) : ℤ :=
  A165157.P4182987027322002924.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165190.P6990301022694349207

`floor((n+4)/4)-floor((n+4)/5)`
-/

namespace A165190.P6990301022694349207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 4 : ℚ) / 4⌋ - ⌊(n + 4 : ℚ) / 5⌋

end

end A165190.P6990301022694349207

noncomputable section

/-- A165190: G.f.: 1/((1-x^4)*(1-x^5)).

Offset 0, canonical program `A165190.P6990301022694349207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165190 (n : ℕ) : ℤ :=
  A165190.P6990301022694349207.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165326.P7177893560965415136

`-a(n-1)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165326.P7177893560965415136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -a (n - 1)

end

end A165326.P7177893560965415136

noncomputable section

/-- A165326: a(0)=a(1)=1, a(n) = -a(n-1) for n > 1.

Offset 0, canonical program `A165326.P7177893560965415136`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)` (program `A165326.P7177893560965415136`, by `A165326.P7177893560965415136.correct`). Lean does not check the parsing of the name. -/
def A165326 (n : ℕ) : ℤ :=
  A165326.P7177893560965415136.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)` (program `A165326.P7177893560965415136`, by `A165326.P7177893560965415136.correct`). Lean does not check the parsing of the name. -/
def A165326.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A165747.P841094423596546419

`1-2*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165747.P841094423596546419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

end

end A165747.P841094423596546419

noncomputable section

/-- A165747: a(n) = 1-2n.

Offset 0, canonical program `A165747.P841094423596546419`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-2*n` (program `A165747.P841094423596546419`, by `A165747.P841094423596546419.correct`). Lean does not check the parsing of the name. -/
def A165747 (n : ℕ) : ℤ :=
  A165747.P841094423596546419.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-2*n` (program `A165747.P841094423596546419`, by `A165747.P841094423596546419.correct`). Lean does not check the parsing of the name. -/
def A165747.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A165998.P13821127794823257504

`(2-(-1)^n)*(n+1)`
-/

namespace A165998.P13821127794823257504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (-1) ^ n) * (n + 1 : ℤ)

end

end A165998.P13821127794823257504

noncomputable section

/-- A165998: Denominators of Taylor series expansion of 1/(3*x)*log((1+x)/(1-x)^2).

Offset 0, canonical program `A165998.P13821127794823257504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165998 (n : ℕ) : ℤ :=
  A165998.P13821127794823257504.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166136.P15797118875398401351

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=9, a(1)=12, a(2)=16`
-/

namespace A166136.P15797118875398401351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 12, 16] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A166136.P15797118875398401351

noncomputable section

/-- A166136: a(n) = n*(n+3)/2 + 7.

Offset 1, canonical program `A166136.P15797118875398401351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166136 (n : ℕ) : ℤ :=
  A166136.P15797118875398401351.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166148.P4841313038606724530

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=19, a(2)=46`
-/

namespace A166148.P4841313038606724530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19, 46] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A166148.P4841313038606724530

noncomputable section

/-- A166148: a(n) = (9*n^2 + 9*n - 16)/2.

Offset 1, canonical program `A166148.P4841313038606724530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166148 (n : ℕ) : ℤ :=
  A166148.P4841313038606724530.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166444.P4594645585699924578

`round(2^(n-2))`
-/

namespace A166444.P4594645585699924578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A166444.P4594645585699924578

noncomputable section

/-- A166444: a(0) = 0, a(1) = 1 and for n > 1, a(n) = sum of all previous terms.

Offset 0, canonical program `A166444.P4594645585699924578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A166444 (n : ℕ) : ℤ :=
  A166444.P4594645585699924578.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A166444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166486.P13501783531280266850

`ceil(n/4)-floor(n/4)`
-/

namespace A166486.P13501783531280266850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 4⌉ - ⌊(n : ℚ) / 4⌋

end

end A166486.P13501783531280266850

noncomputable section

/-- A166486: Periodic sequence [0,1,1,1] of length 4; Characteristic function of numbers that are not multiples of 4.

Offset 0, canonical program `A166486.P13501783531280266850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166486 (n : ℕ) : ℤ :=
  A166486.P13501783531280266850.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A166486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A166808.P9614524992927031431

`C(n+6, 5)-2`
-/

namespace A166808.P9614524992927031431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 5 : ℤ) - 2

end

end A166808.P9614524992927031431

noncomputable section

/-- A166808: Number of n X 5 1..2 arrays containing at least one of each value, all equal values connected, rows considered as a single number in nondecreasing order, and columns considered as a single number in nondecreasing order.

Offset 1, canonical program `A166808.P9614524992927031431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166808 (n : ℕ) : ℤ :=
  A166808.P9614524992927031431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167167.P16099939199337714808

`a(n-1)+2*a(n-2)` with `a(0)=-1, a(1)=1, a(2)=1`
-/

namespace A167167.P16099939199337714808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A167167.P16099939199337714808

noncomputable section

/-- A167167: A001045 with a(0) replaced by -1.

Offset 0, canonical program `A167167.P16099939199337714808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A167167 (n : ℕ) : ℤ :=
  A167167.P16099939199337714808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A167167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167487.P7140322562645652026

`n*(n+3)/2+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167487.P7140322562645652026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 3 : ℚ) / 2) + 8

end

end A167487.P7140322562645652026

noncomputable section

/-- A167487: a(n) = n*(n + 3)/2 + 8.

Offset 0, canonical program `A167487.P7140322562645652026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167487.P7140322562645652026.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167499.P11100871142960963709

`n*(n+3)/2+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167499.P11100871142960963709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 3 : ℚ) / 2) + 6

end

end A167499.P11100871142960963709

noncomputable section

/-- A167499: a(n) = n*(n+3)/2 + 6.

Offset 0, canonical program `A167499.P11100871142960963709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167499 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167499.P11100871142960963709.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167614.P5185890408416856575

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=6, a(1)=9, a(2)=13`
-/

namespace A167614.P5185890408416856575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9, 13] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A167614.P5185890408416856575

noncomputable section

/-- A167614: a(n) = (n^2 + 3*n + 8)/2.

Offset 1, canonical program `A167614.P5185890408416856575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167614 (n : ℕ) : ℤ :=
  A167614.P5185890408416856575.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A167614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A167762.P16084922370431159347

`2*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167762.P16084922370431159347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 6 * a (n - 3)

end

end A167762.P16084922370431159347

noncomputable section

/-- A167762: a(n) = 2*a(n-1)+3*a(n-2)-6*a(n-3) starting a(0)=a(1)=0, a(2)=1.

Offset 0, canonical program `A167762.P16084922370431159347`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)-6*a(n-3)` (program `A167762.P16084922370431159347`, by `A167762.P16084922370431159347.correct`). Lean does not check the parsing of the name. -/
def A167762 (n : ℕ) : ℤ :=
  A167762.P16084922370431159347.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)-6*a(n-3)` (program `A167762.P16084922370431159347`, by `A167762.P16084922370431159347.correct`). Lean does not check the parsing of the name. -/
def A167762.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A168081.P16359451533663323532

`xor(2*a(n-1), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A168081.P16359451533663323532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor (2 * a (n - 1)) (a (n - 2))

end

end A168081.P16359451533663323532

noncomputable section

/-- A168081: Lucas sequence U_n(x,1) over the field GF(2)[x].

Offset 0, canonical program `A168081.P16359451533663323532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A168081 (n : ℕ) : ℤ :=
  (A168081.P16359451533663323532.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A168081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168101.P8391321715091704467

`floor(5/acot(n))`
-/

namespace A168101.P8391321715091704467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A168101.P8391321715091704467

noncomputable section

/-- A168101: a(n) = sum of natural numbers m such that n - 2 <= m <= n + 2.

Offset 0, canonical program `A168101.P8391321715091704467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168101 (n : ℕ) : ℤ :=
  A168101.P8391321715091704467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168237.P12346762420407185560

`3*floor(n/2)`
-/

namespace A168237.P12346762420407185560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 2⌋

end

end A168237.P12346762420407185560

noncomputable section

/-- A168237: a(n) = (6*n + 3*(-1)^n - 3)/4.

Offset 0, canonical program `A168237.P12346762420407185560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168237 (n : ℕ) : ℤ :=
  A168237.P12346762420407185560.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168610.P14704023943450790163

`3^n+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168610.P14704023943450790163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 5

end

end A168610.P14704023943450790163

noncomputable section

/-- A168610: a(n) = 3^n + 5.

Offset 0, canonical program `A168610.P14704023943450790163`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5` (program `A168610.P14704023943450790163`, by `A168610.P14704023943450790163.correct`). Lean does not check the parsing of the name. -/
def A168610 (n : ℕ) : ℤ :=
  (A168610.P14704023943450790163.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+5` (program `A168610.P14704023943450790163`, by `A168610.P14704023943450790163.correct`). Lean does not check the parsing of the name. -/
def A168610.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A169585.P10685189677974552084

`C(3, n²)`
-/

namespace A169585.P10685189677974552084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n ^ 2)

end

end A169585.P10685189677974552084

noncomputable section

/-- A169585: A000004 preceded by 1, 3.

Offset 0, canonical program `A169585.P10685189677974552084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169585 (n : ℕ) : ℤ :=
  (A169585.P10685189677974552084.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169609.P8986089567113568057

`3/gcd(n, 3)`
-/

namespace A169609.P8986089567113568057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (Nat.gcd n 3 : ℚ)

end

end A169609.P8986089567113568057

noncomputable section

/-- A169609: Period 3: repeat [1, 3, 3].

Offset 0, canonical program `A169609.P8986089567113568057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A169609.P8986089567113568057.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A169986.P10622536737824008834

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A169986.P10622536737824008834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 7] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A169986.P10622536737824008834

noncomputable section

/-- A169986: Ceiling(phi^n) where phi = (1+sqrt(5))/2.

Offset 0, canonical program `A169986.P10622536737824008834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169986 (n : ℕ) : ℤ :=
  A169986.P10622536737824008834.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A170819.P7918731460294384057

`∏{p}[n+1, gcd(#, or(3, #))]`
-/

namespace A170819.P7918731460294384057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd p (Nat.lor 3 p)

end

end A170819.P7918731460294384057

noncomputable section

/-- A170819: a(n) = product of distinct primes of the form 4k-1 that divide n.

Offset 1, canonical program `A170819.P7918731460294384057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170819 (n : ℕ) : ℤ :=
  (A170819.P7918731460294384057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170834.P7707564578098555318

`5*a(n-2)+5*a(n-3)-25*a(n-5)` with `a(0)=5, a(1)=5, a(2)=25, a(3)=25, a(4)=145`
-/

namespace A170834.P7707564578098555318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 5, 25, 25, 145] fun n a =>
  5 * a (n - 2) + 5 * a (n - 3) - 25 * a (n - 5)

end

end A170834.P7707564578098555318

noncomputable section

/-- A170834: a(n) = 5^(floor(n/2))+5^(floor(n/2)-1)-5^(floor((n-1)/3)).

Offset 2, canonical program `A170834.P7707564578098555318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A170834 (n : ℕ) : ℤ :=
  A170834.P7707564578098555318.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A170834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171386.P12260905367448190027

`C(C(3, n), 3)`
-/

namespace A171386.P12260905367448190027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 3 n) 3

end

end A171386.P12260905367448190027

noncomputable section

/-- A171386: The characteristic function of 2 and 3: 1 if n is prime such that either n-1 or n+1 is prime, else 0.

Offset 1, canonical program `A171386.P12260905367448190027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171386 (n : ℕ) : ℤ :=
  (A171386.P12260905367448190027.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171477.P14400577644854713326

`6*a(n-1)-8*a(n-2)+1` with `a(0)=1, a(1)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171477.P14400577644854713326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2) + 1

end

end A171477.P14400577644854713326

noncomputable section

/-- A171477: a(n) = 6*a(n-1) - 8*a(n-2) + 1 for n > 1; a(0) = 1, a(1) = 7.

Offset 0, canonical program `A171477.P14400577644854713326`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)+1` (program `A171477.P14400577644854713326`, by `A171477.P14400577644854713326.correct`). Lean does not check the parsing of the name. -/
def A171477 (n : ℕ) : ℤ :=
  A171477.P14400577644854713326.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-8*a(n-2)+1` (program `A171477.P14400577644854713326`, by `A171477.P14400577644854713326.correct`). Lean does not check the parsing of the name. -/
def A171477.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A172273.P8057750606788811275

`floor(n*(sqrt(11)-sqrt(2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172273.P8057750606788811275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.sqrt (11 : ℝ) - Real.sqrt (2 : ℝ))⌋

end

end A172273.P8057750606788811275

noncomputable section

/-- A172273: a(n) = floor(n*(sqrt(11) - sqrt(2))).

Offset 0, canonical program `A172273.P8057750606788811275`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)-sqrt(2)))` (program `A172273.P8057750606788811275`, by `A172273.P8057750606788811275.correct`). Lean does not check the parsing of the name. -/
def A172273 (n : ℕ) : ℤ :=
  A172273.P8057750606788811275.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)-sqrt(2)))` (program `A172273.P8057750606788811275`, by `A172273.P8057750606788811275.correct`). Lean does not check the parsing of the name. -/
def A172273.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A172275.P16849960123702967517

`floor(n*(sqrt(13)-sqrt(7)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172275.P16849960123702967517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.sqrt (13 : ℝ) - Real.sqrt (7 : ℝ))⌋

end

end A172275.P16849960123702967517

noncomputable section

/-- A172275: a(n) = floor(n*(sqrt(13)-sqrt(7))).

Offset 0, canonical program `A172275.P16849960123702967517`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)-sqrt(7)))` (program `A172275.P16849960123702967517`, by `A172275.P16849960123702967517.correct`). Lean does not check the parsing of the name. -/
def A172275 (n : ℕ) : ℤ :=
  A172275.P16849960123702967517.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)-sqrt(7)))` (program `A172275.P16849960123702967517`, by `A172275.P16849960123702967517.correct`). Lean does not check the parsing of the name. -/
def A172275.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A172471.P3873972067505195853

`floor(sqrt(2*n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172471.P3873972067505195853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

end

end A172471.P3873972067505195853

noncomputable section

/-- A172471: a(n) = floor(sqrt(2*n)).

Offset 0, canonical program `A172471.P3873972067505195853`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*n))` (program `A172471.P3873972067505195853`, by `A172471.P3873972067505195853.correct`). Lean does not check the parsing of the name. -/
def A172471 (n : ℕ) : ℤ :=
  (A172471.P3873972067505195853.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*n))` (program `A172471.P3873972067505195853`, by `A172471.P3873972067505195853.correct`). Lean does not check the parsing of the name. -/
def A172471.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A173184.P6843160355512957797

`n*a(n-1)-(n-1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A173184.P6843160355512957797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℤ) * a (n - 1) - ((n : ℤ) - 1) * a (n - 3)

end

end A173184.P6843160355512957797

noncomputable section

/-- A173184: Partial sums of A000166.

Offset 0, canonical program `A173184.P6843160355512957797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173184 (n : ℕ) : ℤ :=
  A173184.P6843160355512957797.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173196.P2423826778333667374

`floor((2*n^3+3*n²-2*n)/24)`
-/

namespace A173196.P2423826778333667374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n ^ 3 + 3 * n ^ 2 : ℤ) - (2 * n : ℤ) : ℚ) / 24⌋

end

end A173196.P2423826778333667374

noncomputable section

/-- A173196: Partial sums of A002620.

Offset 0, canonical program `A173196.P2423826778333667374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173196 (n : ℕ) : ℤ :=
  A173196.P2423826778333667374.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173690.P5728948565959556143

`round((2*n^3+3*n²+n)/30)`
-/

namespace A173690.P5728948565959556143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n ^ 3 + 3 * n ^ 2 + n : ℚ) / 30)

end

end A173690.P5728948565959556143

noncomputable section

/-- A173690: Partial sums of round(n^2/5).

Offset 0, canonical program `A173690.P5728948565959556143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173690 (n : ℕ) : ℤ :=
  A173690.P5728948565959556143.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A173905.P17556363632361322104

`comp[p?[2*n+5]]`
-/

namespace A173905.P17556363632361322104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A173905.P17556363632361322104

noncomputable section

/-- A173905: {2,3} and the nonprimes A141468.

Offset 1, canonical program `A173905.P17556363632361322104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173905 (n : ℕ) : ℤ :=
  (A173905.P17556363632361322104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174191.P238847641268888533

`2*a(n-1)+a(n-2)-2` with `a(0)=1, a(1)=2`
-/

namespace A174191.P238847641268888533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2

end

end A174191.P238847641268888533

noncomputable section

/-- A174191: Expansion of (1+x)*(2*x-1)/((1-x)*(x^2+2*x-1)).

Offset 0, canonical program `A174191.P238847641268888533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174191 (n : ℕ) : ℤ :=
  A174191.P238847641268888533.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174299.P18364569376149999674

`floor(n!/exp(n))`
-/

namespace A174299.P18364569376149999674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial n : ℝ) / Real.exp (n : ℝ)⌋

end

end A174299.P18364569376149999674

noncomputable section

/-- A174299: a(n) = floor(n!*exp(-n)).

Offset 0, canonical program `A174299.P18364569376149999674`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174299 (n : ℕ) : ℤ :=
  A174299.P18364569376149999674.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174300.P9251800451030879861

`ceil(n!*exp(-n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174300.P9251800451030879861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) * Real.exp (-(n : ℤ) : ℝ)⌉

end

end A174300.P9251800451030879861

noncomputable section

/-- A174300: a(n) = ceiling(n!*exp(-n)).

Offset 0, canonical program `A174300.P9251800451030879861`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n!*exp(-n))` (program `A174300.P9251800451030879861`, by `A174300.P9251800451030879861.correct`). Lean does not check the parsing of the name. -/
def A174300 (n : ℕ) : ℤ :=
  A174300.P9251800451030879861.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n!*exp(-n))` (program `A174300.P9251800451030879861`, by `A174300.P9251800451030879861.correct`). Lean does not check the parsing of the name. -/
def A174300.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A174318.P5722969084882067827

`ceil(n!/e)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174318.P5722969084882067827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℝ) / Real.exp 1⌉

end

end A174318.P5722969084882067827

noncomputable section

/-- A174318: a(n) = ceiling(n!/e) with e = A001113 = exp(1).

Offset 0, canonical program `A174318.P5722969084882067827`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n!/e)` (program `A174318.P5722969084882067827`, by `A174318.P5722969084882067827.correct`). Lean does not check the parsing of the name. -/
def A174318 (n : ℕ) : ℤ :=
  A174318.P5722969084882067827.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n!/e)` (program `A174318.P5722969084882067827`, by `A174318.P5722969084882067827.correct`). Lean does not check the parsing of the name. -/
def A174318.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A174500.P1295292663938239080

`5*a(n-2)-5*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=12, a(4)=1, a(5)=50`
-/

namespace A174500.P1295292663938239080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, 12, 1, 50] fun n a =>
  5 * a (n - 2) - 5 * a (n - 4) + a (n - 6)

end

end A174500.P1295292663938239080

noncomputable section

/-- A174500: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A003500(n)) ), where A003500(n) = (2+sqrt(3))^n + (2-sqrt(3))^n.

Offset 1, canonical program `A174500.P1295292663938239080`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174500 (n : ℕ) : ℤ :=
  A174500.P1295292663938239080.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174709.P9945008165247424543

`floor((n-2)²/12)`
-/

namespace A174709.P9945008165247424543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 2) ^ 2 : ℚ) / 12⌋

end

end A174709.P9945008165247424543

noncomputable section

/-- A174709: Partial sums of floor(n/6).

Offset 0, canonical program `A174709.P9945008165247424543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174709 (n : ℕ) : ℤ :=
  A174709.P9945008165247424543.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175629.P9242778360532826969

`floor(tan((n^3)%7))`
-/

namespace A175629.P9242778360532826969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((n ^ 3 % 7 : ℕ) : ℝ)⌋

end

end A175629.P9242778360532826969

noncomputable section

/-- A175629: Legendre symbol (n,7).

Offset 0, canonical program `A175629.P9242778360532826969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175629 (n : ℕ) : ℤ :=
  A175629.P9242778360532826969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175826.P8226326510971726201

`a(n-8)+(n+1)*(n-8)+30` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=6, a(5)=10, a(6)=15, a(7)=22`
-/

namespace A175826.P8226326510971726201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 6, 10, 15, 22] fun n a =>
  a (n - 8) + (n + 1 : ℤ) * ((n : ℤ) - 8) + 30

end

end A175826.P8226326510971726201

noncomputable section

/-- A175826: Partial sums of ceiling(n^2/8).

Offset 0, canonical program `A175826.P8226326510971726201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175826 (n : ℕ) : ℤ :=
  A175826.P8226326510971726201.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176040.P15364412585203840205

`a(n-2)` with `a(0)=3, a(1)=1`
-/

namespace A176040.P15364412585203840205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n a =>
  a (n - 2)

end

end A176040.P15364412585203840205

noncomputable section

/-- A176040: Periodic sequence: repeat (3,1).

Offset 0, canonical program `A176040.P15364412585203840205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176040 (n : ℕ) : ℤ :=
  (A176040.P15364412585203840205.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176059.P3242393250982034900

`3-n%2`
-/

namespace A176059.P3242393250982034900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((n % 2 : ℕ) : ℤ)

end

end A176059.P3242393250982034900

noncomputable section

/-- A176059: Periodic sequence: Repeat 3, 2.

Offset 0, canonical program `A176059.P3242393250982034900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176059 (n : ℕ) : ℤ :=
  A176059.P3242393250982034900.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176563.P16707671445304833839

`a(n-4)` with `a(0)=1, a(1)=-3, a(2)=1, a(3)=1`
-/

namespace A176563.P16707671445304833839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, 1, 1] fun n a =>
  a (n - 4)

end

end A176563.P16707671445304833839

noncomputable section

/-- A176563: Period 4: repeat [1, -3, 1, 1].

Offset 0, canonical program `A176563.P16707671445304833839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176563 (n : ℕ) : ℤ :=
  A176563.P16707671445304833839.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A176776.P13247492135036740170

`2^n-n*(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176776.P13247492135036740170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n : ℤ) * ((n : ℤ) - 2)

end

end A176776.P13247492135036740170

noncomputable section

/-- A176776: a(n) = 2^n - n*(n-2).

Offset 0, canonical program `A176776.P13247492135036740170`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n-2)` (program `A176776.P13247492135036740170`, by `A176776.P13247492135036740170.correct`). Lean does not check the parsing of the name. -/
def A176776 (n : ℕ) : ℤ :=
  A176776.P13247492135036740170.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n-2)` (program `A176776.P13247492135036740170`, by `A176776.P13247492135036740170.correct`). Lean does not check the parsing of the name. -/
def A176776.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A176777.P641054745865325767

`2^n-n*(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176777.P641054745865325767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n : ℤ) * ((n : ℤ) - 3)

end

end A176777.P641054745865325767

noncomputable section

/-- A176777: a(n) = 2^n - n*(n-3).

Offset 0, canonical program `A176777.P641054745865325767`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n-3)` (program `A176777.P641054745865325767`, by `A176777.P641054745865325767.correct`). Lean does not check the parsing of the name. -/
def A176777 (n : ℕ) : ℤ :=
  A176777.P641054745865325767.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n-3)` (program `A176777.P641054745865325767`, by `A176777.P641054745865325767.correct`). Lean does not check the parsing of the name. -/
def A176777.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A176778.P5076845865671727231

`2^n-n*(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176778.P5076845865671727231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n * (n + 2) : ℤ)

end

end A176778.P5076845865671727231

noncomputable section

/-- A176778: a(n) = 2^n - n*(n+2).

Offset 0, canonical program `A176778.P5076845865671727231`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n+2)` (program `A176778.P5076845865671727231`, by `A176778.P5076845865671727231.correct`). Lean does not check the parsing of the name. -/
def A176778 (n : ℕ) : ℤ :=
  A176778.P5076845865671727231.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n*(n+2)` (program `A176778.P5076845865671727231`, by `A176778.P5076845865671727231.correct`). Lean does not check the parsing of the name. -/
def A176778.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A176981.P17221214247668455285

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A176981.P17221214247668455285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A176981.P17221214247668455285

noncomputable section

/-- A176981: Expansion of 2+(1-2*x)/(-1+2*x+x^2).

Offset 0, canonical program `A176981.P17221214247668455285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176981 (n : ℕ) : ℤ :=
  A176981.P17221214247668455285.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A176981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177002.P4250697414860805965

`a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=2`
-/

namespace A177002.P4250697414860805965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 2] fun n a =>
  a (n - 4)

end

end A177002.P4250697414860805965

noncomputable section

/-- A177002: Period 4: repeat [1, 2, 4, 2].

Offset 0, canonical program `A177002.P4250697414860805965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177002 (n : ℕ) : ℤ :=
  (A177002.P4250697414860805965.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177239.P8617157371886595213

`round(n*(n-2)*(2*n+7)/120)`
-/

namespace A177239.P8617157371886595213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - 2 : ℚ) * ((2 * n + 7 : ℚ) / 120)))

end

end A177239.P8617157371886595213

noncomputable section

/-- A177239: Partial sums of round(n^2/20).

Offset 0, canonical program `A177239.P8617157371886595213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177239 (n : ℕ) : ℤ :=
  A177239.P8617157371886595213.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177702.P3114234873330636102

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A177702.P3114234873330636102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3)

end

end A177702.P3114234873330636102

noncomputable section

/-- A177702: Period 3: repeat [1, 1, 2].

Offset 0, canonical program `A177702.P3114234873330636102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177702 (n : ℕ) : ℤ :=
  (A177702.P3114234873330636102.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177702.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178146.P13307118165504513090

`a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=0, a(7)=1, a(8)=1, a(9)=2`
-/

namespace A178146.P13307118165504513090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 2, 0, 1, 1, 2] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 7) - a (n - 8) + a (n - 10)

end

end A178146.P13307118165504513090

noncomputable section

/-- A178146: a(n) is the number of distinct prime factors <= 5 of n.

Offset 1, canonical program `A178146.P13307118165504513090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178146 (n : ℕ) : ℤ :=
  A178146.P13307118165504513090.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178208.P1243504105263405552

`C((n+1)², 3)`
-/

namespace A178208.P1243504105263405552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 3

end

end A178208.P1243504105263405552

noncomputable section

/-- A178208: Number of ways to choose three points in an (n X n)-grid (or geoplane).

Offset 1, canonical program `A178208.P1243504105263405552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178208 (n : ℕ) : ℤ :=
  (A178208.P1243504105263405552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178489.P4416703940732304591

`floor(n^(1/6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178489.P4416703940732304591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((1 : ℚ) / 6 : ℝ)⌋

end

end A178489.P4416703940732304591

noncomputable section

/-- A178489: a(n) = floor(n^(1/6)): integer part of sixth root of n.

Offset 0, canonical program `A178489.P4416703940732304591`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(1/6))` (program `A178489.P4416703940732304591`, by `A178489.P4416703940732304591.correct`). Lean does not check the parsing of the name. -/
def A178489 (n : ℕ) : ℤ :=
  A178489.P4416703940732304591.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(1/6))` (program `A178489.P4416703940732304591`, by `A178489.P4416703940732304591.correct`). Lean does not check the parsing of the name. -/
def A178489.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A178500.P10883386734819459730

`10*a(n-1)` with `a(0)=0, a(1)=10`
-/

namespace A178500.P10883386734819459730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n a =>
  10 * a (n - 1)

end

end A178500.P10883386734819459730

noncomputable section

/-- A178500: a(n) = 10^n * signum(n).

Offset 0, canonical program `A178500.P10883386734819459730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178500 (n : ℕ) : ℤ :=
  (A178500.P10883386734819459730.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A178501.P17615775985067343271

`10*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A178501.P17615775985067343271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * a (n - 1)

end

end A178501.P17615775985067343271

noncomputable section

/-- A178501: Zero followed by powers of ten.

Offset 0, canonical program `A178501.P17615775985067343271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178501 (n : ℕ) : ℤ :=
  (A178501.P17615775985067343271.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A178501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179095.P11027518095902956287

`∑[∑[∑[a(n-1)+11]]]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A179095.P11027518095902956287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7] fun n f3 =>
  f3 (n - 1) + 11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179095.P11027518095902956287

noncomputable section

/-- A179095: Rectified 5-cell numbers: the coefficient of x^{2n-2} in (1+x+x^2+ ... + x^{n-1})^5.

Offset 0, canonical program `A179095.P11027518095902956287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179095 (n : ℕ) : ℤ :=
  (A179095.P11027518095902956287.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179257.P8830550010667035621

`∑[abs(2-∑[C(n, 3)+1])]`
-/

namespace A179257.P8830550010667035621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179257.P8830550010667035621

noncomputable section

/-- A179257: Number of permutations of length n which avoid the patterns 321 and 1324.

Offset 0, canonical program `A179257.P8830550010667035621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179257 (n : ℕ) : ℤ :=
  A179257.P8830550010667035621.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179436.P14777368974970349778

`a(n-1)+9*(n+1)` with `a(0)=7`
-/

namespace A179436.P14777368974970349778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 9 * (n + 1)

end

end A179436.P14777368974970349778

noncomputable section

/-- A179436: a(n) = (3*n+7)*(3*n+2)/2.

Offset 0, canonical program `A179436.P14777368974970349778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179436 (n : ℕ) : ℤ :=
  (A179436.P14777368974970349778.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179610.P12923924821700583405

`3*a(n-1)+5*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=14`
-/

namespace A179610.P12923924821700583405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 14] fun n a =>
  3 * a (n - 1) + 5 * a (n - 2) - 4 * a (n - 3)

end

end A179610.P12923924821700583405

noncomputable section

/-- A179610: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: 1/(1-3*x-5*x^2+4*x^3).

Offset 0, canonical program `A179610.P12923924821700583405`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179610 (n : ℕ) : ℤ :=
  A179610.P12923924821700583405.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A179610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A179865.P10897765931777522491

`or(C(n, n²), ∑[n])`
-/

namespace A179865.P10897765931777522491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose n (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A179865.P10897765931777522491

noncomputable section

/-- A179865: Number of n-bit binary numbers containing one run of 0's.

Offset 1, canonical program `A179865.P10897765931777522491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179865 (n : ℕ) : ℤ :=
  (A179865.P10897765931777522491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180118.P3887788648583670609

`n*(n²+6*n+11)/3`
-/

namespace A180118.P3887788648583670609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n ^ 2 + 6 * n + 11 : ℚ) / 3)

end

end A180118.P3887788648583670609

noncomputable section

/-- A180118: a(n) = Sum_{k=1..n} (k+2)!/k! = Sum_{k=1..n} (k+2)*(k+1).

Offset 0, canonical program `A180118.P3887788648583670609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A180118.P3887788648583670609.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180447.P3440103669525281536

`floor((sqrt(24*n+1)+1)/6)`
-/

namespace A180447.P3440103669525281536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (24 * n + 1 : ℝ) + 1) / 6⌋

end

end A180447.P3440103669525281536

noncomputable section

/-- A180447: n appears 3n+1 times.

Offset 0, canonical program `A180447.P3440103669525281536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180447 (n : ℕ) : ℤ :=
  A180447.P3440103669525281536.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181120.P13386247125253931773

`round(n*(2*n²+3*n-6)/72)`
-/

namespace A181120.P13386247125253931773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (((2 * n ^ 2 + 3 * n : ℤ) - 6 : ℚ) / 72))

end

end A181120.P13386247125253931773

noncomputable section

/-- A181120: Partial sums of round(n^2/12) (A069905).

Offset 0, canonical program `A181120.P13386247125253931773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181120 (n : ℕ) : ℤ :=
  A181120.P13386247125253931773.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A181120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A181357.P14994543045474167825

`∑{digits}[a(n-1)+a(n-2), #²]` with `a(0)=1, a(1)=1`
-/

namespace A181357.P14994543045474167825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A181357.P14994543045474167825

noncomputable section

/-- A181357: Sum of squares of digits of Fibonacci(n).

Offset 1, canonical program `A181357.P14994543045474167825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A181357 (n : ℕ) : ℤ :=
  (A181357.P14994543045474167825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A181357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181797.P4181988022493717036

`(n+1)*∏{p}[n+1, #+1]`
-/

namespace A181797.P4181988022493717036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (p + 1))

end

end A181797.P4181988022493717036

noncomputable section

/-- A181797: a(n) = n multiplied by the sum of its squarefree divisors (A048250(n)).

Offset 1, canonical program `A181797.P4181988022493717036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181797 (n : ℕ) : ℤ :=
  (A181797.P4181988022493717036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181889.P16279081632209164270

`∑[(4*(n+1))²*∑[n²]]`
-/

namespace A181889.P16279081632209164270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1)) ^ 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A181889.P16279081632209164270

noncomputable section

/-- A181889: Bisection of A181888.

Offset 1, canonical program `A181889.P16279081632209164270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181889 (n : ℕ) : ℤ :=
  (A181889.P16279081632209164270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182097.P4652543691351148105

`a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A182097.P4652543691351148105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) + a (n - 3)

end

end A182097.P4652543691351148105

noncomputable section

/-- A182097: Expansion of 1/(1-x^2-x^3).

Offset 0, canonical program `A182097.P4652543691351148105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182097 (n : ℕ) : ℤ :=
  (A182097.P4652543691351148105.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182122.P7901447653555907979

`(3/n-1)*4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A182122.P7901447653555907979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 / (n : ℚ) - 1) * (4 * a (n - 2))

end

end A182122.P7901447653555907979

noncomputable section

/-- A182122: Expansion of exp( arcsinh( 2*x ) ).

Offset 0, canonical program `A182122.P7901447653555907979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A182122 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A182122.P7901447653555907979.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A182122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182386.P16571549731894921699

`1-n*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A182386.P16571549731894921699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - (n : ℤ) * a (n - 1)

end

end A182386.P16571549731894921699

noncomputable section

/-- A182386: a(0) = 1, a(n) = 1 - n * a(n-1).

Offset 0, canonical program `A182386.P16571549731894921699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182386 (n : ℕ) : ℤ :=
  A182386.P16571549731894921699.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182522.P14682687547002529594

`3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A182522.P14682687547002529594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  3 * a (n - 2)

end

end A182522.P14682687547002529594

noncomputable section

/-- A182522: a(0) = 1; thereafter a(2*n + 1) = 3^n, a(2*n + 2) = 2 * 3^n.

Offset 0, canonical program `A182522.P14682687547002529594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182522 (n : ℕ) : ℤ :=
  (A182522.P14682687547002529594.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A182531.P16043757185556303526

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=6, a(5)=9, a(6)=12`
-/

namespace A182531.P16043757185556303526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 6, 9, 12] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A182531.P16043757185556303526

noncomputable section

/-- A182531: Extremal graph numbers for a triangle with an edge off it.

Offset 1, canonical program `A182531.P16043757185556303526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182531 (n : ℕ) : ℤ :=
  A182531.P16043757185556303526.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A182531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183010.P1615208601139071033

`24*n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A183010.P1615208601139071033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n : ℤ) - 1

end

end A183010.P1615208601139071033

noncomputable section

/-- A183010: a(n) = 24*n - 1.

Offset 0, canonical program `A183010.P1615208601139071033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n-1` (program `A183010.P1615208601139071033`, by `A183010.P1615208601139071033.correct`). Lean does not check the parsing of the name. -/
def A183010 (n : ℕ) : ℤ :=
  A183010.P1615208601139071033.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n-1` (program `A183010.P1615208601139071033`, by `A183010.P1615208601139071033.correct`). Lean does not check the parsing of the name. -/
def A183010.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A184674.P5027464066318249469

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=10`
-/

namespace A184674.P5027464066318249469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7, 10] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A184674.P5027464066318249469

noncomputable section

/-- A184674: a(n) = n+floor((n/2-1/(2*n))^2); complement of A184675.

Offset 1, canonical program `A184674.P5027464066318249469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184674 (n : ℕ) : ℤ :=
  A184674.P5027464066318249469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A184674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A184744.P16604802667379157245

`∑[Δ[round(n/e)]+1]`
-/

namespace A184744.P16604802667379157245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.exp 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184744.P16604802667379157245

noncomputable section

/-- A184744: floor(nr+h), where r=1+1/e, h=1/2; complement of A184745.

Offset 1, canonical program `A184744.P16604802667379157245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184744 (n : ℕ) : ℤ :=
  A184744.P16604802667379157245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185115.P11194374675298673512

`a(5%n)` with `a(0)=1, a(1)=0`
-/

namespace A185115.P11194374675298673512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (5 % n)

end

end A185115.P11194374675298673512

noncomputable section

/-- A185115: Number of connected 2-regular simple graphs on n vertices with girth at least 5.

Offset 0, canonical program `A185115.P11194374675298673512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185115 (n : ℕ) : ℤ :=
  (A185115.P11194374675298673512.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185212.P9778455479555571894

`12*n²-8*n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185212.P9778455479555571894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) - (8 * n : ℤ) + 1

end

end A185212.P9778455479555571894

noncomputable section

/-- A185212: a(n) = 12*n^2 - 8*n + 1.

Offset 0, canonical program `A185212.P9778455479555571894`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²-8*n+1` (program `A185212.P9778455479555571894`, by `A185212.P9778455479555571894.correct`). Lean does not check the parsing of the name. -/
def A185212 (n : ℕ) : ℤ :=
  A185212.P9778455479555571894.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²-8*n+1` (program `A185212.P9778455479555571894`, by `A185212.P9778455479555571894.correct`). Lean does not check the parsing of the name. -/
def A185212.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A185308.P15777424825574371849

`1+a(n-1)+n*a(n-2)` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185308.P15777424825574371849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + (a (n - 1) + n * a (n - 2))

end

end A185308.P15777424825574371849

noncomputable section

/-- A185308: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + n*a(n-2) + 1.

Offset 0, canonical program `A185308.P15777424825574371849`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+n*a(n-2)` (program `A185308.P15777424825574371849`, by `A185308.P15777424825574371849.correct`). Lean does not check the parsing of the name. -/
def A185308 (n : ℕ) : ℤ :=
  (A185308.P15777424825574371849.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+n*a(n-2)` (program `A185308.P15777424825574371849`, by `A185308.P15777424825574371849.correct`). Lean does not check the parsing of the name. -/
def A185308.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A185549.P17028341597429184017

`ceil(n^(3/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185549.P17028341597429184017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

end

end A185549.P17028341597429184017

noncomputable section

/-- A185549: a(n) = ceiling(n^(3/2)); complement of A185550.

Offset 0, canonical program `A185549.P17028341597429184017`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^(3/2))` (program `A185549.P17028341597429184017`, by `A185549.P17028341597429184017.correct`). Lean does not check the parsing of the name. -/
def A185549 (n : ℕ) : ℤ :=
  A185549.P17028341597429184017.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n^(3/2))` (program `A185549.P17028341597429184017`, by `A185549.P17028341597429184017.correct`). Lean does not check the parsing of the name. -/
def A185549.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A185679.P6253800924068931833

`∑{digits}[n², (#%2)!]`
-/

namespace A185679.P6253800924068931833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

end

end A185679.P6253800924068931833

noncomputable section

/-- A185679: Number of digits in decimal expansion of n^2.

Offset 0, canonical program `A185679.P6253800924068931833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185679 (n : ℕ) : ℤ :=
  (A185679.P6253800924068931833.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186421.P9488022011537186981

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=4, a(5)=3`
-/

namespace A186421.P9488022011537186981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 1, 4, 3] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A186421.P9488022011537186981

noncomputable section

/-- A186421: Even numbers interleaved with repeated odd numbers.

Offset 0, canonical program `A186421.P9488022011537186981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186421 (n : ℕ) : ℤ :=
  A186421.P9488022011537186981.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A186444.P4437379836336284233

`∑[val(n+1, 3)%2]`
-/

namespace A186444.P4437379836336284233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A186444.P4437379836336284233

noncomputable section

/-- A186444: The count of numbers <= n for which 3 is an infinitary divisor.

Offset 1, canonical program `A186444.P4437379836336284233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186444 (n : ℕ) : ℤ :=
  (A186444.P4437379836336284233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186738.P12811543169515451185

`1+a(n-1)+(n-1)*a(n-2)` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186738.P12811543169515451185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A186738.P12811543169515451185

noncomputable section

/-- A186738: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n-1)*a(n-2) + 1.

Offset 0, canonical program `A186738.P12811543169515451185`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-1)*a(n-2)` (program `A186738.P12811543169515451185`, by `A186738.P12811543169515451185.correct`). Lean does not check the parsing of the name. -/
def A186738 (n : ℕ) : ℤ :=
  A186738.P12811543169515451185.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-1)*a(n-2)` (program `A186738.P12811543169515451185`, by `A186738.P12811543169515451185.correct`). Lean does not check the parsing of the name. -/
def A186738.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A186739.P10827599999874926647

`1+a(n-1)+(n-2)*a(n-2)` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A186739.P10827599999874926647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + (a (n - 1) + ((n : ℤ) - 2) * a (n - 2))

end

end A186739.P10827599999874926647

noncomputable section

/-- A186739: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n-2)*a(n-2) + 1.

Offset 0, canonical program `A186739.P10827599999874926647`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-2)*a(n-2)` (program `A186739.P10827599999874926647`, by `A186739.P10827599999874926647.correct`). Lean does not check the parsing of the name. -/
def A186739 (n : ℕ) : ℤ :=
  A186739.P10827599999874926647.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-2)*a(n-2)` (program `A186739.P10827599999874926647`, by `A186739.P10827599999874926647.correct`). Lean does not check the parsing of the name. -/
def A186739.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A186752.P4256476165915888062

`a(n-1)+n` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A186752.P4256476165915888062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 1) + n

end

end A186752.P4256476165915888062

noncomputable section

/-- A186752: Length of minimum representation of the permutation [n,n-1,...,1] as the product of transpositions (1,2) and left and right rotations (1,2,...,n).

Offset 1, canonical program `A186752.P4256476165915888062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186752 (n : ℕ) : ℤ :=
  (A186752.P4256476165915888062.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A186752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187074.P11660452978043718987

`round(1/gcd(12, 5-n))`
-/

namespace A187074.P11660452978043718987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (Int.gcd 12 (5 - (n : ℤ)) : ℚ))

end

end A187074.P11660452978043718987

noncomputable section

/-- A187074: a(n) = 0 if and only if n is of the form 3*k or 4*k + 2, otherwise a(n) = 1.

Offset 1, canonical program `A187074.P11660452978043718987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187074 (n : ℕ) : ℤ :=
  A187074.P11660452978043718987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187243.P7543391389539788555

`floor((floor(n/5)+2)²/4)`
-/

namespace A187243.P7543391389539788555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌊(n : ℚ) / 5⌋ + 2) ^ 2 : ℚ) / 4⌋

end

end A187243.P7543391389539788555

noncomputable section

/-- A187243: Number of ways of making change for n cents using coins of 1, 5, and 10 cents.

Offset 0, canonical program `A187243.P7543391389539788555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187243 (n : ℕ) : ℤ :=
  A187243.P7543391389539788555.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187844.P2226367484960758357

`∏{digits}[n, -#]`
-/

namespace A187844.P2226367484960758357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -(x : ℤ)).prod

end

end A187844.P2226367484960758357

noncomputable section

/-- A187844: Product of negated digits of n.

Offset 0, canonical program `A187844.P2226367484960758357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187844 (n : ℕ) : ℤ :=
  A187844.P2226367484960758357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A187989.P5269524187475352130

`C(2*(n+5), 2)-9`
-/

namespace A187989.P5269524187475352130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 5)) 2 : ℤ) - 9

end

end A187989.P5269524187475352130

noncomputable section

/-- A187989: Number of nondecreasing arrangements of 5 numbers x(i) in -(n+3)..(n+3) with the sum of sign(x(i))*2^|x(i)| zero.

Offset 1, canonical program `A187989.P5269524187475352130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187989 (n : ℕ) : ℤ :=
  A187989.P5269524187475352130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188172.P3980200347470981964

`∑{d}[n+1, C(#, 7)%2]`
-/

namespace A188172.P3980200347470981964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d 7 % 2

end

end A188172.P3980200347470981964

noncomputable section

/-- A188172: Number of divisors d of n of the form d == 7 (mod 8).

Offset 1, canonical program `A188172.P3980200347470981964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188172 (n : ℕ) : ℤ :=
  (A188172.P3980200347470981964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188555.P17677957703824641780

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=16, a(4)=28, a(5)=48`
-/

namespace A188555.P17677957703824641780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9, 16, 28, 48] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A188555.P17677957703824641780

noncomputable section

/-- A188555: Number of 4 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 0, canonical program `A188555.P17677957703824641780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188555 (n : ℕ) : ℤ :=
  A188555.P17677957703824641780.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A189723.P17700089988259517662

`floor(sqrt((n-a(floor(n/3)))%3))` with `a(0)=0`
-/

namespace A189723.P17700089988259517662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.sqrt (Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat) 3)

end

end A189723.P17700089988259517662

noncomputable section

/-- A189723: Fixed point of the morphism 0->011, 1->101.

Offset 1, canonical program `A189723.P17700089988259517662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189723 (n : ℕ) : ℤ :=
  A189723.P17700089988259517662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190090.P13508341134430365225

`2*a(n-1)+2*a(n-2)+6*a(n-3)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=16, a(4)=42, a(5)=137`
-/

namespace A190090.P13508341134430365225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 16, 42, 137] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 6 * a (n - 3) - 3 * a (n - 4) + a (n - 6)

end

end A190090.P13508341134430365225

noncomputable section

/-- A190090: Diagonal sums of the triangular matrix A190088.

Offset 0, canonical program `A190090.P13508341134430365225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190090 (n : ℕ) : ℤ :=
  A190090.P13508341134430365225.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A190090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A190224.P16042607047809135940

`floor(sqrt(3*(n+1)²))%gcd(2, n)`
-/

namespace A190224.P16042607047809135940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (3 * (n + 1) ^ 2) % Nat.gcd 2 n

end

end A190224.P16042607047809135940

noncomputable section

/-- A190224: a(n) = [n*u + n*v] - [n*u] - [n*v], where u=sin(Pi/3), v=cos(Pi/3), and []=floor.

Offset 1, canonical program `A190224.P16042607047809135940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190224 (n : ℕ) : ℤ :=
  (A190224.P16042607047809135940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190860.P1276307951638633825

`eq[1, gcd(4, floor(2*e*n))]`
-/

namespace A190860.P1276307951638633825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 ⌊2 * (Real.exp 1 * (n : ℝ))⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190860.P1276307951638633825

noncomputable section

/-- A190860: Positions of 1 in A190843; complement of A190847.

Offset 1, canonical program `A190860.P1276307951638633825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190860 (n : ℕ) : ℤ :=
  (A190860.P1276307951638633825.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191362.P9436509259666573639

`floor(n/(xor(n, n+1)+1))-val(n+1, 2)`
-/

namespace A191362.P9436509259666573639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A191362.P9436509259666573639

noncomputable section

/-- A191362: Number of the diagonal of the dispersion of the even positive integers that contains n.

Offset 1, canonical program `A191362.P9436509259666573639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191362 (n : ℕ) : ℤ :=
  A191362.P9436509259666573639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A191362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191561.P11500049019165056286

`(2^(n+1))%(3*(n+1))`
-/

namespace A191561.P11500049019165056286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1) % (3 * (n + 1))

end

end A191561.P11500049019165056286

noncomputable section

/-- A191561: a(n) = 2^n mod 3*n.

Offset 1, canonical program `A191561.P11500049019165056286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A191561 (n : ℕ) : ℤ :=
  (A191561.P11500049019165056286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A191561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191610.P14444303028635319100

`a(floor(n/5))+n` with `a(0)=0`
-/

namespace A191610.P14444303028635319100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 5⌋.toNat + n

end

end A191610.P14444303028635319100

noncomputable section

/-- A191610: Possible number of trailing zeros in k!.

Offset 1, canonical program `A191610.P14444303028635319100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191610 (n : ℕ) : ℤ :=
  (A191610.P14444303028635319100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A191610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192136.P3537270000381470267

`n*(5*n-3)/2+1`
-/

namespace A192136.P3537270000381470267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((5 * n : ℤ) - 3 : ℚ) / 2) + 1

end

end A192136.P3537270000381470267

noncomputable section

/-- A192136: a(n) = (5*n^2 - 3*n + 2)/2.

Offset 0, canonical program `A192136.P3537270000381470267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192136 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A192136.P3537270000381470267.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192804.P8468806043529360004

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A192804.P8468806043529360004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A192804.P8468806043529360004

noncomputable section

/-- A192804: Constant term in the reduction of the polynomial 1+x+x^2+...+x^n by x^3->x^2+x+1. See Comments.

Offset 0, canonical program `A192804.P8468806043529360004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192804 (n : ℕ) : ℤ :=
  A192804.P8468806043529360004.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192873.P8323010108294074355

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`
-/

namespace A192873.P8323010108294074355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 7] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3) + a (n - 4)

end

end A192873.P8323010108294074355

noncomputable section

/-- A192873: Coefficient of x in the reduction by (x^2->x+1) of the polynomial p(n,x) given in Comments.

Offset 0, canonical program `A192873.P8323010108294074355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192873 (n : ℕ) : ℤ :=
  A192873.P8323010108294074355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A192873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192877.P11652196507941922056

`2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=14, a(4)=47`
-/

namespace A192877.P11652196507941922056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 14, 47] fun n a =>
  2 * a (n - 1) + 6 * a (n - 2) - 5 * a (n - 3) - 6 * a (n - 4) + 4 * a (n - 5)

end

end A192877.P11652196507941922056

noncomputable section

/-- A192877: Coefficient of x in the reduction by (x^2->x+1) of the polynomial p(n,x) given in Comments.

Offset 0, canonical program `A192877.P11652196507941922056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A192877 (n : ℕ) : ℤ :=
  A192877.P11652196507941922056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A192877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193356.P18165301230396846274

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0`
-/

namespace A193356.P18165301230396846274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A193356.P18165301230396846274

noncomputable section

/-- A193356: If n is even then 0, otherwise n.

Offset 1, canonical program `A193356.P18165301230396846274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193356 (n : ℕ) : ℤ :=
  A193356.P18165301230396846274.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A193356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A193361.P5377649720249898923

`1+a(n-1)+(n-3)*a(n-2)` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A193361.P5377649720249898923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + (a (n - 1) + ((n : ℤ) - 3) * a (n - 2))

end

end A193361.P5377649720249898923

noncomputable section

/-- A193361: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n-3)*a(n-2) + 1.

Offset 0, canonical program `A193361.P5377649720249898923`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-3)*a(n-2)` (program `A193361.P5377649720249898923`, by `A193361.P5377649720249898923.correct`). Lean does not check the parsing of the name. -/
def A193361 (n : ℕ) : ℤ :=
  A193361.P5377649720249898923.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-3)*a(n-2)` (program `A193361.P5377649720249898923`, by `A193361.P5377649720249898923.correct`). Lean does not check the parsing of the name. -/
def A193361.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A194698.P3384574780153075239

`round(n/24)`
-/

namespace A194698.P3384574780153075239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 24)

end

end A194698.P3384574780153075239

noncomputable section

/-- A194698: a(n) = floor((n - 1)/12) - floor((n^2 - 1)/(24*n)).

Offset 1, canonical program `A194698.P3384574780153075239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194698 (n : ℕ) : ℤ :=
  A194698.P3384574780153075239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A194698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194960.P16175288645252624048

`a(n-3)+1` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A194960.P16175288645252624048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 3) + 1

end

end A194960.P16175288645252624048

noncomputable section

/-- A194960: a(n) = floor((n+2)/3) + ((n-1) mod 3).

Offset 1, canonical program `A194960.P16175288645252624048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194960 (n : ℕ) : ℤ :=
  (A194960.P16175288645252624048.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195019.P18402341473648507124

`∑[∑[(3-n)*(-1)^n]]`
-/

namespace A195019.P18402341473648507124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195019.P18402341473648507124

noncomputable section

/-- A195019: Multiples of 3 and of 4 interleaved: a(2*n-1) = 3*n, a(2*n) = 4*n.

Offset 1, canonical program `A195019.P18402341473648507124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195019 (n : ℕ) : ℤ :=
  A195019.P18402341473648507124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195121.P14500461516378876145

`2*n-floor(n/ϕ)`
-/

namespace A195121.P14500461516378876145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊(n : ℝ) / Real.goldenRatio⌋

end

end A195121.P14500461516378876145

noncomputable section

/-- A195121: a(n) = 2*n - floor(n/r), where r = (1 + sqrt(5))/2 (the golden ratio).

Offset 0, canonical program `A195121.P14500461516378876145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195121 (n : ℕ) : ℤ :=
  A195121.P14500461516378876145.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195174.P6579948585728578834

`5*n-floor(3*n*(1+sqrt(5))/2)`
-/

namespace A195174.P6579948585728578834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - ⌊3 * ((n : ℝ) * ((1 + Real.sqrt (5 : ℝ)) / 2))⌋

end

end A195174.P6579948585728578834

noncomputable section

/-- A195174: a(n) = 5*n - floor(3*n*r), where r=(1+sqrt(5))/2 (the golden ratio.)

Offset 0, canonical program `A195174.P6579948585728578834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195174 (n : ℕ) : ℤ :=
  A195174.P6579948585728578834.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A195174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195859.P11499926218222609454

`n^8-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195859.P11499926218222609454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 8 : ℤ) - (n : ℤ)

end

end A195859.P11499926218222609454

noncomputable section

/-- A195859: a(n) = n^8-n.

Offset 0, canonical program `A195859.P11499926218222609454`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8-n` (program `A195859.P11499926218222609454`, by `A195859.P11499926218222609454.correct`). Lean does not check the parsing of the name. -/
def A195859 (n : ℕ) : ℤ :=
  A195859.P11499926218222609454.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8-n` (program `A195859.P11499926218222609454`, by `A195859.P11499926218222609454.correct`). Lean does not check the parsing of the name. -/
def A195859.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A195910.P3481932194148912844

`ceil(tan(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195910.P3481932194148912844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ)⌉

end

end A195910.P3481932194148912844

noncomputable section

/-- A195910: a(n) = ceiling(tan(n)).

Offset 0, canonical program `A195910.P3481932194148912844`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(tan(n))` (program `A195910.P3481932194148912844`, by `A195910.P3481932194148912844.correct`). Lean does not check the parsing of the name. -/
def A195910 (n : ℕ) : ℤ :=
  A195910.P3481932194148912844.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(tan(n))` (program `A195910.P3481932194148912844`, by `A195910.P3481932194148912844.correct`). Lean does not check the parsing of the name. -/
def A195910.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A196288.P6585146386637395745

`n^8+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A196288.P6585146386637395745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8 + n

end

end A196288.P6585146386637395745

noncomputable section

/-- A196288: a(n) = n^8 + n.

Offset 0, canonical program `A196288.P6585146386637395745`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8+n` (program `A196288.P6585146386637395745`, by `A196288.P6585146386637395745.correct`). Lean does not check the parsing of the name. -/
def A196288 (n : ℕ) : ℤ :=
  (A196288.P6585146386637395745.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8+n` (program `A196288.P6585146386637395745`, by `A196288.P6585146386637395745.correct`). Lean does not check the parsing of the name. -/
def A196288.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A196564.P8844000954702412454

`∑{digits}[n, #%2]`
-/

namespace A196564.P8844000954702412454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % 2).sum

end

end A196564.P8844000954702412454

noncomputable section

/-- A196564: Number of odd digits in decimal representation of n.

Offset 0, canonical program `A196564.P8844000954702412454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196564 (n : ℕ) : ℤ :=
  (A196564.P8844000954702412454.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197881.P10260950731511024877

`∏{e}[n+1, C(#, C(2, #))]`
-/

namespace A197881.P10260950731511024877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p) (Nat.choose 2 (Nat.factorization (f1 n) p))

end

end A197881.P10260950731511024877

noncomputable section

/-- A197881: Number of times n occurs in A197863.

Offset 1, canonical program `A197881.P10260950731511024877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197881 (n : ℕ) : ℤ :=
  (A197881.P10260950731511024877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A197881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A197985.P17826286806757450738

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=6, a(2)=11, a(3)=18`
-/

namespace A197985.P17826286806757450738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 11, 18] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A197985.P17826286806757450738

noncomputable section

/-- A197985: a(n) = round((n+1/n)^2).

Offset 1, canonical program `A197985.P17826286806757450738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A197985 (n : ℕ) : ℤ :=
  A197985.P17826286806757450738.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A197985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A198693.P12935129787090081838

`3*4^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198693.P12935129787090081838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 4 ^ n : ℤ) - 1

end

end A198693.P12935129787090081838

noncomputable section

/-- A198693: a(n) = 3*4^n-1.

Offset 0, canonical program `A198693.P12935129787090081838`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n-1` (program `A198693.P12935129787090081838`, by `A198693.P12935129787090081838.correct`). Lean does not check the parsing of the name. -/
def A198693 (n : ℕ) : ℤ :=
  A198693.P12935129787090081838.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n-1` (program `A198693.P12935129787090081838`, by `A198693.P12935129787090081838.correct`). Lean does not check the parsing of the name. -/
def A198693.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A201219.P4174117013781790206

`2-C(2, ∏{p}[n+1, #])`
-/

namespace A201219.P4174117013781790206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A201219.P4174117013781790206

noncomputable section

/-- A201219: a(1) = 0; for n>1, a(n) = 1 if n is a power of 2, otherwise a(n) = 2.

Offset 1, canonical program `A201219.P4174117013781790206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201219 (n : ℕ) : ℤ :=
  A201219.P4174117013781790206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A201219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204708.P15726710374413608264

`3*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=25, a(1)=81, a(2)=257`
-/

namespace A204708.P15726710374413608264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 81, 257] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A204708.P15726710374413608264

noncomputable section

/-- A204708: Number of (n+1) X 4 0..1 arrays with the permanents of all 2 X 2 subblocks equal and nonzero.

Offset 1, canonical program `A204708.P15726710374413608264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A204708 (n : ℕ) : ℤ :=
  A204708.P15726710374413608264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A204708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209229.P14119267658822519212

`a(∑[n]%n)` with `a(0)=0, a(1)=1`
-/

namespace A209229.P14119267658822519212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((∑ j ∈ Finset.range (n + 1), f1 j) % n)

end

end A209229.P14119267658822519212

noncomputable section

/-- A209229: Characteristic function of powers of 2, cf. A000079.

Offset 0, canonical program `A209229.P14119267658822519212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209229 (n : ℕ) : ℤ :=
  (A209229.P14119267658822519212.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210469.P11714448020491112813

`∑[(∑{e}[2*n+1, #]!+1)%2]`
-/

namespace A210469.P11714448020491112813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210469.P11714448020491112813

noncomputable section

/-- A210469: a(n) = n - primepi(2n).

Offset 1, canonical program `A210469.P11714448020491112813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210469 (n : ℕ) : ℤ :=
  (A210469.P11714448020491112813.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A210826.P1982609276010569986

`(∏{e}[n+1, #+1]+1)%3-1`
-/

namespace A210826.P1982609276010569986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1) % 3 : ℕ) : ℤ) - 1

end

end A210826.P1982609276010569986

noncomputable section

/-- A210826: G.f.: Sum_{n>=1} a(n)*x^n/(1 - x^n) = Sum_{n>=1} x^(n^3).

Offset 1, canonical program `A210826.P1982609276010569986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210826 (n : ℕ) : ℤ :=
  A210826.P1982609276010569986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A210826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211539.P10983255820154818639

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=7`
-/

namespace A211539.P10983255820154818639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 3, 7] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A211539.P10983255820154818639

noncomputable section

/-- A211539: Number of ordered triples (w,x,y) with all terms in {1,...,n} and 2w = 2n - 2x + y.

Offset 0, canonical program `A211539.P10983255820154818639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211539 (n : ℕ) : ℤ :=
  A211539.P10983255820154818639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211540.P9449273519256082514

`round((n-2)²/12)`
-/

namespace A211540.P9449273519256082514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n : ℤ) - 2) ^ 2 : ℚ) / 12)

end

end A211540.P9449273519256082514

noncomputable section

/-- A211540: Number of ordered triples (w,x,y) with all terms in {1..n} and 2w = 3x + 4y.

Offset 0, canonical program `A211540.P9449273519256082514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211540 (n : ℕ) : ℤ :=
  A211540.P9449273519256082514.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A211540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A211666.P15455762135281262174

`round((2*n)^acot(13))`
-/

namespace A211666.P15455762135281262174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) ^ (SequenceMachineLib.acot (13 : ℝ)))

end

end A211666.P15455762135281262174

noncomputable section

/-- A211666: Number of iterations log_10(log_10(log_10(...(n)...))) such that the result is < 2.

Offset 1, canonical program `A211666.P15455762135281262174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211666 (n : ℕ) : ℤ :=
  A211666.P15455762135281262174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A211666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212342.P14933831444903639263

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=9`
-/

namespace A212342.P14933831444903639263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 5, 9] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A212342.P14933831444903639263

noncomputable section

/-- A212342: Sequence of coefficients of x^0 in marked mesh pattern generating function Q_{n,132}^(0,3,0,0)(x).

Offset 0, canonical program `A212342.P14933831444903639263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212342 (n : ℕ) : ℤ :=
  A212342.P14933831444903639263.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A212804.P4981700402857348297

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A212804.P4981700402857348297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + a (n - 2)

end

end A212804.P4981700402857348297

noncomputable section

/-- A212804: Expansion of (1 - x)/(1 - x - x^2).

Offset 0, canonical program `A212804.P4981700402857348297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A212804 (n : ℕ) : ℤ :=
  (A212804.P4981700402857348297.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. -/
def A212804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212982.P10408608130143443580

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=11, a(3)=27, a(4)=53`
-/

namespace A212982.P10408608130143443580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 11, 27, 53] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A212982.P10408608130143443580

noncomputable section

/-- A212982: Number of (w,x,y) with all terms in {0,...,n} and w

Offset 0, canonical program `A212982.P10408608130143443580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212982 (n : ℕ) : ℤ :=
  A212982.P10408608130143443580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A212982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213037.P12476865409343140300

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=8`
-/

namespace A213037.P12476865409343140300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 7, 8] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A213037.P12476865409343140300

noncomputable section

/-- A213037: a(n) = n^2 - 2*floor(n/2)^2.

Offset 0, canonical program `A213037.P12476865409343140300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213037 (n : ℕ) : ℤ :=
  A213037.P12476865409343140300.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A213037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A213816.P2608015547155929940

`a(n-gcd(2, n))+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A213816.P2608015547155929940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - Nat.gcd 2 n) + a (n - 3)

end

end A213816.P2608015547155929940

noncomputable section

/-- A213816: Tribonacci sequences A000073 and A001590 interleaved.

Offset 1, canonical program `A213816.P2608015547155929940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 757 terms. -/
def A213816 (n : ℕ) : ℤ :=
  (A213816.P2608015547155929940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 757 terms. -/
def A213816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213850.P6628843684967932364

`∑[a(n-2)+(n+1)*∑[(n+1)%2]]` with `a(0)=1, a(1)=2`
-/

namespace A213850.P6628843684967932364
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213850.P6628843684967932364

noncomputable section

/-- A213850: Antidiagonal sums of the convolution array A213849.

Offset 1, canonical program `A213850.P6628843684967932364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213850 (n : ℕ) : ℤ :=
  (A213850.P6628843684967932364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A213850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214076.P4080178177290642058

`floor(2^((n+1)/log(8)))+1`
-/

namespace A214076.P4080178177290642058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n + 1 : ℝ) / Real.log (8 : ℝ))⌋ + 1

end

end A214076.P4080178177290642058

noncomputable section

/-- A214076: a(n) = ceiling(e^(n/3)).

Offset 1, canonical program `A214076.P4080178177290642058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A214076 (n : ℕ) : ℤ :=
  A214076.P4080178177290642058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A214076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214682.P8167480233438224632

`gcd(n+1, val(n+1, 2)*∑[n])`
-/

namespace A214682.P8167480233438224632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A214682.P8167480233438224632

noncomputable section

/-- A214682: Remove 2's that do not contribute to a factor of 4 from the prime factorization of n.

Offset 1, canonical program `A214682.P8167480233438224632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214682 (n : ℕ) : ℤ :=
  (A214682.P8167480233438224632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214727.P11946142167153470616

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214727.P11946142167153470616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A214727.P11946142167153470616

noncomputable section

/-- A214727: a(n) = a(n-1) + a(n-2) + a(n-3) with a(0) = 1, a(1) = a(2) = 2.

Offset 0, canonical program `A214727.P11946142167153470616`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214727.P11946142167153470616`, by `A214727.P11946142167153470616.correct`). Lean does not check the parsing of the name. -/
def A214727 (n : ℕ) : ℤ :=
  (A214727.P11946142167153470616.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214727.P11946142167153470616`, by `A214727.P11946142167153470616.correct`). Lean does not check the parsing of the name. -/
def A214727.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A214826.P6158921752041550372

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214826.P6158921752041550372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A214826.P6158921752041550372

noncomputable section

/-- A214826: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 1, a(1) = a(2) = 4.

Offset 0, canonical program `A214826.P6158921752041550372`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214826.P6158921752041550372`, by `A214826.P6158921752041550372.correct`). Lean does not check the parsing of the name. -/
def A214826 (n : ℕ) : ℤ :=
  (A214826.P6158921752041550372.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214826.P6158921752041550372`, by `A214826.P6158921752041550372.correct`). Lean does not check the parsing of the name. -/
def A214826.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A214899.P7873589326808880822

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A214899.P7873589326808880822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A214899.P7873589326808880822

noncomputable section

/-- A214899: a(n) = a(n-1) + a(n-2) + a(n-3) with a(0)=2, a(1)=1, a(2)=2.

Offset 0, canonical program `A214899.P7873589326808880822`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214899.P7873589326808880822`, by `A214899.P7873589326808880822.correct`). Lean does not check the parsing of the name. -/
def A214899 (n : ℕ) : ℤ :=
  (A214899.P7873589326808880822.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A214899.P7873589326808880822`, by `A214899.P7873589326808880822.correct`). Lean does not check the parsing of the name. -/
def A214899.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215149.P15528705439726047027

`n*(1+2^(n-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215149.P15528705439726047027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (1 + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A215149.P15528705439726047027

noncomputable section

/-- A215149: a(n) = n * (1 + 2^(n-1)).

Offset 0, canonical program `A215149.P15528705439726047027`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215149 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A215149.P15528705439726047027.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215415.P10885264764584390891

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=3`
-/

namespace A215415.P10885264764584390891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 3] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A215415.P10885264764584390891

noncomputable section

/-- A215415: a(2*n) = n, a(4*n+1) = 2*n-1, a(4*n+3) = 2*n+3.

Offset 0, canonical program `A215415.P10885264764584390891`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215415 (n : ℕ) : ℤ :=
  A215415.P10885264764584390891.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A215415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A215928.P9292469542158918024

`2*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215928.P9292469542158918024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A215928.P9292469542158918024

noncomputable section

/-- A215928: a(n) = 2*a(n-1) + a(n-2) for n > 2, a(0) = a(1) = 1, a(2) = 2.

Offset 0, canonical program `A215928.P9292469542158918024`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A215928.P9292469542158918024`, by `A215928.P9292469542158918024.correct`). Lean does not check the parsing of the name. -/
def A215928 (n : ℕ) : ℤ :=
  (A215928.P9292469542158918024.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A215928.P9292469542158918024`, by `A215928.P9292469542158918024.correct`). Lean does not check the parsing of the name. -/
def A215928.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A215936.P7031993691885772414

`a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A215936.P7031993691885772414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 2) - 2 * a (n - 1)

end

end A215936.P7031993691885772414

noncomputable section

/-- A215936: a(n) = -2*a(n-1) + a(n-2) for n > 2, with a(0) = a(1) = 1, a(2) = 0.

Offset 0, canonical program `A215936.P7031993691885772414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A215936 (n : ℕ) : ℤ :=
  A215936.P7031993691885772414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A215936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216256.P4327338339903373439

`floor((a(n-1)+4)*n/(a(n-1)+n))` with `a(0)=1`
-/

namespace A216256.P4327338339903373439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 4 : ℚ) * ((n : ℚ) / (a (n - 1) + (n : ℤ) : ℚ))⌋

end

end A216256.P4327338339903373439

noncomputable section

/-- A216256: Minimum length of a longest unimodal subsequence of a permutation of n elements.

Offset 1, canonical program `A216256.P4327338339903373439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216256 (n : ℕ) : ℤ :=
  A216256.P4327338339903373439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217482.P14643677961193639769

`1/6*floor(n²/4)*(floor(n²/4)-1)*(floor(n²/4)-2)`
-/

namespace A217482.P14643677961193639769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (⌊(n ^ 2 : ℚ) / 4⌋ : ℚ) * ((⌊(n ^ 2 : ℚ) / 4⌋ - 1) * (⌊(n ^ 2 : ℚ) / 4⌋ - 2) : ℚ)

end

end A217482.P14643677961193639769

noncomputable section

/-- A217482: Quarter-square tetrahedrals: a(n) = k*(k - 1)*(k - 2)/6, k = A002620(n).

Offset 0, canonical program `A217482.P14643677961193639769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A217482.P14643677961193639769.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217571.P7952877100460112547

`∑[C(n+2, and(1, n))]`
-/

namespace A217571.P7952877100460112547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217571.P7952877100460112547

noncomputable section

/-- A217571: a(n) = (2*n*(n+5) + (2*n+1)*(-1)^n - 1)/8.

Offset 1, canonical program `A217571.P7952877100460112547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217571 (n : ℕ) : ℤ :=
  (A217571.P7952877100460112547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A217947.P3313743399037332398

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=11, a(1)=37, a(2)=87, a(3)=172, a(4)=305`
-/

namespace A217947.P3313743399037332398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 37, 87, 172, 305] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A217947.P3313743399037332398

noncomputable section

/-- A217947: a(n) = (n+1)*(n^3+15*n^2+74*n+132)/12.

Offset 0, canonical program `A217947.P3313743399037332398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217947 (n : ℕ) : ℤ :=
  A217947.P3313743399037332398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A217947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A218447.P6360476239130993311

`∑[∑{d}[n, C(#, 4)%5]]`
-/

namespace A218447.P6360476239130993311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose d 4 % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218447.P6360476239130993311

noncomputable section

/-- A218447: a(n) = Sum_{k>=0} floor(n/(5*k + 4)).

Offset 0, canonical program `A218447.P6360476239130993311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218447 (n : ℕ) : ℤ :=
  (A218447.P6360476239130993311.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220105.P855441196975184170

`(2^n)%(n+1)²`
-/

namespace A220105.P855441196975184170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % (n + 1) ^ 2

end

end A220105.P855441196975184170

noncomputable section

/-- A220105: 2^(n-1) mod n^2.

Offset 1, canonical program `A220105.P855441196975184170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A220105 (n : ℕ) : ℤ :=
  (A220105.P855441196975184170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A220105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A220588.P16569912983883394539

`2^n-n²-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220588.P16569912983883394539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n ^ 2 : ℤ) - (n : ℤ)

end

end A220588.P16569912983883394539

noncomputable section

/-- A220588: a(n) = 2^n - n^2 - n.

Offset 0, canonical program `A220588.P16569912983883394539`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n²-n` (program `A220588.P16569912983883394539`, by `A220588.P16569912983883394539.correct`). Lean does not check the parsing of the name. -/
def A220588 (n : ℕ) : ℤ :=
  A220588.P16569912983883394539.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-n²-n` (program `A220588.P16569912983883394539`, by `A220588.P16569912983883394539.correct`). Lean does not check the parsing of the name. -/
def A220588.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A220699.P15982190001683231354

`1+a(n-1)+(n-4)*a(n-2)` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220699.P15982190001683231354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  1 + (a (n - 1) + ((n : ℤ) - 4) * a (n - 2))

end

end A220699.P15982190001683231354

noncomputable section

/-- A220699: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n-4)*a(n-2) + 1.

Offset 0, canonical program `A220699.P15982190001683231354`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-4)*a(n-2)` (program `A220699.P15982190001683231354`, by `A220699.P15982190001683231354.correct`). Lean does not check the parsing of the name. -/
def A220699 (n : ℕ) : ℤ :=
  A220699.P15982190001683231354.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n-4)*a(n-2)` (program `A220699.P15982190001683231354`, by `A220699.P15982190001683231354.correct`). Lean does not check the parsing of the name. -/
def A220699.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A221678.P11234986961513364289

`3*a(n-1)+2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=20`
-/

namespace A221678.P11234986961513364289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 20] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A221678.P11234986961513364289

noncomputable section

/-- A221678: Number of 0..3 arrays of length n with each element differing from at least one neighbor by 1 or less, starting with 0.

Offset 1, canonical program `A221678.P11234986961513364289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A221678 (n : ℕ) : ℤ :=
  A221678.P11234986961513364289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A221678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A221912.P17367794735263846476

`∑[floor(n/12)]`
-/

namespace A221912.P17367794735263846476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 12⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221912.P17367794735263846476

noncomputable section

/-- A221912: Partial sums of floor(n/12).

Offset 0, canonical program `A221912.P17367794735263846476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221912 (n : ℕ) : ℤ :=
  A221912.P17367794735263846476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A221912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A225367.P6319838563113945320

`3*a(n-2)` with `a(0)=3, a(1)=2, a(2)=6`
-/

namespace A225367.P6319838563113945320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 6] fun n a =>
  3 * a (n - 2)

end

end A225367.P6319838563113945320

noncomputable section

/-- A225367: Number of palindromes of length n in base 3 (A118594).

Offset 1, canonical program `A225367.P6319838563113945320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225367 (n : ℕ) : ℤ :=
  (A225367.P6319838563113945320.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A225367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A225883.P7216556814437295336

`(-1)^n*(1-2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A225883.P7216556814437295336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (1 - (2 ^ n : ℤ))

end

end A225883.P7216556814437295336

noncomputable section

/-- A225883: a(n) = (-1)^n * (1 - 2^n).

Offset 0, canonical program `A225883.P7216556814437295336`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(1-2^n)` (program `A225883.P7216556814437295336`, by `A225883.P7216556814437295336.correct`). Lean does not check the parsing of the name. -/
def A225883 (n : ℕ) : ℤ :=
  A225883.P7216556814437295336.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(1-2^n)` (program `A225883.P7216556814437295336`, by `A225883.P7216556814437295336.correct`). Lean does not check the parsing of the name. -/
def A225883.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A226538.P7708882908226433191

`a(n-1)+gcd((n+1)%2, a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A226538.P7708882908226433191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + Nat.gcd ((n + 1) % 2) (a (n - 3))

end

end A226538.P7708882908226433191

noncomputable section

/-- A226538: a(2t) = a(2t-1) + 1, a(2t+1) = a(2t) + a(2t-2) for t >= 1, with a(0) = a(1) = 1.

Offset 0, canonical program `A226538.P7708882908226433191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A226538 (n : ℕ) : ℤ :=
  (A226538.P7708882908226433191.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A226538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226762.P15803941217461780660

`floor((n+1)/∑[1/(n+1)])`
-/

namespace A226762.P15803941217461780660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A226762.P15803941217461780660

noncomputable section

/-- A226762: Greatest k such that 1/k >= mean of {1, 1/2, 1/3, ..., 1/n}.

Offset 1, canonical program `A226762.P15803941217461780660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4834 terms. -/
def A226762 (n : ℕ) : ℤ :=
  A226762.P15803941217461780660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4834 terms. -/
def A226762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228297.P16731799934787125036

`∑[char[a(floor(n/5))+n]]` with `a(0)=0`
-/

namespace A228297.P16731799934787125036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 5⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A228297.P16731799934787125036

noncomputable section

/-- A228297: Generalized meta-Fibonacci sequence a(n) with parameters s=0 and k=5.

Offset 1, canonical program `A228297.P16731799934787125036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228297 (n : ℕ) : ℤ :=
  (A228297.P16731799934787125036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A228297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228888.P2937561705110500032

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=10, a(1)=56, a(2)=165, a(3)=364`
-/

namespace A228888.P2937561705110500032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 56, 165, 364] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A228888.P2937561705110500032

noncomputable section

/-- A228888: a(n) = binomial(3*n+2,3).

Offset 1, canonical program `A228888.P2937561705110500032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228888 (n : ℕ) : ℤ :=
  A228888.P2937561705110500032.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230980.P7768329975809437652

`∑[∑{p}[n, val(#, n)]]`
-/

namespace A230980.P7768329975809437652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230980.P7768329975809437652

noncomputable section

/-- A230980: Number of primes <= n, starting at n=0.

Offset 0, canonical program `A230980.P7768329975809437652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230980 (n : ℕ) : ℤ :=
  (A230980.P7768329975809437652.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231002.P13499094742414955203

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=23, a(2)=33`
-/

namespace A231002.P13499094742414955203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 23, 33] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A231002.P13499094742414955203

noncomputable section

/-- A231002: Number of years after which it is possible to have a date falling on same day of the week, but the entire year does not have the same calendar, in the Julian calendar.

Offset 1, canonical program `A231002.P13499094742414955203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231002 (n : ℕ) : ℤ :=
  A231002.P13499094742414955203.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231002.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A231305.P11117742505926713000

`a(n-2)+n^6` with `a(0)=0, a(1)=1`
-/

namespace A231305.P11117742505926713000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n ^ 6

end

end A231305.P11117742505926713000

noncomputable section

/-- A231305: Recurrence a(n) = a(n-2) + n^M for M=6, starting with a(0)=0, a(1)=1.

Offset 0, canonical program `A231305.P11117742505926713000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231305 (n : ℕ) : ℤ :=
  (A231305.P11117742505926713000.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231306.P15497539260650354253

`a(n-2)+n^7` with `a(0)=0, a(1)=1`
-/

namespace A231306.P15497539260650354253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + n ^ 7

end

end A231306.P15497539260650354253

noncomputable section

/-- A231306: Recurrence a(n) = a(n-2) + n^M for M=7, starting with a(0)=0, a(1)=1.

Offset 0, canonical program `A231306.P15497539260650354253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231306 (n : ℕ) : ℤ :=
  (A231306.P15497539260650354253.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231821.P7119461953702847255

`round(∏{p}[n+1, -#]/Δ[n²])+3`
-/

namespace A231821.P7119461953702847255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)) + 3

end

end A231821.P7119461953702847255

noncomputable section

/-- A231821: a(n) = mu(n) + 3, where mu is the Mobius function (A008683).

Offset 1, canonical program `A231821.P7119461953702847255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231821 (n : ℕ) : ℤ :=
  A231821.P7119461953702847255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232165.P15779423753795597952

`a(n-1)+a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A232165.P15779423753795597952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 2) + 3 * a (n - 3) + a (n - 4)

end

end A232165.P15779423753795597952

noncomputable section

/-- A232165: Cardinality of the Weyl alternation set corresponding to the zero-weight in the adjoint representation of the Lie algebra sp(2n).

Offset 0, canonical program `A232165.P15779423753795597952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232165 (n : ℕ) : ℤ :=
  (A232165.P15779423753795597952.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232801.P430984354447071122

`4*a(n-2)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A232801.P430984354447071122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3] fun n a =>
  4 * a (n - 2) - 3 * a (n - 4)

end

end A232801.P430984354447071122

noncomputable section

/-- A232801: a(2n) = (3^n - 1)/2, a(2n+1) = 3^n.

Offset 0, canonical program `A232801.P430984354447071122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232801 (n : ℕ) : ℤ :=
  A232801.P430984354447071122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233139.P12112664299954791325

`2*a(n-1)+a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A233139.P12112664299954791325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  2 * a (n - 1) + a (n - 3) + 2 * a (n - 4)

end

end A233139.P12112664299954791325

noncomputable section

/-- A233139: Number of tilings of a 4 X n rectangle using T and Z tetrominoes.

Offset 0, canonical program `A233139.P12112664299954791325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233139 (n : ℕ) : ℤ :=
  (A233139.P12112664299954791325.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233583.P15026547221992958741

`round(acot(n)+n)`
-/

namespace A233583.P15026547221992958741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

end

end A233583.P15026547221992958741

noncomputable section

/-- A233583: Coefficients of the generalized continued fraction expansion e = a(1) +a(1)/(a(2) +a(2)/(a(3) +a(3)/(a(4) +a(4)/....))).

Offset 1, canonical program `A233583.P15026547221992958741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233583 (n : ℕ) : ℤ :=
  A233583.P15026547221992958741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A233583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233868.P10443722259188444304

`5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=31`
-/

namespace A233868.P10443722259188444304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7, 31] fun n a =>
  5 * a (n - 1) - 4 * a (n - 2)

end

end A233868.P10443722259188444304

noncomputable section

/-- A233868: Numbers that are not the sum of two evil numbers.

Offset 1, canonical program `A233868.P10443722259188444304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233868 (n : ℕ) : ℤ :=
  A233868.P10443722259188444304.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234044.P13328901318595551424

`2-((3*n)^4)%7`
-/

namespace A234044.P13328901318595551424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((3 * n) ^ 4 % 7 : ℕ) : ℤ)

end

end A234044.P13328901318595551424

noncomputable section

/-- A234044: Period 7: repeat [2, -2, 1, 0, 0, 1, -2].

Offset 0, canonical program `A234044.P13328901318595551424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234044 (n : ℕ) : ℤ :=
  A234044.P13328901318595551424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234046.P13733933000472224673

`C(2, n²%7)-1`
-/

namespace A234046.P13733933000472224673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2 % 7) : ℤ) - 1

end

end A234046.P13733933000472224673

noncomputable section

/-- A234046: Period 7: repeat [0, 1, -1, 0, 0, -1, 1].

Offset 0, canonical program `A234046.P13733933000472224673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234046 (n : ℕ) : ℤ :=
  A234046.P13733933000472224673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A234046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234538.P7848866361536063857

`(a(floor(n/3))+n²%3)%3` with `a(0)=0`
-/

namespace A234538.P7848866361536063857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n ^ 2 % 3) % 3

end

end A234538.P7848866361536063857

noncomputable section

/-- A234538: (Number of positive digits of n written in base 3) modulo 3.

Offset 0, canonical program `A234538.P7848866361536063857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234538 (n : ℕ) : ℤ :=
  (A234538.P7848866361536063857.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A234538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234591.P16712786208938603051

`2*a(n-1)-a(n-8)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=128, a(8)=256, a(9)=512`
-/

namespace A234591.P16712786208938603051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 64, 128, 256, 512] fun n a =>
  2 * a (n - 1) - a (n - 8) + a (n - 9) + a (n - 10)

end

end A234591.P16712786208938603051

noncomputable section

/-- A234591: Number of binary words of length n which have no 0^b 1 1 0^a 1 0 1 0^b - matches, where a=1, b=2.

Offset 0, canonical program `A234591.P16712786208938603051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234591 (n : ℕ) : ℤ :=
  A234591.P16712786208938603051.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237347.P11476891004590443588

`xor(2, Δ[floor(sqrt(2*(2*n+1)))%(n+2)])`
-/

namespace A237347.P11476891004590443588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * (2 * n + 1)) % (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A237347.P11476891004590443588

noncomputable section

/-- A237347: First differences of A078633.

Offset 1, canonical program `A237347.P11476891004590443588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237347 (n : ℕ) : ℤ :=
  A237347.P11476891004590443588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A237347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237664.P11465749325762323749

`(2*n)!*(n-1)/n!²+1`
-/

namespace A237664.P11465749325762323749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) * (((n : ℤ) - 1 : ℚ) / (Nat.factorial n ^ 2 : ℚ)) + 1

end

end A237664.P11465749325762323749

noncomputable section

/-- A237664: Interpolation polynomial through n+1 points (0,1), (1,1), ..., (n-1,1) and (n,n) evaluated at 2n.

Offset 0, canonical program `A237664.P11465749325762323749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A237664.P11465749325762323749.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238340.P14718149043213279945

`and(∑[round((4*n+3)²/12)], -1)`
-/

namespace A238340.P14718149043213279945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A238340.P14718149043213279945

noncomputable section

/-- A238340: Number of partitions of 4n into 4 parts.

Offset 1, canonical program `A238340.P14718149043213279945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238340 (n : ℕ) : ℤ :=
  A238340.P14718149043213279945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238531.P2027797945103347072

`C(n, 2)+gcd(2, C(3, n²))`
-/

namespace A238531.P2027797945103347072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + Nat.gcd 2 (Nat.choose 3 (n ^ 2))

end

end A238531.P2027797945103347072

noncomputable section

/-- A238531: Expansion of (1 - x + x^2)^2 / (1 - x)^3 in powers of x.

Offset 0, canonical program `A238531.P2027797945103347072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238531 (n : ℕ) : ℤ :=
  (A238531.P2027797945103347072.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239035.P5349055549873088502

`(n^4+14*n^3+63*n²+98*n+28)²-(28+8*n)²`
-/

namespace A239035.P5349055549873088502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 + 14 * n ^ 3 + 63 * n ^ 2 + 98 * n + 28) ^ 2 : ℤ) - ((28 + 8 * n) ^ 2 : ℤ)

end

end A239035.P5349055549873088502

noncomputable section

/-- A239035: Product of 8 consecutive integers. a(n) = RisingFactorial(n, 8).

Offset 0, canonical program `A239035.P5349055549873088502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239035 (n : ℕ) : ℤ :=
  A239035.P5349055549873088502.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239094.P12982977801086125285

`(5*n^9-30*n^7+63*n^5-50*n^3+12*n)/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A239094.P12982977801086125285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * n ^ 9 : ℤ) - (30 * n ^ 7 : ℤ) + (63 * n ^ 5 : ℤ) - (50 * n ^ 3 : ℤ) + (12 * n : ℤ) : ℚ) / 360

end

end A239094.P12982977801086125285

noncomputable section

/-- A239094: a(n) = (5*n^9 - 30*n^7 + 63*n^5 - 50*n^3 + 12*n)/360.

Offset 0, canonical program `A239094.P12982977801086125285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239094 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239094.P12982977801086125285.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239094.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240607.P9605552413643349258

`2*a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240607.P9605552413643349258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  2 * a (n - 2) + a (n - 3) + a (n - 4)

end

end A240607.P9605552413643349258

noncomputable section

/-- A240607: a(n) = 2*a(n-2) + a(n-3) + a(n-4) for n>=4, a(n) = binomial(n,3) for n

Offset 0, canonical program `A240607.P9605552413643349258`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+a(n-3)+a(n-4)` (program `A240607.P9605552413643349258`, by `A240607.P9605552413643349258.correct`). Lean does not check the parsing of the name. -/
def A240607 (n : ℕ) : ℤ :=
  (A240607.P9605552413643349258.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)+a(n-3)+a(n-4)` (program `A240607.P9605552413643349258`, by `A240607.P9605552413643349258.correct`). Lean does not check the parsing of the name. -/
def A240607.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A241526.P9467040957756449634

`∑[-(∑[∑[n²%3-2]]+1)]+n+1`
-/

namespace A241526.P9467040957756449634
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A241526.P9467040957756449634

noncomputable section

/-- A241526: Number of different positions in which a square with side length k, 1 <= k <= n - floor(n/3), can be placed within a bi-symmetric triangle of 1 X 1 squares of height n.

Offset 1, canonical program `A241526.P9467040957756449634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241526 (n : ℕ) : ℤ :=
  A241526.P9467040957756449634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241530.P4817872474293431452

`((8*n-4)*a(n-1)+16*(n-1)*(n-2)*a(n-2))/(n*(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A241530.P4817872474293431452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (((8 * n : ℤ) - 4 : ℚ) * a (n - 1) + 16 * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * a (n - 2)))) / (n * (n + 1) : ℚ)

end

end A241530.P4817872474293431452

noncomputable section

/-- A241530: a(n) = binomial(n,floor(n/2))*binomial(n+1,floor(n/2+1/2))*(1+floor(n/2))/(1+2*floor(n/2)).

Offset 0, canonical program `A241530.P4817872474293431452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241530 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A241530.P4817872474293431452.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244730.P3543314597448209460

`2*n^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244730.P3543314597448209460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 4

end

end A244730.P3543314597448209460

noncomputable section

/-- A244730: a(n) = 2*n^4.

Offset 0, canonical program `A244730.P3543314597448209460`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^4` (program `A244730.P3543314597448209460`, by `A244730.P3543314597448209460.correct`). Lean does not check the parsing of the name. -/
def A244730 (n : ℕ) : ℤ :=
  (A244730.P3543314597448209460.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^4` (program `A244730.P3543314597448209460`, by `A244730.P3543314597448209460.correct`). Lean does not check the parsing of the name. -/
def A244730.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A245788.P10796889760857720878

`n*∑[∑{e}[xor(n, -n), 2-#]]`
-/

namespace A245788.P10796889760857720878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245788.P10796889760857720878

noncomputable section

/-- A245788: n times the number of 1's in the binary expansion of n.

Offset 0, canonical program `A245788.P10796889760857720878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245788 (n : ℕ) : ℤ :=
  A245788.P10796889760857720878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246172.P6491347172867321071

`2*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=7`
-/

namespace A246172.P6491347172867321071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * a (n - 1) - a (n - 2) + 1

end

end A246172.P6491347172867321071

noncomputable section

/-- A246172: a(n) = (n^2 + 9*n - 8)/2.

Offset 1, canonical program `A246172.P6491347172867321071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246172 (n : ℕ) : ℤ :=
  A246172.P6491347172867321071.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247426.P7295270182602039639

`round(sqrt((n+1)*(a(n-1)+2)))+n+1` with `a(0)=2`
-/

namespace A247426.P7295270182602039639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * (a (n - 1) + 2) : ℝ)) + (n + 1 : ℤ)

end

end A247426.P7295270182602039639

noncomputable section

/-- A247426: Complement of A247425.

Offset 1, canonical program `A247426.P7295270182602039639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247426 (n : ℕ) : ℤ :=
  A247426.P7295270182602039639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248375.P1726270770657607777

`floor(9*n/8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A248375.P1726270770657607777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((n : ℚ) / 8)⌋

end

end A248375.P1726270770657607777

noncomputable section

/-- A248375: a(n) = floor(9*n/8).

Offset 0, canonical program `A248375.P1726270770657607777`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9*n/8)` (program `A248375.P1726270770657607777`, by `A248375.P1726270770657607777.correct`). Lean does not check the parsing of the name. -/
def A248375 (n : ℕ) : ℤ :=
  A248375.P1726270770657607777.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9*n/8)` (program `A248375.P1726270770657607777`, by `A248375.P1726270770657607777.correct`). Lean does not check the parsing of the name. -/
def A248375.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A248521.P8138205606955792279

`ceil(atan(n+1)/acot(n+1))`
-/

namespace A248521.P8138205606955792279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌉

end

end A248521.P8138205606955792279

noncomputable section

/-- A248521: Numbers k such that floor(cot(Pi/(2k+2))) = floor(cot(Pi/(2k))) + 1.

Offset 1, canonical program `A248521.P8138205606955792279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248521 (n : ℕ) : ℤ :=
  A248521.P8138205606955792279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249096.P474669818713901447

`∑[abs(Δ[∪[2*n², 3*n²]])]`
-/

namespace A249096.P474669818713901447
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249096.P474669818713901447

noncomputable section

/-- A249096: {2*h^2, h >=1} union {3*k^2, k >=1}, in increasing order.

Offset 1, canonical program `A249096.P474669818713901447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249096 (n : ℕ) : ℤ :=
  A249096.P474669818713901447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249576.P1518874828092032459

`2*a(n-3)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A249576.P1518874828092032459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 1, 1, 2] fun n a =>
  2 * a (n - 3) + a (n - 6)

end

end A249576.P1518874828092032459

noncomputable section

/-- A249576: List of triples (r,s,t): the matrix M = [[1,4,4][1,3,2][1,2,1]] is raised to successive powers, then (r,s,t) are the square roots of M[3,1], M[1,1], M[1,3] respectively.

Offset 0, canonical program `A249576.P1518874828092032459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249576 (n : ℕ) : ℤ :=
  (A249576.P1518874828092032459.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249999.P15286114010285600544

`(2*n+9-2^(n+5)+3^(n+3))/4`
-/

namespace A249999.P15286114010285600544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) + (9 - (2 ^ (n + 5) : ℤ)) + (3 ^ (n + 3) : ℤ) : ℚ) / 4

end

end A249999.P15286114010285600544

noncomputable section

/-- A249999: Expansion of 1/((1-x)^2*(1-2*x)*(1-3*x)).

Offset 0, canonical program `A249999.P15286114010285600544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249999 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249999.P15286114010285600544.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251654.P1495825928344748751

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A251654.P1495825928344748751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4)

end

end A251654.P1495825928344748751

noncomputable section

/-- A251654: 4-step Fibonacci sequence starting with 0, 1, 1, 0.

Offset 0, canonical program `A251654.P1495825928344748751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251654 (n : ℕ) : ℤ :=
  (A251654.P1495825928344748751.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251704.P15775240905378854447

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A251704.P15775240905378854447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 3] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A251704.P15775240905378854447

noncomputable section

/-- A251704: 4-step Fibonacci sequence starting with 1, 1, 0, 1.

Offset 0, canonical program `A251704.P15775240905378854447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A251704 (n : ℕ) : ℤ :=
  A251704.P15775240905378854447.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A251704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251705.P3515363141737824374

`2*a(n-1)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=3`
-/

namespace A251705.P3515363141737824374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, 3] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A251705.P3515363141737824374

noncomputable section

/-- A251705: 4-step Fibonacci sequence starting with 1, 1, 1, 0.

Offset 0, canonical program `A251705.P3515363141737824374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A251705 (n : ℕ) : ℤ :=
  A251705.P3515363141737824374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A251705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252736.P2865412191134230649

`∑{e}[abs(1-n)+2, #]-1`
-/

namespace A252736.P2865412191134230649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A252736.P2865412191134230649

noncomputable section

/-- A252736: a(1) = a(2) = 0; for n > 2: a(2n) = 1 + a(n), a(2n+1) = a(A064989(2n+1)).

Offset 1, canonical program `A252736.P2865412191134230649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252736 (n : ℕ) : ℤ :=
  A252736.P2865412191134230649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253145.P18019555127228407432

`∑[n+1]%(n+1)²`
-/

namespace A253145.P18019555127228407432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) ^ 2

end

end A253145.P18019555127228407432

noncomputable section

/-- A253145: Triangular numbers (A000217) omitting the term 1.

Offset 0, canonical program `A253145.P18019555127228407432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253145 (n : ℕ) : ℤ :=
  (A253145.P18019555127228407432.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253513.P7768194327896133816

`floor(n/8)-floor((n-1)/8)`
-/

namespace A253513.P7768194327896133816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋ - ⌊((n : ℤ) - 1 : ℚ) / 8⌋

end

end A253513.P7768194327896133816

noncomputable section

/-- A253513: The characteristic function of the multiples of eight.

Offset 0, canonical program `A253513.P7768194327896133816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253513 (n : ℕ) : ℤ :=
  A253513.P7768194327896133816.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253786.P9148671092722524986

`val(abs(1-2*n), 3)`
-/

namespace A253786.P9148671092722524986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |1 - (2 * n : ℤ)|.toNat 3

end

end A253786.P9148671092722524986

noncomputable section

/-- A253786: a(3n) = 0, a(3n+1) = 0, a(3n+2) = 1 + a(n+1).

Offset 0, canonical program `A253786.P9148671092722524986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253786 (n : ℕ) : ℤ :=
  (A253786.P9148671092722524986.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253909.P4396033400827970723

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=9`
-/

namespace A253909.P4396033400827970723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 9] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A253909.P4396033400827970723

noncomputable section

/-- A253909: 1 together with the positive squares.

Offset 0, canonical program `A253909.P4396033400827970723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253909 (n : ℕ) : ℤ :=
  A253909.P4396033400827970723.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253945.P17970283316615102890

`6*C(n+5, 5)`
-/

namespace A253945.P17970283316615102890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (n + 5) 5

end

end A253945.P17970283316615102890

noncomputable section

/-- A253945: a(n) = 6*binomial(n+1,5).

Offset 4, canonical program `A253945.P17970283316615102890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253945 (n : ℕ) : ℤ :=
  (A253945.P17970283316615102890.a (n - 4) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254142.P708098107092791712

`∑[(n+1)*C(n+8, 8)]`
-/

namespace A254142.P708098107092791712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 8) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254142.P708098107092791712

noncomputable section

/-- A254142: a(n) = (9*n+10)*binomial(n+9,9)/10.

Offset 0, canonical program `A254142.P708098107092791712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254142 (n : ℕ) : ℤ :=
  (A254142.P708098107092791712.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254685.P5088935715885700170

`a(n-1)+a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`
-/

namespace A254685.P5088935715885700170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 7] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 5)

end

end A254685.P5088935715885700170

noncomputable section

/-- A254685: Number of partially ordered partitions of n into parts less than or equal to 3, in which the order of adjacent 2's and 3's is unimportant.

Offset 0, canonical program `A254685.P5088935715885700170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254685 (n : ℕ) : ℤ :=
  A254685.P5088935715885700170.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255047.P13163507632883428523

`or(1, 2^n-1)`
-/

namespace A255047.P13163507632883428523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1)

end

end A255047.P13163507632883428523

noncomputable section

/-- A255047: 1 together with the positive terms of A000225.

Offset 0, canonical program `A255047.P13163507632883428523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A255047 (n : ℕ) : ℤ :=
  A255047.P13163507632883428523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A255047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256096.P4265687195087099225

`3*or(1, -a(n-1))` with `a(0)=4`
-/

namespace A256096.P4265687195087099225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  3 * Int.lor 1 (-a (n - 1))

end

end A256096.P4265687195087099225

noncomputable section

/-- A256096: Expansion of (4+3*x)/(1+3*x).

Offset 0, canonical program `A256096.P4265687195087099225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A256096 (n : ℕ) : ℤ :=
  A256096.P4265687195087099225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A256096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257088.P9467679833304934233

`C(n, a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A257088.P9467679833304934233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose n (a (n - 1)) + n

end

end A257088.P9467679833304934233

noncomputable section

/-- A257088: a(2*n) = 4*n if n>0, a(2*n + 1) = 2*n + 1, a(0) = 1.

Offset 0, canonical program `A257088.P9467679833304934233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257088 (n : ℕ) : ℤ :=
  (A257088.P9467679833304934233.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257179.P7967802773149016549

`2-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A257179.P7967802773149016549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 0] fun n a =>
  2 - a (n - 4)

end

end A257179.P7967802773149016549

noncomputable section

/-- A257179: Expansion of (1 + x^5) / ((1 - x) * (1 + x^4)) in powers of x.

Offset 0, canonical program `A257179.P7967802773149016549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257179 (n : ℕ) : ℤ :=
  A257179.P7967802773149016549.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257199.P6074605223564806079

`∑[∑[∑[∑[n]+1]]]`
-/

namespace A257199.P6074605223564806079
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257199.P6074605223564806079

noncomputable section

/-- A257199: a(n) = n*(n+1)*(n+2)*(n^2+2*n+17)/120.

Offset 1, canonical program `A257199.P6074605223564806079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257199 (n : ℕ) : ℤ :=
  (A257199.P6074605223564806079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258431.P10302209761239524539

`((8*n-10)*a(n-1)-(16*n-24)*a(n-2))/(n-1)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A258431.P10302209761239524539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  (((8 * n : ℤ) - 10 : ℚ) * a (n - 1) - ((16 * n : ℤ) - 24 : ℚ) * a (n - 2)) / ((n : ℤ) - 1 : ℚ)

end

end A258431.P10302209761239524539

noncomputable section

/-- A258431: Sum over all peaks of Dyck paths of semilength n of the arithmetic mean of the x and y coordinates.

Offset 0, canonical program `A258431.P10302209761239524539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A258431.P10302209761239524539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258806.P6095875049815832673

`n^7+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258806.P6095875049815832673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7 + 1

end

end A258806.P6095875049815832673

noncomputable section

/-- A258806: a(n) = n^7 + 1.

Offset 0, canonical program `A258806.P6095875049815832673`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+1` (program `A258806.P6095875049815832673`, by `A258806.P6095875049815832673.correct`). Lean does not check the parsing of the name. -/
def A258806 (n : ℕ) : ℤ :=
  (A258806.P6095875049815832673.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+1` (program `A258806.P6095875049815832673`, by `A258806.P6095875049815832673.correct`). Lean does not check the parsing of the name. -/
def A258806.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A258808.P6415706604125814936

`(n+1)^7-1`
-/

namespace A258808.P6415706604125814936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 7 : ℤ) - 1

end

end A258808.P6415706604125814936

noncomputable section

/-- A258808: a(n) = n^7 - 1.

Offset 1, canonical program `A258808.P6415706604125814936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258808 (n : ℕ) : ℤ :=
  A258808.P6415706604125814936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259109.P4108732426856012358

`∑[2*n^6]`
-/

namespace A259109.P4108732426856012358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259109.P4108732426856012358

noncomputable section

/-- A259109: 2*A000540.

Offset 0, canonical program `A259109.P4108732426856012358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259109 (n : ℕ) : ℤ :=
  (A259109.P4108732426856012358.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260196.P12598155231434087214

`a(n-1)` with `a(0)=1, a(1)=-3, a(2)=-1`
-/

namespace A260196.P12598155231434087214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -3, -1] fun n a =>
  a (n - 1)

end

end A260196.P12598155231434087214

noncomputable section

/-- A260196: 1, -3, followed by -1's.

Offset 0, canonical program `A260196.P12598155231434087214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260196 (n : ℕ) : ℤ :=
  A260196.P12598155231434087214.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260878.P18120212369286002216

`((4*n-2)*a(n-1)-3*n+2)/n` with `a(0)=2, a(1)=2`
-/

namespace A260878.P18120212369286002216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n a =>
  (((4 * n : ℤ) - 2 : ℚ) * a (n - 1) - (3 * n : ℚ) + 2) / (n : ℚ)

end

end A260878.P18120212369286002216

noncomputable section

/-- A260878: Number of set partitions of {1, 2, ..., 2*n} with sizes in {[n, n], [2n]}.

Offset 0, canonical program `A260878.P18120212369286002216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260878 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A260878.P18120212369286002216.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261547.P10609432847933636692

`1+3*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A261547.P10609432847933636692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + 3 * a (n - 1)

end

end A261547.P10609432847933636692

noncomputable section

/-- A261547: The 3 X 3 X ... X 3 dots problem (3, n times): minimal number of straight lines (connected at their endpoints) required to pass through 3^n dots arranged in a 3 X 3 X ... X 3 grid.

Offset 0, canonical program `A261547.P10609432847933636692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A261547 (n : ℕ) : ℤ :=
  (A261547.P10609432847933636692.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A261547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263449.P6118247294194958249

`n+1+(1-(-1)^n)*(-1)^(n*(n-1)/2)`
-/

namespace A263449.P6118247294194958249
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) + (1 + (1 - (-1) ^ n : ℝ) * (-1 : ℝ) ^ ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2) : ℝ))

end

end A263449.P6118247294194958249

noncomputable section

/-- A263449: Permutation of the natural numbers: [4k+1, 4k+4, 4k+3, 4k+2, ...].

Offset 0, canonical program `A263449.P6118247294194958249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263449 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263449.P6118247294194958249.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263689.P11228605254382763147

`(2*n^6-6*n^5+5*n^4-n²+12)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A263689.P11228605254382763147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 6 : ℤ) - (6 * n ^ 5 : ℤ) + (5 * n ^ 4 : ℤ) - (n ^ 2 : ℤ) + 12 : ℚ) / 12

end

end A263689.P11228605254382763147

noncomputable section

/-- A263689: a(n) = (2*n^6 - 6*n^5 + 5*n^4 - n^2 + 12)/12.

Offset 0, canonical program `A263689.P11228605254382763147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263689 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263689.P11228605254382763147.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264443.P17305780701701451161

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=11, a(2)=28, a(3)=52`
-/

namespace A264443.P17305780701701451161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 11, 28, 52] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A264443.P17305780701701451161

noncomputable section

/-- A264443: a(n) = n*(n + 5)*(n + 10)/6.

Offset 0, canonical program `A264443.P17305780701701451161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264443 (n : ℕ) : ℤ :=
  A264443.P17305780701701451161.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265021.P3608315180476438173

`8/3*n²*(n+1)²*(2*n²+2*n-1)`
-/

namespace A265021.P3608315180476438173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) / 3 * (n ^ 2 : ℚ) * ((n + 1) ^ 2 : ℚ) * ((2 * n ^ 2 + 2 * n : ℤ) - 1 : ℚ)

end

end A265021.P3608315180476438173

noncomputable section

/-- A265021: Sum of fifth powers of the first n even numbers.

Offset 0, canonical program `A265021.P3608315180476438173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265021 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265021.P3608315180476438173.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265413.P7587729247371265601

`2*comp[floor((n/2)²)+2]+1-n`
-/

namespace A265413.P7587729247371265601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

end

end A265413.P7587729247371265601

noncomputable section

/-- A265413: Positions of records in A265410: a(0) = 1; for n >= 1, a(n) = 1 + A265412(n-1).

Offset 0, canonical program `A265413.P7587729247371265601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265413 (n : ℕ) : ℤ :=
  A265413.P7587729247371265601.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265804.P17438189311100578741

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=19, a(2)=29`
-/

namespace A265804.P17438189311100578741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19, 29] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A265804.P17438189311100578741

noncomputable section

/-- A265804: Coefficient of x^2 in minimal polynomial of the continued fraction [1^n,5,1,1,1,...], where 1^n means n ones.

Offset 0, canonical program `A265804.P17438189311100578741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265804 (n : ℕ) : ℤ :=
  A265804.P17438189311100578741.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266259.P15510353960570176509

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=7, a(4)=14`
-/

namespace A266259.P15510353960570176509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 7, 14] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A266259.P15510353960570176509

noncomputable section

/-- A266259: Total number of OFF (white) cells after n iterations of the "Rule 11" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266259.P15510353960570176509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266259 (n : ℕ) : ℤ :=
  A266259.P15510353960570176509.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266304.P15606897674207523474

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6, a(4)=14`
-/

namespace A266304.P15606897674207523474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 6, 14] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A266304.P15606897674207523474

noncomputable section

/-- A266304: Total number of OFF (white) cells after n iterations of the "Rule 15" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266304.P15606897674207523474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266304 (n : ℕ) : ℤ :=
  A266304.P15606897674207523474.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266387.P15552321367423150324

`7*C(n, 5)`
-/

namespace A266387.P15552321367423150324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 5

end

end A266387.P15552321367423150324

noncomputable section

/-- A266387: Number of orbits of Aut(Z^7) as function of the infinity norm n of the representative lattice point of the orbit, when the cardinality of the orbit is equal to 322560.

Offset 1, canonical program `A266387.P15552321367423150324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266387 (n : ℕ) : ℤ :=
  (A266387.P15552321367423150324.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266591.P9570154135479766223

`ceil(∏[acot(2-n)])`
-/

namespace A266591.P9570154135479766223
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (2 - (n : ℤ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A266591.P9570154135479766223

noncomputable section

/-- A266591: Middle column of the "Rule 37" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266591.P9570154135479766223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266591 (n : ℕ) : ℤ :=
  A266591.P9570154135479766223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266769.P14734831888474551641

`∑[round((n+3)²/12)-a(n-1)]` with `a(0)=1`
-/

namespace A266769.P14734831888474551641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266769.P14734831888474551641

noncomputable section

/-- A266769: Expansion of 1/((1-x)*(1-x^2)^2*(1-x^3)).

Offset 0, canonical program `A266769.P14734831888474551641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266769 (n : ℕ) : ℤ :=
  A266769.P14734831888474551641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266959.P10927831982948970145

`or(1, 10^n)+n`
-/

namespace A266959.P10927831982948970145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ n) + n

end

end A266959.P10927831982948970145

noncomputable section

/-- A266959: Smallest n-digit number ending in n.

Offset 1, canonical program `A266959.P10927831982948970145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A266959 (n : ℕ) : ℤ :=
  (A266959.P10927831982948970145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A266959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266977.P6846625566273109342

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=3`
-/

namespace A266977.P6846625566273109342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 3] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A266977.P6846625566273109342

noncomputable section

/-- A266977: Number of ON (black) cells in the n-th iteration of the "Rule 78" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266977.P6846625566273109342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266977 (n : ℕ) : ℤ :=
  A266977.P6846625566273109342.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267155.P15890589609803065448

`a(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`
-/

namespace A267155.P15890589609803065448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 1, 1, 1, 1, 1] fun n a =>
  a (a (n - 1))

end

end A267155.P15890589609803065448

noncomputable section

/-- A267155: Middle column of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267155.P15890589609803065448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267155 (n : ℕ) : ℤ :=
  (A267155.P15890589609803065448.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267872.P10851877808173877307

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=7`
-/

namespace A267872.P10851877808173877307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 7] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A267872.P10851877808173877307

noncomputable section

/-- A267872: Number of ON (black) cells in the n-th iteration of the "Rule 237" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267872.P10851877808173877307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267872 (n : ℕ) : ℤ :=
  A267872.P10851877808173877307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268340.P4995852966021382419

`round(n/∏{p}[n+1, #+n])`
-/

namespace A268340.P4995852966021382419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (p + n) : ℕ) : ℚ))

end

end A268340.P4995852966021382419

noncomputable section

/-- A268340: Characteristic function of the prime powers p^k, k >= 2.

Offset 1, canonical program `A268340.P4995852966021382419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268340 (n : ℕ) : ℤ :=
  A268340.P4995852966021382419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270510.P8534910118944429918

`∑[6*or(1, n)-3]`
-/

namespace A270510.P8534910118944429918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.lor 1 n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270510.P8534910118944429918

noncomputable section

/-- A270510: Number of 2X2X2 triangular 0..n arrays with some element plus some adjacent element totalling n+1 exactly once.

Offset 1, canonical program `A270510.P8534910118944429918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270510 (n : ℕ) : ℤ :=
  A270510.P8534910118944429918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270545.P10861919917999691608

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=15`
-/

namespace A270545.P10861919917999691608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9, 15] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A270545.P10861919917999691608

noncomputable section

/-- A270545: Number of equilateral triangle units forming perimeter of equilateral triangle.

Offset 0, canonical program `A270545.P10861919917999691608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270545 (n : ℕ) : ℤ :=
  A270545.P10861919917999691608.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271040.P12685862796763117542

`n*(n-1)*(n-2)*(n-3)*(n-4)*(n-5)/72`
-/

namespace A271040.P12685862796763117542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 4 : ℚ) * (((n : ℤ) - 5 : ℚ) / 72)))))

end

end A271040.P12685862796763117542

noncomputable section

/-- A271040: Number of different 3 against 3 matches given n players.

Offset 0, canonical program `A271040.P12685862796763117542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271040.P12685862796763117542.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271102.P1341188632352803855

`∏{e}[n+1, -val(n+2, #+n)]`
-/

namespace A271102.P1341188632352803855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-(SequenceMachineLib.valuation (n + 2) (Nat.factorization (f1 n) p + n) : ℤ))

end

end A271102.P1341188632352803855

noncomputable section

/-- A271102: a(n) is multiplicative with a(p^e) = -1 if e=2, a(p^e) = 0 if e=1 or e>2.

Offset 1, canonical program `A271102.P1341188632352803855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271102 (n : ℕ) : ℤ :=
  A271102.P1341188632352803855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271535.P17306942896462329582

`(n*(n+1)*(2*n+1)/6)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271535.P17306942896462329582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) * ((n + 1 : ℚ) * ((2 * n + 1 : ℚ) / 6))) ^ 2

end

end A271535.P17306942896462329582

noncomputable section

/-- A271535: a(n) = ( n*(n + 1)*(2*n + 1)/6 )^2.

Offset 0, canonical program `A271535.P17306942896462329582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271535.P17306942896462329582.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271567.P8825504423723623360

`(n+1)*(n+2)*(n+3)*(n+4)*(12*n+5)/120`
-/

namespace A271567.P8825504423723623360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((n + 4 : ℚ) * ((12 * n + 5 : ℚ) / 120))))

end

end A271567.P8825504423723623360

noncomputable section

/-- A271567: Convolution of nonzero triangular numbers (A000217) and nonzero tetradecagonal numbers (A051866).

Offset 0, canonical program `A271567.P8825504423723623360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271567.P8825504423723623360.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271624.P1258449586895176214

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=4, a(2)=10`
-/

namespace A271624.P1258449586895176214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 10] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A271624.P1258449586895176214

noncomputable section

/-- A271624: a(n) = 2*n^2 - 4*n + 4.

Offset 1, canonical program `A271624.P1258449586895176214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271624 (n : ℕ) : ℤ :=
  A271624.P1258449586895176214.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271663.P17355818815159385050

`(n+1)*(n+2)*(n+3)*(6*n²+19*n+20)/120`
-/

namespace A271663.P17355818815159385050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((6 * n ^ 2 + 19 * n + 20 : ℚ) / 120)))

end

end A271663.P17355818815159385050

noncomputable section

/-- A271663: Convolution of nonzero squares (A000290) with nonzero pentagonal numbers (A000326).

Offset 0, canonical program `A271663.P17355818815159385050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271663 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271663.P17355818815159385050.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271740.P6949473724138630553

`3*n²-2*n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271740.P6949473724138630553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - (2 * n : ℤ) + 2

end

end A271740.P6949473724138630553

noncomputable section

/-- A271740: a(n) = 3*n^2 - 2*n + 2.

Offset 0, canonical program `A271740.P6949473724138630553`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+2` (program `A271740.P6949473724138630553`, by `A271740.P6949473724138630553.correct`). Lean does not check the parsing of the name. -/
def A271740 (n : ℕ) : ℤ :=
  A271740.P6949473724138630553.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+2` (program `A271740.P6949473724138630553`, by `A271740.P6949473724138630553.correct`). Lean does not check the parsing of the name. -/
def A271740.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A273724.P10378108779640438672

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=1, a(5)=4, a(6)=4, a(7)=6, a(8)=3, a(9)=8`
-/

namespace A273724.P10378108779640438672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2, 1, 4, 4, 6, 3, 8] fun n a =>
  a (n - 1) + a (n - 8) - a (n - 9)

end

end A273724.P10378108779640438672

noncomputable section

/-- A273724: Place n equally-spaced points around a circle, labeled 0,1,2,...,n-1. For each i = 0..n-1 such that 3i != i mod n, draw an (undirected) chord from i to (3i mod n). Then a(n) is the total number of distinct chords.

Offset 0, canonical program `A273724.P10378108779640438672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273724 (n : ℕ) : ℤ :=
  A273724.P10378108779640438672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274070.P8091260610285469047

`round(atan(round(n/4)))`
-/

namespace A274070.P8091260610285469047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (SequenceMachineLib.roundAway ((n : ℚ) / 4) : ℝ))

end

end A274070.P8091260610285469047

noncomputable section

/-- A274070: Integer part of the sum of the inverses of the first n primes.

Offset 1, canonical program `A274070.P8091260610285469047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 754 terms. -/
def A274070 (n : ℕ) : ℤ :=
  A274070.P8091260610285469047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 754 terms. -/
def A274070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274497.P15700823160003549097

`2*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A274497.P15700823160003549097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 8 * a (n - 3)

end

end A274497.P15700823160003549097

noncomputable section

/-- A274497: Sum of the degrees of asymmetry of all binary words of length n.

Offset 0, canonical program `A274497.P15700823160003549097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274497 (n : ℕ) : ℤ :=
  A274497.P15700823160003549097.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275778.P8831256019444750021

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275778.P8831256019444750021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A275778.P8831256019444750021

noncomputable section

/-- A275778: Tribonacci-like sequence a(n) = a(n-1) + a(n-2) + a(n-3) for n >= 3, with a(0) = 1, a(1) = 2, a(2) = 1.

Offset 0, canonical program `A275778.P8831256019444750021`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A275778.P8831256019444750021`, by `A275778.P8831256019444750021.correct`). Lean does not check the parsing of the name. -/
def A275778 (n : ℕ) : ℤ :=
  (A275778.P8831256019444750021.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A275778.P8831256019444750021`, by `A275778.P8831256019444750021.correct`). Lean does not check the parsing of the name. -/
def A275778.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A276658.P15196334201113624955

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276658.P15196334201113624955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A276658.P15196334201113624955

noncomputable section

/-- A276658: Tribonacci-like sequence a(n) = a(n-1) + a(n-2) + a(n-3) for n >= 3, with a(0) = 1, a(1) = 2, a(2) = 0.

Offset 0, canonical program `A276658.P15196334201113624955`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A276658.P15196334201113624955`, by `A276658.P15196334201113624955.correct`). Lean does not check the parsing of the name. -/
def A276658 (n : ℕ) : ℤ :=
  (A276658.P15196334201113624955.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A276658.P15196334201113624955`, by `A276658.P15196334201113624955.correct`). Lean does not check the parsing of the name. -/
def A276658.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A276853.P6872870601422621347

`floor(2*e*n)`
-/

namespace A276853.P6872870601422621347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.exp 1 * (n : ℝ))⌋

end

end A276853.P6872870601422621347

noncomputable section

/-- A276853: Beatty sequence for 2*e.

Offset 0, canonical program `A276853.P6872870601422621347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276853 (n : ℕ) : ℤ :=
  A276853.P6872870601422621347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277252.P7852424153150070223

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277252.P7852424153150070223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  a (n - 2) + a (n - 3) + a (n - 4)

end

end A277252.P7852424153150070223

noncomputable section

/-- A277252: a(n) = a(n-2) + a(n-3) + a(n-4) with a(0) = 0, a(1) = a(2) = 1, a(3) = 0.

Offset 0, canonical program `A277252.P7852424153150070223`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A277252.P7852424153150070223`, by `A277252.P7852424153150070223.correct`). Lean does not check the parsing of the name. -/
def A277252 (n : ℕ) : ℤ :=
  (A277252.P7852424153150070223.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A277252.P7852424153150070223`, by `A277252.P7852424153150070223.correct`). Lean does not check the parsing of the name. -/
def A277252.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A277253.P16680187528885188227

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277253.P16680187528885188227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 2) + a (n - 3) + a (n - 4)

end

end A277253.P16680187528885188227

noncomputable section

/-- A277253: a(n) = a(n-2) + a(n-3) + a(n-4) for n>3, a(0)=1, a(1)=a(2)=0, a(3)=2.

Offset 0, canonical program `A277253.P16680187528885188227`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A277253.P16680187528885188227`, by `A277253.P16680187528885188227.correct`). Lean does not check the parsing of the name. -/
def A277253 (n : ℕ) : ℤ :=
  (A277253.P16680187528885188227.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A277253.P16680187528885188227`, by `A277253.P16680187528885188227.correct`). Lean does not check the parsing of the name. -/
def A277253.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A277935.P16512286836803428491

`2*C(n+4, 5)`
-/

namespace A277935.P16512286836803428491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 4) 5

end

end A277935.P16512286836803428491

noncomputable section

/-- A277935: Number of ways 2*n-1 people can vote on three candidates so that the Condorcet paradox arises.

Offset 1, canonical program `A277935.P16512286836803428491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277935 (n : ℕ) : ℤ :=
  (A277935.P16512286836803428491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278990.P4126946243470232022

`(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A278990.P4126946243470232022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) + a (n - 2)

end

end A278990.P4126946243470232022

noncomputable section

/-- A278990: Number of loopless linear chord diagrams with n chords.

Offset 0, canonical program `A278990.P4126946243470232022`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278990 (n : ℕ) : ℤ :=
  A278990.P4126946243470232022.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279060.P16013489652105091246

`∑{d}[n, and(#², #%3)]`
-/

namespace A279060.P16013489652105091246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land (d ^ 2) (d % 3)

end

end A279060.P16013489652105091246

noncomputable section

/-- A279060: Number of divisors of n of the form 6*k + 1.

Offset 0, canonical program `A279060.P16013489652105091246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279060 (n : ℕ) : ℤ :=
  (A279060.P16013489652105091246.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279608.P16231658479277091656

`comp[floor(e*n/2)]`
-/

namespace A279608.P16231658479277091656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * ((n : ℚ) / 2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A279608.P16231658479277091656

noncomputable section

/-- A279608: Beatty sequence for e/(e - 2); i.e., a(n) = floor(n*e/(e - 2)).

Offset 1, canonical program `A279608.P16231658479277091656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279608 (n : ℕ) : ℤ :=
  (A279608.P16231658479277091656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279891.P15168887197681408912

`2*floor((sqrt(1+8*n)-1)/2)`
-/

namespace A279891.P15168887197681408912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Real.sqrt (1 + 8 * n : ℝ) - 1) / 2⌋

end

end A279891.P15168887197681408912

noncomputable section

/-- A279891: Triangle read by rows, T(n,k) = 2*n, with n>=k>=0.

Offset 0, canonical program `A279891.P15168887197681408912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279891 (n : ℕ) : ℤ :=
  A279891.P15168887197681408912.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281773.P17493314902543766414

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9`
-/

namespace A281773.P17493314902543766414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 9] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3)

end

end A281773.P17493314902543766414

noncomputable section

/-- A281773: Number of distinct topologies on an n-set that have exactly 4 open sets.

Offset 0, canonical program `A281773.P17493314902543766414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281773 (n : ℕ) : ℤ :=
  A281773.P17493314902543766414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282414.P4850476856454499360

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=0, a(4)=31, a(5)=0`
-/

namespace A282414.P4850476856454499360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 0, 31, 0] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A282414.P4850476856454499360

noncomputable section

/-- A282414: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282414.P4850476856454499360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282414 (n : ℕ) : ℤ :=
  A282414.P4850476856454499360.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285361.P4629678575267158130

`1/4*(3^(n+3)-5*2^(n+4)+4*n²+26*n+53)`
-/

namespace A285361.P4629678575267158130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((3 ^ (n + 3) : ℤ) - (5 * 2 ^ (n + 4) : ℤ) + (4 * n ^ 2 : ℤ) + (26 * n : ℤ) + 53 : ℚ)

end

end A285361.P4629678575267158130

noncomputable section

/-- A285361: The number of tight 3 X n pavings.

Offset 0, canonical program `A285361.P4629678575267158130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285361 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285361.P4629678575267158130.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285869.P8750248249387989221

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A285869.P8750248249387989221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 1, 2] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A285869.P8750248249387989221

noncomputable section

/-- A285869: a(n) is the number of zeros of the Chebyshev S(n, x) polynomial in the open interval (-sqrt(2), +sqrt(2)).

Offset 0, canonical program `A285869.P8750248249387989221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285869 (n : ℕ) : ℤ :=
  A285869.P8750248249387989221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285869.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A287468.P8608159567382229639

`11*a(n-2)-10*a(n-4)` with `a(0)=1, a(1)=0, a(2)=11, a(3)=0`
-/

namespace A287468.P8608159567382229639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 11, 0] fun n a =>
  11 * a (n - 2) - 10 * a (n - 4)

end

end A287468.P8608159567382229639

noncomputable section

/-- A287468: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 276", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287468.P8608159567382229639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287468 (n : ℕ) : ℤ :=
  A287468.P8608159567382229639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A288599.P15833561674118319308

`2*a(n-1)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=10, a(4)=16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A288599.P15833561674118319308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6, 10, 16] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A288599.P15833561674118319308

noncomputable section

/-- A288599: a(n) = 2*a(n-1) - a(n-4) for n >= 4, where a(0) = 2, a(1) = 4, a(2) = 6, a(3) = 10, a(4) = 16.

Offset 0, canonical program `A288599.P15833561674118319308`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-4)` (program `A288599.P15833561674118319308`, by `A288599.P15833561674118319308.correct`). Lean does not check the parsing of the name. -/
def A288599 (n : ℕ) : ℤ :=
  A288599.P15833561674118319308.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-4)` (program `A288599.P15833561674118319308`, by `A288599.P15833561674118319308.correct`). Lean does not check the parsing of the name. -/
def A288599.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A289207.P4353291363742306282

`floor(n-atan(n))`
-/

namespace A289207.P4353291363742306282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A289207.P4353291363742306282

noncomputable section

/-- A289207: a(n) = max(0, n-2).

Offset 0, canonical program `A289207.P4353291363742306282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289207 (n : ℕ) : ℤ :=
  A289207.P4353291363742306282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289389.P4744459025562339149

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A289389.P4744459025562339149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4)

end

end A289389.P4744459025562339149

noncomputable section

/-- A289389: a(n) = Sum_{k>=0} (-1)^k*binomial(n,5*k+4).

Offset 0, canonical program `A289389.P4744459025562339149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A289389 (n : ℕ) : ℤ :=
  A289389.P4744459025562339149.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A289389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289814.P11371932108795153936

`2*a(floor(n/3))+n-3*floor(n/3)-n²%3` with `a(0)=0`
-/

namespace A289814.P11371932108795153936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A289814.P11371932108795153936

noncomputable section

/-- A289814: A binary encoding of the twos in ternary representation of n (see Comments for precise definition).

Offset 0, canonical program `A289814.P11371932108795153936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289814 (n : ℕ) : ℤ :=
  A289814.P11371932108795153936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290743.P8327156519044207070

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A290743.P8327156519044207070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 6] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A290743.P8327156519044207070

noncomputable section

/-- A290743: Maximum number of distinct Lyndon factors that can appear in words of length n over an alphabet of size 2.

Offset 1, canonical program `A290743.P8327156519044207070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290743 (n : ℕ) : ℤ :=
  A290743.P8327156519044207070.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291289.P3595557876990996214

`a(n-2)+a(n-3)` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A291289.P3595557876990996214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 0] fun n a =>
  a (n - 2) + a (n - 3)

end

end A291289.P3595557876990996214

noncomputable section

/-- A291289: The Padovan sequence A000931 doubled.

Offset 0, canonical program `A291289.P3595557876990996214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 823 terms. -/
def A291289 (n : ℕ) : ℤ :=
  (A291289.P3595557876990996214.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 823 terms. -/
def A291289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292044.P11746342970775384918

`8*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A292044.P11746342970775384918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  8 * a (n - 1) - 16 * a (n - 2)

end

end A292044.P11746342970775384918

noncomputable section

/-- A292044: Wiener index of the n-halved cube graph.

Offset 1, canonical program `A292044.P11746342970775384918`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292044 (n : ℕ) : ℤ :=
  A292044.P11746342970775384918.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293604.P13658072248823117533

`a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A293604.P13658072248823117533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 2 * (((n : ℤ) - 1) * a (n - 2))

end

end A293604.P13658072248823117533

noncomputable section

/-- A293604: Expansion of e.g.f.: exp(x * (1 - x)).

Offset 0, canonical program `A293604.P13658072248823117533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293604 (n : ℕ) : ℤ :=
  A293604.P13658072248823117533.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294935.P4767353041558056281

`round(1/∑{d}[n+1, 1/#])`
-/

namespace A294935.P4767353041558056281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (∑ d ∈ Nat.divisors (f1 n), 1 / (d : ℚ)))

end

end A294935.P4767353041558056281

noncomputable section

/-- A294935: Characteristic function for nonabundant numbers (A263837): a(n) = 1 if A001065(n) <= n, 0 otherwise.

Offset 1, canonical program `A294935.P4767353041558056281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294935 (n : ℕ) : ℤ :=
  A294935.P4767353041558056281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295680.P249188820151412069

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295680.P249188820151412069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A295680.P249188820151412069

noncomputable section

/-- A295680: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 0, a(1) = 0, a(2) = 0, a(3) = 2.

Offset 0, canonical program `A295680.P249188820151412069`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295680.P249188820151412069`, by `A295680.P249188820151412069.correct`). Lean does not check the parsing of the name. -/
def A295680 (n : ℕ) : ℤ :=
  (A295680.P249188820151412069.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A295680.P249188820151412069`, by `A295680.P249188820151412069.correct`). Lean does not check the parsing of the name. -/
def A295680.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A295856.P16363189496221070720

`a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295856.P16363189496221070720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 1] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3) - 2 * a (n - 4)

end

end A295856.P16363189496221070720

noncomputable section

/-- A295856: a(n) = a(n-1) + 3*a(n-2) -2*a(n-3) - 2*a(n-4), where a(0) = 0, a(1) = 0, a(2) = 3, a(3) = 1.

Offset 0, canonical program `A295856.P16363189496221070720`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295856.P16363189496221070720`, by `A295856.P16363189496221070720.correct`). Lean does not check the parsing of the name. -/
def A295856 (n : ℕ) : ℤ :=
  A295856.P16363189496221070720.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)-2*a(n-3)-2*a(n-4)` (program `A295856.P16363189496221070720`, by `A295856.P16363189496221070720.correct`). Lean does not check the parsing of the name. -/
def A295856.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A298011.P12682259250450599023

`a(and(n, n-1))+n` with `a(0)=0`
-/

namespace A298011.P12682259250450599023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + n

end

end A298011.P12682259250450599023

noncomputable section

/-- A298011: If n = Sum_{i=1..h} 2^b_i with 0 <= b_1 < ... < b_h, then a(n) = Sum_{i=1..h} i * 2^b_i.

Offset 0, canonical program `A298011.P12682259250450599023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298011 (n : ℕ) : ℤ :=
  (A298011.P12682259250450599023.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298026.P4783295238360363022

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=6, a(3)=18, a(4)=12`
-/

namespace A298026.P4783295238360363022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 6, 18, 12] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A298026.P4783295238360363022

noncomputable section

/-- A298026: Coordination sequence of Dual(3.6.3.6) tiling with respect to a hexavalent node.

Offset 0, canonical program `A298026.P4783295238360363022`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298026 (n : ℕ) : ℤ :=
  A298026.P4783295238360363022.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298026.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299338.P3493649860711202520

`C(floor(n/2)+6, 6)`
-/

namespace A299338.P3493649860711202520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 6).toNat 6

end

end A299338.P3493649860711202520

noncomputable section

/-- A299338: Expansion of 1 / ((1 - x)^7*(1 + x)^6).

Offset 0, canonical program `A299338.P3493649860711202520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299338 (n : ℕ) : ℤ :=
  (A299338.P3493649860711202520.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300847.P3184734527947357789

`12*C(n, 5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300847.P3184734527947357789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * Nat.choose n 5

end

end A300847.P3184734527947357789

noncomputable section

/-- A300847: a(n) = 12*binomial(n, 5).

Offset 0, canonical program `A300847.P3184734527947357789`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*C(n, 5)` (program `A300847.P3184734527947357789`, by `A300847.P3184734527947357789.correct`). Lean does not check the parsing of the name. -/
def A300847 (n : ℕ) : ℤ :=
  (A300847.P3184734527947357789.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*C(n, 5)` (program `A300847.P3184734527947357789`, by `A300847.P3184734527947357789.correct`). Lean does not check the parsing of the name. -/
def A300847.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A301291.P16645814743165127850

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=13, a(4)=18`
-/

namespace A301291.P16645814743165127850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9, 13, 18] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A301291.P16645814743165127850

noncomputable section

/-- A301291: Expansion of (x^4+3*x^3+x^2+3*x+1)/((x^2+1)*(x-1)^2).

Offset 0, canonical program `A301291.P16645814743165127850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301291 (n : ℕ) : ℤ :=
  A301291.P16645814743165127850.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302048.P8618753497546879016

`∑{p}[n, val(#²+1, n+1)]`
-/

namespace A302048.P8618753497546879016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p ^ 2 + 1) (n + 1)

end

end A302048.P8618753497546879016

noncomputable section

/-- A302048: a(n) = 1 if n = p^2 for some prime p, otherwise 0. Characteristic function of squares of primes (A001248).

Offset 0, canonical program `A302048.P8618753497546879016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302048 (n : ℕ) : ℤ :=
  (A302048.P8618753497546879016.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302126.P11251194459327783039

`a(n-2)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1`
-/

namespace A302126.P11251194459327783039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1] fun n a =>
  a (n - 2) + a (n - 4)

end

end A302126.P11251194459327783039

noncomputable section

/-- A302126: Interleaved Fibonacci and Lucas numbers.

Offset 0, canonical program `A302126.P11251194459327783039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302126 (n : ℕ) : ℤ :=
  (A302126.P11251194459327783039.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A303427.P18184235038652700757

`a(n-2)+a(n-4)` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A303427.P18184235038652700757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 1] fun n a =>
  a (n - 2) + a (n - 4)

end

end A303427.P18184235038652700757

noncomputable section

/-- A303427: Interleaved Lucas and Fibonacci numbers.

Offset 0, canonical program `A303427.P18184235038652700757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303427 (n : ℕ) : ℤ :=
  (A303427.P18184235038652700757.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305444.P14506373320273389600

`∏{p}[n+1, or(1, #-2)]`
-/

namespace A305444.P14506373320273389600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.lor 1 ((p : ℤ) - 2)

end

end A305444.P14506373320273389600

noncomputable section

/-- A305444: a(n) = Product_{p is odd and prime and divisor of n} (p - 2).

Offset 1, canonical program `A305444.P14506373320273389600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305444 (n : ℕ) : ℤ :=
  A305444.P14506373320273389600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305750.P16265421090738274738

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A305750.P16265421090738274738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3)

end

end A305750.P16265421090738274738

noncomputable section

/-- A305750: Number of achiral color patterns (set partitions) in a row or cycle of length n with 4 or fewer colors (subsets).

Offset 0, canonical program `A305750.P16265421090738274738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305750 (n : ℕ) : ℤ :=
  A305750.P16265421090738274738.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306357.P16467767130063391388

`2*a(n-1)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=20, a(6)=38`
-/

namespace A306357.P16467767130063391388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 10, 20, 38] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A306357.P16467767130063391388

noncomputable section

/-- A306357: Number of nonempty subsets of {1, ..., n} containing no three cyclically successive elements.

Offset 0, canonical program `A306357.P16467767130063391388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306357 (n : ℕ) : ℤ :=
  A306357.P16467767130063391388.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306486.P14068160640840078580

`ceil(sqrt(exp(n)))-ceil(sqrt(exp(n-1)))`
-/

namespace A306486.P14068160640840078580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.exp (n : ℝ))⌉ - ⌈Real.sqrt (Real.exp ((n : ℤ) - 1 : ℝ))⌉

end

end A306486.P14068160640840078580

noncomputable section

/-- A306486: Number of squares in the interval [e^(n-1), e^n).

Offset 0, canonical program `A306486.P14068160640840078580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306486 (n : ℕ) : ℤ :=
  A306486.P14068160640840078580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307872.P8733216762987257633

`∑[∑[∑[n+1]]%(n+1)]+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A307872.P8733216762987257633
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A307872.P8733216762987257633

noncomputable section

/-- A307872: Sum of the smallest parts in the partitions of n into 3 parts.

Offset 1, canonical program `A307872.P8733216762987257633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307872 (n : ℕ) : ℤ :=
  (A307872.P8733216762987257633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308700.P1777296624039622923

`12*a(n-1)-52*a(n-2)+96*a(n-3)-64*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=18`
-/

namespace A308700.P1777296624039622923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 18] fun n a =>
  12 * a (n - 1) - 52 * a (n - 2) + 96 * a (n - 3) - 64 * a (n - 4)

end

end A308700.P1777296624039622923

noncomputable section

/-- A308700: a(n) = n * 2^(n - 2) * (2^(n - 1) - 1).

Offset 0, canonical program `A308700.P1777296624039622923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308700 (n : ℕ) : ℤ :=
  A308700.P1777296624039622923.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309294.P10713753774720420333

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=20, a(5)=60`
-/

namespace A309294.P10713753774720420333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 6, 20, 60] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A309294.P10713753774720420333

noncomputable section

/-- A309294: (1/2) times the sum of the elements of all subsets of [n] whose sum is divisible by two.

Offset 0, canonical program `A309294.P10713753774720420333`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309294 (n : ℕ) : ℤ :=
  A309294.P10713753774720420333.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316865.P16119977982805478621

`∑{digits}[n, val(#+2, 6)]`
-/

namespace A316865.P16119977982805478621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 2) 6).sum

end

end A316865.P16119977982805478621

noncomputable section

/-- A316865: Number of times 4 appears in decimal expansion of n.

Offset 0, canonical program `A316865.P16119977982805478621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316865 (n : ℕ) : ℤ :=
  (A316865.P16119977982805478621.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316866.P4603436020807158476

`∑{digits}[n, val(#+1, 6)]`
-/

namespace A316866.P4603436020807158476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 6).sum

end

end A316866.P4603436020807158476

noncomputable section

/-- A316866: Number of times 5 appears in decimal expansion of n.

Offset 0, canonical program `A316866.P4603436020807158476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316866 (n : ℕ) : ℤ :=
  (A316866.P4603436020807158476.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319691.P3091071718083807352

`∏{d}[n+1, (#%3)%2]`
-/

namespace A319691.P3091071718083807352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d % 3 % 2

end

end A319691.P3091071718083807352

noncomputable section

/-- A319691: a(n) = 1 if n is either 1 or divisible only by primes congruent to 1 mod 3, 0 otherwise.

Offset 1, canonical program `A319691.P3091071718083807352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319691 (n : ℕ) : ℤ :=
  (A319691.P3091071718083807352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320485.P13468319181003246115

`n-1-floor(-(-n)^(1-C(n*(1-val(∏{p}[n^3, #], 11)), n)))`
-/

namespace A320485.P13468319181003246115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ⌊-((-(n : ℤ) : ℚ) ^ (1 - (Nat.choose ((n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))).toNat n : ℤ) : ℤ))⌋

end

end A320485.P13468319181003246115

noncomputable section

/-- A320485: Keep just the digits of n that appear exactly once; write -1 if all digits disappear.

Offset 0, canonical program `A320485.P13468319181003246115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A320485 (n : ℕ) : ℤ :=
  A320485.P13468319181003246115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A320485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322832.P4257575422464920388

`floor(sqrt(n))+n%floor(sqrt(n+1))`
-/

namespace A322832.P4257575422464920388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n + n % Nat.sqrt (n + 1)

end

end A322832.P4257575422464920388

noncomputable section

/-- A322832: Values x + y, where the ordered pairs (x,y) are sorted first by maximal coordinate and then lexicographically.

Offset 0, canonical program `A322832.P4257575422464920388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322832 (n : ℕ) : ℤ :=
  (A322832.P4257575422464920388.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323048.P11595341694664684331

`floor(n/71+n)`
-/

namespace A323048.P11595341694664684331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 71 + (n : ℚ)⌋

end

end A323048.P11595341694664684331

noncomputable section

/-- A323048: Sums of no more than two 5-smooth numbers.

Offset 1, canonical program `A323048.P11595341694664684331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A323048 (n : ℕ) : ℤ :=
  A323048.P11595341694664684331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A323048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323223.P14113788675639362243

`((5*n+1)*a(n-1)-(4*n+2)*a(n-2))/(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A323223.P14113788675639362243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((5 * n + 1 : ℚ) * a (n - 1) - (4 * n + 2 : ℚ) * a (n - 2)) / ((n : ℤ) - 1 : ℚ)

end

end A323223.P14113788675639362243

noncomputable section

/-- A323223: a(n) = [x^n] x/((1 - x)*(1 - 4*x)^(5/2)).

Offset 0, canonical program `A323223.P14113788675639362243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323223 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323223.P14113788675639362243.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323230.P7973305166393127570

`((4*n-6)*a(n-1)-3*n+5)/(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A323230.P7973305166393127570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (((4 * n : ℤ) - 6 : ℚ) * a (n - 1) - (3 * n : ℚ) + 5) / ((n : ℤ) - 1 : ℚ)

end

end A323230.P7973305166393127570

noncomputable section

/-- A323230: a(n) = binomial(2*(n - 1), n - 1) + 1.

Offset 0, canonical program `A323230.P7973305166393127570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323230 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323230.P7973305166393127570.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324969.P6303333253869396304

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A324969.P6303333253869396304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2)

end

end A324969.P6303333253869396304

noncomputable section

/-- A324969: Number of unlabeled rooted identity trees with n vertices whose non-leaf terminal subtrees are all different.

Offset 1, canonical program `A324969.P6303333253869396304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A324969 (n : ℕ) : ℤ :=
  (A324969.P6303333253869396304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A324969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326125.P8070400290450553224

`∑{d}[n+1, (n+1)*#*#%2]`
-/

namespace A326125.P8070400290450553224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d * (d % 2))

end

end A326125.P8070400290450553224

noncomputable section

/-- A326125: Expansion of Sum_{k>=1} k^2 * x^k / (1 + x^k)^2.

Offset 1, canonical program `A326125.P8070400290450553224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326125 (n : ℕ) : ℤ :=
  (A326125.P8070400290450553224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326178.P10986141983629121521

`round(n*ratio[n+3])`
-/

namespace A326178.P10986141983629121521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A326178.P10986141983629121521

noncomputable section

/-- A326178: Number of subsets of {1..n} whose product is equal to their sum.

Offset 0, canonical program `A326178.P10986141983629121521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326178 (n : ℕ) : ℤ :=
  A326178.P10986141983629121521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326355.P12887797458854685294

`2^n+3^n-n-((n+1)*2^n-∑[n])`
-/

namespace A326355.P12887797458854685294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + ((3 ^ n : ℤ) - (n : ℤ)) - (((n + 1) * 2 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A326355.P12887797458854685294

noncomputable section

/-- A326355: Number of permutations of length n with at most two descents.

Offset 0, canonical program `A326355.P12887797458854685294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A326355 (n : ℕ) : ℤ :=
  A326355.P12887797458854685294.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A326355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A327035.P16069004739960620247

`a(n-3)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A327035.P16069004739960620247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1, 1, 1] fun n a =>
  a (n - 3) + a (n - 6)

end

end A327035.P16069004739960620247

noncomputable section

/-- A327035: An unbounded sequence consisting solely of Fibonacci numbers with the property that for any four consecutive terms the maximum term is the sum of the two minimum terms.

Offset 0, canonical program `A327035.P16069004739960620247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327035 (n : ℕ) : ℤ :=
  (A327035.P16069004739960620247.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A327035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A327730.P8839748791209327225

`∏{p}[n+1, and(n, val(#², 2))+2]`
-/

namespace A327730.P8839748791209327225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.land n (SequenceMachineLib.valuation (p ^ 2) 2) + 2)

end

end A327730.P8839748791209327225

noncomputable section

/-- A327730: a(n) = A060594(2n).

Offset 1, canonical program `A327730.P8839748791209327225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327730 (n : ℕ) : ℤ :=
  (A327730.P8839748791209327225.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A327730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328376.P18001089598898658470

`floor(abs(tan(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328376.P18001089598898658470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.tan (n : ℝ)|⌋

end

end A328376.P18001089598898658470

noncomputable section

/-- A328376: a(n) = floor(abs(tan(n))).

Offset 0, canonical program `A328376.P18001089598898658470`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(abs(tan(n)))` (program `A328376.P18001089598898658470`, by `A328376.P18001089598898658470.correct`). Lean does not check the parsing of the name. -/
def A328376 (n : ℕ) : ℤ :=
  A328376.P18001089598898658470.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(abs(tan(n)))` (program `A328376.P18001089598898658470`, by `A328376.P18001089598898658470.correct`). Lean does not check the parsing of the name. -/
def A328376.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A329684.P3930370660964505865

`char[2]+1`
-/

namespace A329684.P3930370660964505865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A329684.P3930370660964505865

noncomputable section

/-- A329684: Number of excursions of length n with Motzkin-steps forbidding all consecutive steps of length 2 except UD and HH.

Offset 0, canonical program `A329684.P3930370660964505865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329684 (n : ℕ) : ℤ :=
  (A329684.P3930370660964505865.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329723.P12214527657838611544

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A329723.P12214527657838611544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  a (n - 1) + a (n - 2)

end

end A329723.P12214527657838611544

noncomputable section

/-- A329723: Coefficients of expansion of (1-2x^3)/(1-x-x^2) in powers of x.

Offset 0, canonical program `A329723.P12214527657838611544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329723 (n : ℕ) : ℤ :=
  (A329723.P12214527657838611544.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A329723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331691.P3487127984205344448

`(-2)^(2^n-1)*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A331691.P3487127984205344448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (-2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) * a (n - 1)

end

end A331691.P3487127984205344448

noncomputable section

/-- A331691: Resultant of the Shapiro polynomials P_n(x) and Q_n(x).

Offset 0, canonical program `A331691.P3487127984205344448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331691 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A331691.P3487127984205344448.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A331691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A331739.P17009900902438645642

`n-floor(n/(or(n, n+1)-n))`
-/

namespace A331739.P17009900902438645642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)⌋

end

end A331739.P17009900902438645642

noncomputable section

/-- A331739: a(n) is n minus its largest odd divisor.

Offset 1, canonical program `A331739.P17009900902438645642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331739 (n : ℕ) : ℤ :=
  A331739.P17009900902438645642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332172.P4676679463160455545

`7*(10^(2*n+1)-1)/9-5*10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332172.P4676679463160455545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9) - (5 * 10 ^ n : ℚ)

end

end A332172.P4676679463160455545

noncomputable section

/-- A332172: a(n) = 7*(10^(2*n+1) - 1)/9 - 5*10^n.

Offset 0, canonical program `A332172.P4676679463160455545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A332172.P4676679463160455545.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A332172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A333175.P3930927733145281593

`∑{e}[∏{p}[n+1, #], #]!`
-/

namespace A333175.P3930927733145281593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A333175.P3930927733145281593

noncomputable section

/-- A333175: If n = Product (p_j^k_j) then a(n) = Sum (a(n/p_j^k_j)), with a(1) = 1.

Offset 1, canonical program `A333175.P3930927733145281593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333175 (n : ℕ) : ℤ :=
  (A333175.P3930927733145281593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A334413.P6479622909685095010

`round((n+1)/ϕ)-round(n/ϕ)`
-/

namespace A334413.P6479622909685095010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.goldenRatio) - SequenceMachineLib.roundAway ((n : ℝ) / Real.goldenRatio)

end

end A334413.P6479622909685095010

noncomputable section

/-- A334413: First differences of A101803.

Offset 0, canonical program `A334413.P6479622909685095010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334413 (n : ℕ) : ℤ :=
  A334413.P6479622909685095010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334578.P1239647656258044001

`n*a(n-2)+(-1)^floor(n/2)` with `a(0)=1, a(1)=1`
-/

namespace A334578.P1239647656258044001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) * a (n - 2) + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A334578.P1239647656258044001

noncomputable section

/-- A334578: Double subfactorials: a(n) = (-1)^floor(n/2) * n!! * Sum_{i=0..floor(n/2)} (-1)^i/(n-2*i)!!.

Offset 0, canonical program `A334578.P1239647656258044001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334578 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A334578.P1239647656258044001.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A334578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A334657.P783613411813419381

`C(∏{p}[n+1, #], n)*∏{p}[n+1, -#]`
-/

namespace A334657.P783613411813419381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))

end

end A334657.P783613411813419381

noncomputable section

/-- A334657: Dirichlet g.f.: 1 / zeta(s-2).

Offset 1, canonical program `A334657.P783613411813419381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334657 (n : ℕ) : ℤ :=
  A334657.P783613411813419381.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A334657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336102.P21603712807904741

`4*a(n-2)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=3, a(5)=3`
-/

namespace A336102.P21603712807904741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 3, 3] fun n a =>
  4 * a (n - 2) - 4 * a (n - 4)

end

end A336102.P21603712807904741

noncomputable section

/-- A336102: Number of inseparable multisets of size n covering an initial interval of positive integers.

Offset 0, canonical program `A336102.P21603712807904741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336102 (n : ℕ) : ℤ :=
  A336102.P21603712807904741.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A336102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A339265.P9331210432347120952

`or(1, -floor(sqrt(n))%2)`
-/

namespace A339265.P9331210432347120952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((Nat.sqrt n % 2 : ℕ) : ℤ))

end

end A339265.P9331210432347120952

noncomputable section

/-- A339265: Expansion of Product_{n >= 1} (1 - x^(2*n))*(1 - x^(2*n-1))*(1 - x^(2*n+1)).

Offset 0, canonical program `A339265.P9331210432347120952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339265 (n : ℕ) : ℤ :=
  A339265.P9331210432347120952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A339265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A339572.P16390960090893938892

`a(n-2)+a(n-4)+1` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A339572.P16390960090893938892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  a (n - 2) + (a (n - 4) + 1)

end

end A339572.P16390960090893938892

noncomputable section

/-- A339572: If n even, a(n) = A000071(n/2+1); if n odd, a(n) = A001610((n-1)/2).

Offset 0, canonical program `A339572.P16390960090893938892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A339572 (n : ℕ) : ℤ :=
  (A339572.P16390960090893938892.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A339572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340134.P12367661696389102407

`a(n-(2*a(n-1)+1))+1` with `a(0)=0, a(1)=0`
-/

namespace A340134.P12367661696389102407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - (2 * a (n - 1) + 1)) + 1

end

end A340134.P12367661696389102407

noncomputable section

/-- A340134: a(n+1) = a(n-2*a(n)) + 1, starting with a(1) = a(2) = 0.

Offset 1, canonical program `A340134.P12367661696389102407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340134 (n : ℕ) : ℤ :=
  (A340134.P12367661696389102407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340266.P12078626713817964159

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=8, a(2)=12, a(3)=17`
-/

namespace A340266.P12078626713817964159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 12, 17] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A340266.P12078626713817964159

noncomputable section

/-- A340266: The number of degrees of freedom in a quadrilateral cell for a serendipity finite element space of order n.

Offset 1, canonical program `A340266.P12078626713817964159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340266 (n : ℕ) : ℤ :=
  A340266.P12078626713817964159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A340363.P209331604390191666

`C(2, ∑{p}[n+1, 2%#])`
-/

namespace A340363.P209331604390191666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), 2 % p)

end

end A340363.P209331604390191666

noncomputable section

/-- A340363: a(n) = 1 if n is of the form of 2^i * p^j, with p an odd prime and i, j >= 0, otherwise 0.

Offset 1, canonical program `A340363.P209331604390191666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340363 (n : ℕ) : ℤ :=
  (A340363.P209331604390191666.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A340793.P1700930985006359286

`∑{d}[n+1, #]-∑{d}[n, #]`
-/

namespace A340793.P1700930985006359286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A340793.P1700930985006359286

noncomputable section

/-- A340793: Sequence whose partial sums give A000203.

Offset 1, canonical program `A340793.P1700930985006359286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340793 (n : ℕ) : ℤ :=
  A340793.P1700930985006359286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A340793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346397.P2220962348195532719

`(n-3)*a(n-1)+2*(n-1)*a(n-2)+(-2)^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A346397.P2220962348195532719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 3 : ℚ) * a (n - 1) + 2 * (((n : ℤ) - 1 : ℚ) * a (n - 2)) + (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A346397.P2220962348195532719

noncomputable section

/-- A346397: Expansion of e.g.f. -log(1 - x) * exp(-2*x).

Offset 0, canonical program `A346397.P2220962348195532719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346397 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A346397.P2220962348195532719.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A346397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A346642.P16342547376837401772

`∑[∑[n]²*n^3]`
-/

namespace A346642.P16342547376837401772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 * n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346642.P16342547376837401772

noncomputable section

/-- A346642: a(n) = Sum_{j=1..n} Sum_{i=1..j} j^3*i^3.

Offset 0, canonical program `A346642.P16342547376837401772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346642 (n : ℕ) : ℤ :=
  (A346642.P16342547376837401772.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346758.P5593687607366056961

`round(((n+1)/∏{p}[n+1, #])²*∏{p}[n+1, #²-1]/4)`
-/

namespace A346758.P5593687607366056961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2 * ((∏ p ∈ Nat.primeFactors (f2 n), ((p ^ 2 : ℤ) - 1) : ℤ) : ℚ) / 4)

end

end A346758.P5593687607366056961

noncomputable section

/-- A346758: a(n) = Sum_{d|n} mu(n/d) * floor(d^2/4).

Offset 1, canonical program `A346758.P5593687607366056961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346758 (n : ℕ) : ℤ :=
  A346758.P5593687607366056961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A346758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A346912.P842760097947000706

`a(n-1)+a(floor(n/2))+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346912.P842760097947000706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat + 1

end

end A346912.P842760097947000706

noncomputable section

/-- A346912: a(0) = 1; a(n) = a(n-1) + a(floor(n/2)) + 1.

Offset 0, canonical program `A346912.P842760097947000706`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor(n/2))+1` (program `A346912.P842760097947000706`, by `A346912.P842760097947000706.correct`). Lean does not check the parsing of the name. -/
def A346912 (n : ℕ) : ℤ :=
  (A346912.P842760097947000706.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor(n/2))+1` (program `A346912.P842760097947000706`, by `A346912.P842760097947000706.correct`). Lean does not check the parsing of the name. -/
def A346912.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A347107.P4819977070868740848

`∑[C(n, 2)²*n^3]`
-/

namespace A347107.P4819977070868740848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2 * n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347107.P4819977070868740848

noncomputable section

/-- A347107: a(n) = Sum_{1 <= i < j <= n} j^3*i^3.

Offset 0, canonical program `A347107.P4819977070868740848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347107 (n : ℕ) : ℤ :=
  (A347107.P4819977070868740848.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A347553.P7827928287471575370

`or(C(2, n), ∑[n])+n`
-/

namespace A347553.P7827928287471575370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (Nat.choose 2 n) (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A347553.P7827928287471575370

noncomputable section

/-- A347553: Number of minimum dominating sets in the n-cycle complement graph.

Offset 3, canonical program `A347553.P7827928287471575370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347553 (n : ℕ) : ℤ :=
  (A347553.P7827928287471575370.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348182.P16938362738167117090

`a(floor(∑{d}[n+1, #]/∏{e}[n+1, #+1])-1)+1` with `a(0)=1`
-/

namespace A348182.P16938362738167117090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ)⌋ - 1).toNat + 1

end

end A348182.P16938362738167117090

noncomputable section

/-- A348182: a(1) = 1; for n >= 2, a(n) = 1 + a(A057022(n)).

Offset 1, canonical program `A348182.P16938362738167117090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A348182 (n : ℕ) : ℤ :=
  (A348182.P16938362738167117090.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A348182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349050.P7865045838321686078

`4*(a(n-2)-a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A349050.P7865045838321686078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 3] fun n a =>
  4 * (a (n - 2) - a (n - 4))

end

end A349050.P7865045838321686078

noncomputable section

/-- A349050: Number of multisets of size n that have no alternating permutations and cover an initial interval of positive integers.

Offset 0, canonical program `A349050.P7865045838321686078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. -/
def A349050 (n : ℕ) : ℤ :=
  A349050.P7865045838321686078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 651 terms. -/
def A349050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350042.P861276931472324705

`n*round(n²/12)`
-/

namespace A350042.P861276931472324705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A350042.P861276931472324705

noncomputable section

/-- A350042: Sum of all the parts in the partitions of n into 3 positive integer parts.

Offset 0, canonical program `A350042.P861276931472324705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350042 (n : ℕ) : ℤ :=
  A350042.P861276931472324705.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A350042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A350361.P10941763931995374598

`abs(a(n+3-a(n-1))+1)` with `a(0)=4`
-/

namespace A350361.P10941763931995374598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n + 3 - a (n - 1)) + 1

end

end A350361.P10941763931995374598

noncomputable section

/-- A350361: 2-tone chromatic number of a tree with maximum degree n.

Offset 1, canonical program `A350361.P10941763931995374598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350361 (n : ℕ) : ℤ :=
  (A350361.P10941763931995374598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350872.P15784308967154680112

`∏{p}[n+1, and(2, #+2)]`
-/

namespace A350872.P15784308967154680112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.land 2 (p + 2)

end

end A350872.P15784308967154680112

noncomputable section

/-- A350872: Number of coincidence site lattices of index n in square lattice.

Offset 1, canonical program `A350872.P15784308967154680112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350872 (n : ℕ) : ℤ :=
  (A350872.P15784308967154680112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A350872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351760.P6138152911728798347

`∑[(∑[(1-n)^4]-1)*n^4]`
-/

namespace A351760.P6138152911728798347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 1) * (n ^ 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351760.P6138152911728798347

noncomputable section

/-- A351760: a(n) = Sum_{1 <= i < j <= n} (i*j)^4.

Offset 0, canonical program `A351760.P6138152911728798347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351760 (n : ℕ) : ℤ :=
  A351760.P6138152911728798347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A351766.P7961265696596970189

`∑[n^4*∑[n^4]]`
-/

namespace A351766.P7961265696596970189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351766.P7961265696596970189

noncomputable section

/-- A351766: a(n) = Sum_{j=1..n} Sum_{i=1..j} (i*j)^4.

Offset 0, canonical program `A351766.P7961265696596970189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351766 (n : ℕ) : ℤ :=
  (A351766.P7961265696596970189.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353669.P1575941050235659521

`1-Δ[floor(sqrt(n))]-∑{e}[n+1, #]%2`
-/

namespace A353669.P1575941050235659521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2 : ℕ) : ℤ)

end

end A353669.P1575941050235659521

noncomputable section

/-- A353669: a(n) = 1 if n is a nonsquare that has an even number of prime factors with multiplicity, otherwise 0.

Offset 1, canonical program `A353669.P1575941050235659521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353669 (n : ℕ) : ℤ :=
  A353669.P1575941050235659521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A354784.P12902616897900981970

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A354784.P12902616897900981970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A354784.P12902616897900981970

noncomputable section

/-- A354784: First differences of A000213, also twice A000073.

Offset 0, canonical program `A354784.P12902616897900981970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354784 (n : ℕ) : ℤ :=
  (A354784.P12902616897900981970.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A354784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355019.P16478531607942263402

`a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=6`
-/

namespace A355019.P16478531607942263402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 2, 6] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + a (n - 4) - a (n - 5)

end

end A355019.P16478531607942263402

noncomputable section

/-- A355019: Partial sums of L(1) - F(1) + L(2) - F(2) + L(3) - F(3) + ..., where L = A000032 and F = A000045.

Offset 0, canonical program `A355019.P16478531607942263402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355019 (n : ℕ) : ℤ :=
  A355019.P16478531607942263402.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A355019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A355221.P9010830034756802224

`comp[98-11*n]-dr(val(∑{digits}[n, 5^#], 5)-n)`
-/

namespace A355221.P9010830034756802224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (SequenceMachineLib.digitalRoot ((SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 5 ^ x).sum 5 : ℤ) - (n : ℤ)) : ℤ)

end

end A355221.P9010830034756802224

noncomputable section

/-- A355221: The k-th leftmost digit of a(n) is the least of the k leftmost digits of n.

Offset 0, canonical program `A355221.P9010830034756802224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355221 (n : ℕ) : ℤ :=
  A355221.P9010830034756802224.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355224.P10807161521225404146

`10*(n-(comp[98-11*n]-dr(val(∑{digits}[n, 5^#], 5)-n)))+n`
-/

namespace A355224.P10807161521225404146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  98 - (11 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * ((n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (SequenceMachineLib.digitalRoot ((SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 5 ^ x).sum 5 : ℤ) - (n : ℤ)) : ℤ))) + (n : ℤ)

end

end A355224.P10807161521225404146

noncomputable section

/-- A355224: The k-th rightmost digit of a(n) is the greatest of the k rightmost digits of n.

Offset 0, canonical program `A355224.P10807161521225404146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355224 (n : ℕ) : ℤ :=
  A355224.P10807161521225404146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A355224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355264.P1842573885147649764

`(n+1)*∏{p}[n+1, #^val(n+1, #²)]`
-/

namespace A355264.P1842573885147649764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A355264.P1842573885147649764

noncomputable section

/-- A355264: a(n) = n * largest-nth-power(n, 2) = n * A000188(n), where largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

Offset 1, canonical program `A355264.P1842573885147649764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355264 (n : ℕ) : ℤ :=
  (A355264.P1842573885147649764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356185.P3601416745304588631

`2^ceil(n/2)-n`
-/

namespace A356185.P3601416745304588631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) - (n : ℚ)

end

end A356185.P3601416745304588631

noncomputable section

/-- A356185: The difference between number of even and number of odd Grassmannian permutations of size n.

Offset 0, canonical program `A356185.P3601416745304588631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A356185.P3601416745304588631.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A356185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359275.P16140740767275730210

`floor(sqrt(Δ[C(n, 2)²]))-n`
-/

namespace A359275.P16140740767275730210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n : ℤ)

end

end A359275.P16140740767275730210

noncomputable section

/-- A359275: a(n) = greatest integer k such that (n+k)^2 <= n^3.

Offset 0, canonical program `A359275.P16140740767275730210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359275 (n : ℕ) : ℤ :=
  A359275.P16140740767275730210.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359471.P18375457830657465753

`round(1/∏{e}[n+1, #])`
-/

namespace A359471.P18375457830657465753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ))

end

end A359471.P18375457830657465753

noncomputable section

/-- A359471: a(n) = 1 if the product of exponents in the prime factorization of n is less than 3, otherwise 0.

Offset 1, canonical program `A359471.P18375457830657465753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359471 (n : ℕ) : ℤ :=
  A359471.P18375457830657465753.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361099.P12342700061437491556

`n+2*C(n, 2)+3*C(n, 3)+4*C(n, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361099.P12342700061437491556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 * Nat.choose n 2 + 3 * Nat.choose n 3 + 4 * Nat.choose n 4

end

end A361099.P12342700061437491556

noncomputable section

/-- A361099: a(n) = n + 2*binomial(n,2) + 3*binomial(n,3) + 4*binomial(n,4).

Offset 0, canonical program `A361099.P12342700061437491556`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` (program `A361099.P12342700061437491556`, by `A361099.P12342700061437491556.correct`). Lean does not check the parsing of the name. -/
def A361099 (n : ℕ) : ℤ :=
  (A361099.P12342700061437491556.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` (program `A361099.P12342700061437491556`, by `A361099.P12342700061437491556.correct`). Lean does not check the parsing of the name. -/
def A361099.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A362193.P13965792138052878343

`1+(n-1)*n*(n+1)*(n*(n-5)+26)/120`
-/

namespace A362193.P13965792138052878343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) - 1 : ℚ) * ((n : ℚ) * ((n + 1 : ℚ) * (((n : ℤ) * ((n : ℤ) - 5) + 26 : ℚ) / 120)))

end

end A362193.P13965792138052878343

noncomputable section

/-- A362193: Number of Grassmannian permutations of size n that avoid a pattern, sigma, where sigma is a pattern of size 6 with exactly one descent.

Offset 0, canonical program `A362193.P13965792138052878343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362193 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362193.P13965792138052878343.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362193.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363610.P3014432330695070700

`∑{d}[n+1, C(#-1, 2)]`
-/

namespace A363610.P3014432330695070700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose ((d : ℤ) - 1).toNat 2

end

end A363610.P3014432330695070700

noncomputable section

/-- A363610: Expansion of Sum_{k>0} x^(3*k)/(1-x^k)^3.

Offset 1, canonical program `A363610.P3014432330695070700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363610 (n : ℕ) : ℤ :=
  (A363610.P3014432330695070700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363832.P17035605753939624858

`ceil(abs(log(acot(n))))`
-/

namespace A363832.P17035605753939624858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.log (SequenceMachineLib.acot (n : ℝ))|⌉

end

end A363832.P17035605753939624858

noncomputable section

/-- A363832: Number of digits left of the radix point of n when written in base e using a greedy algorithm representation.

Offset 0, canonical program `A363832.P17035605753939624858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363832 (n : ℕ) : ℤ :=
  A363832.P17035605753939624858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369082.P13508565943011259919

`floor(C(2*n+1, floor((n+1)/2))/(2*n+1))`
-/

namespace A369082.P13508565943011259919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A369082.P13508565943011259919

noncomputable section

/-- A369082: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(3*A(x)^2 + A(-x)^2)/4.

Offset 0, canonical program `A369082.P13508565943011259919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A369082 (n : ℕ) : ℤ :=
  A369082.P13508565943011259919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A369082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371943.P7720430548521005496

`∏[n/a(n-1)+1]-∏[(n-1)/a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A371943.P7720430548521005496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + 1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  ((n : ℤ) - 1 : ℚ) / f2 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - ∏ j ∈ Finset.range (n + 1), f2 j

end

end A371943.P7720430548521005496

noncomputable section

/-- A371943: Number of permutations that end with a consecutive pattern 123, and avoid consecutive patterns 123 and 213 elsewhere.

Offset 0, canonical program `A371943.P7720430548521005496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A371943 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371943.P7720430548521005496.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A371943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373155.P15140726433899674952

`xor(n+1, ∑[n%3])%3`
-/

namespace A373155.P15140726433899674952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A373155.P15140726433899674952

noncomputable section

/-- A373155: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is even, otherwise 0.

Offset 1, canonical program `A373155.P15140726433899674952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373155 (n : ℕ) : ℤ :=
  (A373155.P15140726433899674952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374004.P1867741992155241888

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=14, a(2)=18, a(3)=25, a(4)=33`
-/

namespace A374004.P1867741992155241888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 14, 18, 25, 33] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A374004.P1867741992155241888

noncomputable section

/-- A374004: a(n) = (1 + (n+3)^2 - (n-4)*(-1)^n)/2.

Offset 1, canonical program `A374004.P1867741992155241888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374004 (n : ℕ) : ℤ :=
  A374004.P1867741992155241888.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374005.P11276605071297492801

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=15, a(1)=17, a(2)=26, a(3)=32, a(4)=41`
-/

namespace A374005.P11276605071297492801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 17, 26, 32, 41] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A374005.P11276605071297492801

noncomputable section

/-- A374005: a(n) = (1 + (n+4)^2 + (n-5)*(-1)^n)/2.

Offset 1, canonical program `A374005.P11276605071297492801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374005 (n : ℕ) : ℤ :=
  A374005.P11276605071297492801.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374007.P15289971276499875431

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=16, a(1)=27, a(2)=31, a(3)=42, a(4)=50`
-/

namespace A374007.P15289971276499875431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 27, 31, 42, 50] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A374007.P15289971276499875431

noncomputable section

/-- A374007: a(n) = (1 + (n+5)^2 - (n-6)*(-1)^n)/2.

Offset 1, canonical program `A374007.P15289971276499875431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374007 (n : ℕ) : ℤ :=
  A374007.P15289971276499875431.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374016.P9927166468113053347

`∏{e}[n, val(#, 4)]`
-/

namespace A374016.P9927166468113053347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 4

end

end A374016.P9927166468113053347

noncomputable section

/-- A374016: a(n) = 1 if n is a fourth power, else 0.

Offset 0, canonical program `A374016.P9927166468113053347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374016 (n : ℕ) : ℤ :=
  (A374016.P9927166468113053347.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374487.P15708948501732124702

`((2*n+1)*a(n-1)+7*(n+1)*a(n-2))/n` with `a(0)=1, a(1)=3`
-/

namespace A374487.P15708948501732124702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((2 * n + 1 : ℚ) * a (n - 1) + 7 * ((n + 1 : ℚ) * a (n - 2))) / (n : ℚ)

end

end A374487.P15708948501732124702

noncomputable section

/-- A374487: Expansion of 1/(1 - 2*x - 7*x^2)^(3/2).

Offset 0, canonical program `A374487.P15708948501732124702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374487.P15708948501732124702.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379480.P16859997012465332885

`∏{e}[2*n, (#+1)%2]`
-/

namespace A379480.P16859997012465332885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) % 2

end

end A379480.P16859997012465332885

noncomputable section

/-- A379480: a(n) = 1 if n is twice a square, otherwise 0.

Offset 0, canonical program `A379480.P16859997012465332885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379480 (n : ℕ) : ℤ :=
  (A379480.P16859997012465332885.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384733.P10535985272961763034

`5*C(n, 6)+2*C(n, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384733.P10535985272961763034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 6 + 2 * Nat.choose n 4

end

end A384733.P10535985272961763034

noncomputable section

/-- A384733: a(n) = 5*binomial(n,6) + 2*binomial(n,4).

Offset 0, canonical program `A384733.P10535985272961763034`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*C(n, 6)+2*C(n, 4)` (program `A384733.P10535985272961763034`, by `A384733.P10535985272961763034.correct`). Lean does not check the parsing of the name. -/
def A384733 (n : ℕ) : ℤ :=
  (A384733.P10535985272961763034.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*C(n, 6)+2*C(n, 4)` (program `A384733.P10535985272961763034`, by `A384733.P10535985272961763034.correct`). Lean does not check the parsing of the name. -/
def A384733.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385006.P9769662058316795847

`∑{d}[∏{p}[n+1, gcd(n+1, #^3)], #]`
-/

namespace A385006.P9769662058316795847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A385006.P9769662058316795847

noncomputable section

/-- A385006: The sum of the biquadratefree divisors of n.

Offset 1, canonical program `A385006.P9769662058316795847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385006 (n : ℕ) : ℤ :=
  (A385006.P9769662058316795847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387204.P16987887864140954336

`n*(n+1)*(n*(n+17)+54)/24`
-/

namespace A387204.P16987887864140954336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n * (n + 17) + 54 : ℚ) / 24))

end

end A387204.P16987887864140954336

noncomputable section

/-- A387204: a(n) = n*(n + 1)*(n^2 + 17*n + 54)/24.

Offset 0, canonical program `A387204.P16987887864140954336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387204.P16987887864140954336.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389142.P3959257341600142451

`floor((3*n²+n+1)/6)`
-/

namespace A389142.P3959257341600142451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 2 + (n + 1) : ℚ) / 6⌋

end

end A389142.P3959257341600142451

noncomputable section

/-- A389142: Lower (1/3)-midsequence of square numbers and triangular numbers; see Comments.

Offset 0, canonical program `A389142.P3959257341600142451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389142 (n : ℕ) : ℤ :=
  A389142.P3959257341600142451.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395948.P12794132619196995956

`4*a(n-1)+4*a(n-2)-16*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6`
-/

namespace A395948.P12794132619196995956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 6] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) - 16 * a (n - 3)

end

end A395948.P12794132619196995956

noncomputable section

/-- A395948: Expansion of e.g.f. sinh(x)^2*cosh(x)*exp(x).

Offset 0, canonical program `A395948.P12794132619196995956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A395948 (n : ℕ) : ℤ :=
  A395948.P12794132619196995956.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A395948.provenance : SequenceMachineLib.Provenance := .conjectured

