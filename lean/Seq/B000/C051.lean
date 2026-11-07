import SequenceMachineLib
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A396288.P9785100004130404729

`n*(12*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396288.P9785100004130404729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((12 * n : ℤ) - 1)

end

end A396288.P9785100004130404729

noncomputable section

/-- A396288: a(n) = n*(12*n-1).

Offset 0, canonical program `A396288.P9785100004130404729`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n-1)` (program `A396288.P9785100004130404729`, by `A396288.P9785100004130404729.correct`). Lean does not check the parsing of the name. -/
def A396288 (n : ℕ) : ℤ :=
  A396288.P9785100004130404729.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n-1)` (program `A396288.P9785100004130404729`, by `A396288.P9785100004130404729.correct`). Lean does not check the parsing of the name. -/
def A396288.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396289.P3873563288867245151

`n*(12*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396289.P3873563288867245151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (12 * n + 1)

end

end A396289.P3873563288867245151

noncomputable section

/-- A396289: a(n) = n*(12*n+1).

Offset 0, canonical program `A396289.P3873563288867245151`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n+1)` (program `A396289.P3873563288867245151`, by `A396289.P3873563288867245151.correct`). Lean does not check the parsing of the name. -/
def A396289 (n : ℕ) : ℤ :=
  (A396289.P3873563288867245151.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n+1)` (program `A396289.P3873563288867245151`, by `A396289.P3873563288867245151.correct`). Lean does not check the parsing of the name. -/
def A396289.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396290.P13947745858028629092

`n*(12*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396290.P13947745858028629092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (12 * n + 5)

end

end A396290.P13947745858028629092

noncomputable section

/-- A396290: a(n) = n*(12*n+5).

Offset 0, canonical program `A396290.P13947745858028629092`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n+5)` (program `A396290.P13947745858028629092`, by `A396290.P13947745858028629092.correct`). Lean does not check the parsing of the name. -/
def A396290 (n : ℕ) : ℤ :=
  (A396290.P13947745858028629092.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n+5)` (program `A396290.P13947745858028629092`, by `A396290.P13947745858028629092.correct`). Lean does not check the parsing of the name. -/
def A396290.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396291.P2280103338649089632

`n*(12*n-5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396291.P2280103338649089632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((12 * n : ℤ) - 5)

end

end A396291.P2280103338649089632

noncomputable section

/-- A396291: a(n) = n*(12*n-5).

Offset 0, canonical program `A396291.P2280103338649089632`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n-5)` (program `A396291.P2280103338649089632`, by `A396291.P2280103338649089632.correct`). Lean does not check the parsing of the name. -/
def A396291 (n : ℕ) : ℤ :=
  A396291.P2280103338649089632.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(12*n-5)` (program `A396291.P2280103338649089632`, by `A396291.P2280103338649089632.correct`). Lean does not check the parsing of the name. -/
def A396291.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396344.P15016918885993711818

`ogf((3+4x-7x^2-6x^3-x^4-4x^5+3x^6+2x^7)/(1-4x^2+2x^4+2x^6-x^8))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396344.P15016918885993711818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -7, -6, -1, -4, 3, 2] [1, 0, -4, 0, 2, 0, 2, 0, -1] n

end

end A396344.P15016918885993711818

noncomputable section

/-- A396344: Expansion of x * (3+4*x-7*x^2-6*x^3-x^4-4*x^5+3*x^6+2*x^7)/((1-x) * (1+x) * (1-3*x^2-x^4+x^6)).

Offset 1, canonical program `A396344.P15016918885993711818`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+4x-7x^2-6x^3-x^4-4x^5+3x^6+2x^7)/(1-4x^2+2x^4+2x^6-x^8))` (program `A396344.P15016918885993711818`, by `A396344.P15016918885993711818.correct`). Lean does not check the parsing of the name. -/
def A396344 (n : ℕ) : ℤ :=
  A396344.P15016918885993711818.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+4x-7x^2-6x^3-x^4-4x^5+3x^6+2x^7)/(1-4x^2+2x^4+2x^6-x^8))` (program `A396344.P15016918885993711818`, by `A396344.P15016918885993711818.correct`). Lean does not check the parsing of the name. -/
def A396344.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396345.P1990905254869130227

`ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396345.P1990905254869130227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, -8, -3, 2, -3, 4, 1, -1] [1, -1, -4, 4, 2, -2, 2, -2, -1, 1] n

end

end A396345.P1990905254869130227

noncomputable section

/-- A396345: Expansion of x * (3+3*x-8*x^2-3*x^3+2*x^4-3*x^5+4*x^6+x^7-x^8)/((1-x)^2 * (1+x) * (1-3*x^2-x^4+x^6)).

Offset 1, canonical program `A396345.P1990905254869130227`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))` (program `A396345.P1990905254869130227`, by `A396345.P1990905254869130227.correct`). Lean does not check the parsing of the name. -/
def A396345 (n : ℕ) : ℤ :=
  A396345.P1990905254869130227.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+3x-8x^2-3x^3+2x^4-3x^5+4x^6+x^7-x^8)/(1-x-4x^2+4x^3+2x^4-2x^5+2x^6-2x^7-x^8+x^9))` (program `A396345.P1990905254869130227`, by `A396345.P1990905254869130227.correct`). Lean does not check the parsing of the name. -/
def A396345.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396473.P6846612393426705265

`ogf((1-4x^2)/(1-2x-4x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396473.P6846612393426705265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -4] [1, -2, -4, 2] n

end

end A396473.P6846612393426705265

noncomputable section

/-- A396473: Expansion of g.f. (1 - 4*x^2)/(1 - 2*x - 4*x^2 + 2*x^3).

Offset 0, canonical program `A396473.P6846612393426705265`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2)/(1-2x-4x^2+2x^3))` (program `A396473.P6846612393426705265`, by `A396473.P6846612393426705265.correct`). Lean does not check the parsing of the name. -/
def A396473 (n : ℕ) : ℤ :=
  A396473.P6846612393426705265.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x^2)/(1-2x-4x^2+2x^3))` (program `A396473.P6846612393426705265`, by `A396473.P6846612393426705265.correct`). Lean does not check the parsing of the name. -/
def A396473.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396474.P2294582637050824259

`ogf((1-7x^2-2x^4)/(1-2x-7x^2-2x^4+2x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396474.P2294582637050824259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -7, 0, -2] [1, -2, -7, 0, -2, 2] n

end

end A396474.P2294582637050824259

noncomputable section

/-- A396474: Expansion of g.f. (1 - 7*x^2 - 2*x^4)/(1 - 2*x - 7*x^2 - 2*x^4 + 2*x^5).

Offset 0, canonical program `A396474.P2294582637050824259`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x^2-2x^4)/(1-2x-7x^2-2x^4+2x^5))` (program `A396474.P2294582637050824259`, by `A396474.P2294582637050824259.correct`). Lean does not check the parsing of the name. -/
def A396474 (n : ℕ) : ℤ :=
  A396474.P2294582637050824259.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x^2-2x^4)/(1-2x-7x^2-2x^4+2x^5))` (program `A396474.P2294582637050824259`, by `A396474.P2294582637050824259.correct`). Lean does not check the parsing of the name. -/
def A396474.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396475.P16693309358590420851

`ogf((1-11x^2-20x^4)/(1-2x-11x^2-8x^3-20x^4+10x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396475.P16693309358590420851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -11, 0, -20] [1, -2, -11, -8, -20, 10] n

end

end A396475.P16693309358590420851

noncomputable section

/-- A396475: Expansion of g.f. (1 - 11*x^2 - 20*x^4)/(1 - 2*x - 11*x^2 - 8*x^3 - 20*x^4 + 10*x^5).

Offset 0, canonical program `A396475.P16693309358590420851`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-11x^2-20x^4)/(1-2x-11x^2-8x^3-20x^4+10x^5))` (program `A396475.P16693309358590420851`, by `A396475.P16693309358590420851.correct`). Lean does not check the parsing of the name. -/
def A396475 (n : ℕ) : ℤ :=
  A396475.P16693309358590420851.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-11x^2-20x^4)/(1-2x-11x^2-8x^3-20x^4+10x^5))` (program `A396475.P16693309358590420851`, by `A396475.P16693309358590420851.correct`). Lean does not check the parsing of the name. -/
def A396475.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396509.P9110258302490296449

`2*(4*n+2)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396509.P9110258302490296449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (4 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A396509.P9110258302490296449

noncomputable section

/-- A396509: a(n) = 2 * (4*n+2)^(n-1).

Offset 0, canonical program `A396509.P9110258302490296449`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A396509.anchor (n : ℕ) : (A396509 n : ℚ) = 2 * (4 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A396.A396509`. -/
def A396509 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396509.P9110258302490296449.a n)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A396509.anchor (n : ℕ) : (A396509 n : ℚ) = 2 * (4 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A396.A396509`. -/
def A396509.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396516.P16118586046832880944

`ogf((1-17x^2-88x^4-4x^6)/(1-2x-17x^2-28x^3-88x^4+26x^5-4x^6+4x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396516.P16118586046832880944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -17, 0, -88, 0, -4] [1, -2, -17, -28, -88, 26, -4, 4] n

end

end A396516.P16118586046832880944

noncomputable section

/-- A396516: Expansion of g.f. (1 - 17*x^2 - 88*x^4 - 4*x^6)/(1 - 2*x - 17*x^2 - 28*x^3 - 88*x^4 + 26*x^5 - 4*x^6 + 4*x^7).

Offset 0, canonical program `A396516.P16118586046832880944`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-17x^2-88x^4-4x^6)/(1-2x-17x^2-28x^3-88x^4+26x^5-4x^6+4x^7))` (program `A396516.P16118586046832880944`, by `A396516.P16118586046832880944.correct`). Lean does not check the parsing of the name. -/
def A396516 (n : ℕ) : ℤ :=
  A396516.P16118586046832880944.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-17x^2-88x^4-4x^6)/(1-2x-17x^2-28x^3-88x^4+26x^5-4x^6+4x^7))` (program `A396516.P16118586046832880944`, by `A396516.P16118586046832880944.correct`). Lean does not check the parsing of the name. -/
def A396516.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396582.P14642037863999829688

`4*a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396582.P14642037863999829688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  4 * a (n - 2) - 2 * a (n - 1)

end

end A396582.P14642037863999829688

noncomputable section

/-- A396582: a(n) = 4*a(n - 2) - 2*a(n - 1) for n >= 2, a(0) = 1, a(1) = 6.

Offset 0, canonical program `A396582.P14642037863999829688`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)-2*a(n-1)` (program `A396582.P14642037863999829688`, by `A396582.P14642037863999829688.correct`). Lean does not check the parsing of the name. -/
def A396582 (n : ℕ) : ℤ :=
  A396582.P14642037863999829688.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)-2*a(n-1)` (program `A396582.P14642037863999829688`, by `A396582.P14642037863999829688.correct`). Lean does not check the parsing of the name. -/
def A396582.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396691.P5579847914221138822

`∑{#}[n, C(4*n+2*#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396691.P5579847914221138822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (4 * n + 2 * k) k

end

end A396691.P5579847914221138822

noncomputable section

/-- A396691: a(n) = Sum_{k=0..n} binomial(4*n+2*k,k).

Offset 0, canonical program `A396691.P5579847914221138822`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+2*#, #)]` (program `A396691.P5579847914221138822`, by `A396691.P5579847914221138822.correct`). Lean does not check the parsing of the name. -/
def A396691 (n : ℕ) : ℤ :=
  (A396691.P5579847914221138822.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+2*#, #)]` (program `A396691.P5579847914221138822`, by `A396691.P5579847914221138822.correct`). Lean does not check the parsing of the name. -/
def A396691.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396752.P6457167168212834435

`n*floor(sqrt(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396752.P6457167168212834435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.sqrt n

end

end A396752.P6457167168212834435

noncomputable section

/-- A396752: a(n) = n * floor(sqrt(n)).

Offset 0, canonical program `A396752.P6457167168212834435`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor(sqrt(n))` (program `A396752.P6457167168212834435`, by `A396752.P6457167168212834435.correct`). Lean does not check the parsing of the name. -/
def A396752 (n : ℕ) : ℤ :=
  (A396752.P6457167168212834435.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*floor(sqrt(n))` (program `A396752.P6457167168212834435`, by `A396752.P6457167168212834435.correct`). Lean does not check the parsing of the name. -/
def A396752.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396772.P17158471524454405549

`ogf((-x+4x^2-3x^3+x^4)/(1-3x+4x^2-3x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396772.P17158471524454405549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 4, -3, 1] [1, -3, 4, -3, 1] n

end

end A396772.P17158471524454405549

noncomputable section

/-- A396772: Expansion of x*(-1 + 4*x - 3*x^2 + x^3)/((1 - x)^2 * (1 - x + x^2)).

Offset 0, canonical program `A396772.P17158471524454405549`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-x+4x^2-3x^3+x^4)/(1-3x+4x^2-3x^3+x^4))` (program `A396772.P17158471524454405549`, by `A396772.P17158471524454405549.correct`). Lean does not check the parsing of the name. -/
def A396772 (n : ℕ) : ℤ :=
  A396772.P17158471524454405549.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-x+4x^2-3x^3+x^4)/(1-3x+4x^2-3x^3+x^4))` (program `A396772.P17158471524454405549`, by `A396772.P17158471524454405549.correct`). Lean does not check the parsing of the name. -/
def A396772.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396887.P14464114701607586535

`(n-3)*a(n-1)+(n-1)*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396887.P14464114701607586535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  ((n : ℤ) - 3) * a (n - 1) + ((n : ℤ) - 1) * a (n - 3)

end

end A396887.P14464114701607586535

noncomputable section

/-- A396887: a(n) = (n-3)*a(n-1) + (n-1)*a(n-3); a(0) = 0, a(1) = 0, a(2) = 1.

Offset 0, canonical program `A396887.P14464114701607586535`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-3)*a(n-1)+(n-1)*a(n-3)` (program `A396887.P14464114701607586535`, by `A396887.P14464114701607586535.correct`). Lean does not check the parsing of the name. -/
def A396887 (n : ℕ) : ℤ :=
  A396887.P14464114701607586535.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-3)*a(n-1)+(n-1)*a(n-3)` (program `A396887.P14464114701607586535`, by `A396887.P14464114701607586535.correct`). Lean does not check the parsing of the name. -/
def A396887.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396901.P13470344737756848060

`∑{#}[n, gcd((#+1)^4, (n+1)²)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396901.P13470344737756848060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.gcd ((k + 1) ^ 4) ((n + 1) ^ 2)

end

end A396901.P13470344737756848060

noncomputable section

/-- A396901: a(n) = Sum_{k=1..n} gcd(k^4,n^2).

Offset 1, canonical program `A396901.P13470344737756848060`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^4, (n+1)²)]` (program `A396901.P13470344737756848060`, by `A396901.P13470344737756848060.correct`). Lean does not check the parsing of the name. -/
def A396901 (n : ℕ) : ℤ :=
  (A396901.P13470344737756848060.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^4, (n+1)²)]` (program `A396901.P13470344737756848060`, by `A396901.P13470344737756848060.correct`). Lean does not check the parsing of the name. -/
def A396901.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396903.P1799447587724595297

`∑{#}[n, gcd((#+1)^4, (n+1)^3)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396903.P1799447587724595297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.gcd ((k + 1) ^ 4) ((n + 1) ^ 3)

end

end A396903.P1799447587724595297

noncomputable section

/-- A396903: a(n) = Sum_{k=1..n} gcd(k^4,n^3).

Offset 1, canonical program `A396903.P1799447587724595297`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^4, (n+1)^3)]` (program `A396903.P1799447587724595297`, by `A396903.P1799447587724595297.correct`). Lean does not check the parsing of the name. -/
def A396903 (n : ℕ) : ℤ :=
  (A396903.P1799447587724595297.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^4, (n+1)^3)]` (program `A396903.P1799447587724595297`, by `A396903.P1799447587724595297.correct`). Lean does not check the parsing of the name. -/
def A396903.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397233.P6743435991730158212

`ogf(1/(1-x^4-x^5-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397233.P6743435991730158212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, 0, -1, -1, 0, -1] n

end

end A397233.P6743435991730158212

noncomputable section

/-- A397233: Expansion of 1/(1 - x^4 - x^5 - x^7).

Offset 0, canonical program `A397233.P6743435991730158212`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7))` (program `A397233.P6743435991730158212`, by `A397233.P6743435991730158212.correct`). Lean does not check the parsing of the name. -/
def A397233 (n : ℕ) : ℤ :=
  A397233.P6743435991730158212.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^5-x^7))` (program `A397233.P6743435991730158212`, by `A397233.P6743435991730158212.correct`). Lean does not check the parsing of the name. -/
def A397233.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397234.P13205330288265978584

`ogf(1/(1-x-x^2+x^3-x^5-x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397234.P13205330288265978584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -1, 1, 0, -1, -1] n

end

end A397234.P13205330288265978584

noncomputable section

/-- A397234: Expansion of 1/(1 - x - x^2 + x^3 - x^5 - x^6).

Offset 0, canonical program `A397234.P13205330288265978584`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^5-x^6))` (program `A397234.P13205330288265978584`, by `A397234.P13205330288265978584.correct`). Lean does not check the parsing of the name. -/
def A397234 (n : ℕ) : ℤ :=
  A397234.P13205330288265978584.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+x^3-x^5-x^6))` (program `A397234.P13205330288265978584`, by `A397234.P13205330288265978584.correct`). Lean does not check the parsing of the name. -/
def A397234.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397235.P4846453791304873991

`ogf(1/(1-2x-x^2+x^3-x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397235.P4846453791304873991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -1, 1, -1] n

end

end A397235.P4846453791304873991

noncomputable section

/-- A397235: Expansion of 1/(1 - 2*x - x^2 + x^3 - x^4).

Offset 0, canonical program `A397235.P4846453791304873991`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+x^3-x^4))` (program `A397235.P4846453791304873991`, by `A397235.P4846453791304873991.correct`). Lean does not check the parsing of the name. -/
def A397235 (n : ℕ) : ℤ :=
  A397235.P4846453791304873991.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+x^3-x^4))` (program `A397235.P4846453791304873991`, by `A397235.P4846453791304873991.correct`). Lean does not check the parsing of the name. -/
def A397235.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397236.P4792645745444745250

`ogf(1/(1-x^3-x^4-2x^5-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397236.P4792645745444745250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -1, -1, -2, 0, -1] n

end

end A397236.P4792645745444745250

noncomputable section

/-- A397236: Expansion of 1/(1 - x^3 - x^4 - 2*x^5 - x^7).

Offset 0, canonical program `A397236.P4792645745444745250`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-2x^5-x^7))` (program `A397236.P4792645745444745250`, by `A397236.P4792645745444745250.correct`). Lean does not check the parsing of the name. -/
def A397236 (n : ℕ) : ℤ :=
  A397236.P4792645745444745250.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^4-2x^5-x^7))` (program `A397236.P4792645745444745250`, by `A397236.P4792645745444745250.correct`). Lean does not check the parsing of the name. -/
def A397236.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397237.P3136485618652841643

`ogf(1/(1-2x+x^2-x^3-2x^4-x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397237.P3136485618652841643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, -1, -2, -1] n

end

end A397237.P3136485618652841643

noncomputable section

/-- A397237: Expansion of 1/(1 - 2*x + x^2 - x^3 - 2*x^4 - x^5).

Offset 0, canonical program `A397237.P3136485618652841643`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^3-2x^4-x^5))` (program `A397237.P3136485618652841643`, by `A397237.P3136485618652841643.correct`). Lean does not check the parsing of the name. -/
def A397237 (n : ℕ) : ℤ :=
  A397237.P3136485618652841643.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^3-2x^4-x^5))` (program `A397237.P3136485618652841643`, by `A397237.P3136485618652841643.correct`). Lean does not check the parsing of the name. -/
def A397237.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397269.P4273237033905400757

`n*(8*n²-9*n-2-(9*n-6)*(-1)^n)/48`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397269.P4273237033905400757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℚ) / 48

end

end A397269.P4273237033905400757

noncomputable section

/-- A397269: a(n) = n*(8*n^2-9*n-2-(9*n-6)*(-1)^n)/48.

Offset 0, canonical program `A397269.P4273237033905400757`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A397269.anchor (n : ℕ) : (A397269 n : ℚ) = ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℚ) / 48` in `Proof.A397.A397269`. -/
def A397269 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397269.P4273237033905400757.a n)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A397269.anchor (n : ℕ) : (A397269 n : ℚ) = ((n : ℤ) * ((8 * n ^ 2 : ℤ) - (9 * n : ℤ) - 2 - ((9 * n : ℤ) - 6) * (-1) ^ n) : ℚ) / 48` in `Proof.A397.A397269`. -/
def A397269.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397270.P11203406880893266705

`(2*n-3-(-1)^n)*(32*n²-9*n+7*n*(-1)^n)/96`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397270.P11203406880893266705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℚ) / 96

end

end A397270.P11203406880893266705

noncomputable section

/-- A397270: a(n) = (2*n-3-(-1)^n)*(32*n^2-9*n+7*n*(-1)^n)/96.

Offset 0, canonical program `A397270.P11203406880893266705`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A397270.anchor (n : ℕ) : (A397270 n : ℚ) = (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℚ) / 96` in `Proof.A397.A397270`. -/
def A397270 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397270.P11203406880893266705.a n)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A397270.anchor (n : ℕ) : (A397270 n : ℚ) = (((2 * n : ℤ) - 3 - (-1) ^ n) * ((32 * n ^ 2 : ℤ) - (9 * n : ℤ) + (7 * n : ℤ) * (-1) ^ n) : ℚ) / 96` in `Proof.A397.A397270`. -/
def A397270.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397386.P7285958036870640858

`∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397386.P7285958036870640858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 3 * k) (4 * k) * Nat.choose (n + 4 * k) k

end

end A397386.P7285958036870640858

noncomputable section

/-- A397386: a(n) = Sum_{k=0..n} binomial(n+3*k,4*k) * binomial(n+4*k,k).

Offset 0, canonical program `A397386.P7285958036870640858`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]` (program `A397386.P7285958036870640858`, by `A397386.P7285958036870640858.correct`). Lean does not check the parsing of the name. -/
def A397386 (n : ℕ) : ℤ :=
  (A397386.P7285958036870640858.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]` (program `A397386.P7285958036870640858`, by `A397386.P7285958036870640858.correct`). Lean does not check the parsing of the name. -/
def A397386.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397444.P9187088293383785550

`3*n²+1-(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397444.P9187088293383785550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 + 1 : ℤ) - (-1) ^ n

end

end A397444.P9187088293383785550

noncomputable section

/-- A397444: Anion excess of a saturated rock-salt (NaCl) cube with n atoms along each edge: a(n) = 3*n^2 + 1 - (-1)^n.

Offset 0, canonical program `A397444.P9187088293383785550`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+1-(-1)^n` (program `A397444.P9187088293383785550`, by `A397444.P9187088293383785550.correct`). Lean does not check the parsing of the name. -/
def A397444 (n : ℕ) : ℤ :=
  A397444.P9187088293383785550.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+1-(-1)^n` (program `A397444.P9187088293383785550`, by `A397444.P9187088293383785550.correct`). Lean does not check the parsing of the name. -/
def A397444.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397541.P17184798670229268133

`∑{#}[n, C(2*n+3*#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397541.P17184798670229268133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + 3 * k) k

end

end A397541.P17184798670229268133

noncomputable section

/-- A397541: a(n) = Sum_{k=0..n} binomial(2*n+3*k,k).

Offset 0, canonical program `A397541.P17184798670229268133`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n+3*#, #)]` (program `A397541.P17184798670229268133`, by `A397541.P17184798670229268133.correct`). Lean does not check the parsing of the name. -/
def A397541 (n : ℕ) : ℤ :=
  (A397541.P17184798670229268133.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n+3*#, #)]` (program `A397541.P17184798670229268133`, by `A397541.P17184798670229268133.correct`). Lean does not check the parsing of the name. -/
def A397541.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397563.P2417718872384134828

`∑{#}[n, C(3*n+3*#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397563.P2417718872384134828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (3 * n + 3 * k) k

end

end A397563.P2417718872384134828

noncomputable section

/-- A397563: a(n) = Sum_{k=0..n} binomial(3*n+3*k,k).

Offset 0, canonical program `A397563.P2417718872384134828`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+3*#, #)]` (program `A397563.P2417718872384134828`, by `A397563.P2417718872384134828.correct`). Lean does not check the parsing of the name. -/
def A397563 (n : ℕ) : ℤ :=
  (A397563.P2417718872384134828.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+3*#, #)]` (program `A397563.P2417718872384134828`, by `A397563.P2417718872384134828.correct`). Lean does not check the parsing of the name. -/
def A397563.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397564.P1344736836338881572

`∑{#}[n, C(2*n+4*#, #)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397564.P1344736836338881572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * n + 4 * k) k

end

end A397564.P1344736836338881572

noncomputable section

/-- A397564: a(n) = Sum_{k=0..n} binomial(2*n+4*k,k).

Offset 0, canonical program `A397564.P1344736836338881572`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n+4*#, #)]` (program `A397564.P1344736836338881572`, by `A397564.P1344736836338881572.correct`). Lean does not check the parsing of the name. -/
def A397564 (n : ℕ) : ℤ :=
  (A397564.P1344736836338881572.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(2*n+4*#, #)]` (program `A397564.P1344736836338881572`, by `A397564.P1344736836338881572.correct`). Lean does not check the parsing of the name. -/
def A397564.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397733.P809762997915975337

`∑{#}[n, gcd((#+1)^5, n+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397733.P809762997915975337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.gcd ((k + 1) ^ 5) (n + 1)

end

end A397733.P809762997915975337

noncomputable section

/-- A397733: a(n) = Sum_{k=1..n} gcd(k^5,n).

Offset 1, canonical program `A397733.P809762997915975337`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^5, n+1)]` (program `A397733.P809762997915975337`, by `A397733.P809762997915975337.correct`). Lean does not check the parsing of the name. -/
def A397733 (n : ℕ) : ℤ :=
  (A397733.P809762997915975337.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, gcd((#+1)^5, n+1)]` (program `A397733.P809762997915975337`, by `A397733.P809762997915975337.correct`). Lean does not check the parsing of the name. -/
def A397733.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397936.P6278991263813186484

`floor(3*7^n/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397936.P6278991263813186484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * 7 ^ n : ℚ) / 4⌋

end

end A397936.P6278991263813186484

noncomputable section

/-- A397936: a(n) = floor(3*7^n/4).

Offset 0, canonical program `A397936.P6278991263813186484`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*7^n/4)` (program `A397936.P6278991263813186484`, by `A397936.P6278991263813186484.correct`). Lean does not check the parsing of the name. -/
def A397936 (n : ℕ) : ℤ :=
  A397936.P6278991263813186484.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*7^n/4)` (program `A397936.P6278991263813186484`, by `A397936.P6278991263813186484.correct`). Lean does not check the parsing of the name. -/
def A397936.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397937.P17930148176934407746

`floor(7^n/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397937.P17930148176934407746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 ^ n : ℚ) / 4⌋

end

end A397937.P17930148176934407746

noncomputable section

/-- A397937: a(n) = floor(7^n/4).

Offset 0, canonical program `A397937.P17930148176934407746`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/4)` (program `A397937.P17930148176934407746`, by `A397937.P17930148176934407746.correct`). Lean does not check the parsing of the name. -/
def A397937 (n : ℕ) : ℤ :=
  A397937.P17930148176934407746.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/4)` (program `A397937.P17930148176934407746`, by `A397937.P17930148176934407746.correct`). Lean does not check the parsing of the name. -/
def A397937.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398083.P12615553176713925664

`(2^n)%73`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398083.P12615553176713925664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 73

end

end A398083.P12615553176713925664

noncomputable section

/-- A398083: a(n) = 2^n mod 73.

Offset 0, canonical program `A398083.P12615553176713925664`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%73` (program `A398083.P12615553176713925664`, by `A398083.P12615553176713925664.correct`). Lean does not check the parsing of the name. -/
def A398083 (n : ℕ) : ℤ :=
  (A398083.P12615553176713925664.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%73` (program `A398083.P12615553176713925664`, by `A398083.P12615553176713925664.correct`). Lean does not check the parsing of the name. -/
def A398083.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398084.P3058219852828067056

`(3^n)%73`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398084.P3058219852828067056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n % 73

end

end A398084.P3058219852828067056

noncomputable section

/-- A398084: a(n) = 3^n mod 73.

Offset 0, canonical program `A398084.P3058219852828067056`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%73` (program `A398084.P3058219852828067056`, by `A398084.P3058219852828067056.correct`). Lean does not check the parsing of the name. -/
def A398084 (n : ℕ) : ℤ :=
  (A398084.P3058219852828067056.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^n)%73` (program `A398084.P3058219852828067056`, by `A398084.P3058219852828067056.correct`). Lean does not check the parsing of the name. -/
def A398084.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398137.P11904510586614224668

`ogf(1/(1-6x+7x^2+6x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398137.P11904510586614224668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 7, 6, 1] n

end

end A398137.P11904510586614224668

noncomputable section

/-- A398137: Expansion of generating function x / (1 - 3*x - x^2)^2.

Offset 1, canonical program `A398137.P11904510586614224668`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+7x^2+6x^3+x^4))` (program `A398137.P11904510586614224668`, by `A398137.P11904510586614224668.correct`). Lean does not check the parsing of the name. -/
def A398137 (n : ℕ) : ℤ :=
  A398137.P11904510586614224668.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+7x^2+6x^3+x^4))` (program `A398137.P11904510586614224668`, by `A398137.P11904510586614224668.correct`). Lean does not check the parsing of the name. -/
def A398137.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398146.P14218719280205801311

`ogf(1/(1-10x+23x^2+10x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398146.P14218719280205801311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 23, 10, 1] n

end

end A398146.P14218719280205801311

noncomputable section

/-- A398146: Expansion of generating function x / (1 - 5*x - x^2)^2.

Offset 1, canonical program `A398146.P14218719280205801311`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+23x^2+10x^3+x^4))` (program `A398146.P14218719280205801311`, by `A398146.P14218719280205801311.correct`). Lean does not check the parsing of the name. -/
def A398146 (n : ℕ) : ℤ :=
  A398146.P14218719280205801311.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+23x^2+10x^3+x^4))` (program `A398146.P14218719280205801311`, by `A398146.P14218719280205801311.correct`). Lean does not check the parsing of the name. -/
def A398146.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398147.P855889425603038055

`ogf(1/(1-10x+27x^2-10x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398147.P855889425603038055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 27, -10, 1] n

end

end A398147.P855889425603038055

noncomputable section

/-- A398147: Expansion of generating function x/(1-5*x+x^2)^2.

Offset 1, canonical program `A398147.P855889425603038055`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+27x^2-10x^3+x^4))` (program `A398147.P855889425603038055`, by `A398147.P855889425603038055.correct`). Lean does not check the parsing of the name. -/
def A398147 (n : ℕ) : ℤ :=
  A398147.P855889425603038055.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+27x^2-10x^3+x^4))` (program `A398147.P855889425603038055`, by `A398147.P855889425603038055.correct`). Lean does not check the parsing of the name. -/
def A398147.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398364.P12204821827431358305

`∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398364.P12204821827431358305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 7⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * k) k * Nat.choose ((n : ℤ) - (5 * k : ℤ)).toNat (2 * k)

end

end A398364.P12204821827431358305

noncomputable section

/-- A398364: a(n) = Sum_{k=0..floor(n/7)} binomial(2*k,k) * binomial(n-5*k,2*k).

Offset 0, canonical program `A398364.P12204821827431358305`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]` (program `A398364.P12204821827431358305`, by `A398364.P12204821827431358305.correct`). Lean does not check the parsing of the name. -/
def A398364 (n : ℕ) : ℤ :=
  (A398364.P12204821827431358305.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/7), C(2*#, #)*C(n-5*#, 2*#)]` (program `A398364.P12204821827431358305`, by `A398364.P12204821827431358305.correct`). Lean does not check the parsing of the name. -/
def A398364.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398365.P10988356879286163353

`∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398365.P10988356879286163353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * k) k * Nat.choose ((n : ℤ) - (6 * k : ℤ)).toNat (2 * k)

end

end A398365.P10988356879286163353

noncomputable section

/-- A398365: a(n) = Sum_{k=0..floor(n/8)} binomial(2*k,k) * binomial(n-6*k,2*k).

Offset 0, canonical program `A398365.P10988356879286163353`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]` (program `A398365.P10988356879286163353`, by `A398365.P10988356879286163353.correct`). Lean does not check the parsing of the name. -/
def A398365 (n : ℕ) : ℤ :=
  (A398365.P10988356879286163353.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/8), C(2*#, #)*C(n-6*#, 2*#)]` (program `A398365.P10988356879286163353`, by `A398365.P10988356879286163353.correct`). Lean does not check the parsing of the name. -/
def A398365.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398696.P11525538983804807962

`floor(3*11^n/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398696.P11525538983804807962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * 11 ^ n : ℚ) / 4⌋

end

end A398696.P11525538983804807962

noncomputable section

/-- A398696: a(n) = floor(3*11^n/4).

Offset 0, canonical program `A398696.P11525538983804807962`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*11^n/4)` (program `A398696.P11525538983804807962`, by `A398696.P11525538983804807962.correct`). Lean does not check the parsing of the name. -/
def A398696 (n : ℕ) : ℤ :=
  A398696.P11525538983804807962.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*11^n/4)` (program `A398696.P11525538983804807962`, by `A398696.P11525538983804807962.correct`). Lean does not check the parsing of the name. -/
def A398696.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398697.P16552437538001656140

`floor(11^n/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398697.P16552437538001656140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 ^ n : ℚ) / 4⌋

end

end A398697.P16552437538001656140

noncomputable section

/-- A398697: a(n) = floor(11^n/4).

Offset 0, canonical program `A398697.P16552437538001656140`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/4)` (program `A398697.P16552437538001656140`, by `A398697.P16552437538001656140.correct`). Lean does not check the parsing of the name. -/
def A398697 (n : ℕ) : ℤ :=
  A398697.P16552437538001656140.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11^n/4)` (program `A398697.P16552437538001656140`, by `A398697.P16552437538001656140.correct`). Lean does not check the parsing of the name. -/
def A398697.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398914.P5120649322330680519

`n*(n+2)*C(2*n+1, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398914.P5120649322330680519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) * Nat.choose (2 * n + 1) n

end

end A398914.P5120649322330680519

noncomputable section

/-- A398914: a(n) = n * (n + 2) * binomial(2*n + 1, n + 1).

Offset 0, canonical program `A398914.P5120649322330680519`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*C(2*n+1, n)` (program `A398914.P5120649322330680519`, by `A398914.P5120649322330680519.correct`). Lean does not check the parsing of the name. -/
def A398914 (n : ℕ) : ℤ :=
  (A398914.P5120649322330680519.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+2)*C(2*n+1, n)` (program `A398914.P5120649322330680519`, by `A398914.P5120649322330680519.correct`). Lean does not check the parsing of the name. -/
def A398914.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399176.P9600605657478409595

`a(n-a(n-2))+a(n-a(n-3))` with `a(0)=4, a(1)=2, a(2)=5, a(3)=3, a(4)=1, a(5)=4, a(6)=7, a(7)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399176.P9600605657478409595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 5, 3, 1, 4, 7, 5] fun n a =>
  a (n - a (n - 2)) + a (n - a (n - 3))

end

end A399176.P9600605657478409595

noncomputable section

/-- A399176: A well-defined quasi-periodic solution to the recurrence (a(n) = a(n-a(n-2)) + a(n-a(n-3))).

Offset 1, canonical program `A399176.P9600605657478409595`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-3))` (program `A399176.P9600605657478409595`, by `A399176.P9600605657478409595.correct`). Lean does not check the parsing of the name. -/
def A399176 (n : ℕ) : ℤ :=
  (A399176.P9600605657478409595.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-2))+a(n-a(n-3))` (program `A399176.P9600605657478409595`, by `A399176.P9600605657478409595.correct`). Lean does not check the parsing of the name. -/
def A399176.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399228.P7510221602356486404

`∑{#}[n, (-1)^#*(n-#)!*(n+#)!]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399228.P7510221602356486404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℤ) * (Nat.factorial (n + k) : ℤ)

end

end A399228.P7510221602356486404

noncomputable section

/-- A399228: a(n) = Sum_{k=0..n} (-1)^k*(n - k)!*(n + k)!.

Offset 0, canonical program `A399228.P7510221602356486404`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*(n-#)!*(n+#)!]` (program `A399228.P7510221602356486404`, by `A399228.P7510221602356486404.correct`). Lean does not check the parsing of the name. -/
def A399228 (n : ℕ) : ℤ :=
  A399228.P7510221602356486404.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*(n-#)!*(n+#)!]` (program `A399228.P7510221602356486404`, by `A399228.P7510221602356486404.correct`). Lean does not check the parsing of the name. -/
def A399228.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399384.P7302958641022206687

`(2*n+1)*n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399384.P7302958641022206687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.factorial n ^ 2

end

end A399384.P7302958641022206687

noncomputable section

/-- A399384: a(n) = (2*n + 1)*(n!)^2.

Offset 0, canonical program `A399384.P7302958641022206687`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*n!²` (program `A399384.P7302958641022206687`, by `A399384.P7302958641022206687.correct`). Lean does not check the parsing of the name. -/
def A399384 (n : ℕ) : ℤ :=
  (A399384.P7302958641022206687.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*n!²` (program `A399384.P7302958641022206687`, by `A399384.P7302958641022206687.correct`). Lean does not check the parsing of the name. -/
def A399384.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399405.P16569053505981937419

`6*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399405.P16569053505981937419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * a (n - 1) + 10 * a (n - 2)

end

end A399405.P16569053505981937419

noncomputable section

/-- A399405: a(n) = 6*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=3.

Offset 0, canonical program `A399405.P16569053505981937419`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+10*a(n-2)` (program `A399405.P16569053505981937419`, by `A399405.P16569053505981937419.correct`). Lean does not check the parsing of the name. -/
def A399405 (n : ℕ) : ℤ :=
  (A399405.P16569053505981937419.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+10*a(n-2)` (program `A399405.P16569053505981937419`, by `A399405.P16569053505981937419.correct`). Lean does not check the parsing of the name. -/
def A399405.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399477.P4764234066345403469

`9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399477.P4764234066345403469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (n + 4) 8 + 49 * Nat.choose (n + 4) 7 + 75 * Nat.choose (n + 4) 6 + 35 * Nat.choose (n + 4) 5 + 3 * Nat.choose (n + 4) 4

end

end A399477.P4764234066345403469

noncomputable section

/-- A399477: a(n) = 9*binomial(n,8) + 49*binomial(n,7) + 75*binomial(n,6) + 35*binomial(n,5) + 3*binomial(n,4).

Offset 4, canonical program `A399477.P4764234066345403469`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)` (program `A399477.P4764234066345403469`, by `A399477.P4764234066345403469.correct`). Lean does not check the parsing of the name. -/
def A399477 (n : ℕ) : ℤ :=
  (A399477.P4764234066345403469.a (n - 4) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*C(n+4, 8)+49*C(n+4, 7)+75*C(n+4, 6)+35*C(n+4, 5)+3*C(n+4, 4)` (program `A399477.P4764234066345403469`, by `A399477.P4764234066345403469.correct`). Lean does not check the parsing of the name. -/
def A399477.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399773.P204488252996263267

`a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399773.P204488252996263267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 1) - 1).toNat + a ((n : ℤ) - a (n - 1)).toNat + (-1) ^ (n + 1)

end

end A399773.P204488252996263267

noncomputable section

/-- A399773: a(1) = a(2) = 1; for n > 2, a(n) = a(a(n-1)) + a(n-a(n-1)) + (-1)^n.

Offset 1, canonical program `A399773.P204488252996263267`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` (program `A399773.P204488252996263267`, by `A399773.P204488252996263267.correct`). Lean does not check the parsing of the name. -/
def A399773 (n : ℕ) : ℤ :=
  A399773.P204488252996263267.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` (program `A399773.P204488252996263267`, by `A399773.P204488252996263267.correct`). Lean does not check the parsing of the name. -/
def A399773.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399776.P13636545612024227465

`8*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399776.P13636545612024227465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  8 * a (n - 1) + 10 * a (n - 2)

end

end A399776.P13636545612024227465

noncomputable section

/-- A399776: a(n) = 8*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=4.

Offset 0, canonical program `A399776.P13636545612024227465`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+10*a(n-2)` (program `A399776.P13636545612024227465`, by `A399776.P13636545612024227465.correct`). Lean does not check the parsing of the name. -/
def A399776 (n : ℕ) : ℤ :=
  (A399776.P13636545612024227465.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+10*a(n-2)` (program `A399776.P13636545612024227465`, by `A399776.P13636545612024227465.correct`). Lean does not check the parsing of the name. -/
def A399776.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400512.P8796722601478653191

`ogf((x-x^2)/(1-9x+15x^2+20x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400512.P8796722601478653191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -9, 15, 20] n

end

end A400512.P8796722601478653191

noncomputable section

/-- A400512: Expansion of g.f. x*(1-x)/((1-4*x)*(1-5*x-5*x^2)).

Offset 0, canonical program `A400512.P8796722601478653191`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-9x+15x^2+20x^3))` (program `A400512.P8796722601478653191`, by `A400512.P8796722601478653191.correct`). Lean does not check the parsing of the name. -/
def A400512 (n : ℕ) : ℤ :=
  A400512.P8796722601478653191.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-9x+15x^2+20x^3))` (program `A400512.P8796722601478653191`, by `A400512.P8796722601478653191.correct`). Lean does not check the parsing of the name. -/
def A400512.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400515.P13484862725235951499

`27*a(n-1)-204*a(n-2)+448*a(n-3)` with `a(0)=0, a(1)=0, a(2)=9`
-/

namespace A400515.P13484862725235951499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 9] fun n a =>
  27 * a (n - 1) - 204 * a (n - 2) + 448 * a (n - 3)

end

end A400515.P13484862725235951499

noncomputable section

/-- A400515: a(n) = (16^n + 3*4^n - 4*7^n)/12.

Offset 0, canonical program `A400515.P13484862725235951499`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16^n+3*4^n-4*7^n)/12` (program `A400515.P7561032127694278361`, by `A400515.P7561032127694278361.correct`). Lean does not check the parsing of the name. -/
def A400515 (n : ℕ) : ℤ :=
  A400515.P13484862725235951499.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(16^n+3*4^n-4*7^n)/12` (program `A400515.P7561032127694278361`, by `A400515.P7561032127694278361.correct`). Lean does not check the parsing of the name. -/
def A400515.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400652.P6583452065758256833

`a(n-1)*a(floor(n/2))+n` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400652.P6583452065758256833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * a ⌊(n : ℚ) / 2⌋.toNat + n

end

end A400652.P6583452065758256833

noncomputable section

/-- A400652: a(0) = 1; a(n) = a(n-1)*a(floor(n/2)) + n for n >= 1.

Offset 0, canonical program `A400652.P6583452065758256833`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(floor(n/2))+n` (program `A400652.P6583452065758256833`, by `A400652.P6583452065758256833.correct`). Lean does not check the parsing of the name. -/
def A400652 (n : ℕ) : ℤ :=
  (A400652.P6583452065758256833.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(floor(n/2))+n` (program `A400652.P6583452065758256833`, by `A400652.P6583452065758256833.correct`). Lean does not check the parsing of the name. -/
def A400652.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400671.P12732179933824227219

`row(n)+C(col(n), 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400671.P12732179933824227219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + Nat.choose (SequenceMachineLib.triCol n) 2

end

end A400671.P12732179933824227219

noncomputable section

/-- A400671: Triangle read by rows: T(n, k) = n + binomial(k, 2).

Offset 0, canonical program `A400671.P12732179933824227219`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+C(col(n), 2)` (program `A400671.P12732179933824227219`, by `A400671.P12732179933824227219.correct`). Lean does not check the parsing of the name. -/
def A400671 (n : ℕ) : ℤ :=
  (A400671.P12732179933824227219.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+C(col(n), 2)` (program `A400671.P12732179933824227219`, by `A400671.P12732179933824227219.correct`). Lean does not check the parsing of the name. -/
def A400671.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400779.P9186177373831134570

`∑{d}[n+1, gcd(n+1, #+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400779.P9186177373831134570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd (n + 1) (d + 1)

end

end A400779.P9186177373831134570

noncomputable section

/-- A400779: a(n) = Sum_{d|n} gcd(n,d+1).

Offset 1, canonical program `A400779.P9186177373831134570`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(n+1, #+1)]` (program `A400779.P9186177373831134570`, by `A400779.P9186177373831134570.correct`). Lean does not check the parsing of the name. -/
def A400779 (n : ℕ) : ℤ :=
  (A400779.P9186177373831134570.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(n+1, #+1)]` (program `A400779.P9186177373831134570`, by `A400779.P9186177373831134570.correct`). Lean does not check the parsing of the name. -/
def A400779.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400851.P10122007858320249699

`4*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400851.P10122007858320249699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) + 10 * a (n - 2)

end

end A400851.P10122007858320249699

noncomputable section

/-- A400851: a(n) = 4*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=2.

Offset 0, canonical program `A400851.P10122007858320249699`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+10*a(n-2)` (program `A400851.P10122007858320249699`, by `A400851.P10122007858320249699.correct`). Lean does not check the parsing of the name. -/
def A400851 (n : ℕ) : ℤ :=
  (A400851.P10122007858320249699.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+10*a(n-2)` (program `A400851.P10122007858320249699`, by `A400851.P10122007858320249699.correct`). Lean does not check the parsing of the name. -/
def A400851.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A401342.P18093636600124100267

`ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401342.P18093636600124100267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1, -1] [1, -3, 1, 2] n

end

end A401342.P18093636600124100267

noncomputable section

/-- A401342: Expansion of g.f. x*(1 - 2*x + x^2 - x^3)/((1 - x - x^2)*(1 - 2*x)).

Offset 0, canonical program `A401342.P18093636600124100267`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))` (program `A401342.P18093636600124100267`, by `A401342.P18093636600124100267.correct`). Lean does not check the parsing of the name. -/
def A401342 (n : ℕ) : ℤ :=
  A401342.P18093636600124100267.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3-x^4)/(1-3x+x^2+2x^3))` (program `A401342.P18093636600124100267`, by `A401342.P18093636600124100267.correct`). Lean does not check the parsing of the name. -/
def A401342.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396232.P8331361821293475366

`ogf((1+x+3x^2+5x^3+10x^4)/(1-2x+x^2))`
-/

namespace A396232.P8331361821293475366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 5, 10] [1, -2, 1] n

end

end A396232.P8331361821293475366

noncomputable section

/-- A396232: The smallest amount which cannot be made with fewer than n Indian coins.

Offset 1, canonical program `A396232.P8331361821293475366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396232 (n : ℕ) : ℤ :=
  A396232.P8331361821293475366.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396257.P15936634037170540528

`5*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=12, a(2)=54`
-/

namespace A396257.P15936634037170540528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 54] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2)

end

end A396257.P15936634037170540528

noncomputable section

/-- A396257: Number of n X 3 arrays over {0,1,2} such that orthogonally adjacent entries are distinct.

Offset 0, canonical program `A396257.P15936634037170540528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396257 (n : ℕ) : ℤ :=
  A396257.P15936634037170540528.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396280.P17934408137888544168

`ogf((2+12x^2+40x^3+82x^4-56x^5+16x^6)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A396280.P17934408137888544168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 12, 40, 82, -56, 16] [1, -4, 6, -4, 1] n

end

end A396280.P17934408137888544168

noncomputable section

/-- A396280: a(1) = 2, a(2) = 8, a(3) = 32; a(n) = 16*(n-2)^3 for n >= 4.

Offset 1, canonical program `A396280.P17934408137888544168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396280 (n : ℕ) : ℤ :=
  A396280.P17934408137888544168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396280.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396285.P15227864129736478013

`1/3*(C((n+1)², 3)+2*floor((n+1)²/3))`
-/

namespace A396285.P15227864129736478013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * ((Nat.choose ((n + 1) ^ 2) 3 : ℤ) + 2 * ⌊((n + 1) ^ 2 : ℚ) / 3⌋ : ℚ)

end

end A396285.P15227864129736478013

noncomputable section

/-- A396285: a(n) is the number of distinct triples of triangles chosen from the n^2 unit triangles of the triangular grid up to rotation.

Offset 1, canonical program `A396285.P15227864129736478013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396285.P15227864129736478013.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396310.P15637081066417192461

`(8-7*n)²*n*(25*n-24)`
-/

namespace A396310.P15637081066417192461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 - (7 * n : ℤ)) ^ 2 * (n : ℤ) * ((25 * n : ℤ) - 24)

end

end A396310.P15637081066417192461

noncomputable section

/-- A396310: a(n)/9! is the coefficient of x^9 in the Taylor expansion of the k-th iteration of sin(x).

Offset 0, canonical program `A396310.P15637081066417192461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396310 (n : ℕ) : ℤ :=
  A396310.P15637081066417192461.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396311.P12780869091172628652

`a(n-1)+3*a(n-3)+a(n-4)+3*a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=8, a(5)=15, a(6)=31`
-/

namespace A396311.P12780869091172628652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4, 8, 15, 31] fun n a =>
  a (n - 1) + 3 * a (n - 3) + a (n - 4) + 3 * a (n - 5) + a (n - 7)

end

end A396311.P12780869091172628652

noncomputable section

/-- A396311: Number of tilings of a 5 X n rectangle by unit squares and the Ferrers tile (3,2,1).

Offset 0, canonical program `A396311.P12780869091172628652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396311 (n : ℕ) : ℤ :=
  (A396311.P12780869091172628652.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396312.P10265567404779375665

`ogf(1/(1-x-4x^4-3x^5-3x^6-6x^7-2x^8-2x^9-4x^10-x^13))`
-/

namespace A396312.P10265567404779375665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, -4, -3, -3, -6, -2, -2, -4, 0, 0, -1] n

end

end A396312.P10265567404779375665

noncomputable section

/-- A396312: Number of tilings of an (h+3) X n rectangle by unit squares and the Ferrers tile (h,2,2,1), for h >= 4.

Offset 0, canonical program `A396312.P10265567404779375665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396312 (n : ℕ) : ℤ :=
  A396312.P10265567404779375665.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396313.P9142973888799398951

`a(n-1)+3*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=7`
-/

namespace A396313.P9142973888799398951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4, 7] fun n a =>
  a (n - 1) + 3 * a (n - 3) + a (n - 5)

end

end A396313.P9142973888799398951

noncomputable section

/-- A396313: Number of tilings of a 5 X n rectangle by unit squares and the Ferrers tile (3,3,2).

Offset 0, canonical program `A396313.P9142973888799398951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396313 (n : ℕ) : ℤ :=
  (A396313.P9142973888799398951.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396317.P8377799462079475610

`90*C(n, 4)²+36*C(n, 4)*C(n, 3)+2*C(n, 2)*C(n, 4)`
-/

namespace A396317.P8377799462079475610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90 * Nat.choose n 4 ^ 2 + 36 * Nat.choose n 4 * Nat.choose n 3 + 2 * Nat.choose n 2 * Nat.choose n 4

end

end A396317.P8377799462079475610

noncomputable section

/-- A396317: Number of n X n binary matrices with exactly 8 1's such that there are an even number of 1's in every row and column.

Offset 0, canonical program `A396317.P8377799462079475610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396317 (n : ℕ) : ℤ :=
  (A396317.P8377799462079475610.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396321.P1360173914200064195

`(n-2)*(n-1)²*n²*(n+1)²*((n+1)*((n+1)*(17*(n+1)-127)+300)-236)/120`
-/

namespace A396321.P1360173914200064195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 1) ^ 2 * (n ^ 2 : ℤ) * ((n + 1) ^ 2 : ℤ) * ((n + 1 : ℤ) * ((n + 1 : ℤ) * ((17 * (n + 1) : ℤ) - 127) + 300) - 236) : ℚ) / 120

end

end A396321.P1360173914200064195

noncomputable section

/-- A396321: Number of n X n binary matrices with exactly 10 1's such that there are an even number of 1's in every row and column.

Offset 1, canonical program `A396321.P1360173914200064195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396321 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396321.P1360173914200064195.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396322.P11753024341592081400

`ogf((10x^5-20x^6+6x^7)/(1-8x+22x^2-20x^3-11x^4+28x^5-12x^6))`
-/

namespace A396322.P11753024341592081400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 10, -20, 6] [1, -8, 22, -20, -11, 28, -12] n

end

end A396322.P11753024341592081400

noncomputable section

/-- A396322: Expansion of e.g.f. exp(x)*(cosh(x)-1)*(sinh(x)-x).

Offset 0, canonical program `A396322.P11753024341592081400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396322 (n : ℕ) : ℤ :=
  A396322.P11753024341592081400.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396353.P14220741429290017551

`2*(n+1)*(2*(n+1)^3+3*(n+1)²+19*(n+1)-18)/3`
-/

namespace A396353.P14220741429290017551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) * ((2 * (n + 1) ^ 3 + 3 * (n + 1) ^ 2 + 19 * (n + 1) : ℤ) - 18) : ℚ) / 3

end

end A396353.P14220741429290017551

noncomputable section

/-- A396353: Number of unsatisfiable 3-SAT formulas with n variables and 3 clauses in the multiset clause model.

Offset 1, canonical program `A396353.P14220741429290017551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396353.P14220741429290017551.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396403.P11039031012012612074

`col(n)^((row(n)-col(n))*(row(n)-col(n)-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396403.P11039031012012612074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℝ) ^ ((((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2 : ℝ)

end

end A396403.P11039031012012612074

noncomputable section

/-- A396403: Array read by ascending antidiagonals: A(n,k) = k^(n*(n - 1)/2) for k >= 0.

Offset 0, canonical program `A396403.P11039031012012612074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396403 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396403.P11039031012012612074.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396530.P3366522132557851823

`∑{#}[2*n, (-1)^#*C(2*n, #)*C(2*(n+#), n+#)]`
-/

namespace A396530.P3366522132557851823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (2 * n) k : ℤ) * (Nat.choose (2 * (n + k)) (n + k) : ℤ)

end

end A396530.P3366522132557851823

noncomputable section

/-- A396530: First column of the triangular array with T(0, m) = binomial(2*m, m) and T(n, m) = T(n - 1, m + 3) - 2*T(n - 1, m + 2) + T(n - 1, m + 1).

Offset 0, canonical program `A396530.P3366522132557851823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396530 (n : ℕ) : ℤ :=
  A396530.P3366522132557851823.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396532.P14538523442861767212

`∑{#}[n, (-1)^(n-#)*C(n, #)*C(2*(2*n+#), 2*n+#)]`
-/

namespace A396532.P14538523442861767212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (Nat.choose (2 * (2 * n + k)) (2 * n + k) : ℚ)

end

end A396532.P14538523442861767212

noncomputable section

/-- A396532: First column of the triangular array with T(0, m) = binomial(2*m, m) and T(n, m) = T(n - 1, m + 3) - T(n - 1, m + 2).

Offset 0, canonical program `A396532.P14538523442861767212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396532.P14538523442861767212.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396569.P3375430248005412269

`3*a(n-1)+4*a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A396569.P3375430248005412269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) + 2 * a (n - 3)

end

end A396569.P3375430248005412269

noncomputable section

/-- A396569: Number of ways to tile a rectangular strip of length n, ending in a triangle, with three types of tiles.

Offset 0, canonical program `A396569.P3375430248005412269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396569 (n : ℕ) : ℤ :=
  (A396569.P3375430248005412269.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396584.P5182168981487178385

`(4-3*(-1)^n)*5^floor(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396584.P5182168981487178385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - 3 * (-1) ^ n : ℚ) * (5 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A396584.P5182168981487178385

noncomputable section

/-- A396584: a(n) = (4 - 3*(-1)^n) * 5^floor(n/2).

Offset 0, canonical program `A396584.P5182168981487178385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396584 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396584.P5182168981487178385.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396637.P12568346666122777158

`ogf((1-x^3-2x^4)/(1-4x+4x^2+x^3-2x^4))`
-/

namespace A396637.P12568346666122777158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1, -2] [1, -4, 4, 1, -2] n

end

end A396637.P12568346666122777158

noncomputable section

/-- A396637: Number of elements of geodesic length n in the braid group B_3.

Offset 0, canonical program `A396637.P12568346666122777158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396637 (n : ℕ) : ℤ :=
  A396637.P12568346666122777158.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396638.P12202203418892401005

`ogf((1+x+3x^3+x^4)/(1-3x+3x^3+x^4))`
-/

namespace A396638.P12202203418892401005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 3, 1] [1, -3, 0, 3, 1] n

end

end A396638.P12202203418892401005

noncomputable section

/-- A396638: Number of geodesics of length n in the braid group B_3.

Offset 0, canonical program `A396638.P12202203418892401005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396638 (n : ℕ) : ℤ :=
  A396638.P12202203418892401005.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396638.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396652.P9419091518121404480

`2*floor((n-1)/2)*(n+1+floor((n-1)/2))`
-/

namespace A396652.P9419091518121404480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((n : ℤ) - 1 : ℚ) / 2⌋ * ((n + 1 : ℤ) + ⌊((n : ℤ) - 1 : ℚ) / 2⌋)

end

end A396652.P9419091518121404480

noncomputable section

/-- A396652: a(n) = (2*n-3-(-1)^n)*(6*n+1-(-1)^n)/8.

Offset 0, canonical program `A396652.P9419091518121404480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396652 (n : ℕ) : ℤ :=
  A396652.P9419091518121404480.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396699.P6815226784310775407

`ogf((1+2x^3-2x^5+x^6)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A396699.P6815226784310775407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 2, 0, -2, 1] [1, -2, -1, 4, -1, -2, 1] n

end

end A396699.P6815226784310775407

noncomputable section

/-- A396699: a(2) = 1; a(2*m) = m*(2*m^2+1)/3 - 1 for m >= 2, and a(2*m+1) = m*(m+1)*(2*m+1)/3 for m >= 1.

Offset 2, canonical program `A396699.P6815226784310775407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396699 (n : ℕ) : ℤ :=
  A396699.P6815226784310775407.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396709.P12936188025034876792

`ogf((2+12x^2+40x^3+82x^4-56x^5+16x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A396709.P12936188025034876792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 12, 40, 82, -56, 16] [1, -5, 10, -10, 5, -1] n

end

end A396709.P12936188025034876792

noncomputable section

/-- A396709: Partial sums of A396280.

Offset 1, canonical program `A396709.P12936188025034876792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396709 (n : ℕ) : ℤ :=
  A396709.P12936188025034876792.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396719.P6841675778921449716

`ogf((1-3x-66x^2-58x^3+5x^4+x^5)/(1-17x+30x^2+162x^3-59x^4-5x^5))`
-/

namespace A396719.P6841675778921449716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -66, -58, 5, 1] [1, -17, 30, 162, -59, -5] n

end

end A396719.P6841675778921449716

noncomputable section

/-- A396719: Volume (in unit cubes) of the level-n additive cube fractal in which a central cube of side 2*Pell(n-1) is surrounded by six copies of the previous level (silver-ratio scaling).

Offset 1, canonical program `A396719.P6841675778921449716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396719 (n : ℕ) : ℤ :=
  A396719.P6841675778921449716.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396811.P3599046288112504341

`ogf((x^2+2x^3+2x^4+x^6)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`
-/

namespace A396811.P3599046288112504341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 2, 2, 0, 1] [1, -1, -1, 1, -1, 1, 1, -1] n

end

end A396811.P3599046288112504341

noncomputable section

/-- A396811: Lower (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396811.P3599046288112504341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396811 (n : ℕ) : ℤ :=
  A396811.P3599046288112504341.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396812.P15073648604974252272

`ogf((x+x^2+2x^4+x^5+x^6)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`
-/

namespace A396812.P15073648604974252272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 0, 2, 1, 1] [1, -1, -1, 1, -1, 1, 1, -1] n

end

end A396812.P15073648604974252272

noncomputable section

/-- A396812: Upper (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396812.P15073648604974252272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396812 (n : ℕ) : ℤ :=
  A396812.P15073648604974252272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396813.P17724190331950591389

`ogf((x+2x^3+2x^4+x^5)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`
-/

namespace A396813.P17724190331950591389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 2, 2, 1] [1, -1, -1, 1, -1, 1, 1, -1] n

end

end A396813.P17724190331950591389

noncomputable section

/-- A396813: Lower (1/2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396813.P17724190331950591389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396813 (n : ℕ) : ℤ :=
  A396813.P17724190331950591389.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396814.P11618353801760511473

`ogf((x+x^2+2x^3+x^5+x^6)/(1-x-x^2+x^3-x^4+x^5+x^6-x^7))`
-/

namespace A396814.P11618353801760511473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 0, 1, 1] [1, -1, -1, 1, -1, 1, 1, -1] n

end

end A396814.P11618353801760511473

noncomputable section

/-- A396814: Upper (1/2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396814.P11618353801760511473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396814 (n : ℕ) : ℤ :=
  A396814.P11618353801760511473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396831.P9098142302927561969

`floor(10^(n+1)*(log(n+1)-floor(log(n+1))))%10`
-/

namespace A396831.P9098142302927561969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(10 ^ (n + 1) : ℝ) * (Real.log (n + 1 : ℝ) - (⌊Real.log (n + 1 : ℝ)⌋ : ℝ))⌋ 10

end

end A396831.P9098142302927561969

noncomputable section

/-- A396831: a(n) is the n-th digit after the decimal point in the decimal expansion of the natural logarithm of n.

Offset 1, canonical program `A396831.P9098142302927561969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396831 (n : ℕ) : ℤ :=
  A396831.P9098142302927561969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396833.P2013370594333434394

`∑{#}[floor(n/2), C(n, #)*C(2*#, #)*C(#, n-2*#)]`
-/

namespace A396833.P2013370594333434394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n k * Nat.choose (2 * k) k * Nat.choose k ((n : ℤ) - (2 * k : ℤ)).toNat

end

end A396833.P2013370594333434394

noncomputable section

/-- A396833: The constant coefficient of (x + y + y^-1 + x^-1 + x^-1*y^-1)^n.

Offset 0, canonical program `A396833.P2013370594333434394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396833 (n : ℕ) : ℤ :=
  (A396833.P2013370594333434394.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396834.P5378204169958425296

`ogf((x^2+x^3+x^4+2x^6+x^7)/(1-x-x^2+x^3-x^6+x^7+x^8-x^9))`
-/

namespace A396834.P5378204169958425296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 1, 0, 2, 1] [1, -1, -1, 1, 0, 0, -1, 1, 1, -1] n

end

end A396834.P5378204169958425296

noncomputable section

/-- A396834: Lower (2/3,1/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396834.P5378204169958425296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396834 (n : ℕ) : ℤ :=
  A396834.P5378204169958425296.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396835.P7164218109678521147

`floor((6*n²-2*n+15+(-1)^n*(2*n-7))/24)`
-/

namespace A396835.P7164218109678521147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((6 * n ^ 2 : ℤ) - (2 * n : ℤ) + 15 + (-1) ^ n * ((2 * n : ℤ) - 7) : ℚ) / 24⌋

end

end A396835.P7164218109678521147

noncomputable section

/-- A396835: Upper (2/3,1/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396835.P7164218109678521147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396835 (n : ℕ) : ℤ :=
  A396835.P7164218109678521147.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396858.P7139502328343253310

`(n^12+3*n^8+8*n²+8*n^4+4*n^6)/24`
-/

namespace A396858.P7139502328343253310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 12 + 3 * n ^ 8 + 8 * n ^ 2 + 8 * n ^ 4 + 4 * n ^ 6 : ℚ) / 24

end

end A396858.P7139502328343253310

noncomputable section

/-- A396858: The number of n-colorings of the faces of the pyritohedron up to rotation and reflection.

Offset 0, canonical program `A396858.P7139502328343253310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396858 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396858.P7139502328343253310.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396870.P11015378271159518528

`4*3^(2*n+1)-floor(2*3^(n+1/2))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396870.P11015378271159518528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 3 ^ (2 * n + 1) : ℤ) - ⌊2 * (3 : ℝ) ^ ((n : ℚ) + (1 : ℚ) / 2 : ℝ)⌋ ^ 2

end

end A396870.P11015378271159518528

noncomputable section

/-- A396870: a(n) = 4*3^(2*n+1) - floor(2*3^(n+1/2))^2.

Offset 0, canonical program `A396870.P11015378271159518528`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*3^(2*n+1)-floor(2*3^(n+1/2))²` (program `A396870.P11015378271159518528`, by `A396870.P11015378271159518528.correct`). Lean does not check the parsing of the name. -/
def A396870 (n : ℕ) : ℤ :=
  A396870.P11015378271159518528.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*3^(2*n+1)-floor(2*3^(n+1/2))²` (program `A396870.P11015378271159518528`, by `A396870.P11015378271159518528.correct`). Lean does not check the parsing of the name. -/
def A396870.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396871.P10312368681915669094

`4*5^(2*n+1)-floor(2*5^(n+1/2))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396871.P10312368681915669094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 5 ^ (2 * n + 1) : ℤ) - ⌊2 * (5 : ℝ) ^ ((n : ℚ) + (1 : ℚ) / 2 : ℝ)⌋ ^ 2

end

end A396871.P10312368681915669094

noncomputable section

/-- A396871: a(n) = 4*5^(2*n+1) - floor(2*5^(n+1/2))^2.

Offset 0, canonical program `A396871.P10312368681915669094`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*5^(2*n+1)-floor(2*5^(n+1/2))²` (program `A396871.P10312368681915669094`, by `A396871.P10312368681915669094.correct`). Lean does not check the parsing of the name. -/
def A396871 (n : ℕ) : ℤ :=
  A396871.P10312368681915669094.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*5^(2*n+1)-floor(2*5^(n+1/2))²` (program `A396871.P10312368681915669094`, by `A396871.P10312368681915669094.correct`). Lean does not check the parsing of the name. -/
def A396871.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396872.P17686248699572515404

`4*7^(2*n+1)-floor(2*7^(n+1/2))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396872.P17686248699572515404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 7 ^ (2 * n + 1) : ℤ) - ⌊2 * (7 : ℝ) ^ ((n : ℚ) + (1 : ℚ) / 2 : ℝ)⌋ ^ 2

end

end A396872.P17686248699572515404

noncomputable section

/-- A396872: a(n) = 4*7^(2*n+1) - floor(2*7^(n+1/2))^2.

Offset 0, canonical program `A396872.P17686248699572515404`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*7^(2*n+1)-floor(2*7^(n+1/2))²` (program `A396872.P17686248699572515404`, by `A396872.P17686248699572515404.correct`). Lean does not check the parsing of the name. -/
def A396872 (n : ℕ) : ℤ :=
  A396872.P17686248699572515404.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*7^(2*n+1)-floor(2*7^(n+1/2))²` (program `A396872.P17686248699572515404`, by `A396872.P17686248699572515404.correct`). Lean does not check the parsing of the name. -/
def A396872.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396927.P10677914664923563345

`3*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=54`
-/

namespace A396927.P10677914664923563345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 20, 54] fun n a =>
  3 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A396927.P10677914664923563345

noncomputable section

/-- A396927: Breadth-first search (BFS) layer sizes of the Coxeter group of the 5-dimensional right-corner orthoscheme with five pairwise distinct leg lengths.

Offset 0, canonical program `A396927.P10677914664923563345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396927 (n : ℕ) : ℤ :=
  A396927.P10677914664923563345.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396953.P1454756326558987831

`4*a(n-1)-3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=35, a(3)=118, a(4)=353`
-/

namespace A396953.P1454756326558987831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 35, 118, 353] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3) + a (n - 4)

end

end A396953.P1454756326558987831

noncomputable section

/-- A396953: Number of elements of word-length n in the reflection group of a seven-dimensional orthoscheme with distinct edge lengths.

Offset 0, canonical program `A396953.P1454756326558987831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396953 (n : ℕ) : ℤ :=
  A396953.P1454756326558987831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396954.P5032689482050111643

`(n+3)*(2*(n+1))!/((n+1)!*2^(n+1))-3*2^n*(n+1)!`
-/

namespace A396954.P5032689482050111643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.factorial (2 * (n + 1)) : ℚ) / (Nat.factorial (n + 1) * 2 ^ (n + 1) : ℚ) - (3 * 2 ^ n * Nat.factorial (n + 1) : ℚ)

end

end A396954.P5032689482050111643

noncomputable section

/-- A396954: Number of rooted binary time-consistent leaf-labeled galled trees with n leaves and exactly 1 gall.

Offset 1, canonical program `A396954.P5032689482050111643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396954 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396954.P5032689482050111643.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396987.P1592483923655048899

`n^4*(n^8+3*n²+8)/12`
-/

namespace A396987.P1592483923655048899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 * (n ^ 8 + 3 * n ^ 2 + 8) : ℚ) / 12

end

end A396987.P1592483923655048899

noncomputable section

/-- A396987: The number of n-colorings of the faces of the triakis tetrahedron up to rotation.

Offset 0, canonical program `A396987.P1592483923655048899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396987 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396987.P1592483923655048899.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397034.P13546972561645627627

`floor((n+1)²/2-(n+1)²/log(n+2)+n+1)`
-/

namespace A397034.P13546972561645627627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1) ^ 2 : ℚ) / 2 : ℝ) - ((n + 1) ^ 2 : ℝ) / Real.log (n + 2 : ℝ) + (n + 1 : ℝ)⌋

end

end A397034.P13546972561645627627

noncomputable section

/-- A397034: a(n) = floor(A(n)), where A(n) is the area enclosed between the line y = x and the curve y = exp(x*log(n+1)/n) - 1 for 0 <= x <= n (the constant log(n+1)/n makes the curve pass through (n,n)).

Offset 1, canonical program `A397034.P13546972561645627627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397034 (n : ℕ) : ℤ :=
  A397034.P13546972561645627627.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397048.P14017377840809456728

`T(n-1,k-1)+(row(n)+2*col(n))*T(n-1,k)+(row(n)+col(n))*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A397048.P14017377840809456728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n + 2 * SequenceMachineLib.triCol n) * SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUpRight a n

end

end A397048.P14017377840809456728

noncomputable section

/-- A397048: Triangle T(n, k) read by rows: T(n, k) = (Sum_{i=0..k} (-1)^i * binomial(k, i) * (n+i)^n) * (-1)^k / k! for 0 <= k <= n.

Offset 0, canonical program `A397048.P14017377840809456728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397048 (n : ℕ) : ℤ :=
  (A397048.P14017377840809456728.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397063.P4385890334198674114

`ceil(2*π*sqrt((n+1)*(n+2)*(2*(n+1)+1)/6))`
-/

namespace A397063.P4385890334198674114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.pi * Real.sqrt (((n + 1) * (n + 2) * (2 * (n + 1) + 1) : ℚ) / 6 : ℝ)⌉

end

end A397063.P4385890334198674114

noncomputable section

/-- A397063: a(n) is the smallest integer exceeding 2*Pi*sqrt(n*(n+1)*(2*n+1)/6).

Offset 1, canonical program `A397063.P4385890334198674114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397063 (n : ℕ) : ℤ :=
  A397063.P4385890334198674114.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397086.P3988663382525735330

`(n-floor(sqrt(n))²)%2`
-/

namespace A397086.P3988663382525735330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ)) 2

end

end A397086.P3988663382525735330

noncomputable section

/-- A397086: Partial sums of A397085.

Offset 0, canonical program `A397086.P3988663382525735330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397086 (n : ℕ) : ℤ :=
  A397086.P3988663382525735330.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397105.P16734631379244146230

`ogf(x/(1-6x+27x^3))`
-/

namespace A397105.P16734631379244146230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 0, 27] n

end

end A397105.P16734631379244146230

noncomputable section

/-- A397105: a(n) = 3^(n-1)*(Fibonacci(n+2) - 1).

Offset 0, canonical program `A397105.P16734631379244146230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397105 (n : ℕ) : ℤ :=
  A397105.P16734631379244146230.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397107.P4166444551194803605

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=9, a(4)=12`
-/

namespace A397107.P4166444551194803605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 9, 12] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A397107.P4166444551194803605

noncomputable section

/-- A397107: Lower (1,2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A397107.P4166444551194803605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397107 (n : ℕ) : ℤ :=
  A397107.P4166444551194803605.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397108.P5735509425177347241

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=12`
-/

namespace A397108.P5735509425177347241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 12] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A397108.P5735509425177347241

noncomputable section

/-- A397108: Lower (2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A397108.P5735509425177347241`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397108 (n : ℕ) : ℤ :=
  A397108.P5735509425177347241.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397109.P15019351161246294738

`floor((11*n²+8*n+11)/36-n%2*n/2-(n+2)%3*n/9)`
-/

namespace A397109.P15019351161246294738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 * n ^ 2 + 8 * n + 11 : ℚ) / 36 - ((n % 2 * n : ℕ) : ℚ) / 2 - (((n + 2) % 3 * n : ℕ) : ℚ) / 9⌋

end

end A397109.P15019351161246294738

noncomputable section

/-- A397109: Lower (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/3]^2); see Comments.

Offset 0, canonical program `A397109.P15019351161246294738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397109 (n : ℕ) : ℤ :=
  A397109.P15019351161246294738.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397113.P6223883879511154495

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=-2, a(4)=4`
-/

namespace A397113.P6223883879511154495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, -2, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A397113.P6223883879511154495

noncomputable section

/-- A397113: Lower (2,-1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A397113.P6223883879511154495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397113 (n : ℕ) : ℤ :=
  A397113.P6223883879511154495.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397115.P17735952307214204756

`ogf((1+4x+x^2)/(1-4x-12x^2+14x^3+x^4))`
-/

namespace A397115.P17735952307214204756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -4, -12, 14, 1] n

end

end A397115.P17735952307214204756

noncomputable section

/-- A397115: Size of clusters of star triples of Family A in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A397115.P17735952307214204756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397115 (n : ℕ) : ℤ :=
  A397115.P17735952307214204756.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397116.P3382353160413060835

`ogf((2+4x)/(1-4x-12x^2+14x^3+x^4))`
-/

namespace A397116.P3382353160413060835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4] [1, -4, -12, 14, 1] n

end

end A397116.P3382353160413060835

noncomputable section

/-- A397116: Size of clusters of star triples of Family C in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A397116.P3382353160413060835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397116 (n : ℕ) : ℤ :=
  A397116.P3382353160413060835.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397117.P8291693752339869472

`ogf((1+4x+6x^2+x^3)/(1-4x-12x^2+14x^3+x^4))`
-/

namespace A397117.P8291693752339869472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 6, 1] [1, -4, -12, 14, 1] n

end

end A397117.P8291693752339869472

noncomputable section

/-- A397117: Size of clusters of star triples of Family B in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A397117.P8291693752339869472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397117 (n : ℕ) : ℤ :=
  A397117.P8291693752339869472.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397118.P13000304660534981691

`3*a(n-1)+15*a(n-2)+a(n-3)+12` with `a(0)=2, a(1)=15, a(2)=87`
-/

namespace A397118.P13000304660534981691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 15, 87] fun n a =>
  3 * a (n - 1) + 15 * a (n - 2) + a (n - 3) + 12

end

end A397118.P13000304660534981691

noncomputable section

/-- A397118: Size of clusters of star triples of Family D in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A397118.P13000304660534981691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397118 (n : ℕ) : ℤ :=
  (A397118.P13000304660534981691.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397119.P9974820454996830404

`3*a(n-1)+15*a(n-2)+a(n-3)+12` with `a(0)=4, a(1)=25, a(2)=147`
-/

namespace A397119.P9974820454996830404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 25, 147] fun n a =>
  3 * a (n - 1) + 15 * a (n - 2) + a (n - 3) + 12

end

end A397119.P9974820454996830404

noncomputable section

/-- A397119: Size of clusters of star triples of Family E in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A397119.P9974820454996830404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397119 (n : ℕ) : ℤ :=
  (A397119.P9974820454996830404.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397120.P1780921705813442705

`3*a(n-1)+15*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=25`
-/

namespace A397120.P1780921705813442705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 25] fun n a =>
  3 * a (n - 1) + 15 * a (n - 2) + a (n - 3)

end

end A397120.P1780921705813442705

noncomputable section

/-- A397120: Size of Type A Megastars of star triples in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A397120.P1780921705813442705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397120 (n : ℕ) : ℤ :=
  (A397120.P1780921705813442705.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397182.P18391866545752869545

`floor((15*n²-6*n+4)/4)`
-/

namespace A397182.P18391866545752869545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((15 * n ^ 2 : ℤ) - (6 * n : ℤ) + 4 : ℚ) / 4⌋

end

end A397182.P18391866545752869545

noncomputable section

/-- A397182: a(n) = maximum number of regions the plane can be divided into by drawing n constrained long-legged A's.

Offset 0, canonical program `A397182.P18391866545752869545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397182 (n : ℕ) : ℤ :=
  A397182.P18391866545752869545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397266.P8259977476271773950

`ogf((x+2x^2+2x^3+5x^4+7x^5+8x^6+6x^7+3x^8)/(1+x-2x^3-3x^4-x^5+x^6+3x^7+2x^8-x^10-x^11))`
-/

namespace A397266.P8259977476271773950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 5, 7, 8, 6, 3] [1, 1, 0, -2, -3, -1, 1, 3, 2, 0, -1, -1] n

end

end A397266.P8259977476271773950

noncomputable section

/-- A397266: Lower (1,1) midsequence of (floor[n/2]^2) and (ceiling[n/3]^2); see Comments.

Offset 0, canonical program `A397266.P8259977476271773950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397266 (n : ℕ) : ℤ :=
  A397266.P8259977476271773950.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397267.P8739381625799600127

`ogf((x+3x^2+4x^3+6x^4+5x^5+4x^6+4x^7+4x^8+2x^9+x^10)/(1+x-2x^3-3x^4-x^5+x^6+3x^7+2x^8-x^10-x^11))`
-/

namespace A397267.P8739381625799600127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 4, 6, 5, 4, 4, 4, 2, 1] [1, 1, 0, -2, -3, -1, 1, 3, 2, 0, -1, -1] n

end

end A397267.P8739381625799600127

noncomputable section

/-- A397267: Upper (1/2,1) midsequence of (floor[n/2]^2) and (ceiling[n/3]^2); see Comments.

Offset 0, canonical program `A397267.P8739381625799600127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397267 (n : ℕ) : ℤ :=
  A397267.P8739381625799600127.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397268.P682785140046726931

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=7, a(4)=4`
-/

namespace A397268.P682785140046726931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 7, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A397268.P682785140046726931

noncomputable section

/-- A397268: Lower (-1,2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A397268.P682785140046726931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397268 (n : ℕ) : ℤ :=
  A397268.P682785140046726931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397302.P13928652229525492294

`3*a(n-1)+4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=10`
-/

namespace A397302.P13928652229525492294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 10] fun n a =>
  3 * a (n - 1) + 4 * a (n - 2) + 2 * a (n - 3)

end

end A397302.P13928652229525492294

noncomputable section

/-- A397302: Number of ways to tile a strip of length n with three types of tiles.

Offset 0, canonical program `A397302.P13928652229525492294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397302 (n : ℕ) : ℤ :=
  (A397302.P13928652229525492294.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397331.P14098152171182667396

`T(n-1,k-1)+(row(n)+2*col(n)-1)*T(n-1,k)+(row(n)+col(n)-1)*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A397331.P14098152171182667396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n + 2 * SequenceMachineLib.triCol n : ℤ) - 1) * SequenceMachineLib.triUp a n + ((SequenceMachineLib.triRow n + SequenceMachineLib.triCol n : ℤ) - 1) * (SequenceMachineLib.triCol n + 1 : ℤ) * SequenceMachineLib.triUpRight a n

end

end A397331.P14098152171182667396

noncomputable section

/-- A397331: Triangle read by rows: T(n, k) = P(n, k, -1) where P(n, k, x) = (1/k!) * Sum_{j=0..k}((-1)^(k - j) * binomial(k, j) * (n + x + j)^n).

Offset 0, canonical program `A397331.P14098152171182667396`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397331 (n : ℕ) : ℤ :=
  A397331.P14098152171182667396.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397333.P1220039132598529868

`T(n-1,k-1)+(row(n)+2*col(n)+1)*T(n-1,k)+(row(n)+col(n)+1)*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A397333.P1220039132598529868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n + 2 * SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUpRight a n

end

end A397333.P1220039132598529868

noncomputable section

/-- A397333: Triangle read by rows: T(n, k) = P(n, k, 1) where P(n, k, x) = (1/k!) * Sum_{j=0..k}((-1)^(k - j) * binomial(k, j) * (n + x + j)^n).

Offset 0, canonical program `A397333.P1220039132598529868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397333 (n : ℕ) : ℤ :=
  (A397333.P1220039132598529868.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397333.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397339.P368990297149327062

`ogf((1-x+2x^2-x^4)/(1-3x+3x^2-x^3))`
-/

namespace A397339.P368990297149327062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, 0, -1] [1, -3, 3, -1] n

end

end A397339.P368990297149327062

noncomputable section

/-- A397339: Number of distinct triples (i,p,f) arising from a simple graph with n edges, where i, p and f count the edges having 0, 1, and 2 endpoints of degree greater than 1, respectively.

Offset 1, canonical program `A397339.P368990297149327062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397339 (n : ℕ) : ℤ :=
  A397339.P368990297149327062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397371.P7818601092111456214

`n+n*floor(sqrt(n))`
-/

namespace A397371.P7818601092111456214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + n * Nat.sqrt n

end

end A397371.P7818601092111456214

noncomputable section

/-- A397371: a(n) = n times the square root of the smallest square number greater than n.

Offset 0, canonical program `A397371.P7818601092111456214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397371 (n : ℕ) : ℤ :=
  (A397371.P7818601092111456214.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397404.P13267547636590681043

`a(floor((n+1)/2)-1)+(n+1)*(n+2)/2` with `a(0)=1`
-/

namespace A397404.P13267547636590681043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + ((n + 1) * (n + 2) : ℚ) / 2

end

end A397404.P13267547636590681043

noncomputable section

/-- A397404: Number of inversions of the (2*n)-th Josephus permutation with step 2.

Offset 1, canonical program `A397404.P13267547636590681043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397404.P13267547636590681043.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397404.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397437.P2934526097843624774

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=14, a(3)=33`
-/

namespace A397437.P2934526097843624774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 14, 33] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A397437.P2934526097843624774

noncomputable section

/-- A397437: Growth function of the reflection group of a four-dimensional orthoscheme with distinct edge lengths.

Offset 0, canonical program `A397437.P2934526097843624774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397437 (n : ℕ) : ℤ :=
  A397437.P2934526097843624774.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397438.P9704635539638965306

`3*a(n-1)-3*a(n-3)` with `a(0)=1, a(1)=7, a(2)=27, a(3)=82, a(4)=226`
-/

namespace A397438.P9704635539638965306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 27, 82, 226] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3)

end

end A397438.P9704635539638965306

noncomputable section

/-- A397438: Growth function of the reflection group of a six-dimensional orthoscheme with distinct edge lengths.

Offset 0, canonical program `A397438.P9704635539638965306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397438 (n : ℕ) : ℤ :=
  A397438.P9704635539638965306.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397439.P2030397398083014680

`2*a(n-1)` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A397439.P2030397398083014680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  2 * a (n - 1)

end

end A397439.P2030397398083014680

noncomputable section

/-- A397439: Growth function of the reflection group of a three-dimensional orthoscheme with distinct edge lengths.

Offset 0, canonical program `A397439.P2030397398083014680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397439 (n : ℕ) : ℤ :=
  (A397439.P2030397398083014680.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397472.P16857331926682471212

`∑{#}[n, C(2*#, #)^3*C(2*(n-#), n-#)^3]`
-/

namespace A397472.P16857331926682471212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * k) k ^ 3 * Nat.choose (2 * ((n : ℤ) - (k : ℤ))).toNat ((n : ℤ) - (k : ℤ)).toNat ^ 3

end

end A397472.P16857331926682471212

noncomputable section

/-- A397472: a(n) = 64^n * [z^n] 2F1(1/4, 1/4; 1; z)^4.

Offset 0, canonical program `A397472.P16857331926682471212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397472 (n : ℕ) : ℤ :=
  (A397472.P16857331926682471212.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397560.P10315512801496396410

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=8, a(7)=8`
-/

namespace A397560.P10315512801496396410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 5, 6, 8, 8] fun n a =>
  a (n - 1) + a (n - 7) - a (n - 8)

end

end A397560.P10315512801496396410

noncomputable section

/-- A397560: a(n) = ceiling(8*n/7) + [n == 6 (mod 7)].

Offset 0, canonical program `A397560.P10315512801496396410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397560 (n : ℕ) : ℤ :=
  A397560.P10315512801496396410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397567.P5368808541288953102

`∑{#}[n, (-1)^#*C(6*n+#, n-#)]`
-/

namespace A397567.P5368808541288953102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (6 * n + k) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A397567.P5368808541288953102

noncomputable section

/-- A397567: a(n) = Sum_{k=0..n} binomial(4*n+2*k-2,k).

Offset 0, canonical program `A397567.P5368808541288953102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397567 (n : ℕ) : ℤ :=
  A397567.P5368808541288953102.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397568.P13232104325450482709

`∑{#}[n, (-1)^#*C(6*n+#+1, n-#)]`
-/

namespace A397568.P13232104325450482709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * (Nat.choose (6 * n + k + 1) ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A397568.P13232104325450482709

noncomputable section

/-- A397568: a(n) = Sum_{k=0..n} binomial(4*n+2*k-1,k).

Offset 0, canonical program `A397568.P13232104325450482709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397568 (n : ℕ) : ℤ :=
  A397568.P13232104325450482709.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397582.P4468427538435157681

`3*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=24`
-/

namespace A397582.P4468427538435157681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 24] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A397582.P4468427538435157681

noncomputable section

/-- A397582: Number of ways to tile a 2 X n strip with squares, dominoes, and T-shaped tetrominoes.

Offset 0, canonical program `A397582.P4468427538435157681`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397582 (n : ℕ) : ℤ :=
  A397582.P4468427538435157681.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397583.P3242268447449069761

`3*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=11`
-/

namespace A397583.P3242268447449069761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 11] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A397583.P3242268447449069761

noncomputable section

/-- A397583: Number of ways to tile a 2 X n strip with one corner missing, using squares, dominoes, and T-shaped tetrominoes.

Offset 0, canonical program `A397583.P3242268447449069761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397583 (n : ℕ) : ℤ :=
  A397583.P3242268447449069761.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397586.P9518495705406750429

`a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=7, a(6)=11`
-/

namespace A397586.P9518495705406750429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 4, 7, 11] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4) + a (n - 5) + a (n - 6)

end

end A397586.P9518495705406750429

noncomputable section

/-- A397586: Number of ways to tile a strip of length n with tiles of length equivalent to 1,3,4, or 5 (mod 6).

Offset 0, canonical program `A397586.P9518495705406750429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397586 (n : ℕ) : ℤ :=
  (A397586.P9518495705406750429.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397625.P4641049130596082613

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=56, a(4)=98, a(5)=152`
-/

namespace A397625.P4641049130596082613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 24, 56, 98, 152] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A397625.P4641049130596082613

noncomputable section

/-- A397625: Coordination sequence of the bcs net.

Offset 0, canonical program `A397625.P4641049130596082613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397625 (n : ℕ) : ℤ :=
  A397625.P4641049130596082613.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397626.P13437835896529960750

`a(n-1)²+2*a(n-1)*a(n-2)²` with `a(0)=5, a(1)=45`
-/

namespace A397626.P13437835896529960750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 45] fun n a =>
  a (n - 1) ^ 2 + 2 * a (n - 1) * a (n - 2) ^ 2

end

end A397626.P13437835896529960750

noncomputable section

/-- A397626: Number of vertex clique partitions of a recursively constructed bridged dual-graph sequence starting with a triangle.

Offset 0, canonical program `A397626.P13437835896529960750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397626 (n : ℕ) : ℤ :=
  (A397626.P13437835896529960750.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397649.P12032625565740870012

`ogf((1-x-4x^2-2x^3+2x^4+x^5)/(1-4x-14x^2-4x^3+11x^4+8x^5-x^6-x^7))`
-/

namespace A397649.P12032625565740870012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4, -2, 2, 1] [1, -4, -14, -4, 11, 8, -1, -1] n

end

end A397649.P12032625565740870012

noncomputable section

/-- A397649: Number of ways to tile a 3 X n strip with squares, dominoes, and crosses.

Offset 0, canonical program `A397649.P12032625565740870012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397649 (n : ℕ) : ℤ :=
  A397649.P12032625565740870012.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397649.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397679.P9784019202045503934

`ogf((1-4x+6x^2-4x^3+x^4)/(1-9x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A397679.P9784019202045503934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -9, 10, -10, 5, -1] n

end

end A397679.P9784019202045503934

noncomputable section

/-- A397679: a(n) is the number of tilings of a 8 X 5n rectangle into I-pentominoes.

Offset 0, canonical program `A397679.P9784019202045503934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397679 (n : ℕ) : ℤ :=
  A397679.P9784019202045503934.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397750.P11650886659018461077

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3, a(5)=3, a(6)=1, a(7)=6, a(8)=4`
-/

namespace A397750.P11650886659018461077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 3, 3, 1, 6, 4] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9)

end

end A397750.P11650886659018461077

noncomputable section

/-- A397750: Number of minimum independent dominating sets in the n-path graph.

Offset 0, canonical program `A397750.P11650886659018461077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397750 (n : ℕ) : ℤ :=
  A397750.P11650886659018461077.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397751.P13062730902191877539

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=3, a(1)=0, a(2)=2, a(3)=3, a(4)=2, a(5)=5, a(6)=3, a(7)=7, a(8)=8`
-/

namespace A397751.P13062730902191877539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2, 3, 2, 5, 3, 7, 8] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9)

end

end A397751.P13062730902191877539

noncomputable section

/-- A397751: Number of minimum independent dominating sets in the n-cycle graph.

Offset 0, canonical program `A397751.P13062730902191877539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397751 (n : ℕ) : ℤ :=
  A397751.P13062730902191877539.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397752.P6709378289792760726

`ogf((x^2-2x^4-2x^5-2x^6+x^7+2x^8+2x^9+2x^10-x^12)/(1-x-3x^2+x^3+x^4+2x^5+3x^6-x^8-x^9-2x^10+x^12))`
-/

namespace A397752.P6709378289792760726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 0, -2, -2, -2, 1, 2, 2, 2, 0, -1] [1, -1, -3, 1, 1, 2, 3, 0, -1, -1, -2, 0, 1] n

end

end A397752.P6709378289792760726

noncomputable section

/-- A397752: Number of unlabeled bridgeless polygonal snake graphs with n vertices.

Offset 1, canonical program `A397752.P6709378289792760726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397752 (n : ℕ) : ℤ :=
  A397752.P6709378289792760726.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397757.P7073493250673476325

`a(n-4)+15` with `a(0)=6, a(1)=9, a(2)=14, a(3)=17, a(4)=21, a(5)=24, a(6)=29, a(7)=32, a(8)=36, a(9)=40`
-/

namespace A397757.P7073493250673476325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 9, 14, 17, 21, 24, 29, 32, 36, 40] fun n a =>
  a (n - 4) + 15

end

end A397757.P7073493250673476325

noncomputable section

/-- A397757: Maximum length of a snake polyomino in a 6 X n rectangle.

Offset 1, canonical program `A397757.P7073493250673476325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397757 (n : ℕ) : ℤ :=
  (A397757.P7073493250673476325.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397792.P18121253684873005119

`2*a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)+a(n-6)` with `a(0)=1, a(1)=6, a(2)=16, a(3)=63, a(4)=206, a(5)=735`
-/

namespace A397792.P18121253684873005119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 16, 63, 206, 735] fun n a =>
  2 * a (n - 1) + 6 * a (n - 2) - 2 * a (n - 3) - 4 * a (n - 4) + a (n - 6)

end

end A397792.P18121253684873005119

noncomputable section

/-- A397792: Number of ways to tile a 2 X n strip with alternate corners missing, using squares, dominoes, and Z-shaped tetrominoes.

Offset 2, canonical program `A397792.P18121253684873005119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397792 (n : ℕ) : ℤ :=
  A397792.P18121253684873005119.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397793.P2151155837396120395

`2*a(n-1)+6*a(n-2)-2*a(n-3)-4*a(n-4)+a(n-6)` with `a(0)=2, a(1)=4, a(2)=19, a(3)=58, a(4)=214, a(5)=722`
-/

namespace A397793.P2151155837396120395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 19, 58, 214, 722] fun n a =>
  2 * a (n - 1) + 6 * a (n - 2) - 2 * a (n - 3) - 4 * a (n - 4) + a (n - 6)

end

end A397793.P2151155837396120395

noncomputable section

/-- A397793: Number of ways to tile a 2 X n strip with both bottom corners missing, using squares, dominoes, and Z-shaped tetrominoes.

Offset 2, canonical program `A397793.P2151155837396120395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397793 (n : ℕ) : ℤ :=
  A397793.P2151155837396120395.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397803.P13251402341683626943

`2^((3^n-1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397803.P13251402341683626943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((3 ^ n : ℤ) - 1 : ℚ) / 2 : ℝ)

end

end A397803.P13251402341683626943

noncomputable section

/-- A397803: a(n) = 2^((3^n - 1)/2).

Offset 0, canonical program `A397803.P13251402341683626943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397803 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397803.P13251402341683626943.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397812.P16094429491674660988

`ogf((x-2x^2-3x^3+2x^4-10x^5)/(1-2x-6x^2+4x^3-11x^4-2x^5))`
-/

namespace A397812.P16094429491674660988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, -3, 2, -10] [1, -2, -6, 4, -11, -2] n

end

end A397812.P16094429491674660988

noncomputable section

/-- A397812: Number of tilings of a 3 X n rectangle, with all four corners removed, using dominoes and right trominoes.

Offset 1, canonical program `A397812.P16094429491674660988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397812 (n : ℕ) : ℤ :=
  A397812.P16094429491674660988.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397812.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397834.P2328111263137310151

`ogf(x^6/(1-4x+5x^2-4x^3+5x^4-4x^5+5x^6-2x^7))`
-/

namespace A397834.P2328111263137310151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 0, 1] [1, -4, 5, -4, 5, -4, 5, -2] n

end

end A397834.P2328111263137310151

noncomputable section

/-- A397834: Number of binary words of length n containing the consecutive word ababab.

Offset 0, canonical program `A397834.P2328111263137310151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397834 (n : ℕ) : ℤ :=
  A397834.P2328111263137310151.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397837.P11095280767987462011

`3*a(n-1)-a(n-3)+3*a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=81, a(5)=243`
-/

namespace A397837.P11095280767987462011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27, 81, 243] fun n a =>
  3 * a (n - 1) - a (n - 3) + 3 * a (n - 4) - a (n - 6)

end

end A397837.P11095280767987462011

noncomputable section

/-- A397837: Number of ternary words of length n over {a,b,c} avoiding the consecutive word abcabc.

Offset 0, canonical program `A397837.P11095280767987462011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397837 (n : ℕ) : ℤ :=
  A397837.P11095280767987462011.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397885.P5247711163925932801

`ogf((1-4x+6x^2-4x^3+x^4)/(1-8x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A397885.P5247711163925932801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -8, 10, -10, 5, -1] n

end

end A397885.P5247711163925932801

noncomputable section

/-- A397885: a(n) is the number of tilings of a 7 X 5n rectangle into I-pentominoes.

Offset 0, canonical program `A397885.P5247711163925932801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397885 (n : ℕ) : ℤ :=
  A397885.P5247711163925932801.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397951.P3669488581701964349

`ogf((2x^2+4x^3+4x^4-8x^5+2x^6+12x^7-18x^8-8x^9-8x^12)/(1-2x^2-x^4-2x^6))`
-/

namespace A397951.P3669488581701964349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 4, 4, -8, 2, 12, -18, -8, 0, 0, -8] [1, 0, -2, 0, -1, 0, -2] n

end

end A397951.P3669488581701964349

noncomputable section

/-- A397951: Number of tilings of a 4 X n rectangle using L and T tetrominoes that are indecomposable with respect to the second dimension.

Offset 0, canonical program `A397951.P3669488581701964349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397951 (n : ℕ) : ℤ :=
  A397951.P3669488581701964349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397964.P12176005208145015486

`ogf((136x+16x^2+40x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A397964.P12176005208145015486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 136, 16, 40] [1, -4, 6, -4, 1] n

end

end A397964.P12176005208145015486

noncomputable section

/-- A397964: Number of points with even coordinate sum in the 4-dimensional hypercube [-n,n]^4 having an odd number of lattice neighbors inside the hypercube.

Offset 1, canonical program `A397964.P12176005208145015486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397964 (n : ℕ) : ℤ :=
  A397964.P12176005208145015486.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397966.P15240515736226113104

`61*((-1)^(n+1)+1)+40*n*(n+1)*(2*n*(n+1)+5)`
-/

namespace A397966.P15240515736226113104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  61 * ((-1) ^ (n + 1) + 1) + (40 * n * (n + 1) * (2 * n * (n + 1) + 5) : ℤ)

end

end A397966.P15240515736226113104

noncomputable section

/-- A397966: Number of points with even coordinate sum in the 5-dimensional hypercube [-n,n]^5 having an odd number of lattice neighbors inside the hypercube.

Offset 1, canonical program `A397966.P15240515736226113104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397966 (n : ℕ) : ℤ :=
  A397966.P15240515736226113104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397972.P716944389194268233

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=15`
-/

namespace A397972.P716944389194268233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9, 15] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A397972.P716944389194268233

noncomputable section

/-- A397972: Lower (1,1/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397972.P716944389194268233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397972 (n : ℕ) : ℤ :=
  A397972.P716944389194268233.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397973.P2204164977154397390

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=9, a(4)=16`
-/

namespace A397973.P2204164977154397390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 9, 16] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A397973.P2204164977154397390

noncomputable section

/-- A397973: Upper (1,1/3) midsequence of midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397973.P2204164977154397390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397973 (n : ℕ) : ℤ :=
  A397973.P2204164977154397390.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397974.P13932353562097098142

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12, a(4)=20`
-/

namespace A397974.P13932353562097098142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 12, 20] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A397974.P13932353562097098142

noncomputable section

/-- A397974: Lower (1,2/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397974.P13932353562097098142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397974 (n : ℕ) : ℤ :=
  A397974.P13932353562097098142.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397975.P7737740424573854809

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=21`
-/

namespace A397975.P7737740424573854809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 12, 21] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A397975.P7737740424573854809

noncomputable section

/-- A397975: Upper (1,2/3) midsequence triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397975.P7737740424573854809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397975 (n : ℕ) : ℤ :=
  A397975.P7737740424573854809.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397975.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397976.P16780566254008084014

`ogf((2x+5x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A397976.P16780566254008084014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5, 1] [1, -2, 0, 2, -1] n

end

end A397976.P16780566254008084014

noncomputable section

/-- A397976: Lower (1,3/2) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397976.P16780566254008084014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397976 (n : ℕ) : ℤ :=
  A397976.P16780566254008084014.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397977.P4810330953495025307

`ogf((3x+3x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A397977.P4810330953495025307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3, 2] [1, -2, 0, 2, -1] n

end

end A397977.P4810330953495025307

noncomputable section

/-- A397977: Upper (1,3/2) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397977.P4810330953495025307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397977 (n : ℕ) : ℤ :=
  A397977.P4810330953495025307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397978.P337987089045620854

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12, a(4)=21`
-/

namespace A397978.P337987089045620854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 12, 21] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A397978.P337987089045620854

noncomputable section

/-- A397978: Lower (1/2,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397978.P337987089045620854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397978 (n : ℕ) : ℤ :=
  A397978.P337987089045620854.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397979.P1436968017955477644

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=21`
-/

namespace A397979.P1436968017955477644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 12, 21] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A397979.P1436968017955477644

noncomputable section

/-- A397979: Upper (1/2,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397979.P1436968017955477644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397979 (n : ℕ) : ℤ :=
  A397979.P1436968017955477644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397979.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397980.P11192333638417042657

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=19`
-/

namespace A397980.P11192333638417042657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 11, 19] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A397980.P11192333638417042657

noncomputable section

/-- A397980: Lower (1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397980.P11192333638417042657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397980 (n : ℕ) : ℤ :=
  A397980.P11192333638417042657.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397981.P14393984382924941802

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=11, a(4)=20`
-/

namespace A397981.P14393984382924941802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 11, 20] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A397981.P14393984382924941802

noncomputable section

/-- A397981: Upper (1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397981.P14393984382924941802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397981 (n : ℕ) : ℤ :=
  A397981.P14393984382924941802.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397982.P9815716747188698397

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=22`
-/

namespace A397982.P9815716747188698397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 13, 22] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A397982.P9815716747188698397

noncomputable section

/-- A397982: Lower (2/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397982.P9815716747188698397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397982 (n : ℕ) : ℤ :=
  A397982.P9815716747188698397.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397983.P11012610200060332783

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=13, a(4)=23`
-/

namespace A397983.P11012610200060332783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 13, 23] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A397983.P11012610200060332783

noncomputable section

/-- A397983: Upper (2/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397983.P11012610200060332783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397983 (n : ℕ) : ℤ :=
  A397983.P11012610200060332783.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397984.P7444801838713330577

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=18, a(4)=31`
-/

namespace A397984.P7444801838713330577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8, 18, 31] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A397984.P7444801838713330577

noncomputable section

/-- A397984: Lower (3/2,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397984.P7444801838713330577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397984 (n : ℕ) : ℤ :=
  A397984.P7444801838713330577.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397985.P8730540323721886037

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=18, a(4)=31`
-/

namespace A397985.P8730540323721886037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 9, 18, 31] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A397985.P8730540323721886037

noncomputable section

/-- A397985: Upper (3/2,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397985.P8730540323721886037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397985 (n : ℕ) : ℤ :=
  A397985.P8730540323721886037.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397986.P1150084781746270266

`ogf((2x^2+2x^3+2x^4+x^5)/(1-2x+2x^2-3x^3+3x^4-2x^5+2x^6-x^7))`
-/

namespace A397986.P1150084781746270266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 2, 2, 1] [1, -2, 2, -3, 3, -2, 2, -1] n

end

end A397986.P1150084781746270266

noncomputable section

/-- A397986: Lower (1/2,1/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397986.P1150084781746270266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397986 (n : ℕ) : ℤ :=
  A397986.P1150084781746270266.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397987.P2444541635780282240

`ogf((x+x^2+x^3+x^4-x^5+x^6+2x^8+x^10)/(1-2x+x^2-x^3+2x^4-x^5+x^6-2x^7+x^8-x^9+2x^10-x^11))`
-/

namespace A397987.P2444541635780282240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, -1, 1, 0, 2, 0, 1] [1, -2, 1, -1, 2, -1, 1, -2, 1, -1, 2, -1] n

end

end A397987.P2444541635780282240

noncomputable section

/-- A397987: Upper (1/2,1/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397987.P2444541635780282240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397987 (n : ℕ) : ℤ :=
  A397987.P2444541635780282240.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397988.P6500741524793332240

`ogf((3x^2+3x^3+2x^4)/(1-x-x^2+x^4+x^5-x^6))`
-/

namespace A397988.P6500741524793332240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 3, 2] [1, -1, -1, 0, 1, 1, -1] n

end

end A397988.P6500741524793332240

noncomputable section

/-- A397988: Lower (1/3,1/2) midsequence of triangular numbers (A000217) and squares (A000290).

Offset 0, canonical program `A397988.P6500741524793332240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397988 (n : ℕ) : ℤ :=
  A397988.P6500741524793332240.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397989.P6481869229831735829

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=12, a(5)=18, a(6)=25, a(7)=34`
-/

namespace A397989.P6481869229831735829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7, 12, 18, 25, 34] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 6) - 2 * a (n - 7) + a (n - 8)

end

end A397989.P6481869229831735829

noncomputable section

/-- A397989: Upper (1/3,1/2) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397989.P6481869229831735829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397989 (n : ℕ) : ℤ :=
  A397989.P6481869229831735829.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397990.P7415381113754661748

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=9`
-/

namespace A397990.P7415381113754661748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 9] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A397990.P7415381113754661748

noncomputable section

/-- A397990: Upper (1,1/4) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397990.P7415381113754661748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397990 (n : ℕ) : ℤ :=
  A397990.P7415381113754661748.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398005.P13434247587899075503

`ogf((3-6x-6x^2)/(1-6x+6x^2+9x^3))`
-/

namespace A398005.P13434247587899075503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, -6] [1, -6, 6, 9] n

end

end A398005.P13434247587899075503

noncomputable section

/-- A398005: Number of domino towers in 3 dimensions consisting of n blocks 2 X 1 X 1, connected and supported, counted up to horizontal translation.

Offset 1, canonical program `A398005.P13434247587899075503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398005 (n : ℕ) : ℤ :=
  A398005.P13434247587899075503.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398046.P7663509019647342517

`ogf((x+x^2+2x^3+2x^5+x^6+x^7+x^8)/(1-3x+4x^2-4x^3+4x^4-4x^5+4x^6-4x^7+3x^8-x^9))`
-/

namespace A398046.P7663509019647342517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 0, 2, 1, 1, 1] [1, -3, 4, -4, 4, -4, 4, -4, 3, -1] n

end

end A398046.P7663509019647342517

noncomputable section

/-- A398046: Lower (1/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398046.P7663509019647342517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398046 (n : ℕ) : ℤ :=
  A398046.P7663509019647342517.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398050.P13579806818623534660

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=13, a(5)=20, a(6)=28`
-/

namespace A398050.P13579806818623534660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7, 13, 20, 28] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398050.P13579806818623534660

noncomputable section

/-- A398050: Lower (1,1/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398050.P13579806818623534660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398050 (n : ℕ) : ℤ :=
  A398050.P13579806818623534660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398051.P3331619900421333348

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=8, a(4)=14, a(5)=20, a(6)=29`
-/

namespace A398051.P3331619900421333348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 8, 14, 20, 29] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398051.P3331619900421333348

noncomputable section

/-- A398051: Upper (1,1/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398051.P3331619900421333348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398051 (n : ℕ) : ℤ :=
  A398051.P3331619900421333348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398052.P13299476155714020316

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=16, a(5)=25, a(6)=35`
-/

namespace A398052.P13299476155714020316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9, 16, 25, 35] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398052.P13299476155714020316

noncomputable section

/-- A398052: Lower (1,2/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398052.P13299476155714020316`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398052 (n : ℕ) : ℤ :=
  A398052.P13299476155714020316.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398053.P15641591372993690275

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=10, a(4)=17, a(5)=25, a(6)=36`
-/

namespace A398053.P15641591372993690275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 10, 17, 25, 36] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398053.P15641591372993690275

noncomputable section

/-- A398053: Upper (1,2/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398053.P15641591372993690275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398053 (n : ℕ) : ℤ :=
  A398053.P15641591372993690275.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398054.P7192411579253713733

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=19, a(5)=30, a(6)=42`
-/

namespace A398054.P7192411579253713733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 11, 19, 30, 42] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398054.P7192411579253713733

noncomputable section

/-- A398054: Lower (1,3/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398054.P7192411579253713733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398054 (n : ℕ) : ℤ :=
  A398054.P7192411579253713733.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398055.P7592882292166257935

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=20, a(5)=30, a(6)=43`
-/

namespace A398055.P7592882292166257935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 12, 20, 30, 43] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398055.P7592882292166257935

noncomputable section

/-- A398055: Upper (1,3/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398055.P7592882292166257935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398055 (n : ℕ) : ℤ :=
  A398055.P7592882292166257935.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398056.P10782441881184105247

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=22, a(5)=35, a(6)=49`
-/

namespace A398056.P10782441881184105247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 13, 22, 35, 49] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398056.P10782441881184105247

noncomputable section

/-- A398056: Lower (1,4/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398056.P10782441881184105247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398056 (n : ℕ) : ℤ :=
  A398056.P10782441881184105247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398057.P7266038583036540664

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=23, a(5)=35, a(6)=50`
-/

namespace A398057.P7266038583036540664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 14, 23, 35, 50] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398057.P7266038583036540664

noncomputable section

/-- A398057: Upper (1,4/5) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398057.P7266038583036540664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398057 (n : ℕ) : ℤ :=
  A398057.P7266038583036540664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398058.P73160130068751543

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=18, a(4)=31`
-/

namespace A398058.P73160130068751543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8, 18, 31] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398058.P73160130068751543

noncomputable section

/-- A398058: Lower (1,4/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398058.P73160130068751543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398058 (n : ℕ) : ℤ :=
  A398058.P73160130068751543.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398059.P16397645256083524581

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=18, a(4)=32`
-/

namespace A398059.P16397645256083524581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 9, 18, 32] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398059.P16397645256083524581

noncomputable section

/-- A398059: Upper (1,4/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398059.P16397645256083524581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398059 (n : ℕ) : ℤ :=
  A398059.P16397645256083524581.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398060.P18309468618007377721

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=18, a(5)=28, a(6)=40`
-/

namespace A398060.P18309468618007377721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 10, 18, 28, 40] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398060.P18309468618007377721

noncomputable section

/-- A398060: Lower (1/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398060.P18309468618007377721`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398060 (n : ℕ) : ℤ :=
  A398060.P18309468618007377721.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398061.P3303424021516592682

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=11, a(4)=18, a(5)=28, a(6)=41`
-/

namespace A398061.P3303424021516592682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 11, 18, 28, 41] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398061.P3303424021516592682

noncomputable section

/-- A398061: Upper (1/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398061.P3303424021516592682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398061 (n : ℕ) : ℤ :=
  A398061.P3303424021516592682.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398104.P9560857359750963102

`ogf((1+2x+3x^2+3x^3-21x^5-6x^6-18x^8-5x^9-2x^10-3x^11-2x^13)/(1-3x^2-3x^3-12x^4-7x^5+20x^6-2x^8+15x^9+4x^10+3x^11+4x^12+2x^13+2x^14))`
-/

namespace A398104.P9560857359750963102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 3, 0, -21, -6, 0, -18, -5, -2, -3, 0, -2] [1, 0, -3, -3, -12, -7, 20, 0, -2, 15, 4, 3, 4, 2, 2] n

end

end A398104.P9560857359750963102

noncomputable section

/-- A398104: Number of minimal dominating sets in the 3 X n king graph.

Offset 0, canonical program `A398104.P9560857359750963102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398104 (n : ℕ) : ℤ :=
  A398104.P9560857359750963102.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398136.P16405717770834090747

`row(n)!*row(n)^(row(n)-col(n))/(row(n)-col(n))!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398136.P16405717770834090747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) * (SequenceMachineLib.triRow n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) / (Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A398136.P16405717770834090747

noncomputable section

/-- A398136: Triangle read by rows: T(n, k) = n! * n^(n - k) / (n - k)!.

Offset 0, canonical program `A398136.P16405717770834090747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398136 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398136.P16405717770834090747.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398152.P17962725921577737400

`n+1+ceil(n*(n+1)/4)+floor(n/2)`
-/

namespace A398152.P17962725921577737400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌈(n * (n + 1) : ℚ) / 4⌉ + ⌊(n : ℚ) / 2⌋

end

end A398152.P17962725921577737400

noncomputable section

/-- A398152: a(n) is the least positive integer k for which there exists a composition of k of depth n, where at each iteration the consecutive absolute differences must be nonzero and pairwise distinct and may then be permuted arbitrarily.

Offset 0, canonical program `A398152.P17962725921577737400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398152 (n : ℕ) : ℤ :=
  A398152.P17962725921577737400.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398157.P17234946050504197489

`ogf((5+3x+x^2+7x^3+3x^4)/(1-2x^3+x^6))`
-/

namespace A398157.P17234946050504197489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 1, 7, 3] [1, 0, 0, -2, 0, 0, 1] n

end

end A398157.P17234946050504197489

noncomputable section

/-- A398157: a(n) = n/3 if n == 0 (mod 3), 4n+1 if n == 1 (mod 3), 2n-1 if n == 2 (mod 3).

Offset 1, canonical program `A398157.P17234946050504197489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398157 (n : ℕ) : ℤ :=
  A398157.P17234946050504197489.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398190.P18190335037349440086

`n!*∑{#}[n, (2*n)^#/#!]`
-/

namespace A398190.P18190335037349440086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), ((2 * n) ^ k : ℚ) / (Nat.factorial k : ℚ))

end

end A398190.P18190335037349440086

noncomputable section

/-- A398190: a(n) = exp(2 * n) * Gamma(1 + n, 2 * n). Central terms of A398187.

Offset 0, canonical program `A398190.P18190335037349440086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398190 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398190.P18190335037349440086.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398191.P10111208085503777003

`n!*∑{#}[n, (n+4)^#/#!]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398191.P10111208085503777003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), ((n + 4) ^ k : ℚ) / (Nat.factorial k : ℚ))

end

end A398191.P10111208085503777003

noncomputable section

/-- A398191: a(n) = n! * Sum_{j=0..n} (n + 4)^j / j!. Column 4 of A398187.

Offset 0, canonical program `A398191.P10111208085503777003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398191 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398191.P10111208085503777003.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398196.P18069537770610953232

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=20, a(5)=31, a(6)=44`
-/

namespace A398196.P18069537770610953232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 11, 20, 31, 44] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398196.P18069537770610953232

noncomputable section

/-- A398196: Lower (2/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398196.P18069537770610953232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398196 (n : ℕ) : ℤ :=
  A398196.P18069537770610953232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398197.P8402238629596888663

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=20, a(5)=31, a(6)=45`
-/

namespace A398197.P8402238629596888663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 12, 20, 31, 45] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398197.P8402238629596888663

noncomputable section

/-- A398197: Upper (2/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398197.P8402238629596888663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398197 (n : ℕ) : ℤ :=
  A398197.P8402238629596888663.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398198.P10368690461500215663

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12, a(4)=22, a(5)=34, a(6)=48`
-/

namespace A398198.P10368690461500215663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 12, 22, 34, 48] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398198.P10368690461500215663

noncomputable section

/-- A398198: Lower (3/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398198.P10368690461500215663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398198 (n : ℕ) : ℤ :=
  A398198.P10368690461500215663.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398199.P5789237725707641896

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=13, a(4)=22, a(5)=34, a(6)=49`
-/

namespace A398199.P5789237725707641896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 13, 22, 34, 49] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398199.P5789237725707641896

noncomputable section

/-- A398199: Upper (3/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398199.P5789237725707641896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398199 (n : ℕ) : ℤ :=
  A398199.P5789237725707641896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398200.P3776530324586389120

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=24, a(5)=37, a(6)=52`
-/

namespace A398200.P3776530324586389120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 13, 24, 37, 52] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398200.P3776530324586389120

noncomputable section

/-- A398200: Lower (4/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398200.P3776530324586389120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398200 (n : ℕ) : ℤ :=
  A398200.P3776530324586389120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398200.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398201.P17485533436528189980

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=14, a(4)=24, a(5)=37, a(6)=53`
-/

namespace A398201.P17485533436528189980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 14, 24, 37, 53] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A398201.P17485533436528189980

noncomputable section

/-- A398201: Upper (4/5,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398201.P17485533436528189980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398201 (n : ℕ) : ℤ :=
  A398201.P17485533436528189980.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398202.P5570466732706551257

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=17, a(4)=29`
-/

namespace A398202.P5570466732706551257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8, 17, 29] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398202.P5570466732706551257

noncomputable section

/-- A398202: Lower (4/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398202.P5570466732706551257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398202 (n : ℕ) : ℤ :=
  A398202.P5570466732706551257.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398203.P13519331803441787108

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=17, a(4)=30`
-/

namespace A398203.P13519331803441787108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 8, 17, 30] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A398203.P13519331803441787108

noncomputable section

/-- A398203: Upper (4/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398203.P13519331803441787108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398203 (n : ℕ) : ℤ :=
  A398203.P13519331803441787108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398204.P14484470933449480928

`ogf((3x^2+x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398204.P14484470933449480928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 1, 1] [1, -2, 1, -1, 2, -1] n

end

end A398204.P14484470933449480928

noncomputable section

/-- A398204: Lower (-1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398204.P14484470933449480928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398204 (n : ℕ) : ℤ :=
  A398204.P14484470933449480928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398205.P11638134174617533476

`ogf((x+x^2+2x^3+x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398205.P11638134174617533476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 2, 1] [1, -2, 1, -1, 2, -1] n

end

end A398205.P11638134174617533476

noncomputable section

/-- A398205: Upper (-1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398205.P11638134174617533476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398205 (n : ℕ) : ℤ :=
  A398205.P11638134174617533476.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398246.P17760257700956056221

`7*a(n-1)+3*a(n-2)-9*a(n-3)+10*a(n-4)` with `a(0)=1, a(1)=8, a(2)=57, a(3)=416`
-/

namespace A398246.P17760257700956056221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 57, 416] fun n a =>
  7 * a (n - 1) + 3 * a (n - 2) - 9 * a (n - 3) + 10 * a (n - 4)

end

end A398246.P17760257700956056221

noncomputable section

/-- A398246: Number of feedback vertex sets in the grid graph P_n X P_3.

Offset 0, canonical program `A398246.P17760257700956056221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398246 (n : ℕ) : ℤ :=
  A398246.P17760257700956056221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398247.P13795878478120909758

`ogf((1+3x-11x^2-x^3+14x^4-10x^5+2x^6-24x^7)/(1-13x-19x^2+90x^3-2x^4-94x^5+72x^6+8x^7+192x^8))`
-/

namespace A398247.P13795878478120909758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -11, -1, 14, -10, 2, -24] [1, -13, -19, 90, -2, -94, 72, 8, 192] n

end

end A398247.P13795878478120909758

noncomputable section

/-- A398247: Number of feedback vertex sets in the grid graph P_n X P_4.

Offset 0, canonical program `A398247.P13795878478120909758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398247 (n : ℕ) : ℤ :=
  A398247.P13795878478120909758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398262.P15848316115240564117

`16*a(n-1)-24*a(n-2)` with `a(0)=1, a(1)=4, a(2)=24`
-/

namespace A398262.P15848316115240564117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 24] fun n a =>
  16 * a (n - 1) - 24 * a (n - 2)

end

end A398262.P15848316115240564117

noncomputable section

/-- A398262: Number of indecomposable closed walks of length 2n along the edges of the 4-cube (hypercube Q_4, the tesseract) based at a vertex.

Offset 0, canonical program `A398262.P15848316115240564117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398262 (n : ℕ) : ℤ :=
  A398262.P15848316115240564117.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398276.P3464083411562283250

`ogf((1-3x+22x^2+10x^3-42x^4-6x^5+15x^6-5x^7)/(1-6x-7x^2-40x^3-20x^4+24x^5+5x^6-10x^7+5x^8))`
-/

namespace A398276.P3464083411562283250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 22, 10, -42, -6, 15, -5] [1, -6, -7, -40, -20, 24, 5, -10, 5] n

end

end A398276.P3464083411562283250

noncomputable section

/-- A398276: Number of total dominating sets in the 3 X n king graph.

Offset 0, canonical program `A398276.P3464083411562283250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398276 (n : ℕ) : ℤ :=
  A398276.P3464083411562283250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398276.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398278.P6652421888883078610

`ogf((6-9x-3x^2+26x^3-42x^4+14x^5)/(1-7x+15x^2-6x^3-31x^4+73x^5-75x^6+36x^7-6x^8))`
-/

namespace A398278.P6652421888883078610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -9, -3, 26, -42, 14] [1, -7, 15, -6, -31, 73, -75, 36, -6] n

end

end A398278.P6652421888883078610

noncomputable section

/-- A398278: Number of (non-null) induced trees in the grid graph P_3 X P_n.

Offset 1, canonical program `A398278.P6652421888883078610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398278 (n : ℕ) : ℤ :=
  A398278.P6652421888883078610.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398290.P3703426421171951846

`∑{#}[n, (3*#)!/#!^3*C(2*#, n-#)]`
-/

namespace A398290.P3703426421171951846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (3 * k) : ℚ) / (Nat.factorial k ^ 3 : ℚ) * (Nat.choose (2 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398290.P3703426421171951846

noncomputable section

/-- A398290: Diagonal of rational function 1/(1 - (1 + x*y*z)*(x + y) - z).

Offset 0, canonical program `A398290.P3703426421171951846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398290 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398290.P3703426421171951846.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398291.P17716215388616559997

`∑{#}[n, (3*#)!/#!^3*C(4*#, n-#)]`
-/

namespace A398291.P17716215388616559997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (3 * k) : ℚ) / (Nat.factorial k ^ 3 : ℚ) * (Nat.choose (4 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398291.P17716215388616559997

noncomputable section

/-- A398291: Diagonal of rational function 1/(1 - (1 + x*y*z)*(x*(1 + x*y*z) + y + z)).

Offset 0, canonical program `A398291.P17716215388616559997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398291.P17716215388616559997.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398292.P15633669753371944107

`∑{#}[n, (4*#)!/#!^4*C(#, n-#)]`
-/

namespace A398292.P15633669753371944107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398292.P15633669753371944107

noncomputable section

/-- A398292: Diagonal of rational function 1/(1 - (x + y + z + w + x^2*y*z*w)).

Offset 0, canonical program `A398292.P15633669753371944107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398292 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398292.P15633669753371944107.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398293.P16923908221111569380

`∑{#}[n, (4*#)!/#!^4*C(2*#, n-#)]`
-/

namespace A398293.P16923908221111569380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose (2 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398293.P16923908221111569380

noncomputable section

/-- A398293: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y) - z - w).

Offset 0, canonical program `A398293.P16923908221111569380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398293.P16923908221111569380.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398294.P4558506374742796449

`∑{#}[n, (4*#)!/#!^4*C(3*#, n-#)]`
-/

namespace A398294.P4558506374742796449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose (3 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398294.P4558506374742796449

noncomputable section

/-- A398294: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y + z) - w).

Offset 0, canonical program `A398294.P4558506374742796449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398294.P4558506374742796449.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398295.P2541942171557627485

`∑{#}[n, (4*#)!/#!^4*C(4*#, n-#)]`
-/

namespace A398295.P2541942171557627485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose (4 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398295.P2541942171557627485

noncomputable section

/-- A398295: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x + y + z + w)).

Offset 0, canonical program `A398295.P2541942171557627485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398295 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398295.P2541942171557627485.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398296.P12921204731299856871

`∑{#}[n, (4*#)!/#!^4*C(5*#, n-#)]`
-/

namespace A398296.P12921204731299856871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (4 * k) : ℚ) / (Nat.factorial k ^ 4 : ℚ) * (Nat.choose (5 * k) ((n : ℤ) - (k : ℤ)).toNat : ℚ)

end

end A398296.P12921204731299856871

noncomputable section

/-- A398296: Diagonal of rational function 1/(1 - (1 + x*y*z*w)*(x*(1 + x*y*z*w) + y + z + w)).

Offset 0, canonical program `A398296.P12921204731299856871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398296.P12921204731299856871.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398300.P2858714858380498305

`2*ceil(sqrt(28*(n+1)-12))`
-/

namespace A398300.P2858714858380498305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt ((28 * (n + 1) : ℤ) - 12 : ℝ)⌉

end

end A398300.P2858714858380498305

noncomputable section

/-- A398300: a(n) is the minimum possible sum of the numbers on all non-mine cells when n mines are placed on an infinite Minesweeper board (each non-mine cell's number is the count of mines among its up to 8 neighbors).

Offset 1, canonical program `A398300.P2858714858380498305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398300 (n : ℕ) : ℤ :=
  A398300.P2858714858380498305.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398309.P7943178715840063505

`2*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0`
-/

namespace A398309.P7943178715840063505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 3, 0] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2)

end

end A398309.P7943178715840063505

noncomputable section

/-- A398309: Number of indecomposable closed walks of length n on the Petersen graph based at a vertex.

Offset 0, canonical program `A398309.P7943178715840063505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398309 (n : ℕ) : ℤ :=
  (A398309.P7943178715840063505.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398310.P8489695089946524381

`4*a(n-1)+5*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=10, a(4)=40`
-/

namespace A398310.P8489695089946524381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 5, 10, 40] fun n a =>
  4 * a (n - 1) + 5 * a (n - 2) - 10 * a (n - 3)

end

end A398310.P8489695089946524381

noncomputable section

/-- A398310: Number of indecomposable closed walks of length n on the regular icosahedron based at a vertex.

Offset 0, canonical program `A398310.P8489695089946524381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398310 (n : ℕ) : ℤ :=
  A398310.P8489695089946524381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398374.P7463169060514221778

`a(n-1)*(2*n-2^ceil(log2(n)))` with `a(0)=1`
-/

namespace A398374.P7463169060514221778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((2 * n : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n : ℝ)⌉ : ℤ))

end

end A398374.P7463169060514221778

noncomputable section

/-- A398374: Number of permutations that give the maximum number of comparisons for sorting n elements by binary insertions.

Offset 0, canonical program `A398374.P7463169060514221778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398374.P7463169060514221778.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398446.P5433720991172560056

`((n+3)*C(2*(n+3)-6, n)+4^n)/2`
-/

namespace A398446.P5433720991172560056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.choose ((2 * (n + 3) : ℤ) - 6).toNat n + 4 ^ n : ℚ) / 2

end

end A398446.P5433720991172560056

noncomputable section

/-- A398446: Number of permutations of [n] avoiding the pattern 1324 with the maximum element n in position n-2.

Offset 3, canonical program `A398446.P5433720991172560056`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398446 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398446.P5433720991172560056.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398477.P18378234332377890742

`row(n)^(row(n)-col(n))*(row(n)+col(n))!/((col(n)+1)!*row(n)!)`
-/

namespace A398477.P18378234332377890742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.factorial (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n + 1) * Nat.factorial (SequenceMachineLib.triRow n) : ℚ)

end

end A398477.P18378234332377890742

noncomputable section

/-- A398477: Triangle read by rows: T(n, k + 1) = T(n, k) * (n + k) / (n * (k + 1)) for k <= n, starting at T(n, 0) = n^n, (row recurrence).

Offset 0, canonical program `A398477.P18378234332377890742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398477 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398477.P18378234332377890742.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398478.P169749878298613149

`∑{#}[n, C(n+#, #)*n^(n-#)/(#+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398478.P169749878298613149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + k) k : ℚ) * (n : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) / (k + 1 : ℚ)

end

end A398478.P169749878298613149

noncomputable section

/-- A398478: a(n) = Sum_{j=0..n} binomial(n + j, j) * n^(n - j) / (j + 1). Row sums of A398477.

Offset 0, canonical program `A398478.P169749878298613149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398478.P169749878298613149.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398479.P8587661814025841451

`(2*n)^n*C(3*n, n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398479.P8587661814025841451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ n * Nat.choose (3 * n) n : ℚ) / (n + 1 : ℚ)

end

end A398479.P8587661814025841451

noncomputable section

/-- A398479: a(n) = (2*n)^n * binomial(3*n, n) / (n + 1). Central terms of A398477.

Offset 0, canonical program `A398479.P8587661814025841451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398479.P8587661814025841451.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398482.P3169545546200262174

`row(n)^col(n)*(1+row(n))^(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398482.P3169545546200262174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ SequenceMachineLib.triCol n : ℚ) * (1 + SequenceMachineLib.triRow n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A398482.P3169545546200262174

noncomputable section

/-- A398482: Triangle read by rows: T(n, k) = n^k * (1 + n)^(n - k).

Offset 0, canonical program `A398482.P3169545546200262174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398482.P3169545546200262174.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398483.P2015006628648364909

`row(n)^col(n)*(row(n)-1)^(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398483.P2015006628648364909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ SequenceMachineLib.triCol n : ℚ) * ((SequenceMachineLib.triRow n : ℤ) - 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A398483.P2015006628648364909

noncomputable section

/-- A398483: Triangle read by rows: T(n, k) = n^k * (n - 1)^(n - k).

Offset 0, canonical program `A398483.P2015006628648364909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398483 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398483.P2015006628648364909.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398517.P13771540962809668512

`ogf((1-2x+4x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A398517.P13771540962809668512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, 1] [1, -4, 6, -4, 1] n

end

end A398517.P13771540962809668512

noncomputable section

/-- A398517: a(n) = (4*n^3-3*n^2+5*n+6)/6.

Offset 0, canonical program `A398517.P13771540962809668512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398517 (n : ℕ) : ℤ :=
  A398517.P13771540962809668512.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398535.P13248774024366701317

`(n+1)²*(n+2)²*((n+1)*(2*(n+1)*(9*(n+1)+13)+5)-1)/6`
-/

namespace A398535.P13248774024366701317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 * (n + 2) ^ 2 : ℤ) * (((n + 1) * (2 * (n + 1) * (9 * (n + 1) + 13) + 5) : ℤ) - 1) : ℚ) / 6

end

end A398535.P13248774024366701317

noncomputable section

/-- A398535: a(n) is the trace of the product of two Hankel n X n matrices M_n and N_n whose M[i,j] generic elements are respectively (i+j)^2 and (i+j)^3.

Offset 1, canonical program `A398535.P13248774024366701317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398535 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398535.P13248774024366701317.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398537.P15466782401860754690

`∑{#}[floor(n/2), C(n-#, #)*(n²+1)^(n-2*#)*n^(2*#)]`
-/

namespace A398537.P15466782401860754690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℚ) * (n ^ 2 + 1 : ℚ) ^ ((n : ℤ) - (2 * k : ℤ) : ℤ) * (n ^ (2 * k) : ℚ)

end

end A398537.P15466782401860754690

noncomputable section

/-- A398537: a(n) is the permanent of the symmetric tridiagonal Toeplitz n X n matrix M_n where M_n(j,k) = n^2+1 for j = k, M_n(j,k) = n for abs(j-k) = 1, M_n(j,k) = 0 otherwise.

Offset 0, canonical program `A398537.P15466782401860754690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398537.P15466782401860754690.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398538.P17523405333718738598

`ogf((1-x)/(1-2x-6x^3-9x^4))`
-/

namespace A398538.P17523405333718738598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, 0, -6, -9] n

end

end A398538.P17523405333718738598

noncomputable section

/-- A398538: Number of n-tuples (a_1, ..., a_n) in (Z/3Z)^n such that M(a_1)*M(a_2)*...*M(a_n) = -I, where M(a) = [a, -1; 1, 0].

Offset 2, canonical program `A398538.P17523405333718738598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398538 (n : ℕ) : ℤ :=
  A398538.P17523405333718738598.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398565.P17286952794565849304

`3^(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398565.P17286952794565849304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ)

end

end A398565.P17286952794565849304

noncomputable section

/-- A398565: a(n) = 3^(2^n - 1).

Offset 0, canonical program `A398565.P17286952794565849304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398565 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398565.P17286952794565849304.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398567.P6072055630550410281

`ogf((16+18x-80x^2-54x^3+44x^4+8x^5)/(1-4x-16x^2+6x^3+16x^4-4x^5-x^6))`
-/

namespace A398567.P6072055630550410281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 18, -80, -54, 44, 8] [1, -4, -16, 6, 16, -4, -1] n

end

end A398567.P6072055630550410281

noncomputable section

/-- A398567: Number of perfect matchings in a 2n X 3 grid graph on the Klein bottle.

Offset 1, canonical program `A398567.P6072055630550410281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398567 (n : ℕ) : ℤ :=
  A398567.P6072055630550410281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398651.P14364319991967368664

`ogf((x+x^2)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398651.P14364319991967368664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398651.P14364319991967368664

noncomputable section

/-- A398651: Lower (1, 1/2)-midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398651.P14364319991967368664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398651 (n : ℕ) : ℤ :=
  A398651.P14364319991967368664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398652.P13655693242827887489

`ogf((2x-2x^2+3x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398652.P13655693242827887489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, 3, -1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398652.P13655693242827887489

noncomputable section

/-- A398652: Upper (1, 1/2)-midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398652.P13655693242827887489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398652 (n : ℕ) : ℤ :=
  A398652.P13655693242827887489.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398660.P9653228228003721502

`ogf((3x+5x^3+x^4+3x^5)/(1-3x+3x^2-x^3-x^5+3x^6-3x^7+x^8))`
-/

namespace A398660.P9653228228003721502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 0, 5, 1, 3] [1, -3, 3, -1, 0, -1, 3, -3, 1] n

end

end A398660.P9653228228003721502

noncomputable section

/-- A398660: Upper (1, 6/5) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398660.P9653228228003721502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398660 (n : ℕ) : ℤ :=
  A398660.P9653228228003721502.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398661.P16912725788563947793

`ogf((x+2x^2+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398661.P16912725788563947793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 0, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398661.P16912725788563947793

noncomputable section

/-- A398661: Lower (1/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398661.P16912725788563947793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398661 (n : ℕ) : ℤ :=
  A398661.P16912725788563947793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398662.P13931983562056736578

`ogf((2x-x^2+3x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398662.P13931983562056736578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 3] [1, -4, 7, -8, 7, -4, 1] n

end

end A398662.P13931983562056736578

noncomputable section

/-- A398662: Upper (1/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398662.P13931983562056736578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398662 (n : ℕ) : ℤ :=
  A398662.P13931983562056736578.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398663.P17264390302320175591

`ogf((2x+x^2+x^3)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398663.P17264390302320175591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398663.P17264390302320175591

noncomputable section

/-- A398663: Lower (3/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398663.P17264390302320175591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398663 (n : ℕ) : ℤ :=
  A398663.P17264390302320175591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398664.P2738383818631677079

`ogf((3x-2x^2+4x^3-x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398664.P2738383818631677079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2, 4, -1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398664.P2738383818631677079

noncomputable section

/-- A398664: Upper (3/2, 1) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398664.P2738383818631677079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398664 (n : ℕ) : ℤ :=
  A398664.P2738383818631677079.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398665.P7646033834998085422

`ogf((2x+3x^2+x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398665.P7646033834998085422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 1, 2] [1, -4, 7, -8, 7, -4, 1] n

end

end A398665.P7646033834998085422

noncomputable section

/-- A398665: Lower (1/2, 2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398665.P7646033834998085422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398665 (n : ℕ) : ℤ :=
  A398665.P7646033834998085422.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398666.P15891971154703768520

`ogf((3x+4x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398666.P15891971154703768520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 0, 4, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398666.P15891971154703768520

noncomputable section

/-- A398666: Upper (1/2, 2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398666.P15891971154703768520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398666 (n : ℕ) : ℤ :=
  A398666.P15891971154703768520.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398672.P12986523527898557867

`ogf((1+x-29x^2+3x^3)/(1-15x+15x^2-x^3))`
-/

namespace A398672.P12986523527898557867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -29, 3] [1, -15, 15, -1] n

end

end A398672.P12986523527898557867

noncomputable section

/-- A398672: Number of domino tilings (perfect matchings) of the 4 X 2n grid graph embedded on the Klein bottle.

Offset 0, canonical program `A398672.P12986523527898557867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398672 (n : ℕ) : ℤ :=
  A398672.P12986523527898557867.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398678.P17468635417467204317

`ogf((1+3x-7x^2+7x^4-3x^5-x^6)/(1-15x^2+32x^4-15x^6+x^8))`
-/

namespace A398678.P17468635417467204317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -7, 0, 7, -3, -1] [1, 0, -15, 0, 32, 0, -15, 0, 1] n

end

end A398678.P17468635417467204317

noncomputable section

/-- A398678: Number of spanning trees of the 3 X n grid graph that are invariant under reflection in the vertical axis.

Offset 1, canonical program `A398678.P17468635417467204317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398678 (n : ℕ) : ℤ :=
  A398678.P17468635417467204317.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398679.P3681087345552598065

`ogf((1+3x-3x^2-10x^3-3x^4+3x^5+x^6)/(1-15x^2+32x^4-15x^6+x^8))`
-/

namespace A398679.P3681087345552598065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3, -10, -3, 3, 1] [1, 0, -15, 0, 32, 0, -15, 0, 1] n

end

end A398679.P3681087345552598065

noncomputable section

/-- A398679: Number of spanning trees of the 3 X n grid graph that are invariant under rotation by 180 degrees.

Offset 1, canonical program `A398679.P3681087345552598065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398679 (n : ℕ) : ℤ :=
  A398679.P3681087345552598065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398727.P4140299455966748439

`ogf((3x+4x^2+2x^3+3x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398727.P4140299455966748439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4, 2, 3] [1, -4, 7, -8, 7, -4, 1] n

end

end A398727.P4140299455966748439

noncomputable section

/-- A398727: Lower (1/2, 3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398727.P4140299455966748439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398727 (n : ℕ) : ℤ :=
  A398727.P4140299455966748439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398728.P18424042664954230036

`ogf((4x+x^2+5x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398728.P18424042664954230036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 1, 5, 2] [1, -4, 7, -8, 7, -4, 1] n

end

end A398728.P18424042664954230036

noncomputable section

/-- A398728: Upper (1/2, 3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398728.P18424042664954230036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398728 (n : ℕ) : ℤ :=
  A398728.P18424042664954230036.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398730.P14531345402756718380

`ogf((x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`
-/

namespace A398730.P14531345402756718380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 1] [1, -4, 7, -8, 7, -4, 1] n

end

end A398730.P14531345402756718380

noncomputable section

/-- A398730: Upper (-1, 1/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398730.P14531345402756718380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398730 (n : ℕ) : ℤ :=
  A398730.P14531345402756718380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398790.P7603610696032174352

`ogf((1+x+x^2)/(1-x-2x^2-2x^3-x^4))`
-/

namespace A398790.P7603610696032174352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -2, -2, -1] n

end

end A398790.P7603610696032174352

noncomputable section

/-- A398790: Number of ways to tile a 1 X n strip using tiles of length 1 or 2, each tile colored red or blue, such that no two red tiles are adjacent.

Offset 0, canonical program `A398790.P7603610696032174352`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398790 (n : ℕ) : ℤ :=
  A398790.P7603610696032174352.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398790.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398807.P1294699922700618276

`∑{#}[n, 4^#*C(#+2, 2)*C(5*n+7, n-#)]`
-/

namespace A398807.P1294699922700618276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose (k + 2) 2 * Nat.choose (5 * n + 7) ((n : ℤ) - (k : ℤ)).toNat

end

end A398807.P1294699922700618276

noncomputable section

/-- A398807: Expansion of (Sum_{k>=0} binomial(5*k+1,k) * x^k)^4.

Offset 0, canonical program `A398807.P1294699922700618276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398807 (n : ℕ) : ℤ :=
  (A398807.P1294699922700618276.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398807.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398811.P934446363900781508

`ogf((1-4x-2x^2-x^3)/(1-5x-5x^2))`
-/

namespace A398811.P934446363900781508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -2, -1] [1, -5, -5] n

end

end A398811.P934446363900781508

noncomputable section

/-- A398811: a(n) is the number of tilings of a 10 X 5n rectangle into Y-pentominoes (no reflections, only rotations).

Offset 0, canonical program `A398811.P934446363900781508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398811 (n : ℕ) : ℤ :=
  A398811.P934446363900781508.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398827.P8300964796558680602

`ogf(1/(1-3x-4x^2-4x^3))`
-/

namespace A398827.P8300964796558680602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -4, -4] n

end

end A398827.P8300964796558680602

noncomputable section

/-- A398827: a(n) is the number of tilings of a 9 X 10n rectangle into L-pentominoes (no reflections, only rotations).

Offset 0, canonical program `A398827.P8300964796558680602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398827 (n : ℕ) : ℤ :=
  A398827.P8300964796558680602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398833.P3872639580255898512

`ogf(1/(1-x^2-x^5-x^10))`
-/

namespace A398833.P3872639580255898512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, 0, 0, -1, 0, 0, 0, 0, -1] n

end

end A398833.P3872639580255898512

noncomputable section

/-- A398833: a(n) is the number of tilings of a 10 X n rectangle into L-pentominoes (no reflections, only rotations).

Offset 0, canonical program `A398833.P3872639580255898512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398833 (n : ℕ) : ℤ :=
  A398833.P3872639580255898512.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398836.P16886983851941829356

`floor(n*(9*n+1)/6)`
-/

namespace A398836.P16886983851941829356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (9 * n + 1) : ℚ) / 6⌋

end

end A398836.P16886983851941829356

noncomputable section

/-- A398836: Lower (1, 2/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398836.P16886983851941829356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398836 (n : ℕ) : ℤ :=
  A398836.P16886983851941829356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398837.P12955740837584096552

`ceil(n*(9*n+1)/6)`
-/

namespace A398837.P12955740837584096552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (9 * n + 1) : ℚ) / 6⌉

end

end A398837.P12955740837584096552

noncomputable section

/-- A398837: Upper (1, 2/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398837.P12955740837584096552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398837 (n : ℕ) : ℤ :=
  A398837.P12955740837584096552.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398838.P10276710094283728770

`ogf((2x+5x^2+6x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398838.P10276710094283728770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5, 6, 2] [1, -2, 1, -1, 2, -1] n

end

end A398838.P10276710094283728770

noncomputable section

/-- A398838: Lower (1, 4/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398838.P10276710094283728770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398838 (n : ℕ) : ℤ :=
  A398838.P10276710094283728770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398839.P16974092594332849696

`ceil(n*(15*n-1)/6)`
-/

namespace A398839.P16974092594332849696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((15 * n : ℤ) - 1) : ℚ) / 6⌉

end

end A398839.P16974092594332849696

noncomputable section

/-- A398839: Upper (1, 4/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398839.P16974092594332849696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398839 (n : ℕ) : ℤ :=
  A398839.P16974092594332849696.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398840.P593991936963180517

`floor(n*(11*n-1)/4)`
-/

namespace A398840.P593991936963180517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((11 * n : ℤ) - 1) : ℚ) / 4⌋

end

end A398840.P593991936963180517

noncomputable section

/-- A398840: Lower (1, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398840.P593991936963180517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398840 (n : ℕ) : ℤ :=
  A398840.P593991936963180517.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398841.P13552911479898040379

`ogf((3x+2x^2+3x^3+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398841.P13552911479898040379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 3, 3] [1, -3, 4, -4, 3, -1] n

end

end A398841.P13552911479898040379

noncomputable section

/-- A398841: Upper (1, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398841.P13552911479898040379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398841 (n : ℕ) : ℤ :=
  A398841.P13552911479898040379.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398842.P947199534998649314

`floor(n*(5*n-7)/4)`
-/

namespace A398842.P947199534998649314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((5 * n : ℤ) - 7) : ℚ) / 4⌋

end

end A398842.P947199534998649314

noncomputable section

/-- A398842: Lower (-2, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398842.P947199534998649314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398842 (n : ℕ) : ℤ :=
  A398842.P947199534998649314.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398843.P9440608218935463149

`ogf((2x^2+3x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398843.P9440608218935463149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 0, 3] [1, -3, 4, -4, 3, -1] n

end

end A398843.P9440608218935463149

noncomputable section

/-- A398843: Upper (-2, 3/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398843.P9440608218935463149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398843 (n : ℕ) : ℤ :=
  A398843.P9440608218935463149.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398845.P2931905076541296090

`ceil(n*(9*n+1)/12)`
-/

namespace A398845.P2931905076541296090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (9 * n + 1) : ℚ) / 12⌉

end

end A398845.P2931905076541296090

noncomputable section

/-- A398845: Upper (1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398845.P2931905076541296090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398845 (n : ℕ) : ℤ :=
  A398845.P2931905076541296090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398846.P1935067902238574170

`floor(n*(11*n-1)/12)`
-/

namespace A398846.P1935067902238574170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((11 * n : ℤ) - 1) : ℚ) / 12⌋

end

end A398846.P1935067902238574170

noncomputable section

/-- A398846: Lower (1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398846.P1935067902238574170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398846 (n : ℕ) : ℤ :=
  A398846.P1935067902238574170.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398846.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398847.P13207648458492473620

`ceil(n*(11*n-1)/12)`
-/

namespace A398847.P13207648458492473620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((11 * n : ℤ) - 1) : ℚ) / 12⌉

end

end A398847.P13207648458492473620

noncomputable section

/-- A398847: Upper (1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398847.P13207648458492473620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398847 (n : ℕ) : ℤ :=
  A398847.P13207648458492473620.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398847.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398848.P7723143824585085884

`floor(n*(7*n-5)/12)`
-/

namespace A398848.P7723143824585085884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 12⌋

end

end A398848.P7723143824585085884

noncomputable section

/-- A398848: Lower (-1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398848.P7723143824585085884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398848 (n : ℕ) : ℤ :=
  A398848.P7723143824585085884.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398848.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398849.P14506068353715613907

`ceil(n*(7*n-5)/12)`
-/

namespace A398849.P14506068353715613907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((7 * n : ℤ) - 5) : ℚ) / 12⌉

end

end A398849.P14506068353715613907

noncomputable section

/-- A398849: Upper (-1/3, 1/2)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398849.P14506068353715613907`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398849 (n : ℕ) : ℤ :=
  A398849.P14506068353715613907.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398852.P6501527431990106096

`ogf((x+3x^2+x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398852.P6501527431990106096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 1, 2] [1, -3, 4, -4, 3, -1] n

end

end A398852.P6501527431990106096

noncomputable section

/-- A398852: Lower (1/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398852.P6501527431990106096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398852 (n : ℕ) : ℤ :=
  A398852.P6501527431990106096.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398853.P9826183201726399414

`ogf((2x+x^2+2x^3+2x^4)/(1-3x+4x^2-4x^3+3x^4-x^5))`
-/

namespace A398853.P9826183201726399414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, 2] [1, -3, 4, -4, 3, -1] n

end

end A398853.P9826183201726399414

noncomputable section

/-- A398853: Upper (1/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398853.P9826183201726399414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398853 (n : ℕ) : ℤ :=
  A398853.P9826183201726399414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398854.P11164294614401889234

`ogf((x+4x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398854.P11164294614401889234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 3, 2] [1, -2, 1, -1, 2, -1] n

end

end A398854.P11164294614401889234

noncomputable section

/-- A398854: Lower (1/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398854.P11164294614401889234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398854 (n : ℕ) : ℤ :=
  A398854.P11164294614401889234.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398855.P4235946344407734571

`ogf((2x+2x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398855.P4235946344407734571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, 4, 2] [1, -2, 1, -1, 2, -1] n

end

end A398855.P4235946344407734571

noncomputable section

/-- A398855: Upper (1/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398855.P4235946344407734571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398855 (n : ℕ) : ℤ :=
  A398855.P4235946344407734571.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398856.P13260625199673236660

`ogf((x+5x^2+3x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398856.P13260625199673236660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 3, 2] [1, -2, 1, -1, 2, -1] n

end

end A398856.P13260625199673236660

noncomputable section

/-- A398856: Lower (2/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398856.P13260625199673236660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398856 (n : ℕ) : ℤ :=
  A398856.P13260625199673236660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398857.P16620617964778608233

`ogf((2x+3x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398857.P16620617964778608233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 4, 2] [1, -2, 1, -1, 2, -1] n

end

end A398857.P16620617964778608233

noncomputable section

/-- A398857: Upper (2/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398857.P16620617964778608233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398857 (n : ℕ) : ℤ :=
  A398857.P16620617964778608233.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398858.P16912354617135748286

`ogf((2x+5x^2+4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398858.P16912354617135748286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5, 4, 2] [1, -2, 1, -1, 2, -1] n

end

end A398858.P16912354617135748286

noncomputable section

/-- A398858: Lower (4/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398858.P16912354617135748286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398858 (n : ℕ) : ℤ :=
  A398858.P16912354617135748286.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398858.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398859.P10386935408754022732

`ogf((3x+3x^2+5x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A398859.P10386935408754022732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3, 5, 2] [1, -2, 1, -1, 2, -1] n

end

end A398859.P10386935408754022732

noncomputable section

/-- A398859: Upper (4/3, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398859.P10386935408754022732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398859 (n : ℕ) : ℤ :=
  A398859.P10386935408754022732.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398860.P9237099235835428353

`floor(n*(9*n+1)/4)`
-/

namespace A398860.P9237099235835428353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (9 * n + 1) : ℚ) / 4⌋

end

end A398860.P9237099235835428353

noncomputable section

/-- A398860: Lower (3/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398860.P9237099235835428353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398860 (n : ℕ) : ℤ :=
  A398860.P9237099235835428353.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398861.P9512027551121797084

`ceil(n*(9*n+1)/4)`
-/

namespace A398861.P9512027551121797084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (9 * n + 1) : ℚ) / 4⌉

end

end A398861.P9512027551121797084

noncomputable section

/-- A398861: Upper (3/2, 1)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398861.P9512027551121797084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398861 (n : ℕ) : ℤ :=
  A398861.P9512027551121797084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398862.P2537381618111854366

`ogf((38x-4x^2+14x^3)/(1-2x+2x^3-x^4))`
-/

namespace A398862.P2537381618111854366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 38, -4, 14] [1, -2, 0, 2, -1] n

end

end A398862.P2537381618111854366

noncomputable section

/-- A398862: Number of points with even coordinate sum in the cube [-n,n]^3 having an odd number of lattice neighbors inside the cube.

Offset 1, canonical program `A398862.P2537381618111854366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398862 (n : ℕ) : ℤ :=
  A398862.P2537381618111854366.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398862.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398865.P16826196749550718768

`ogf((1-3x-x^2-x^3)/(1-6x+6x^2-9x^3+8x^4+3x^5+x^6))`
-/

namespace A398865.P16826196749550718768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1, -1] [1, -6, 6, -9, 8, 3, 1] n

end

end A398865.P16826196749550718768

noncomputable section

/-- A398865: a(n) is the number of tilings of a 9 X 10n rectangle into P-pentominoes (no reflections, only rotations).

Offset 0, canonical program `A398865.P16826196749550718768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398865 (n : ℕ) : ℤ :=
  A398865.P16826196749550718768.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398870.P5829513920652044191

`ogf((1-4x+6x^2-4x^3+x^4)/(1-7x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A398870.P5829513920652044191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -7, 10, -10, 5, -1] n

end

end A398870.P5829513920652044191

noncomputable section

/-- A398870: a(n) is the number of tilings of a 6 X 5n rectangle into I-pentominoes.

Offset 0, canonical program `A398870.P5829513920652044191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398870 (n : ℕ) : ℤ :=
  A398870.P5829513920652044191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398879.P15397691951741920242

`ogf((1-4x+6x^2-4x^3+x^4)/(1-10x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A398879.P15397691951741920242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -10, 10, -10, 5, -1] n

end

end A398879.P15397691951741920242

noncomputable section

/-- A398879: a(n) is the number of tilings of a 9 X 5n rectangle into I-pentominoes.

Offset 0, canonical program `A398879.P15397691951741920242`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398879 (n : ℕ) : ℤ :=
  A398879.P15397691951741920242.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398879.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398884.P3834788570171898934

`(row(n)-col(n))*col(n)^(row(n)-col(n))+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398884.P3834788570171898934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) * (SequenceMachineLib.triCol n : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + 1

end

end A398884.P3834788570171898934

noncomputable section

/-- A398884: Array read by ascending antidiagonals: A(n,k) = n*k^n + 1, with k >= 0.

Offset 0, canonical program `A398884.P3834788570171898934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398884.P3834788570171898934.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398885.P2800503761175022589

`∑{#}[n, 1+#^(n-#)*(n-#)]`
-/

namespace A398885.P2800503761175022589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (1 + (k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * ((n : ℤ) - (k : ℤ) : ℚ))

end

end A398885.P2800503761175022589

noncomputable section

/-- A398885: Antidiagonal sums of the array A398884.

Offset 0, canonical program `A398885.P2800503761175022589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398885.P2800503761175022589.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398929.P15101211080941894914

`ogf((2+2x+3x^2+x^3)/(1-x^2-x^3+x^5))`
-/

namespace A398929.P15101211080941894914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 3, 1] [1, 0, -1, -1, 0, 1] n

end

end A398929.P15101211080941894914

noncomputable section

/-- A398929: Number of sets R(k) that contain n, where R(k) is the set of k consecutive integers centered at k (excluding k if k is even, including k if k is odd).

Offset 1, canonical program `A398929.P15101211080941894914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398929 (n : ℕ) : ℤ :=
  A398929.P15101211080941894914.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398985.P578659765086379523

`(n+1)*C((n+1)*(n+2), n+1)/(2*((n+1)²+n+1-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398985.P578659765086379523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose ((n + 1) * (n + 2)) (n + 1) : ℚ) / (2 * (((n + 1) ^ 2 + (n + 1) : ℤ) - 1) : ℚ)

end

end A398985.P578659765086379523

noncomputable section

/-- A398985: a(n) = n*binomial(n*(n+1), n)/(2*(n^2 + n - 1)).

Offset 1, canonical program `A398985.P578659765086379523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398985.P578659765086379523.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399018.P4841991023451713736

`ogf((6+42x+54x^2+78x^3+12x^4)/(1-3x^2+3x^4-x^6))`
-/

namespace A399018.P4841991023451713736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 42, 54, 78, 12] [1, 0, -3, 0, 3, 0, -1] n

end

end A399018.P4841991023451713736

noncomputable section

/-- A399018: Number of solid unit triangles in the hexagonal cross-section of the first iteration of the generalized Menger sponge with subdivision 2n+1, cut through the center perpendicular to a space diagonal.

Offset 0, canonical program `A399018.P4841991023451713736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399018 (n : ℕ) : ℤ :=
  A399018.P4841991023451713736.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399019.P10843594979958510368

`ogf((12x+78x^2+54x^3+42x^4+6x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A399019.P10843594979958510368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 78, 54, 42, 6] [1, 0, -3, 0, 3, 0, -1] n

end

end A399019.P10843594979958510368

noncomputable section

/-- A399019: Number of empty unit triangles in the hexagonal cross-section of the first iteration of the generalized Menger sponge with subdivision 2n+1, cut through the center perpendicular to a space diagonal.

Offset 0, canonical program `A399019.P10843594979958510368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399019 (n : ℕ) : ℤ :=
  A399019.P10843594979958510368.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399040.P4362929268690130338

`ogf((3-7x)/(1-8x+16x^2))`
-/

namespace A399040.P4362929268690130338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -7] [1, -8, 16] n

end

end A399040.P4362929268690130338

noncomputable section

/-- A399040: Total number of connected components in all induced subgraphs of the n-ladder graph.

Offset 1, canonical program `A399040.P4362929268690130338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399040 (n : ℕ) : ℤ :=
  A399040.P4362929268690130338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399041.P15010380011353425428

`ogf((8-48x+41x^2)/(1-17x+80x^2-64x^3))`
-/

namespace A399041.P15010380011353425428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -48, 41] [1, -17, 80, -64] n

end

end A399041.P15010380011353425428

noncomputable section

/-- A399041: Total number of connected components in all induced subgraphs of the 3 X n grid graph.

Offset 1, canonical program `A399041.P15010380011353425428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399041 (n : ℕ) : ℤ :=
  A399041.P15010380011353425428.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399045.P5360054208156754306

`4^n+3^n-2*2^n`
-/

namespace A399045.P5360054208156754306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 3 ^ n : ℤ) - (2 * 2 ^ n : ℤ)

end

end A399045.P5360054208156754306

noncomputable section

/-- A399045: Total number of connected components in all induced subgraphs of the n X 2 rook graph.

Offset 0, canonical program `A399045.P5360054208156754306`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399045 (n : ℕ) : ℤ :=
  A399045.P5360054208156754306.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399045.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399046.P10866800930197794789

`8^n+3*5^n-4*4^n`
-/

namespace A399046.P10866800930197794789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n + 3 * 5 ^ n : ℤ) - (4 * 4 ^ n : ℤ)

end

end A399046.P10866800930197794789

noncomputable section

/-- A399046: Total number of connected components in all induced subgraphs of the n X 3 rook graph.

Offset 0, canonical program `A399046.P10866800930197794789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399046 (n : ℕ) : ℤ :=
  A399046.P10866800930197794789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399110.P15232046065306847275

`∑{#}[n, (-1)^(n-#)*#^#*(2*n)!/((n-#)!*#!*n!)]`
-/

namespace A399110.P15232046065306847275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (k ^ k : ℚ) * (Nat.factorial (2 * n) : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat * Nat.factorial k * Nat.factorial n : ℚ)

end

end A399110.P15232046065306847275

noncomputable section

/-- A399110: Number of endofunctions on [2n] with exactly n isolated fixed points.

Offset 0, canonical program `A399110.P15232046065306847275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399110.P15232046065306847275.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399164.P4069160883750986696

`ogf((1-3x-3x^2+2x^3)/(1-4x-2x^2+4x^3-x^4))`
-/

namespace A399164.P4069160883750986696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -3, 2] [1, -4, -2, 4, -1] n

end

end A399164.P4069160883750986696

noncomputable section

/-- A399164: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 132, 321}.

Offset 0, canonical program `A399164.P4069160883750986696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399164 (n : ℕ) : ℤ :=
  A399164.P4069160883750986696.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399172.P1208699379547714089

`2^round(2^n/3)`
-/

namespace A399172.P1208699379547714089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) : ℤ)

end

end A399172.P1208699379547714089

noncomputable section

/-- A399172: a(n) = 2^((2^n-(-1)^n)/3).

Offset 0, canonical program `A399172.P1208699379547714089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399172.P1208699379547714089.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399180.P3731468127804606697

`ogf((x+2x^2+x^3+2x^4+x^5)/(1-x^7))`
-/

namespace A399180.P3731468127804606697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 1, 2, 1] [1, 0, 0, 0, 0, 0, 0, -1] n

end

end A399180.P3731468127804606697

noncomputable section

/-- A399180: Period 7: repeat 0,1,2,1,2,1,0.

Offset 0, canonical program `A399180.P3731468127804606697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399180 (n : ℕ) : ℤ :=
  A399180.P3731468127804606697.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399180.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399185.P9420212230745504611

`a(n-4)+4*a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2, a(6)=0`
-/

namespace A399185.P9420212230745504611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 2, 0] fun n a =>
  a (n - 4) + 4 * a (n - 5) + a (n - 6)

end

end A399185.P9420212230745504611

noncomputable section

/-- A399185: a(n) is the number of tilings of a 5 X 2n rectangle into Z-tetrominoes and U-pentominoes.

Offset 0, canonical program `A399185.P9420212230745504611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399185 (n : ℕ) : ℤ :=
  (A399185.P9420212230745504611.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399233.P5330481548219971955

`ogf((12-24x+16x^2-4x^3+2x^4)/(1-4x+6x^2-6x^3+5x^4-2x^5+x^6))`
-/

namespace A399233.P5330481548219971955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -24, 16, -4, 2] [1, -4, 6, -6, 5, -2, 1] n

end

end A399233.P5330481548219971955

noncomputable section

/-- A399233: Number of minimal connected dominating sets in the n-antiprism graph.

Offset 3, canonical program `A399233.P5330481548219971955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399233 (n : ℕ) : ℤ :=
  A399233.P5330481548219971955.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399258.P9139943054962240312

`floor((row(n)-col(n)+1)*π^(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399258.P9139943054962240312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℝ) * Real.pi ^ (SequenceMachineLib.triCol n + 1)⌋

end

end A399258.P9139943054962240312

noncomputable section

/-- A399258: Rectangular array (r(n, k)), read by descending antidiagonals: r(n, k) = floor(k*Pi^n).

Offset 1, canonical program `A399258.P9139943054962240312`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)-col(n)+1)*π^(col(n)+1))` (program `A399258.P9139943054962240312`, by `A399258.P9139943054962240312.correct`). Lean does not check the parsing of the name. -/
def A399258 (n : ℕ) : ℤ :=
  A399258.P9139943054962240312.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((row(n)-col(n)+1)*π^(col(n)+1))` (program `A399258.P9139943054962240312`, by `A399258.P9139943054962240312.correct`). Lean does not check the parsing of the name. -/
def A399258.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399324.P15725540353166825345

`1/(n+2)*∑{#}[n, C(2*#, #)*C(n+2, #+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399324.P15725540353166825345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (2 * k) k * Nat.choose (n + 2) (k + 1) : ℕ) : ℚ)

end

end A399324.P15725540353166825345

noncomputable section

/-- A399324: a(n) = (1/(n + 2)) * Sum_{k=0..n} binomial(2*k, k) * binomial(n+2, k+1). Row sums of A106534.

Offset 0, canonical program `A399324.P15725540353166825345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399324 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399324.P15725540353166825345.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399341.P5948604663381644649

`(n^6+9*n^5+30*n^4+45*n^3+29*n²+6*n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399341.P5948604663381644649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 + 9 * n ^ 5 + 30 * n ^ 4 + 45 * n ^ 3 + 29 * n ^ 2 + 6 * n : ℚ) / 8

end

end A399341.P5948604663381644649

noncomputable section

/-- A399341: a(n) = (n^6 + 9*n^5 + 30*n^4 + 45*n^3 + 29*n^2 + 6*n) / 8. (Row 3 of array A399342.)

Offset 0, canonical program `A399341.P5948604663381644649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399341.P5948604663381644649.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399352.P14429200933316941259

`ogf((1+3x+x^4-x^5)/(1-5x^2-x^4+x^6))`
-/

namespace A399352.P14429200933316941259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, 0, 1, -1] [1, 0, -5, 0, -1, 0, 1] n

end

end A399352.P14429200933316941259

noncomputable section

/-- A399352: Number of independent vertex sets in the n X 2 projective plane graph.

Offset 0, canonical program `A399352.P14429200933316941259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399352 (n : ℕ) : ℤ :=
  A399352.P14429200933316941259.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399353.P8469045247543343980

`ogf((2+3x-9x^2+6x^3-9x^4+2x^5+9x^6-4x^7+3x^8-x^9)/(1-12x^2+3x^4+25x^6+2x^8-x^10))`
-/

namespace A399353.P8469045247543343980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, -9, 6, -9, 2, 9, -4, 3, -1] [1, 0, -12, 0, 3, 0, 25, 0, 2, 0, -1] n

end

end A399353.P8469045247543343980

noncomputable section

/-- A399353: Number of independent vertex sets in the n X 3 projective plane graph.

Offset 0, canonical program `A399353.P8469045247543343980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399353 (n : ℕ) : ℤ :=
  A399353.P8469045247543343980.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399354.P5833896430700675044

`ogf((3-12x^2-12x^3-x^4)/(1-x-8x^2-6x^3+x^4+x^5))`
-/

namespace A399354.P5833896430700675044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -12, -12, -1] [1, -1, -8, -6, 1, 1] n

end

end A399354.P5833896430700675044

noncomputable section

/-- A399354: Number of independent vertex sets in the 3 X n Moebius strip graph.

Offset 0, canonical program `A399354.P5833896430700675044`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399354 (n : ℕ) : ℤ :=
  A399354.P5833896430700675044.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399355.P8661528366666240690

`ogf((2+5x-20x^2-49x^3-10x^4+23x^5-4x^6-3x^7)/(1-x-20x^2-27x^3+14x^4+25x^5-4x^6-5x^7+x^8))`
-/

namespace A399355.P8661528366666240690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, -20, -49, -10, 23, -4, -3] [1, -1, -20, -27, 14, 25, -4, -5, 1] n

end

end A399355.P8661528366666240690

noncomputable section

/-- A399355: Number of independent vertex sets in the 4 X n Moebius strip graph.

Offset 0, canonical program `A399355.P8661528366666240690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399355 (n : ℕ) : ℤ :=
  A399355.P8661528366666240690.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399357.P4855077862202174180

`ogf((1+4x-12x^2+8x^3-x^4)/(1-3x-12x^2+4x^3+3x^4-x^5))`
-/

namespace A399357.P4855077862202174180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -12, 8, -1] [1, -3, -12, 4, 3, -1] n

end

end A399357.P4855077862202174180

noncomputable section

/-- A399357: Number of independent vertex sets in the 4 X n Klein bottle graph.

Offset 0, canonical program `A399357.P4855077862202174180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399357 (n : ℕ) : ℤ :=
  A399357.P4855077862202174180.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399443.P12779427697152541881

`n*(n²+3*n+1)*(n+3)!/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399443.P12779427697152541881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2 + 3 * n + 1) * Nat.factorial (n + 3) : ℚ) / 8

end

end A399443.P12779427697152541881

noncomputable section

/-- A399443: a(n) = n * (n^2 + 3*n + 1) * (n + 3)! / 8. (Row 3 of array A399444.)

Offset 0, canonical program `A399443.P12779427697152541881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399443 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399443.P12779427697152541881.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399478.P10424283525659201034

`(n+1)*a(n-1)+(n+2)*(n-1)!` with `a(0)=-1`
-/

namespace A399478.P10424283525659201034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  (n + 1 : ℤ) * a (n - 1) + ((n + 2) * Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A399478.P10424283525659201034

noncomputable section

/-- A399478: a(n) = n! * (H_{n-1} - 1/n), where H_n is the n-th harmonic number.

Offset 1, canonical program `A399478.P10424283525659201034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399478 (n : ℕ) : ℤ :=
  A399478.P10424283525659201034.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399519.P15133205204752964634

`n+1-round(exp(round(log(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399519.P15133205204752964634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - SequenceMachineLib.roundAway (Real.exp (SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ)) : ℝ))

end

end A399519.P15133205204752964634

noncomputable section

/-- A399519: a(n) = n - round(exp(round(log(n)))), where round(x) is the nearest integer to x.

Offset 1, canonical program `A399519.P15133205204752964634`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-round(exp(round(log(n+1))))` (program `A399519.P15133205204752964634`, by `A399519.P15133205204752964634.correct`). Lean does not check the parsing of the name. -/
def A399519 (n : ℕ) : ℤ :=
  A399519.P15133205204752964634.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-round(exp(round(log(n+1))))` (program `A399519.P15133205204752964634`, by `A399519.P15133205204752964634.correct`). Lean does not check the parsing of the name. -/
def A399519.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A399532.P4141707571895212141

`2^(n-1)*a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399532.P4141707571895212141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + a (n - 3)

end

end A399532.P4141707571895212141

noncomputable section

/-- A399532: G.f. A(x) satisfies: A(x) = (1 - x^2 + x * A(2*x)) / (1 - x^3).

Offset 0, canonical program `A399532.P4141707571895212141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399532.P4141707571895212141.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399533.P15495638550834500928

`a(n-1)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399533.P15495638550834500928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * a (n - 3)

end

end A399533.P15495638550834500928

noncomputable section

/-- A399533: G.f. A(x) satisfies: A(x) = (1 + x^3 * A(2*x)) / (1 - x).

Offset 0, canonical program `A399533.P15495638550834500928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399533 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399533.P15495638550834500928.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399534.P8032153606335244007

`2^(n-2)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399534.P8032153606335244007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * a (n - 2) + a (n - 3)

end

end A399534.P8032153606335244007

noncomputable section

/-- A399534: G.f. A(x) satisfies: A(x) = (1 + x + x^2 * A(2*x)) / (1 - x^3).

Offset 0, canonical program `A399534.P8032153606335244007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399534 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399534.P8032153606335244007.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399536.P7741014011758907903

`a(n-2)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399536.P7741014011758907903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * a (n - 3)

end

end A399536.P7741014011758907903

noncomputable section

/-- A399536: G.f. A(x) satisfies: A(x) = (1 + x + x^3 * A(2*x)) / (1 - x^2).

Offset 0, canonical program `A399536.P7741014011758907903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399536.P7741014011758907903.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399538.P8373243976437889193

`2^(n-1)*a(n-1)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A399538.P8373243976437889193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + a (n - 3)

end

end A399538.P8373243976437889193

noncomputable section

/-- A399538: G.f. A(x) satisfies: A(x) = x * (1 + A(2*x)) / (1 - x^3).

Offset 0, canonical program `A399538.P8373243976437889193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399538.P8373243976437889193.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399542.P9741589405166616267

`(row(n)-col(n))*col(n)*((row(n)-col(n))²-col(n)²)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399542.P9741589405166616267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) ^ 2 - (SequenceMachineLib.triCol n ^ 2 : ℤ)) : ℚ) / 6

end

end A399542.P9741589405166616267

noncomputable section

/-- A399542: Array read by ascending antidiagonals: A(n,k) = n*k*(n^2 - k^2)/6, with n, k >= 0.

Offset 0, canonical program `A399542.P9741589405166616267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399542 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399542.P9741589405166616267.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399560.P3438043881530279004

`2^(n-1)*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399560.P3438043881530279004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * a (n - 1) + a (n - 2) + a (n - 3)

end

end A399560.P3438043881530279004

noncomputable section

/-- A399560: G.f. A(x) satisfies: A(x) = (1 - 2*x^2 + x*A(2*x)) / (1 - x^2 - x^3).

Offset 0, canonical program `A399560.P3438043881530279004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399560 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399560.P3438043881530279004.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399561.P13876457118130922269

`a(n-1)+2^(n-2)*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399561.P13876457118130922269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * a (n - 2) + a (n - 3)

end

end A399561.P13876457118130922269

noncomputable section

/-- A399561: G.f. A(x) satisfies: A(x) = (1 - x^2 + x^2 * A(2*x)) / (1 - x - x^3).

Offset 0, canonical program `A399561.P13876457118130922269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399561.P13876457118130922269.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399562.P7116375726050139193

`a(n-1)+a(n-2)+2^(n-3)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399562.P7116375726050139193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * a (n - 3)

end

end A399562.P7116375726050139193

noncomputable section

/-- A399562: G.f. A(x) satisfies: A(x) = (1 - x^2 + x^3 * A(2*x)) / (1 - x - x^2).

Offset 0, canonical program `A399562.P7116375726050139193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399562 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399562.P7116375726050139193.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399564.P8159499002176019174

`ogf((10-4x)/(1-5x+x^2))`
-/

namespace A399564.P8159499002176019174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -4] [1, -5, 1] n

end

end A399564.P8159499002176019174

noncomputable section

/-- A399564: Number of perfect matchings of the 3 X 2n grid graph embedded on the Klein bottle.

Offset 1, canonical program `A399564.P8159499002176019174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399564 (n : ℕ) : ℤ :=
  A399564.P8159499002176019174.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399615.P14147135890609384364

`2^(2^(n+1)-2*(n+1)-1)+2^(2^n-(n+1)-1)`
-/

namespace A399615.P14147135890609384364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ (n + 1) : ℤ) - (2 * (n + 1) : ℤ) - 1 : ℤ) + (2 : ℚ) ^ ((2 ^ n : ℤ) - (n + 1 : ℤ) - 1 : ℤ)

end

end A399615.P14147135890609384364

noncomputable section

/-- A399615: Number of non-isomorphic perfect hierarchical matching (PHM) trees on 2^n vertices.

Offset 1, canonical program `A399615.P14147135890609384364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399615.P14147135890609384364.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399619.P17223841901192138433

`(2^(n+1)-1)^(n+1)-(2^(n+1)-2)^(n+1)`
-/

namespace A399619.P17223841901192138433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1) ^ (n + 1) - ((2 ^ (n + 1) : ℤ) - 2) ^ (n + 1)

end

end A399619.P17223841901192138433

noncomputable section

/-- A399619: Number of ordered n-edge multihypergraphs on n labeled vertices with no isolated vertex and with at least one vertex contained in every edge.

Offset 1, canonical program `A399619.P17223841901192138433`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399619 (n : ℕ) : ℤ :=
  A399619.P17223841901192138433.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399641.P6054218575875225660

`∑{#}[n, 2^#*C(#+2, 2)*C(3*n+4, n-#)]`
-/

namespace A399641.P6054218575875225660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose (k + 2) 2 * Nat.choose (3 * n + 4) ((n : ℤ) - (k : ℤ)).toNat

end

end A399641.P6054218575875225660

noncomputable section

/-- A399641: Expansion of g^5/(3-2*g)^4, where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A399641.P6054218575875225660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399641 (n : ℕ) : ℤ :=
  (A399641.P6054218575875225660.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399642.P1896916165972826017

`∑{#}[n, 3^#*C(#+2, 2)*C(4*n+5, n-#)]`
-/

namespace A399642.P1896916165972826017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 3 ^ k * Nat.choose (k + 2) 2 * Nat.choose (4 * n + 5) ((n : ℤ) - (k : ℤ)).toNat

end

end A399642.P1896916165972826017

noncomputable section

/-- A399642: Expansion of g^6/(4-3*g)^4, where g = 1+x*g^4 is the g.f. of A002293.

Offset 0, canonical program `A399642.P1896916165972826017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399642 (n : ℕ) : ℤ :=
  (A399642.P1896916165972826017.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399643.P4450374185087043687

`∑{#}[n, 4^#*C(#+2, 2)*C(5*n+6, n-#)]`
-/

namespace A399643.P4450374185087043687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 4 ^ k * Nat.choose (k + 2) 2 * Nat.choose (5 * n + 6) ((n : ℤ) - (k : ℤ)).toNat

end

end A399643.P4450374185087043687

noncomputable section

/-- A399643: Expansion of g^7/(5-4*g)^4, where g = 1+x*g^5 is the g.f. of A002294.

Offset 0, canonical program `A399643.P4450374185087043687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399643 (n : ℕ) : ℤ :=
  (A399643.P4450374185087043687.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399644.P5474004107521447092

`∑{#}[n, 5^#*C(#+2, 2)*C(6*n+7, n-#)]`
-/

namespace A399644.P5474004107521447092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 5 ^ k * Nat.choose (k + 2) 2 * Nat.choose (6 * n + 7) ((n : ℤ) - (k : ℤ)).toNat

end

end A399644.P5474004107521447092

noncomputable section

/-- A399644: Expansion of g^8/(6-5*g)^4, where g = 1+x*g^6 is the g.f. of A002295.

Offset 0, canonical program `A399644.P5474004107521447092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399644 (n : ℕ) : ℤ :=
  (A399644.P5474004107521447092.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399645.P10912571114058594174

`∑{#}[n, 6^#*C(#+2, 2)*C(7*n+8, n-#)]`
-/

namespace A399645.P10912571114058594174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 6 ^ k * Nat.choose (k + 2) 2 * Nat.choose (7 * n + 8) ((n : ℤ) - (k : ℤ)).toNat

end

end A399645.P10912571114058594174

noncomputable section

/-- A399645: Expansion of g^9/(7-6*g)^4, where g = 1+x*g^7 is the g.f. of A002296.

Offset 0, canonical program `A399645.P10912571114058594174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399645 (n : ℕ) : ℤ :=
  (A399645.P10912571114058594174.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399934.P14325894849498318737

`ogf((6+2x+x^2-3x^3)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A399934.P14325894849498318737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2, 1, -3] [1, -2, 1, -1, 2, -1] n

end

end A399934.P14325894849498318737

noncomputable section

/-- A399934: Six times the maximum area of the convex hull of a polyhex with n cells, where each hexagonal cell has area 1.

Offset 1, canonical program `A399934.P14325894849498318737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399934 (n : ℕ) : ℤ :=
  A399934.P14325894849498318737.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399998.P756939935722183912

`a(n-1-a(a(n-1))²)+1` with `a(0)=0`
-/

namespace A399998.P756939935722183912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - 1 - (a (a (n - 1)) ^ 2 : ℤ)).toNat + 1

end

end A399998.P756939935722183912

noncomputable section

/-- A399998: a(n+1) = a(n-a(a(n))^2) + 1, a(0) = 0.

Offset 0, canonical program `A399998.P756939935722183912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399998 (n : ℕ) : ℤ :=
  (A399998.P756939935722183912.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400126.P6385519365283133117

`ogf((x+x^2+x^3+x^4+x^5+x^6+x^7+x^8+x^9)/(1-x-9x^9+9x^10-10x^18+10x^19))`
-/

namespace A400126.P6385519365283133117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 1, 1, 1, 1, 1] [1, -1, 0, 0, 0, 0, 0, 0, 0, -9, 9, 0, 0, 0, 0, 0, 0, 0, -10, 10] n

end

end A400126.P6385519365283133117

noncomputable section

/-- A400126: Nonnegative integers such that every adjacent pair of digits sums to exactly 9.

Offset 1, canonical program `A400126.P6385519365283133117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400126 (n : ℕ) : ℤ :=
  A400126.P6385519365283133117.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400150.P11417170207411611835

`abs(2*a(n-1)-a(n-2)-2)` with `a(0)=0, a(1)=1`
-/

namespace A400150.P11417170207411611835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |2 * a (n - 1) - a (n - 2) - 2|

end

end A400150.P11417170207411611835

noncomputable section

/-- A400150: a(n) = |2*a(n-1) - a(n-2) - 2|, with a(0) = 0 and a(1) = 1.

Offset 0, canonical program `A400150.P11417170207411611835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400150 (n : ℕ) : ℤ :=
  A400150.P11417170207411611835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400197.P16747218055785228810

`ogf((x-x^2+x^3+2x^4-x^5)/(1-3x+3x^2-x^3))`
-/

namespace A400197.P16747218055785228810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 1, 2, -1] [1, -3, 3, -1] n

end

end A400197.P16747218055785228810

noncomputable section

/-- A400197: The union of the squares (A000290) and the integer 2.

Offset 0, canonical program `A400197.P16747218055785228810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400197 (n : ℕ) : ℤ :=
  A400197.P16747218055785228810.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400221.P8547259443277624216

`(n+1)^3*(5*n+1)`
-/

namespace A400221.P8547259443277624216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 * (5 * n + 1)

end

end A400221.P8547259443277624216

noncomputable section

/-- A400221: Number of divisors of 3360^n.

Offset 0, canonical program `A400221.P8547259443277624216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400221 (n : ℕ) : ℤ :=
  (A400221.P8547259443277624216.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400232.P17183186116095233365

`6*(n+1)²+2-n^3`
-/

namespace A400232.P17183186116095233365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) ^ 2 + 2 : ℤ) - (n ^ 3 : ℤ)

end

end A400232.P17183186116095233365

noncomputable section

/-- A400232: a(n) is the number of boundary lattice points minus the number of interior lattice points of the cube [0,n] X [0,n] X [0,n].

Offset 1, canonical program `A400232.P17183186116095233365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400232 (n : ℕ) : ℤ :=
  A400232.P17183186116095233365.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400233.P10225734584980570909

`(n+2)^4-2*n^4`
-/

namespace A400233.P10225734584980570909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - (2 * n ^ 4 : ℤ)

end

end A400233.P10225734584980570909

noncomputable section

/-- A400233: a(n) is the number of boundary lattice points minus the number of interior lattice points of the 4-dimensional cube [0,n]^4.

Offset 1, canonical program `A400233.P10225734584980570909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400233 (n : ℕ) : ℤ :=
  A400233.P10225734584980570909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400235.P11496997856780978715

`4*(n+1)²+2-n²*(n-1)/2`
-/

namespace A400235.P11496997856780978715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) ^ 2 + 2 : ℚ) - ((n ^ 2 : ℤ) * ((n : ℤ) - 1) : ℚ) / 2

end

end A400235.P11496997856780978715

noncomputable section

/-- A400235: a(n) is the number of boundary lattice points minus the number of interior lattice points of the prism with vertices (0,0,0), (n,0,0), (0,n,0), (0,0,n), (n,0,n) and (0,n,n).

Offset 1, canonical program `A400235.P11496997856780978715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400235.P11496997856780978715.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400445.P7356954288380415145

`(n-1)/(n+1)*(2*a(n-1)+15*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A400445.P7356954288380415145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1 : ℚ) / (n + 1 : ℚ) * (2 * a (n - 1) + 15 * a (n - 2))

end

end A400445.P7356954288380415145

noncomputable section

/-- A400445: a(n) = (n-1)*(2*a(n-1) + 15*a(n-2))/(n+1) with a(0)=1, a(1)=0.

Offset 0, canonical program `A400445.P7356954288380415145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400445.P7356954288380415145.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400507.P8321498115917005294

`(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400507.P8321498115917005294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 3) ^ SequenceMachineLib.triCol n

end

end A400507.P8321498115917005294

noncomputable section

/-- A400507: Square array A(n,k) = k*(k+2)^(n-1), n >= 1, k >= 1, read by antidiagonals.

Offset 1, canonical program `A400507.P8321498115917005294`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)` (program `A400507.P8321498115917005294`, by `A400507.P8321498115917005294.correct`). Lean does not check the parsing of the name. -/
def A400507 (n : ℕ) : ℤ :=
  A400507.P8321498115917005294.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(row(n)-col(n)+3)^col(n)` (program `A400507.P8321498115917005294`, by `A400507.P8321498115917005294.correct`). Lean does not check the parsing of the name. -/
def A400507.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400537.P12261565336202433379

`ogf((1+28x+102x^2+60x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A400537.P12261565336202433379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 102, 60, 1] [1, -5, 10, -10, 5, -1] n

end

end A400537.P12261565336202433379

noncomputable section

/-- A400537: Number of lattice points of the 24-cell whose vertices are the permutations of (+-n, +-n, 0, 0).

Offset 0, canonical program `A400537.P12261565336202433379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400537 (n : ℕ) : ℤ :=
  A400537.P12261565336202433379.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400538.P9723494666094230779

`ogf((1+95x+231x^2+41x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400538.P9723494666094230779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 95, 231, 41] [1, -4, 6, -4, 1] n

end

end A400538.P9723494666094230779

noncomputable section

/-- A400538: Number of lattice points of the truncated tetrahedron whose vertices are the permutations of (+-n, +-n, +-3n) with an even number of minus signs.

Offset 0, canonical program `A400538.P9723494666094230779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400538 (n : ℕ) : ℤ :=
  A400538.P9723494666094230779.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400539.P8976220556064503326

`ogf((1+127x+367x^2+81x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400539.P8976220556064503326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 127, 367, 81] [1, -4, 6, -4, 1] n

end

end A400539.P8976220556064503326

noncomputable section

/-- A400539: Number of lattice points of the tetrakis hexahedron whose vertices are (+-3n,0,0), (0,+-3n,0), (0,0,+-3n) and (+-2n,+-2n,+-2n).

Offset 0, canonical program `A400539.P8976220556064503326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400539 (n : ℕ) : ℤ :=
  A400539.P8976220556064503326.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400561.P7401441228568277259

`2*(C(n+2, 2)+C(n+2, 4))`
-/

namespace A400561.P7401441228568277259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (n + 2) 2 + Nat.choose (n + 2) 4)

end

end A400561.P7401441228568277259

noncomputable section

/-- A400561: a(n) is the maximum numbers of regions (both closed or open) outside a strictly convex n-polygon, delimited by the n edges and the n*(n-3)/2 diagonals of the polygon itself, where all these elements (edges and diagonals) are extended to infinity as straight lines.

Offset 2, canonical program `A400561.P7401441228568277259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400561 (n : ℕ) : ℤ :=
  (A400561.P7401441228568277259.a (n - 2) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400576.P7057297574492566454

`1/(n+1)*∑{#}[n, C(n+1+#-1, #)*C((n+1)², n+1-#-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400576.P7057297574492566454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), Nat.choose ((n + 1 + k : ℤ) - 1).toNat k * Nat.choose ((n + 1) ^ 2) ((n + 1 : ℤ) - (k : ℤ) - 1).toNat : ℕ) : ℚ)

end

end A400576.P7057297574492566454

noncomputable section

/-- A400576: a(n) = (1/n) * Sum_{k=0..n-1} binomial(n+k-1,k) * binomial(n^2,n-k-1).

Offset 1, canonical program `A400576.P7057297574492566454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400576 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400576.P7057297574492566454.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400618.P12185814811426389803

`4*n*(n*(4*n+6)+5)/3+1`
-/

namespace A400618.P12185814811426389803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n * (n * (4 * n + 6) + 5) : ℚ) / 3 + 1

end

end A400618.P12185814811426389803

noncomputable section

/-- A400618: Sum of the distinct entries in the central row and central column of the (2*n + 1) X (2*n + 1) square spiral.

Offset 0, canonical program `A400618.P12185814811426389803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400618 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400618.P12185814811426389803.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400630.P15238254531042592611

`floor((n+5)²/2)-10`
-/

namespace A400630.P15238254531042592611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 5) ^ 2 : ℚ) / 2⌋ - 10

end

end A400630.P15238254531042592611

noncomputable section

/-- A400630: Number of semi-meanders with n crossings and winding number n-4, for n >= 4.

Offset 4, canonical program `A400630.P15238254531042592611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400630 (n : ℕ) : ℤ :=
  A400630.P15238254531042592611.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400664.P17659407087172067860

`(n+1)*(∑{#}[n+1, C(n+1, #)²*2^#]-1)/2`
-/

namespace A400664.P17659407087172067860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (((∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 1) k ^ 2 * 2 ^ k : ℕ) : ℤ) - 1) : ℚ) / 2

end

end A400664.P17659407087172067860

noncomputable section

/-- A400664: Expansion of g.f. ((3 - z)/(z^2 - 6*z + 1)^(3/2) - 1/(z - 1)^2) / 2.

Offset 0, canonical program `A400664.P17659407087172067860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400664.P17659407087172067860.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400699.P5324175900768312914

`ogf((3+x+2x^2-3x^3+5x^4-2x^5)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A400699.P5324175900768312914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 2, -3, 5, -2] [1, -2, 1, -1, 2, -1] n

end

end A400699.P5324175900768312914

noncomputable section

/-- A400699: Start with a set of three adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

Offset 0, canonical program `A400699.P5324175900768312914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400699 (n : ℕ) : ℤ :=
  A400699.P5324175900768312914.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400700.P1160826016266712974

`ogf((4+2x+2x^2-4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A400700.P1160826016266712974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 2, -4, 2] [1, -2, 1, -1, 2, -1] n

end

end A400700.P1160826016266712974

noncomputable section

/-- A400700: Start with a set of four adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

Offset 0, canonical program `A400700.P1160826016266712974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400700 (n : ℕ) : ℤ :=
  A400700.P1160826016266712974.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400701.P3330372214790239244

`ogf((5+3x+2x^2-5x^3+x^4-2x^5+2x^6)/(1-2x+x^2-x^3+2x^4-x^5))`
-/

namespace A400701.P3330372214790239244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 2, -5, 1, -2, 2] [1, -2, 1, -1, 2, -1] n

end

end A400701.P3330372214790239244

noncomputable section

/-- A400701: Start with a set of five adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

Offset 0, canonical program `A400701.P3330372214790239244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400701 (n : ℕ) : ℤ :=
  A400701.P3330372214790239244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400753.P10274350832908785409

`ogf((1-6x+9x^2)/(1-10x+27x^2-27x^3))`
-/

namespace A400753.P10274350832908785409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 9] [1, -10, 27, -27] n

end

end A400753.P10274350832908785409

noncomputable section

/-- A400753: Row sums of the Riordan array (1/(1-3*x), x/(1-3*x)^3).

Offset 0, canonical program `A400753.P10274350832908785409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400753 (n : ℕ) : ℤ :=
  A400753.P10274350832908785409.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400754.P4279432807320805709

`ogf((1-3x)/(1-10x+27x^2-27x^3))`
-/

namespace A400754.P4279432807320805709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -10, 27, -27] n

end

end A400754.P4279432807320805709

noncomputable section

/-- A400754: Row sums of the Riordan array (1/(1-3*x)^2, x/(1-3*x)^3).

Offset 0, canonical program `A400754.P4279432807320805709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400754 (n : ℕ) : ℤ :=
  A400754.P4279432807320805709.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400796.P792017740949119045

`ogf((x-2x^2+2x^3+2x^4-2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`
-/

namespace A400796.P792017740949119045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 2, 2, -2, 1] [1, -2, 1, 0, 0, -1, 2, -1] n

end

end A400796.P792017740949119045

noncomputable section

/-- A400796: a(n) = (n^2 + 4*Legendre(n,5))/5.

Offset 0, canonical program `A400796.P792017740949119045`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400796 (n : ℕ) : ℤ :=
  A400796.P792017740949119045.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400810.P4336047378170428460

`ogf((1+4x+x^2)/(1-3x-15x^2-x^3))`
-/

namespace A400810.P4336047378170428460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -3, -15, -1] n

end

end A400810.P4336047378170428460

noncomputable section

/-- A400810: Size of Type C megastars of star triples in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A400810.P4336047378170428460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400810 (n : ℕ) : ℤ :=
  A400810.P4336047378170428460.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400811.P8729234673321828537

`ogf((2+4x)/(1-3x-15x^2-x^3))`
-/

namespace A400811.P8729234673321828537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4] [1, -3, -15, -1] n

end

end A400811.P8729234673321828537

noncomputable section

/-- A400811: Size of Type A palindromes of star triples in the Spectre aperiodic monotile tiling.

Offset 1, canonical program `A400811.P8729234673321828537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400811 (n : ℕ) : ℤ :=
  A400811.P8729234673321828537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400941.P3048978257207949309

`2*C(2*n, n)-n²-1`
-/

namespace A400941.P3048978257207949309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n) n : ℤ) - (n ^ 2 : ℤ) - 1

end

end A400941.P3048978257207949309

noncomputable section

/-- A400941: The number of order-preserving or reversing partial permutations of an n-element set.

Offset 0, canonical program `A400941.P3048978257207949309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400941 (n : ℕ) : ℤ :=
  A400941.P3048978257207949309.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400967.P16530172883198578615

`ogf((4-7x+4x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400967.P16530172883198578615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7, 4, -3] [1, -4, 6, -4, 1] n

end

end A400967.P16530172883198578615

noncomputable section

/-- A400967: a(n) is the number of boundary lattice points minus the number of interior lattice points of the regular tetrahedron with vertices (0,0,0), (n,n,0), (n,0,n) and (0,n,n).

Offset 1, canonical program `A400967.P16530172883198578615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400967 (n : ℕ) : ℤ :=
  A400967.P16530172883198578615.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400968.P10195912970142873605

`ogf((5-9x-x^2-3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A400968.P10195912970142873605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -9, -1, -3] [1, -4, 6, -4, 1] n

end

end A400968.P10195912970142873605

noncomputable section

/-- A400968: a(n) is the number of boundary lattice points minus the number of interior lattice points of the octahedron |x| + |y| + |z| <= n.

Offset 1, canonical program `A400968.P10195912970142873605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400968 (n : ℕ) : ℤ :=
  A400968.P10195912970142873605.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400996.P805758818463875474

`ogf((1-5x+5x^2)/(1-6x+8x^2-2x^3))`
-/

namespace A400996.P805758818463875474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 5] [1, -6, 8, -2] n

end

end A400996.P805758818463875474

noncomputable section

/-- A400996: Number of fixed point free involutions in S_{2n} (or perfect matchings on [2n]) which avoid the patterns {123, 231, 321}.

Offset 0, canonical program `A400996.P805758818463875474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400996 (n : ℕ) : ℤ :=
  A400996.P805758818463875474.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401015.P7410585718763402089

`1+((n^3+2*n)/3-1)%9`
-/

namespace A401015.P7410585718763402089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (SequenceMachineLib.roundAway ((n ^ 3 + 2 * n : ℚ) / 3 - 1)) 9

end

end A401015.P7410585718763402089

noncomputable section

/-- A401015: Digital roots of A006527(n), the number of unit tetrahedra in a regular tetrahedron subdivided into a tetrahedral-octahedral lattice.

Offset 0, canonical program `A401015.P7410585718763402089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401015 (n : ℕ) : ℤ :=
  A401015.P7410585718763402089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401016.P10902171059879580111

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=4`
-/

namespace A401016.P10902171059879580111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 2, 4] fun n a =>
  a (n - 4)

end

end A401016.P10902171059879580111

noncomputable section

/-- A401016: Period 4: repeat [1, 3, 2, 4].

Offset 0, canonical program `A401016.P10902171059879580111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401016 (n : ℕ) : ℤ :=
  (A401016.P10902171059879580111.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401073.P2485690032411973571

`(3^n-2^(n+1)+1)*(2*4^n-3*3^n+1)/2`
-/

namespace A401073.P2485690032411973571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) + 1) * ((2 * 4 ^ n : ℤ) - (3 * 3 ^ n : ℤ) + 1) : ℚ) / 2

end

end A401073.P2485690032411973571

noncomputable section

/-- A401073: Number of n X n (0,1)-matrices of rank 2 over the real numbers.

Offset 0, canonical program `A401073.P2485690032411973571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401073 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401073.P2485690032411973571.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401128.P13691097860066135088

`(n+1)!*C((n+2)²-2, n)`
-/

namespace A401128.P13691097860066135088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * Nat.choose (((n + 2) ^ 2 : ℤ) - 2).toNat n

end

end A401128.P13691097860066135088

noncomputable section

/-- A401128: Number of ways to give each of n cars an ordered pair of (not necessarily distinct) spots in [n] so that all cars park, where each car in turn takes its first choice if free, else its second choice if free, else the first free spot after its second choice.

Offset 1, canonical program `A401128.P13691097860066135088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401128 (n : ℕ) : ℤ :=
  (A401128.P13691097860066135088.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401139.P12278537050696209364

`a(n-6)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=4, a(4)=3, a(5)=2`
-/

namespace A401139.P12278537050696209364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 5, 4, 3, 2] fun n a =>
  a (n - 6)

end

end A401139.P12278537050696209364

noncomputable section

/-- A401139: Period 6: repeat [1, 6, 5, 4, 3, 2].

Offset 0, canonical program `A401139.P12278537050696209364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401139 (n : ℕ) : ℤ :=
  (A401139.P12278537050696209364.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401186.P18360977751011296750

`∑{#}[n, C(n, #)*(2^#-1)^(n-#)*2^C(n-#, 2)]`
-/

namespace A401186.P18360977751011296750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * ((2 ^ k : ℤ) - 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (2 ^ Nat.choose ((n : ℤ) - (k : ℤ)).toNat 2 : ℚ)

end

end A401186.P18360977751011296750

noncomputable section

/-- A401186: Total number of maximal independent vertex sets in all labeled graphs on n vertices.

Offset 0, canonical program `A401186.P18360977751011296750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401186.P18360977751011296750.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401213.P15491154047137647949

`∑{#}[n-1, C(n+1, #+2)*(#+2)!*2^(C(n+1, 2)-(#+2))]`
-/

namespace A401213.P15491154047137647949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (n + 1) (k + 2) * Nat.factorial (k + 2) : ℚ) * (2 : ℚ) ^ ((Nat.choose (n + 1) 2 : ℤ) - (k + 2 : ℤ) : ℤ)

end

end A401213.P15491154047137647949

noncomputable section

/-- A401213: Total number of undirected paths in all labeled graphs on n vertices, singleton paths excluded.

Offset 1, canonical program `A401213.P15491154047137647949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401213 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401213.P15491154047137647949.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396650.P9443849839984249798

`T(n-2,k)-T(n-1,k-1)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A396650.P9443849839984249798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUpLeft a n

end

end A396650.P9443849839984249798

noncomputable section

/-- A396650: Triangle read by rows: the coefficients of the polynomials P(n, x) = -x * P(n-1, x) + P(n-2, x), where P(0, x) = 1 and P(1, x) = 3*x, ordered by ascending powers.

Offset 0, canonical program `A396650.P9443849839984249798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396650 (n : ℕ) : ℤ :=
  A396650.P9443849839984249798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396651.P1106920181312554847

`T(n-1,k-1)+T(n-2,k)` with `a(0)=1, a(1)=0, a(2)=4`
-/

namespace A396651.P1106920181312554847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n

end

end A396651.P1106920181312554847

noncomputable section

/-- A396651: Triangle read by rows: the coefficients of the polynomials P(n, x) = x * P(n-1, x) + P(n-2, x), where P(0, x) = 1 and P(1, x) = 4*x, ordered by ascending powers.

Offset 0, canonical program `A396651.P1106920181312554847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396651 (n : ℕ) : ℤ :=
  (A396651.P1106920181312554847.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396714.P3439004166036263330

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=7, a(3)=7, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A396714.P3439004166036263330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 7, 7, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396714.P3439004166036263330

noncomputable section

/-- A396714: Maximum number of regions that can be formed in the plane by drawing n lollipop (or qoppa) shapes of equal radii.

Offset 0, canonical program `A396714.P3439004166036263330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396714 (n : ℕ) : ℤ :=
  (A396714.P3439004166036263330.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397405.P10130307376618811225

`comp[ceil(2^(n-1))-(-1)^n]`
-/

namespace A397405.P10130307376618811225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - (-1) ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A397405.P10130307376618811225

noncomputable section

/-- A397405: Numbers that are not Jacobsthal-Lucas numbers.

Offset 1, canonical program `A397405.P10130307376618811225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397405 (n : ℕ) : ℤ :=
  (A397405.P10130307376618811225.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397574.P946471567119300380

`eq[n-1, ∑{e}[n, (n-1)/#]]`
-/

namespace A397574.P946471567119300380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ((n : ℤ) - 1 : ℚ) / (Nat.factorization (f3 n) p : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A397574.P946471567119300380

noncomputable section

/-- A397574: Numbers m such that rad(m)^omega(m) = m.

Offset 1, canonical program `A397574.P946471567119300380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A397574 (n : ℕ) : ℤ :=
  (A397574.P946471567119300380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A397574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397731.P7457786100204349227

`ogf((x+6x^2+32x^3+75x^4+78x^5+49x^6+4x^7-3x^8-3x^9+x^10)/(1-4x+4x^2+3x^3-6x^4+6x^7-3x^8-4x^9+4x^10-x^11))`
-/

namespace A397731.P7457786100204349227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 6, 32, 75, 78, 49, 4, -3, -3, 1] [1, -4, 4, 3, -6, 0, 0, 6, -3, -4, 4, -1] n

end

end A397731.P7457786100204349227

noncomputable section

/-- A397731: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and reflection such that no two triangles share a common side.

Offset 1, canonical program `A397731.P7457786100204349227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A397731 (n : ℕ) : ℤ :=
  A397731.P7457786100204349227.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A397731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397768.P10342280064419444199

`∑{digits}[n, 2^#]`
-/

namespace A397768.P10342280064419444199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).sum

end

end A397768.P10342280064419444199

noncomputable section

/-- A397768: a(n) = sum of powers of 2 where the exponents are the digits of n.

Offset 0, canonical program `A397768.P10342280064419444199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397768 (n : ℕ) : ℤ :=
  (A397768.P10342280064419444199.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397992.P908718672811135047

`∑[∏{e}[1+n, #+1]+n]`
-/

namespace A397992.P908718672811135047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397992.P908718672811135047

noncomputable section

/-- A397992: Antidiagonal sums of the array A397991.

Offset 0, canonical program `A397992.P908718672811135047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397992 (n : ℕ) : ℤ :=
  (A397992.P908718672811135047.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398047.P7031273343828796923

`ceil(∑[n/4]+n²)`
-/

namespace A398047.P7031273343828796923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)⌉

end

end A398047.P7031273343828796923

noncomputable section

/-- A398047: Upper (1/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398047.P7031273343828796923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398047 (n : ℕ) : ℤ :=
  A398047.P7031273343828796923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398048.P12245143282949379166

`floor(∑[11*n]/4)-n`
-/

namespace A398048.P12245143282949379166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋ - (n : ℤ)

end

end A398048.P12245143282949379166

noncomputable section

/-- A398048: Lower (3/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398048.P12245143282949379166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398048 (n : ℕ) : ℤ :=
  A398048.P12245143282949379166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398049.P5455248228540835812

`ceil(3*∑[n]/4)+n²`
-/

namespace A398049.P5455248228540835812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 4⌉ + (n ^ 2 : ℤ)

end

end A398049.P5455248228540835812

noncomputable section

/-- A398049: Upper (3/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398049.P5455248228540835812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398049 (n : ℕ) : ℤ :=
  A398049.P5455248228540835812.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398389.P1944970499955465081

`2*(lt[xor(n+1, n), n]+2)`
-/

namespace A398389.P1944970499955465081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A398389.P1944970499955465081

noncomputable section

/-- A398389: Even positive numbers m such that m - 2^k is composite for all k > 0 with 2^k < m.

Offset 1, canonical program `A398389.P1944970499955465081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398389 (n : ℕ) : ℤ :=
  (A398389.P1944970499955465081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398572.P11344328521649304380

`∑{e}[∏{p}[n+1, #*val(n+1, #)], #]`
-/

namespace A398572.P11344328521649304380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A398572.P11344328521649304380

noncomputable section

/-- A398572: a(n) = A001222(A000026(n)).

Offset 1, canonical program `A398572.P11344328521649304380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398572 (n : ℕ) : ℤ :=
  (A398572.P11344328521649304380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398654.P5042094744166231689

`ceil(∑[(3+n)*n]/3)`
-/

namespace A398654.P5042094744166231689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 + n) * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌉

end

end A398654.P5042094744166231689

noncomputable section

/-- A398654: Upper (1, 1/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398654.P5042094744166231689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398654 (n : ℕ) : ℤ :=
  A398654.P5042094744166231689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398655.P6722599473383541281

`floor(∑[∑[4*n]+n]/3)`
-/

namespace A398655.P6722599473383541281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A398655.P6722599473383541281

noncomputable section

/-- A398655: Lower (1, 2/3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398655.P6722599473383541281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398655 (n : ℕ) : ℤ :=
  A398655.P6722599473383541281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398657.P14142516386804073530

`floor((3/2+n)*∑[n])`
-/

namespace A398657.P14142516386804073530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2 + (n : ℚ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A398657.P14142516386804073530

noncomputable section

/-- A398657: Lower (1, 3/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398657.P14142516386804073530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398657 (n : ℕ) : ℤ :=
  A398657.P14142516386804073530.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398658.P7109608082969465480

`∑[∑[∑[6-a(n-2)]]]` with `a(0)=0, a(1)=3, a(2)=2`
-/

namespace A398658.P7109608082969465480
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 2] fun n f3 =>
  6 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398658.P7109608082969465480

noncomputable section

/-- A398658: Upper (1, 3/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398658.P7109608082969465480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398658 (n : ℕ) : ℤ :=
  A398658.P7109608082969465480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398659.P14837806975831065424

`floor(∑[n*(n/5+n+1)])`
-/

namespace A398659.P14837806975831065424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n : ℚ) / 5 + (n + 1 : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398659.P14837806975831065424

noncomputable section

/-- A398659: Lower (1, 6/5) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398659.P14837806975831065424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398659 (n : ℕ) : ℤ :=
  A398659.P14837806975831065424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398671.P16553492494587973019

`∑[∏{p}[n+1, and(2, #)/2]]`
-/

namespace A398671.P16553492494587973019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.land 2 p : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398671.P16553492494587973019

noncomputable section

/-- A398671: a(n) is the number of positive integers <= n with no prime factors of form 4*k+1.

Offset 1, canonical program `A398671.P16553492494587973019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398671 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398671.P16553492494587973019.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398729.P3114746797043780686

`floor(∑[n²/2-n])`
-/

namespace A398729.P3114746797043780686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398729.P3114746797043780686

noncomputable section

/-- A398729: Lower (-1, 1/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

Offset 0, canonical program `A398729.P3114746797043780686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398729 (n : ℕ) : ℤ :=
  A398729.P3114746797043780686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398850.P9752319019850853025

`floor(n*(n-5/3)/4)`
-/

namespace A398850.P9752319019850853025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((n : ℚ) - (5 : ℚ) / 3) / 4⌋

end

end A398850.P9752319019850853025

noncomputable section

/-- A398850: Lower (-1/2, 1/3)-midsequence of triangular numbers (A000217) and pentagonal numbers (A000326); see Comments.

Offset 0, canonical program `A398850.P9752319019850853025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398850 (n : ℕ) : ℤ :=
  A398850.P9752319019850853025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398933.P3581238121888898672

`∑[∑[xor(2, a(n-3))]]` with `a(0)=2, a(1)=0, a(2)=3`
-/

namespace A398933.P3581238121888898672
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 3] fun n f2 =>
  Nat.xor 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398933.P3581238121888898672

noncomputable section

/-- A398933: Partial sums of A398929.

Offset 1, canonical program `A398933.P3581238121888898672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398933 (n : ℕ) : ℤ :=
  (A398933.P3581238121888898672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399025.P5372413828234583892

`∑[∑[ceil((n/2)²)]]`
-/

namespace A399025.P5372413828234583892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399025.P5372413828234583892

noncomputable section

/-- A399025: a(n) is the number of inequivalent ways of choosing 4 points on an n X n grid that form a square up to rotations.

Offset 1, canonical program `A399025.P5372413828234583892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399025 (n : ℕ) : ℤ :=
  A399025.P5372413828234583892.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399581.P14488087694834106052

`floor((n+1)/(7*log(2)*(ceil((n+1)*log2(7))-(n+1)*log2(7))))`
-/

namespace A399581.P14488087694834106052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (7 * Real.log (2 : ℝ) * ((⌈(n + 1 : ℝ) * Real.logb 2 (7 : ℝ)⌉ : ℝ) - (n + 1 : ℝ) * Real.logb 2 (7 : ℝ)))⌋

end

end A399581.P14488087694834106052

noncomputable section

/-- A399581: Upper bound for the smallest term of a cycle of the 7x+1 map with n odd terms: a(n) = floor(n/(7*log(2)*(ceiling(n*log_2(7)) - n*log_2(7)))).

Offset 1, canonical program `A399581.P14488087694834106052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399581 (n : ℕ) : ℤ :=
  A399581.P14488087694834106052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399779.P880496459967477716

`∑[ceil(∏{e}[2*(n+1), -floor(1/#)]/2)]+1`
-/

namespace A399779.P880496459967477716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋) : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A399779.P880496459967477716

noncomputable section

/-- A399779: Maximum size of a subset S of {1,...,n} such that x does not divide y*z for any x,y,z in S with x != y and x != z.

Offset 1, canonical program `A399779.P880496459967477716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A399779 (n : ℕ) : ℤ :=
  A399779.P880496459967477716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A399779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399862.P15886220389689248667

`row(n)-col(n)+T(n-2,k-1)` with `a(0)=0`
-/

namespace A399862.P15886220389689248667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + SequenceMachineLib.triUp2Left a n

end

end A399862.P15886220389689248667

noncomputable section

/-- A399862: Triangle read by rows: T(n,k) = binomial(n-k+1, 2) - [n-k+1 > k] * binomial(n-2*k+1, 2), k = 1..n, where brackets are Iverson.

Offset 1, canonical program `A399862.P15886220389689248667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399862 (n : ℕ) : ℤ :=
  A399862.P15886220389689248667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400891.P5500432230218377083

`lt[val(val(3*n+2, 2)+1, 2), 1]`
-/

namespace A400891.P5500432230218377083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.valuation (3 * n + 2) 2 + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A400891.P5500432230218377083

noncomputable section

/-- A400891: Numbers k such that the 2-adic valuation of 3*k+2 is even.

Offset 1, canonical program `A400891.P5500432230218377083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400891 (n : ℕ) : ℤ :=
  (A400891.P5500432230218377083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400897.P7569650421368593276

`2^(n-val(∑[n]+1, 2))`
-/

namespace A400897.P7569650421368593276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2 : ℤ) : ℤ)

end

end A400897.P7569650421368593276

noncomputable section

/-- A400897: a(n) = denominator(1 - (n^2 - n + 2)/2^n).

Offset 1, canonical program `A400897.P7569650421368593276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A400897 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400897.P7569650421368593276.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A400897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401030.P17939284489485883793

`1-T(n-1,k)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A401030.P17939284489485883793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triUp a n * SequenceMachineLib.triUpLeft a n

end

end A401030.P17939284489485883793

noncomputable section

/-- A401030: Triangle read by rows: T(n,0) = T(n,n) = 1, and T(n,k) = NAND(T(n-1,k-1), T(n-1,k)) for 0 < k < n, where NAND is the Boolean logic gate.

Offset 0, canonical program `A401030.P17939284489485883793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401030 (n : ℕ) : ℤ :=
  A401030.P17939284489485883793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401100.P2223803039464972030

`a(n-1)+floor(a(n-1)+(a(n-1)+1)/2)` with `a(0)=1`
-/

namespace A401100.P2223803039464972030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(a (n - 1) : ℚ) + (a (n - 1) + 1 : ℚ) / 2⌋

end

end A401100.P2223803039464972030

noncomputable section

/-- A401100: a(0) = 1, thereafter a(n+1) = ceiling(5*a(n)/2).

Offset 0, canonical program `A401100.P2223803039464972030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A401100 (n : ℕ) : ℤ :=
  A401100.P2223803039464972030.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. -/
def A401100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396236.P18402109175986010435

`and(1-n, n²)`
-/

namespace A396236.P18402109175986010435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (n ^ 2 : ℤ)

end

end A396236.P18402109175986010435

noncomputable section

/-- A396236: a(n) = n^2 AND NOT n.

Offset 0, canonical program `A396236.P18402109175986010435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396236 (n : ℕ) : ℤ :=
  A396236.P18402109175986010435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396236.provenance : SequenceMachineLib.Provenance := .conjectured

