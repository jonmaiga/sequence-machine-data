import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A038159.P7395219079931825342

`n*a(n-1)+1` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038159.P7395219079931825342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  n * a (n - 1) + 1

end

end A038159.P7395219079931825342

noncomputable section

/-- A038159: a(n) = n*a(n-1) + 1, a(0) = 2.

Offset 0, canonical program `A038159.P7395219079931825342`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+1` (program `A038159.P7395219079931825342`, by `A038159.P7395219079931825342.correct`). Lean does not check the parsing of the name. -/
def A038159 (n : ℕ) : ℤ :=
  (A038159.P7395219079931825342.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+1` (program `A038159.P7395219079931825342`, by `A038159.P7395219079931825342.correct`). Lean does not check the parsing of the name. -/
def A038159.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038507.P6297172410669872132

`n!+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038507.P6297172410669872132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

end

end A038507.P6297172410669872132

noncomputable section

/-- A038507: a(n) = n! + 1.

Offset 0, canonical program `A038507.P6297172410669872132`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+1` (program `A038507.P6297172410669872132`, by `A038507.P6297172410669872132.correct`). Lean does not check the parsing of the name. -/
def A038507 (n : ℕ) : ℤ :=
  (A038507.P6297172410669872132.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+1` (program `A038507.P6297172410669872132`, by `A038507.P6297172410669872132.correct`). Lean does not check the parsing of the name. -/
def A038507.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038608.P11893247063823867553

`n*(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038608.P11893247063823867553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

end

end A038608.P11893247063823867553

noncomputable section

/-- A038608: a(n) = n*(-1)^n.

Offset 0, canonical program `A038608.P11893247063823867553`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(-1)^n` (program `A038608.P11893247063823867553`, by `A038608.P11893247063823867553.correct`). Lean does not check the parsing of the name. -/
def A038608 (n : ℕ) : ℤ :=
  A038608.P11893247063823867553.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(-1)^n` (program `A038608.P11893247063823867553`, by `A038608.P11893247063823867553.correct`). Lean does not check the parsing of the name. -/
def A038608.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038707.P15747355094211523875

`floor(n*(n+1/2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038707.P15747355094211523875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (((n : ℚ) + (1 : ℚ) / 2) / 2)⌋

end

end A038707.P15747355094211523875

noncomputable section

/-- A038707: a(n) = floor(n*(n+1/2)/2).

Offset 0, canonical program `A038707.P15747355094211523875`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+1/2)/2)` (program `A038707.P15747355094211523875`, by `A038707.P15747355094211523875.correct`). Lean does not check the parsing of the name. -/
def A038707 (n : ℕ) : ℤ :=
  A038707.P15747355094211523875.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+1/2)/2)` (program `A038707.P15747355094211523875`, by `A038707.P15747355094211523875.correct`). Lean does not check the parsing of the name. -/
def A038707.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038709.P4416269651569794346

`floor(n*(n+1/2)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038709.P4416269651569794346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (((n : ℚ) + (1 : ℚ) / 2) / 4)⌋

end

end A038709.P4416269651569794346

noncomputable section

/-- A038709: a(n) = floor(n*(n+1/2)/4).

Offset 0, canonical program `A038709.P4416269651569794346`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+1/2)/4)` (program `A038709.P4416269651569794346`, by `A038709.P4416269651569794346.correct`). Lean does not check the parsing of the name. -/
def A038709 (n : ℕ) : ℤ :=
  A038709.P4416269651569794346.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(n+1/2)/4)` (program `A038709.P4416269651569794346`, by `A038709.P4416269651569794346.correct`). Lean does not check the parsing of the name. -/
def A038709.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038715.P4898977727383590326

`floor(n/4)*ceil((n+2)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038715.P4898977727383590326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * ⌈(n + 2 : ℚ) / 4⌉

end

end A038715.P4898977727383590326

noncomputable section

/-- A038715: a(n) = floor(n/4)*ceiling((n+2)/4).

Offset 0, canonical program `A038715.P4898977727383590326`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*ceil((n+2)/4)` (program `A038715.P4898977727383590326`, by `A038715.P4898977727383590326.correct`). Lean does not check the parsing of the name. -/
def A038715 (n : ℕ) : ℤ :=
  A038715.P4898977727383590326.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*ceil((n+2)/4)` (program `A038715.P4898977727383590326`, by `A038715.P4898977727383590326.correct`). Lean does not check the parsing of the name. -/
def A038715.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038716.P12711388585788164190

`floor(n/4)*ceil((n+3)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038716.P12711388585788164190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * ⌈(n + 3 : ℚ) / 4⌉

end

end A038716.P12711388585788164190

noncomputable section

/-- A038716: a(n) = floor(n/4)*ceiling((n+3)/4).

Offset 0, canonical program `A038716.P12711388585788164190`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*ceil((n+3)/4)` (program `A038716.P12711388585788164190`, by `A038716.P12711388585788164190.correct`). Lean does not check the parsing of the name. -/
def A038716 (n : ℕ) : ℤ :=
  A038716.P12711388585788164190.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/4)*ceil((n+3)/4)` (program `A038716.P12711388585788164190`, by `A038716.P12711388585788164190.correct`). Lean does not check the parsing of the name. -/
def A038716.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038723.P8027908001074795467

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038723.P8027908001074795467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 * a (n - 1) - a (n - 2)

end

end A038723.P8027908001074795467

noncomputable section

/-- A038723: a(n) = 6*a(n-1) - a(n-2), n >= 2, a(0)=1, a(1)=4.

Offset 0, canonical program `A038723.P8027908001074795467`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038723.P8027908001074795467`, by `A038723.P8027908001074795467.correct`). Lean does not check the parsing of the name. -/
def A038723 (n : ℕ) : ℤ :=
  A038723.P8027908001074795467.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038723.P8027908001074795467`, by `A038723.P8027908001074795467.correct`). Lean does not check the parsing of the name. -/
def A038723.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038725.P11328021704514278055

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038725.P11328021704514278055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 * a (n - 1) - a (n - 2)

end

end A038725.P11328021704514278055

noncomputable section

/-- A038725: a(n) = 6*a(n-1) - a(n-2), n >= 2, a(0)=1, a(1)=2.

Offset 0, canonical program `A038725.P11328021704514278055`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038725.P11328021704514278055`, by `A038725.P11328021704514278055.correct`). Lean does not check the parsing of the name. -/
def A038725 (n : ℕ) : ℤ :=
  A038725.P11328021704514278055.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038725.P11328021704514278055`, by `A038725.P11328021704514278055.correct`). Lean does not check the parsing of the name. -/
def A038725.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038761.P8696052964661000947

`6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038761.P8696052964661000947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  6 * a (n - 1) - a (n - 2)

end

end A038761.P8696052964661000947

noncomputable section

/-- A038761: a(n) = 6*a(n-1) - a(n-2), n >= 2, a(0)=1, a(1)=9.

Offset 0, canonical program `A038761.P8696052964661000947`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038761.P8696052964661000947`, by `A038761.P8696052964661000947.correct`). Lean does not check the parsing of the name. -/
def A038761 (n : ℕ) : ℤ :=
  A038761.P8696052964661000947.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038761.P8696052964661000947`, by `A038761.P8696052964661000947.correct`). Lean does not check the parsing of the name. -/
def A038761.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038762.P13220051109249100831

`6*a(n-1)-a(n-2)` with `a(0)=3, a(1)=13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038762.P13220051109249100831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13] fun n a =>
  6 * a (n - 1) - a (n - 2)

end

end A038762.P13220051109249100831

noncomputable section

/-- A038762: a(n) = 6*a(n-1) - a(n-2) for n >= 2, with a(0)=3, a(1)=13.

Offset 0, canonical program `A038762.P13220051109249100831`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038762.P13220051109249100831`, by `A038762.P13220051109249100831.correct`). Lean does not check the parsing of the name. -/
def A038762 (n : ℕ) : ℤ :=
  A038762.P13220051109249100831.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A038762.P13220051109249100831`, by `A038762.P13220051109249100831.correct`). Lean does not check the parsing of the name. -/
def A038762.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038867.P774279057618454838

`(n+5)^3-n^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038867.P774279057618454838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 5) ^ 3 : ℤ) - (n ^ 3 : ℤ)

end

end A038867.P774279057618454838

noncomputable section

/-- A038867: a(n) = (n+5)^3 - n^3.

Offset 0, canonical program `A038867.P774279057618454838`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)^3-n^3` (program `A038867.P774279057618454838`, by `A038867.P774279057618454838.correct`). Lean does not check the parsing of the name. -/
def A038867 (n : ℕ) : ℤ :=
  A038867.P774279057618454838.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+5)^3-n^3` (program `A038867.P774279057618454838`, by `A038867.P774279057618454838.correct`). Lean does not check the parsing of the name. -/
def A038867.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A045621.P8822809560474784251

`2^n-C(n, floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045621.P8822809560474784251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ)

end

end A045621.P8822809560474784251

noncomputable section

/-- A045621: a(n) = 2^n - binomial(n, floor(n/2)).

Offset 0, canonical program `A045621.P8822809560474784251`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-C(n, floor(n/2))` (program `A045621.P8822809560474784251`, by `A045621.P8822809560474784251.correct`). Lean does not check the parsing of the name. -/
def A045621 (n : ℕ) : ℤ :=
  A045621.P8822809560474784251.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-C(n, floor(n/2))` (program `A045621.P8822809560474784251`, by `A045621.P8822809560474784251.correct`). Lean does not check the parsing of the name. -/
def A045621.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A045944.P1947840734344051753

`n*(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045944.P1947840734344051753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 2)

end

end A045944.P1947840734344051753

noncomputable section

/-- A045944: Rhombic matchstick numbers: a(n) = n*(3*n+2).

Offset 0, canonical program `A045944.P1947840734344051753`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+2)` (program `A045944.P1947840734344051753`, by `A045944.P1947840734344051753.correct`). Lean does not check the parsing of the name. -/
def A045944 (n : ℕ) : ℤ :=
  (A045944.P1947840734344051753.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+2)` (program `A045944.P1947840734344051753`, by `A045944.P1947840734344051753.correct`). Lean does not check the parsing of the name. -/
def A045944.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A045945.P7202293701963207545

`3*n*(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A045945.P7202293701963207545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * (3 * n + 1))

end

end A045945.P7202293701963207545

noncomputable section

/-- A045945: Hexagonal matchstick numbers: a(n) = 3*n*(3*n+1).

Offset 0, canonical program `A045945.P7202293701963207545`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(3*n+1)` (program `A045945.P7202293701963207545`, by `A045945.P7202293701963207545.correct`). Lean does not check the parsing of the name. -/
def A045945 (n : ℕ) : ℤ :=
  (A045945.P7202293701963207545.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(3*n+1)` (program `A045945.P7202293701963207545`, by `A045945.P7202293701963207545.correct`). Lean does not check the parsing of the name. -/
def A045945.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046065.P8548137458240919049

`n^(n+2)-(n+2)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046065.P8548137458240919049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n + 2) : ℤ) - ((n + 2) ^ n : ℤ)

end

end A046065.P8548137458240919049

noncomputable section

/-- A046065: a(n) = n^(n+2) - (n+2)^n.

Offset 0, canonical program `A046065.P8548137458240919049`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)-(n+2)^n` (program `A046065.P8548137458240919049`, by `A046065.P8548137458240919049.correct`). Lean does not check the parsing of the name. -/
def A046065 (n : ℕ) : ℤ :=
  A046065.P8548137458240919049.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+2)-(n+2)^n` (program `A046065.P8548137458240919049`, by `A046065.P8548137458240919049.correct`). Lean does not check the parsing of the name. -/
def A046065.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046092.P16358276559204645418

`2*n*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046092.P16358276559204645418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (n + 1))

end

end A046092.P16358276559204645418

noncomputable section

/-- A046092: 4 times triangular numbers: a(n) = 2*n*(n+1).

Offset 0, canonical program `A046092.P16358276559204645418`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n+1)` (program `A046092.P16358276559204645418`, by `A046092.P16358276559204645418.correct`). Lean does not check the parsing of the name. -/
def A046092 (n : ℕ) : ℤ :=
  (A046092.P16358276559204645418.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n+1)` (program `A046092.P16358276559204645418`, by `A046092.P16358276559204645418.correct`). Lean does not check the parsing of the name. -/
def A046092.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046698.P7385547556069971027

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046698.P7385547556069971027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (n - 1)

end

end A046698.P7385547556069971027

noncomputable section

/-- A046698: a(0) = 0, a(1) = 1, a(n) = a(a(n-1)) + a(a(n-2)) if n > 1.

Offset 0, canonical program `A046698.P7385547556069971027`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)` (program `A046698.P7385547556069971027`, by `A046698.P7385547556069971027.correct`). Lean does not check the parsing of the name. -/
def A046698 (n : ℕ) : ℤ :=
  (A046698.P7385547556069971027.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)` (program `A046698.P7385547556069971027`, by `A046698.P7385547556069971027.correct`). Lean does not check the parsing of the name. -/
def A046698.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046717.P6816879839242327483

`2*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046717.P6816879839242327483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2)

end

end A046717.P6816879839242327483

noncomputable section

/-- A046717: a(n) = 2*a(n-1) + 3*a(n-2), a(0) = a(1) = 1.

Offset 0, canonical program `A046717.P6816879839242327483`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)` (program `A046717.P6816879839242327483`, by `A046717.P6816879839242327483.correct`). Lean does not check the parsing of the name. -/
def A046717 (n : ℕ) : ℤ :=
  (A046717.P6816879839242327483.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)` (program `A046717.P6816879839242327483`, by `A046717.P6816879839242327483.correct`). Lean does not check the parsing of the name. -/
def A046717.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046877.P6562189154896915264

`a(n-2)+a(n-3)` with `a(0)=3, a(1)=2, a(2)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046877.P6562189154896915264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 6] fun n a =>
  a (n - 2) + a (n - 3)

end

end A046877.P6562189154896915264

noncomputable section

/-- A046877: a(n) = a(n-2) + a(n-3), with a(0) = 3, a(1) = 2, a(2) = 6.

Offset 0, canonical program `A046877.P6562189154896915264`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A046877.P6562189154896915264`, by `A046877.P6562189154896915264.correct`). Lean does not check the parsing of the name. -/
def A046877 (n : ℕ) : ℤ :=
  (A046877.P6562189154896915264.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A046877.P6562189154896915264`, by `A046877.P6562189154896915264.correct`). Lean does not check the parsing of the name. -/
def A046877.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046916.P2495984086413320043

`n*2^n+2*n²+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046916.P2495984086413320043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n + 2 * n ^ 2 + 1

end

end A046916.P2495984086413320043

noncomputable section

/-- A046916: a(n) = n*2^n + 2*n^2 + 1.

Offset 0, canonical program `A046916.P2495984086413320043`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n+2*n²+1` (program `A046916.P2495984086413320043`, by `A046916.P2495984086413320043.correct`). Lean does not check the parsing of the name. -/
def A046916 (n : ℕ) : ℤ :=
  (A046916.P2495984086413320043.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n+2*n²+1` (program `A046916.P2495984086413320043`, by `A046916.P2495984086413320043.correct`). Lean does not check the parsing of the name. -/
def A046916.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A047053.P7600228685457433808

`4^n*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047053.P7600228685457433808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.factorial n

end

end A047053.P7600228685457433808

noncomputable section

/-- A047053: a(n) = 4^n * n!.

Offset 0, canonical program `A047053.P7600228685457433808`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*n!` (program `A047053.P7600228685457433808`, by `A047053.P7600228685457433808.correct`). Lean does not check the parsing of the name. -/
def A047053 (n : ℕ) : ℤ :=
  (A047053.P7600228685457433808.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*n!` (program `A047053.P7600228685457433808`, by `A047053.P7600228685457433808.correct`). Lean does not check the parsing of the name. -/
def A047053.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A047058.P4075058747115315762

`6^n*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A047058.P4075058747115315762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.factorial n

end

end A047058.P4075058747115315762

noncomputable section

/-- A047058: a(n) = 6^n * n!.

Offset 0, canonical program `A047058.P4075058747115315762`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n*n!` (program `A047058.P4075058747115315762`, by `A047058.P4075058747115315762.correct`). Lean does not check the parsing of the name. -/
def A047058 (n : ℕ) : ℤ :=
  (A047058.P4075058747115315762.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n*n!` (program `A047058.P4075058747115315762`, by `A047058.P4075058747115315762.correct`). Lean does not check the parsing of the name. -/
def A047058.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A037528.P12890940162953796820

`3*a(n-1)+a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=14, a(3)=43`
-/

namespace A037528.P12890940162953796820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 14, 43] fun n a =>
  3 * a (n - 1) + a (n - 3) - 3 * a (n - 4)

end

end A037528.P12890940162953796820

noncomputable section

/-- A037528: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

Offset 1, canonical program `A037528.P12890940162953796820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037528 (n : ℕ) : ℤ :=
  A037528.P12890940162953796820.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037545.P15835810236773892591

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=6, a(2)=26, a(3)=105`
-/

namespace A037545.P15835810236773892591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 26, 105] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037545.P15835810236773892591

noncomputable section

/-- A037545: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

Offset 1, canonical program `A037545.P15835810236773892591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037545 (n : ℕ) : ℤ :=
  A037545.P15835810236773892591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037576.P5685270924494020356

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=7, a(2)=29`
-/

namespace A037576.P5685270924494020356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 29] fun n a =>
  4 * a (n - 1) + a (n - 2) - 4 * a (n - 3)

end

end A037576.P5685270924494020356

noncomputable section

/-- A037576: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

Offset 1, canonical program `A037576.P5685270924494020356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037576 (n : ℕ) : ℤ :=
  A037576.P5685270924494020356.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037577.P10906528410571572209

`5*a(n-1)+a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=8, a(2)=41`
-/

namespace A037577.P10906528410571572209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 41] fun n a =>
  5 * a (n - 1) + a (n - 2) - 5 * a (n - 3)

end

end A037577.P10906528410571572209

noncomputable section

/-- A037577: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

Offset 1, canonical program `A037577.P10906528410571572209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037577 (n : ℕ) : ℤ :=
  A037577.P10906528410571572209.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037578.P9240005201318235116

`5*a(n-1)+6*a(n-2)+4` with `a(0)=1, a(1)=9`
-/

namespace A037578.P9240005201318235116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  5 * a (n - 1) + 6 * a (n - 2) + 4

end

end A037578.P9240005201318235116

noncomputable section

/-- A037578: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

Offset 1, canonical program `A037578.P9240005201318235116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037578 (n : ℕ) : ℤ :=
  (A037578.P9240005201318235116.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037579.P13563933408940017249

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=10, a(2)=71`
-/

namespace A037579.P13563933408940017249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 71] fun n a =>
  7 * a (n - 1) + a (n - 2) - 7 * a (n - 3)

end

end A037579.P13563933408940017249

noncomputable section

/-- A037579: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

Offset 1, canonical program `A037579.P13563933408940017249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037579 (n : ℕ) : ℤ :=
  A037579.P13563933408940017249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037580.P10009804092643224287

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=11, a(2)=89`
-/

namespace A037580.P10009804092643224287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 89] fun n a =>
  8 * a (n - 1) + a (n - 2) - 8 * a (n - 3)

end

end A037580.P10009804092643224287

noncomputable section

/-- A037580: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

Offset 1, canonical program `A037580.P10009804092643224287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037580 (n : ℕ) : ℤ :=
  A037580.P10009804092643224287.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037581.P15361479118992760601

`9*a(n-1)+a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=12, a(2)=109`
-/

namespace A037581.P15361479118992760601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 109] fun n a =>
  9 * a (n - 1) + a (n - 2) - 9 * a (n - 3)

end

end A037581.P15361479118992760601

noncomputable section

/-- A037581: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3.

Offset 1, canonical program `A037581.P15361479118992760601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037581 (n : ℕ) : ℤ :=
  A037581.P15361479118992760601.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037586.P8358678303179197973

`7*a(n-1)+a(n-2)-7*a(n-3)` with `a(0)=3, a(1)=22, a(2)=157`
-/

namespace A037586.P8358678303179197973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 22, 157] fun n a =>
  7 * a (n - 1) + a (n - 2) - 7 * a (n - 3)

end

end A037586.P8358678303179197973

noncomputable section

/-- A037586: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

Offset 1, canonical program `A037586.P8358678303179197973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037586 (n : ℕ) : ℤ :=
  A037586.P8358678303179197973.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037593.P3631625781884842671

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=7, a(2)=52, a(3)=365`
-/

namespace A037593.P3631625781884842671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 52, 365] fun n a =>
  7 * a (n - 1) + a (n - 3) - 7 * a (n - 4)

end

end A037593.P3631625781884842671

noncomputable section

/-- A037593: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

Offset 1, canonical program `A037593.P3631625781884842671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037593 (n : ℕ) : ℤ :=
  A037593.P3631625781884842671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037597.P15942085299224867304

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=7, a(2)=28, a(3)=113`
-/

namespace A037597.P15942085299224867304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 28, 113] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037597.P15942085299224867304

noncomputable section

/-- A037597: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

Offset 1, canonical program `A037597.P15942085299224867304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037597 (n : ℕ) : ℤ :=
  A037597.P15942085299224867304.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037604.P9552812687882311232

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=6, a(2)=27, a(3)=109`
-/

namespace A037604.P9552812687882311232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 27, 109] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037604.P9552812687882311232

noncomputable section

/-- A037604: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

Offset 1, canonical program `A037604.P9552812687882311232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037604 (n : ℕ) : ℤ :=
  A037604.P9552812687882311232.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037608.P3172134688616158549

`8*a(n-1)+a(n-3)-8*a(n-4)` with `a(0)=1, a(1)=10, a(2)=83, a(3)=665`
-/

namespace A037608.P3172134688616158549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 83, 665] fun n a =>
  8 * a (n - 1) + a (n - 3) - 8 * a (n - 4)

end

end A037608.P3172134688616158549

noncomputable section

/-- A037608: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

Offset 1, canonical program `A037608.P3172134688616158549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037608 (n : ℕ) : ℤ :=
  A037608.P3172134688616158549.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037616.P2789638312819498099

`9*a(n-1)+a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=12, a(2)=110, a(3)=991`
-/

namespace A037616.P2789638312819498099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 110, 991] fun n a =>
  9 * a (n - 1) + a (n - 3) - 9 * a (n - 4)

end

end A037616.P2789638312819498099

noncomputable section

/-- A037616: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

Offset 1, canonical program `A037616.P2789638312819498099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037616 (n : ℕ) : ℤ :=
  A037616.P2789638312819498099.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037632.P15028626328816743045

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=9, a(2)=39, a(3)=158`
-/

namespace A037632.P15028626328816743045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9, 39, 158] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037632.P15028626328816743045

noncomputable section

/-- A037632: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

Offset 1, canonical program `A037632.P15028626328816743045`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037632 (n : ℕ) : ℤ :=
  A037632.P15028626328816743045.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037639.P8185927116418185793

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=11, a(2)=45, a(3)=182`
-/

namespace A037639.P8185927116418185793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11, 45, 182] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037639.P8185927116418185793

noncomputable section

/-- A037639: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

Offset 1, canonical program `A037639.P8185927116418185793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037639 (n : ℕ) : ℤ :=
  A037639.P8185927116418185793.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037639.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037660.P13941213720165980682

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=3, a(1)=13, a(2)=52, a(3)=211`
-/

namespace A037660.P13941213720165980682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13, 52, 211] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A037660.P13941213720165980682

noncomputable section

/-- A037660: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

Offset 1, canonical program `A037660.P13941213720165980682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037660 (n : ℕ) : ℤ :=
  A037660.P13941213720165980682.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037661.P2623140632495811862

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=3, a(1)=16, a(2)=80, a(3)=403`
-/

namespace A037661.P2623140632495811862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16, 80, 403] fun n a =>
  5 * a (n - 1) + a (n - 3) - 5 * a (n - 4)

end

end A037661.P2623140632495811862

noncomputable section

/-- A037661: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

Offset 1, canonical program `A037661.P2623140632495811862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037661 (n : ℕ) : ℤ :=
  A037661.P2623140632495811862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037677.P748078075638042481

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=7, a(2)=51, a(3)=360`
-/

namespace A037677.P748078075638042481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 51, 360] fun n a =>
  8 * a (n - 1) - 8 * a (n - 2) + 8 * a (n - 3) - 7 * a (n - 4)

end

end A037677.P748078075638042481

noncomputable section

/-- A037677: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

Offset 1, canonical program `A037677.P748078075638042481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037677 (n : ℕ) : ℤ :=
  A037677.P748078075638042481.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037710.P6721493881183264277

`6*a(n-1)-6*a(n-2)+6*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=8, a(2)=42, a(3)=210`
-/

namespace A037710.P6721493881183264277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 42, 210] fun n a =>
  6 * a (n - 1) - 6 * a (n - 2) + 6 * a (n - 3) - 5 * a (n - 4)

end

end A037710.P6721493881183264277

noncomputable section

/-- A037710: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

Offset 1, canonical program `A037710.P6721493881183264277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037710 (n : ℕ) : ℤ :=
  A037710.P6721493881183264277.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037710.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037712.P2492734325855298356

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=10, a(2)=72, a(3)=504`
-/

namespace A037712.P2492734325855298356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 72, 504] fun n a =>
  8 * a (n - 1) - 8 * a (n - 2) + 8 * a (n - 3) - 7 * a (n - 4)

end

end A037712.P2492734325855298356

noncomputable section

/-- A037712: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

Offset 1, canonical program `A037712.P2492734325855298356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037712 (n : ℕ) : ℤ :=
  A037712.P2492734325855298356.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037714.P2051866495972747522

`10*a(n-1)-10*a(n-2)+10*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=12, a(2)=110, a(3)=990`
-/

namespace A037714.P2051866495972747522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 110, 990] fun n a =>
  10 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 9 * a (n - 4)

end

end A037714.P2051866495972747522

noncomputable section

/-- A037714: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

Offset 1, canonical program `A037714.P2051866495972747522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037714 (n : ℕ) : ℤ :=
  A037714.P2051866495972747522.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037719.P11049252179318265615

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=2, a(1)=14, a(2)=99, a(3)=696`
-/

namespace A037719.P11049252179318265615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 14, 99, 696] fun n a =>
  8 * a (n - 1) - 8 * a (n - 2) + 8 * a (n - 3) - 7 * a (n - 4)

end

end A037719.P11049252179318265615

noncomputable section

/-- A037719: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

Offset 1, canonical program `A037719.P11049252179318265615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037719 (n : ℕ) : ℤ :=
  A037719.P11049252179318265615.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037737.P8859717325163940023

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=2, a(1)=9, a(2)=39, a(3)=156, a(4)=626`
-/

namespace A037737.P8859717325163940023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9, 39, 156, 626] fun n a =>
  4 * a (n - 1) + a (n - 4) - 4 * a (n - 5)

end

end A037737.P8859717325163940023

noncomputable section

/-- A037737: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

Offset 1, canonical program `A037737.P8859717325163940023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037737 (n : ℕ) : ℤ :=
  A037737.P8859717325163940023.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037737.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037744.P2303553604766487134

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=2, a(1)=11, a(2)=44, a(3)=177, a(4)=710`
-/

namespace A037744.P2303553604766487134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11, 44, 177, 710] fun n a =>
  4 * a (n - 1) + a (n - 4) - 4 * a (n - 5)

end

end A037744.P2303553604766487134

noncomputable section

/-- A037744: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

Offset 1, canonical program `A037744.P2303553604766487134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037744 (n : ℕ) : ℤ :=
  A037744.P2303553604766487134.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037754.P17162124263066232591

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=2, a(1)=17, a(2)=120, a(3)=840`
-/

namespace A037754.P17162124263066232591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 17, 120, 840] fun n a =>
  8 * a (n - 1) - 8 * a (n - 2) + 8 * a (n - 3) - 7 * a (n - 4)

end

end A037754.P17162124263066232591

noncomputable section

/-- A037754: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

Offset 1, canonical program `A037754.P17162124263066232591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037754 (n : ℕ) : ℤ :=
  A037754.P17162124263066232591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037765.P14365841650636542087

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=3, a(1)=12, a(2)=50, a(3)=201, a(4)=807`
-/

namespace A037765.P14365841650636542087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 50, 201, 807] fun n a =>
  4 * a (n - 1) + a (n - 4) - 4 * a (n - 5)

end

end A037765.P14365841650636542087

noncomputable section

/-- A037765: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

Offset 1, canonical program `A037765.P14365841650636542087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037765 (n : ℕ) : ℤ :=
  A037765.P14365841650636542087.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037787.P4328001275724265141

`6*a(n-1)-6*a(n-2)+6*a(n-3)-5*a(n-4)` with `a(0)=3, a(1)=17, a(2)=85, a(3)=426`
-/

namespace A037787.P4328001275724265141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17, 85, 426] fun n a =>
  6 * a (n - 1) - 6 * a (n - 2) + 6 * a (n - 3) - 5 * a (n - 4)

end

end A037787.P4328001275724265141

noncomputable section

/-- A037787: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

Offset 1, canonical program `A037787.P4328001275724265141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037787 (n : ℕ) : ℤ :=
  A037787.P4328001275724265141.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037793.P10001142084473908104

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=3, a(1)=14, a(2)=57, a(3)=228, a(4)=915`
-/

namespace A037793.P10001142084473908104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14, 57, 228, 915] fun n a =>
  4 * a (n - 1) + a (n - 4) - 4 * a (n - 5)

end

end A037793.P10001142084473908104

noncomputable section

/-- A037793: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

Offset 1, canonical program `A037793.P10001142084473908104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037793 (n : ℕ) : ℤ :=
  A037793.P10001142084473908104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037915.P14753030576962393052

`1+floor(3*n/4)`
-/

namespace A037915.P14753030576962393052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊3 * ((n : ℚ) / 4)⌋

end

end A037915.P14753030576962393052

noncomputable section

/-- A037915: a(n) = floor((3*n + 4)/4).

Offset 0, canonical program `A037915.P14753030576962393052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037915 (n : ℕ) : ℤ :=
  A037915.P14753030576962393052.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037960.P6963042050970917051

`(n+2)!*n*(3*n+1)/24`
-/

namespace A037960.P6963042050970917051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℚ) * ((n : ℚ) * ((3 * n + 1 : ℚ) / 24))

end

end A037960.P6963042050970917051

noncomputable section

/-- A037960: a(n) = n*(3*n+1)*(n+2)!/24.

Offset 0, canonical program `A037960.P6963042050970917051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037960 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037960.P6963042050970917051.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037961.P9896459500425907776

`(n+3)!*n²*(n+1)/48`
-/

namespace A037961.P9896459500425907776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) * n ^ 2 : ℚ) * ((n + 1 : ℚ) / 48)

end

end A037961.P9896459500425907776

noncomputable section

/-- A037961: a(n) = n^2*(n+1)*(n+3)!/48.

Offset 0, canonical program `A037961.P9896459500425907776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037961 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A037961.P9896459500425907776.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A037961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038121.P17072372122805013730

`(2*n+6)!/(720*n!*2^n)`
-/

namespace A038121.P17072372122805013730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 6) : ℚ) / (720 * Nat.factorial n * 2 ^ n : ℚ)

end

end A038121.P17072372122805013730

noncomputable section

/-- A038121: E.g.f.: (1 + 15*x + (45/2)*x^2 + (5/2)*x^3)/(1 - 2*x)^(13/2).

Offset 0, canonical program `A038121.P17072372122805013730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038121 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038121.P17072372122805013730.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038126.P5925659011616701297

`floor(sqrt(2*π)*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038126.P5925659011616701297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 * Real.pi) * (n : ℝ)⌋

end

end A038126.P5925659011616701297

noncomputable section

/-- A038126: a(n) = floor( sqrt(2*Pi)*n ) (a Beatty sequence).

Offset 0, canonical program `A038126.P5925659011616701297`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*π)*n)` (program `A038126.P5925659011616701297`, by `A038126.P5925659011616701297.correct`). Lean does not check the parsing of the name. -/
def A038126 (n : ℕ) : ℤ :=
  A038126.P5925659011616701297.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*π)*n)` (program `A038126.P5925659011616701297`, by `A038126.P5925659011616701297.correct`). Lean does not check the parsing of the name. -/
def A038126.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038127.P10985957264864675778

`floor(n*2^sqrt(2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038127.P10985957264864675778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (2 : ℝ) ^ (Real.sqrt (2 : ℝ))⌋

end

end A038127.P10985957264864675778

noncomputable section

/-- A038127: A Beatty sequence: a(n) = floor(n*2^sqrt(2)).

Offset 0, canonical program `A038127.P10985957264864675778`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*2^sqrt(2))` (program `A038127.P10985957264864675778`, by `A038127.P10985957264864675778.correct`). Lean does not check the parsing of the name. -/
def A038127 (n : ℕ) : ℤ :=
  A038127.P10985957264864675778.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*2^sqrt(2))` (program `A038127.P10985957264864675778`, by `A038127.P10985957264864675778.correct`). Lean does not check the parsing of the name. -/
def A038127.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038128.P9008543754766549743

`floor(n*γ)`
-/

namespace A038128.P9008543754766549743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.eulerMascheroniConstant⌋

end

end A038128.P9008543754766549743

noncomputable section

/-- A038128: Beatty sequence for Euler's constant (A001620).

Offset 0, canonical program `A038128.P9008543754766549743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038128 (n : ℕ) : ℤ :=
  A038128.P9008543754766549743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038129.P8954428659597837511

`floor(n*2^(1/3))`
-/

namespace A038129.P8954428659597837511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋

end

end A038129.P8954428659597837511

noncomputable section

/-- A038129: Beatty sequence for cube root of 2.

Offset 0, canonical program `A038129.P8954428659597837511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038129 (n : ℕ) : ℤ :=
  A038129.P8954428659597837511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038130.P3485467660837571552

`floor(2*π*n)`
-/

namespace A038130.P3485467660837571552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.pi * (n : ℝ))⌋

end

end A038130.P3485467660837571552

noncomputable section

/-- A038130: Beatty sequence for 2*Pi.

Offset 0, canonical program `A038130.P3485467660837571552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038130 (n : ℕ) : ℤ :=
  A038130.P3485467660837571552.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038154.P17025590308550529256

`n*a(n-1)+n*(n-1)` with `a(0)=0`
-/

namespace A038154.P17025590308550529256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) * ((n : ℤ) - 1)

end

end A038154.P17025590308550529256

noncomputable section

/-- A038154: a(n) = n! * Sum_{k=0..n-2} 1/k!.

Offset 0, canonical program `A038154.P17025590308550529256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038154 (n : ℕ) : ℤ :=
  A038154.P17025590308550529256.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038156.P11875490933176681779

`n*(a(n-1)+1)` with `a(0)=0, a(1)=0`
-/

namespace A038156.P11875490933176681779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  n * (a (n - 1) + 1)

end

end A038156.P11875490933176681779

noncomputable section

/-- A038156: a(n) = n! * Sum_{k=1..n-1} 1/k!.

Offset 0, canonical program `A038156.P11875490933176681779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038156 (n : ℕ) : ℤ :=
  (A038156.P11875490933176681779.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038196.P11643554112437182655

`2*a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`
-/

namespace A038196.P11643554112437182655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 5] fun n a =>
  2 * a (n - 2) + a (n - 4) - a (n - 6)

end

end A038196.P11643554112437182655

noncomputable section

/-- A038196: 3-wave sequence starting with 1, 1, 1.

Offset 0, canonical program `A038196.P11643554112437182655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038196 (n : ℕ) : ℤ :=
  A038196.P11643554112437182655.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038205.P2077239952391614598

`(n-1)*a(n-1)+(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A038205.P2077239952391614598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3))

end

end A038205.P2077239952391614598

noncomputable section

/-- A038205: Number of derangements of n where minimal cycle size is at least 3.

Offset 0, canonical program `A038205.P2077239952391614598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038205 (n : ℕ) : ℤ :=
  A038205.P2077239952391614598.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038235.P17635700741880459798

`10*a(n-1)-15*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=85, a(3)=707`
-/

namespace A038235.P17635700741880459798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 85, 707] fun n a =>
  10 * a (n - 1) - 15 * a (n - 2) + 7 * a (n - 3) - a (n - 4)

end

end A038235.P17635700741880459798

noncomputable section

/-- A038235: Bottom line of 4-wave sequence A038197, also bisection of A006357.

Offset 0, canonical program `A038235.P17635700741880459798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038235 (n : ℕ) : ℤ :=
  A038235.P17635700741880459798.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038342.P6399310212395469356

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=41, a(4)=146`
-/

namespace A038342.P6399310212395469356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 12, 41, 146] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 4 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A038342.P6399310212395469356

noncomputable section

/-- A038342: G.f.: 1/(1 - 3 x - 3 x^2 + 4 x^3 + x^4 - x^5).

Offset 0, canonical program `A038342.P6399310212395469356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038342 (n : ℕ) : ℤ :=
  A038342.P6399310212395469356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038376.P8537194513897774213

`n*(n-3)*(2*n²-3*(-1)^n-5)/96`
-/

namespace A038376.P8537194513897774213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 3 : ℚ) * (((2 * n ^ 2 : ℤ) - 3 * (-1) ^ n - 5 : ℚ) / 96))

end

end A038376.P8537194513897774213

noncomputable section

/-- A038376: a(n) = (n-3)*A006918(n-2)/2 for n >= 2, with a(0) = a(1) = 0.

Offset 0, canonical program `A038376.P8537194513897774213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038376 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038376.P8537194513897774213.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038503.P6100478724578909006

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A038503.P6100478724578909006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3)

end

end A038503.P6100478724578909006

noncomputable section

/-- A038503: Sum of every 4th entry of row n in Pascal's triangle, starting at "n choose 0".

Offset 0, canonical program `A038503.P6100478724578909006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038503 (n : ℕ) : ℤ :=
  A038503.P6100478724578909006.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038504.P339107708639265369

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A038504.P339107708639265369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3)

end

end A038504.P339107708639265369

noncomputable section

/-- A038504: Sum of every 4th entry of row n in Pascal's triangle, starting at "n choose 1".

Offset 0, canonical program `A038504.P339107708639265369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038504 (n : ℕ) : ℤ :=
  A038504.P339107708639265369.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038505.P15386344615957042470

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A038505.P15386344615957042470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3)

end

end A038505.P15386344615957042470

noncomputable section

/-- A038505: Sum of every 4th entry of row n in Pascal's triangle, starting at binomial(n,2).

Offset 0, canonical program `A038505.P15386344615957042470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038505 (n : ℕ) : ℤ :=
  A038505.P15386344615957042470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038508.P8474496301089087671

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A038508.P8474496301089087671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 4 * a (n - 3)

end

end A038508.P8474496301089087671

noncomputable section

/-- A038508: Expansion of (1-2*x-x^2)/((1-2*x)*(1-2*x+2*x^2)).

Offset 0, canonical program `A038508.P8474496301089087671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038508 (n : ℕ) : ℤ :=
  A038508.P8474496301089087671.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038518.P15128670911872601038

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A038518.P15128670911872601038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3)

end

end A038518.P15128670911872601038

noncomputable section

/-- A038518: Number of elements of GF(2^n) with trace 0 and subtrace 0.

Offset 0, canonical program `A038518.P15128670911872601038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038518 (n : ℕ) : ℤ :=
  (A038518.P15128670911872601038.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038519.P16051754133522929450

`2*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A038519.P16051754133522929450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 3] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3)

end

end A038519.P16051754133522929450

noncomputable section

/-- A038519: Number of elements of GF(2^n) with trace 0 and subtrace 1.

Offset 0, canonical program `A038519.P16051754133522929450`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038519 (n : ℕ) : ℤ :=
  (A038519.P16051754133522929450.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038520.P4836941786753717559

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A038520.P4836941786753717559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 3] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3)

end

end A038520.P4836941786753717559

noncomputable section

/-- A038520: Number of elements of GF(2^n) with trace 1 and subtrace 0.

Offset 0, canonical program `A038520.P4836941786753717559`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038520 (n : ℕ) : ℤ :=
  (A038520.P4836941786753717559.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038521.P3204574119109807193

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A038521.P3204574119109807193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3)

end

end A038521.P3204574119109807193

noncomputable section

/-- A038521: Number of elements of GF(2^n) with trace 1 and subtrace 1.

Offset 0, canonical program `A038521.P3204574119109807193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038521 (n : ℕ) : ℤ :=
  (A038521.P3204574119109807193.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038712.P3404197303190209645

`xor(n+1, n)`
-/

namespace A038712.P3404197303190209645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) n

end

end A038712.P3404197303190209645

noncomputable section

/-- A038712: Let k be the exponent of highest power of 2 dividing n (A007814); a(n) = 2^(k+1)-1.

Offset 1, canonical program `A038712.P3404197303190209645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038712 (n : ℕ) : ℤ :=
  (A038712.P3404197303190209645.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038714.P8481970847758463474

`floor(n/4)*(floor(n/4)+1)`
-/

namespace A038714.P8481970847758463474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋ * (⌊(n : ℚ) / 4⌋ + 1)

end

end A038714.P8481970847758463474

noncomputable section

/-- A038714: Pronic numbers repeated 4 times; a(n) = floor(n/4) * ceiling((n+1)/4).

Offset 0, canonical program `A038714.P8481970847758463474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038714 (n : ℕ) : ℤ :=
  A038714.P8481970847758463474.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038718.P5241560716220405868

`a(n-1)+a(n-3)+1` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A038718.P5241560716220405868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + a (n - 3) + 1

end

end A038718.P5241560716220405868

noncomputable section

/-- A038718: Number of permutations P of {1,2,...,n} such that P(1)=1 and |P^-1(i+1)-P^-1(i)| equals 1 or 2 for i=1,2,...,n-1.

Offset 1, canonical program `A038718.P5241560716220405868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038718 (n : ℕ) : ℤ :=
  (A038718.P5241560716220405868.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038731.P6700874595404502670

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=32`
-/

namespace A038731.P6700874595404502670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 32] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A038731.P6700874595404502670

noncomputable section

/-- A038731: Number of columns in all directed column-convex polyominoes of area n+1.

Offset 0, canonical program `A038731.P6700874595404502670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038731 (n : ℕ) : ℤ :=
  A038731.P6700874595404502670.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038754.P13322389225864494282

`3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A038754.P13322389225864494282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  3 * a (n - 2)

end

end A038754.P13322389225864494282

noncomputable section

/-- A038754: a(2n) = 3^n, a(2n+1) = 2*3^n.

Offset 0, canonical program `A038754.P13322389225864494282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038754 (n : ℕ) : ℤ :=
  (A038754.P13322389225864494282.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038759.P4328138862900684480

`ceil(sqrt(n))*floor(sqrt(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038759.P4328138862900684480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ * (Nat.sqrt n : ℤ)

end

end A038759.P4328138862900684480

noncomputable section

/-- A038759: a(n) = ceiling(sqrt(n))*floor(sqrt(n)).

Offset 0, canonical program `A038759.P4328138862900684480`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n))*floor(sqrt(n))` (program `A038759.P4328138862900684480`, by `A038759.P4328138862900684480.correct`). Lean does not check the parsing of the name. -/
def A038759 (n : ℕ) : ℤ :=
  A038759.P4328138862900684480.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n))*floor(sqrt(n))` (program `A038759.P4328138862900684480`, by `A038759.P4328138862900684480.correct`). Lean does not check the parsing of the name. -/
def A038759.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A038764.P6958019627258934739

`n*(9*n+3)/2+1`
-/

namespace A038764.P6958019627258934739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((9 * n + 3 : ℚ) / 2) + 1

end

end A038764.P6958019627258934739

noncomputable section

/-- A038764: a(n) = (9*n^2 + 3*n + 2)/2.

Offset 0, canonical program `A038764.P6958019627258934739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038764 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038764.P6958019627258934739.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038764.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038765.P10375169158108185938

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A038765.P10375169158108185938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A038765.P10375169158108185938

noncomputable section

/-- A038765: Next-to-last diagonal of A024462.

Offset 0, canonical program `A038765.P10375169158108185938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038765 (n : ℕ) : ℤ :=
  A038765.P10375169158108185938.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038845.P2930505188465265214

`(n+2)*(n+1)*2^(2*n-1)`
-/

namespace A038845.P2930505188465265214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 1 : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ))

end

end A038845.P2930505188465265214

noncomputable section

/-- A038845: 3-fold convolution of A000302 (powers of 4).

Offset 0, canonical program `A038845.P2930505188465265214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038845 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038845.P2930505188465265214.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038865.P1207257785646135915

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=63, a(1)=117, a(2)=189`
-/

namespace A038865.P1207257785646135915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [63, 117, 189] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A038865.P1207257785646135915

noncomputable section

/-- A038865: a(n) = (n+3)^3 - n^3.

Offset 1, canonical program `A038865.P1207257785646135915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038865 (n : ℕ) : ℤ :=
  A038865.P1207257785646135915.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038866.P18217705818519501983

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=124, a(1)=208, a(2)=316`
-/

namespace A038866.P18217705818519501983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [124, 208, 316] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A038866.P18217705818519501983

noncomputable section

/-- A038866: a(n) = (n+4)^3 - n^3.

Offset 1, canonical program `A038866.P18217705818519501983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038866 (n : ℕ) : ℤ :=
  A038866.P18217705818519501983.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038989.P3584729660369376524

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`
-/

namespace A038989.P3584729660369376524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 14] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A038989.P3584729660369376524

noncomputable section

/-- A038989: Expansion of (1 - x^2 - 2*x^3) / (1 - 2*x - 2*x^2 - 2*x^3 + x^4).

Offset 0, canonical program `A038989.P3584729660369376524`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038989 (n : ℕ) : ℤ :=
  A038989.P3584729660369376524.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038990.P1272779770572636812

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`
-/

namespace A038990.P1272779770572636812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 14] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3) + a (n - 4)

end

end A038990.P1272779770572636812

noncomputable section

/-- A038990: Expansion of (1-x-x^2+2*x^3) / ((1-x)*(1+x)*(1-3*x+x^2)).

Offset 0, canonical program `A038990.P1272779770572636812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038990 (n : ℕ) : ℤ :=
  A038990.P1272779770572636812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039300.P12812337894662455855

`2*a(n-1)+3*a(n-2)-3` with `a(0)=1, a(1)=2`
-/

namespace A039300.P12812337894662455855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 3

end

end A039300.P12812337894662455855

noncomputable section

/-- A039300: Number of distinct quadratic residues mod 3^n.

Offset 0, canonical program `A039300.P12812337894662455855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039300 (n : ℕ) : ℤ :=
  A039300.P12812337894662455855.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039301.P3691708098096914838

`floor((4^n+10)/6)`
-/

namespace A039301.P3691708098096914838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n + 10 : ℚ) / 6⌋

end

end A039301.P3691708098096914838

noncomputable section

/-- A039301: Number of distinct quadratic residues mod 4^n.

Offset 0, canonical program `A039301.P3691708098096914838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039301 (n : ℕ) : ℤ :=
  A039301.P3691708098096914838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039302.P3486903712410026818

`floor((5^n+3)*5/12)`
-/

namespace A039302.P3486903712410026818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n + 3 : ℚ) * ((5 : ℚ) / 12)⌋

end

end A039302.P3486903712410026818

noncomputable section

/-- A039302: Number of distinct quadratic residues mod 5^n.

Offset 0, canonical program `A039302.P3486903712410026818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039302 (n : ℕ) : ℤ :=
  A039302.P3486903712410026818.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039304.P4127415863129902853

`floor((7^n+3)*7/16)`
-/

namespace A039304.P4127415863129902853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 ^ n + 3 : ℚ) * ((7 : ℚ) / 16)⌋

end

end A039304.P4127415863129902853

noncomputable section

/-- A039304: Number of distinct quadratic residues mod 7^n.

Offset 0, canonical program `A039304.P4127415863129902853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039304 (n : ℕ) : ℤ :=
  A039304.P4127415863129902853.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039305.P765320621189067048

`8*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=87`
-/

namespace A039305.P765320621189067048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 12, 87] fun n a =>
  8 * a (n - 1) + a (n - 2) - 8 * a (n - 3)

end

end A039305.P765320621189067048

noncomputable section

/-- A039305: Number of distinct quadratic residues mod 8^n.

Offset 0, canonical program `A039305.P765320621189067048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039305 (n : ℕ) : ℤ :=
  A039305.P765320621189067048.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039305.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039306.P11443132609755346583

`9*a(n-1)+a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=4, a(2)=31`
-/

namespace A039306.P11443132609755346583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 31] fun n a =>
  9 * a (n - 1) + a (n - 2) - 9 * a (n - 3)

end

end A039306.P11443132609755346583

noncomputable section

/-- A039306: Number of distinct quadratic residues mod 9^n.

Offset 0, canonical program `A039306.P11443132609755346583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039306 (n : ℕ) : ℤ :=
  A039306.P11443132609755346583.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039623.P6910103237488683780

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=27, a(3)=76, a(4)=175`
-/

namespace A039623.P6910103237488683780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 27, 76, 175] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A039623.P6910103237488683780

noncomputable section

/-- A039623: a(n) = n^2*(n^2+3)/4.

Offset 1, canonical program `A039623.P6910103237488683780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039623 (n : ℕ) : ℤ :=
  A039623.P6910103237488683780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039717.P17407296395431737761

`5*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A039717.P17407296395431737761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2)

end

end A039717.P17407296395431737761

noncomputable section

/-- A039717: Row sums of convolution triangle A030523.

Offset 1, canonical program `A039717.P17407296395431737761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039717 (n : ℕ) : ℤ :=
  A039717.P17407296395431737761.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039720.P10897226497482615980

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=6, a(1)=8, a(2)=30, a(3)=24, a(4)=70, a(5)=48`
-/

namespace A039720.P10897226497482615980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 8, 30, 24, 70, 48] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A039720.P10897226497482615980

noncomputable section

/-- A039720: Period of n-countdown club-passing juggling pattern.

Offset 2, canonical program `A039720.P10897226497482615980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039720 (n : ℕ) : ℤ :=
  A039720.P10897226497482615980.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039823.P6780687495506006634

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A039823.P6780687495506006634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6, 8] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A039823.P6780687495506006634

noncomputable section

/-- A039823: a(n) = ceiling((n^2 + n + 2)/4).

Offset 1, canonical program `A039823.P6780687495506006634`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039823 (n : ℕ) : ℤ :=
  A039823.P6780687495506006634.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039824.P1843734589319922015

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=20, a(5)=31, a(6)=46, a(7)=61, a(8)=78`
-/

namespace A039824.P1843734589319922015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 11, 20, 31, 46, 61, 78] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A039824.P1843734589319922015

noncomputable section

/-- A039824: Number of different coefficient values in expansion of Product (1+q^1+q^3...+q^(2i-1)), i=1 to n.

Offset 1, canonical program `A039824.P1843734589319922015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039824 (n : ℕ) : ℤ :=
  A039824.P1843734589319922015.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039825.P3423662284199342075

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=9`
-/

namespace A039825.P3423662284199342075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7, 9] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A039825.P3423662284199342075

noncomputable section

/-- A039825: a(n) = floor((n^2 + n + 8) / 4).

Offset 1, canonical program `A039825.P3423662284199342075`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039825 (n : ℕ) : ℤ :=
  A039825.P3423662284199342075.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A039825.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040118.P11682736627170675769

`a(n-3)` with `a(0)=11, a(1)=2, a(2)=2, a(3)=22`
-/

namespace A040118.P11682736627170675769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11, 2, 2, 22] fun n a =>
  a (n - 3)

end

end A040118.P11682736627170675769

noncomputable section

/-- A040118: Continued fraction for sqrt(130).

Offset 0, canonical program `A040118.P11682736627170675769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040118 (n : ℕ) : ℤ :=
  (A040118.P11682736627170675769.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040187.P16079794214572936351

`a(n-7)` with `a(0)=14, a(1)=4, a(2)=1, a(3)=2, a(4)=2, a(5)=1, a(6)=4, a(7)=28`
-/

namespace A040187.P16079794214572936351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 4, 1, 2, 2, 1, 4, 28] fun n a =>
  a (n - 7)

end

end A040187.P16079794214572936351

noncomputable section

/-- A040187: Continued fraction for sqrt(202).

Offset 0, canonical program `A040187.P16079794214572936351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040187 (n : ℕ) : ℤ :=
  (A040187.P16079794214572936351.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040234.P15410506243904345858

`a(n-7)` with `a(0)=15, a(1)=1, a(2)=4, a(3)=3, a(4)=3, a(5)=4, a(6)=1, a(7)=30`
-/

namespace A040234.P15410506243904345858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 1, 4, 3, 3, 4, 1, 30] fun n a =>
  a (n - 7)

end

end A040234.P15410506243904345858

noncomputable section

/-- A040234: Continued fraction for sqrt(250).

Offset 0, canonical program `A040234.P15410506243904345858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040234 (n : ℕ) : ℤ :=
  (A040234.P15410506243904345858.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040234.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040317.P12919923740715466486

`a(n-2)` with `a(0)=18, a(1)=3, a(2)=36`
-/

namespace A040317.P12919923740715466486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18, 3, 36] fun n a =>
  a (n - 2)

end

end A040317.P12919923740715466486

noncomputable section

/-- A040317: Continued fraction for sqrt(336).

Offset 0, canonical program `A040317.P12919923740715466486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040317 (n : ℕ) : ℤ :=
  (A040317.P12919923740715466486.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040341.P204286412123160672

`a(n-2)` with `a(0)=18, a(1)=1, a(2)=36`
-/

namespace A040341.P204286412123160672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18, 1, 36] fun n a =>
  a (n - 2)

end

end A040341.P204286412123160672

noncomputable section

/-- A040341: Continued fraction for sqrt(360).

Offset 0, canonical program `A040341.P204286412123160672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040341 (n : ℕ) : ℤ :=
  (A040341.P204286412123160672.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040351.P5914724553776994039

`a(n-6)` with `a(0)=19, a(1)=3, a(2)=1, a(3)=4, a(4)=1, a(5)=3, a(6)=38`
-/

namespace A040351.P5914724553776994039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19, 3, 1, 4, 1, 3, 38] fun n a =>
  a (n - 6)

end

end A040351.P5914724553776994039

noncomputable section

/-- A040351: Continued fraction for sqrt(371).

Offset 0, canonical program `A040351.P5914724553776994039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040351 (n : ℕ) : ℤ :=
  (A040351.P5914724553776994039.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040387.P17366250078760701348

`a(n-2)` with `a(0)=20, a(1)=5, a(2)=40`
-/

namespace A040387.P17366250078760701348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 5, 40] fun n a =>
  a (n - 2)

end

end A040387.P17366250078760701348

noncomputable section

/-- A040387: Continued fraction for sqrt(408).

Offset 0, canonical program `A040387.P17366250078760701348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040387 (n : ℕ) : ℤ :=
  (A040387.P17366250078760701348.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040422.P9957773850957603883

`a(n-2)` with `a(0)=21, a(1)=14, a(2)=42`
-/

namespace A040422.P9957773850957603883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 14, 42] fun n a =>
  a (n - 2)

end

end A040422.P9957773850957603883

noncomputable section

/-- A040422: Continued fraction for sqrt(444).

Offset 0, canonical program `A040422.P9957773850957603883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040422 (n : ℕ) : ℤ :=
  (A040422.P9957773850957603883.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040461.P11332886954534404026

`a(n-2)` with `a(0)=21, a(1)=1, a(2)=42`
-/

namespace A040461.P11332886954534404026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 1, 42] fun n a =>
  a (n - 2)

end

end A040461.P11332886954534404026

noncomputable section

/-- A040461: Continued fraction for sqrt(483).

Offset 0, canonical program `A040461.P11332886954534404026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040461 (n : ℕ) : ℤ :=
  (A040461.P11332886954534404026.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040480.P15502341373887760822

`a(n-8)` with `a(0)=22, a(1)=2, a(2)=2, a(3)=1, a(4)=21, a(5)=1, a(6)=2, a(7)=2, a(8)=44`
-/

namespace A040480.P15502341373887760822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 2, 2, 1, 21, 1, 2, 2, 44] fun n a =>
  a (n - 8)

end

end A040480.P15502341373887760822

noncomputable section

/-- A040480: Continued fraction for sqrt(503).

Offset 0, canonical program `A040480.P15502341373887760822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040480 (n : ℕ) : ℤ :=
  (A040480.P15502341373887760822.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040484.P9077195719069322114

`a(n-6)` with `a(0)=22, a(1)=1, a(2)=1, a(3)=14, a(4)=1, a(5)=1, a(6)=44`
-/

namespace A040484.P9077195719069322114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 1, 1, 14, 1, 1, 44] fun n a =>
  a (n - 6)

end

end A040484.P9077195719069322114

noncomputable section

/-- A040484: Continued fraction for sqrt(507).

Offset 0, canonical program `A040484.P9077195719069322114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040484 (n : ℕ) : ℤ :=
  (A040484.P9077195719069322114.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040505.P12877200073874983724

`a(n-2)` with `a(0)=22, a(1)=1, a(2)=44`
-/

namespace A040505.P12877200073874983724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 1, 44] fun n a =>
  a (n - 2)

end

end A040505.P12877200073874983724

noncomputable section

/-- A040505: Continued fraction for sqrt(528).

Offset 0, canonical program `A040505.P12877200073874983724`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040505 (n : ℕ) : ℤ :=
  (A040505.P12877200073874983724.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040527.P15471420833029263265

`a(n-6)` with `a(0)=23, a(1)=2, a(2)=8, a(3)=1, a(4)=8, a(5)=2, a(6)=46`
-/

namespace A040527.P15471420833029263265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [23, 2, 8, 1, 8, 2, 46] fun n a =>
  a (n - 6)

end

end A040527.P15471420833029263265

noncomputable section

/-- A040527: Continued fraction for sqrt(551).

Offset 0, canonical program `A040527.P15471420833029263265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040527 (n : ℕ) : ℤ :=
  (A040527.P15471420833029263265.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040563.P11950361092149395501

`a(n-2)` with `a(0)=24, a(1)=4, a(2)=48`
-/

namespace A040563.P11950361092149395501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24, 4, 48] fun n a =>
  a (n - 2)

end

end A040563.P11950361092149395501

noncomputable section

/-- A040563: Continued fraction for sqrt(588).

Offset 0, canonical program `A040563.P11950361092149395501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040563 (n : ℕ) : ℤ :=
  (A040563.P11950361092149395501.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040565.P2629617294285342621

`a(n-6)` with `a(0)=24, a(1)=3, a(2)=2, a(3)=4, a(4)=2, a(5)=3, a(6)=48`
-/

namespace A040565.P2629617294285342621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24, 3, 2, 4, 2, 3, 48] fun n a =>
  a (n - 6)

end

end A040565.P2629617294285342621

noncomputable section

/-- A040565: Continued fraction for sqrt(590).

Offset 0, canonical program `A040565.P2629617294285342621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040565 (n : ℕ) : ℤ :=
  (A040565.P2629617294285342621.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040603.P5282703412746088349

`a(n-5)` with `a(0)=25, a(1)=12, a(2)=1, a(3)=1, a(4)=12, a(5)=50`
-/

namespace A040603.P5282703412746088349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25, 12, 1, 1, 12, 50] fun n a =>
  a (n - 5)

end

end A040603.P5282703412746088349

noncomputable section

/-- A040603: Continued fraction for sqrt(629).

Offset 0, canonical program `A040603.P5282703412746088349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040603 (n : ℕ) : ℤ :=
  (A040603.P5282703412746088349.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040726.P599056237116543134

`a(n-9)` with `a(0)=27, a(1)=2, a(2)=5, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=5, a(8)=2, a(9)=54`
-/

namespace A040726.P599056237116543134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27, 2, 5, 1, 1, 1, 1, 5, 2, 54] fun n a =>
  a (n - 9)

end

end A040726.P599056237116543134

noncomputable section

/-- A040726: Continued fraction for sqrt(754).

Offset 0, canonical program `A040726.P599056237116543134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040726 (n : ℕ) : ℤ :=
  (A040726.P599056237116543134.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040769.P1551329016444785163

`a(n-2)` with `a(0)=28, a(1)=4, a(2)=56`
-/

namespace A040769.P1551329016444785163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 4, 56] fun n a =>
  a (n - 2)

end

end A040769.P1551329016444785163

noncomputable section

/-- A040769: Continued fraction for sqrt(798).

Offset 0, canonical program `A040769.P1551329016444785163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040769 (n : ℕ) : ℤ :=
  (A040769.P1551329016444785163.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040799.P4848548327283226473

`a(n-6)` with `a(0)=28, a(1)=1, a(2)=3, a(3)=2, a(4)=3, a(5)=1, a(6)=56`
-/

namespace A040799.P4848548327283226473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 1, 3, 2, 3, 1, 56] fun n a =>
  a (n - 6)

end

end A040799.P4848548327283226473

noncomputable section

/-- A040799: Continued fraction for sqrt(828).

Offset 0, canonical program `A040799.P4848548327283226473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040799 (n : ℕ) : ℤ :=
  (A040799.P4848548327283226473.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040824.P17277010443060937915

`a(n-8)` with `a(0)=29, a(1)=4, a(2)=2, a(3)=11, a(4)=4, a(5)=11, a(6)=2, a(7)=4, a(8)=58`
-/

namespace A040824.P17277010443060937915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29, 4, 2, 11, 4, 11, 2, 4, 58] fun n a =>
  a (n - 8)

end

end A040824.P17277010443060937915

noncomputable section

/-- A040824: Continued fraction for sqrt(854).

Offset 0, canonical program `A040824.P17277010443060937915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040824 (n : ℕ) : ℤ :=
  (A040824.P17277010443060937915.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040867.P16318112174069372310

`a(n-4)` with `a(0)=29, a(1)=1, a(2)=18, a(3)=1, a(4)=58`
-/

namespace A040867.P16318112174069372310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29, 1, 18, 1, 58] fun n a =>
  a (n - 4)

end

end A040867.P16318112174069372310

noncomputable section

/-- A040867: Continued fraction for sqrt(897).

Offset 0, canonical program `A040867.P16318112174069372310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040867 (n : ℕ) : ℤ :=
  (A040867.P16318112174069372310.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040867.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040928.P3484594305526774822

`a(n-4)` with `a(0)=30, a(1)=1, a(2)=29, a(3)=1, a(4)=60`
-/

namespace A040928.P3484594305526774822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 1, 29, 1, 60] fun n a =>
  a (n - 4)

end

end A040928.P3484594305526774822

noncomputable section

/-- A040928: Continued fraction for sqrt(959).

Offset 0, canonical program `A040928.P3484594305526774822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040928 (n : ℕ) : ℤ :=
  (A040928.P3484594305526774822.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040961.P12239413092404773850

`a(n-6)` with `a(0)=31, a(1)=1, a(2)=1, a(3)=20, a(4)=1, a(5)=1, a(6)=62`
-/

namespace A040961.P12239413092404773850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [31, 1, 1, 20, 1, 1, 62] fun n a =>
  a (n - 6)

end

end A040961.P12239413092404773850

noncomputable section

/-- A040961: Continued fraction for sqrt(993).

Offset 0, canonical program `A040961.P12239413092404773850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040961 (n : ℕ) : ℤ :=
  (A040961.P12239413092404773850.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A040996.P13164513695994852623

`2^2^n*(2^2^n-1)/2`
-/

namespace A040996.P13164513695994852623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℚ) * (((2 ^ 2 ^ n : ℤ) - 1 : ℚ) / 2)

end

end A040996.P13164513695994852623

noncomputable section

/-- A040996: Maximum number of distinct functions at the bottom of a Boolean (or Binary) Decision Diagram (or BDD) with negation by pointer complementation.

Offset 0, canonical program `A040996.P13164513695994852623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040996 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A040996.P13164513695994852623.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041006.P10851957046175188140

`((2+sqrt(6))^(n+1)+(2-sqrt(6))^(n+1))/2^(ceil(n/2)+1)`
-/

namespace A041006.P10851957046175188140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + Real.sqrt (6 : ℝ)) ^ (n + 1) + (2 - Real.sqrt (6 : ℝ)) ^ (n + 1)) / ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ + 1 : ℤ) : ℝ)

end

end A041006.P10851957046175188140

noncomputable section

/-- A041006: Numerators of continued fraction convergents to sqrt(6).

Offset 0, canonical program `A041006.P10851957046175188140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041006 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A041006.P10851957046175188140.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041007.P14816643367733725803

`(3+(-1)^n)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A041007.P14816643367733725803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 + (-1) ^ n) * a (n - 1) + a (n - 2)

end

end A041007.P14816643367733725803

noncomputable section

/-- A041007: Denominators of continued fraction convergents to sqrt(6).

Offset 0, canonical program `A041007.P14816643367733725803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041007 (n : ℕ) : ℤ :=
  A041007.P14816643367733725803.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041010.P2487610298239819987

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=14, a(3)=17`
-/

namespace A041010.P2487610298239819987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 14, 17] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A041010.P2487610298239819987

noncomputable section

/-- A041010: Numerators of continued fraction convergents to sqrt(8).

Offset 0, canonical program `A041010.P2487610298239819987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041010 (n : ℕ) : ℤ :=
  A041010.P2487610298239819987.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041011.P18331514441097382032

`6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6`
-/

namespace A041011.P18331514441097382032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 6] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A041011.P18331514441097382032

noncomputable section

/-- A041011: Denominators of continued fraction convergents to sqrt(8).

Offset 0, canonical program `A041011.P18331514441097382032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041011 (n : ℕ) : ℤ :=
  A041011.P18331514441097382032.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041014.P4734597588293575210

`20*a(n-2)-a(n-4)` with `a(0)=3, a(1)=10, a(2)=63, a(3)=199`
-/

namespace A041014.P4734597588293575210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10, 63, 199] fun n a =>
  20 * a (n - 2) - a (n - 4)

end

end A041014.P4734597588293575210

noncomputable section

/-- A041014: Numerators of continued fraction convergents to sqrt(11).

Offset 0, canonical program `A041014.P4734597588293575210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041014 (n : ℕ) : ℤ :=
  A041014.P4734597588293575210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041020.P15898672771561040029

`30*a(n-4)-a(n-8)` with `a(0)=3, a(1)=4, a(2)=11, a(3)=15, a(4)=101, a(5)=116, a(6)=333, a(7)=449`
-/

namespace A041020.P15898672771561040029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 11, 15, 101, 116, 333, 449] fun n a =>
  30 * a (n - 4) - a (n - 8)

end

end A041020.P15898672771561040029

noncomputable section

/-- A041020: Numerators of continued fraction convergents to sqrt(14).

Offset 0, canonical program `A041020.P15898672771561040029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041020 (n : ℕ) : ℤ :=
  A041020.P15898672771561040029.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041020.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041024.P8495876778643117956

`8*a(n-1)+a(n-2)` with `a(0)=4, a(1)=33`
-/

namespace A041024.P8495876778643117956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 33] fun n a =>
  8 * a (n - 1) + a (n - 2)

end

end A041024.P8495876778643117956

noncomputable section

/-- A041024: Numerators of continued fraction convergents to sqrt(17).

Offset 0, canonical program `A041024.P8495876778643117956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041024 (n : ℕ) : ℤ :=
  (A041024.P8495876778643117956.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041024.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041025.P14007617877981341001

`8*a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A041025.P14007617877981341001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  8 * a (n - 1) + a (n - 2)

end

end A041025.P14007617877981341001

noncomputable section

/-- A041025: Denominators of continued fraction convergents to sqrt(17).

Offset 0, canonical program `A041025.P14007617877981341001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041025 (n : ℕ) : ℤ :=
  (A041025.P14007617877981341001.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041040.P14067790208061608995

`10*a(n-1)+a(n-2)` with `a(0)=5, a(1)=51`
-/

namespace A041040.P14067790208061608995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 51] fun n a =>
  10 * a (n - 1) + a (n - 2)

end

end A041040.P14067790208061608995

noncomputable section

/-- A041040: Numerators of continued fraction convergents to sqrt(26).

Offset 0, canonical program `A041040.P14067790208061608995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041040 (n : ℕ) : ℤ :=
  (A041040.P14067790208061608995.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041041.P520631316830593483

`10*a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A041041.P520631316830593483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * a (n - 1) + a (n - 2)

end

end A041041.P520631316830593483

noncomputable section

/-- A041041: Denominators of continued fraction convergents to sqrt(26).

Offset 0, canonical program `A041041.P520631316830593483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041041 (n : ℕ) : ℤ :=
  (A041041.P520631316830593483.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041043.P17196250796943046244

`52*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=51, a(3)=260`
-/

namespace A041043.P17196250796943046244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 51, 260] fun n a =>
  52 * a (n - 2) - a (n - 4)

end

end A041043.P17196250796943046244

noncomputable section

/-- A041043: Denominators of continued fraction convergents to sqrt(27).

Offset 0, canonical program `A041043.P17196250796943046244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041043 (n : ℕ) : ℤ :=
  A041043.P17196250796943046244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041048.P5499091687835252052

`22*a(n-2)-a(n-4)` with `a(0)=5, a(1)=11, a(2)=115, a(3)=241`
-/

namespace A041048.P5499091687835252052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 11, 115, 241] fun n a =>
  22 * a (n - 2) - a (n - 4)

end

end A041048.P5499091687835252052

noncomputable section

/-- A041048: Numerators of continued fraction convergents to sqrt(30).

Offset 0, canonical program `A041048.P5499091687835252052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041048 (n : ℕ) : ℤ :=
  A041048.P5499091687835252052.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041053.P12123195284201886834

`34*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=32, a(5)=35, a(6)=67, a(7)=102`
-/

namespace A041053.P12123195284201886834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 32, 35, 67, 102] fun n a =>
  34 * a (n - 4) - a (n - 8)

end

end A041053.P12123195284201886834

noncomputable section

/-- A041053: Denominators of continued fraction convergents to sqrt(32).

Offset 0, canonical program `A041053.P12123195284201886834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041053 (n : ℕ) : ℤ :=
  A041053.P12123195284201886834.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041055.P5469019340177865612

`46*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=43, a(5)=47, a(6)=137, a(7)=184`
-/

namespace A041055.P5469019340177865612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 43, 47, 137, 184] fun n a =>
  46 * a (n - 4) - a (n - 8)

end

end A041055.P5469019340177865612

noncomputable section

/-- A041055: Denominators of continued fraction convergents to sqrt(33).

Offset 0, canonical program `A041055.P5469019340177865612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041055 (n : ℕ) : ℤ :=
  A041055.P5469019340177865612.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041057.P10209537555003920649

`70*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6, a(4)=65, a(5)=71, a(6)=349, a(7)=420`
-/

namespace A041057.P10209537555003920649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 6, 65, 71, 349, 420] fun n a =>
  70 * a (n - 4) - a (n - 8)

end

end A041057.P10209537555003920649

noncomputable section

/-- A041057: Denominators of continued fraction convergents to sqrt(34).

Offset 0, canonical program `A041057.P10209537555003920649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041057 (n : ℕ) : ℤ :=
  A041057.P10209537555003920649.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041058.P5739414859851063256

`12*a(n-2)-a(n-4)` with `a(0)=5, a(1)=6, a(2)=65, a(3)=71`
-/

namespace A041058.P5739414859851063256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 65, 71] fun n a =>
  12 * a (n - 2) - a (n - 4)

end

end A041058.P5739414859851063256

noncomputable section

/-- A041058: Numerators of continued fraction convergents to sqrt(35).

Offset 0, canonical program `A041058.P5739414859851063256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041058 (n : ℕ) : ℤ :=
  A041058.P5739414859851063256.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041060.P17135726797736334604

`12*a(n-1)+a(n-2)` with `a(0)=6, a(1)=73`
-/

namespace A041060.P17135726797736334604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 73] fun n a =>
  12 * a (n - 1) + a (n - 2)

end

end A041060.P17135726797736334604

noncomputable section

/-- A041060: Numerators of continued fraction convergents to sqrt(37).

Offset 0, canonical program `A041060.P17135726797736334604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041060 (n : ℕ) : ℤ :=
  (A041060.P17135726797736334604.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041061.P6792001639751871967

`12*a(n-1)+a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A041061.P6792001639751871967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n a =>
  12 * a (n - 1) + a (n - 2)

end

end A041061.P6792001639751871967

noncomputable section

/-- A041061: Denominators of continued fraction convergents to sqrt(37).

Offset 0, canonical program `A041061.P6792001639751871967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041061 (n : ℕ) : ℤ :=
  (A041061.P6792001639751871967.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041063.P8465138005355590023

`74*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=73, a(3)=444`
-/

namespace A041063.P8465138005355590023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 73, 444] fun n a =>
  74 * a (n - 2) - a (n - 4)

end

end A041063.P8465138005355590023

noncomputable section

/-- A041063: Denominators of continued fraction convergents to sqrt(38).

Offset 0, canonical program `A041063.P8465138005355590023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041063 (n : ℕ) : ℤ :=
  A041063.P8465138005355590023.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041063.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041065.P13304649898035522845

`50*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=49, a(3)=200`
-/

namespace A041065.P13304649898035522845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 49, 200] fun n a =>
  50 * a (n - 2) - a (n - 4)

end

end A041065.P13304649898035522845

noncomputable section

/-- A041065: Denominators of continued fraction convergents to sqrt(39).

Offset 0, canonical program `A041065.P13304649898035522845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041065 (n : ℕ) : ℤ :=
  A041065.P13304649898035522845.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041067.P12079072612470164182

`38*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=37, a(3)=114`
-/

namespace A041067.P12079072612470164182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 37, 114] fun n a =>
  38 * a (n - 2) - a (n - 4)

end

end A041067.P12079072612470164182

noncomputable section

/-- A041067: Denominators of continued fraction convergents to sqrt(40).

Offset 0, canonical program `A041067.P12079072612470164182`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041067 (n : ℕ) : ℤ :=
  A041067.P12079072612470164182.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041069.P4475804458947785772

`64*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=62, a(4)=129, a(5)=320`
-/

namespace A041069.P4475804458947785772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 62, 129, 320] fun n a =>
  64 * a (n - 3) + a (n - 6)

end

end A041069.P4475804458947785772

noncomputable section

/-- A041069: Denominators of continued fraction convergents to sqrt(41).

Offset 0, canonical program `A041069.P4475804458947785772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041069 (n : ℕ) : ℤ :=
  (A041069.P4475804458947785772.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041071.P12381320668189739814

`26*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=25, a(3)=52`
-/

namespace A041071.P12381320668189739814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 25, 52] fun n a =>
  26 * a (n - 2) - a (n - 4)

end

end A041071.P12381320668189739814

noncomputable section

/-- A041071: Denominators of continued fraction convergents to sqrt(42).

Offset 0, canonical program `A041071.P12381320668189739814`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041071 (n : ℕ) : ℤ :=
  A041071.P12381320668189739814.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041081.P6621287335465192009

`96*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=6, a(3)=7, a(4)=90, a(5)=97, a(6)=575, a(7)=672`
-/

namespace A041081.P6621287335465192009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6, 7, 90, 97, 575, 672] fun n a =>
  96 * a (n - 4) - a (n - 8)

end

end A041081.P6621287335465192009

noncomputable section

/-- A041081: Denominators of continued fraction convergents to sqrt(47).

Offset 0, canonical program `A041081.P6621287335465192009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041081 (n : ℕ) : ℤ :=
  A041081.P6621287335465192009.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041082.P1671270518900589276

`14*a(n-2)-a(n-4)` with `a(0)=6, a(1)=7, a(2)=90, a(3)=97`
-/

namespace A041082.P1671270518900589276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 7, 90, 97] fun n a =>
  14 * a (n - 2) - a (n - 4)

end

end A041082.P1671270518900589276

noncomputable section

/-- A041082: Numerators of continued fraction convergents to sqrt(48).

Offset 0, canonical program `A041082.P1671270518900589276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041082 (n : ℕ) : ℤ :=
  A041082.P1671270518900589276.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041083.P14395245751364629949

`14*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=13, a(3)=14`
-/

namespace A041083.P14395245751364629949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 13, 14] fun n a =>
  14 * a (n - 2) - a (n - 4)

end

end A041083.P14395245751364629949

noncomputable section

/-- A041083: Denominators of continued fraction convergents to sqrt(48).

Offset 0, canonical program `A041083.P14395245751364629949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041083 (n : ℕ) : ℤ :=
  A041083.P14395245751364629949.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041084.P2744222060995009141

`14*a(n-1)+a(n-2)` with `a(0)=7, a(1)=99`
-/

namespace A041084.P2744222060995009141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 99] fun n a =>
  14 * a (n - 1) + a (n - 2)

end

end A041084.P2744222060995009141

noncomputable section

/-- A041084: Numerators of continued fraction convergents to sqrt(50).

Offset 0, canonical program `A041084.P2744222060995009141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041084 (n : ℕ) : ℤ :=
  (A041084.P2744222060995009141.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041085.P15273050580975401867

`14*a(n-1)+a(n-2)` with `a(0)=1, a(1)=14`
-/

namespace A041085.P15273050580975401867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n a =>
  14 * a (n - 1) + a (n - 2)

end

end A041085.P15273050580975401867

noncomputable section

/-- A041085: Denominators of continued fraction convergents to sqrt(50).

Offset 0, canonical program `A041085.P15273050580975401867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041085 (n : ℕ) : ℤ :=
  (A041085.P15273050580975401867.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041097.P13276312548577984626

`30*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=29, a(3)=60`
-/

namespace A041097.P13276312548577984626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 29, 60] fun n a =>
  30 * a (n - 2) - a (n - 4)

end

end A041097.P13276312548577984626

noncomputable section

/-- A041097: Denominators of continued fraction convergents to sqrt(56).

Offset 0, canonical program `A041097.P13276312548577984626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041097 (n : ℕ) : ℤ :=
  A041097.P13276312548577984626.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041105.P5042149144408666189

`62*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=59, a(5)=63, a(6)=185, a(7)=248`
-/

namespace A041105.P5042149144408666189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 59, 63, 185, 248] fun n a =>
  62 * a (n - 4) - a (n - 8)

end

end A041105.P5042149144408666189

noncomputable section

/-- A041105: Denominators of continued fraction convergents to sqrt(60).

Offset 0, canonical program `A041105.P5042149144408666189`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041105 (n : ℕ) : ℤ :=
  A041105.P5042149144408666189.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041110.P5647184166633301588

`16*a(n-2)-a(n-4)` with `a(0)=7, a(1)=8, a(2)=119, a(3)=127`
-/

namespace A041110.P5647184166633301588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 8, 119, 127] fun n a =>
  16 * a (n - 2) - a (n - 4)

end

end A041110.P5647184166633301588

noncomputable section

/-- A041110: Numerators of continued fraction convergents to sqrt(63).

Offset 0, canonical program `A041110.P5647184166633301588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041110 (n : ℕ) : ℤ :=
  A041110.P5647184166633301588.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041111.P6815192844580179073

`16*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=15, a(3)=16`
-/

namespace A041111.P6815192844580179073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 15, 16] fun n a =>
  16 * a (n - 2) - a (n - 4)

end

end A041111.P6815192844580179073

noncomputable section

/-- A041111: Denominators of continued fraction convergents to sqrt(63).

Offset 0, canonical program `A041111.P6815192844580179073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041111 (n : ℕ) : ℤ :=
  A041111.P6815192844580179073.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041112.P7179192648694745073

`16*a(n-1)+a(n-2)` with `a(0)=8, a(1)=129`
-/

namespace A041112.P7179192648694745073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 129] fun n a =>
  16 * a (n - 1) + a (n - 2)

end

end A041112.P7179192648694745073

noncomputable section

/-- A041112: Numerators of continued fraction convergents to sqrt(65).

Offset 0, canonical program `A041112.P7179192648694745073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041112 (n : ℕ) : ℤ :=
  (A041112.P7179192648694745073.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041113.P11877642920065015939

`16*a(n-1)+a(n-2)` with `a(0)=1, a(1)=16`
-/

namespace A041113.P11877642920065015939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  16 * a (n - 1) + a (n - 2)

end

end A041113.P11877642920065015939

noncomputable section

/-- A041113: Denominators of continued fraction convergents to sqrt(65).

Offset 0, canonical program `A041113.P11877642920065015939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041113 (n : ℕ) : ℤ :=
  (A041113.P11877642920065015939.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041119.P13741683469650599664

`66*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=65, a(3)=264`
-/

namespace A041119.P13741683469650599664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 65, 264] fun n a =>
  66 * a (n - 2) - a (n - 4)

end

end A041119.P13741683469650599664

noncomputable section

/-- A041119: Denominators of continued fraction convergents to sqrt(68).

Offset 0, canonical program `A041119.P13741683469650599664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041119 (n : ℕ) : ℤ :=
  A041119.P13741683469650599664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041127.P17322848482928432042

`34*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=33, a(3)=68`
-/

namespace A041127.P17322848482928432042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 33, 68] fun n a =>
  34 * a (n - 2) - a (n - 4)

end

end A041127.P17322848482928432042

noncomputable section

/-- A041127: Denominators of continued fraction convergents to sqrt(72).

Offset 0, canonical program `A041127.P17322848482928432042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041127 (n : ℕ) : ℤ :=
  A041127.P17322848482928432042.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041131.P5251432017907947157

`86*a(n-5)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=83, a(6)=88, a(7)=171, a(8)=259, a(9)=430`
-/

namespace A041131.P5251432017907947157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 83, 88, 171, 259, 430] fun n a =>
  86 * a (n - 5) + a (n - 10)

end

end A041131.P5251432017907947157

noncomputable section

/-- A041131: Denominators of continued fraction convergents to sqrt(74).

Offset 0, canonical program `A041131.P5251432017907947157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041131 (n : ℕ) : ℤ :=
  (A041131.P5251432017907947157.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041133.P5086742199320334834

`52*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=50, a(5)=53, a(6)=103, a(7)=156`
-/

namespace A041133.P5086742199320334834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 50, 53, 103, 156] fun n a =>
  52 * a (n - 4) - a (n - 8)

end

end A041133.P5086742199320334834

noncomputable section

/-- A041133: Denominators of continued fraction convergents to sqrt(75).

Offset 0, canonical program `A041133.P5086742199320334834`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041133 (n : ℕ) : ℤ :=
  A041133.P5086742199320334834.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041139.P1183526581158809571

`106*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6, a(4)=101, a(5)=107, a(6)=529, a(7)=636`
-/

namespace A041139.P1183526581158809571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 6, 101, 107, 529, 636] fun n a =>
  106 * a (n - 4) - a (n - 8)

end

end A041139.P1183526581158809571

noncomputable section

/-- A041139: Denominators of continued fraction convergents to sqrt(78).

Offset 0, canonical program `A041139.P1183526581158809571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041139 (n : ℕ) : ℤ :=
  A041139.P1183526581158809571.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041142.P7352067332013008151

`18*a(n-2)-a(n-4)` with `a(0)=8, a(1)=9, a(2)=152, a(3)=161`
-/

namespace A041142.P7352067332013008151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 9, 152, 161] fun n a =>
  18 * a (n - 2) - a (n - 4)

end

end A041142.P7352067332013008151

noncomputable section

/-- A041142: Numerators of continued fraction convergents to sqrt(80).

Offset 0, canonical program `A041142.P7352067332013008151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041142 (n : ℕ) : ℤ :=
  A041142.P7352067332013008151.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041143.P9037026930062718726

`18*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=17, a(3)=18`
-/

namespace A041143.P9037026930062718726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 17, 18] fun n a =>
  18 * a (n - 2) - a (n - 4)

end

end A041143.P9037026930062718726

noncomputable section

/-- A041143: Denominators of continued fraction convergents to sqrt(80).

Offset 0, canonical program `A041143.P9037026930062718726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041143 (n : ℕ) : ℤ :=
  A041143.P9037026930062718726.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041144.P15159387347847258268

`18*a(n-1)+a(n-2)` with `a(0)=9, a(1)=163`
-/

namespace A041144.P15159387347847258268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 163] fun n a =>
  18 * a (n - 1) + a (n - 2)

end

end A041144.P15159387347847258268

noncomputable section

/-- A041144: Numerators of continued fraction convergents to sqrt(82).

Offset 0, canonical program `A041144.P15159387347847258268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041144 (n : ℕ) : ℤ :=
  (A041144.P15159387347847258268.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041145.P849536448268898359

`18*a(n-1)+a(n-2)` with `a(0)=1, a(1)=18`
-/

namespace A041145.P849536448268898359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  18 * a (n - 1) + a (n - 2)

end

end A041145.P849536448268898359

noncomputable section

/-- A041145: Denominators of continued fraction convergents to sqrt(82).

Offset 0, canonical program `A041145.P849536448268898359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041145 (n : ℕ) : ℤ :=
  (A041145.P849536448268898359.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041145.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041149.P10538210814641834334

`110*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=109, a(3)=660`
-/

namespace A041149.P10538210814641834334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 109, 660] fun n a =>
  110 * a (n - 2) - a (n - 4)

end

end A041149.P10538210814641834334

noncomputable section

/-- A041149: Denominators of continued fraction convergents to sqrt(84).

Offset 0, canonical program `A041149.P10538210814641834334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041149 (n : ℕ) : ℤ :=
  A041149.P10538210814641834334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041155.P4241069790150363583

`56*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=55, a(3)=168`
-/

namespace A041155.P4241069790150363583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 55, 168] fun n a =>
  56 * a (n - 2) - a (n - 4)

end

end A041155.P4241069790150363583

noncomputable section

/-- A041155: Denominators of continued fraction convergents to sqrt(87).

Offset 0, canonical program `A041155.P4241069790150363583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041155 (n : ℕ) : ℤ :=
  A041155.P4241069790150363583.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041161.P9967215436243591298

`38*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=37, a(3)=76`
-/

namespace A041161.P9967215436243591298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 37, 76] fun n a =>
  38 * a (n - 2) - a (n - 4)

end

end A041161.P9967215436243591298

noncomputable section

/-- A041161: Denominators of continued fraction convergents to sqrt(90).

Offset 0, canonical program `A041161.P9967215436243591298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041161 (n : ℕ) : ℤ :=
  A041161.P9967215436243591298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041171.P6429405310128368168

`78*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=75, a(5)=79, a(6)=233, a(7)=312`
-/

namespace A041171.P6429405310128368168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 75, 79, 233, 312] fun n a =>
  78 * a (n - 4) - a (n - 8)

end

end A041171.P6429405310128368168

noncomputable section

/-- A041171: Denominators of continued fraction convergents to sqrt(95).

Offset 0, canonical program `A041171.P6429405310128368168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041171 (n : ℕ) : ℤ :=
  A041171.P6429405310128368168.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041173.P260030892562612781

`98*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=94, a(5)=99, a(6)=391, a(7)=490`
-/

namespace A041173.P260030892562612781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5, 94, 99, 391, 490] fun n a =>
  98 * a (n - 4) - a (n - 8)

end

end A041173.P260030892562612781

noncomputable section

/-- A041173: Denominators of continued fraction convergents to sqrt(96).

Offset 0, canonical program `A041173.P260030892562612781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041173 (n : ℕ) : ℤ :=
  A041173.P260030892562612781.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041179.P17684239972321436015

`20*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=19, a(3)=20`
-/

namespace A041179.P17684239972321436015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 19, 20] fun n a =>
  20 * a (n - 2) - a (n - 4)

end

end A041179.P17684239972321436015

noncomputable section

/-- A041179: Denominators of continued fraction convergents to sqrt(99).

Offset 0, canonical program `A041179.P17684239972321436015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041179 (n : ℕ) : ℤ :=
  A041179.P17684239972321436015.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041180.P2630406197751419655

`20*a(n-1)+a(n-2)` with `a(0)=10, a(1)=201`
-/

namespace A041180.P2630406197751419655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 201] fun n a =>
  20 * a (n - 1) + a (n - 2)

end

end A041180.P2630406197751419655

noncomputable section

/-- A041180: Numerators of continued fraction convergents to sqrt(101).

Offset 0, canonical program `A041180.P2630406197751419655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041180 (n : ℕ) : ℤ :=
  (A041180.P2630406197751419655.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041180.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041181.P7418229576895434928

`20*a(n-1)+a(n-2)` with `a(0)=1, a(1)=20`
-/

namespace A041181.P7418229576895434928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n a =>
  20 * a (n - 1) + a (n - 2)

end

end A041181.P7418229576895434928

noncomputable section

/-- A041181: Denominators of continued fraction convergents to sqrt(101).

Offset 0, canonical program `A041181.P7418229576895434928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041181 (n : ℕ) : ℤ :=
  (A041181.P7418229576895434928.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041187.P9437160457134202649

`102*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=101, a(3)=510`
-/

namespace A041187.P9437160457134202649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 101, 510] fun n a =>
  102 * a (n - 2) - a (n - 4)

end

end A041187.P9437160457134202649

noncomputable section

/-- A041187: Denominators of continued fraction convergents to sqrt(104).

Offset 0, canonical program `A041187.P9437160457134202649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041187 (n : ℕ) : ℤ :=
  A041187.P9437160457134202649.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041189.P6225501342174578916

`82*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=81, a(3)=328`
-/

namespace A041189.P6225501342174578916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 81, 328] fun n a =>
  82 * a (n - 2) - a (n - 4)

end

end A041189.P6225501342174578916

noncomputable section

/-- A041189: Denominators of continued fraction convergents to sqrt(105).

Offset 0, canonical program `A041189.P6225501342174578916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041189 (n : ℕ) : ℤ :=
  A041189.P6225501342174578916.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041189.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041198.P17033337696546334705

`42*a(n-2)-a(n-4)` with `a(0)=10, a(1)=21, a(2)=430, a(3)=881`
-/

namespace A041198.P17033337696546334705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 21, 430, 881] fun n a =>
  42 * a (n - 2) - a (n - 4)

end

end A041198.P17033337696546334705

noncomputable section

/-- A041198: Numerators of continued fraction convergents to sqrt(110).

Offset 0, canonical program `A041198.P17033337696546334705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041198 (n : ℕ) : ℤ :=
  A041198.P17033337696546334705.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041218.P15663122427427302237

`22*a(n-2)-a(n-4)` with `a(0)=10, a(1)=11, a(2)=230, a(3)=241`
-/

namespace A041218.P15663122427427302237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 11, 230, 241] fun n a =>
  22 * a (n - 2) - a (n - 4)

end

end A041218.P15663122427427302237

noncomputable section

/-- A041218: Numerators of continued fraction convergents to sqrt(120).

Offset 0, canonical program `A041218.P15663122427427302237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041218 (n : ℕ) : ℤ :=
  A041218.P15663122427427302237.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041218.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041219.P850706542352028515

`22*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=21, a(3)=22`
-/

namespace A041219.P850706542352028515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 21, 22] fun n a =>
  22 * a (n - 2) - a (n - 4)

end

end A041219.P850706542352028515

noncomputable section

/-- A041219: Denominators of continued fraction convergents to sqrt(120).

Offset 0, canonical program `A041219.P850706542352028515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041219 (n : ℕ) : ℤ :=
  A041219.P850706542352028515.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041220.P11159118918413616512

`22*a(n-1)+a(n-2)` with `a(0)=11, a(1)=243`
-/

namespace A041220.P11159118918413616512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11, 243] fun n a =>
  22 * a (n - 1) + a (n - 2)

end

end A041220.P11159118918413616512

noncomputable section

/-- A041220: Numerators of continued fraction convergents to sqrt(122).

Offset 0, canonical program `A041220.P11159118918413616512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041220 (n : ℕ) : ℤ :=
  (A041220.P11159118918413616512.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041221.P3510875629754326734

`22*a(n-1)+a(n-2)` with `a(0)=1, a(1)=22`
-/

namespace A041221.P3510875629754326734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 22] fun n a =>
  22 * a (n - 1) + a (n - 2)

end

end A041221.P3510875629754326734

noncomputable section

/-- A041221: Denominators of continued fraction convergents to sqrt(122).

Offset 0, canonical program `A041221.P3510875629754326734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041221 (n : ℕ) : ℤ :=
  (A041221.P3510875629754326734.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041237.P10328301136668872099

`114*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=112, a(4)=229, a(5)=570`
-/

namespace A041237.P10328301136668872099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 112, 229, 570] fun n a =>
  114 * a (n - 3) + a (n - 6)

end

end A041237.P10328301136668872099

noncomputable section

/-- A041237: Denominators of continued fraction convergents to sqrt(130).

Offset 0, canonical program `A041237.P10328301136668872099`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041237 (n : ℕ) : ℤ :=
  (A041237.P10328301136668872099.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041241.P10604670515868450582

`46*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=45, a(3)=92`
-/

namespace A041241.P10604670515868450582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 45, 92] fun n a =>
  46 * a (n - 2) - a (n - 4)

end

end A041241.P10604670515868450582

noncomputable section

/-- A041241: Denominators of continued fraction convergents to sqrt(132).

Offset 0, canonical program `A041241.P10604670515868450582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041241 (n : ℕ) : ℤ :=
  A041241.P10604670515868450582.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041249.P1294498132012613068

`70*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=68, a(5)=71, a(6)=139, a(7)=210`
-/

namespace A041249.P1294498132012613068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 68, 71, 139, 210] fun n a =>
  70 * a (n - 4) - a (n - 8)

end

end A041249.P1294498132012613068

noncomputable section

/-- A041249: Denominators of continued fraction convergents to sqrt(136).

Offset 0, canonical program `A041249.P1294498132012613068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041249 (n : ℕ) : ℤ :=
  A041249.P1294498132012613068.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041253.P2493662563062590019

`94*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=91, a(5)=95, a(6)=281, a(7)=376`
-/

namespace A041253.P2493662563062590019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 91, 95, 281, 376] fun n a =>
  94 * a (n - 4) - a (n - 8)

end

end A041253.P2493662563062590019

noncomputable section

/-- A041253: Denominators of continued fraction convergents to sqrt(138).

Offset 0, canonical program `A041253.P2493662563062590019`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041253 (n : ℕ) : ℤ :=
  A041253.P2493662563062590019.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041257.P10780056327384786627

`142*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=6, a(4)=137, a(5)=143, a(6)=709, a(7)=852`
-/

namespace A041257.P10780056327384786627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 6, 137, 143, 709, 852] fun n a =>
  142 * a (n - 4) - a (n - 8)

end

end A041257.P10780056327384786627

noncomputable section

/-- A041257: Denominators of continued fraction convergents to sqrt(140).

Offset 0, canonical program `A041257.P10780056327384786627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041257 (n : ℕ) : ℤ :=
  A041257.P10780056327384786627.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041262.P5676863224015797848

`24*a(n-2)-a(n-4)` with `a(0)=11, a(1)=12, a(2)=275, a(3)=287`
-/

namespace A041262.P5676863224015797848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 12, 275, 287] fun n a =>
  24 * a (n - 2) - a (n - 4)

end

end A041262.P5676863224015797848

noncomputable section

/-- A041262: Numerators of continued fraction convergents to sqrt(143).

Offset 0, canonical program `A041262.P5676863224015797848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041262 (n : ℕ) : ℤ :=
  A041262.P5676863224015797848.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041263.P432317245744957817

`24*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=23, a(3)=24`
-/

namespace A041263.P432317245744957817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 23, 24] fun n a =>
  24 * a (n - 2) - a (n - 4)

end

end A041263.P432317245744957817

noncomputable section

/-- A041263: Denominators of continued fraction convergents to sqrt(143).

Offset 0, canonical program `A041263.P432317245744957817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041263 (n : ℕ) : ℤ :=
  A041263.P432317245744957817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041264.P15008732142144828960

`24*a(n-1)+a(n-2)` with `a(0)=12, a(1)=289`
-/

namespace A041264.P15008732142144828960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 289] fun n a =>
  24 * a (n - 1) + a (n - 2)

end

end A041264.P15008732142144828960

noncomputable section

/-- A041264: Numerators of continued fraction convergents to sqrt(145).

Offset 0, canonical program `A041264.P15008732142144828960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041264 (n : ℕ) : ℤ :=
  (A041264.P15008732142144828960.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041265.P4867592435535228165

`24*a(n-1)+a(n-2)` with `a(0)=1, a(1)=24`
-/

namespace A041265.P4867592435535228165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n a =>
  24 * a (n - 1) + a (n - 2)

end

end A041265.P4867592435535228165

noncomputable section

/-- A041265: Denominators of continued fraction convergents to sqrt(145).

Offset 0, canonical program `A041265.P4867592435535228165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041265 (n : ℕ) : ℤ :=
  (A041265.P4867592435535228165.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041271.P13733652415608658387

`146*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=145, a(3)=876`
-/

namespace A041271.P13733652415608658387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 145, 876] fun n a =>
  146 * a (n - 2) - a (n - 4)

end

end A041271.P13733652415608658387

noncomputable section

/-- A041271: Denominators of continued fraction convergents to sqrt(148).

Offset 0, canonical program `A041271.P13733652415608658387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041271 (n : ℕ) : ℤ :=
  A041271.P13733652415608658387.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041275.P8845619507041156250

`98*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=97, a(3)=392`
-/

namespace A041275.P8845619507041156250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 97, 392] fun n a =>
  98 * a (n - 2) - a (n - 4)

end

end A041275.P8845619507041156250

noncomputable section

/-- A041275: Denominators of continued fraction convergents to sqrt(150).

Offset 0, canonical program `A041275.P8845619507041156250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041275 (n : ℕ) : ℤ :=
  A041275.P8845619507041156250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041279.P17990484177050140652

`74*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=73, a(3)=222`
-/

namespace A041279.P17990484177050140652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 73, 222] fun n a =>
  74 * a (n - 2) - a (n - 4)

end

end A041279.P17990484177050140652

noncomputable section

/-- A041279: Denominators of continued fraction convergents to sqrt(152).

Offset 0, canonical program `A041279.P17990484177050140652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041279 (n : ℕ) : ℤ :=
  A041279.P17990484177050140652.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041311.P2325186195107379565

`26*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=25, a(3)=26`
-/

namespace A041311.P2325186195107379565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 25, 26] fun n a =>
  26 * a (n - 2) - a (n - 4)

end

end A041311.P2325186195107379565

noncomputable section

/-- A041311: Denominators of continued fraction convergents to sqrt(168).

Offset 0, canonical program `A041311.P2325186195107379565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041311 (n : ℕ) : ℤ :=
  A041311.P2325186195107379565.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041312.P15883561088714022904

`26*a(n-1)+a(n-2)` with `a(0)=13, a(1)=339`
-/

namespace A041312.P15883561088714022904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13, 339] fun n a =>
  26 * a (n - 1) + a (n - 2)

end

end A041312.P15883561088714022904

noncomputable section

/-- A041312: Numerators of continued fraction convergents to sqrt(170).

Offset 0, canonical program `A041312.P15883561088714022904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041312 (n : ℕ) : ℤ :=
  (A041312.P15883561088714022904.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041313.P6128928753998715381

`26*a(n-1)+a(n-2)` with `a(0)=1, a(1)=26`
-/

namespace A041313.P6128928753998715381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 26] fun n a =>
  26 * a (n - 1) + a (n - 2)

end

end A041313.P6128928753998715381

noncomputable section

/-- A041313: Denominators of continued fraction convergents to sqrt(170).

Offset 0, canonical program `A041313.P6128928753998715381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041313 (n : ℕ) : ℤ :=
  (A041313.P6128928753998715381.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041337.P13627468944054800501

`54*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=53, a(3)=108`
-/

namespace A041337.P13627468944054800501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 53, 108] fun n a =>
  54 * a (n - 2) - a (n - 4)

end

end A041337.P13627468944054800501

noncomputable section

/-- A041337: Denominators of continued fraction convergents to sqrt(182).

Offset 0, canonical program `A041337.P13627468944054800501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041337 (n : ℕ) : ℤ :=
  A041337.P13627468944054800501.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041343.P3958583122076330670

`136*a(n-5)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=133, a(6)=138, a(7)=271, a(8)=409, a(9)=680`
-/

namespace A041343.P3958583122076330670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 133, 138, 271, 409, 680] fun n a =>
  136 * a (n - 5) + a (n - 10)

end

end A041343.P3958583122076330670

noncomputable section

/-- A041343: Denominators of continued fraction convergents to sqrt(185).

Offset 0, canonical program `A041343.P3958583122076330670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041343 (n : ℕ) : ℤ :=
  (A041343.P3958583122076330670.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041351.P2952019018534820385

`110*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=107, a(5)=111, a(6)=329, a(7)=440`
-/

namespace A041351.P2952019018534820385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 107, 111, 329, 440] fun n a =>
  110 * a (n - 4) - a (n - 8)

end

end A041351.P2952019018534820385

noncomputable section

/-- A041351: Denominators of continued fraction convergents to sqrt(189).

Offset 0, canonical program `A041351.P2952019018534820385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041351 (n : ℕ) : ℤ :=
  A041351.P2952019018534820385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041363.P1149795143717309265

`28*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=27, a(3)=28`
-/

namespace A041363.P1149795143717309265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 27, 28] fun n a =>
  28 * a (n - 2) - a (n - 4)

end

end A041363.P1149795143717309265

noncomputable section

/-- A041363: Denominators of continued fraction convergents to sqrt(195).

Offset 0, canonical program `A041363.P1149795143717309265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041363 (n : ℕ) : ℤ :=
  A041363.P1149795143717309265.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041364.P10512068196893400626

`28*a(n-1)+a(n-2)` with `a(0)=14, a(1)=393`
-/

namespace A041364.P10512068196893400626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 393] fun n a =>
  28 * a (n - 1) + a (n - 2)

end

end A041364.P10512068196893400626

noncomputable section

/-- A041364: Numerators of continued fraction convergents to sqrt(197).

Offset 0, canonical program `A041364.P10512068196893400626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041364 (n : ℕ) : ℤ :=
  (A041364.P10512068196893400626.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041365.P10284069409435062416

`28*a(n-1)+a(n-2)` with `a(0)=1, a(1)=28`
-/

namespace A041365.P10284069409435062416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 28] fun n a =>
  28 * a (n - 1) + a (n - 2)

end

end A041365.P10284069409435062416

noncomputable section

/-- A041365: Denominators of continued fraction convergents to sqrt(197).

Offset 0, canonical program `A041365.P10284069409435062416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041365 (n : ℕ) : ℤ :=
  (A041365.P10284069409435062416.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041377.P1598313564662933863

`114*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=113, a(3)=456`
-/

namespace A041377.P1598313564662933863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 113, 456] fun n a =>
  114 * a (n - 2) - a (n - 4)

end

end A041377.P1598313564662933863

noncomputable section

/-- A041377: Denominators of continued fraction convergents to sqrt(203).

Offset 0, canonical program `A041377.P1598313564662933863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041377 (n : ℕ) : ℤ :=
  A041377.P1598313564662933863.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041391.P10586969447159010185

`58*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=57, a(3)=116`
-/

namespace A041391.P10586969447159010185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 57, 116] fun n a =>
  58 * a (n - 2) - a (n - 4)

end

end A041391.P10586969447159010185

noncomputable section

/-- A041391: Denominators of continued fraction convergents to sqrt(210).

Offset 0, canonical program `A041391.P10586969447159010185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041391 (n : ℕ) : ℤ :=
  A041391.P10586969447159010185.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041401.P17432966003171759748

`88*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=86, a(5)=89, a(6)=175, a(7)=264`
-/

namespace A041401.P17432966003171759748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 86, 89, 175, 264] fun n a =>
  88 * a (n - 4) - a (n - 8)

end

end A041401.P17432966003171759748

noncomputable section

/-- A041401: Denominators of continued fraction convergents to sqrt(215).

Offset 0, canonical program `A041401.P17432966003171759748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041401 (n : ℕ) : ℤ :=
  A041401.P17432966003171759748.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041409.P15518734348747516297

`148*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=144, a(5)=149, a(6)=591, a(7)=740`
-/

namespace A041409.P15518734348747516297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5, 144, 149, 591, 740] fun n a =>
  148 * a (n - 4) - a (n - 8)

end

end A041409.P15518734348747516297

noncomputable section

/-- A041409: Denominators of continued fraction convergents to sqrt(219).

Offset 0, canonical program `A041409.P15518734348747516297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041409 (n : ℕ) : ℤ :=
  A041409.P15518734348747516297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041409.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041419.P3900832587034244933

`30*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=29, a(3)=30`
-/

namespace A041419.P3900832587034244933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 29, 30] fun n a =>
  30 * a (n - 2) - a (n - 4)

end

end A041419.P3900832587034244933

noncomputable section

/-- A041419: Denominators of continued fraction convergents to sqrt(224).

Offset 0, canonical program `A041419.P3900832587034244933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041419 (n : ℕ) : ℤ :=
  A041419.P3900832587034244933.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041420.P18062741328420841028

`30*a(n-1)+a(n-2)` with `a(0)=15, a(1)=451`
-/

namespace A041420.P18062741328420841028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 451] fun n a =>
  30 * a (n - 1) + a (n - 2)

end

end A041420.P18062741328420841028

noncomputable section

/-- A041420: Numerators of continued fraction convergents to sqrt(226).

Offset 0, canonical program `A041420.P18062741328420841028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041420 (n : ℕ) : ℤ :=
  (A041420.P18062741328420841028.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041421.P13879902579617995261

`30*a(n-1)+a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A041421.P13879902579617995261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n a =>
  30 * a (n - 1) + a (n - 2)

end

end A041421.P13879902579617995261

noncomputable section

/-- A041421: Denominators of continued fraction convergents to sqrt(226).

Offset 0, canonical program `A041421.P13879902579617995261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041421 (n : ℕ) : ℤ :=
  (A041421.P13879902579617995261.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041431.P2027833437948310289

`152*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=151, a(3)=760`
-/

namespace A041431.P2027833437948310289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 151, 760] fun n a =>
  152 * a (n - 2) - a (n - 4)

end

end A041431.P2027833437948310289

noncomputable section

/-- A041431: Denominators of continued fraction convergents to sqrt(231).

Offset 0, canonical program `A041431.P2027833437948310289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041431 (n : ℕ) : ℤ :=
  A041431.P2027833437948310289.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041439.P10419158337699377257

`92*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=91, a(3)=276`
-/

namespace A041439.P10419158337699377257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 91, 276] fun n a =>
  92 * a (n - 2) - a (n - 4)

end

end A041439.P10419158337699377257

noncomputable section

/-- A041439: Denominators of continued fraction convergents to sqrt(235).

Offset 0, canonical program `A041439.P10419158337699377257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041439 (n : ℕ) : ℤ :=
  A041439.P10419158337699377257.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041449.P12210422637638911024

`62*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=61, a(3)=124`
-/

namespace A041449.P12210422637638911024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 61, 124] fun n a =>
  62 * a (n - 2) - a (n - 4)

end

end A041449.P12210422637638911024

noncomputable section

/-- A041449: Denominators of continued fraction convergents to sqrt(240).

Offset 0, canonical program `A041449.P12210422637638911024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041449 (n : ℕ) : ℤ :=
  A041449.P12210422637638911024.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041465.P14264061000374031653

`126*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=123, a(5)=127, a(6)=377, a(7)=504`
-/

namespace A041465.P14264061000374031653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 123, 127, 377, 504] fun n a =>
  126 * a (n - 4) - a (n - 8)

end

end A041465.P14264061000374031653

noncomputable section

/-- A041465: Denominators of continued fraction convergents to sqrt(248).

Offset 0, canonical program `A041465.P14264061000374031653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041465 (n : ℕ) : ℤ :=
  A041465.P14264061000374031653.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041478.P1179460211020322223

`32*a(n-2)-a(n-4)` with `a(0)=15, a(1)=16, a(2)=495, a(3)=511`
-/

namespace A041478.P1179460211020322223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 16, 495, 511] fun n a =>
  32 * a (n - 2) - a (n - 4)

end

end A041478.P1179460211020322223

noncomputable section

/-- A041478: Numerators of continued fraction convergents to sqrt(255).

Offset 0, canonical program `A041478.P1179460211020322223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041478 (n : ℕ) : ℤ :=
  A041478.P1179460211020322223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041479.P2925435912667457627

`32*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=31, a(3)=32`
-/

namespace A041479.P2925435912667457627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 31, 32] fun n a =>
  32 * a (n - 2) - a (n - 4)

end

end A041479.P2925435912667457627

noncomputable section

/-- A041479: Denominators of continued fraction convergents to sqrt(255).

Offset 0, canonical program `A041479.P2925435912667457627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041479 (n : ℕ) : ℤ :=
  A041479.P2925435912667457627.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041480.P9004111715685717379

`32*a(n-1)+a(n-2)` with `a(0)=16, a(1)=513`
-/

namespace A041480.P9004111715685717379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16, 513] fun n a =>
  32 * a (n - 1) + a (n - 2)

end

end A041480.P9004111715685717379

noncomputable section

/-- A041480: Numerators of continued fraction convergents to sqrt(257).

Offset 0, canonical program `A041480.P9004111715685717379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041480 (n : ℕ) : ℤ :=
  (A041480.P9004111715685717379.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041481.P15774706121313836305

`32*a(n-1)+a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A041481.P15774706121313836305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 32] fun n a =>
  32 * a (n - 1) + a (n - 2)

end

end A041481.P15774706121313836305

noncomputable section

/-- A041481: Denominators of continued fraction convergents to sqrt(257).

Offset 0, canonical program `A041481.P15774706121313836305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041481 (n : ℕ) : ℤ :=
  (A041481.P15774706121313836305.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041495.P14440834958764098737

`130*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=129, a(3)=520`
-/

namespace A041495.P14440834958764098737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 129, 520] fun n a =>
  130 * a (n - 2) - a (n - 4)

end

end A041495.P14440834958764098737

noncomputable section

/-- A041495: Denominators of continued fraction convergents to sqrt(264).

Offset 0, canonical program `A041495.P14440834958764098737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041495 (n : ℕ) : ℤ :=
  A041495.P14440834958764098737.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041505.P5522797116918286836

`164*a(n-3)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=162, a(4)=329, a(5)=820`
-/

namespace A041505.P5522797116918286836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 162, 329, 820] fun n a =>
  164 * a (n - 3) + a (n - 6)

end

end A041505.P5522797116918286836

noncomputable section

/-- A041505: Denominators of continued fraction convergents to sqrt(269).

Offset 0, canonical program `A041505.P5522797116918286836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041505 (n : ℕ) : ℤ :=
  (A041505.P5522797116918286836.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041511.P6997673176157051633

`66*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=65, a(3)=132`
-/

namespace A041511.P6997673176157051633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 65, 132] fun n a =>
  66 * a (n - 2) - a (n - 4)

end

end A041511.P6997673176157051633

noncomputable section

/-- A041511: Denominators of continued fraction convergents to sqrt(272).

Offset 0, canonical program `A041511.P6997673176157051633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041511 (n : ℕ) : ℤ :=
  A041511.P6997673176157051633.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041543.P16764524027776922696

`34*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=33, a(3)=34`
-/

namespace A041543.P16764524027776922696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 33, 34] fun n a =>
  34 * a (n - 2) - a (n - 4)

end

end A041543.P16764524027776922696

noncomputable section

/-- A041543: Denominators of continued fraction convergents to sqrt(288).

Offset 0, canonical program `A041543.P16764524027776922696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041543 (n : ℕ) : ℤ :=
  A041543.P16764524027776922696.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041544.P880033035995074248

`34*a(n-1)+a(n-2)` with `a(0)=17, a(1)=579`
-/

namespace A041544.P880033035995074248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17, 579] fun n a =>
  34 * a (n - 1) + a (n - 2)

end

end A041544.P880033035995074248

noncomputable section

/-- A041544: Numerators of continued fraction convergents to sqrt(290).

Offset 0, canonical program `A041544.P880033035995074248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041544 (n : ℕ) : ℤ :=
  (A041544.P880033035995074248.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041545.P9868295837258837890

`34*a(n-1)+a(n-2)` with `a(0)=1, a(1)=34`
-/

namespace A041545.P9868295837258837890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 34] fun n a =>
  34 * a (n - 1) + a (n - 2)

end

end A041545.P9868295837258837890

noncomputable section

/-- A041545: Denominators of continued fraction convergents to sqrt(290).

Offset 0, canonical program `A041545.P9868295837258837890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041545 (n : ℕ) : ℤ :=
  (A041545.P9868295837258837890.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041577.P544785945498735798

`70*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=69, a(3)=140`
-/

namespace A041577.P544785945498735798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 69, 140] fun n a =>
  70 * a (n - 2) - a (n - 4)

end

end A041577.P544785945498735798

noncomputable section

/-- A041577: Denominators of continued fraction convergents to sqrt(306).

Offset 0, canonical program `A041577.P544785945498735798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041577 (n : ℕ) : ℤ :=
  A041577.P544785945498735798.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041589.P14866040070306637471

`106*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=104, a(5)=107, a(6)=211, a(7)=318`
-/

namespace A041589.P14866040070306637471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 104, 107, 211, 318] fun n a =>
  106 * a (n - 4) - a (n - 8)

end

end A041589.P14866040070306637471

noncomputable section

/-- A041589: Denominators of continued fraction convergents to sqrt(312).

Offset 0, canonical program `A041589.P14866040070306637471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041589 (n : ℕ) : ℤ :=
  A041589.P14866040070306637471.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041595.P2806147427049675241

`142*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=139, a(5)=143, a(6)=425, a(7)=568`
-/

namespace A041595.P2806147427049675241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 139, 143, 425, 568] fun n a =>
  142 * a (n - 4) - a (n - 8)

end

end A041595.P2806147427049675241

noncomputable section

/-- A041595: Denominators of continued fraction convergents to sqrt(315).

Offset 0, canonical program `A041595.P2806147427049675241`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041595 (n : ℕ) : ℤ :=
  A041595.P2806147427049675241.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041611.P12058786132409492038

`36*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=35, a(3)=36`
-/

namespace A041611.P12058786132409492038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 35, 36] fun n a =>
  36 * a (n - 2) - a (n - 4)

end

end A041611.P12058786132409492038

noncomputable section

/-- A041611: Denominators of continued fraction convergents to sqrt(323).

Offset 0, canonical program `A041611.P12058786132409492038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041611 (n : ℕ) : ℤ :=
  A041611.P12058786132409492038.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041612.P6957339945434818278

`36*a(n-1)+a(n-2)` with `a(0)=18, a(1)=649`
-/

namespace A041612.P6957339945434818278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18, 649] fun n a =>
  36 * a (n - 1) + a (n - 2)

end

end A041612.P6957339945434818278

noncomputable section

/-- A041612: Numerators of continued fraction convergents to sqrt(325).

Offset 0, canonical program `A041612.P6957339945434818278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041612 (n : ℕ) : ℤ :=
  (A041612.P6957339945434818278.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041612.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041613.P2403638931395594304

`36*a(n-1)+a(n-2)` with `a(0)=1, a(1)=36`
-/

namespace A041613.P2403638931395594304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 36] fun n a =>
  36 * a (n - 1) + a (n - 2)

end

end A041613.P2403638931395594304

noncomputable section

/-- A041613: Denominators of continued fraction convergents to sqrt(325).

Offset 0, canonical program `A041613.P2403638931395594304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041613 (n : ℕ) : ℤ :=
  (A041613.P2403638931395594304.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041629.P5327938912499404061

`146*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=145, a(3)=584`
-/

namespace A041629.P5327938912499404061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 145, 584] fun n a =>
  146 * a (n - 2) - a (n - 4)

end

end A041629.P5327938912499404061

noncomputable section

/-- A041629: Denominators of continued fraction convergents to sqrt(333).

Offset 0, canonical program `A041629.P5327938912499404061`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041629 (n : ℕ) : ℤ :=
  A041629.P5327938912499404061.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041635.P1327258254238999232

`110*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=109, a(3)=330`
-/

namespace A041635.P1327258254238999232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 109, 330] fun n a =>
  110 * a (n - 2) - a (n - 4)

end

end A041635.P1327258254238999232

noncomputable section

/-- A041635: Denominators of continued fraction convergents to sqrt(336).

Offset 0, canonical program `A041635.P1327258254238999232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041635 (n : ℕ) : ℤ :=
  A041635.P1327258254238999232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041647.P1136085924018804956

`74*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=73, a(3)=148`
-/

namespace A041647.P1136085924018804956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 73, 148] fun n a =>
  74 * a (n - 2) - a (n - 4)

end

end A041647.P1136085924018804956

noncomputable section

/-- A041647: Denominators of continued fraction convergents to sqrt(342).

Offset 0, canonical program `A041647.P1136085924018804956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041647 (n : ℕ) : ℤ :=
  A041647.P1136085924018804956.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041655.P2193195156318384531

`186*a(n-5)+a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=183, a(6)=188, a(7)=371, a(8)=559, a(9)=930`
-/

namespace A041655.P2193195156318384531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3, 5, 183, 188, 371, 559, 930] fun n a =>
  186 * a (n - 5) + a (n - 10)

end

end A041655.P2193195156318384531

noncomputable section

/-- A041655: Denominators of continued fraction convergents to sqrt(346).

Offset 0, canonical program `A041655.P2193195156318384531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041655 (n : ℕ) : ℤ :=
  (A041655.P2193195156318384531.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041683.P3389279564901532009

`38*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=37, a(3)=38`
-/

namespace A041683.P3389279564901532009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 37, 38] fun n a =>
  38 * a (n - 2) - a (n - 4)

end

end A041683.P3389279564901532009

noncomputable section

/-- A041683: Denominators of continued fraction convergents to sqrt(360).

Offset 0, canonical program `A041683.P3389279564901532009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041683 (n : ℕ) : ℤ :=
  A041683.P3389279564901532009.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041684.P8616613432455966794

`38*a(n-1)+a(n-2)` with `a(0)=19, a(1)=723`
-/

namespace A041684.P8616613432455966794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19, 723] fun n a =>
  38 * a (n - 1) + a (n - 2)

end

end A041684.P8616613432455966794

noncomputable section

/-- A041684: Numerators of continued fraction convergents to sqrt(362).

Offset 0, canonical program `A041684.P8616613432455966794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041684 (n : ℕ) : ℤ :=
  (A041684.P8616613432455966794.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041685.P4120830428958114991

`38*a(n-1)+a(n-2)` with `a(0)=1, a(1)=38`
-/

namespace A041685.P4120830428958114991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 38] fun n a =>
  38 * a (n - 1) + a (n - 2)

end

end A041685.P4120830428958114991

noncomputable section

/-- A041685: Denominators of continued fraction convergents to sqrt(362).

Offset 0, canonical program `A041685.P4120830428958114991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041685 (n : ℕ) : ℤ :=
  (A041685.P4120830428958114991.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041721.P5451394667738300407

`78*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=77, a(3)=156`
-/

namespace A041721.P5451394667738300407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 77, 156] fun n a =>
  78 * a (n - 2) - a (n - 4)

end

end A041721.P5451394667738300407

noncomputable section

/-- A041721: Denominators of continued fraction convergents to sqrt(380).

Offset 0, canonical program `A041721.P5451394667738300407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041721 (n : ℕ) : ℤ :=
  A041721.P5451394667738300407.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041741.P733172070155889672

`158*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=155, a(5)=159, a(6)=473, a(7)=632`
-/

namespace A041741.P733172070155889672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 155, 159, 473, 632] fun n a =>
  158 * a (n - 4) - a (n - 8)

end

end A041741.P733172070155889672

noncomputable section

/-- A041741: Denominators of continued fraction convergents to sqrt(390).

Offset 0, canonical program `A041741.P733172070155889672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041741 (n : ℕ) : ℤ :=
  A041741.P733172070155889672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041745.P8095770582301270811

`198*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=194, a(5)=199, a(6)=791, a(7)=990`
-/

namespace A041745.P8095770582301270811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5, 194, 199, 791, 990] fun n a =>
  198 * a (n - 4) - a (n - 8)

end

end A041745.P8095770582301270811

noncomputable section

/-- A041745: Denominators of continued fraction convergents to sqrt(392).

Offset 0, canonical program `A041745.P8095770582301270811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041745 (n : ℕ) : ℤ :=
  A041745.P8095770582301270811.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041758.P6520470593257485859

`40*a(n-2)-a(n-4)` with `a(0)=19, a(1)=20, a(2)=779, a(3)=799`
-/

namespace A041758.P6520470593257485859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19, 20, 779, 799] fun n a =>
  40 * a (n - 2) - a (n - 4)

end

end A041758.P6520470593257485859

noncomputable section

/-- A041758: Numerators of continued fraction convergents to sqrt(399).

Offset 0, canonical program `A041758.P6520470593257485859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041758 (n : ℕ) : ℤ :=
  A041758.P6520470593257485859.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041759.P13973142953696513817

`40*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=39, a(3)=40`
-/

namespace A041759.P13973142953696513817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 39, 40] fun n a =>
  40 * a (n - 2) - a (n - 4)

end

end A041759.P13973142953696513817

noncomputable section

/-- A041759: Denominators of continued fraction convergents to sqrt(399).

Offset 0, canonical program `A041759.P13973142953696513817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041759 (n : ℕ) : ℤ :=
  A041759.P13973142953696513817.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041760.P10081993796438772787

`40*a(n-1)+a(n-2)` with `a(0)=20, a(1)=801`
-/

namespace A041760.P10081993796438772787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 801] fun n a =>
  40 * a (n - 1) + a (n - 2)

end

end A041760.P10081993796438772787

noncomputable section

/-- A041760: Numerators of continued fraction convergents to sqrt(401).

Offset 0, canonical program `A041760.P10081993796438772787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041760 (n : ℕ) : ℤ :=
  (A041760.P10081993796438772787.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041761.P2704753493485171128

`40*a(n-1)+a(n-2)` with `a(0)=1, a(1)=40`
-/

namespace A041761.P2704753493485171128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 40] fun n a =>
  40 * a (n - 1) + a (n - 2)

end

end A041761.P2704753493485171128

noncomputable section

/-- A041761: Denominators of continued fraction convergents to sqrt(401).

Offset 0, canonical program `A041761.P2704753493485171128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041761 (n : ℕ) : ℤ :=
  (A041761.P2704753493485171128.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041779.P16402720629806633835

`162*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=161, a(3)=648`
-/

namespace A041779.P16402720629806633835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 161, 648] fun n a =>
  162 * a (n - 2) - a (n - 4)

end

end A041779.P16402720629806633835

noncomputable section

/-- A041779: Denominators of continued fraction convergents to sqrt(410).

Offset 0, canonical program `A041779.P16402720629806633835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041779 (n : ℕ) : ℤ :=
  A041779.P16402720629806633835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041799.P597886608994119478

`82*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=81, a(3)=164`
-/

namespace A041799.P597886608994119478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 81, 164] fun n a =>
  82 * a (n - 2) - a (n - 4)

end

end A041799.P597886608994119478

noncomputable section

/-- A041799: Denominators of continued fraction convergents to sqrt(420).

Offset 0, canonical program `A041799.P597886608994119478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041799 (n : ℕ) : ℤ :=
  A041799.P597886608994119478.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041813.P14285426618148577988

`124*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=122, a(5)=125, a(6)=247, a(7)=372`
-/

namespace A041813.P14285426618148577988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 122, 125, 247, 372] fun n a =>
  124 * a (n - 4) - a (n - 8)

end

end A041813.P14285426618148577988

noncomputable section

/-- A041813: Denominators of continued fraction convergents to sqrt(427).

Offset 0, canonical program `A041813.P14285426618148577988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041813 (n : ℕ) : ℤ :=
  A041813.P14285426618148577988.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041838.P13543000929243583135

`42*a(n-2)-a(n-4)` with `a(0)=20, a(1)=21, a(2)=860, a(3)=881`
-/

namespace A041838.P13543000929243583135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [20, 21, 860, 881] fun n a =>
  42 * a (n - 2) - a (n - 4)

end

end A041838.P13543000929243583135

noncomputable section

/-- A041838: Numerators of continued fraction convergents to sqrt(440).

Offset 0, canonical program `A041838.P13543000929243583135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041838 (n : ℕ) : ℤ :=
  A041838.P13543000929243583135.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041839.P6147353731586544628

`42*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=41, a(3)=42`
-/

namespace A041839.P6147353731586544628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 41, 42] fun n a =>
  42 * a (n - 2) - a (n - 4)

end

end A041839.P6147353731586544628

noncomputable section

/-- A041839: Denominators of continued fraction convergents to sqrt(440).

Offset 0, canonical program `A041839.P6147353731586544628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041839 (n : ℕ) : ℤ :=
  A041839.P6147353731586544628.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041840.P15357013018955268593

`42*a(n-1)+a(n-2)` with `a(0)=21, a(1)=883`
-/

namespace A041840.P15357013018955268593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 883] fun n a =>
  42 * a (n - 1) + a (n - 2)

end

end A041840.P15357013018955268593

noncomputable section

/-- A041840: Numerators of continued fraction convergents to sqrt(442).

Offset 0, canonical program `A041840.P15357013018955268593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041840 (n : ℕ) : ℤ :=
  (A041840.P15357013018955268593.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041841.P8169203391059113414

`42*a(n-1)+a(n-2)` with `a(0)=1, a(1)=42`
-/

namespace A041841.P8169203391059113414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 42] fun n a =>
  42 * a (n - 1) + a (n - 2)

end

end A041841.P8169203391059113414

noncomputable section

/-- A041841: Denominators of continued fraction convergents to sqrt(442).

Offset 0, canonical program `A041841.P8169203391059113414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041841 (n : ℕ) : ℤ :=
  (A041841.P8169203391059113414.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041867.P8436151594845562776

`128*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=127, a(3)=384`
-/

namespace A041867.P8436151594845562776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 127, 384] fun n a =>
  128 * a (n - 2) - a (n - 4)

end

end A041867.P8436151594845562776

noncomputable section

/-- A041867: Denominators of continued fraction convergents to sqrt(455).

Offset 0, canonical program `A041867.P8436151594845562776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041867 (n : ℕ) : ℤ :=
  A041867.P8436151594845562776.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041867.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041881.P3494221726450464264

`86*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=85, a(3)=172`
-/

namespace A041881.P3494221726450464264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 85, 172] fun n a =>
  86 * a (n - 2) - a (n - 4)

end

end A041881.P3494221726450464264

noncomputable section

/-- A041881: Denominators of continued fraction convergents to sqrt(462).

Offset 0, canonical program `A041881.P3494221726450464264`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041881 (n : ℕ) : ℤ :=
  A041881.P3494221726450464264.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041903.P8008674223263072293

`174*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=171, a(5)=175, a(6)=521, a(7)=696`
-/

namespace A041903.P8008674223263072293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 171, 175, 521, 696] fun n a =>
  174 * a (n - 4) - a (n - 8)

end

end A041903.P8008674223263072293

noncomputable section

/-- A041903: Denominators of continued fraction convergents to sqrt(473).

Offset 0, canonical program `A041903.P8008674223263072293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041903 (n : ℕ) : ℤ :=
  A041903.P8008674223263072293.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041922.P2751656773947299227

`44*a(n-2)-a(n-4)` with `a(0)=21, a(1)=22, a(2)=945, a(3)=967`
-/

namespace A041922.P2751656773947299227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [21, 22, 945, 967] fun n a =>
  44 * a (n - 2) - a (n - 4)

end

end A041922.P2751656773947299227

noncomputable section

/-- A041922: Numerators of continued fraction convergents to sqrt(483).

Offset 0, canonical program `A041922.P2751656773947299227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041922 (n : ℕ) : ℤ :=
  A041922.P2751656773947299227.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041923.P13341697187303893232

`44*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=43, a(3)=44`
-/

namespace A041923.P13341697187303893232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 43, 44] fun n a =>
  44 * a (n - 2) - a (n - 4)

end

end A041923.P13341697187303893232

noncomputable section

/-- A041923: Denominators of continued fraction convergents to sqrt(483).

Offset 0, canonical program `A041923.P13341697187303893232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041923 (n : ℕ) : ℤ :=
  A041923.P13341697187303893232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041924.P3482193164427378553

`44*a(n-1)+a(n-2)` with `a(0)=22, a(1)=969`
-/

namespace A041924.P3482193164427378553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 969] fun n a =>
  44 * a (n - 1) + a (n - 2)

end

end A041924.P3482193164427378553

noncomputable section

/-- A041924: Numerators of continued fraction convergents to sqrt(485).

Offset 0, canonical program `A041924.P3482193164427378553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041924 (n : ℕ) : ℤ :=
  (A041924.P3482193164427378553.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041925.P15583635226805764172

`44*a(n-1)+a(n-2)` with `a(0)=1, a(1)=44`
-/

namespace A041925.P15583635226805764172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 44] fun n a =>
  44 * a (n - 1) + a (n - 2)

end

end A041925.P15583635226805764172

noncomputable section

/-- A041925: Denominators of continued fraction convergents to sqrt(485).

Offset 0, canonical program `A041925.P15583635226805764172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041925 (n : ℕ) : ℤ :=
  (A041925.P15583635226805764172.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041945.P17094087469757302406

`178*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=177, a(3)=712`
-/

namespace A041945.P17094087469757302406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 177, 712] fun n a =>
  178 * a (n - 2) - a (n - 4)

end

end A041945.P17094087469757302406

noncomputable section

/-- A041945: Denominators of continued fraction convergents to sqrt(495).

Offset 0, canonical program `A041945.P17094087469757302406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041945 (n : ℕ) : ℤ :=
  A041945.P17094087469757302406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A041967.P18374034172772300654

`90*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=89, a(3)=180`
-/

namespace A041967.P18374034172772300654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 89, 180] fun n a =>
  90 * a (n - 2) - a (n - 4)

end

end A041967.P18374034172772300654

noncomputable section

/-- A041967: Denominators of continued fraction convergents to sqrt(506).

Offset 0, canonical program `A041967.P18374034172772300654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041967 (n : ℕ) : ℤ :=
  A041967.P18374034172772300654.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A041967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042011.P5938054614525699218

`46*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=45, a(3)=46`
-/

namespace A042011.P5938054614525699218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 45, 46] fun n a =>
  46 * a (n - 2) - a (n - 4)

end

end A042011.P5938054614525699218

noncomputable section

/-- A042011: Denominators of continued fraction convergents to sqrt(528).

Offset 0, canonical program `A042011.P5938054614525699218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042011 (n : ℕ) : ℤ :=
  A042011.P5938054614525699218.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042013.P12544524084972164989

`46*a(n-1)+a(n-2)` with `a(0)=1, a(1)=46`
-/

namespace A042013.P12544524084972164989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 46] fun n a =>
  46 * a (n - 1) + a (n - 2)

end

end A042013.P12544524084972164989

noncomputable section

/-- A042013: Denominators of continued fraction convergents to sqrt(530).

Offset 0, canonical program `A042013.P12544524084972164989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042013 (n : ℕ) : ℤ :=
  (A042013.P12544524084972164989.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042013.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042057.P10314496583342700959

`94*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=93, a(3)=188`
-/

namespace A042057.P10314496583342700959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 93, 188] fun n a =>
  94 * a (n - 2) - a (n - 4)

end

end A042057.P10314496583342700959

noncomputable section

/-- A042057: Denominators of continued fraction convergents to sqrt(552).

Offset 0, canonical program `A042057.P10314496583342700959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042057 (n : ℕ) : ℤ :=
  A042057.P10314496583342700959.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042081.P11255694292900634675

`190*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=187, a(5)=191, a(6)=569, a(7)=760`
-/

namespace A042081.P11255694292900634675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 187, 191, 569, 760] fun n a =>
  190 * a (n - 4) - a (n - 8)

end

end A042081.P11255694292900634675

noncomputable section

/-- A042081: Denominators of continued fraction convergents to sqrt(564).

Offset 0, canonical program `A042081.P11255694292900634675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042081 (n : ℕ) : ℤ :=
  A042081.P11255694292900634675.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042103.P1497681573511559934

`48*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=47, a(3)=48`
-/

namespace A042103.P1497681573511559934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 47, 48] fun n a =>
  48 * a (n - 2) - a (n - 4)

end

end A042103.P1497681573511559934

noncomputable section

/-- A042103: Denominators of continued fraction convergents to sqrt(575).

Offset 0, canonical program `A042103.P1497681573511559934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042103 (n : ℕ) : ℤ :=
  A042103.P1497681573511559934.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042103.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042105.P17037170167803502363

`48*a(n-1)+a(n-2)` with `a(0)=1, a(1)=48`
-/

namespace A042105.P17037170167803502363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 48] fun n a =>
  48 * a (n - 1) + a (n - 2)

end

end A042105.P17037170167803502363

noncomputable section

/-- A042105: Denominators of continued fraction convergents to sqrt(577).

Offset 0, canonical program `A042105.P17037170167803502363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042105 (n : ℕ) : ℤ :=
  (A042105.P17037170167803502363.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042127.P11072726425988701643

`194*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=193, a(3)=776`
-/

namespace A042127.P11072726425988701643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 193, 776] fun n a =>
  194 * a (n - 2) - a (n - 4)

end

end A042127.P11072726425988701643

noncomputable section

/-- A042127: Denominators of continued fraction convergents to sqrt(588).

Offset 0, canonical program `A042127.P11072726425988701643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042127 (n : ℕ) : ℤ :=
  A042127.P11072726425988701643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042135.P10074391598035256981

`146*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=145, a(3)=438`
-/

namespace A042135.P10074391598035256981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 145, 438] fun n a =>
  146 * a (n - 2) - a (n - 4)

end

end A042135.P10074391598035256981

noncomputable section

/-- A042135: Denominators of continued fraction convergents to sqrt(592).

Offset 0, canonical program `A042135.P10074391598035256981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042135 (n : ℕ) : ℤ :=
  A042135.P10074391598035256981.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042151.P8442895041224723279

`98*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=97, a(3)=196`
-/

namespace A042151.P8442895041224723279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 97, 196] fun n a =>
  98 * a (n - 2) - a (n - 4)

end

end A042151.P8442895041224723279

noncomputable section

/-- A042151: Denominators of continued fraction convergents to sqrt(600).

Offset 0, canonical program `A042151.P8442895041224723279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042151 (n : ℕ) : ℤ :=
  A042151.P8442895041224723279.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042201.P6551765343286267054

`50*a(n-1)+a(n-2)` with `a(0)=1, a(1)=50`
-/

namespace A042201.P6551765343286267054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 50] fun n a =>
  50 * a (n - 1) + a (n - 2)

end

end A042201.P6551765343286267054

noncomputable section

/-- A042201: Denominators of continued fraction convergents to sqrt(626).

Offset 0, canonical program `A042201.P6551765343286267054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042201 (n : ℕ) : ℤ :=
  (A042201.P6551765343286267054.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042249.P11205344450646246908

`102*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=101, a(3)=204`
-/

namespace A042249.P11205344450646246908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 101, 204] fun n a =>
  102 * a (n - 2) - a (n - 4)

end

end A042249.P11205344450646246908

noncomputable section

/-- A042249: Denominators of continued fraction convergents to sqrt(650).

Offset 0, canonical program `A042249.P11205344450646246908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042249 (n : ℕ) : ℤ :=
  A042249.P11205344450646246908.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042275.P1030660677313211527

`206*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=203, a(5)=207, a(6)=617, a(7)=824`
-/

namespace A042275.P1030660677313211527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 203, 207, 617, 824] fun n a =>
  206 * a (n - 4) - a (n - 8)

end

end A042275.P1030660677313211527

noncomputable section

/-- A042275: Denominators of continued fraction convergents to sqrt(663).

Offset 0, canonical program `A042275.P1030660677313211527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042275 (n : ℕ) : ℤ :=
  A042275.P1030660677313211527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042299.P6682768256537634380

`52*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=51, a(3)=52`
-/

namespace A042299.P6682768256537634380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 51, 52] fun n a =>
  52 * a (n - 2) - a (n - 4)

end

end A042299.P6682768256537634380

noncomputable section

/-- A042299: Denominators of continued fraction convergents to sqrt(675).

Offset 0, canonical program `A042299.P6682768256537634380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042299 (n : ℕ) : ℤ :=
  A042299.P6682768256537634380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042301.P8330644888705433085

`52*a(n-1)+a(n-2)` with `a(0)=1, a(1)=52`
-/

namespace A042301.P8330644888705433085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 52] fun n a =>
  52 * a (n - 1) + a (n - 2)

end

end A042301.P8330644888705433085

noncomputable section

/-- A042301: Denominators of continued fraction convergents to sqrt(677).

Offset 0, canonical program `A042301.P8330644888705433085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042301 (n : ℕ) : ℤ :=
  (A042301.P8330644888705433085.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042325.P4212600164347450776

`210*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=209, a(3)=840`
-/

namespace A042325.P4212600164347450776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 209, 840] fun n a =>
  210 * a (n - 2) - a (n - 4)

end

end A042325.P4212600164347450776

noncomputable section

/-- A042325: Denominators of continued fraction convergents to sqrt(689).

Offset 0, canonical program `A042325.P4212600164347450776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042325 (n : ℕ) : ℤ :=
  A042325.P4212600164347450776.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042351.P9477665814424271680

`106*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=105, a(3)=212`
-/

namespace A042351.P9477665814424271680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 105, 212] fun n a =>
  106 * a (n - 2) - a (n - 4)

end

end A042351.P9477665814424271680

noncomputable section

/-- A042351: Denominators of continued fraction convergents to sqrt(702).

Offset 0, canonical program `A042351.P9477665814424271680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042351 (n : ℕ) : ℤ :=
  A042351.P9477665814424271680.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042403.P309998127687783611

`54*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=53, a(3)=54`
-/

namespace A042403.P309998127687783611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 53, 54] fun n a =>
  54 * a (n - 2) - a (n - 4)

end

end A042403.P309998127687783611

noncomputable section

/-- A042403: Denominators of continued fraction convergents to sqrt(728).

Offset 0, canonical program `A042403.P309998127687783611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042403 (n : ℕ) : ℤ :=
  A042403.P309998127687783611.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042405.P6878399625632336921

`54*a(n-1)+a(n-2)` with `a(0)=1, a(1)=54`
-/

namespace A042405.P6878399625632336921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 54] fun n a =>
  54 * a (n - 1) + a (n - 2)

end

end A042405.P6878399625632336921

noncomputable section

/-- A042405: Denominators of continued fraction convergents to sqrt(730).

Offset 0, canonical program `A042405.P6878399625632336921`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042405 (n : ℕ) : ℤ :=
  (A042405.P6878399625632336921.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042405.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042485.P17330649644404306320

`222*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=219, a(5)=223, a(6)=665, a(7)=888`
-/

namespace A042485.P17330649644404306320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 219, 223, 665, 888] fun n a =>
  222 * a (n - 4) - a (n - 8)

end

end A042485.P17330649644404306320

noncomputable section

/-- A042485: Denominators of continued fraction convergents to sqrt(770).

Offset 0, canonical program `A042485.P17330649644404306320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042485 (n : ℕ) : ℤ :=
  A042485.P17330649644404306320.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042513.P7842400077651823684

`56*a(n-1)+a(n-2)` with `a(0)=1, a(1)=56`
-/

namespace A042513.P7842400077651823684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 56] fun n a =>
  56 * a (n - 1) + a (n - 2)

end

end A042513.P7842400077651823684

noncomputable section

/-- A042513: Denominators of continued fraction convergents to sqrt(785).

Offset 0, canonical program `A042513.P7842400077651823684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042513 (n : ℕ) : ℤ :=
  (A042513.P7842400077651823684.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042625.P5308660141614182645

`58*a(n-1)+a(n-2)` with `a(0)=1, a(1)=58`
-/

namespace A042625.P5308660141614182645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 58] fun n a =>
  58 * a (n - 1) + a (n - 2)

end

end A042625.P5308660141614182645

noncomputable section

/-- A042625: Denominators of continued fraction convergents to sqrt(842).

Offset 0, canonical program `A042625.P5308660141614182645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042625 (n : ℕ) : ℤ :=
  (A042625.P5308660141614182645.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042681.P17189706849187608597

`118*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=117, a(3)=236`
-/

namespace A042681.P17189706849187608597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 117, 236] fun n a =>
  118 * a (n - 2) - a (n - 4)

end

end A042681.P17189706849187608597

noncomputable section

/-- A042681: Denominators of continued fraction convergents to sqrt(870).

Offset 0, canonical program `A042681.P17189706849187608597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042681 (n : ℕ) : ℤ :=
  A042681.P17189706849187608597.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042681.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042701.P15143850389810158012

`178*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=176, a(5)=179, a(6)=355, a(7)=534`
-/

namespace A042701.P15143850389810158012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 176, 179, 355, 534] fun n a =>
  178 * a (n - 4) - a (n - 8)

end

end A042701.P15143850389810158012

noncomputable section

/-- A042701: Denominators of continued fraction convergents to sqrt(880).

Offset 0, canonical program `A042701.P15143850389810158012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042701 (n : ℕ) : ℤ :=
  A042701.P15143850389810158012.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042711.P2511236996821012059

`238*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=235, a(5)=239, a(6)=713, a(7)=952`
-/

namespace A042711.P2511236996821012059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 235, 239, 713, 952] fun n a =>
  238 * a (n - 4) - a (n - 8)

end

end A042711.P2511236996821012059

noncomputable section

/-- A042711: Denominators of continued fraction convergents to sqrt(885).

Offset 0, canonical program `A042711.P2511236996821012059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042711 (n : ℕ) : ℤ :=
  A042711.P2511236996821012059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042741.P12330609725824249185

`60*a(n-1)+a(n-2)` with `a(0)=1, a(1)=60`
-/

namespace A042741.P12330609725824249185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 60] fun n a =>
  60 * a (n - 1) + a (n - 2)

end

end A042741.P12330609725824249185

noncomputable section

/-- A042741: Denominators of continued fraction convergents to sqrt(901).

Offset 0, canonical program `A042741.P12330609725824249185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042741 (n : ℕ) : ℤ :=
  (A042741.P12330609725824249185.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042779.P12234492336992913476

`182*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=181, a(3)=546`
-/

namespace A042779.P12234492336992913476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 181, 546] fun n a =>
  182 * a (n - 2) - a (n - 4)

end

end A042779.P12234492336992913476

noncomputable section

/-- A042779: Denominators of continued fraction convergents to sqrt(920).

Offset 0, canonical program `A042779.P12234492336992913476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042779 (n : ℕ) : ℤ :=
  A042779.P12234492336992913476.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042799.P10197429628805452537

`122*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=121, a(3)=244`
-/

namespace A042799.P10197429628805452537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 121, 244] fun n a =>
  122 * a (n - 2) - a (n - 4)

end

end A042799.P10197429628805452537

noncomputable section

/-- A042799: Denominators of continued fraction convergents to sqrt(930).

Offset 0, canonical program `A042799.P10197429628805452537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042799 (n : ℕ) : ℤ :=
  A042799.P10197429628805452537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042859.P17928880354735713203

`62*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=61, a(3)=62`
-/

namespace A042859.P17928880354735713203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 61, 62] fun n a =>
  62 * a (n - 2) - a (n - 4)

end

end A042859.P17928880354735713203

noncomputable section

/-- A042859: Denominators of continued fraction convergents to sqrt(960).

Offset 0, canonical program `A042859.P17928880354735713203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042859 (n : ℕ) : ℤ :=
  A042859.P17928880354735713203.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042861.P1691232867620787353

`62*a(n-1)+a(n-2)` with `a(0)=1, a(1)=62`
-/

namespace A042861.P1691232867620787353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 62] fun n a =>
  62 * a (n - 1) + a (n - 2)

end

end A042861.P1691232867620787353

noncomputable section

/-- A042861: Denominators of continued fraction convergents to sqrt(962).

Offset 0, canonical program `A042861.P1691232867620787353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042861 (n : ℕ) : ℤ :=
  (A042861.P1691232867620787353.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042921.P10480164338277351648

`126*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=125, a(3)=252`
-/

namespace A042921.P10480164338277351648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 125, 252] fun n a =>
  126 * a (n - 2) - a (n - 4)

end

end A042921.P10480164338277351648

noncomputable section

/-- A042921: Denominators of continued fraction convergents to sqrt(992).

Offset 0, canonical program `A042921.P10480164338277351648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042921 (n : ℕ) : ℤ :=
  A042921.P10480164338277351648.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042948.P9013836715611112494

`2*n-n%2`
-/

namespace A042948.P9013836715611112494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A042948.P9013836715611112494

noncomputable section

/-- A042948: Numbers congruent to 0 or 1 (mod 4).

Offset 0, canonical program `A042948.P9013836715611112494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042948 (n : ℕ) : ℤ :=
  A042948.P9013836715611112494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042948.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042950.P4347672096873643109

`2*a(n-1)` with `a(0)=2, a(1)=3`
-/

namespace A042950.P4347672096873643109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  2 * a (n - 1)

end

end A042950.P4347672096873643109

noncomputable section

/-- A042950: Row sums of the Lucas triangle A029635.

Offset 0, canonical program `A042950.P4347672096873643109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042950 (n : ℕ) : ℤ :=
  (A042950.P4347672096873643109.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042963.P11635336803611203388

`a(n-1)+2+(-1)^n` with `a(0)=1`
-/

namespace A042963.P11635336803611203388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 + (-1) ^ n)

end

end A042963.P11635336803611203388

noncomputable section

/-- A042963: Numbers congruent to 1 or 2 mod 4.

Offset 1, canonical program `A042963.P11635336803611203388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042963 (n : ℕ) : ℤ :=
  A042963.P11635336803611203388.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042964.P17251757382978659508

`2*n+2-n%2`
-/

namespace A042964.P17251757382978659508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (2 - ((n % 2 : ℕ) : ℤ))

end

end A042964.P17251757382978659508

noncomputable section

/-- A042964: Numbers that are congruent to 2 or 3 mod 4.

Offset 1, canonical program `A042964.P17251757382978659508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042964 (n : ℕ) : ℤ :=
  A042964.P17251757382978659508.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042965.P10256174339092268817

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A042965.P10256174339092268817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A042965.P10256174339092268817

noncomputable section

/-- A042965: Nonnegative integers not congruent to 2 mod 4.

Offset 1, canonical program `A042965.P10256174339092268817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042965 (n : ℕ) : ℤ :=
  A042965.P10256174339092268817.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042968.P6108724829749735077

`floor((4*n+3)/3)`
-/

namespace A042968.P6108724829749735077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * n + 3 : ℚ) / 3⌋

end

end A042968.P6108724829749735077

noncomputable section

/-- A042968: Numbers not divisible by 4.

Offset 1, canonical program `A042968.P6108724829749735077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042968 (n : ℕ) : ℤ :=
  A042968.P6108724829749735077.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042984.P3537868922700591161

`1+10*n+27*C(n, 2)+28*C(n, 3)+11*C(n, 4)+C(n, 5)`
-/

namespace A042984.P3537868922700591161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 10 * n + 27 * Nat.choose n 2 + 28 * Nat.choose n 3 + 11 * Nat.choose n 4 + Nat.choose n 5

end

end A042984.P3537868922700591161

noncomputable section

/-- A042984: Number of n-dimensional partitions of 6.

Offset 0, canonical program `A042984.P3537868922700591161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042984 (n : ℕ) : ℤ :=
  (A042984.P3537868922700591161.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A042984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A043291.P14424377653976249789

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=3, a(1)=12, a(2)=51`
-/

namespace A043291.P14424377653976249789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 51] fun n a =>
  4 * a (n - 1) + a (n - 2) - 4 * a (n - 3)

end

end A043291.P14424377653976249789

noncomputable section

/-- A043291: Every run length in base 2 is 2.

Offset 1, canonical program `A043291.P14424377653976249789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043291 (n : ℕ) : ℤ :=
  A043291.P14424377653976249789.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A043301.P6552819237689946243

`(2*n-1)*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A043301.P6552819237689946243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) + 4 * a (n - 2)

end

end A043301.P6552819237689946243

noncomputable section

/-- A043301: a(n) = 2^n*Sum_{k=0..n} (n+k)!/((n-k)!*k!*4^k).

Offset 0, canonical program `A043301.P6552819237689946243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043301 (n : ℕ) : ℤ :=
  A043301.P6552819237689946243.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A043547.P15018840364979935028

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A043547.P15018840364979935028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A043547.P15018840364979935028

noncomputable section

/-- A043547: Odd numbers interspersed with double the previous odd number.

Offset 1, canonical program `A043547.P15018840364979935028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043547 (n : ℕ) : ℤ :=
  A043547.P15018840364979935028.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A044102.P13317920450440868156

`36*n`
-/

namespace A044102.P13317920450440868156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n

end

end A044102.P13317920450440868156

noncomputable section

/-- A044102: Multiples of 36.

Offset 0, canonical program `A044102.P13317920450440868156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A044102 (n : ℕ) : ℤ :=
  (A044102.P13317920450440868156.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A044102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045572.P18317542979015778143

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9, a(4)=11`
-/

namespace A045572.P18317542979015778143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 9, 11] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A045572.P18317542979015778143

noncomputable section

/-- A045572: Numbers that are odd but not divisible by 5.

Offset 1, canonical program `A045572.P18317542979015778143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045572 (n : ℕ) : ℤ :=
  A045572.P18317542979015778143.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045618.P6741576825201584425

`n+5+(n-1)*2^(n+2)`
-/

namespace A045618.P6741576825201584425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (5 + ((n : ℤ) - 1) * (2 ^ (n + 2) : ℤ))

end

end A045618.P6741576825201584425

noncomputable section

/-- A045618: Partial sums of A000337(n+4), n >= 0.

Offset 0, canonical program `A045618.P6741576825201584425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045618 (n : ℕ) : ℤ :=
  A045618.P6741576825201584425.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045623.P6583215818188714141

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A045623.P6583215818188714141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A045623.P6583215818188714141

noncomputable section

/-- A045623: Number of 1's in all compositions of n+1.

Offset 0, canonical program `A045623.P6583215818188714141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045623 (n : ℕ) : ℤ :=
  A045623.P6583215818188714141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045624.P13922327744961361012

`17*a(n-1)-102*a(n-2)+272*a(n-3)-272*a(n-4)` with `a(0)=1, a(1)=11, a(2)=101, a(3)=851`
-/

namespace A045624.P13922327744961361012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 101, 851] fun n a =>
  17 * a (n - 1) - 102 * a (n - 2) + 272 * a (n - 3) - 272 * a (n - 4)

end

end A045624.P13922327744961361012

noncomputable section

/-- A045624: Row sums of convolution triangle A030526.

Offset 1, canonical program `A045624.P13922327744961361012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045624 (n : ℕ) : ℤ :=
  A045624.P13922327744961361012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045626.P11809376648633099556

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=-1, a(1)=2, a(2)=3, a(3)=3, a(4)=5`
-/

namespace A045626.P11809376648633099556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 3, 3, 5] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) - a (n - 5)

end

end A045626.P11809376648633099556

noncomputable section

/-- A045626: Bends in loxodromic sequence of spheres in which each 5 consecutive spheres are in mutual contact.

Offset 0, canonical program `A045626.P11809376648633099556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045626 (n : ℕ) : ℤ :=
  A045626.P11809376648633099556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045794.P10600491498430848618

`3*a(n-3)+a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3, a(5)=4, a(6)=9, a(7)=11, a(8)=13`
-/

namespace A045794.P10600491498430848618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 3, 4, 9, 11, 13] fun n a =>
  3 * a (n - 3) + a (n - 6) + a (n - 9)

end

end A045794.P10600491498430848618

noncomputable section

/-- A045794: Consider all quadruples {a,b,c,d} which reach {k,k,k,k} in n steps under map {a,b,c,d}->{|a-b|,|b-c|,|c-d|,|d-a|}; look at max{a,b,c,d}; sequence gives minimal value of this.

Offset 1, canonical program `A045794.P10600491498430848618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045794 (n : ℕ) : ℤ :=
  (A045794.P10600491498430848618.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045794.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045802.P13742995632997141911

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=21, a(2)=29, a(3)=47, a(4)=103`
-/

namespace A045802.P13742995632997141911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 21, 29, 47, 103] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A045802.P13742995632997141911

noncomputable section

/-- A045802: 2-ish numbers (end in 03, 21, 29, 47).

Offset 1, canonical program `A045802.P13742995632997141911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045802 (n : ℕ) : ℤ :=
  A045802.P13742995632997141911.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045805.P3302398566296495507

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=51, a(1)=57, a(2)=93, a(3)=99, a(4)=151`
-/

namespace A045805.P3302398566296495507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [51, 57, 93, 99, 151] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A045805.P3302398566296495507

noncomputable section

/-- A045805: 5-ish numbers (end in 51, 57, 93, 99).

Offset 1, canonical program `A045805.P3302398566296495507`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045805 (n : ℕ) : ℤ :=
  A045805.P3302398566296495507.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045821.P16474708015242231336

`2*(a(n-1)+a(n-2)+a(n-3))-a(n-4)` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A045821.P16474708015242231336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1, 1] fun n a =>
  2 * (a (n - 1) + a (n - 2) + a (n - 3)) - a (n - 4)

end

end A045821.P16474708015242231336

noncomputable section

/-- A045821: Numerical distance between m-th and (n+m)-th circles in a loxodromic sequence of circles in which each 4 consecutive circles touch.

Offset 0, canonical program `A045821.P16474708015242231336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045821 (n : ℕ) : ℤ :=
  A045821.P16474708015242231336.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045873.P812321455748672236

`2*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A045873.P812321455748672236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) - 5 * a (n - 2)

end

end A045873.P812321455748672236

noncomputable section

/-- A045873: a(n) = A006496(n)/2.

Offset 0, canonical program `A045873.P812321455748672236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045873 (n : ℕ) : ℤ :=
  A045873.P812321455748672236.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045883.P18250751842134863464

`3*a(n-1)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A045883.P18250751842134863464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3)

end

end A045883.P18250751842134863464

noncomputable section

/-- A045883: a(n) = ((3*n+1)*2^n - (-1)^n)/9.

Offset 0, canonical program `A045883.P18250751842134863464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045883 (n : ℕ) : ℤ :=
  A045883.P18250751842134863464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045889.P2883515826032594447

`(n²+11*n+34)/2+(n-2)*2^(n+3)`
-/

namespace A045889.P2883515826032594447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 11 * n + 34 : ℚ) / 2 + (((n : ℤ) - 2) * (2 ^ (n + 3) : ℤ) : ℚ)

end

end A045889.P2883515826032594447

noncomputable section

/-- A045889: Partial sums of A045618.

Offset 0, canonical program `A045889.P2883515826032594447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045889.P2883515826032594447.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045896.P6954889427645202220

`(n+1)*(n+2)*(3-(-1)^n)/4`
-/

namespace A045896.P6954889427645202220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 2 : ℚ) * ((3 - (-1) ^ n : ℚ) / 4))

end

end A045896.P6954889427645202220

noncomputable section

/-- A045896: Denominator of n/((n+1)*(n+2)) = A026741/A045896.

Offset 0, canonical program `A045896.P6954889427645202220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045896.P6954889427645202220.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045899.P14501878135953602085

`14*a(n-1)-a(n-2)+8` with `a(0)=0, a(1)=8`
-/

namespace A045899.P14501878135953602085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  14 * a (n - 1) - a (n - 2) + 8

end

end A045899.P14501878135953602085

noncomputable section

/-- A045899: Numbers k such that k+1 and 3*k+1 are perfect squares.

Offset 1, canonical program `A045899.P14501878135953602085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045899 (n : ℕ) : ℤ :=
  A045899.P14501878135953602085.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045943.P17051650107671239344

`a(n-1)+3*n` with `a(0)=0`
-/

namespace A045943.P17051650107671239344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * n

end

end A045943.P17051650107671239344

noncomputable section

/-- A045943: Triangular matchstick numbers: a(n) = 3*n*(n+1)/2.

Offset 0, canonical program `A045943.P17051650107671239344`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+1)/2` (program `A045943.P11315928434921407019`, by `A045943.P11315928434921407019.correct`). Lean does not check the parsing of the name. -/
def A045943 (n : ℕ) : ℤ :=
  (A045943.P17051650107671239344.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+1)/2` (program `A045943.P11315928434921407019`, by `A045943.P11315928434921407019.correct`). Lean does not check the parsing of the name. -/
def A045943.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A045946.P14560741148004030733

`18*n²+6*n`
-/

namespace A045946.P14560741148004030733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n ^ 2 + 6 * n

end

end A045946.P14560741148004030733

noncomputable section

/-- A045946: Star of David matchstick numbers: a(n) = 6*n*(3*n+1).

Offset 0, canonical program `A045946.P14560741148004030733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045946 (n : ℕ) : ℤ :=
  (A045946.P14560741148004030733.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045946.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045947.P3460978655251114226

`floor((4*n^3+2*n²-4*n)/16)`
-/

namespace A045947.P3460978655251114226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 * n ^ 3 + 2 * n ^ 2 : ℤ) - (4 * n : ℤ) : ℚ) / 16⌋

end

end A045947.P3460978655251114226

noncomputable section

/-- A045947: Triangles in open triangular matchstick arrangement (triangle minus one side) of side n.

Offset 0, canonical program `A045947.P3460978655251114226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045947 (n : ℕ) : ℤ :=
  A045947.P3460978655251114226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045949.P6650550262391909308

`floor(n*(14*n²+9*n+2)/4)`
-/

namespace A045949.P6650550262391909308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((14 * n ^ 2 + 9 * n + 2 : ℚ) / 4)⌋

end

end A045949.P6650550262391909308

noncomputable section

/-- A045949: Number of equilateral triangles formed out of matches that can be found in a hexagonal chunk of side length n in hexagonal array of matchsticks.

Offset 0, canonical program `A045949.P6650550262391909308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045949 (n : ℕ) : ℤ :=
  A045949.P6650550262391909308.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045950.P7300917371701113432

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=59, a(3)=177`
-/

namespace A045950.P7300917371701113432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 59, 177] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A045950.P7300917371701113432

noncomputable section

/-- A045950: Number of upward triangles in a Star of David matchstick arrangement of size n.

Offset 0, canonical program `A045950.P7300917371701113432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045950 (n : ℕ) : ℤ :=
  A045950.P7300917371701113432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045991.P13664782774858728519

`n²*(n-1)`
-/

namespace A045991.P13664782774858728519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((n : ℤ) - 1)

end

end A045991.P13664782774858728519

noncomputable section

/-- A045991: a(n) = n^3 - n^2.

Offset 0, canonical program `A045991.P13664782774858728519`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045991 (n : ℕ) : ℤ :=
  A045991.P13664782774858728519.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A045993.P11552666244766404615

`10*a(n-1)-18*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=9, a(2)=72`
-/

namespace A045993.P11552666244766404615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 72] fun n a =>
  10 * a (n - 1) - 18 * a (n - 2) + 8 * a (n - 3)

end

end A045993.P11552666244766404615

noncomputable section

/-- A045993: Expansion of (1-x)/(1 - 10*x + 18*x^2 - 8*x^3).

Offset 0, canonical program `A045993.P11552666244766404615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045993 (n : ℕ) : ℤ :=
  A045993.P11552666244766404615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A045993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046023.P5534282175735841947

`(n^6+3*n^4+8*n²)/12`
-/

namespace A046023.P5534282175735841947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 6 + 3 * n ^ 4 + 8 * n ^ 2 : ℚ) / 12

end

end A046023.P5534282175735841947

noncomputable section

/-- A046023: Number of ways to color edges of a tetrahedron using <= n colors.

Offset 0, canonical program `A046023.P5534282175735841947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046023.P5534282175735841947.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046023.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046090.P5392901098654976716

`6*a(n-1)-a(n-2)-2` with `a(0)=1, a(1)=4`
-/

namespace A046090.P5392901098654976716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 * a (n - 1) - a (n - 2) - 2

end

end A046090.P5392901098654976716

noncomputable section

/-- A046090: Consider all Pythagorean triples (X,X+1,Z) ordered by increasing Z; sequence gives X+1 values.

Offset 0, canonical program `A046090.P5392901098654976716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046090 (n : ℕ) : ℤ :=
  A046090.P5392901098654976716.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046127.P10871150297714877059

`a(n-1)+n*(n-3)+4` with `a(0)=0`
-/

namespace A046127.P10871150297714877059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ((n : ℤ) - 3) + 4

end

end A046127.P10871150297714877059

noncomputable section

/-- A046127: a(0) = 0; for n>0, a(n) = maximal number of regions into which space can be divided by n spheres.

Offset 0, canonical program `A046127.P10871150297714877059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046127 (n : ℕ) : ℤ :=
  A046127.P10871150297714877059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046142.P862032000347106236

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=33, a(2)=185, a(3)=553`
-/

namespace A046142.P862032000347106236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 33, 185, 553] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A046142.P862032000347106236

noncomputable section

/-- A046142: Haüy rhombic dodecahedral numbers.

Offset 1, canonical program `A046142.P862032000347106236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046142 (n : ℕ) : ℤ :=
  A046142.P862032000347106236.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046172.P7241373663882644220

`98*a(n-1)-a(n-2)-16` with `a(0)=1, a(1)=81`
-/

namespace A046172.P7241373663882644220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 81] fun n a =>
  98 * a (n - 1) - a (n - 2) - 16

end

end A046172.P7241373663882644220

noncomputable section

/-- A046172: Indices of pentagonal numbers (A000326) that are also squares (A000290).

Offset 1, canonical program `A046172.P7241373663882644220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046172 (n : ℕ) : ℤ :=
  A046172.P7241373663882644220.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046173.P13401993268950129491

`98*a(n-1)-a(n-2)` with `a(0)=1, a(1)=99`
-/

namespace A046173.P13401993268950129491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 99] fun n a =>
  98 * a (n - 1) - a (n - 2)

end

end A046173.P13401993268950129491

noncomputable section

/-- A046173: Indices of square numbers that are also pentagonal.

Offset 1, canonical program `A046173.P13401993268950129491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046173 (n : ℕ) : ℤ :=
  A046173.P13401993268950129491.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046174.P17970074796578722677

`14*a(n-1)-a(n-2)-2` with `a(0)=0, a(1)=1`
-/

namespace A046174.P17970074796578722677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  14 * a (n - 1) - a (n - 2) - 2

end

end A046174.P17970074796578722677

noncomputable section

/-- A046174: Indices of pentagonal numbers which are also triangular.

Offset 0, canonical program `A046174.P17970074796578722677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046174 (n : ℕ) : ℤ :=
  A046174.P17970074796578722677.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046175.P9715256042690742745

`14*a(n-1)-a(n-2)+6` with `a(0)=0, a(1)=1`
-/

namespace A046175.P9715256042690742745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  14 * a (n - 1) - a (n - 2) + 6

end

end A046175.P9715256042690742745

noncomputable section

/-- A046175: Indices of triangular numbers which are also pentagonal.

Offset 0, canonical program `A046175.P9715256042690742745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046175 (n : ℕ) : ℤ :=
  A046175.P9715256042690742745.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046175.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046176.P17036293458756997446

`34*a(n-1)-a(n-2)` with `a(0)=1, a(1)=35`
-/

namespace A046176.P17036293458756997446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 35] fun n a =>
  34 * a (n - 1) - a (n - 2)

end

end A046176.P17036293458756997446

noncomputable section

/-- A046176: Indices of square numbers that are also hexagonal.

Offset 1, canonical program `A046176.P17036293458756997446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046176 (n : ℕ) : ℤ :=
  A046176.P17036293458756997446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046176.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046178.P10846771629522541698

`194*a(n-1)-a(n-2)-32` with `a(0)=1, a(1)=165`
-/

namespace A046178.P10846771629522541698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 165] fun n a =>
  194 * a (n - 1) - a (n - 2) - 32

end

end A046178.P10846771629522541698

noncomputable section

/-- A046178: Indices of pentagonal numbers that are also hexagonal.

Offset 1, canonical program `A046178.P10846771629522541698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046178 (n : ℕ) : ℤ :=
  A046178.P10846771629522541698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046178.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046179.P198350054420406955

`194*a(n-1)-a(n-2)-48` with `a(0)=1, a(1)=143`
-/

namespace A046179.P198350054420406955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 143] fun n a =>
  194 * a (n - 1) - a (n - 2) - 48

end

end A046179.P198350054420406955

noncomputable section

/-- A046179: Indices of hexagonal numbers that are also pentagonal.

Offset 1, canonical program `A046179.P198350054420406955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046179 (n : ℕ) : ℤ :=
  A046179.P198350054420406955.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046181.P15454951118730620738

`98*a(n-2)-a(n-4)-32` with `a(0)=1, a(1)=3, a(2)=63, a(3)=261`
-/

namespace A046181.P15454951118730620738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 63, 261] fun n a =>
  98 * a (n - 2) - a (n - 4) - 32

end

end A046181.P15454951118730620738

noncomputable section

/-- A046181: Indices of octagonal numbers which are also triangular.

Offset 1, canonical program `A046181.P15454951118730620738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046181 (n : ℕ) : ℤ :=
  A046181.P15454951118730620738.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046182.P14059658831483792236

`98*a(n-2)-a(n-4)+48` with `a(0)=1, a(1)=6, a(2)=153, a(3)=638`
-/

namespace A046182.P14059658831483792236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 153, 638] fun n a =>
  98 * a (n - 2) - a (n - 4) + 48

end

end A046182.P14059658831483792236

noncomputable section

/-- A046182: Indices of triangular numbers which are also octagonal.

Offset 1, canonical program `A046182.P14059658831483792236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046182 (n : ℕ) : ℤ :=
  A046182.P14059658831483792236.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046182.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046184.P5867501593009160593

`14*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=9`
-/

namespace A046184.P5867501593009160593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  14 * a (n - 1) - a (n - 2) - 4

end

end A046184.P5867501593009160593

noncomputable section

/-- A046184: Indices of octagonal numbers which are also squares.

Offset 1, canonical program `A046184.P5867501593009160593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046184 (n : ℕ) : ℤ :=
  A046184.P5867501593009160593.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046190.P4577791833206106310

`98*a(n-1)-a(n-2)-32` with `a(0)=1, a(1)=63`
-/

namespace A046190.P4577791833206106310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 63] fun n a =>
  98 * a (n - 1) - a (n - 2) - 32

end

end A046190.P4577791833206106310

noncomputable section

/-- A046190: Indices of octagonal numbers which are also hexagonal numbers.

Offset 1, canonical program `A046190.P4577791833206106310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046190 (n : ℕ) : ℤ :=
  A046190.P4577791833206106310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046191.P11431515914710433370

`98*a(n-1)-a(n-2)-24` with `a(0)=1, a(1)=77`
-/

namespace A046191.P11431515914710433370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 77] fun n a =>
  98 * a (n - 1) - a (n - 2) - 24

end

end A046191.P11431515914710433370

noncomputable section

/-- A046191: Indices of hexagonal numbers which are also octagonal.

Offset 1, canonical program `A046191.P11431515914710433370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046191 (n : ℕ) : ℤ :=
  A046191.P11431515914710433370.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046198.P13262934502235765731

`62*a(n-1)-a(n-2)-18` with `a(0)=1, a(1)=42`
-/

namespace A046198.P13262934502235765731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 42] fun n a =>
  62 * a (n - 1) - a (n - 2) - 18

end

end A046198.P13262934502235765731

noncomputable section

/-- A046198: Indices of heptagonal numbers (A000566) which are also pentagonal.

Offset 1, canonical program `A046198.P13262934502235765731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046198 (n : ℕ) : ℤ :=
  A046198.P13262934502235765731.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046199.P7655635790094312319

`62*a(n-1)-a(n-2)-10` with `a(0)=1, a(1)=54`
-/

namespace A046199.P7655635790094312319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 54] fun n a =>
  62 * a (n - 1) - a (n - 2) - 10

end

end A046199.P7655635790094312319

noncomputable section

/-- A046199: Indices of pentagonal numbers that are also heptagonal.

Offset 1, canonical program `A046199.P7655635790094312319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046199 (n : ℕ) : ℤ :=
  A046199.P7655635790094312319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046630.P1687832883927382954

`ceil(2^(n+2)/7)`
-/

namespace A046630.P1687832883927382954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ (n + 2) : ℚ) / 7⌉

end

end A046630.P1687832883927382954

noncomputable section

/-- A046630: Number of cubic residues mod 2^n.

Offset 0, canonical program `A046630.P1687832883927382954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046630 (n : ℕ) : ℤ :=
  A046630.P1687832883927382954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046632.P832116891129333838

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=37`
-/

namespace A046632.P832116891129333838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 37] fun n a =>
  4 * a (n - 1) + a (n - 3) - 4 * a (n - 4)

end

end A046632.P832116891129333838

noncomputable section

/-- A046632: Number of cubic residues mod 4^n.

Offset 0, canonical program `A046632.P832116891129333838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046632 (n : ℕ) : ℤ :=
  A046632.P832116891129333838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046632.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046635.P2794349020791464768

`7*a(n-1)+a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=3, a(2)=15, a(3)=99`
-/

namespace A046635.P2794349020791464768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 15, 99] fun n a =>
  7 * a (n - 1) + a (n - 3) - 7 * a (n - 4)

end

end A046635.P2794349020791464768

noncomputable section

/-- A046635: Number of cubic residues mod 7^n.

Offset 0, canonical program `A046635.P2794349020791464768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046635 (n : ℕ) : ℤ :=
  A046635.P2794349020791464768.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046636.P15081528695269799440

`8*a(n-1)-3` with `a(0)=1`
-/

namespace A046636.P15081528695269799440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) - 3

end

end A046636.P15081528695269799440

noncomputable section

/-- A046636: Number of cubic residues mod 8^n.

Offset 0, canonical program `A046636.P15081528695269799440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046636 (n : ℕ) : ℤ :=
  A046636.P15081528695269799440.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046654.P10948764106419522232

`round(log(n!))`
-/

namespace A046654.P10948764106419522232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Nat.factorial n : ℝ))

end

end A046654.P10948764106419522232

noncomputable section

/-- A046654: Nearest integer to Sum_{k=1..n} log(k) = log(n!).

Offset 0, canonical program `A046654.P10948764106419522232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046654 (n : ℕ) : ℤ :=
  A046654.P10948764106419522232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046662.P2974262677592978411

`n²*a(n-1)-n*(n-1)*a(n-2)+1` with `a(0)=1, a(1)=2`
-/

namespace A046662.P2974262677592978411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n ^ 2 : ℤ) * a (n - 1) - (n : ℤ) * (((n : ℤ) - 1) * a (n - 2)) + 1

end

end A046662.P2974262677592978411

noncomputable section

/-- A046662: Sum of mistyped version of binomial coefficients.

Offset 0, canonical program `A046662.P2974262677592978411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046662 (n : ℕ) : ℤ :=
  A046662.P2974262677592978411.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046672.P10537606057819695466

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A046672.P10537606057819695466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3)

end

end A046672.P10537606057819695466

noncomputable section

/-- A046672: Expansion of 1/(1-2*x-3*x^2+2*x^3).

Offset 0, canonical program `A046672.P10537606057819695466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046672 (n : ℕ) : ℤ :=
  A046672.P10537606057819695466.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046691.P5093212993074708013

`a(n-1)+n+2` with `a(0)=-1`
-/

namespace A046691.P5093212993074708013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) + (n + 2 : ℤ)

end

end A046691.P5093212993074708013

noncomputable section

/-- A046691: a(n) = (n^2 + 5*n - 2)/2.

Offset 0, canonical program `A046691.P5093212993074708013`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+5*n-2)/2` (program `A046691.P16306708747309539289`, by `A046691.P16306708747309539289.correct`). Lean does not check the parsing of the name. -/
def A046691 (n : ℕ) : ℤ :=
  A046691.P5093212993074708013.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n²+5*n-2)/2` (program `A046691.P16306708747309539289`, by `A046691.P16306708747309539289.correct`). Lean does not check the parsing of the name. -/
def A046691.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A046727.P15587156919046296702

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=21, a(3)=119`
-/

namespace A046727.P15587156919046296702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 21, 119] fun n a =>
  5 * a (n - 1) + 5 * a (n - 2) - a (n - 3)

end

end A046727.P15587156919046296702

noncomputable section

/-- A046727: Related to Pythagorean triples: alternate terms of A001652 and A046090.

Offset 0, canonical program `A046727.P15587156919046296702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046727 (n : ℕ) : ℤ :=
  A046727.P15587156919046296702.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046914.P11991733717254877408

`(2^(n+1)-1)*(5^(n+1)-1)/4-10^n`
-/

namespace A046914.P11991733717254877408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1 : ℚ) * (((5 ^ (n + 1) : ℤ) - 1 : ℚ) / 4) - (10 ^ n : ℚ)

end

end A046914.P11991733717254877408

noncomputable section

/-- A046914: Sum of aliquot factors (divisors excluding the number itself) of 10^n.

Offset 0, canonical program `A046914.P11991733717254877408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046914 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046914.P11991733717254877408.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046961.P8490419542689626579

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10, a(2)=26, a(3)=29, a(4)=70, a(5)=73, a(6)=117, a(7)=161, a(8)=183, a(9)=893`
-/

namespace A046961.P8490419542689626579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 26, 29, 70, 73, 117, 161, 183, 893] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A046961.P8490419542689626579

noncomputable section

/-- A046961: Bessel function Y_0(n) is a monotonically decreasing positive sequence.

Offset 0, canonical program `A046961.P8490419542689626579`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046961 (n : ℕ) : ℤ :=
  A046961.P8490419542689626579.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046984.P5588900763413157066

`10*a(n-1)-22*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=18`
-/

namespace A046984.P5588900763413157066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 18] fun n a =>
  10 * a (n - 1) - 22 * a (n - 2) - 4 * a (n - 3)

end

end A046984.P5588900763413157066

noncomputable section

/-- A046984: Number of ways to tile a 4 X 3n rectangle with right trominoes.

Offset 0, canonical program `A046984.P5588900763413157066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046984 (n : ℕ) : ℤ :=
  A046984.P5588900763413157066.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046994.P2376737133442274282

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=17`
-/

namespace A046994.P2376737133442274282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 17] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A046994.P2376737133442274282

noncomputable section

/-- A046994: Number of Greek-key tours on a 3 X n board; i.e., self-avoiding walks on a 3 X n grid starting in the top left corner.

Offset 1, canonical program `A046994.P2376737133442274282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046994 (n : ℕ) : ℤ :=
  A046994.P2376737133442274282.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046998.P8818465001963533655

`1-7/6*n+2/3*n^3+1/2*n^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A046998.P8818465001963533655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (7 : ℚ) / 6 * (n : ℚ) + (2 : ℚ) / 3 * (n ^ 3 : ℚ) + (1 : ℚ) / 2 * (n ^ 4 : ℚ)

end

end A046998.P8818465001963533655

noncomputable section

/-- A046998: a(n) = 1 - (7/6)*n + (2/3)*n^3 + (1/2)*n^4.

Offset 0, canonical program `A046998.P8818465001963533655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046998 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046998.P8818465001963533655.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047081.P11265777002277718936

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A047081.P11265777002277718936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A047081.P11265777002277718936

noncomputable section

/-- A047081: a(n) = Sum_{k=0..n} T(n, k), array T as in A047080.

Offset 0, canonical program `A047081.P11265777002277718936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047081 (n : ℕ) : ℤ :=
  (A047081.P11265777002277718936.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047201.P16887124220134305265

`5+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A047201.P16887124220134305265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  5 + a (n - 4)

end

end A047201.P16887124220134305265

noncomputable section

/-- A047201: Numbers not divisible by 5.

Offset 1, canonical program `A047201.P16887124220134305265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047201 (n : ℕ) : ℤ :=
  (A047201.P16887124220134305265.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047202.P12705462691346672858

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A047202.P12705462691346672858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047202.P12705462691346672858

noncomputable section

/-- A047202: Numbers that are congruent to {2, 3, 4} mod 5.

Offset 1, canonical program `A047202.P12705462691346672858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047202 (n : ℕ) : ℤ :=
  A047202.P12705462691346672858.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047203.P9378854928714187791

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047203.P9378854928714187791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 5] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047203.P9378854928714187791

noncomputable section

/-- A047203: Numbers that are congruent to {0, 2, 3, 4} mod 5.

Offset 1, canonical program `A047203.P9378854928714187791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047203 (n : ℕ) : ℤ :=
  A047203.P9378854928714187791.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047205.P15681585372041631801

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A047205.P15681585372041631801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 5] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047205.P15681585372041631801

noncomputable section

/-- A047205: Numbers that are congruent to {0, 3, 4} mod 5.

Offset 1, canonical program `A047205.P15681585372041631801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047205 (n : ℕ) : ℤ :=
  A047205.P15681585372041631801.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047205.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047206.P5264832210253127635

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A047206.P5264832210253127635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047206.P5264832210253127635

noncomputable section

/-- A047206: Numbers that are congruent to {1, 3, 4} mod 5.

Offset 1, canonical program `A047206.P5264832210253127635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047206 (n : ℕ) : ℤ :=
  A047206.P5264832210253127635.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047206.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047207.P5182596554560112218

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047207.P5182596554560112218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 5] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047207.P5182596554560112218

noncomputable section

/-- A047207: Numbers that are congruent to {0, 1, 3, 4} mod 5.

Offset 1, canonical program `A047207.P5182596554560112218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047207 (n : ℕ) : ℤ :=
  A047207.P5182596554560112218.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047207.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047208.P14497428806713299572

`a(n-2)+5` with `a(0)=0, a(1)=4`
-/

namespace A047208.P14497428806713299572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 5

end

end A047208.P14497428806713299572

noncomputable section

/-- A047208: Numbers that are congruent to {0, 4} mod 5.

Offset 1, canonical program `A047208.P14497428806713299572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047208 (n : ℕ) : ℤ :=
  (A047208.P14497428806713299572.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047209.P980479515713272986

`a(n-2)+5` with `a(0)=1, a(1)=4`
-/

namespace A047209.P980479515713272986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 5

end

end A047209.P980479515713272986

noncomputable section

/-- A047209: Numbers that are congruent to {1, 4} mod 5.

Offset 1, canonical program `A047209.P980479515713272986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047209 (n : ℕ) : ℤ :=
  (A047209.P980479515713272986.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047211.P8822276400939425709

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=4, a(2)=7`
-/

namespace A047211.P8822276400939425709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 7] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047211.P8822276400939425709

noncomputable section

/-- A047211: Numbers that are congruent to {2, 4} mod 5.

Offset 1, canonical program `A047211.P8822276400939425709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047211 (n : ℕ) : ℤ :=
  A047211.P8822276400939425709.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047212.P2417433116165128359

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A047212.P2417433116165128359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 5] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047212.P2417433116165128359

noncomputable section

/-- A047212: Numbers that are congruent to {0, 2, 4} mod 5.

Offset 1, canonical program `A047212.P2417433116165128359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047212 (n : ℕ) : ℤ :=
  A047212.P2417433116165128359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047215.P16752244667238451087

`floor(5*n/2)`
-/

namespace A047215.P16752244667238451087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 2)⌋

end

end A047215.P16752244667238451087

noncomputable section

/-- A047215: Numbers that are congruent to {0, 2} mod 5.

Offset 0, canonical program `A047215.P16752244667238451087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047215 (n : ℕ) : ℤ :=
  A047215.P16752244667238451087.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047216.P8853622637911300199

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A047216.P8853622637911300199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047216.P8853622637911300199

noncomputable section

/-- A047216: Numbers that are congruent to {1, 2} mod 5.

Offset 1, canonical program `A047216.P8853622637911300199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047216 (n : ℕ) : ℤ :=
  A047216.P8853622637911300199.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047217.P4521274970991378201

`5+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A047217.P4521274970991378201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  5 + a (n - 3)

end

end A047217.P4521274970991378201

noncomputable section

/-- A047217: Numbers that are congruent to {0, 1, 2} mod 5.

Offset 1, canonical program `A047217.P4521274970991378201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047217 (n : ℕ) : ℤ :=
  (A047217.P4521274970991378201.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047218.P8875707235065574696

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A047218.P8875707235065574696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047218.P8875707235065574696

noncomputable section

/-- A047218: Numbers that are congruent to {0, 3} mod 5.

Offset 1, canonical program `A047218.P8875707235065574696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047218 (n : ℕ) : ℤ :=
  A047218.P8875707235065574696.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047218.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047219.P1237294872039489274

`a(n-2)+5` with `a(0)=1, a(1)=3`
-/

namespace A047219.P1237294872039489274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 5

end

end A047219.P1237294872039489274

noncomputable section

/-- A047219: Numbers that are congruent to {1, 3} mod 5.

Offset 1, canonical program `A047219.P1237294872039489274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047219 (n : ℕ) : ℤ :=
  (A047219.P1237294872039489274.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047220.P4379332822883347461

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A047220.P4379332822883347461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047220.P4379332822883347461

noncomputable section

/-- A047220: Numbers that are congruent to {0, 1, 3} mod 5.

Offset 1, canonical program `A047220.P4379332822883347461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047220 (n : ℕ) : ℤ :=
  A047220.P4379332822883347461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047222.P6769316524413247814

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A047222.P6769316524413247814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 5] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047222.P6769316524413247814

noncomputable section

/-- A047222: Numbers that are congruent to {0, 2, 3} mod 5.

Offset 1, canonical program `A047222.P6769316524413247814`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047222 (n : ℕ) : ℤ :=
  A047222.P6769316524413247814.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047223.P5203741466902604277

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A047223.P5203741466902604277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047223.P5203741466902604277

noncomputable section

/-- A047223: Numbers that are congruent to {1, 2, 3} mod 5.

Offset 1, canonical program `A047223.P5203741466902604277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047223 (n : ℕ) : ℤ :=
  A047223.P5203741466902604277.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047225.P18263311134364995427

`a(n-2)+6` with `a(0)=0, a(1)=1`
-/

namespace A047225.P18263311134364995427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 6

end

end A047225.P18263311134364995427

noncomputable section

/-- A047225: Numbers that are congruent to {0, 1} mod 6.

Offset 1, canonical program `A047225.P18263311134364995427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047225 (n : ℕ) : ℤ :=
  (A047225.P18263311134364995427.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047226.P11233273670124315123

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6`
-/

namespace A047226.P11233273670124315123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 6] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047226.P11233273670124315123

noncomputable section

/-- A047226: Numbers that are congruent to {0, 1, 2, 3, 4} mod 6; a(n)=floor(6(n-1)/5).

Offset 1, canonical program `A047226.P11233273670124315123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047226 (n : ℕ) : ℤ :=
  A047226.P11233273670124315123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047227.P11666463329436393676

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=7`
-/

namespace A047227.P11666463329436393676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047227.P11666463329436393676

noncomputable section

/-- A047227: Numbers that are congruent to {1, 2, 3, 4} mod 6.

Offset 1, canonical program `A047227.P11666463329436393676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047227 (n : ℕ) : ℤ :=
  A047227.P11666463329436393676.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047228.P104193079783604670

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=8`
-/

namespace A047228.P104193079783604670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047228.P104193079783604670

noncomputable section

/-- A047228: Numbers that are congruent to {2, 3, 4} mod 6.

Offset 1, canonical program `A047228.P104193079783604670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047228 (n : ℕ) : ℤ :=
  A047228.P104193079783604670.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047229.P14164567933214653390

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A047229.P14164567933214653390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 6] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047229.P14164567933214653390

noncomputable section

/-- A047229: Numbers that are congruent to {0, 2, 3, 4} mod 6.

Offset 1, canonical program `A047229.P14164567933214653390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047229 (n : ℕ) : ℤ :=
  A047229.P14164567933214653390.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047231.P5841339266927411318

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A047231.P5841339266927411318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047231.P5841339266927411318

noncomputable section

/-- A047231: Numbers that are congruent to {0, 3, 4} mod 6.

Offset 1, canonical program `A047231.P5841339266927411318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047231 (n : ℕ) : ℤ :=
  A047231.P5841339266927411318.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047233.P13960520804655028660

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A047233.P13960520804655028660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 6] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047233.P13960520804655028660

noncomputable section

/-- A047233: Numbers that are congruent to {0, 4} mod 6.

Offset 1, canonical program `A047233.P13960520804655028660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047233 (n : ℕ) : ℤ :=
  A047233.P13960520804655028660.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047234.P14533108991925136628

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A047234.P14533108991925136628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047234.P14533108991925136628

noncomputable section

/-- A047234: Numbers that are congruent to {0, 1, 4} mod 6.

Offset 1, canonical program `A047234.P14533108991925136628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047234 (n : ℕ) : ℤ :=
  A047234.P14533108991925136628.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047234.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047235.P5560758299185322021

`6*n-a(n-1)` with `a(0)=2`
-/

namespace A047235.P5560758299185322021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n : ℤ) - a (n - 1)

end

end A047235.P5560758299185322021

noncomputable section

/-- A047235: Numbers that are congruent to {2, 4} mod 6.

Offset 1, canonical program `A047235.P5560758299185322021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047235 (n : ℕ) : ℤ :=
  A047235.P5560758299185322021.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047236.P292911758985986532

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A047236.P292911758985986532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047236.P292911758985986532

noncomputable section

/-- A047236: Numbers that are congruent to {1, 2, 4} mod 6.

Offset 1, canonical program `A047236.P292911758985986532`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047236 (n : ℕ) : ℤ :=
  A047236.P292911758985986532.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047237.P11499323888522605392

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A047237.P11499323888522605392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 4) + 6

end

end A047237.P11499323888522605392

noncomputable section

/-- A047237: Numbers that are congruent to {0, 1, 2, 4} mod 6.

Offset 1, canonical program `A047237.P11499323888522605392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047237 (n : ℕ) : ℤ :=
  (A047237.P11499323888522605392.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047238.P10963973165371707935

`2*floor(3*n/2)`
-/

namespace A047238.P10963973165371707935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊3 * ((n : ℚ) / 2)⌋

end

end A047238.P10963973165371707935

noncomputable section

/-- A047238: Numbers that are congruent to {0, 2} mod 6.

Offset 1, canonical program `A047238.P10963973165371707935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047238 (n : ℕ) : ℤ :=
  A047238.P10963973165371707935.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047239.P9092031145545312968

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A047239.P9092031145545312968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047239.P9092031145545312968

noncomputable section

/-- A047239: Numbers that are congruent to {1, 2} (mod 6).

Offset 1, canonical program `A047239.P9092031145545312968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047239 (n : ℕ) : ℤ :=
  A047239.P9092031145545312968.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047240.P8687498487400877813

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A047240.P8687498487400877813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047240.P8687498487400877813

noncomputable section

/-- A047240: Numbers that are congruent to {0, 1, 2} mod 6.

Offset 1, canonical program `A047240.P8687498487400877813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047240 (n : ℕ) : ℤ :=
  A047240.P8687498487400877813.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047241.P1226178589064476610

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A047241.P1226178589064476610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047241.P1226178589064476610

noncomputable section

/-- A047241: Numbers that are congruent to {1, 3} mod 6.

Offset 1, canonical program `A047241.P1226178589064476610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047241 (n : ℕ) : ℤ :=
  A047241.P1226178589064476610.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047242.P2593984116857713801

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A047242.P2593984116857713801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047242.P2593984116857713801

noncomputable section

/-- A047242: Numbers that are congruent to {0, 1, 3} mod 6.

Offset 1, canonical program `A047242.P2593984116857713801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047242 (n : ℕ) : ℤ :=
  A047242.P2593984116857713801.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047243.P5660519100337839406

`a(n-2)+6` with `a(0)=2, a(1)=3`
-/

namespace A047243.P5660519100337839406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + 6

end

end A047243.P5660519100337839406

noncomputable section

/-- A047243: Numbers that are congruent to {2, 3} mod 6.

Offset 1, canonical program `A047243.P5660519100337839406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047243 (n : ℕ) : ℤ :=
  (A047243.P5660519100337839406.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047244.P6841592920032044211

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A047244.P6841592920032044211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047244.P6841592920032044211

noncomputable section

/-- A047244: Numbers that are congruent to {0, 2, 3} mod 6.

Offset 1, canonical program `A047244.P6841592920032044211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047244 (n : ℕ) : ℤ :=
  A047244.P6841592920032044211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047245.P5985506669286410783

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`
-/

namespace A047245.P5985506669286410783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047245.P5985506669286410783

noncomputable section

/-- A047245: Numbers that are congruent to {1, 2, 3} mod 6.

Offset 1, canonical program `A047245.P5985506669286410783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047245 (n : ℕ) : ℤ :=
  A047245.P5985506669286410783.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047246.P8842605921146798613

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A047246.P8842605921146798613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 4) + 6

end

end A047246.P8842605921146798613

noncomputable section

/-- A047246: Numbers that are congruent to {0, 1, 2, 3} mod 6.

Offset 1, canonical program `A047246.P8842605921146798613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047246 (n : ℕ) : ℤ :=
  (A047246.P8842605921146798613.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047247.P1831666042334594370

`a(n-4)+6` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A047247.P1831666042334594370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5] fun n a =>
  a (n - 4) + 6

end

end A047247.P1831666042334594370

noncomputable section

/-- A047247: Numbers that are congruent to {2, 3, 4, 5} (mod 6).

Offset 1, canonical program `A047247.P1831666042334594370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047247 (n : ℕ) : ℤ :=
  (A047247.P1831666042334594370.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047249.P13199548698468958868

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=9`
-/

namespace A047249.P13199548698468958868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047249.P13199548698468958868

noncomputable section

/-- A047249: Numbers that are congruent to {3, 4, 5} mod 6.

Offset 1, canonical program `A047249.P13199548698468958868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047249 (n : ℕ) : ℤ :=
  A047249.P13199548698468958868.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047250.P17730186097441094621

`a(n-4)+6` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A047250.P17730186097441094621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5] fun n a =>
  a (n - 4) + 6

end

end A047250.P17730186097441094621

noncomputable section

/-- A047250: Numbers that are congruent to {0, 3, 4, 5} (mod 6).

Offset 1, canonical program `A047250.P17730186097441094621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047250 (n : ℕ) : ℤ :=
  (A047250.P17730186097441094621.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047251.P12400982931357912050

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A047251.P12400982931357912050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 5] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047251.P12400982931357912050

noncomputable section

/-- A047251: Numbers that are congruent to {1, 3, 4, 5} (mod 6).

Offset 1, canonical program `A047251.P12400982931357912050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047251 (n : ℕ) : ℤ :=
  A047251.P12400982931357912050.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047252.P1494296195459283499

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=6`
-/

namespace A047252.P1494296195459283499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 5, 6] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047252.P1494296195459283499

noncomputable section

/-- A047252: Numbers that are congruent to {0, 1, 3, 4, 5} mod 6.

Offset 1, canonical program `A047252.P1494296195459283499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047252 (n : ℕ) : ℤ :=
  A047252.P1494296195459283499.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047254.P975492896153018350

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A047254.P975492896153018350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047254.P975492896153018350

noncomputable section

/-- A047254: Numbers that are congruent to {2, 3, 5} mod 6.

Offset 1, canonical program `A047254.P975492896153018350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047254 (n : ℕ) : ℤ :=
  A047254.P975492896153018350.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047255.P1071511240433996966

`a(n-4)+6` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A047255.P1071511240433996966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  a (n - 4) + 6

end

end A047255.P1071511240433996966

noncomputable section

/-- A047255: Numbers that are congruent to {1, 2, 3, 5} mod 6.

Offset 1, canonical program `A047255.P1071511240433996966`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047255 (n : ℕ) : ℤ :=
  (A047255.P1071511240433996966.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047257.P14073669044794803457

`4+6*floor(n/2)+n%2`
-/

namespace A047257.P14073669044794803457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + 6 * ⌊(n : ℚ) / 2⌋ + ((n % 2 : ℕ) : ℤ)

end

end A047257.P14073669044794803457

noncomputable section

/-- A047257: Numbers that are congruent to {4, 5} mod 6.

Offset 1, canonical program `A047257.P14073669044794803457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047257 (n : ℕ) : ℤ :=
  A047257.P14073669044794803457.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047258.P9073791806533743364

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A047258.P9073791806533743364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047258.P9073791806533743364

noncomputable section

/-- A047258: Numbers that are congruent to {0, 4, 5} mod 6.

Offset 1, canonical program `A047258.P9073791806533743364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047258 (n : ℕ) : ℤ :=
  A047258.P9073791806533743364.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047259.P9768234234403488961

`a(n-3)+6` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A047259.P9768234234403488961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  a (n - 3) + 6

end

end A047259.P9768234234403488961

noncomputable section

/-- A047259: Numbers that are congruent to {1, 4, 5} mod 6.

Offset 1, canonical program `A047259.P9768234234403488961`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047259 (n : ℕ) : ℤ :=
  (A047259.P9768234234403488961.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047260.P13222535487743843889

`a(n-4)+6` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A047260.P13222535487743843889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 5] fun n a =>
  a (n - 4) + 6

end

end A047260.P13222535487743843889

noncomputable section

/-- A047260: Numbers that are congruent to {0, 1, 4, 5} mod 6.

Offset 1, canonical program `A047260.P13222535487743843889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047260 (n : ℕ) : ℤ :=
  (A047260.P13222535487743843889.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047261.P2974273248751901373

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=8`
-/

namespace A047261.P2974273248751901373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047261.P2974273248751901373

noncomputable section

/-- A047261: Numbers that are congruent to {2, 4, 5} mod 6.

Offset 1, canonical program `A047261.P2974273248751901373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047261 (n : ℕ) : ℤ :=
  A047261.P2974273248751901373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047262.P17301446676815896594

`a(n-4)+6` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A047262.P17301446676815896594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 5] fun n a =>
  a (n - 4) + 6

end

end A047262.P17301446676815896594

noncomputable section

/-- A047262: Numbers that are congruent to {0, 2, 4, 5} mod 6.

Offset 1, canonical program `A047262.P17301446676815896594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047262 (n : ℕ) : ℤ :=
  (A047262.P17301446676815896594.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047263.P2695951990793518206

`a(n-5)+6` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5`
-/

namespace A047263.P2695951990793518206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4, 5] fun n a =>
  a (n - 5) + 6

end

end A047263.P2695951990793518206

noncomputable section

/-- A047263: Numbers that are congruent to {0, 1, 2, 4, 5} mod 6.

Offset 1, canonical program `A047263.P2695951990793518206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047263 (n : ℕ) : ℤ :=
  (A047263.P2695951990793518206.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047266.P2940400626504877787

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6`
-/

namespace A047266.P2940400626504877787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047266.P2940400626504877787

noncomputable section

/-- A047266: Numbers that are congruent to {0, 1, 5} mod 6.

Offset 1, canonical program `A047266.P2940400626504877787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047266 (n : ℕ) : ℤ :=
  A047266.P2940400626504877787.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047267.P9445888636316524669

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=6`
-/

namespace A047267.P9445888636316524669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047267.P9445888636316524669

noncomputable section

/-- A047267: Numbers that are congruent to {0, 2, 5} mod 6.

Offset 1, canonical program `A047267.P9445888636316524669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047267 (n : ℕ) : ℤ :=
  A047267.P9445888636316524669.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047268.P1846918975062122750

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=7`
-/

namespace A047268.P1846918975062122750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047268.P1846918975062122750

noncomputable section

/-- A047268: Numbers that are congruent to {1, 2, 5} mod 6.

Offset 1, canonical program `A047268.P1846918975062122750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047268 (n : ℕ) : ℤ :=
  A047268.P1846918975062122750.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047269.P4043394418920252992

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=6`
-/

namespace A047269.P4043394418920252992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5, 6] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047269.P4043394418920252992

noncomputable section

/-- A047269: Numbers that are congruent to {0, 1, 2, 5} mod 6.

Offset 1, canonical program `A047269.P4043394418920252992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047269 (n : ℕ) : ℤ :=
  A047269.P4043394418920252992.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047269.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047270.P15727693448876190263

`a(n-2)+6` with `a(0)=3, a(1)=5`
-/

namespace A047270.P15727693448876190263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + 6

end

end A047270.P15727693448876190263

noncomputable section

/-- A047270: Numbers that are congruent to {3, 5} mod 6.

Offset 1, canonical program `A047270.P15727693448876190263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047270 (n : ℕ) : ℤ :=
  (A047270.P15727693448876190263.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047270.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047271.P4758711387469422698

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6`
-/

namespace A047271.P4758711387469422698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 6] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047271.P4758711387469422698

noncomputable section

/-- A047271: Numbers that are congruent to {0, 3, 5} mod 6.

Offset 1, canonical program `A047271.P4758711387469422698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047271 (n : ℕ) : ℤ :=
  A047271.P4758711387469422698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047273.P5050912492785340480

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A047273.P5050912492785340480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047273.P5050912492785340480

noncomputable section

/-- A047273: Numbers that are congruent to {0, 1, 3, 5} mod 6.

Offset 1, canonical program `A047273.P5050912492785340480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047273 (n : ℕ) : ℤ :=
  A047273.P5050912492785340480.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047275.P5945346147382635457

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=7`
-/

namespace A047275.P5945346147382635457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047275.P5945346147382635457

noncomputable section

/-- A047275: Numbers that are congruent to {0, 1, 6} mod 7.

Offset 1, canonical program `A047275.P5945346147382635457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047275 (n : ℕ) : ℤ :=
  A047275.P5945346147382635457.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047277.P1341365108916588062

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=7`
-/

namespace A047277.P1341365108916588062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047277.P1341365108916588062

noncomputable section

/-- A047277: Numbers that are congruent to {0, 2, 6} mod 7.

Offset 1, canonical program `A047277.P1341365108916588062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047277 (n : ℕ) : ℤ :=
  A047277.P1341365108916588062.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047279.P18291416891113894150

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=7`
-/

namespace A047279.P18291416891113894150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047279.P18291416891113894150

noncomputable section

/-- A047279: Numbers that are congruent to {0, 1, 2, 6} mod 7.

Offset 1, canonical program `A047279.P18291416891113894150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047279 (n : ℕ) : ℤ :=
  A047279.P18291416891113894150.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047281.P516580499956932432

`3*n-2*floor(n/3)`
-/

namespace A047281.P516580499956932432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2 * ⌊(n : ℚ) / 3⌋

end

end A047281.P516580499956932432

noncomputable section

/-- A047281: Numbers that are congruent to {0, 3, 6} mod 7.

Offset 1, canonical program `A047281.P516580499956932432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047281 (n : ℕ) : ℤ :=
  A047281.P516580499956932432.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047282.P17006837386692765319

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=8`
-/

namespace A047282.P17006837386692765319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047282.P17006837386692765319

noncomputable section

/-- A047282: Numbers that are congruent to {1, 3, 6} mod 7.

Offset 1, canonical program `A047282.P17006837386692765319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047282 (n : ℕ) : ℤ :=
  A047282.P17006837386692765319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047283.P17203923763404339811

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=7`
-/

namespace A047283.P17203923763404339811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047283.P17203923763404339811

noncomputable section

/-- A047283: Numbers that are congruent to {0, 1, 3, 6} mod 7.

Offset 1, canonical program `A047283.P17203923763404339811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047283 (n : ℕ) : ℤ :=
  A047283.P17203923763404339811.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047284.P9390719853575627462

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=9`
-/

namespace A047284.P9390719853575627462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047284.P9390719853575627462

noncomputable section

/-- A047284: Numbers that are congruent to {2, 3, 6} mod 7.

Offset 1, canonical program `A047284.P9390719853575627462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047284 (n : ℕ) : ℤ :=
  A047284.P9390719853575627462.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047284.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047285.P368478031323496740

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=7`
-/

namespace A047285.P368478031323496740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047285.P368478031323496740

noncomputable section

/-- A047285: Numbers that are congruent to {0, 2, 3, 6} mod 7.

Offset 1, canonical program `A047285.P368478031323496740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047285 (n : ℕ) : ℤ :=
  A047285.P368478031323496740.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047286.P1797588909138045173

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=8`
-/

namespace A047286.P1797588909138045173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047286.P1797588909138045173

noncomputable section

/-- A047286: Numbers that are congruent to {1, 2, 3, 6} mod 7.

Offset 1, canonical program `A047286.P1797588909138045173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047286 (n : ℕ) : ℤ :=
  A047286.P1797588909138045173.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047287.P1044627375723699757

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=7`
-/

namespace A047287.P1044627375723699757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 6, 7] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047287.P1044627375723699757

noncomputable section

/-- A047287: Numbers that are congruent to {0, 1, 2, 3, 6} mod 7.

Offset 1, canonical program `A047287.P1044627375723699757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047287 (n : ℕ) : ℤ :=
  A047287.P1044627375723699757.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047287.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047288.P18372578862577035975

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=6, a(2)=11`
-/

namespace A047288.P18372578862577035975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 11] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047288.P18372578862577035975

noncomputable section

/-- A047288: Numbers that are congruent to {4, 6} mod 7.

Offset 1, canonical program `A047288.P18372578862577035975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047288 (n : ℕ) : ℤ :=
  A047288.P18372578862577035975.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047289.P5125561655512386469

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=6, a(3)=7`
-/

namespace A047289.P5125561655512386469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 6, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047289.P5125561655512386469

noncomputable section

/-- A047289: Numbers that are congruent to {0, 4, 6} mod 7.

Offset 1, canonical program `A047289.P5125561655512386469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047289 (n : ℕ) : ℤ :=
  A047289.P5125561655512386469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047289.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047290.P11639142767701479755

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A047290.P11639142767701479755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047290.P11639142767701479755

noncomputable section

/-- A047290: Numbers that are congruent to {1, 4, 6} mod 7.

Offset 1, canonical program `A047290.P11639142767701479755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047290 (n : ℕ) : ℤ :=
  A047290.P11639142767701479755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047291.P10386418737795824372

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=7`
-/

namespace A047291.P10386418737795824372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047291.P10386418737795824372

noncomputable section

/-- A047291: Numbers that are congruent to {0, 1, 4, 6} mod 7.

Offset 1, canonical program `A047291.P10386418737795824372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047291 (n : ℕ) : ℤ :=
  A047291.P10386418737795824372.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047292.P7676826140015462783

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=9`
-/

namespace A047292.P7676826140015462783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047292.P7676826140015462783

noncomputable section

/-- A047292: Numbers that are congruent to {2, 4, 6} mod 7.

Offset 1, canonical program `A047292.P7676826140015462783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047292 (n : ℕ) : ℤ :=
  A047292.P7676826140015462783.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047293.P14738419033984554259

`floor(ceil((7*n+2)/2)/2)`
-/

namespace A047293.P14738419033984554259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(7 * n + 2 : ℚ) / 2⌉ : ℚ) / 2⌋

end

end A047293.P14738419033984554259

noncomputable section

/-- A047293: Numbers that are congruent to {0, 2, 4, 6} mod 7.

Offset 1, canonical program `A047293.P14738419033984554259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047293 (n : ℕ) : ℤ :=
  A047293.P14738419033984554259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047294.P7003508793639367296

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A047294.P7003508793639367296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047294.P7003508793639367296

noncomputable section

/-- A047294: Numbers that are congruent to {1, 2, 4, 6} mod 7.

Offset 1, canonical program `A047294.P7003508793639367296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047294 (n : ℕ) : ℤ :=
  A047294.P7003508793639367296.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047296.P14236419836244817206

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=6, a(3)=10`
-/

namespace A047296.P14236419836244817206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047296.P14236419836244817206

noncomputable section

/-- A047296: Numbers that are congruent to {3, 4, 6} mod 7.

Offset 1, canonical program `A047296.P14236419836244817206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047296 (n : ℕ) : ℤ :=
  A047296.P14236419836244817206.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047297.P6545727981941344053

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=6, a(4)=7`
-/

namespace A047297.P6545727981941344053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047297.P6545727981941344053

noncomputable section

/-- A047297: Numbers that are congruent to {0, 3, 4, 6} mod 7.

Offset 1, canonical program `A047297.P6545727981941344053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047297 (n : ℕ) : ℤ :=
  A047297.P6545727981941344053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047298.P550719812268701662

`ceil(ceil((7*n+2)/2)/2)`
-/

namespace A047298.P550719812268701662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(7 * n + 2 : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A047298.P550719812268701662

noncomputable section

/-- A047298: Numbers that are congruent to {1, 3, 4, 6} mod 7.

Offset 1, canonical program `A047298.P550719812268701662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047298 (n : ℕ) : ℤ :=
  A047298.P550719812268701662.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047298.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047300.P18184211925873026198

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6, a(4)=9`
-/

namespace A047300.P18184211925873026198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 6, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047300.P18184211925873026198

noncomputable section

/-- A047300: Numbers that are congruent to {2, 3, 4, 6} mod 7.

Offset 1, canonical program `A047300.P18184211925873026198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047300 (n : ℕ) : ℤ :=
  A047300.P18184211925873026198.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047303.P14416991591289247689

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=7`
-/

namespace A047303.P14416991591289247689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 6, 7] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047303.P14416991591289247689

noncomputable section

/-- A047303: Numbers that are congruent to {0, 1, 2, 3, 4, 6} mod 7.

Offset 1, canonical program `A047303.P14416991591289247689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047303 (n : ℕ) : ℤ :=
  A047303.P14416991591289247689.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047306.P3109071461326894710

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A047306.P3109071461326894710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047306.P3109071461326894710

noncomputable section

/-- A047306: Numbers that are congruent to {0, 2, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A047306.P3109071461326894710`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047306 (n : ℕ) : ℤ :=
  A047306.P3109071461326894710.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047307.P8705197779479072649

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=6, a(4)=10`
-/

namespace A047307.P8705197779479072649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 6, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047307.P8705197779479072649

noncomputable section

/-- A047307: Numbers that are congruent to {3, 4, 5, 6} mod 7.

Offset 1, canonical program `A047307.P8705197779479072649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047307 (n : ℕ) : ℤ :=
  A047307.P8705197779479072649.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047309.P17026201279636722837

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=6, a(5)=8`
-/

namespace A047309.P17026201279636722837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047309.P17026201279636722837

noncomputable section

/-- A047309: Numbers that are congruent to {1, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A047309.P17026201279636722837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047309 (n : ℕ) : ℤ :=
  A047309.P17026201279636722837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047310.P2050024120982742644

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A047310.P2050024120982742644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047310.P2050024120982742644

noncomputable section

/-- A047310: Numbers that are congruent to {0, 1, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A047310.P2050024120982742644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047310 (n : ℕ) : ℤ :=
  A047310.P2050024120982742644.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047311.P14346593823484831739

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=5, a(2)=6, a(3)=11`
-/

namespace A047311.P14346593823484831739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 6, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047311.P14346593823484831739

noncomputable section

/-- A047311: Numbers that are congruent to {4, 5, 6} mod 7.

Offset 1, canonical program `A047311.P14346593823484831739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047311 (n : ℕ) : ℤ :=
  A047311.P14346593823484831739.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047312.P2553062006577992457

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047312.P2553062006577992457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047312.P2553062006577992457

noncomputable section

/-- A047312: Numbers that are congruent to {0, 4, 5, 6} mod 7.

Offset 1, canonical program `A047312.P2553062006577992457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047312 (n : ℕ) : ℤ :=
  A047312.P2553062006577992457.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047313.P15827640588781624304

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=6, a(4)=8`
-/

namespace A047313.P15827640588781624304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047313.P15827640588781624304

noncomputable section

/-- A047313: Numbers that are congruent to {1, 4, 5, 6} mod 7.

Offset 1, canonical program `A047313.P15827640588781624304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047313 (n : ℕ) : ℤ :=
  A047313.P15827640588781624304.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047315.P6240883607167264711

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=6, a(4)=9`
-/

namespace A047315.P6240883607167264711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 6, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047315.P6240883607167264711

noncomputable section

/-- A047315: Numbers that are congruent to {2, 4, 5, 6} mod 7.

Offset 1, canonical program `A047315.P6240883607167264711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047315 (n : ℕ) : ℤ :=
  A047315.P6240883607167264711.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047315.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047317.P6404990749782166978

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=6, a(5)=8`
-/

namespace A047317.P6404990749782166978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047317.P6404990749782166978

noncomputable section

/-- A047317: Numbers that are congruent to {1, 2, 4, 5, 6} mod 7.

Offset 1, canonical program `A047317.P6404990749782166978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047317 (n : ℕ) : ℤ :=
  A047317.P6404990749782166978.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047318.P13689672760318496057

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A047318.P13689672760318496057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047318.P13689672760318496057

noncomputable section

/-- A047318: Numbers that are congruent to {0, 1, 2, 4, 5, 6} mod 7.

Offset 1, canonical program `A047318.P13689672760318496057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047318 (n : ℕ) : ℤ :=
  A047318.P13689672760318496057.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047320.P2280778315708017815

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=6, a(3)=7`
-/

namespace A047320.P2280778315708017815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047320.P2280778315708017815

noncomputable section

/-- A047320: Numbers that are congruent to {0, 5, 6} mod 7.

Offset 1, canonical program `A047320.P2280778315708017815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047320 (n : ℕ) : ℤ :=
  A047320.P2280778315708017815.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047321.P4063445747886517755

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=8`
-/

namespace A047321.P4063445747886517755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047321.P4063445747886517755

noncomputable section

/-- A047321: Numbers that are congruent to {1, 5, 6} mod 7.

Offset 1, canonical program `A047321.P4063445747886517755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047321 (n : ℕ) : ℤ :=
  A047321.P4063445747886517755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047322.P466462821680906753

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047322.P466462821680906753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047322.P466462821680906753

noncomputable section

/-- A047322: Numbers that are congruent to {0, 1, 5, 6} mod 7.

Offset 1, canonical program `A047322.P466462821680906753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047322 (n : ℕ) : ℤ :=
  A047322.P466462821680906753.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047323.P3537083881865610159

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=6, a(3)=9`
-/

namespace A047323.P3537083881865610159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047323.P3537083881865610159

noncomputable section

/-- A047323: Numbers that are congruent to {2, 5, 6} mod 7.

Offset 1, canonical program `A047323.P3537083881865610159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047323 (n : ℕ) : ℤ :=
  A047323.P3537083881865610159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047324.P9945342899433440755

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047324.P9945342899433440755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047324.P9945342899433440755

noncomputable section

/-- A047324: Numbers that are congruent to {0, 2, 5, 6} mod 7.

Offset 1, canonical program `A047324.P9945342899433440755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047324 (n : ℕ) : ℤ :=
  A047324.P9945342899433440755.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047325.P15002469086086084953

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6, a(4)=8`
-/

namespace A047325.P15002469086086084953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047325.P15002469086086084953

noncomputable section

/-- A047325: Numbers that are congruent to {1, 2, 5, 6} mod 7.

Offset 1, canonical program `A047325.P15002469086086084953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047325 (n : ℕ) : ℤ :=
  A047325.P15002469086086084953.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047327.P5576792846900131779

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=5, a(2)=6, a(3)=10`
-/

namespace A047327.P5576792846900131779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 6, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047327.P5576792846900131779

noncomputable section

/-- A047327: Numbers that are congruent to {3, 5, 6} mod 7.

Offset 1, canonical program `A047327.P5576792846900131779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047327 (n : ℕ) : ℤ :=
  A047327.P5576792846900131779.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047328.P9193013736749707495

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6, a(4)=7`
-/

namespace A047328.P9193013736749707495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 6, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047328.P9193013736749707495

noncomputable section

/-- A047328: Numbers that are congruent to {0, 3, 5, 6} mod 7.

Offset 1, canonical program `A047328.P9193013736749707495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047328 (n : ℕ) : ℤ :=
  A047328.P9193013736749707495.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047329.P9670378678923019251

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=6, a(4)=8`
-/

namespace A047329.P9670378678923019251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047329.P9670378678923019251

noncomputable section

/-- A047329: Numbers that are congruent to {1, 3, 5, 6} mod 7.

Offset 1, canonical program `A047329.P9670378678923019251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047329 (n : ℕ) : ℤ :=
  A047329.P9670378678923019251.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047331.P11004458046640556631

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=6, a(4)=9`
-/

namespace A047331.P11004458046640556631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 6, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047331.P11004458046640556631

noncomputable section

/-- A047331: Numbers that are congruent to {2, 3, 5, 6} mod 7.

Offset 1, canonical program `A047331.P11004458046640556631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047331 (n : ℕ) : ℤ :=
  A047331.P11004458046640556631.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047332.P15799004001134296057

`a(n-5)+7` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=6`
-/

namespace A047332.P15799004001134296057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 5, 6] fun n a =>
  a (n - 5) + 7

end

end A047332.P15799004001134296057

noncomputable section

/-- A047332: Numbers that are congruent to {0, 2, 3, 5, 6} mod 7.

Offset 1, canonical program `A047332.P15799004001134296057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047332 (n : ℕ) : ℤ :=
  (A047332.P15799004001134296057.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047336.P15188184093084542706

`a(n-2)+7` with `a(0)=1, a(1)=6`
-/

namespace A047336.P15188184093084542706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + 7

end

end A047336.P15188184093084542706

noncomputable section

/-- A047336: Numbers that are congruent to {1, 6} mod 7.

Offset 1, canonical program `A047336.P15188184093084542706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047336 (n : ℕ) : ℤ :=
  (A047336.P15188184093084542706.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047338.P5902389382644055676

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=8`
-/

namespace A047338.P5902389382644055676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047338.P5902389382644055676

noncomputable section

/-- A047338: Numbers that are congruent to {1, 2, 3, 4} mod 7.

Offset 1, canonical program `A047338.P5902389382644055676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047338 (n : ℕ) : ℤ :=
  A047338.P5902389382644055676.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047339.P14315633760646662671

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=9`
-/

namespace A047339.P14315633760646662671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047339.P14315633760646662671

noncomputable section

/-- A047339: Numbers that are congruent to {2, 3, 4} mod 7.

Offset 1, canonical program `A047339.P14315633760646662671`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047339 (n : ℕ) : ℤ :=
  A047339.P14315633760646662671.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047340.P7029948353706989535

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=7`
-/

namespace A047340.P7029948353706989535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047340.P7029948353706989535

noncomputable section

/-- A047340: Numbers that are congruent to {0, 2, 3, 4} mod 7.

Offset 1, canonical program `A047340.P7029948353706989535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047340 (n : ℕ) : ℤ :=
  A047340.P7029948353706989535.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047342.P2366620083164869497

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A047342.P2366620083164869497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047342.P2366620083164869497

noncomputable section

/-- A047342: Numbers that are congruent to {0, 3, 4} mod 7.

Offset 1, canonical program `A047342.P2366620083164869497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047342 (n : ℕ) : ℤ :=
  A047342.P2366620083164869497.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047343.P17643466756452464864

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=8`
-/

namespace A047343.P17643466756452464864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047343.P17643466756452464864

noncomputable section

/-- A047343: Numbers that are congruent to {1, 3, 4} mod 7.

Offset 1, canonical program `A047343.P17643466756452464864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047343 (n : ℕ) : ℤ :=
  A047343.P17643466756452464864.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047344.P8669376299546858076

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=7`
-/

namespace A047344.P8669376299546858076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047344.P8669376299546858076

noncomputable section

/-- A047344: Numbers that are congruent to {0, 1, 3, 4} mod 7.

Offset 1, canonical program `A047344.P8669376299546858076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047344 (n : ℕ) : ℤ :=
  A047344.P8669376299546858076.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047347.P7840429224213069562

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`
-/

namespace A047347.P7840429224213069562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047347.P7840429224213069562

noncomputable section

/-- A047347: Numbers that are congruent to {0, 1, 4} mod 7.

Offset 1, canonical program `A047347.P7840429224213069562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047347 (n : ℕ) : ℤ :=
  A047347.P7840429224213069562.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047348.P6616524535783640949

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=4, a(2)=9`
-/

namespace A047348.P6616524535783640949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 9] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047348.P6616524535783640949

noncomputable section

/-- A047348: Numbers that are congruent to {2, 4} mod 7.

Offset 1, canonical program `A047348.P6616524535783640949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047348 (n : ℕ) : ℤ :=
  A047348.P6616524535783640949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047349.P15323562708383283295

`floor(n/3)+2*n`
-/

namespace A047349.P15323562708383283295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ + (2 * n : ℤ)

end

end A047349.P15323562708383283295

noncomputable section

/-- A047349: Numbers that are congruent to {0, 2, 4} mod 7.

Offset 1, canonical program `A047349.P15323562708383283295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047349 (n : ℕ) : ℤ :=
  A047349.P15323562708383283295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047350.P10128043703620444739

`a(n-3)+7` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A047350.P10128043703620444739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 3) + 7

end

end A047350.P10128043703620444739

noncomputable section

/-- A047350: Numbers that are congruent to {1, 2, 4} mod 7.

Offset 1, canonical program `A047350.P10128043703620444739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047350 (n : ℕ) : ℤ :=
  (A047350.P10128043703620444739.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047350.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047351.P4089173670636868111

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=7`
-/

namespace A047351.P4089173670636868111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047351.P4089173670636868111

noncomputable section

/-- A047351: Numbers that are congruent to {0, 1, 2, 4} mod 7.

Offset 1, canonical program `A047351.P4089173670636868111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047351 (n : ℕ) : ℤ :=
  A047351.P4089173670636868111.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047352.P12793248552064691081

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A047352.P12793248552064691081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047352.P12793248552064691081

noncomputable section

/-- A047352: Numbers that are congruent to {0, 2} mod 7.

Offset 1, canonical program `A047352.P12793248552064691081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047352 (n : ℕ) : ℤ :=
  A047352.P12793248552064691081.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047354.P14388772833069298714

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`
-/

namespace A047354.P14388772833069298714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047354.P14388772833069298714

noncomputable section

/-- A047354: Numbers that are congruent to {0, 1, 2} mod 7.

Offset 1, canonical program `A047354.P14388772833069298714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047354 (n : ℕ) : ℤ :=
  A047354.P14388772833069298714.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047355.P9536349142779926897

`a(n-2)+7` with `a(0)=0, a(1)=3`
-/

namespace A047355.P9536349142779926897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + 7

end

end A047355.P9536349142779926897

noncomputable section

/-- A047355: Numbers that are congruent to {0, 3} mod 7.

Offset 1, canonical program `A047355.P9536349142779926897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047355 (n : ℕ) : ℤ :=
  (A047355.P9536349142779926897.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047357.P4875298562657142387

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A047357.P4875298562657142387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047357.P4875298562657142387

noncomputable section

/-- A047357: Numbers that are congruent to {0, 1, 3} mod 7.

Offset 1, canonical program `A047357.P4875298562657142387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047357 (n : ℕ) : ℤ :=
  A047357.P4875298562657142387.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047359.P14873890226332443488

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=7`
-/

namespace A047359.P14873890226332443488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047359.P14873890226332443488

noncomputable section

/-- A047359: Numbers that are congruent to {0, 2, 3} mod 7.

Offset 1, canonical program `A047359.P14873890226332443488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047359 (n : ℕ) : ℤ :=
  A047359.P14873890226332443488.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047360.P5459119632546147556

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8`
-/

namespace A047360.P5459119632546147556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047360.P5459119632546147556

noncomputable section

/-- A047360: Numbers that are congruent to {1, 2, 3} mod 7.

Offset 1, canonical program `A047360.P5459119632546147556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047360 (n : ℕ) : ℤ :=
  A047360.P5459119632546147556.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047361.P17801938873967556562

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=7`
-/

namespace A047361.P17801938873967556562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047361.P17801938873967556562

noncomputable section

/-- A047361: Numbers that are congruent to {0, 1, 2, 3} mod 7.

Offset 1, canonical program `A047361.P17801938873967556562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047361 (n : ℕ) : ℤ :=
  A047361.P17801938873967556562.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047362.P16031413204201259744

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=9`
-/

namespace A047362.P16031413204201259744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 5, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047362.P16031413204201259744

noncomputable section

/-- A047362: Numbers that are congruent to {2, 3, 4, 5} mod 7.

Offset 1, canonical program `A047362.P16031413204201259744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047362 (n : ℕ) : ℤ :=
  A047362.P16031413204201259744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047363.P7486090247302327639

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=7`
-/

namespace A047363.P7486090247302327639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4, 5, 7] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047363.P7486090247302327639

noncomputable section

/-- A047363: Numbers that are congruent to {0, 2, 3, 4, 5} mod 7.

Offset 1, canonical program `A047363.P7486090247302327639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047363 (n : ℕ) : ℤ :=
  A047363.P7486090247302327639.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047364.P6091633767157942556

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=10`
-/

namespace A047364.P6091633767157942556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047364.P6091633767157942556

noncomputable section

/-- A047364: Numbers that are congruent to {3, 4, 5} mod 7.

Offset 1, canonical program `A047364.P6091633767157942556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047364 (n : ℕ) : ℤ :=
  A047364.P6091633767157942556.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047365.P9698596822571819951

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A047365.P9698596822571819951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 5, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047365.P9698596822571819951

noncomputable section

/-- A047365: Numbers that are congruent to {0, 3, 4, 5} mod 7.

Offset 1, canonical program `A047365.P9698596822571819951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047365 (n : ℕ) : ℤ :=
  A047365.P9698596822571819951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047366.P18253139428526097178

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=8`
-/

namespace A047366.P18253139428526097178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047366.P18253139428526097178

noncomputable section

/-- A047366: Numbers that are congruent to {1, 3, 4, 5} mod 7.

Offset 1, canonical program `A047366.P18253139428526097178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047366 (n : ℕ) : ℤ :=
  A047366.P18253139428526097178.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047368.P21801417993684581

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=7`
-/

namespace A047368.P21801417993684581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 7] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047368.P21801417993684581

noncomputable section

/-- A047368: Numbers that are congruent to {0, 1, 2, 3, 4, 5} mod 7; a(n)=floor(7(n-1)/6).

Offset 1, canonical program `A047368.P21801417993684581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047368 (n : ℕ) : ℤ :=
  A047368.P21801417993684581.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047369.P12968642193269670504

`a(n-5)+7` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A047369.P12968642193269670504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  a (n - 5) + 7

end

end A047369.P12968642193269670504

noncomputable section

/-- A047369: Numbers that are congruent to {1, 2, 3, 4, 5} mod 7.

Offset 1, canonical program `A047369.P12968642193269670504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047369 (n : ℕ) : ℤ :=
  (A047369.P12968642193269670504.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047370.P11008166849489389461

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=9`
-/

namespace A047370.P11008166849489389461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047370.P11008166849489389461

noncomputable section

/-- A047370: Numbers that are congruent to {2, 3, 5} mod 7.

Offset 1, canonical program `A047370.P11008166849489389461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047370 (n : ℕ) : ℤ :=
  A047370.P11008166849489389461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047371.P266571998249854504

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=7`
-/

namespace A047371.P266571998249854504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 5, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047371.P266571998249854504

noncomputable section

/-- A047371: Numbers that are congruent to {0, 2, 3, 5} mod 7.

Offset 1, canonical program `A047371.P266571998249854504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047371 (n : ℕ) : ℤ :=
  A047371.P266571998249854504.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047372.P3641374813680755785

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=8`
-/

namespace A047372.P3641374813680755785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047372.P3641374813680755785

noncomputable section

/-- A047372: Numbers that are congruent to {1, 2, 3, 5} mod 7.

Offset 1, canonical program `A047372.P3641374813680755785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047372 (n : ℕ) : ℤ :=
  A047372.P3641374813680755785.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047373.P12421009453321775014

`a(n-5)+7` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A047373.P12421009453321775014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 5] fun n a =>
  a (n - 5) + 7

end

end A047373.P12421009453321775014

noncomputable section

/-- A047373: Numbers that are congruent to {0, 1, 2, 3, 5} mod 7.

Offset 1, canonical program `A047373.P12421009453321775014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047373 (n : ℕ) : ℤ :=
  (A047373.P12421009453321775014.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047373.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047375.P15012479228159849092

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=7`
-/

namespace A047375.P15012479228159849092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047375.P15012479228159849092

noncomputable section

/-- A047375: Numbers that are congruent to {0, 4, 5} mod 7.

Offset 1, canonical program `A047375.P15012479228159849092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047375 (n : ℕ) : ℤ :=
  A047375.P15012479228159849092.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047376.P16363263419380333710

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=8`
-/

namespace A047376.P16363263419380333710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047376.P16363263419380333710

noncomputable section

/-- A047376: Numbers that are congruent to {1, 4, 5} mod 7.

Offset 1, canonical program `A047376.P16363263419380333710`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047376 (n : ℕ) : ℤ :=
  A047376.P16363263419380333710.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047377.P434719664154986552

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=7`
-/

namespace A047377.P434719664154986552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 5, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047377.P434719664154986552

noncomputable section

/-- A047377: Numbers that are congruent to {0, 1, 4, 5} mod 7.

Offset 1, canonical program `A047377.P434719664154986552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047377 (n : ℕ) : ℤ :=
  A047377.P434719664154986552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047378.P13086821730108616353

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=9`
-/

namespace A047378.P13086821730108616353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047378.P13086821730108616353

noncomputable section

/-- A047378: Numbers that are congruent to {2, 4, 5} mod 7.

Offset 1, canonical program `A047378.P13086821730108616353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047378 (n : ℕ) : ℤ :=
  A047378.P13086821730108616353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047379.P15242479527864702004

`floor(floor((7*n+2)/2)/2)`
-/

namespace A047379.P15242479527864702004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(7 * n + 2 : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A047379.P15242479527864702004

noncomputable section

/-- A047379: Numbers that are congruent to {0, 2, 4, 5} mod 7.

Offset 1, canonical program `A047379.P15242479527864702004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047379 (n : ℕ) : ℤ :=
  A047379.P15242479527864702004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047380.P303040601324258645

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=8`
-/

namespace A047380.P303040601324258645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047380.P303040601324258645

noncomputable section

/-- A047380: Numbers that are congruent to {1, 2, 4, 5} mod 7.

Offset 1, canonical program `A047380.P303040601324258645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047380 (n : ℕ) : ℤ :=
  A047380.P303040601324258645.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047381.P14519443007112795214

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5, a(5)=7`
-/

namespace A047381.P14519443007112795214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 5, 7] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047381.P14519443007112795214

noncomputable section

/-- A047381: Numbers that are congruent to {0, 1, 2, 4, 5} mod 7.

Offset 1, canonical program `A047381.P14519443007112795214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047381 (n : ℕ) : ℤ :=
  A047381.P14519443007112795214.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047382.P11996369062015424935

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=7`
-/

namespace A047382.P11996369062015424935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 7] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047382.P11996369062015424935

noncomputable section

/-- A047382: Numbers that are congruent to {0, 5} mod 7.

Offset 1, canonical program `A047382.P11996369062015424935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047382 (n : ℕ) : ℤ :=
  A047382.P11996369062015424935.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047382.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047383.P13166064916328592741

`ceil((7*n+2)/2)`
-/

namespace A047383.P13166064916328592741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 * n + 2 : ℚ) / 2⌉

end

end A047383.P13166064916328592741

noncomputable section

/-- A047383: Numbers that are congruent to {1, 5} mod 7.

Offset 1, canonical program `A047383.P13166064916328592741`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047383 (n : ℕ) : ℤ :=
  A047383.P13166064916328592741.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047383.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047384.P10593190463419592005

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=7`
-/

namespace A047384.P10593190463419592005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047384.P10593190463419592005

noncomputable section

/-- A047384: Numbers that are congruent to {0, 1, 5} mod 7.

Offset 1, canonical program `A047384.P10593190463419592005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047384 (n : ℕ) : ℤ :=
  A047384.P10593190463419592005.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047386.P2577178386288031813

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=7`
-/

namespace A047386.P2577178386288031813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047386.P2577178386288031813

noncomputable section

/-- A047386: Numbers that are congruent to {0, 2, 5} mod 7.

Offset 1, canonical program `A047386.P2577178386288031813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047386 (n : ℕ) : ℤ :=
  A047386.P2577178386288031813.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047387.P11567559832869142688

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A047387.P11567559832869142688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047387.P11567559832869142688

noncomputable section

/-- A047387: Numbers that are congruent to {1, 2, 5} mod 7.

Offset 1, canonical program `A047387.P11567559832869142688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047387 (n : ℕ) : ℤ :=
  A047387.P11567559832869142688.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047388.P13589031924745103338

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=7`
-/

namespace A047388.P13589031924745103338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047388.P13589031924745103338

noncomputable section

/-- A047388: Numbers that are congruent to {0, 1, 2, 5} mod 7.

Offset 1, canonical program `A047388.P13589031924745103338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047388 (n : ℕ) : ℤ :=
  A047388.P13589031924745103338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047390.P7345628419506786400

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A047390.P7345628419506786400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 7] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047390.P7345628419506786400

noncomputable section

/-- A047390: Numbers that are congruent to {0, 3, 5} mod 7.

Offset 1, canonical program `A047390.P7345628419506786400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047390 (n : ℕ) : ℤ :=
  A047390.P7345628419506786400.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047391.P18255280024600010436

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8`
-/

namespace A047391.P18255280024600010436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047391.P18255280024600010436

noncomputable section

/-- A047391: Numbers that are congruent to {1, 3, 5} mod 7.

Offset 1, canonical program `A047391.P18255280024600010436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047391 (n : ℕ) : ℤ :=
  A047391.P18255280024600010436.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047392.P14886329405350931161

`n+floor(3*n/4)`
-/

namespace A047392.P14886329405350931161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊3 * ((n : ℚ) / 4)⌋

end

end A047392.P14886329405350931161

noncomputable section

/-- A047392: Numbers that are congruent to {0, 1, 3, 5} mod 7.

Offset 1, canonical program `A047392.P14886329405350931161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047392 (n : ℕ) : ℤ :=
  A047392.P14886329405350931161.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047393.P14045623607863787034

`a(n-2)+8` with `a(0)=0, a(1)=1`
-/

namespace A047393.P14045623607863787034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 8

end

end A047393.P14045623607863787034

noncomputable section

/-- A047393: Numbers that are congruent to {0, 1} mod 8.

Offset 1, canonical program `A047393.P14045623607863787034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047393 (n : ℕ) : ℤ :=
  (A047393.P14045623607863787034.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047393.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047394.P528486563902415208

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=8`
-/

namespace A047394.P528486563902415208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047394.P528486563902415208

noncomputable section

/-- A047394: Numbers that are congruent to {0, 1, 6} mod 8.

Offset 1, canonical program `A047394.P528486563902415208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047394 (n : ℕ) : ℤ :=
  A047394.P528486563902415208.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047395.P2627764212287270210

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=8`
-/

namespace A047395.P2627764212287270210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047395.P2627764212287270210

noncomputable section

/-- A047395: Numbers that are congruent to {0, 2, 6} mod 8.

Offset 1, canonical program `A047395.P2627764212287270210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047395 (n : ℕ) : ℤ :=
  A047395.P2627764212287270210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047396.P3219746775049119401

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=9`
-/

namespace A047396.P3219746775049119401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047396.P3219746775049119401

noncomputable section

/-- A047396: Numbers that are congruent to {1, 2, 6} mod 8.

Offset 1, canonical program `A047396.P3219746775049119401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047396 (n : ℕ) : ℤ :=
  A047396.P3219746775049119401.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047397.P16389520956584538391

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=8`
-/

namespace A047397.P16389520956584538391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047397.P16389520956584538391

noncomputable section

/-- A047397: Numbers that are congruent to {0, 1, 2, 6} mod 8.

Offset 1, canonical program `A047397.P16389520956584538391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047397 (n : ℕ) : ℤ :=
  A047397.P16389520956584538391.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047398.P6620802634894388897

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=6, a(2)=11`
-/

namespace A047398.P6620802634894388897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6, 11] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047398.P6620802634894388897

noncomputable section

/-- A047398: Numbers that are congruent to {3, 6} mod 8.

Offset 1, canonical program `A047398.P6620802634894388897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047398 (n : ℕ) : ℤ :=
  A047398.P6620802634894388897.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047399.P14141221754204852956

`3*n-floor(n/3)`
-/

namespace A047399.P14141221754204852956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ⌊(n : ℚ) / 3⌋

end

end A047399.P14141221754204852956

noncomputable section

/-- A047399: Numbers that are congruent to {0, 3, 6} mod 8.

Offset 1, canonical program `A047399.P14141221754204852956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047399 (n : ℕ) : ℤ :=
  A047399.P14141221754204852956.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047400.P18210619602145476608

`a(n-3)+8` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A047400.P18210619602145476608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  a (n - 3) + 8

end

end A047400.P18210619602145476608

noncomputable section

/-- A047400: Numbers that are congruent to {1, 3, 6} mod 8.

Offset 1, canonical program `A047400.P18210619602145476608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047400 (n : ℕ) : ℤ :=
  (A047400.P18210619602145476608.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047401.P131303670045038053

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A047401.P131303670045038053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047401.P131303670045038053

noncomputable section

/-- A047401: Numbers that are congruent to {0, 1, 3, 6} mod 8.

Offset 1, canonical program `A047401.P131303670045038053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047401 (n : ℕ) : ℤ :=
  A047401.P131303670045038053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047402.P4066141716065143383

`a(n-3)+8` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A047402.P4066141716065143383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  a (n - 3) + 8

end

end A047402.P4066141716065143383

noncomputable section

/-- A047402: Numbers that are congruent to {2, 3, 6} mod 8.

Offset 1, canonical program `A047402.P4066141716065143383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047402 (n : ℕ) : ℤ :=
  (A047402.P4066141716065143383.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047403.P7199463197471503526

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=8`
-/

namespace A047403.P7199463197471503526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047403.P7199463197471503526

noncomputable section

/-- A047403: Numbers that are congruent to {0, 2, 3, 6} mod 8.

Offset 1, canonical program `A047403.P7199463197471503526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047403 (n : ℕ) : ℤ :=
  A047403.P7199463197471503526.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047404.P7787808199236193587

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A047404.P7787808199236193587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047404.P7787808199236193587

noncomputable section

/-- A047404: Numbers that are congruent to {1, 2, 3, 6} mod 8.

Offset 1, canonical program `A047404.P7787808199236193587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047404 (n : ℕ) : ℤ :=
  A047404.P7787808199236193587.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047404.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047407.P11961435203006469374

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A047407.P11961435203006469374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 6, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047407.P11961435203006469374

noncomputable section

/-- A047407: Numbers that are congruent to {0, 4, 6} mod 8.

Offset 1, canonical program `A047407.P11961435203006469374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047407 (n : ℕ) : ℤ :=
  A047407.P11961435203006469374.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047408.P13613846775049810332

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=9`
-/

namespace A047408.P13613846775049810332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047408.P13613846775049810332

noncomputable section

/-- A047408: Numbers that are congruent to {1, 4, 6} mod 8.

Offset 1, canonical program `A047408.P13613846775049810332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047408 (n : ℕ) : ℤ :=
  A047408.P13613846775049810332.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047408.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047409.P9780671960132574353

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A047409.P9780671960132574353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047409.P9780671960132574353

noncomputable section

/-- A047409: Numbers that are congruent to {0, 1, 4, 6} mod 8.

Offset 1, canonical program `A047409.P9780671960132574353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047409 (n : ℕ) : ℤ :=
  A047409.P9780671960132574353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047409.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047410.P13688401658080234463

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=10`
-/

namespace A047410.P13688401658080234463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047410.P13688401658080234463

noncomputable section

/-- A047410: Numbers that are congruent to {2, 4, 6} mod 8.

Offset 1, canonical program `A047410.P13688401658080234463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047410 (n : ℕ) : ℤ :=
  A047410.P13688401658080234463.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047411.P6697689027888198849

`a(n-4)+8` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A047411.P6697689027888198849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  a (n - 4) + 8

end

end A047411.P6697689027888198849

noncomputable section

/-- A047411: Numbers that are congruent to {1, 2, 4, 6} mod 8.

Offset 1, canonical program `A047411.P6697689027888198849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047411 (n : ℕ) : ℤ :=
  (A047411.P6697689027888198849.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047412.P4762915060399373107

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=6`
-/

namespace A047412.P4762915060399373107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4, 6] fun n a =>
  a (n - 5) + 8

end

end A047412.P4762915060399373107

noncomputable section

/-- A047412: Numbers that are congruent to {0, 1, 2, 4, 6} mod 8.

Offset 1, canonical program `A047412.P4762915060399373107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047412 (n : ℕ) : ℤ :=
  (A047412.P4762915060399373107.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047413.P5627630813551864417

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=6, a(3)=11`
-/

namespace A047413.P5627630813551864417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 6, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047413.P5627630813551864417

noncomputable section

/-- A047413: Numbers that are congruent to {3, 4, 6} mod 8.

Offset 1, canonical program `A047413.P5627630813551864417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047413 (n : ℕ) : ℤ :=
  A047413.P5627630813551864417.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047414.P5056995573248093105

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A047414.P5056995573248093105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047414.P5056995573248093105

noncomputable section

/-- A047414: Numbers that are congruent to {0, 3, 4, 6} mod 8.

Offset 1, canonical program `A047414.P5056995573248093105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047414 (n : ℕ) : ℤ :=
  A047414.P5056995573248093105.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047415.P2522339084573430227

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A047415.P2522339084573430227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 6] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047415.P2522339084573430227

noncomputable section

/-- A047415: Numbers that are congruent to {1, 3, 4, 6} mod 8.

Offset 1, canonical program `A047415.P2522339084573430227`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047415 (n : ℕ) : ℤ :=
  A047415.P2522339084573430227.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047417.P6895876287264115647

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6, a(4)=10`
-/

namespace A047417.P6895876287264115647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 6, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047417.P6895876287264115647

noncomputable section

/-- A047417: Numbers that are congruent to {2, 3, 4, 6} mod 8.

Offset 1, canonical program `A047417.P6895876287264115647`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047417 (n : ℕ) : ℤ :=
  A047417.P6895876287264115647.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047418.P1345519196304868612

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A047418.P1345519196304868612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 6] fun n a =>
  a (n - 5) + 8

end

end A047418.P1345519196304868612

noncomputable section

/-- A047418: Numbers that are congruent to {0, 2, 3, 4, 6} mod 8.

Offset 1, canonical program `A047418.P1345519196304868612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047418 (n : ℕ) : ℤ :=
  (A047418.P1345519196304868612.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047419.P16160555331920903995

`a(n-5)+8` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A047419.P16160555331920903995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6] fun n a =>
  a (n - 5) + 8

end

end A047419.P16160555331920903995

noncomputable section

/-- A047419: Numbers that are congruent to {1, 2, 3, 4, 6} mod 8.

Offset 1, canonical program `A047419.P16160555331920903995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047419 (n : ℕ) : ℤ :=
  (A047419.P16160555331920903995.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047422.P7884210832905524305

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=9`
-/

namespace A047422.P7884210832905524305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 9] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047422.P7884210832905524305

noncomputable section

/-- A047422: Numbers that are congruent to {1, 2, 3, 4, 5, 6} mod 8.

Offset 1, canonical program `A047422.P7884210832905524305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047422 (n : ℕ) : ℤ :=
  A047422.P7884210832905524305.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047423.P5170885895126220065

`3*floor(n/5)+n+2`
-/

namespace A047423.P5170885895126220065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 5⌋ + (n + 2 : ℤ)

end

end A047423.P5170885895126220065

noncomputable section

/-- A047423: Numbers that are congruent to {2, 3, 4, 5, 6} mod 8.

Offset 1, canonical program `A047423.P5170885895126220065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047423 (n : ℕ) : ℤ :=
  A047423.P5170885895126220065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047425.P5849184262278110392

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=6, a(4)=11`
-/

namespace A047425.P5849184262278110392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 6, 11] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047425.P5849184262278110392

noncomputable section

/-- A047425: Numbers that are congruent to {3, 4, 5, 6} mod 8.

Offset 1, canonical program `A047425.P5849184262278110392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047425 (n : ℕ) : ℤ :=
  A047425.P5849184262278110392.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047426.P4340007117005041171

`a(n-5)+8` with `a(0)=0, a(1)=3, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A047426.P4340007117005041171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 5, 6] fun n a =>
  a (n - 5) + 8

end

end A047426.P4340007117005041171

noncomputable section

/-- A047426: Numbers that are congruent to {0, 3, 4, 5, 6} mod 8.

Offset 1, canonical program `A047426.P4340007117005041171`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047426 (n : ℕ) : ℤ :=
  (A047426.P4340007117005041171.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047427.P6974556499480854377

`a(n-5)+8` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A047427.P6974556499480854377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 5, 6] fun n a =>
  a (n - 5) + 8

end

end A047427.P6974556499480854377

noncomputable section

/-- A047427: Numbers that are congruent to {1, 3, 4, 5, 6} mod 8.

Offset 1, canonical program `A047427.P6974556499480854377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047427 (n : ℕ) : ℤ :=
  (A047427.P6974556499480854377.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047428.P12961317249227322037

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=8`
-/

namespace A047428.P12961317249227322037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047428.P12961317249227322037

noncomputable section

/-- A047428: Numbers that are congruent to {0, 1, 3, 4, 5, 6} mod 8.

Offset 1, canonical program `A047428.P12961317249227322037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047428 (n : ℕ) : ℤ :=
  A047428.P12961317249227322037.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047429.P14342637327732012899

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=5, a(2)=6, a(3)=12`
-/

namespace A047429.P14342637327732012899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 6, 12] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047429.P14342637327732012899

noncomputable section

/-- A047429: Numbers that are congruent to {4, 5, 6} mod 8.

Offset 1, canonical program `A047429.P14342637327732012899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047429 (n : ℕ) : ℤ :=
  A047429.P14342637327732012899.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047430.P9050666657360748764

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=4, a(2)=5, a(3)=6, a(4)=8`
-/

namespace A047430.P9050666657360748764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047430.P9050666657360748764

noncomputable section

/-- A047430: Numbers that are congruent to {0, 4, 5, 6} mod 8.

Offset 1, canonical program `A047430.P9050666657360748764`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047430 (n : ℕ) : ℤ :=
  A047430.P9050666657360748764.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047431.P8971002530523694276

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A047431.P8971002530523694276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5, 6] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047431.P8971002530523694276

noncomputable section

/-- A047431: Numbers that are congruent to {1, 4, 5, 6} mod 8.

Offset 1, canonical program `A047431.P8971002530523694276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047431 (n : ℕ) : ℤ :=
  A047431.P8971002530523694276.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047432.P13950685821565066771

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A047432.P13950685821565066771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 5, 6] fun n a =>
  a (n - 5) + 8

end

end A047432.P13950685821565066771

noncomputable section

/-- A047432: Numbers that are congruent to {0, 1, 4, 5, 6} mod 8.

Offset 1, canonical program `A047432.P13950685821565066771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047432 (n : ℕ) : ℤ :=
  (A047432.P13950685821565066771.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047433.P12660239041685260655

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=4, a(2)=5, a(3)=6, a(4)=10`
-/

namespace A047433.P12660239041685260655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5, 6, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047433.P12660239041685260655

noncomputable section

/-- A047433: Numbers that are congruent to {2, 4, 5, 6} mod 8.

Offset 1, canonical program `A047433.P12660239041685260655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047433 (n : ℕ) : ℤ :=
  A047433.P12660239041685260655.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047434.P8442327793497562522

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A047434.P8442327793497562522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 5, 6] fun n a =>
  a (n - 5) + 8

end

end A047434.P8442327793497562522

noncomputable section

/-- A047434: Numbers that are congruent to {0, 2, 4, 5, 6} mod 8.

Offset 1, canonical program `A047434.P8442327793497562522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047434 (n : ℕ) : ℤ :=
  (A047434.P8442327793497562522.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047435.P5105460775094350563

`a(n-5)+8` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A047435.P5105460775094350563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5, 6] fun n a =>
  a (n - 5) + 8

end

end A047435.P5105460775094350563

noncomputable section

/-- A047435: Numbers that are congruent to {1, 2, 4, 5, 6} mod 8.

Offset 1, canonical program `A047435.P5105460775094350563`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047435 (n : ℕ) : ℤ :=
  (A047435.P5105460775094350563.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047436.P14598863736418183688

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=6, a(2)=13`
-/

namespace A047436.P14598863736418183688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 13] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A047436.P14598863736418183688

noncomputable section

/-- A047436: Numbers that are congruent to {5, 6} mod 8.

Offset 1, canonical program `A047436.P14598863736418183688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047436 (n : ℕ) : ℤ :=
  A047436.P14598863736418183688.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047437.P1100049954185587818

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=6, a(3)=8`
-/

namespace A047437.P1100049954185587818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047437.P1100049954185587818

noncomputable section

/-- A047437: Numbers that are congruent to {0, 5, 6} mod 8.

Offset 1, canonical program `A047437.P1100049954185587818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047437 (n : ℕ) : ℤ :=
  A047437.P1100049954185587818.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047438.P1700189770718513852

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=9`
-/

namespace A047438.P1700189770718513852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 6, 9] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047438.P1700189770718513852

noncomputable section

/-- A047438: Numbers that are congruent to {1, 5, 6} mod 8.

Offset 1, canonical program `A047438.P1700189770718513852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047438 (n : ℕ) : ℤ :=
  A047438.P1700189770718513852.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047439.P16291147198305102910

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6, a(4)=8`
-/

namespace A047439.P16291147198305102910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047439.P16291147198305102910

noncomputable section

/-- A047439: Numbers that are congruent to {0, 1, 5, 6} mod 8.

Offset 1, canonical program `A047439.P16291147198305102910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047439 (n : ℕ) : ℤ :=
  A047439.P16291147198305102910.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047440.P1123995831474827158

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=6, a(3)=10`
-/

namespace A047440.P1123995831474827158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 6, 10] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047440.P1123995831474827158

noncomputable section

/-- A047440: Numbers that are congruent to {2, 5, 6} mod 8.

Offset 1, canonical program `A047440.P1123995831474827158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047440 (n : ℕ) : ℤ :=
  A047440.P1123995831474827158.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047441.P13907457629378351587

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=6, a(4)=8`
-/

namespace A047441.P13907457629378351587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047441.P13907457629378351587

noncomputable section

/-- A047441: Numbers that are congruent to {0, 2, 5, 6} mod 8.

Offset 1, canonical program `A047441.P13907457629378351587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047441 (n : ℕ) : ℤ :=
  A047441.P13907457629378351587.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047442.P13069971331822172793

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=6`
-/

namespace A047442.P13069971331822172793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 5, 6] fun n a =>
  a (n - 5) + 8

end

end A047442.P13069971331822172793

noncomputable section

/-- A047442: Numbers that are congruent to {0, 1, 2, 5, 6} mod 8.

Offset 1, canonical program `A047442.P13069971331822172793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047442 (n : ℕ) : ℤ :=
  (A047442.P13069971331822172793.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047443.P3959666267228585458

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=5, a(2)=6, a(3)=11`
-/

namespace A047443.P3959666267228585458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 6, 11] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A047443.P3959666267228585458

noncomputable section

/-- A047443: Numbers that are congruent to {3, 5, 6} mod 8.

Offset 1, canonical program `A047443.P3959666267228585458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047443 (n : ℕ) : ℤ :=
  A047443.P3959666267228585458.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047444.P138381699723619892

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6`
-/

namespace A047444.P138381699723619892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 6] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A047444.P138381699723619892

noncomputable section

/-- A047444: Numbers that are congruent to {0, 3, 5, 6} mod 8.

Offset 1, canonical program `A047444.P138381699723619892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047444 (n : ℕ) : ℤ :=
  A047444.P138381699723619892.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047445.P11313214566147692399

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=6, a(4)=9`
-/

namespace A047445.P11313214566147692399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 6, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047445.P11313214566147692399

noncomputable section

/-- A047445: Numbers that are congruent to {1, 3, 5, 6} mod 8.

Offset 1, canonical program `A047445.P11313214566147692399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047445 (n : ℕ) : ℤ :=
  A047445.P11313214566147692399.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047446.P1324716764738612868

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=6`
-/

namespace A047446.P1324716764738612868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5, 6] fun n a =>
  a (n - 5) + 8

end

end A047446.P1324716764738612868

noncomputable section

/-- A047446: Numbers that are congruent to {0, 1, 3, 5, 6} mod 8.

Offset 1, canonical program `A047446.P1324716764738612868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047446 (n : ℕ) : ℤ :=
  (A047446.P1324716764738612868.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047447.P367983326946213881

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=6, a(4)=10`
-/

namespace A047447.P367983326946213881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 6, 10] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047447.P367983326946213881

noncomputable section

/-- A047447: Numbers that are congruent to {2, 3, 5, 6} mod 8.

Offset 1, canonical program `A047447.P367983326946213881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047447 (n : ℕ) : ℤ :=
  A047447.P367983326946213881.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047448.P12851231882716690150

`a(n-5)+8` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5, a(4)=6`
-/

namespace A047448.P12851231882716690150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 5, 6] fun n a =>
  a (n - 5) + 8

end

end A047448.P12851231882716690150

noncomputable section

/-- A047448: Numbers that are congruent to {0, 2, 3, 5, 6} mod 8.

Offset 1, canonical program `A047448.P12851231882716690150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047448 (n : ℕ) : ℤ :=
  (A047448.P12851231882716690150.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047449.P6879234436016793136

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=6, a(5)=9`
-/

namespace A047449.P6879234436016793136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 6, 9] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A047449.P6879234436016793136

noncomputable section

/-- A047449: Numbers that are primitively represented by x^2 + y^2 + z^2.

Offset 1, canonical program `A047449.P6879234436016793136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047449 (n : ℕ) : ℤ :=
  A047449.P6879234436016793136.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047450.P13159818605488685465

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=6, a(6)=8`
-/

namespace A047450.P13159818605488685465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 5, 6, 8] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A047450.P13159818605488685465

noncomputable section

/-- A047450: Numbers that are congruent to {0, 1, 2, 3, 5, 6} mod 8.

Offset 1, canonical program `A047450.P13159818605488685465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047450 (n : ℕ) : ℤ :=
  A047450.P13159818605488685465.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047451.P5867526328098052634

`ceil(8/3*ceil(3*n/2))`
-/

namespace A047451.P5867526328098052634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(8 : ℚ) / 3 * (⌈3 * ((n : ℚ) / 2)⌉ : ℚ)⌉

end

end A047451.P5867526328098052634

noncomputable section

/-- A047451: Numbers that are congruent to {0, 6} mod 8.

Offset 1, canonical program `A047451.P5867526328098052634`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047451 (n : ℕ) : ℤ :=
  A047451.P5867526328098052634.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047453.P10916099470245393643

`a(n-5)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A047453.P10916099470245393643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  a (n - 5) + 8

end

end A047453.P10916099470245393643

noncomputable section

/-- A047453: Numbers that are congruent to {0, 1, 2, 3, 4} mod 8.

Offset 1, canonical program `A047453.P10916099470245393643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047453 (n : ℕ) : ℤ :=
  (A047453.P10916099470245393643.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A047454.P12361144641598264333

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=9`
-/

namespace A047454.P12361144641598264333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 9] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A047454.P12361144641598264333

noncomputable section

/-- A047454: Numbers that are congruent to {1, 2, 3, 4} mod 8.

Offset 1, canonical program `A047454.P12361144641598264333`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047454 (n : ℕ) : ℤ :=
  A047454.P12361144641598264333.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A047454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A037524.P13456579308859914064

`7*a(n-1)+2-n%3` with `a(0)=2`
-/

namespace A037524.P13456579308859914064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A037524.P13456579308859914064

noncomputable section

/-- A037524: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

Offset 1, canonical program `A037524.P13456579308859914064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037524 (n : ℕ) : ℤ :=
  A037524.P13456579308859914064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037525.P3645376522653958400

`(n+1)%3+8*a(n-1)+1-(2*n)%3` with `a(0)=2`
-/

namespace A037525.P3645376522653958400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (((n + 1) % 3 : ℕ) : ℤ) + 8 * a (n - 1) + 1 - ((2 * n % 3 : ℕ) : ℤ)

end

end A037525.P3645376522653958400

noncomputable section

/-- A037525: Base-8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

Offset 1, canonical program `A037525.P3645376522653958400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037525 (n : ℕ) : ℤ :=
  A037525.P3645376522653958400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037526.P5762923100300980944

`9*a(n-1)+2-n%3` with `a(0)=2`
-/

namespace A037526.P5762923100300980944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  9 * a (n - 1) + (2 - ((n % 3 : ℕ) : ℤ))

end

end A037526.P5762923100300980944

noncomputable section

/-- A037526: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0.

Offset 1, canonical program `A037526.P5762923100300980944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037526 (n : ℕ) : ℤ :=
  A037526.P5762923100300980944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037527.P3200970942493487085

`2-n%3+10*a(n-1)` with `a(0)=2`
-/

namespace A037527.P3200970942493487085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n % 3 : ℕ) : ℤ) + 10 * a (n - 1)

end

end A037527.P3200970942493487085

noncomputable section

/-- A037527: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,0.

Offset 1, canonical program `A037527.P3200970942493487085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037527 (n : ℕ) : ℤ :=
  A037527.P3200970942493487085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037529.P2535816393255537815

`floor(22*4^(n+1)/63)`
-/

namespace A037529.P2535816393255537815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊22 * ((4 ^ (n + 1) : ℚ) / 63)⌋

end

end A037529.P2535816393255537815

noncomputable section

/-- A037529: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

Offset 1, canonical program `A037529.P2535816393255537815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037529 (n : ℕ) : ℤ :=
  A037529.P2535816393255537815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037530.P13294183411592468489

`5*a(n-1)+(n%3)!` with `a(0)=1`
-/

namespace A037530.P13294183411592468489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + Nat.factorial (n % 3)

end

end A037530.P13294183411592468489

noncomputable section

/-- A037530: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

Offset 1, canonical program `A037530.P13294183411592468489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037530 (n : ℕ) : ℤ :=
  (A037530.P13294183411592468489.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037531.P14627741031186620175

`(n%3)!+6*a(n-1)` with `a(0)=1`
-/

namespace A037531.P14627741031186620175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial (n % 3) + 6 * a (n - 1)

end

end A037531.P14627741031186620175

noncomputable section

/-- A037531: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

Offset 1, canonical program `A037531.P14627741031186620175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037531 (n : ℕ) : ℤ :=
  (A037531.P14627741031186620175.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037533.P4936422597269484264

`record[xor(8*a(n-1), ((n+1)%3)!)]` with `a(0)=1, a(1)=0`
-/

namespace A037533.P4936422597269484264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.xor (8 * f1 (n - 1)) (Nat.factorial ((n + 1) % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037533.P4936422597269484264

noncomputable section

/-- A037533: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

Offset 1, canonical program `A037533.P4936422597269484264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037533 (n : ℕ) : ℤ :=
  (A037533.P4936422597269484264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037534.P5473689454415263723

`∑[9*a(n-1)+n%3-1]` with `a(0)=1`
-/

namespace A037534.P5473689454415263723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  9 * f1 (n - 1) + (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037534.P5473689454415263723

noncomputable section

/-- A037534: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,1,2.

Offset 1, canonical program `A037534.P5473689454415263723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037534 (n : ℕ) : ℤ :=
  A037534.P5473689454415263723.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037535.P5880997522785279722

`10*a(n-1)+(n%3)!` with `a(0)=1`
-/

namespace A037535.P5880997522785279722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + Nat.factorial (n % 3)

end

end A037535.P5880997522785279722

noncomputable section

/-- A037535: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,1,2.

Offset 1, canonical program `A037535.P5880997522785279722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037535 (n : ℕ) : ℤ :=
  (A037535.P5880997522785279722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037536.P2090247481529191767

`floor(24*3^n/13)`
-/

namespace A037536.P2090247481529191767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊24 * ((3 ^ n : ℚ) / 13)⌋

end

end A037536.P2090247481529191767

noncomputable section

/-- A037536: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

Offset 1, canonical program `A037536.P2090247481529191767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A037536 (n : ℕ) : ℤ :=
  A037536.P2090247481529191767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A037536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037537.P12313071602333485829

`C(2, n%3)+4*a(n-1)` with `a(0)=1`
-/

namespace A037537.P12313071602333485829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose 2 (n % 3) + 4 * a (n - 1)

end

end A037537.P12313071602333485829

noncomputable section

/-- A037537: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

Offset 1, canonical program `A037537.P12313071602333485829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037537 (n : ℕ) : ℤ :=
  (A037537.P12313071602333485829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037538.P660177465705737017

`((n+1)%3)!+5*a(n-1)` with `a(0)=1`
-/

namespace A037538.P660177465705737017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n + 1) % 3) + 5 * a (n - 1)

end

end A037538.P660177465705737017

noncomputable section

/-- A037538: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

Offset 1, canonical program `A037538.P660177465705737017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037538 (n : ℕ) : ℤ :=
  (A037538.P660177465705737017.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037539.P14616036897209245101

`((n+1)%3)!+6*a(n-1)` with `a(0)=1`
-/

namespace A037539.P14616036897209245101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n + 1) % 3) + 6 * a (n - 1)

end

end A037539.P14616036897209245101

noncomputable section

/-- A037539: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

Offset 1, canonical program `A037539.P14616036897209245101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037539 (n : ℕ) : ℤ :=
  (A037539.P14616036897209245101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037540.P3891442172934062083

`dr(∑[n]²+1)+7*a(n-1)` with `a(0)=1`
-/

namespace A037540.P3891442172934062083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℤ) + 7 * a (n - 1)

end

end A037540.P3891442172934062083

noncomputable section

/-- A037540: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

Offset 1, canonical program `A037540.P3891442172934062083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037540 (n : ℕ) : ℤ :=
  (A037540.P3891442172934062083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037541.P7369799322513158392

`(∑[n]+1)%3+8*a(n-1)` with `a(0)=1`
-/

namespace A037541.P7369799322513158392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) % 3 + 8 * a (n - 1)

end

end A037541.P7369799322513158392

noncomputable section

/-- A037541: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

Offset 1, canonical program `A037541.P7369799322513158392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037541 (n : ℕ) : ℤ :=
  (A037541.P7369799322513158392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037542.P879070109763145588

`((n+1)%3)!+9*a(n-1)` with `a(0)=1`
-/

namespace A037542.P879070109763145588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial ((n + 1) % 3) + 9 * a (n - 1)

end

end A037542.P879070109763145588

noncomputable section

/-- A037542: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,1.

Offset 1, canonical program `A037542.P879070109763145588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037542 (n : ℕ) : ℤ :=
  (A037542.P879070109763145588.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037544.P16506962257957251514

`round(17*∑[3^n/13])`
-/

namespace A037544.P16506962257957251514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (17 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A037544.P16506962257957251514

noncomputable section

/-- A037544: Base-3 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

Offset 1, canonical program `A037544.P16506962257957251514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037544 (n : ℕ) : ℤ :=
  A037544.P16506962257957251514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037546.P6334552241946716499

`gcd(2, (n+1)%3)+5*a(n-1)` with `a(0)=1`
-/

namespace A037546.P6334552241946716499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 2 ((n + 1) % 3) + 5 * a (n - 1)

end

end A037546.P6334552241946716499

noncomputable section

/-- A037546: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

Offset 1, canonical program `A037546.P6334552241946716499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037546 (n : ℕ) : ℤ :=
  (A037546.P6334552241946716499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037547.P7177806526706256745

`6*a(n-1)+(n²+1)%3` with `a(0)=1`
-/

namespace A037547.P7177806526706256745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + (n ^ 2 + 1) % 3

end

end A037547.P7177806526706256745

noncomputable section

/-- A037547: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

Offset 1, canonical program `A037547.P7177806526706256745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037547 (n : ℕ) : ℤ :=
  (A037547.P7177806526706256745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037548.P10946690392973033112

`xor(3, 8*a(n-1)+2-n²%3)-a(n-1)` with `a(0)=1`
-/

namespace A037548.P10946690392973033112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 (8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))) - a (n - 1)

end

end A037548.P10946690392973033112

noncomputable section

/-- A037548: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

Offset 1, canonical program `A037548.P10946690392973033112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037548 (n : ℕ) : ℤ :=
  A037548.P10946690392973033112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037549.P15716232193076489800

`record[gcd(2, n%3)+8*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=10`
-/

namespace A037549.P15716232193076489800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 10] fun n f1 =>
  Nat.gcd 2 (n % 3) + 8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037549.P15716232193076489800

noncomputable section

/-- A037549: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

Offset 1, canonical program `A037549.P15716232193076489800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037549 (n : ℕ) : ℤ :=
  (A037549.P15716232193076489800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037550.P7881817864418467250

`a(n-1)+xor(3, 8*a(n-1)+2-n²%3)` with `a(0)=1`
-/

namespace A037550.P7881817864418467250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.xor 3 (8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ)))

end

end A037550.P7881817864418467250

noncomputable section

/-- A037550: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,2.

Offset 1, canonical program `A037550.P7881817864418467250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037550 (n : ℕ) : ℤ :=
  A037550.P7881817864418467250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037552.P14299983058608703620

`floor(11*3^(n+1)/13)`
-/

namespace A037552.P14299983058608703620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 * ((3 ^ (n + 1) : ℚ) / 13)⌋

end

end A037552.P14299983058608703620

noncomputable section

/-- A037552: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

Offset 1, canonical program `A037552.P14299983058608703620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037552 (n : ℕ) : ℤ :=
  A037552.P14299983058608703620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037553.P6801107588973871377

`4*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037553.P6801107588973871377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A037553.P6801107588973871377

noncomputable section

/-- A037553: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

Offset 1, canonical program `A037553.P6801107588973871377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037553 (n : ℕ) : ℤ :=
  A037553.P6801107588973871377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037554.P11989371830114067518

`5*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037554.P11989371830114067518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) + 2 - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A037554.P11989371830114067518

noncomputable section

/-- A037554: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

Offset 1, canonical program `A037554.P11989371830114067518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037554 (n : ℕ) : ℤ :=
  A037554.P11989371830114067518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037556.P12836065204404939358

`7*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037556.P12836065204404939358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  7 * a (n - 1) + 2 - ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A037556.P12836065204404939358

noncomputable section

/-- A037556: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

Offset 1, canonical program `A037556.P12836065204404939358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037556 (n : ℕ) : ℤ :=
  A037556.P12836065204404939358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037557.P14578156931034993338

`8*a(n-1)+2-n²%3` with `a(0)=2`
-/

namespace A037557.P14578156931034993338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A037557.P14578156931034993338

noncomputable section

/-- A037557: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

Offset 1, canonical program `A037557.P14578156931034993338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037557 (n : ℕ) : ℤ :=
  A037557.P14578156931034993338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037558.P11117013090615464913

`2-n²%3+9*a(n-1)` with `a(0)=2`
-/

namespace A037558.P11117013090615464913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ) + 9 * a (n - 1)

end

end A037558.P11117013090615464913

noncomputable section

/-- A037558: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,1.

Offset 1, canonical program `A037558.P11117013090615464913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037558 (n : ℕ) : ℤ :=
  A037558.P11117013090615464913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037560.P7439821189853776273

`round(25*∑[3^n/13])`
-/

namespace A037560.P7439821189853776273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (25 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A037560.P7439821189853776273

noncomputable section

/-- A037560: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

Offset 1, canonical program `A037560.P7439821189853776273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037560 (n : ℕ) : ℤ :=
  A037560.P7439821189853776273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037561.P9839442049059261697

`record[gcd(2, n%3)+4*a(n-1)]` with `a(0)=2, a(1)=0`
-/

namespace A037561.P9839442049059261697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  Nat.gcd 2 (n % 3) + 4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037561.P9839442049059261697

noncomputable section

/-- A037561: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

Offset 1, canonical program `A037561.P9839442049059261697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037561 (n : ℕ) : ℤ :=
  (A037561.P9839442049059261697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037562.P10211726301322497746

`(n+1)²%3+5*a(n-1)+1` with `a(0)=2`
-/

namespace A037562.P10211726301322497746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1) ^ 2 % 3 + 5 * a (n - 1) + 1

end

end A037562.P10211726301322497746

noncomputable section

/-- A037562: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

Offset 1, canonical program `A037562.P10211726301322497746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037562 (n : ℕ) : ℤ :=
  (A037562.P10211726301322497746.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037564.P16865458506272201370

`lcm(7, a(n-1))+gcd(2, (n+2)%3)` with `a(0)=2`
-/

namespace A037564.P16865458506272201370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 7 (a (n - 1)) + Nat.gcd 2 ((n + 2) % 3)

end

end A037564.P16865458506272201370

noncomputable section

/-- A037564: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

Offset 1, canonical program `A037564.P16865458506272201370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037564 (n : ℕ) : ℤ :=
  (A037564.P16865458506272201370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037565.P3069323030639566556

`record[gcd(2, n%3)+8*a(n-1)]` with `a(0)=2, a(1)=0`
-/

namespace A037565.P3069323030639566556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  Nat.gcd 2 (n % 3) + 8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037565.P3069323030639566556

noncomputable section

/-- A037565: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

Offset 1, canonical program `A037565.P3069323030639566556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037565 (n : ℕ) : ℤ :=
  (A037565.P3069323030639566556.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037566.P13693796413666377635

`∑[9*a(n-1)-(n%3-1)]` with `a(0)=2`
-/

namespace A037566.P13693796413666377635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  9 * f1 (n - 1) - (((n % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037566.P13693796413666377635

noncomputable section

/-- A037566: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,2,1.

Offset 1, canonical program `A037566.P13693796413666377635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037566 (n : ℕ) : ℤ :=
  A037566.P13693796413666377635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037567.P3617323617013866102

`gcd(2, (n+2)%3)+10*a(n-1)` with `a(0)=2`
-/

namespace A037567.P3617323617013866102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 ((n + 2) % 3) + 10 * a (n - 1)

end

end A037567.P3617323617013866102

noncomputable section

/-- A037567: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,2,1.

Offset 1, canonical program `A037567.P3617323617013866102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037567 (n : ℕ) : ℤ :=
  (A037567.P3617323617013866102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037568.P12802454849546910651

`gcd(2, n%3)+3*a(n-1)` with `a(0)=2`
-/

namespace A037568.P12802454849546910651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 3 * a (n - 1)

end

end A037568.P12802454849546910651

noncomputable section

/-- A037568: Base 3 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

Offset 1, canonical program `A037568.P12802454849546910651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037568 (n : ℕ) : ℤ :=
  (A037568.P12802454849546910651.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A037568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037569.P12524202437552207010

`gcd(2, n%3)+4*a(n-1)` with `a(0)=2`
-/

namespace A037569.P12524202437552207010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 4 * a (n - 1)

end

end A037569.P12524202437552207010

noncomputable section

/-- A037569: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

Offset 1, canonical program `A037569.P12524202437552207010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037569 (n : ℕ) : ℤ :=
  (A037569.P12524202437552207010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037570.P11572236395327046134

`gcd(2, n%3)+5*a(n-1)` with `a(0)=2`
-/

namespace A037570.P11572236395327046134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 5 * a (n - 1)

end

end A037570.P11572236395327046134

noncomputable section

/-- A037570: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

Offset 1, canonical program `A037570.P11572236395327046134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037570 (n : ℕ) : ℤ :=
  (A037570.P11572236395327046134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037572.P9567802194528461988

`gcd(2, n%3)+8*a(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A037572.P9567802194528461988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.gcd 2 (n % 3) : ℤ) + 8 * a (n - 1) - a (n - 1)

end

end A037572.P9567802194528461988

noncomputable section

/-- A037572: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

Offset 1, canonical program `A037572.P9567802194528461988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037572 (n : ℕ) : ℤ :=
  A037572.P9567802194528461988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037573.P8807492080208808275

`gcd(2, n%3)+8*a(n-1)` with `a(0)=2`
-/

namespace A037573.P8807492080208808275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 8 * a (n - 1)

end

end A037573.P8807492080208808275

noncomputable section

/-- A037573: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

Offset 1, canonical program `A037573.P8807492080208808275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037573 (n : ℕ) : ℤ :=
  (A037573.P8807492080208808275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037574.P9828567409076166201

`a(n-1)+gcd(2, n%3)+8*a(n-1)` with `a(0)=2`
-/

namespace A037574.P9828567409076166201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (Nat.gcd 2 (n % 3) + 8 * a (n - 1))

end

end A037574.P9828567409076166201

noncomputable section

/-- A037574: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,2.

Offset 1, canonical program `A037574.P9828567409076166201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037574 (n : ℕ) : ℤ :=
  (A037574.P9828567409076166201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037575.P15708566196228955205

`gcd(2, n%3)+10*a(n-1)` with `a(0)=2`
-/

namespace A037575.P15708566196228955205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 2 (n % 3) + 10 * a (n - 1)

end

end A037575.P15708566196228955205

noncomputable section

/-- A037575: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,2.

Offset 1, canonical program `A037575.P15708566196228955205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037575 (n : ℕ) : ℤ :=
  (A037575.P15708566196228955205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037583.P14678905630276023039

`gcd(3, n%2)+4*a(n-1)` with `a(0)=3`
-/

namespace A037583.P14678905630276023039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 3 (n % 2) + 4 * a (n - 1)

end

end A037583.P14678905630276023039

noncomputable section

/-- A037583: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

Offset 1, canonical program `A037583.P14678905630276023039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037583 (n : ℕ) : ℤ :=
  (A037583.P14678905630276023039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037584.P5079666758518495645

`floor(10/3*5^n)`
-/

namespace A037584.P5079666758518495645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) / 3 * (5 ^ n : ℚ)⌋

end

end A037584.P5079666758518495645

noncomputable section

/-- A037584: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

Offset 1, canonical program `A037584.P5079666758518495645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037584 (n : ℕ) : ℤ :=
  A037584.P5079666758518495645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037585.P15463788125126786900

`gcd(3, n%2)+6*a(n-1)` with `a(0)=3`
-/

namespace A037585.P15463788125126786900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 3 (n % 2) + 6 * a (n - 1)

end

end A037585.P15463788125126786900

noncomputable section

/-- A037585: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

Offset 1, canonical program `A037585.P15463788125126786900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037585 (n : ℕ) : ℤ :=
  (A037585.P15463788125126786900.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037587.P11541798619833058840

`gcd(3, n%2)+8*a(n-1)` with `a(0)=3`
-/

namespace A037587.P11541798619833058840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 3 (n % 2) + 8 * a (n - 1)

end

end A037587.P11541798619833058840

noncomputable section

/-- A037587: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

Offset 1, canonical program `A037587.P11541798619833058840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037587 (n : ℕ) : ℤ :=
  (A037587.P11541798619833058840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037588.P11995479479791262946

`round(63/20*9^n)`
-/

namespace A037588.P11995479479791262946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((63 : ℚ) / 20 * (9 ^ n : ℚ))

end

end A037588.P11995479479791262946

noncomputable section

/-- A037588: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,1.

Offset 1, canonical program `A037588.P11995479479791262946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037588 (n : ℕ) : ℤ :=
  A037588.P11995479479791262946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037589.P16561913385858315834

`gcd(3, n%2)+10*a(n-1)` with `a(0)=3`
-/

namespace A037589.P16561913385858315834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.gcd 3 (n % 2) + 10 * a (n - 1)

end

end A037589.P16561913385858315834

noncomputable section

/-- A037589: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,1.

Offset 1, canonical program `A037589.P16561913385858315834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037589 (n : ℕ) : ℤ :=
  (A037589.P16561913385858315834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037590.P2185270716371956268

`xor(4*a(n-1)+1, n%3)` with `a(0)=1`
-/

namespace A037590.P2185270716371956268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (n - 1) + 1) (n % 3)

end

end A037590.P2185270716371956268

noncomputable section

/-- A037590: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

Offset 1, canonical program `A037590.P2185270716371956268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037590 (n : ℕ) : ℤ :=
  (A037590.P2185270716371956268.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037595.P17745472309475842132

`floor(9^n+a(n-1)/3)` with `a(0)=1`
-/

namespace A037595.P17745472309475842132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(9 ^ n : ℚ) + (a (n - 1) : ℚ) / 3⌋

end

end A037595.P17745472309475842132

noncomputable section

/-- A037595: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3.

Offset 1, canonical program `A037595.P17745472309475842132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037595 (n : ℕ) : ℤ :=
  A037595.P17745472309475842132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037598.P14435589116521687136

`∑[xor(5*a(n-1), dr(6*n)%4)]` with `a(0)=1`
-/

namespace A037598.P14435589116521687136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (SequenceMachineLib.digitalRoot (6 * n : ℤ) % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037598.P14435589116521687136

noncomputable section

/-- A037598: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

Offset 1, canonical program `A037598.P14435589116521687136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037598 (n : ℕ) : ℤ :=
  (A037598.P14435589116521687136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037599.P17724459491578180383

`∑[2^n]%7+6*a(n-1)` with `a(0)=1`
-/

namespace A037599.P17724459491578180383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 7 + 6 * a (n - 1)

end

end A037599.P17724459491578180383

noncomputable section

/-- A037599: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

Offset 1, canonical program `A037599.P17724459491578180383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037599 (n : ℕ) : ℤ :=
  (A037599.P17724459491578180383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037601.P478568719940207731

`xor(2, 8*a(n-1)-(1-n)%3+1)` with `a(0)=1`
-/

namespace A037601.P478568719940207731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 2 (8 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3 + 1)

end

end A037601.P478568719940207731

noncomputable section

/-- A037601: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0.

Offset 1, canonical program `A037601.P478568719940207731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037601 (n : ℕ) : ℤ :=
  A037601.P478568719940207731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037605.P8447811669916736584

`5*a(n-1)+n%3+1` with `a(0)=1`
-/

namespace A037605.P8447811669916736584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (n % 3 + 1)

end

end A037605.P8447811669916736584

noncomputable section

/-- A037605: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

Offset 1, canonical program `A037605.P8447811669916736584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037605 (n : ℕ) : ℤ :=
  (A037605.P8447811669916736584.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037606.P6950765051620298847

`6*a(n-1)+1--n%3` with `a(0)=1`
-/

namespace A037606.P6950765051620298847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) + 1 - Int.tmod (-(n : ℤ)) 3

end

end A037606.P6950765051620298847

noncomputable section

/-- A037606: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3.

Offset 1, canonical program `A037606.P6950765051620298847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037606 (n : ℕ) : ℤ :=
  A037606.P6950765051620298847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037610.P1976334318519179870

`10*a(n-1)+n%3+1` with `a(0)=1`
-/

namespace A037610.P1976334318519179870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (n % 3 + 1)

end

end A037610.P1976334318519179870

noncomputable section

/-- A037610: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,3.

Offset 1, canonical program `A037610.P1976334318519179870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037610 (n : ℕ) : ℤ :=
  (A037610.P1976334318519179870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037611.P10226676681078345726

`or(4*a(n-1), dr(3*n))` with `a(0)=1`
-/

namespace A037611.P10226676681078345726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (4 * a (n - 1)) (SequenceMachineLib.digitalRoot (3 * n : ℤ))

end

end A037611.P10226676681078345726

noncomputable section

/-- A037611: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

Offset 1, canonical program `A037611.P10226676681078345726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037611 (n : ℕ) : ℤ :=
  (A037611.P10226676681078345726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037612.P15379460889894354523

`5*a(n-1)+3-(n-1)%3` with `a(0)=1`
-/

namespace A037612.P15379460889894354523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (3 - Int.tmod ((n : ℤ) - 1) 3)

end

end A037612.P15379460889894354523

noncomputable section

/-- A037612: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

Offset 1, canonical program `A037612.P15379460889894354523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037612 (n : ℕ) : ℤ :=
  A037612.P15379460889894354523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037615.P7177393196109911626

`xor(3, 8*a(n-1)-(1-n)%3)` with `a(0)=1`
-/

namespace A037615.P7177393196109911626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 3 (8 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3)

end

end A037615.P7177393196109911626

noncomputable section

/-- A037615: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2.

Offset 1, canonical program `A037615.P7177393196109911626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037615 (n : ℕ) : ℤ :=
  A037615.P7177393196109911626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037618.P7225440960202106372

`round(5/3*∑[4^n])`
-/

namespace A037618.P7225440960202106372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A037618.P7225440960202106372

noncomputable section

/-- A037618: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3.

Offset 1, canonical program `A037618.P7225440960202106372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037618 (n : ℕ) : ℤ :=
  A037618.P7225440960202106372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037625.P3489549200557216245

`xor(2*(2*a(n-1)+1), n%3)` with `a(0)=2`
-/

namespace A037625.P3489549200557216245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor (2 * (2 * a (n - 1) + 1)) (n % 3)

end

end A037625.P3489549200557216245

noncomputable section

/-- A037625: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

Offset 1, canonical program `A037625.P3489549200557216245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037625 (n : ℕ) : ℤ :=
  (A037625.P3489549200557216245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037629.P13910407384209085798

`xor(8*a(n-1)+2-n²%3, (2*n)%3)` with `a(0)=2`
-/

namespace A037629.P13910407384209085798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (8 * a (n - 1) + (2 - ((n ^ 2 % 3 : ℕ) : ℤ))) ((2 * n % 3 : ℕ) : ℤ)

end

end A037629.P13910407384209085798

noncomputable section

/-- A037629: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0.

Offset 1, canonical program `A037629.P13910407384209085798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037629 (n : ℕ) : ℤ :=
  A037629.P13910407384209085798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037631.P8282552389647622044

`xor(2, n%3)+10*a(n-1)` with `a(0)=2`
-/

namespace A037631.P8282552389647622044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 2 (n % 3) + 10 * a (n - 1)

end

end A037631.P8282552389647622044

noncomputable section

/-- A037631: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,3,0.

Offset 1, canonical program `A037631.P8282552389647622044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037631 (n : ℕ) : ℤ :=
  (A037631.P8282552389647622044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037633.P2248933226734604356

`5*a(n-1)+3-(n+1)%3` with `a(0)=2`
-/

namespace A037633.P2248933226734604356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) + (3 - (((n + 1) % 3 : ℕ) : ℤ))

end

end A037633.P2248933226734604356

noncomputable section

/-- A037633: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

Offset 1, canonical program `A037633.P2248933226734604356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037633 (n : ℕ) : ℤ :=
  A037633.P2248933226734604356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037635.P9359658036191781758

`xor(3, (n+1)%3+8*a(n-1))-a(n-1)` with `a(0)=2`
-/

namespace A037635.P9359658036191781758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor 3 ((((n + 1) % 3 : ℕ) : ℤ) + 8 * a (n - 1)) - a (n - 1)

end

end A037635.P9359658036191781758

noncomputable section

/-- A037635: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

Offset 1, canonical program `A037635.P9359658036191781758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037635 (n : ℕ) : ℤ :=
  A037635.P9359658036191781758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037636.P1889350488178368916

`xor(3, (n+1)%3+8*a(n-1))` with `a(0)=2`
-/

namespace A037636.P1889350488178368916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 3 ((n + 1) % 3 + 8 * a (n - 1))

end

end A037636.P1889350488178368916

noncomputable section

/-- A037636: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

Offset 1, canonical program `A037636.P1889350488178368916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037636 (n : ℕ) : ℤ :=
  (A037636.P1889350488178368916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037637.P7276121262270544448

`a(n-1)+xor(3, (n+1)%3+8*a(n-1))` with `a(0)=2`
-/

namespace A037637.P7276121262270544448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.xor 3 ((n + 1) % 3 + 8 * a (n - 1))

end

end A037637.P7276121262270544448

noncomputable section

/-- A037637: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3.

Offset 1, canonical program `A037637.P7276121262270544448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037637 (n : ℕ) : ℤ :=
  (A037637.P7276121262270544448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037640.P8676259652554583598

`5*a(n-1)+(n+1)%3+1` with `a(0)=2`
-/

namespace A037640.P8676259652554583598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) + ((n + 1) % 3 + 1)

end

end A037640.P8676259652554583598

noncomputable section

/-- A037640: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

Offset 1, canonical program `A037640.P8676259652554583598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037640 (n : ℕ) : ℤ :=
  (A037640.P8676259652554583598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037642.P6377176343451741549

`(n+1)%3+7*a(n-1)+1` with `a(0)=2`
-/

namespace A037642.P6377176343451741549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1) % 3 + 7 * a (n - 1) + 1

end

end A037642.P6377176343451741549

noncomputable section

/-- A037642: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

Offset 1, canonical program `A037642.P6377176343451741549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037642 (n : ℕ) : ℤ :=
  (A037642.P6377176343451741549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037643.P9311204941093430127

`(n+1)%3+8*a(n-1)+1` with `a(0)=2`
-/

namespace A037643.P9311204941093430127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1) % 3 + 8 * a (n - 1) + 1

end

end A037643.P9311204941093430127

noncomputable section

/-- A037643: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

Offset 1, canonical program `A037643.P9311204941093430127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037643 (n : ℕ) : ℤ :=
  (A037643.P9311204941093430127.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037644.P18169131705346232968

`(n+1)%3+9*a(n-1)+1` with `a(0)=2`
-/

namespace A037644.P18169131705346232968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1) % 3 + 9 * a (n - 1) + 1

end

end A037644.P18169131705346232968

noncomputable section

/-- A037644: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1.

Offset 1, canonical program `A037644.P18169131705346232968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037644 (n : ℕ) : ℤ :=
  (A037644.P18169131705346232968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037645.P7062246738727833335

`(n+1)%3+10*a(n-1)+1` with `a(0)=2`
-/

namespace A037645.P7062246738727833335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1) % 3 + 10 * a (n - 1) + 1

end

end A037645.P7062246738727833335

noncomputable section

/-- A037645: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,3,1.

Offset 1, canonical program `A037645.P7062246738727833335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037645 (n : ℕ) : ℤ :=
  (A037645.P7062246738727833335.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037646.P5535459887030610652

`ceil(7/3*∑[4^n])`
-/

namespace A037646.P5535459887030610652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A037646.P5535459887030610652

noncomputable section

/-- A037646: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

Offset 1, canonical program `A037646.P5535459887030610652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037646 (n : ℕ) : ℤ :=
  A037646.P5535459887030610652.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037647.P4263462015147500010

`gcd(4, n%3)-(1-5*a(n-1))` with `a(0)=3`
-/

namespace A037647.P4263462015147500010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Nat.gcd 4 (n % 3) : ℤ) - (1 - 5 * a (n - 1))

end

end A037647.P4263462015147500010

noncomputable section

/-- A037647: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1.

Offset 1, canonical program `A037647.P4263462015147500010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037647 (n : ℕ) : ℤ :=
  A037647.P4263462015147500010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037652.P15871230901910890562

`char[3*n]+5*a(n-1)+(n-1)%3+5*a(n-1)` with `a(0)=3`
-/

namespace A037652.P15871230901910890562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 5 * a (n - 1) + (Int.tmod ((n : ℤ) - 1) 3 + 5 * a (n - 1))

end

end A037652.P15871230901910890562

noncomputable section

/-- A037652: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,0,1.

Offset 1, canonical program `A037652.P15871230901910890562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037652 (n : ℕ) : ℤ :=
  A037652.P15871230901910890562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037657.P11691003737513348901

`xor(2, (n+1)%3+8*a(n-1))` with `a(0)=3`
-/

namespace A037657.P11691003737513348901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 2 ((n + 1) % 3 + 8 * a (n - 1))

end

end A037657.P11691003737513348901

noncomputable section

/-- A037657: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2.

Offset 1, canonical program `A037657.P11691003737513348901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037657 (n : ℕ) : ℤ :=
  (A037657.P11691003737513348901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037659.P14837718224344973064

`or(2, a(n-1)+9*a(n-1)+2-(n+1)%3)` with `a(0)=3`
-/

namespace A037659.P14837718224344973064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 2 (a (n - 1) + (9 * a (n - 1) + (2 - (((n + 1) % 3 : ℕ) : ℤ))))

end

end A037659.P14837718224344973064

noncomputable section

/-- A037659: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,0,2.

Offset 1, canonical program `A037659.P14837718224344973064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037659 (n : ℕ) : ℤ :=
  A037659.P14837718224344973064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037664.P12011888614752622125

`xor(1, 8*a(n-1)-(1-n)%3)` with `a(0)=3`
-/

namespace A037664.P12011888614752622125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor 1 (8 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 3)

end

end A037664.P12011888614752622125

noncomputable section

/-- A037664: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0.

Offset 1, canonical program `A037664.P12011888614752622125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037664 (n : ℕ) : ℤ :=
  A037664.P12011888614752622125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037666.P3152033718375423894

`or(2, or(10*a(n-1), dr(3*n)))` with `a(0)=3`
-/

namespace A037666.P3152033718375423894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 2 (Nat.lor (10 * a (n - 1)) (SequenceMachineLib.digitalRoot (3 * n : ℤ)))

end

end A037666.P3152033718375423894

noncomputable section

/-- A037666: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,1,0.

Offset 1, canonical program `A037666.P3152033718375423894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037666 (n : ℕ) : ℤ :=
  (A037666.P3152033718375423894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037667.P15861966374494071556

`floor(32*4^n/9)`
-/

namespace A037667.P15861966374494071556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊32 * ((4 ^ n : ℚ) / 9)⌋

end

end A037667.P15861966374494071556

noncomputable section

/-- A037667: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

Offset 1, canonical program `A037667.P15861966374494071556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037667 (n : ℕ) : ℤ :=
  A037667.P15861966374494071556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037671.P1870308382710318107

`xor(1, (n+1)%3+8*a(n-1)+1)` with `a(0)=3`
-/

namespace A037671.P1870308382710318107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 ((n + 1) % 3 + 8 * a (n - 1) + 1)

end

end A037671.P1870308382710318107

noncomputable section

/-- A037671: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0.

Offset 1, canonical program `A037671.P1870308382710318107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037671 (n : ℕ) : ℤ :=
  (A037671.P1870308382710318107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037674.P130980568173129161

`floor(5*4^(n+1)/17)`
-/

namespace A037674.P130980568173129161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((4 ^ (n + 1) : ℚ) / 17)⌋

end

end A037674.P130980568173129161

noncomputable section

/-- A037674: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

Offset 1, canonical program `A037674.P130980568173129161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037674 (n : ℕ) : ℤ :=
  A037674.P130980568173129161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037675.P13074106034015113982

`∑[xor(5*a(n-1), gcd(2, n))]` with `a(0)=1`
-/

namespace A037675.P13074106034015113982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037675.P13074106034015113982

noncomputable section

/-- A037675: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

Offset 1, canonical program `A037675.P13074106034015113982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A037675 (n : ℕ) : ℤ :=
  (A037675.P13074106034015113982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A037675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037679.P16565271596860764363

`∑[xor(9*a(n-1), gcd(2, n))]` with `a(0)=1`
-/

namespace A037679.P16565271596860764363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (9 * f1 (n - 1)) (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037679.P16565271596860764363

noncomputable section

/-- A037679: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,2,3.

Offset 1, canonical program `A037679.P16565271596860764363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037679 (n : ℕ) : ℤ :=
  (A037679.P16565271596860764363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037681.P14844236043975556058

`and(3, 1-n)+4*a(n-1)` with `a(0)=1`
-/

namespace A037681.P14844236043975556058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 3 (1 - (n : ℤ)) + 4 * a (n - 1)

end

end A037681.P14844236043975556058

noncomputable section

/-- A037681: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

Offset 1, canonical program `A037681.P14844236043975556058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037681 (n : ℕ) : ℤ :=
  A037681.P14844236043975556058.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037682.P7397137621328689751

`∑[5*a(n-1)-(1-and(4, n²))]` with `a(0)=1`
-/

namespace A037682.P7397137621328689751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - (1 - (Nat.land 4 (n ^ 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037682.P7397137621328689751

noncomputable section

/-- A037682: Base-5 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

Offset 1, canonical program `A037682.P7397137621328689751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037682 (n : ℕ) : ℤ :=
  A037682.P7397137621328689751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037683.P2203083503947360209

`and(3, 1-n)+6*a(n-1)` with `a(0)=1`
-/

namespace A037683.P2203083503947360209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 3 (1 - (n : ℤ)) + 6 * a (n - 1)

end

end A037683.P2203083503947360209

noncomputable section

/-- A037683: Base-6 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

Offset 1, canonical program `A037683.P2203083503947360209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037683 (n : ℕ) : ℤ :=
  A037683.P2203083503947360209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037685.P15733559239927117828

`a(n-1)+or(3, 7*a(n-1))` with `a(0)=1`
-/

namespace A037685.P15733559239927117828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lor 3 (7 * a (n - 1))

end

end A037685.P15733559239927117828

noncomputable section

/-- A037685: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

Offset 1, canonical program `A037685.P15733559239927117828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037685 (n : ℕ) : ℤ :=
  (A037685.P15733559239927117828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037686.P2747248462982251601

`and(3, 1-n)+9*a(n-1)` with `a(0)=1`
-/

namespace A037686.P2747248462982251601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 3 (1 - (n : ℤ)) + 9 * a (n - 1)

end

end A037686.P2747248462982251601

noncomputable section

/-- A037686: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,0,3,2.

Offset 1, canonical program `A037686.P2747248462982251601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037686 (n : ℕ) : ℤ :=
  A037686.P2747248462982251601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037687.P5949606701607296405

`and(3, 1-n)+10*a(n-1)` with `a(0)=1`
-/

namespace A037687.P5949606701607296405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land 3 (1 - (n : ℤ)) + 10 * a (n - 1)

end

end A037687.P5949606701607296405

noncomputable section

/-- A037687: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,0,3,2.

Offset 1, canonical program `A037687.P5949606701607296405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037687 (n : ℕ) : ℤ :=
  A037687.P5949606701607296405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037695.P1505977341628650606

`(n+1)%4+4*a(n-1)` with `a(0)=1`
-/

namespace A037695.P1505977341628650606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 4 + 4 * a (n - 1)

end

end A037695.P1505977341628650606

noncomputable section

/-- A037695: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

Offset 1, canonical program `A037695.P1505977341628650606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037695 (n : ℕ) : ℤ :=
  (A037695.P1505977341628650606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037696.P7838453811284979200

`(n+1)%4+5*a(n-1)` with `a(0)=1`
-/

namespace A037696.P7838453811284979200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 4 + 5 * a (n - 1)

end

end A037696.P7838453811284979200

noncomputable section

/-- A037696: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

Offset 1, canonical program `A037696.P7838453811284979200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037696 (n : ℕ) : ℤ :=
  (A037696.P7838453811284979200.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037697.P8112122253678047784

`(n+1)%4+6*a(n-1)` with `a(0)=1`
-/

namespace A037697.P8112122253678047784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 4 + 6 * a (n - 1)

end

end A037697.P8112122253678047784

noncomputable section

/-- A037697: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

Offset 1, canonical program `A037697.P8112122253678047784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037697 (n : ℕ) : ℤ :=
  (A037697.P8112122253678047784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037698.P13802440831282890987

`(n+1)%4+7*a(n-1)` with `a(0)=1`
-/

namespace A037698.P13802440831282890987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 4 + 7 * a (n - 1)

end

end A037698.P13802440831282890987

noncomputable section

/-- A037698: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

Offset 1, canonical program `A037698.P13802440831282890987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037698 (n : ℕ) : ℤ :=
  (A037698.P13802440831282890987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A037698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037699.P4637923517044693852

`(n+1)%4+8*a(n-1)` with `a(0)=1`
-/

namespace A037699.P4637923517044693852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 4 + 8 * a (n - 1)

end

end A037699.P4637923517044693852

noncomputable section

/-- A037699: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

Offset 1, canonical program `A037699.P4637923517044693852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037699 (n : ℕ) : ℤ :=
  (A037699.P4637923517044693852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037700.P1811428850090887618

`(n+1)%4+9*a(n-1)` with `a(0)=1`
-/

namespace A037700.P1811428850090887618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 4 + 9 * a (n - 1)

end

end A037700.P1811428850090887618

noncomputable section

/-- A037700: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

Offset 1, canonical program `A037700.P1811428850090887618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037700 (n : ℕ) : ℤ :=
  (A037700.P1811428850090887618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037701.P8625468245689983928

`(n+1)%4+10*a(n-1)` with `a(0)=1`
-/

namespace A037701.P8625468245689983928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) % 4 + 10 * a (n - 1)

end

end A037701.P8625468245689983928

noncomputable section

/-- A037701: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,3,0.

Offset 1, canonical program `A037701.P8625468245689983928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037701 (n : ℕ) : ℤ :=
  (A037701.P8625468245689983928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037702.P11684367715093722818

`xor(or(3, a(n-1))+3*a(n-1), and(1, n))` with `a(0)=1`
-/

namespace A037702.P11684367715093722818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.lor 3 (a (n - 1)) + 3 * a (n - 1)) (Nat.land 1 n)

end

end A037702.P11684367715093722818

noncomputable section

/-- A037702: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

Offset 1, canonical program `A037702.P11684367715093722818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037702 (n : ℕ) : ℤ :=
  (A037702.P11684367715093722818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037709.P13722452577715119678

`floor(8*4^(n+1)/17)`
-/

namespace A037709.P13722452577715119678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((4 ^ (n + 1) : ℚ) / 17)⌋

end

end A037709.P13722452577715119678

noncomputable section

/-- A037709: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

Offset 1, canonical program `A037709.P13722452577715119678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037709 (n : ℕ) : ℤ :=
  A037709.P13722452577715119678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037716.P3278010532799000268

`floor(9*4^(n+1)/17)`
-/

namespace A037716.P3278010532799000268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((4 ^ (n + 1) : ℚ) / 17)⌋

end

end A037716.P3278010532799000268

noncomputable section

/-- A037716: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

Offset 1, canonical program `A037716.P3278010532799000268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037716 (n : ℕ) : ℤ :=
  A037716.P3278010532799000268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037717.P184041688980154751

`∑[xor(5*a(n-1), gcd(2, n+1))]` with `a(0)=2`
-/

namespace A037717.P184041688980154751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (Nat.gcd 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037717.P184041688980154751

noncomputable section

/-- A037717: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

Offset 1, canonical program `A037717.P184041688980154751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037717 (n : ℕ) : ℤ :=
  (A037717.P184041688980154751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037721.P3815079518860697951

`∑[xor(9*a(n-1), gcd(2, n+1))]` with `a(0)=2`
-/

namespace A037721.P3815079518860697951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor (9 * f1 (n - 1)) (Nat.gcd 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037721.P3815079518860697951

noncomputable section

/-- A037721: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

Offset 1, canonical program `A037721.P3815079518860697951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037721 (n : ℕ) : ℤ :=
  (A037721.P3815079518860697951.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037723.P16423035490756807643

`xor(or(3, a(n-1))+3*a(n-1), and(1, n))` with `a(0)=2`
-/

namespace A037723.P16423035490756807643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor (Nat.lor 3 (a (n - 1)) + 3 * a (n - 1)) (Nat.land 1 n)

end

end A037723.P16423035490756807643

noncomputable section

/-- A037723: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

Offset 1, canonical program `A037723.P16423035490756807643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037723 (n : ℕ) : ℤ :=
  (A037723.P16423035490756807643.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037725.P325807203560056917

`xor(1, or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1))` with `a(0)=2`
-/

namespace A037725.P325807203560056917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 1 (Nat.lor 1 ((n + 1) % 2 + 3 * a (n - 1)) + ((n + 1) % 2 + 3 * a (n - 1)))

end

end A037725.P325807203560056917

noncomputable section

/-- A037725: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

Offset 1, canonical program `A037725.P325807203560056917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037725 (n : ℕ) : ℤ :=
  (A037725.P325807203560056917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037730.P5804343078596764074

`and(3, 2-n)+4*a(n-1)` with `a(0)=2`
-/

namespace A037730.P5804343078596764074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land 3 (2 - (n : ℤ)) + 4 * a (n - 1)

end

end A037730.P5804343078596764074

noncomputable section

/-- A037730: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

Offset 1, canonical program `A037730.P5804343078596764074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037730 (n : ℕ) : ℤ :=
  A037730.P5804343078596764074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037731.P3257654858875520102

`and(3, 2-n)+5*a(n-1)` with `a(0)=2`
-/

namespace A037731.P3257654858875520102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land 3 (2 - (n : ℤ)) + 5 * a (n - 1)

end

end A037731.P3257654858875520102

noncomputable section

/-- A037731: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

Offset 1, canonical program `A037731.P3257654858875520102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037731 (n : ℕ) : ℤ :=
  A037731.P3257654858875520102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037732.P10816121770740865779

`and(3, 2-n)+6*a(n-1)` with `a(0)=2`
-/

namespace A037732.P10816121770740865779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land 3 (2 - (n : ℤ)) + 6 * a (n - 1)

end

end A037732.P10816121770740865779

noncomputable section

/-- A037732: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

Offset 1, canonical program `A037732.P10816121770740865779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037732 (n : ℕ) : ℤ :=
  A037732.P10816121770740865779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037734.P7034088594166417114

`a(n-1)+or(3, 7*a(n-1))` with `a(0)=2`
-/

namespace A037734.P7034088594166417114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.lor 3 (7 * a (n - 1))

end

end A037734.P7034088594166417114

noncomputable section

/-- A037734: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

Offset 1, canonical program `A037734.P7034088594166417114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037734 (n : ℕ) : ℤ :=
  (A037734.P7034088594166417114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037736.P17008864096484820772

`and(3, 2-n)+10*a(n-1)` with `a(0)=2`
-/

namespace A037736.P17008864096484820772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land 3 (2 - (n : ℤ)) + 10 * a (n - 1)

end

end A037736.P17008864096484820772

noncomputable section

/-- A037736: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,0,3.

Offset 1, canonical program `A037736.P17008864096484820772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037736 (n : ℕ) : ℤ :=
  A037736.P17008864096484820772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037739.P18257991991248789603

`or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1)` with `a(0)=2`
-/

namespace A037739.P18257991991248789603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 ((n + 1) % 2 + 3 * a (n - 1)) + ((n + 1) % 2 + 3 * a (n - 1))

end

end A037739.P18257991991248789603

noncomputable section

/-- A037739: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

Offset 1, canonical program `A037739.P18257991991248789603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037739 (n : ℕ) : ℤ :=
  (A037739.P18257991991248789603.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A037739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037745.P16806909000048906870

`(n+2)%4+5*a(n-1)` with `a(0)=2`
-/

namespace A037745.P16806909000048906870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2) % 4 + 5 * a (n - 1)

end

end A037745.P16806909000048906870

noncomputable section

/-- A037745: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

Offset 1, canonical program `A037745.P16806909000048906870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037745 (n : ℕ) : ℤ :=
  (A037745.P16806909000048906870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037746.P1636314081189769102

`(n+2)%4+6*a(n-1)` with `a(0)=2`
-/

namespace A037746.P1636314081189769102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2) % 4 + 6 * a (n - 1)

end

end A037746.P1636314081189769102

noncomputable section

/-- A037746: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

Offset 1, canonical program `A037746.P1636314081189769102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037746 (n : ℕ) : ℤ :=
  (A037746.P1636314081189769102.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037747.P6387786444260834050

`(n+2)%4+7*a(n-1)` with `a(0)=2`
-/

namespace A037747.P6387786444260834050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2) % 4 + 7 * a (n - 1)

end

end A037747.P6387786444260834050

noncomputable section

/-- A037747: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

Offset 1, canonical program `A037747.P6387786444260834050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037747 (n : ℕ) : ℤ :=
  (A037747.P6387786444260834050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037748.P8745613496400921605

`and(3, n+2)+8*a(n-1)` with `a(0)=2`
-/

namespace A037748.P8745613496400921605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 3 (n + 2) + 8 * a (n - 1)

end

end A037748.P8745613496400921605

noncomputable section

/-- A037748: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

Offset 1, canonical program `A037748.P8745613496400921605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037748 (n : ℕ) : ℤ :=
  (A037748.P8745613496400921605.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037749.P432838538654619278

`and(3, n+2)+9*a(n-1)` with `a(0)=2`
-/

namespace A037749.P432838538654619278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 3 (n + 2) + 9 * a (n - 1)

end

end A037749.P432838538654619278

noncomputable section

/-- A037749: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

Offset 1, canonical program `A037749.P432838538654619278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037749 (n : ℕ) : ℤ :=
  (A037749.P432838538654619278.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037750.P5321415649870020148

`(n+2)%4+10*a(n-1)` with `a(0)=2`
-/

namespace A037750.P5321415649870020148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2) % 4 + 10 * a (n - 1)

end

end A037750.P5321415649870020148

noncomputable section

/-- A037750: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,3,0,1.

Offset 1, canonical program `A037750.P5321415649870020148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037750 (n : ℕ) : ℤ :=
  (A037750.P5321415649870020148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037751.P9658641866506101768

`floor(12*4^(n+1)/17)`
-/

namespace A037751.P9658641866506101768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊12 * ((4 ^ (n + 1) : ℚ) / 17)⌋

end

end A037751.P9658641866506101768

noncomputable section

/-- A037751: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

Offset 1, canonical program `A037751.P9658641866506101768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037751 (n : ℕ) : ℤ :=
  A037751.P9658641866506101768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037752.P8103894507674030329

`∑[xor(5*a(n-1), gcd(2, n))]` with `a(0)=2`
-/

namespace A037752.P8103894507674030329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037752.P8103894507674030329

noncomputable section

/-- A037752: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

Offset 1, canonical program `A037752.P8103894507674030329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037752 (n : ℕ) : ℤ :=
  (A037752.P8103894507674030329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037756.P3057694834929139515

`∑[xor(9*a(n-1), gcd(2, n))]` with `a(0)=2`
-/

namespace A037756.P3057694834929139515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Nat.xor (9 * f1 (n - 1)) (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037756.P3057694834929139515

noncomputable section

/-- A037756: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

Offset 1, canonical program `A037756.P3057694834929139515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037756 (n : ℕ) : ℤ :=
  (A037756.P3057694834929139515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037758.P1537739424458287798

`(n-1)%4+4*a(n-1)` with `a(0)=3`
-/

namespace A037758.P1537739424458287798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod ((n : ℤ) - 1) 4 + 4 * a (n - 1)

end

end A037758.P1537739424458287798

noncomputable section

/-- A037758: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

Offset 1, canonical program `A037758.P1537739424458287798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037758 (n : ℕ) : ℤ :=
  A037758.P1537739424458287798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037759.P7672012952696768290

`(n-1)%4+5*a(n-1)` with `a(0)=3`
-/

namespace A037759.P7672012952696768290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod ((n : ℤ) - 1) 4 + 5 * a (n - 1)

end

end A037759.P7672012952696768290

noncomputable section

/-- A037759: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

Offset 1, canonical program `A037759.P7672012952696768290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037759 (n : ℕ) : ℤ :=
  A037759.P7672012952696768290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037760.P8631641189815898

`(n-1)%4+6*a(n-1)` with `a(0)=3`
-/

namespace A037760.P8631641189815898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod ((n : ℤ) - 1) 4 + 6 * a (n - 1)

end

end A037760.P8631641189815898

noncomputable section

/-- A037760: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

Offset 1, canonical program `A037760.P8631641189815898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037760 (n : ℕ) : ℤ :=
  A037760.P8631641189815898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037761.P7195593094420718256

`and(3, n-1)+7*a(n-1)` with `a(0)=3`
-/

namespace A037761.P7195593094420718256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 ((n : ℤ) - 1) + 7 * a (n - 1)

end

end A037761.P7195593094420718256

noncomputable section

/-- A037761: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

Offset 1, canonical program `A037761.P7195593094420718256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037761 (n : ℕ) : ℤ :=
  A037761.P7195593094420718256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037762.P6734730486496255907

`xor(2, (n+1)%4+8*a(n-1))` with `a(0)=3`
-/

namespace A037762.P6734730486496255907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 2 ((n + 1) % 4 + 8 * a (n - 1))

end

end A037762.P6734730486496255907

noncomputable section

/-- A037762: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

Offset 1, canonical program `A037762.P6734730486496255907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037762 (n : ℕ) : ℤ :=
  (A037762.P6734730486496255907.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037763.P18333106692901934060

`xor(1, 9*a(n-1))+and(1, n+1)+1` with `a(0)=3`
-/

namespace A037763.P18333106692901934060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 (9 * a (n - 1)) + (Nat.land 1 (n + 1) + 1)

end

end A037763.P18333106692901934060

noncomputable section

/-- A037763: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

Offset 1, canonical program `A037763.P18333106692901934060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037763 (n : ℕ) : ℤ :=
  (A037763.P18333106692901934060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037764.P13700135559960531913

`(n-1)%4+10*a(n-1)` with `a(0)=3`
-/

namespace A037764.P13700135559960531913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.tmod ((n : ℤ) - 1) 4 + 10 * a (n - 1)

end

end A037764.P13700135559960531913

noncomputable section

/-- A037764: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,0,1,2.

Offset 1, canonical program `A037764.P13700135559960531913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037764 (n : ℕ) : ℤ :=
  A037764.P13700135559960531913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037767.P12662760880017921865

`or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1)` with `a(0)=3`
-/

namespace A037767.P12662760880017921865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 1 ((n + 1) % 2 + 3 * a (n - 1)) + ((n + 1) % 2 + 3 * a (n - 1))

end

end A037767.P12662760880017921865

noncomputable section

/-- A037767: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

Offset 1, canonical program `A037767.P12662760880017921865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037767 (n : ℕ) : ℤ :=
  (A037767.P12662760880017921865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037772.P9884123058879105941

`xor(a(n-1)+3*or(1, a(n-1)), and(1, n))` with `a(0)=3`
-/

namespace A037772.P9884123058879105941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (a (n - 1) + 3 * Nat.lor 1 (a (n - 1))) (Nat.land 1 n)

end

end A037772.P9884123058879105941

noncomputable section

/-- A037772: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

Offset 1, canonical program `A037772.P9884123058879105941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037772 (n : ℕ) : ℤ :=
  (A037772.P9884123058879105941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037773.P9980543157049036755

`∑[xor(5*a(n-1), gcd(2, n+1))]` with `a(0)=3`
-/

namespace A037773.P9980543157049036755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (Nat.gcd 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037773.P9980543157049036755

noncomputable section

/-- A037773: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

Offset 1, canonical program `A037773.P9980543157049036755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037773 (n : ℕ) : ℤ :=
  (A037773.P9980543157049036755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037775.P13240966746789270908

`floor(9*7^(n+1)/20)`
-/

namespace A037775.P13240966746789270908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((7 ^ (n + 1) : ℚ) / 20)⌋

end

end A037775.P13240966746789270908

noncomputable section

/-- A037775: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

Offset 1, canonical program `A037775.P13240966746789270908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037775 (n : ℕ) : ℤ :=
  A037775.P13240966746789270908.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A037775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037778.P5190826837604657118

`or(2, char[and(2, n)+n]+10*a(n-1))` with `a(0)=3`
-/

namespace A037778.P5190826837604657118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 2 ((if ∃ j, f1 j = n then 1 else 0) + 10 * a (n - 1))

end

end A037778.P5190826837604657118

noncomputable section

/-- A037778: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,1,0,2.

Offset 1, canonical program `A037778.P5190826837604657118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037778 (n : ℕ) : ℤ :=
  (A037778.P5190826837604657118.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037779.P13426921809854357259

`xor(or(3, a(n-1))+3*a(n-1), and(1, n))` with `a(0)=3`
-/

namespace A037779.P13426921809854357259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor (Nat.lor 3 (a (n - 1)) + 3 * a (n - 1)) (Nat.land 1 n)

end

end A037779.P13426921809854357259

noncomputable section

/-- A037779: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

Offset 1, canonical program `A037779.P13426921809854357259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037779 (n : ℕ) : ℤ :=
  (A037779.P13426921809854357259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037781.P16687809156034504389

`xor(1, or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1))` with `a(0)=3`
-/

namespace A037781.P16687809156034504389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 (Nat.lor 1 ((n + 1) % 2 + 3 * a (n - 1)) + ((n + 1) % 2 + 3 * a (n - 1)))

end

end A037781.P16687809156034504389

noncomputable section

/-- A037781: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

Offset 1, canonical program `A037781.P16687809156034504389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037781 (n : ℕ) : ℤ :=
  (A037781.P16687809156034504389.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037786.P2623075195376458617

`floor(60*4^(n+1)/68)`
-/

namespace A037786.P2623075195376458617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊60 * ((4 ^ (n + 1) : ℚ) / 68)⌋

end

end A037786.P2623075195376458617

noncomputable section

/-- A037786: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

Offset 1, canonical program `A037786.P2623075195376458617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037786 (n : ℕ) : ℤ :=
  A037786.P2623075195376458617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037791.P15168589565554484728

`∑[xor(9*a(n-1), gcd(2, n))]` with `a(0)=3`
-/

namespace A037791.P15168589565554484728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.xor (9 * f1 (n - 1)) (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037791.P15168589565554484728

noncomputable section

/-- A037791: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

Offset 1, canonical program `A037791.P15168589565554484728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037791 (n : ℕ) : ℤ :=
  (A037791.P15168589565554484728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037794.P11267558404347251540

`5*a(n-1)+3-n%4` with `a(0)=3`
-/

namespace A037794.P11267558404347251540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  5 * a (n - 1) + (3 - ((n % 4 : ℕ) : ℤ))

end

end A037794.P11267558404347251540

noncomputable section

/-- A037794: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

Offset 1, canonical program `A037794.P11267558404347251540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037794 (n : ℕ) : ℤ :=
  A037794.P11267558404347251540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A037794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037795.P13079382325709208154

`6*a(n-1)+3-n%4` with `a(0)=3`
-/

namespace A037795.P13079382325709208154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  6 * a (n - 1) + 3 - ((n % 4 : ℕ) : ℤ)

end

end A037795.P13079382325709208154

noncomputable section

/-- A037795: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

Offset 1, canonical program `A037795.P13079382325709208154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037795 (n : ℕ) : ℤ :=
  A037795.P13079382325709208154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A037795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037797.P5678953411917980446

`a(n-1)+or(3, 7*a(n-1))` with `a(0)=3`
-/

namespace A037797.P5678953411917980446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + Nat.lor 3 (7 * a (n - 1))

end

end A037797.P5678953411917980446

noncomputable section

/-- A037797: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

Offset 1, canonical program `A037797.P5678953411917980446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037797 (n : ℕ) : ℤ :=
  (A037797.P5678953411917980446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A037797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037798.P5782112598674630615

`and(3, 3-n)+9*a(n-1)` with `a(0)=3`
-/

namespace A037798.P5782112598674630615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 (3 - (n : ℤ)) + 9 * a (n - 1)

end

end A037798.P5782112598674630615

noncomputable section

/-- A037798: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

Offset 1, canonical program `A037798.P5782112598674630615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037798 (n : ℕ) : ℤ :=
  A037798.P5782112598674630615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A037798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037799.P9946499390447161709

`and(3, 3-n)+10*a(n-1)` with `a(0)=3`
-/

namespace A037799.P9946499390447161709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 (3 - (n : ℤ)) + 10 * a (n - 1)

end

end A037799.P9946499390447161709

noncomputable section

/-- A037799: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,2,1,0.

Offset 1, canonical program `A037799.P9946499390447161709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037799 (n : ℕ) : ℤ :=
  A037799.P9946499390447161709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037834.P13474532514080249536

`∑[Δ[xor(n, 2*n)]%2]-1`
-/

namespace A037834.P13474532514080249536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037834.P13474532514080249536

noncomputable section

/-- A037834: a(n) = Sum_{i=1..m} |d(i) - d(i-1)|, where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

Offset 1, canonical program `A037834.P13474532514080249536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037834 (n : ℕ) : ℤ :=
  A037834.P13474532514080249536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037905.P2434112028279878160

`dr(8*floor(π*(n+1)))`
-/

namespace A037905.P2434112028279878160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (8 * ⌊Real.pi * (n + 1 : ℝ)⌋)

end

end A037905.P2434112028279878160

noncomputable section

/-- A037905: a(n) = 9 - (floor(n*Pi) mod 9).

Offset 1, canonical program `A037905.P2434112028279878160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037905 (n : ℕ) : ℤ :=
  (A037905.P2434112028279878160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038152.P15381943449069368155

`floor((n+1)*exp(π))`
-/

namespace A038152.P15381943449069368155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp Real.pi⌋

end

end A038152.P15381943449069368155

noncomputable section

/-- A038152: Beatty sequence for e^Pi.

Offset 1, canonical program `A038152.P15381943449069368155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038152 (n : ℕ) : ℤ :=
  A038152.P15381943449069368155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038153.P12096564173668940376

`floor((n+1)*π^e)`
-/

namespace A038153.P12096564173668940376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.pi ^ (Real.exp 1)⌋

end

end A038153.P12096564173668940376

noncomputable section

/-- A038153: Beatty sequence for Pi^e.

Offset 1, canonical program `A038153.P12096564173668940376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038153 (n : ℕ) : ℤ :=
  A038153.P12096564173668940376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038163.P17816714790695461700

`∑[∑[C(floor(n/2)+3, 3)]]`
-/

namespace A038163.P17816714790695461700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 3).toNat 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038163.P17816714790695461700

noncomputable section

/-- A038163: G.f.: 1/((1-x)*(1-x^2))^3.

Offset 0, canonical program `A038163.P17816714790695461700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038163 (n : ℕ) : ℤ :=
  (A038163.P17816714790695461700.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038165.P687661827417088230

`∑[∑[∑[∑[C(floor(n/2)+5, 5)]]]]`
-/

namespace A038165.P687661827417088230
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 5).toNat 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038165.P687661827417088230

noncomputable section

/-- A038165: G.f.: 1/((1-x)*(1-x^2))^5.

Offset 0, canonical program `A038165.P687661827417088230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038165 (n : ℕ) : ℤ :=
  (A038165.P687661827417088230.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038179.P6110244502415694594

`a(n-2)+6` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A038179.P6110244502415694594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  a (n - 2) + 6

end

end A038179.P6110244502415694594

noncomputable section

/-- A038179: Result of second stage of sieve of Eratosthenes (after eliminating multiples of 2 and 3).

Offset 1, canonical program `A038179.P6110244502415694594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038179 (n : ℕ) : ℤ :=
  (A038179.P6110244502415694594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038184.P379017006269832223

`xor(2*xor(2*a(n-1), a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A038184.P379017006269832223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * Nat.xor (2 * a (n - 1)) (a (n - 1))) (a (n - 1))

end

end A038184.P379017006269832223

noncomputable section

/-- A038184: State of one-dimensional cellular automaton 'sigma' (Rule 150): 000,001,010,011,100,101,110,111 -> 0,1,1,0,1,0,0,1 at generation n, converted to a decimal number.

Offset 0, canonical program `A038184.P379017006269832223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A038184 (n : ℕ) : ℤ :=
  (A038184.P379017006269832223.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A038184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038346.P8303541009987102684

`∑[p?[4*n+1]]`
-/

namespace A038346.P8303541009987102684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038346.P8303541009987102684

noncomputable section

/-- A038346: Sum of first n primes of form 4k+1.

Offset 1, canonical program `A038346.P8303541009987102684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038346 (n : ℕ) : ℤ :=
  (A038346.P8303541009987102684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038347.P3801300426540644980

`∑[p?[4*n-1]]`
-/

namespace A038347.P3801300426540644980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038347.P3801300426540644980

noncomputable section

/-- A038347: Sum of first n primes of form 4k-1.

Offset 1, canonical program `A038347.P3801300426540644980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038347 (n : ℕ) : ℤ :=
  A038347.P3801300426540644980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038349.P17188223682718886745

`∑[p?[3*n+1]]`
-/

namespace A038349.P17188223682718886745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038349.P17188223682718886745

noncomputable section

/-- A038349: Partial sums of primes congruent to 1 mod 6.

Offset 1, canonical program `A038349.P17188223682718886745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038349 (n : ℕ) : ℤ :=
  (A038349.P17188223682718886745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038361.P4855428418005756058

`∑[p?[3*n+5]]`
-/

namespace A038361.P4855428418005756058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038361.P4855428418005756058

noncomputable section

/-- A038361: Partial sums of primes congruent to 5 mod 6.

Offset 1, canonical program `A038361.P4855428418005756058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038361 (n : ℕ) : ℤ :=
  (A038361.P4855428418005756058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038391.P1858464290229097486

`∑[C(round(2*(n/3+1)), 2)]`
-/

namespace A038391.P1858464290229097486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3 + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038391.P1858464290229097486

noncomputable section

/-- A038391: Expansion of (x^3+2*x+1) / ((x-1)^4*(x^2+x+1)^2).

Offset 0, canonical program `A038391.P1858464290229097486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038391 (n : ℕ) : ℤ :=
  (A038391.P1858464290229097486.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038572.P9289042872142352092

`or(a(n-2)+1, floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A038572.P9289042872142352092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor (a (n - 2) + 1) ⌊(n : ℚ) / 2⌋

end

end A038572.P9289042872142352092

noncomputable section

/-- A038572: a(n) = n rotated one binary place to the right.

Offset 0, canonical program `A038572.P9289042872142352092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038572 (n : ℕ) : ℤ :=
  A038572.P9289042872142352092.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038687.P8337297974023983294

`comp[a(n-1)+a(n-dr(n))]` with `a(0)=1, a(1)=-2, a(2)=-5, a(3)=9, a(4)=1, a(5)=0, a(6)=1, a(7)=1, a(8)=0`
-/

namespace A038687.P8337297974023983294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, -5, 9, 1, 0, 1, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - SequenceMachineLib.digitalRoot (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A038687.P8337297974023983294

noncomputable section

/-- A038687: Concatenate i >= 1 and j >= 1, then sort.

Offset 1, canonical program `A038687.P8337297974023983294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038687 (n : ℕ) : ℤ :=
  (A038687.P8337297974023983294.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038713.P4745434599618136885

`C(5*(2*a(floor(n/2))-(-1)^n+1)-9, n%2)` with `a(0)=1`
-/

namespace A038713.P4745434599618136885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (5 * ((2 * a ⌊(n : ℚ) / 2⌋.toNat : ℤ) - (-1) ^ n + 1) - 9).toNat (n % 2)

end

end A038713.P4745434599618136885

noncomputable section

/-- A038713: a(n) = n XOR (n-1), i.e., nim-sum of sequential pairs, written in binary.

Offset 1, canonical program `A038713.P4745434599618136885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038713 (n : ℕ) : ℤ :=
  (A038713.P4745434599618136885.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038737.P9311207257525753904

`∑[∑[∑[3*a(n-1)-a(n-2)]]]` with `a(0)=1, a(1)=3`
-/

namespace A038737.P9311207257525753904
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f3 =>
  3 * f3 (n - 1) - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038737.P9311207257525753904

noncomputable section

/-- A038737: T(n,n-2), array T as in A038792.

Offset 2, canonical program `A038737.P9311207257525753904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A038737 (n : ℕ) : ℤ :=
  A038737.P9311207257525753904.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A038737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038739.P12917154288506719563

`∑[∑[∑[∑[3*a(n-1)-a(n-2)]]]]` with `a(0)=1, a(1)=3`
-/

namespace A038739.P12917154288506719563
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f4 =>
  3 * f4 (n - 1) - f4 (n - 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038739.P12917154288506719563

noncomputable section

/-- A038739: T(n,n-2), array T as in A038738.

Offset 2, canonical program `A038739.P12917154288506719563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A038739 (n : ℕ) : ℤ :=
  A038739.P12917154288506719563.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A038739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038793.P14847679001544695164

`∑[∑[a(n-1)+1]]` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A038793.P14847679001544695164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1, 3] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038793.P14847679001544695164

noncomputable section

/-- A038793: T(n,n-3), array T as in A038792.

Offset 3, canonical program `A038793.P14847679001544695164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038793 (n : ℕ) : ℤ :=
  (A038793.P14847679001544695164.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038846.P5565282016912556467

`4^n*C(n+3, 3)`
-/

namespace A038846.P5565282016912556467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.choose (n + 3) 3

end

end A038846.P5565282016912556467

noncomputable section

/-- A038846: 4-fold convolution of A000302 (powers of 4); expansion of g.f. 1/(1-4*x)^4.

Offset 0, canonical program `A038846.P5565282016912556467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A038846 (n : ℕ) : ℤ :=
  (A038846.P5565282016912556467.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A038846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038872.P17305392752220352491

`p?[a(n-2)+5]` with `a(0)=5, a(1)=1, a(2)=4`
-/

namespace A038872.P17305392752220352491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038872.P17305392752220352491

noncomputable section

/-- A038872: Primes congruent to {0, 1, 4} mod 5.

Offset 1, canonical program `A038872.P17305392752220352491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038872 (n : ℕ) : ℤ :=
  (A038872.P17305392752220352491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038873.P6807961448888722097

`p?[a(n-3)+8]` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A038873.P6807961448888722097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 7] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038873.P6807961448888722097

noncomputable section

/-- A038873: Primes p such that 2 is a square mod p; or, primes congruent to {1, 2, 7} mod 8.

Offset 1, canonical program `A038873.P6807961448888722097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038873 (n : ℕ) : ℤ :=
  (A038873.P6807961448888722097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038874.P9185498900229541672

`p?[2*n-(n+1)%6]`
-/

namespace A038874.P9185498900229541672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (((n + 1) % 6 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038874.P9185498900229541672

noncomputable section

/-- A038874: Primes p such that 3 is a square mod p.

Offset 1, canonical program `A038874.P9185498900229541672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8963 terms. -/
def A038874 (n : ℕ) : ℤ :=
  A038874.P9185498900229541672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8963 terms. -/
def A038874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038875.P6482023720043383188

`p?[xor(2, n)+2*n]`
-/

namespace A038875.P6482023720043383188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A038875.P6482023720043383188

noncomputable section

/-- A038875: Primes p with legendre(3,p) = -1.

Offset 1, canonical program `A038875.P6482023720043383188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038875 (n : ℕ) : ℤ :=
  (A038875.P6482023720043383188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038877.P3686517323935896556

`p?[2*(n+1)-xor(2, n)%3]`
-/

namespace A038877.P3686517323935896556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((Nat.xor 2 n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038877.P3686517323935896556

noncomputable section

/-- A038877: Primes p such that 6 is not a square mod p.

Offset 1, canonical program `A038877.P3686517323935896556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9036 terms. -/
def A038877 (n : ℕ) : ℤ :=
  A038877.P3686517323935896556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9036 terms. -/
def A038877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039004.P5132444084553213874

`eq[0, n%2-a(floor(n/2))]` with `a(0)=0`
-/

namespace A039004.P5132444084553213874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ((n % 2 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039004.P5132444084553213874

noncomputable section

/-- A039004: Numbers whose base-4 representation has the same number of 1's and 2's.

Offset 1, canonical program `A039004.P5132444084553213874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9644 terms. -/
def A039004 (n : ℕ) : ℤ :=
  (A039004.P5132444084553213874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9644 terms. -/
def A039004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039653.P8706560889375049487

`∑{d}[n, #%#²]`
-/

namespace A039653.P8706560889375049487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % d ^ 2

end

end A039653.P8706560889375049487

noncomputable section

/-- A039653: a(0) = 0; for n > 0, a(n) = sigma(n)-1.

Offset 0, canonical program `A039653.P8706560889375049487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039653 (n : ℕ) : ℤ :=
  (A039653.P8706560889375049487.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039722.P9616311279110399096

`Δ[a(n-1)+2*a(floor(n/2))]` with `a(0)=0, a(1)=1`
-/

namespace A039722.P9616311279110399096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A039722.P9616311279110399096

noncomputable section

/-- A039722: a(1) = 1, a(m+1) = 2*Sum_{k=1..floor((m+1)/2)} a(k).

Offset 1, canonical program `A039722.P9616311279110399096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039722 (n : ℕ) : ℤ :=
  A039722.P9616311279110399096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039830.P6141328336636973729

`floor(lcm(4, n²+n)/4)+1`
-/

namespace A039830.P6141328336636973729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 4 (n ^ 2 + n) : ℚ) / 4⌋ + 1

end

end A039830.P6141328336636973729

noncomputable section

/-- A039830: Number of different coefficient values in expansion of Product_{i=1..n} (1-q^1+q^2-...+(-q)^i).

Offset 0, canonical program `A039830.P6141328336636973729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A039830 (n : ℕ) : ℤ :=
  A039830.P6141328336636973729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A039830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039936.P4292264429620002064

`5*a(floor((n-1)/2))` with `a(0)=5`
-/

namespace A039936.P4292264429620002064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  5 * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A039936.P4292264429620002064

noncomputable section

/-- A039936: Smallest k for which k, 2k, ... nk all contain the digit 5.

Offset 1, canonical program `A039936.P4292264429620002064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039936 (n : ℕ) : ℤ :=
  (A039936.P4292264429620002064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039966.P2983732039827484293

`a(floor(n/3))*a(n%3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A039966.P2983732039827484293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat * a (n % 3)

end

end A039966.P2983732039827484293

noncomputable section

/-- A039966: a(0) = 1; thereafter a(3n+2) = 0, a(3n) = a(3n+1) = a(n).

Offset 0, canonical program `A039966.P2983732039827484293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039966 (n : ℕ) : ℤ :=
  (A039966.P2983732039827484293.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039982.P3162502639953544015

`Δ[n-a(floor((n-1)/2))]` with `a(0)=0`
-/

namespace A039982.P3162502639953544015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039982.P3162502639953544015

noncomputable section

/-- A039982: Let phi denote the morphism 0 -> 11, 1 -> 10. This sequence is the limit S(oo) where S(0) = 1; S(n+1) = 1.phi(S(n)).

Offset 0, canonical program `A039982.P3162502639953544015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039982 (n : ℕ) : ℤ :=
  A039982.P3162502639953544015.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039984.P12452810510463565344

`abs(Δ[n%(2-a(floor(n/2)))])` with `a(0)=1`
-/

namespace A039984.P12452810510463565344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (n : ℤ) (2 - f1 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A039984.P12452810510463565344

noncomputable section

/-- A039984: An example of a d-perfect sequence.

Offset 1, canonical program `A039984.P12452810510463565344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039984 (n : ℕ) : ℤ :=
  A039984.P12452810510463565344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040039.P17568427608695715887

`a(n-2)+a(floor(n/2)-1)` with `a(0)=1, a(1)=1`
-/

namespace A040039.P17568427608695715887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A040039.P17568427608695715887

noncomputable section

/-- A040039: First differences of A033485; also A033485 with terms repeated.

Offset 0, canonical program `A040039.P17568427608695715887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040039 (n : ℕ) : ℤ :=
  (A040039.P17568427608695715887.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040057.P18369166585514238202

`a(n-2)` with `a(0)=8, a(1)=8, a(2)=16`
-/

namespace A040057.P18369166585514238202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 8, 16] fun n a =>
  a (n - 2)

end

end A040057.P18369166585514238202

noncomputable section

/-- A040057: Continued fraction for sqrt(66).

Offset 0, canonical program `A040057.P18369166585514238202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040057 (n : ℕ) : ℤ :=
  (A040057.P18369166585514238202.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040073.P7626612885380361846

`a(n-2)` with `a(0)=9, a(1)=9, a(2)=18`
-/

namespace A040073.P7626612885380361846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 9, 18] fun n a =>
  a (n - 2)

end

end A040073.P7626612885380361846

noncomputable section

/-- A040073: Continued fraction for sqrt(83).

Offset 0, canonical program `A040073.P7626612885380361846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040073 (n : ℕ) : ℤ :=
  (A040073.P7626612885380361846.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040075.P16622853079523685462

`4^n*C(n+4, 4)`
-/

namespace A040075.P16622853079523685462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.choose (n + 4) 4

end

end A040075.P16622853079523685462

noncomputable section

/-- A040075: 5-fold convolution of A000302 (powers of 4); expansion of 1/(1-4*x)^5.

Offset 0, canonical program `A040075.P16622853079523685462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A040075 (n : ℕ) : ℤ :=
  (A040075.P16622853079523685462.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A040075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040091.P8756136610212090123

`a(n-2)` with `a(0)=10, a(1)=10, a(2)=20`
-/

namespace A040091.P8756136610212090123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 10, 20] fun n a =>
  a (n - 2)

end

end A040091.P8756136610212090123

noncomputable section

/-- A040091: Continued fraction for sqrt(102).

Offset 0, canonical program `A040091.P8756136610212090123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040091 (n : ℕ) : ℤ :=
  (A040091.P8756136610212090123.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040111.P2254291714557805719

`a(n-2)` with `a(0)=11, a(1)=11, a(2)=22`
-/

namespace A040111.P2254291714557805719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [11, 11, 22] fun n a =>
  a (n - 2)

end

end A040111.P2254291714557805719

noncomputable section

/-- A040111: Continued fraction for sqrt(123).

Offset 0, canonical program `A040111.P2254291714557805719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040111 (n : ℕ) : ℤ :=
  (A040111.P2254291714557805719.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040117.P5220825624674158384

`p?[12*n+5]`
-/

namespace A040117.P5220825624674158384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A040117.P5220825624674158384

noncomputable section

/-- A040117: Primes congruent to 5 (mod 12). Also primes p such that x^4 = 9 has no solution mod p.

Offset 1, canonical program `A040117.P5220825624674158384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040117 (n : ℕ) : ℤ :=
  (A040117.P5220825624674158384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040133.P1277180008717157365

`a(n-2)` with `a(0)=12, a(1)=12, a(2)=24`
-/

namespace A040133.P1277180008717157365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 12, 24] fun n a =>
  a (n - 2)

end

end A040133.P1277180008717157365

noncomputable section

/-- A040133: Continued fraction for sqrt(146).

Offset 0, canonical program `A040133.P1277180008717157365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040133 (n : ℕ) : ℤ :=
  (A040133.P1277180008717157365.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040134.P11830348362701484394

`a(n-2)` with `a(0)=12, a(1)=8, a(2)=24`
-/

namespace A040134.P11830348362701484394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 8, 24] fun n a =>
  a (n - 2)

end

end A040134.P11830348362701484394

noncomputable section

/-- A040134: Continued fraction for sqrt(147).

Offset 0, canonical program `A040134.P11830348362701484394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040134 (n : ℕ) : ℤ :=
  (A040134.P11830348362701484394.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040135.P13155183913115417606

`a(n-2)` with `a(0)=12, a(1)=6, a(2)=24`
-/

namespace A040135.P13155183913115417606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 6, 24] fun n a =>
  a (n - 2)

end

end A040135.P13155183913115417606

noncomputable section

/-- A040135: Continued fraction for sqrt(148).

Offset 0, canonical program `A040135.P13155183913115417606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040135 (n : ℕ) : ℤ :=
  (A040135.P13155183913115417606.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040157.P3406756614513417255

`a(n-2)` with `a(0)=13, a(1)=13, a(2)=26`
-/

namespace A040157.P3406756614513417255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13, 13, 26] fun n a =>
  a (n - 2)

end

end A040157.P3406756614513417255

noncomputable section

/-- A040157: Continued fraction for sqrt(171).

Offset 0, canonical program `A040157.P3406756614513417255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040157 (n : ℕ) : ℤ :=
  (A040157.P3406756614513417255.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040183.P17736113911323239774

`a(n-2)` with `a(0)=14, a(1)=14, a(2)=28`
-/

namespace A040183.P17736113911323239774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 14, 28] fun n a =>
  a (n - 2)

end

end A040183.P17736113911323239774

noncomputable section

/-- A040183: Continued fraction for sqrt(198).

Offset 0, canonical program `A040183.P17736113911323239774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040183 (n : ℕ) : ℤ :=
  (A040183.P17736113911323239774.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040185.P11042023744176492656

`a(n-2)` with `a(0)=14, a(1)=7, a(2)=28`
-/

namespace A040185.P11042023744176492656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 7, 28] fun n a =>
  a (n - 2)

end

end A040185.P11042023744176492656

noncomputable section

/-- A040185: Continued fraction for sqrt(200).

Offset 0, canonical program `A040185.P11042023744176492656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040185 (n : ℕ) : ℤ :=
  (A040185.P11042023744176492656.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040188.P14319406205498971227

`a(n-2)` with `a(0)=14, a(1)=4, a(2)=28`
-/

namespace A040188.P14319406205498971227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 4, 28] fun n a =>
  a (n - 2)

end

end A040188.P14319406205498971227

noncomputable section

/-- A040188: Continued fraction for sqrt(203).

Offset 0, canonical program `A040188.P14319406205498971227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040188 (n : ℕ) : ℤ :=
  (A040188.P14319406205498971227.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040211.P918007066845270498

`a(n-2)` with `a(0)=15, a(1)=15, a(2)=30`
-/

namespace A040211.P918007066845270498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 15, 30] fun n a =>
  a (n - 2)

end

end A040211.P918007066845270498

noncomputable section

/-- A040211: Continued fraction for sqrt(227).

Offset 0, canonical program `A040211.P918007066845270498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040211 (n : ℕ) : ℤ :=
  (A040211.P918007066845270498.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040212.P9135806259959427506

`a(n-2)` with `a(0)=15, a(1)=10, a(2)=30`
-/

namespace A040212.P9135806259959427506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 10, 30] fun n a =>
  a (n - 2)

end

end A040212.P9135806259959427506

noncomputable section

/-- A040212: Continued fraction for sqrt(228).

Offset 0, canonical program `A040212.P9135806259959427506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040212 (n : ℕ) : ℤ :=
  (A040212.P9135806259959427506.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040214.P13690277505727463821

`a(n-2)` with `a(0)=15, a(1)=6, a(2)=30`
-/

namespace A040214.P13690277505727463821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 6, 30] fun n a =>
  a (n - 2)

end

end A040214.P13690277505727463821

noncomputable section

/-- A040214: Continued fraction for sqrt(230).

Offset 0, canonical program `A040214.P13690277505727463821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040214 (n : ℕ) : ℤ :=
  (A040214.P13690277505727463821.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040215.P11104022738662318493

`a(n-2)` with `a(0)=15, a(1)=5, a(2)=30`
-/

namespace A040215.P11104022738662318493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 5, 30] fun n a =>
  a (n - 2)

end

end A040215.P11104022738662318493

noncomputable section

/-- A040215: Continued fraction for sqrt(231).

Offset 0, canonical program `A040215.P11104022738662318493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040215 (n : ℕ) : ℤ :=
  (A040215.P11104022738662318493.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040224.P3683499966529568118

`a(n-2)` with `a(0)=15, a(1)=2, a(2)=30`
-/

namespace A040224.P3683499966529568118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [15, 2, 30] fun n a =>
  a (n - 2)

end

end A040224.P3683499966529568118

noncomputable section

/-- A040224: Continued fraction for sqrt(240).

Offset 0, canonical program `A040224.P3683499966529568118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040224 (n : ℕ) : ℤ :=
  (A040224.P3683499966529568118.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040241.P9806758365808546532

`a(n-2)` with `a(0)=16, a(1)=16, a(2)=32`
-/

namespace A040241.P9806758365808546532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16, 16, 32] fun n a =>
  a (n - 2)

end

end A040241.P9806758365808546532

noncomputable section

/-- A040241: Continued fraction for sqrt(258).

Offset 0, canonical program `A040241.P9806758365808546532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040241 (n : ℕ) : ℤ :=
  (A040241.P9806758365808546532.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040243.P226559645723422633

`a(n-2)` with `a(0)=16, a(1)=8, a(2)=32`
-/

namespace A040243.P226559645723422633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16, 8, 32] fun n a =>
  a (n - 2)

end

end A040243.P226559645723422633

noncomputable section

/-- A040243: Continued fraction for sqrt(260).

Offset 0, canonical program `A040243.P226559645723422633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040243 (n : ℕ) : ℤ :=
  (A040243.P226559645723422633.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040247.P6465313999403080984

`a(n-2)` with `a(0)=16, a(1)=4, a(2)=32`
-/

namespace A040247.P6465313999403080984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16, 4, 32] fun n a =>
  a (n - 2)

end

end A040247.P6465313999403080984

noncomputable section

/-- A040247: Continued fraction for sqrt(264).

Offset 0, canonical program `A040247.P6465313999403080984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040247 (n : ℕ) : ℤ :=
  (A040247.P6465313999403080984.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040273.P13583180310652028221

`a(n-2)` with `a(0)=17, a(1)=17, a(2)=34`
-/

namespace A040273.P13583180310652028221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17, 17, 34] fun n a =>
  a (n - 2)

end

end A040273.P13583180310652028221

noncomputable section

/-- A040273: Continued fraction for sqrt(291).

Offset 0, canonical program `A040273.P13583180310652028221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040273 (n : ℕ) : ℤ :=
  (A040273.P13583180310652028221.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040307.P5655004150912134000

`a(n-2)` with `a(0)=18, a(1)=18, a(2)=36`
-/

namespace A040307.P5655004150912134000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18, 18, 36] fun n a =>
  a (n - 2)

end

end A040307.P5655004150912134000

noncomputable section

/-- A040307: Continued fraction for sqrt(326).

Offset 0, canonical program `A040307.P5655004150912134000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040307 (n : ℕ) : ℤ :=
  (A040307.P5655004150912134000.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040308.P7459999029361507840

`a(n-2)` with `a(0)=18, a(1)=12, a(2)=36`
-/

namespace A040308.P7459999029361507840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18, 12, 36] fun n a =>
  a (n - 2)

end

end A040308.P7459999029361507840

noncomputable section

/-- A040308: Continued fraction for sqrt(327).

Offset 0, canonical program `A040308.P7459999029361507840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040308 (n : ℕ) : ℤ :=
  (A040308.P7459999029361507840.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040309.P3975656729478467175

`a(n-2)` with `a(0)=18, a(1)=9, a(2)=36`
-/

namespace A040309.P3975656729478467175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18, 9, 36] fun n a =>
  a (n - 2)

end

end A040309.P3975656729478467175

noncomputable section

/-- A040309: Continued fraction for sqrt(328).

Offset 0, canonical program `A040309.P3975656729478467175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040309 (n : ℕ) : ℤ :=
  (A040309.P3975656729478467175.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040311.P14471115869808771488

`a(n-2)` with `a(0)=18, a(1)=6, a(2)=36`
-/

namespace A040311.P14471115869808771488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18, 6, 36] fun n a =>
  a (n - 2)

end

end A040311.P14471115869808771488

noncomputable section

/-- A040311: Continued fraction for sqrt(330).

Offset 0, canonical program `A040311.P14471115869808771488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040311 (n : ℕ) : ℤ :=
  (A040311.P14471115869808771488.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040314.P13017868736823431933

`a(n-2)` with `a(0)=18, a(1)=4, a(2)=36`
-/

namespace A040314.P13017868736823431933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18, 4, 36] fun n a =>
  a (n - 2)

end

end A040314.P13017868736823431933

noncomputable section

/-- A040314: Continued fraction for sqrt(333).

Offset 0, canonical program `A040314.P13017868736823431933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040314 (n : ℕ) : ℤ :=
  (A040314.P13017868736823431933.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040343.P5323188383728490315

`a(n-2)` with `a(0)=19, a(1)=19, a(2)=38`
-/

namespace A040343.P5323188383728490315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [19, 19, 38] fun n a =>
  a (n - 2)

end

end A040343.P5323188383728490315

noncomputable section

/-- A040343: Continued fraction for sqrt(363).

Offset 0, canonical program `A040343.P5323188383728490315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040343 (n : ℕ) : ℤ :=
  (A040343.P5323188383728490315.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040381.P1841401139086004428

`a(n-2)` with `a(0)=20, a(1)=20, a(2)=40`
-/

namespace A040381.P1841401139086004428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 20, 40] fun n a =>
  a (n - 2)

end

end A040381.P1841401139086004428

noncomputable section

/-- A040381: Continued fraction for sqrt(402).

Offset 0, canonical program `A040381.P1841401139086004428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040381 (n : ℕ) : ℤ :=
  (A040381.P1841401139086004428.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040383.P17652273369449022771

`a(n-2)` with `a(0)=20, a(1)=10, a(2)=40`
-/

namespace A040383.P17652273369449022771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 10, 40] fun n a =>
  a (n - 2)

end

end A040383.P17652273369449022771

noncomputable section

/-- A040383: Continued fraction for sqrt(404).

Offset 0, canonical program `A040383.P17652273369449022771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040383 (n : ℕ) : ℤ :=
  (A040383.P17652273369449022771.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040384.P6628833737041303966

`a(n-2)` with `a(0)=20, a(1)=8, a(2)=40`
-/

namespace A040384.P6628833737041303966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 8, 40] fun n a =>
  a (n - 2)

end

end A040384.P6628833737041303966

noncomputable section

/-- A040384: Continued fraction for sqrt(405).

Offset 0, canonical program `A040384.P6628833737041303966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040384 (n : ℕ) : ℤ :=
  (A040384.P6628833737041303966.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040389.P17664722762556595256

`a(n-2)` with `a(0)=20, a(1)=4, a(2)=40`
-/

namespace A040389.P17664722762556595256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [20, 4, 40] fun n a =>
  a (n - 2)

end

end A040389.P17664722762556595256

noncomputable section

/-- A040389: Continued fraction for sqrt(410).

Offset 0, canonical program `A040389.P17664722762556595256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040389 (n : ℕ) : ℤ :=
  (A040389.P17664722762556595256.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040421.P4228499002663339036

`a(n-2)` with `a(0)=21, a(1)=21, a(2)=42`
-/

namespace A040421.P4228499002663339036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 21, 42] fun n a =>
  a (n - 2)

end

end A040421.P4228499002663339036

noncomputable section

/-- A040421: Continued fraction for sqrt(443).

Offset 0, canonical program `A040421.P4228499002663339036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040421 (n : ℕ) : ℤ :=
  (A040421.P4228499002663339036.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040425.P6605625757946304778

`a(n-2)` with `a(0)=21, a(1)=7, a(2)=42`
-/

namespace A040425.P6605625757946304778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 7, 42] fun n a =>
  a (n - 2)

end

end A040425.P6605625757946304778

noncomputable section

/-- A040425: Continued fraction for sqrt(447).

Offset 0, canonical program `A040425.P6605625757946304778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040425 (n : ℕ) : ℤ :=
  (A040425.P6605625757946304778.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040426.P17932758518023083912

`a(n-2)` with `a(0)=21, a(1)=6, a(2)=42`
-/

namespace A040426.P17932758518023083912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 6, 42] fun n a =>
  a (n - 2)

end

end A040426.P17932758518023083912

noncomputable section

/-- A040426: Continued fraction for sqrt(448).

Offset 0, canonical program `A040426.P17932758518023083912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040426 (n : ℕ) : ℤ :=
  (A040426.P17932758518023083912.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040433.P10703998899887724339

`a(n-2)` with `a(0)=21, a(1)=3, a(2)=42`
-/

namespace A040433.P10703998899887724339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [21, 3, 42] fun n a =>
  a (n - 2)

end

end A040433.P10703998899887724339

noncomputable section

/-- A040433: Continued fraction for sqrt(455).

Offset 0, canonical program `A040433.P10703998899887724339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040433 (n : ℕ) : ℤ :=
  (A040433.P10703998899887724339.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040463.P13616816130210762293

`a(n-2)` with `a(0)=22, a(1)=22, a(2)=44`
-/

namespace A040463.P13616816130210762293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 22, 44] fun n a =>
  a (n - 2)

end

end A040463.P13616816130210762293

noncomputable section

/-- A040463: Continued fraction for sqrt(486).

Offset 0, canonical program `A040463.P13616816130210762293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040463 (n : ℕ) : ℤ :=
  (A040463.P13616816130210762293.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040465.P11520776791871441638

`a(n-2)` with `a(0)=22, a(1)=11, a(2)=44`
-/

namespace A040465.P11520776791871441638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 11, 44] fun n a =>
  a (n - 2)

end

end A040465.P11520776791871441638

noncomputable section

/-- A040465: Continued fraction for sqrt(488).

Offset 0, canonical program `A040465.P11520776791871441638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040465 (n : ℕ) : ℤ :=
  (A040465.P11520776791871441638.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040472.P10562841475267411360

`a(n-2)` with `a(0)=22, a(1)=4, a(2)=44`
-/

namespace A040472.P10562841475267411360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [22, 4, 44] fun n a =>
  a (n - 2)

end

end A040472.P10562841475267411360

noncomputable section

/-- A040472: Continued fraction for sqrt(495).

Offset 0, canonical program `A040472.P10562841475267411360`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040472 (n : ℕ) : ℤ :=
  (A040472.P10562841475267411360.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040507.P9699859985223759624

`a(n-2)` with `a(0)=23, a(1)=23, a(2)=46`
-/

namespace A040507.P9699859985223759624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [23, 23, 46] fun n a =>
  a (n - 2)

end

end A040507.P9699859985223759624

noncomputable section

/-- A040507: Continued fraction for sqrt(531).

Offset 0, canonical program `A040507.P9699859985223759624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040507 (n : ℕ) : ℤ :=
  (A040507.P9699859985223759624.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040553.P7168155481539720367

`a(n-2)` with `a(0)=24, a(1)=24, a(2)=48`
-/

namespace A040553.P7168155481539720367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24, 24, 48] fun n a =>
  a (n - 2)

end

end A040553.P7168155481539720367

noncomputable section

/-- A040553: Continued fraction for sqrt(578).

Offset 0, canonical program `A040553.P7168155481539720367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040553 (n : ℕ) : ℤ :=
  (A040553.P7168155481539720367.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040554.P15392670329426581909

`a(n-2)` with `a(0)=24, a(1)=16, a(2)=48`
-/

namespace A040554.P15392670329426581909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24, 16, 48] fun n a =>
  a (n - 2)

end

end A040554.P15392670329426581909

noncomputable section

/-- A040554: Continued fraction for sqrt(579).

Offset 0, canonical program `A040554.P15392670329426581909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040554 (n : ℕ) : ℤ :=
  (A040554.P15392670329426581909.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040555.P15204356864910839929

`a(n-2)` with `a(0)=24, a(1)=12, a(2)=48`
-/

namespace A040555.P15204356864910839929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24, 12, 48] fun n a =>
  a (n - 2)

end

end A040555.P15204356864910839929

noncomputable section

/-- A040555: Continued fraction for sqrt(580).

Offset 0, canonical program `A040555.P15204356864910839929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040555 (n : ℕ) : ℤ :=
  (A040555.P15204356864910839929.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040557.P4678028743772636870

`a(n-2)` with `a(0)=24, a(1)=8, a(2)=48`
-/

namespace A040557.P4678028743772636870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24, 8, 48] fun n a =>
  a (n - 2)

end

end A040557.P4678028743772636870

noncomputable section

/-- A040557: Continued fraction for sqrt(582).

Offset 0, canonical program `A040557.P4678028743772636870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040557 (n : ℕ) : ℤ :=
  (A040557.P4678028743772636870.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040559.P396591064103047119

`a(n-2)` with `a(0)=24, a(1)=6, a(2)=48`
-/

namespace A040559.P396591064103047119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24, 6, 48] fun n a =>
  a (n - 2)

end

end A040559.P396591064103047119

noncomputable section

/-- A040559: Continued fraction for sqrt(584).

Offset 0, canonical program `A040559.P396591064103047119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040559 (n : ℕ) : ℤ :=
  (A040559.P396591064103047119.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040567.P13533111184185649739

`a(n-2)` with `a(0)=24, a(1)=3, a(2)=48`
-/

namespace A040567.P13533111184185649739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [24, 3, 48] fun n a =>
  a (n - 2)

end

end A040567.P13533111184185649739

noncomputable section

/-- A040567: Continued fraction for sqrt(592).

Offset 0, canonical program `A040567.P13533111184185649739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040567 (n : ℕ) : ℤ :=
  (A040567.P13533111184185649739.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040601.P4222061474212669633

`a(n-2)` with `a(0)=25, a(1)=25, a(2)=50`
-/

namespace A040601.P4222061474212669633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25, 25, 50] fun n a =>
  a (n - 2)

end

end A040601.P4222061474212669633

noncomputable section

/-- A040601: Continued fraction for sqrt(627).

Offset 0, canonical program `A040601.P4222061474212669633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040601 (n : ℕ) : ℤ :=
  (A040601.P4222061474212669633.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040606.P31465410601111367

`a(n-4)` with `a(0)=25, a(1)=7, a(2)=6, a(3)=7, a(4)=50`
-/

namespace A040606.P31465410601111367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25, 7, 6, 7, 50] fun n a =>
  a (n - 4)

end

end A040606.P31465410601111367

noncomputable section

/-- A040606: Continued fraction for sqrt(632).

Offset 0, canonical program `A040606.P31465410601111367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040606 (n : ℕ) : ℤ :=
  (A040606.P31465410601111367.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040609.P13769478646691834063

`a(n-2)` with `a(0)=25, a(1)=5, a(2)=50`
-/

namespace A040609.P13769478646691834063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25, 5, 50] fun n a =>
  a (n - 2)

end

end A040609.P13769478646691834063

noncomputable section

/-- A040609: Continued fraction for sqrt(635).

Offset 0, canonical program `A040609.P13769478646691834063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040609 (n : ℕ) : ℤ :=
  (A040609.P13769478646691834063.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040624.P10755281790934215631

`a(n-2)` with `a(0)=25, a(1)=2, a(2)=50`
-/

namespace A040624.P10755281790934215631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25, 2, 50] fun n a =>
  a (n - 2)

end

end A040624.P10755281790934215631

noncomputable section

/-- A040624: Continued fraction for sqrt(650).

Offset 0, canonical program `A040624.P10755281790934215631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040624 (n : ℕ) : ℤ :=
  (A040624.P10755281790934215631.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040651.P4614921769320379869

`a(n-2)` with `a(0)=26, a(1)=26, a(2)=52`
-/

namespace A040651.P4614921769320379869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [26, 26, 52] fun n a =>
  a (n - 2)

end

end A040651.P4614921769320379869

noncomputable section

/-- A040651: Continued fraction for sqrt(678).

Offset 0, canonical program `A040651.P4614921769320379869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040651 (n : ℕ) : ℤ :=
  (A040651.P4614921769320379869.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040653.P15139044130667057716

`a(n-2)` with `a(0)=26, a(1)=13, a(2)=52`
-/

namespace A040653.P15139044130667057716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [26, 13, 52] fun n a =>
  a (n - 2)

end

end A040653.P15139044130667057716

noncomputable section

/-- A040653: Continued fraction for sqrt(680).

Offset 0, canonical program `A040653.P15139044130667057716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040653 (n : ℕ) : ℤ :=
  (A040653.P15139044130667057716.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040662.P15986725278356601871

`a(n-2)` with `a(0)=26, a(1)=4, a(2)=52`
-/

namespace A040662.P15986725278356601871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [26, 4, 52] fun n a =>
  a (n - 2)

end

end A040662.P15986725278356601871

noncomputable section

/-- A040662: Continued fraction for sqrt(689).

Offset 0, canonical program `A040662.P15986725278356601871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040662 (n : ℕ) : ℤ :=
  (A040662.P15986725278356601871.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040703.P11036125544006059442

`a(n-2)` with `a(0)=27, a(1)=27, a(2)=54`
-/

namespace A040703.P11036125544006059442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27, 27, 54] fun n a =>
  a (n - 2)

end

end A040703.P11036125544006059442

noncomputable section

/-- A040703: Continued fraction for sqrt(731).

Offset 0, canonical program `A040703.P11036125544006059442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040703 (n : ℕ) : ℤ :=
  (A040703.P11036125544006059442.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040704.P9609015639479839724

`a(n-2)` with `a(0)=27, a(1)=18, a(2)=54`
-/

namespace A040704.P9609015639479839724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27, 18, 54] fun n a =>
  a (n - 2)

end

end A040704.P9609015639479839724

noncomputable section

/-- A040704: Continued fraction for sqrt(732).

Offset 0, canonical program `A040704.P9609015639479839724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040704 (n : ℕ) : ℤ :=
  (A040704.P9609015639479839724.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040707.P9787896029975799978

`a(n-2)` with `a(0)=27, a(1)=9, a(2)=54`
-/

namespace A040707.P9787896029975799978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27, 9, 54] fun n a =>
  a (n - 2)

end

end A040707.P9787896029975799978

noncomputable section

/-- A040707: Continued fraction for sqrt(735).

Offset 0, canonical program `A040707.P9787896029975799978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040707 (n : ℕ) : ℤ :=
  (A040707.P9787896029975799978.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040710.P17640153232830825372

`a(n-2)` with `a(0)=27, a(1)=6, a(2)=54`
-/

namespace A040710.P17640153232830825372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27, 6, 54] fun n a =>
  a (n - 2)

end

end A040710.P17640153232830825372

noncomputable section

/-- A040710: Continued fraction for sqrt(738).

Offset 0, canonical program `A040710.P17640153232830825372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040710 (n : ℕ) : ℤ :=
  (A040710.P17640153232830825372.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040719.P5413674079484212349

`a(n-2)` with `a(0)=27, a(1)=3, a(2)=54`
-/

namespace A040719.P5413674079484212349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [27, 3, 54] fun n a =>
  a (n - 2)

end

end A040719.P5413674079484212349

noncomputable section

/-- A040719: Continued fraction for sqrt(747).

Offset 0, canonical program `A040719.P5413674079484212349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040719 (n : ℕ) : ℤ :=
  (A040719.P5413674079484212349.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040757.P1901056680514546679

`a(n-2)` with `a(0)=28, a(1)=28, a(2)=56`
-/

namespace A040757.P1901056680514546679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 28, 56] fun n a =>
  a (n - 2)

end

end A040757.P1901056680514546679

noncomputable section

/-- A040757: Continued fraction for sqrt(786).

Offset 0, canonical program `A040757.P1901056680514546679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040757 (n : ℕ) : ℤ :=
  (A040757.P1901056680514546679.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040759.P3227010823646643053

`a(n-2)` with `a(0)=28, a(1)=14, a(2)=56`
-/

namespace A040759.P3227010823646643053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 14, 56] fun n a =>
  a (n - 2)

end

end A040759.P3227010823646643053

noncomputable section

/-- A040759: Continued fraction for sqrt(788).

Offset 0, canonical program `A040759.P3227010823646643053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040759 (n : ℕ) : ℤ :=
  (A040759.P3227010823646643053.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040762.P731706885572915487

`a(n-2)` with `a(0)=28, a(1)=8, a(2)=56`
-/

namespace A040762.P731706885572915487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 8, 56] fun n a =>
  a (n - 2)

end

end A040762.P731706885572915487

noncomputable section

/-- A040762: Continued fraction for sqrt(791).

Offset 0, canonical program `A040762.P731706885572915487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040762 (n : ℕ) : ℤ :=
  (A040762.P731706885572915487.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040763.P796828268115170365

`a(n-2)` with `a(0)=28, a(1)=7, a(2)=56`
-/

namespace A040763.P796828268115170365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 7, 56] fun n a =>
  a (n - 2)

end

end A040763.P796828268115170365

noncomputable section

/-- A040763: Continued fraction for sqrt(792).

Offset 0, canonical program `A040763.P796828268115170365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040763 (n : ℕ) : ℤ :=
  (A040763.P796828268115170365.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040766.P6164536257403532282

`a(n-4)` with `a(0)=28, a(1)=5, a(2)=9, a(3)=5, a(4)=56`
-/

namespace A040766.P6164536257403532282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 5, 9, 5, 56] fun n a =>
  a (n - 4)

end

end A040766.P6164536257403532282

noncomputable section

/-- A040766: Continued fraction for sqrt(795).

Offset 0, canonical program `A040766.P6164536257403532282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040766 (n : ℕ) : ℤ :=
  (A040766.P6164536257403532282.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040783.P11089680977228908855

`a(n-2)` with `a(0)=28, a(1)=2, a(2)=56`
-/

namespace A040783.P11089680977228908855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [28, 2, 56] fun n a =>
  a (n - 2)

end

end A040783.P11089680977228908855

noncomputable section

/-- A040783: Continued fraction for sqrt(812).

Offset 0, canonical program `A040783.P11089680977228908855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040783 (n : ℕ) : ℤ :=
  (A040783.P11089680977228908855.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040813.P18198025913009035077

`a(n-2)` with `a(0)=29, a(1)=29, a(2)=58`
-/

namespace A040813.P18198025913009035077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29, 29, 58] fun n a =>
  a (n - 2)

end

end A040813.P18198025913009035077

noncomputable section

/-- A040813: Continued fraction for sqrt(843).

Offset 0, canonical program `A040813.P18198025913009035077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040813 (n : ℕ) : ℤ :=
  (A040813.P18198025913009035077.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040825.P17899073690986763746

`a(n-4)` with `a(0)=29, a(1)=4, a(2)=6, a(3)=4, a(4)=58`
-/

namespace A040825.P17899073690986763746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29, 4, 6, 4, 58] fun n a =>
  a (n - 4)

end

end A040825.P17899073690986763746

noncomputable section

/-- A040825: Continued fraction for sqrt(855).

Offset 0, canonical program `A040825.P17899073690986763746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040825 (n : ℕ) : ℤ :=
  (A040825.P17899073690986763746.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040840.P7202937872485501686

`a(n-2)` with `a(0)=29, a(1)=2, a(2)=58`
-/

namespace A040840.P7202937872485501686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29, 2, 58] fun n a =>
  a (n - 2)

end

end A040840.P7202937872485501686

noncomputable section

/-- A040840: Continued fraction for sqrt(870).

Offset 0, canonical program `A040840.P7202937872485501686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040840 (n : ℕ) : ℤ :=
  (A040840.P7202937872485501686.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040871.P4468805212625006581

`a(n-2)` with `a(0)=30, a(1)=30, a(2)=60`
-/

namespace A040871.P4468805212625006581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 30, 60] fun n a =>
  a (n - 2)

end

end A040871.P4468805212625006581

noncomputable section

/-- A040871: Continued fraction for sqrt(902).

Offset 0, canonical program `A040871.P4468805212625006581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040871 (n : ℕ) : ℤ :=
  (A040871.P4468805212625006581.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040872.P2801160740799025352

`a(n-2)` with `a(0)=30, a(1)=20, a(2)=60`
-/

namespace A040872.P2801160740799025352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 20, 60] fun n a =>
  a (n - 2)

end

end A040872.P2801160740799025352

noncomputable section

/-- A040872: Continued fraction for sqrt(903).

Offset 0, canonical program `A040872.P2801160740799025352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040872 (n : ℕ) : ℤ :=
  (A040872.P2801160740799025352.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040873.P12227980355607036763

`a(n-2)` with `a(0)=30, a(1)=15, a(2)=60`
-/

namespace A040873.P12227980355607036763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 15, 60] fun n a =>
  a (n - 2)

end

end A040873.P12227980355607036763

noncomputable section

/-- A040873: Continued fraction for sqrt(904).

Offset 0, canonical program `A040873.P12227980355607036763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040873 (n : ℕ) : ℤ :=
  (A040873.P12227980355607036763.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040874.P12875367744238938774

`a(n-2)` with `a(0)=30, a(1)=12, a(2)=60`
-/

namespace A040874.P12875367744238938774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 12, 60] fun n a =>
  a (n - 2)

end

end A040874.P12875367744238938774

noncomputable section

/-- A040874: Continued fraction for sqrt(905).

Offset 0, canonical program `A040874.P12875367744238938774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040874 (n : ℕ) : ℤ :=
  (A040874.P12875367744238938774.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040875.P4468335248164453968

`a(n-2)` with `a(0)=30, a(1)=10, a(2)=60`
-/

namespace A040875.P4468335248164453968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 10, 60] fun n a =>
  a (n - 2)

end

end A040875.P4468335248164453968

noncomputable section

/-- A040875: Continued fraction for sqrt(906).

Offset 0, canonical program `A040875.P4468335248164453968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040875 (n : ℕ) : ℤ :=
  (A040875.P4468335248164453968.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040879.P13708618645884832030

`a(n-2)` with `a(0)=30, a(1)=6, a(2)=60`
-/

namespace A040879.P13708618645884832030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 6, 60] fun n a =>
  a (n - 2)

end

end A040879.P13708618645884832030

noncomputable section

/-- A040879: Continued fraction for sqrt(910).

Offset 0, canonical program `A040879.P13708618645884832030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040879 (n : ℕ) : ℤ :=
  (A040879.P13708618645884832030.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040881.P15191963754201043144

`a(n-2)` with `a(0)=30, a(1)=5, a(2)=60`
-/

namespace A040881.P15191963754201043144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 5, 60] fun n a =>
  a (n - 2)

end

end A040881.P15191963754201043144

noncomputable section

/-- A040881: Continued fraction for sqrt(912).

Offset 0, canonical program `A040881.P15191963754201043144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040881 (n : ℕ) : ℤ :=
  (A040881.P15191963754201043144.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040884.P2567827978039252667

`a(n-2)` with `a(0)=30, a(1)=4, a(2)=60`
-/

namespace A040884.P2567827978039252667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 4, 60] fun n a =>
  a (n - 2)

end

end A040884.P2567827978039252667

noncomputable section

/-- A040884: Continued fraction for sqrt(915).

Offset 0, canonical program `A040884.P2567827978039252667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040884 (n : ℕ) : ℤ :=
  (A040884.P2567827978039252667.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040889.P9855967409553613426

`a(n-2)` with `a(0)=30, a(1)=3, a(2)=60`
-/

namespace A040889.P9855967409553613426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 3, 60] fun n a =>
  a (n - 2)

end

end A040889.P9855967409553613426

noncomputable section

/-- A040889: Continued fraction for sqrt(920).

Offset 0, canonical program `A040889.P9855967409553613426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040889 (n : ℕ) : ℤ :=
  (A040889.P9855967409553613426.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040899.P4038023293805831985

`a(n-2)` with `a(0)=30, a(1)=2, a(2)=60`
-/

namespace A040899.P4038023293805831985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [30, 2, 60] fun n a =>
  a (n - 2)

end

end A040899.P4038023293805831985

noncomputable section

/-- A040899: Continued fraction for sqrt(930).

Offset 0, canonical program `A040899.P4038023293805831985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040899 (n : ℕ) : ℤ :=
  (A040899.P4038023293805831985.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040931.P4879972020719054931

`a(n-2)` with `a(0)=31, a(1)=31, a(2)=62`
-/

namespace A040931.P4879972020719054931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [31, 31, 62] fun n a =>
  a (n - 2)

end

end A040931.P4879972020719054931

noncomputable section

/-- A040931: Continued fraction for sqrt(963).

Offset 0, canonical program `A040931.P4879972020719054931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040931 (n : ℕ) : ℤ :=
  (A040931.P4879972020719054931.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040960.P17555520016820167343

`a(n-2)` with `a(0)=31, a(1)=2, a(2)=62`
-/

namespace A040960.P17555520016820167343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [31, 2, 62] fun n a =>
  a (n - 2)

end

end A040960.P17555520016820167343

noncomputable section

/-- A040960: Continued fraction for sqrt(992).

Offset 0, canonical program `A040960.P17555520016820167343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040960 (n : ℕ) : ℤ :=
  (A040960.P17555520016820167343.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041015.P3107087788480570332

`a(n-2)+3*gcd(2, n)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A041015.P3107087788480570332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 3 * (Nat.gcd 2 n * a (n - 1))

end

end A041015.P3107087788480570332

noncomputable section

/-- A041015: Denominators of continued fraction convergents to sqrt(11).

Offset 0, canonical program `A041015.P3107087788480570332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A041015 (n : ℕ) : ℤ :=
  (A041015.P3107087788480570332.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A041015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041016.P12733509508903654080

`a(n-2)+lcm(6, a(n-1))` with `a(0)=3, a(1)=7`
-/

namespace A041016.P12733509508903654080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n a =>
  a (n - 2) + Nat.lcm 6 (a (n - 1))

end

end A041016.P12733509508903654080

noncomputable section

/-- A041016: Numerators of continued fraction convergents to sqrt(12).

Offset 0, canonical program `A041016.P12733509508903654080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A041016 (n : ℕ) : ℤ :=
  (A041016.P12733509508903654080.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A041016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041023.P7842398452088913562

`8*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=8`
-/

namespace A041023.P7842398452088913562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 8] fun n a =>
  8 * a (n - 2) - a (n - 4)

end

end A041023.P7842398452088913562

noncomputable section

/-- A041023: Denominators of continued fraction convergents to sqrt(15).

Offset 0, canonical program `A041023.P7842398452088913562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A041023 (n : ℕ) : ℤ :=
  A041023.P7842398452088913562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A041023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041027.P10585639747971698650

`a(n-2)+4*gcd(2, n)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A041027.P10585639747971698650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 4 * (Nat.gcd 2 n * a (n - 1))

end

end A041027.P10585639747971698650

noncomputable section

/-- A041027: Denominators of continued fraction convergents to sqrt(18).

Offset 0, canonical program `A041027.P10585639747971698650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A041027 (n : ℕ) : ℤ :=
  (A041027.P10585639747971698650.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A041027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041030.P10176548047865930669

`a(n-2)+lcm(8, a(n-1))` with `a(0)=4, a(1)=9`
-/

namespace A041030.P10176548047865930669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 2) + Nat.lcm 8 (a (n - 1))

end

end A041030.P10176548047865930669

noncomputable section

/-- A041030: Numerators of continued fraction convergents to sqrt(20).

Offset 0, canonical program `A041030.P10176548047865930669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A041030 (n : ℕ) : ℤ :=
  (A041030.P10176548047865930669.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A041030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041038.P15275115683617874886

`a(n-2)+gcd(2, n)^3*a(n-1)` with `a(0)=4, a(1)=5`
-/

namespace A041038.P15275115683617874886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 2) + Nat.gcd 2 n ^ 3 * a (n - 1)

end

end A041038.P15275115683617874886

noncomputable section

/-- A041038: Numerators of continued fraction convergents to sqrt(24).

Offset 0, canonical program `A041038.P15275115683617874886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A041038 (n : ℕ) : ℤ :=
  (A041038.P15275115683617874886.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A041038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041039.P12162617650731648202

`a(n-2)+gcd(2, n)^3*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A041039.P12162617650731648202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.gcd 2 n ^ 3 * a (n - 1)

end

end A041039.P12162617650731648202

noncomputable section

/-- A041039: Denominators of continued fraction convergents to sqrt(24).

Offset 0, canonical program `A041039.P12162617650731648202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A041039 (n : ℕ) : ℤ :=
  (A041039.P12162617650731648202.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A041039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041138.P16460031689754476247

`a(n-2)+gcd(4, n)²*a(n-1)` with `a(0)=8, a(1)=9`
-/

namespace A041138.P16460031689754476247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 9] fun n a =>
  a (n - 2) + Nat.gcd 4 n ^ 2 * a (n - 1)

end

end A041138.P16460031689754476247

noncomputable section

/-- A041138: Numerators of continued fraction convergents to sqrt(78).

Offset 0, canonical program `A041138.P16460031689754476247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A041138 (n : ℕ) : ℤ :=
  (A041138.P16460031689754476247.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A041138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A041160.P4958274173460617149

`((-1)^n+2)*((3-sqrt(10))^(n+1)+(3+sqrt(10))^(n+1))/2`
-/

namespace A041160.P4958274173460617149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 2 : ℝ) * (((3 - Real.sqrt (10 : ℝ)) ^ (n + 1) + (3 + Real.sqrt (10 : ℝ)) ^ (n + 1)) / 2)

end

end A041160.P4958274173460617149

noncomputable section

/-- A041160: Numerators of continued fraction convergents to sqrt(90).

Offset 0, canonical program `A041160.P4958274173460617149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A041160 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A041160.P4958274173460617149.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A041160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042987.P8364736035852377732

`p?[a(n-3)+8]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A042987.P8364736035852377732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 7] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042987.P8364736035852377732

noncomputable section

/-- A042987: Primes congruent to {2, 3, 5, 7} mod 8.

Offset 1, canonical program `A042987.P8364736035852377732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042987 (n : ℕ) : ℤ :=
  (A042987.P8364736035852377732.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042991.P15411358122579330879

`p?[ceil(5*n/4)]`
-/

namespace A042991.P15411358122579330879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 4)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042991.P15411358122579330879

noncomputable section

/-- A042991: Primes congruent to {0, 2, 3, 4} (mod 5).

Offset 1, canonical program `A042991.P15411358122579330879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8806 terms. -/
def A042991 (n : ℕ) : ℤ :=
  A042991.P15411358122579330879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8806 terms. -/
def A042991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042993.P8504211087919636782

`p?[2*n+1-(n-1)%5]`
-/

namespace A042993.P8504211087919636782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A042993.P8504211087919636782

noncomputable section

/-- A042993: Primes congruent to {0, 2, 3} mod 5.

Offset 1, canonical program `A042993.P8504211087919636782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9022 terms. -/
def A042993 (n : ℕ) : ℤ :=
  A042993.P8504211087919636782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9022 terms. -/
def A042993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042997.P12240399101058951569

`p?[a(n-5)+7]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A042997.P12240399101058951569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5, 6] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042997.P12240399101058951569

noncomputable section

/-- A042997: Primes congruent to {2, 3, 4, 5, 6} (mod 7).

Offset 1, canonical program `A042997.P12240399101058951569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042997 (n : ℕ) : ℤ :=
  (A042997.P12240399101058951569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042998.P9124097597539170765

`p?[a(n-4)+8]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A042998.P9124097597539170765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n f1 =>
  f1 (n - 4) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042998.P9124097597539170765

noncomputable section

/-- A042998: Primes congruent to {1, 2, 3, 5} (mod 8).

Offset 1, canonical program `A042998.P9124097597539170765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042998 (n : ℕ) : ℤ :=
  (A042998.P9124097597539170765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042999.P2391960015442067739

`p?[a(n-2)+8]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A042999.P2391960015442067739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A042999.P2391960015442067739

noncomputable section

/-- A042999: Primes congruent to {2, 3, 5} (mod 8).

Offset 1, canonical program `A042999.P2391960015442067739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042999 (n : ℕ) : ℤ :=
  (A042999.P2391960015442067739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043289.P11919953001032112528

`and(3^n, val(n+1, 4)!)`
-/

namespace A043289.P11919953001032112528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (3 ^ n) (Nat.factorial (SequenceMachineLib.valuation (n + 1) 4))

end

end A043289.P11919953001032112528

noncomputable section

/-- A043289: Maximal run length in base-15 representation of n.

Offset 1, canonical program `A043289.P11919953001032112528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A043289 (n : ℕ) : ℤ :=
  (A043289.P11919953001032112528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A043289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043294.P17313216890179425883

`∑{digits}[∏[2/(n+1)-4], #]`
-/

namespace A043294.P17313216890179425883
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) - 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A043294.P17313216890179425883

noncomputable section

/-- A043294: Sum of digits of binomial(2n,n).

Offset 1, canonical program `A043294.P17313216890179425883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A043294 (n : ℕ) : ℤ :=
  (A043294.P17313216890179425883.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A043294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043574.P2106870287993236805

`eq[7, a(and(n, -(2*n+1))-1)+1]` with `a(0)=0`
-/

namespace A043574.P2106870287993236805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.land (n : ℤ) (-(2 * n + 1 : ℤ)) - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A043574.P2106870287993236805

noncomputable section

/-- A043574: Numbers whose base-2 representation has exactly 7 runs.

Offset 1, canonical program `A043574.P2106870287993236805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8643 terms. -/
def A043574 (n : ℕ) : ℤ :=
  (A043574.P2106870287993236805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8643 terms. -/
def A043574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A044042.P9099708772331727754

`p?[2*floor(n/5)+1+n]`
-/

namespace A044042.P9099708772331727754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 5⌋ + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A044042.P9099708772331727754

noncomputable section

/-- A044042: Primes congruent to {1, 2, 3, 4, 5} (mod 7).

Offset 1, canonical program `A044042.P9099708772331727754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044042 (n : ℕ) : ℤ :=
  A044042.P9099708772331727754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A044042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045308.P7840857078236621964

`p?[a(n-4)+7]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A045308.P7840857078236621964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 5] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045308.P7840857078236621964

noncomputable section

/-- A045308: Primes congruent to {2, 3, 4, 5} (mod 7).

Offset 1, canonical program `A045308.P7840857078236621964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045308 (n : ℕ) : ℤ :=
  (A045308.P7840857078236621964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045309.P15240457740614460515

`p?[2*n-(n-2)%3]`
-/

namespace A045309.P15240457740614460515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod ((n : ℤ) - 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045309.P15240457740614460515

noncomputable section

/-- A045309: Primes congruent to {0, 2} mod 3.

Offset 1, canonical program `A045309.P15240457740614460515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8996 terms. -/
def A045309 (n : ℕ) : ℤ :=
  A045309.P15240457740614460515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8996 terms. -/
def A045309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045311.P1222894123490772418

`p?[a(n-5)+7]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=6`
-/

namespace A045311.P1222894123490772418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5, 6] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045311.P1222894123490772418

noncomputable section

/-- A045311: Primes congruent to {1, 2, 3, 5, 6} (mod 7).

Offset 1, canonical program `A045311.P1222894123490772418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045311 (n : ℕ) : ℤ :=
  (A045311.P1222894123490772418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045312.P10043287418927569802

`p?[a(n-4)+7]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=6`
-/

namespace A045312.P10043287418927569802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045312.P10043287418927569802

noncomputable section

/-- A045312: Primes congruent to {2, 3, 5, 6} (mod 7).

Offset 1, canonical program `A045312.P10043287418927569802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045312 (n : ℕ) : ℤ :=
  (A045312.P10043287418927569802.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045313.P6182719146653713756

`p?[a(n-4)+7]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A045313.P6182719146653713756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045313.P6182719146653713756

noncomputable section

/-- A045313: Primes congruent to {1, 2, 3, 5} (mod 7).

Offset 1, canonical program `A045313.P6182719146653713756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045313 (n : ℕ) : ℤ :=
  (A045313.P6182719146653713756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045314.P4128103165602445794

`p?[a(n-3)+7]` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A045314.P4128103165602445794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045314.P4128103165602445794

noncomputable section

/-- A045314: Primes congruent to {2, 3, 5} (mod 7).

Offset 1, canonical program `A045314.P4128103165602445794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045314 (n : ℕ) : ℤ :=
  (A045314.P4128103165602445794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045319.P2525704571626510308

`p?[a(n-4)+5]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A045319.P2525704571626510308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045319.P2525704571626510308

noncomputable section

/-- A045319: Primes congruent to {1, 2, 3, 4} (mod 5).

Offset 1, canonical program `A045319.P2525704571626510308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045319 (n : ℕ) : ℤ :=
  (A045319.P2525704571626510308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045321.P15348268763590088053

`p?[a(n-3)+5]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A045321.P15348268763590088053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045321.P15348268763590088053

noncomputable section

/-- A045321: Primes congruent to {1, 2, 3} (mod 5).

Offset 1, canonical program `A045321.P15348268763590088053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045321 (n : ℕ) : ℤ :=
  (A045321.P15348268763590088053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045323.P15850324902354256493

`p?[a(n-4)+8]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=7`
-/

namespace A045323.P15850324902354256493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 7] fun n f1 =>
  f1 (n - 4) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045323.P15850324902354256493

noncomputable section

/-- A045323: Primes congruent to {1, 2, 3, 7} (mod 8).

Offset 1, canonical program `A045323.P15850324902354256493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045323 (n : ℕ) : ℤ :=
  (A045323.P15850324902354256493.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045326.P2711126991283549166

`p?[a(n-1)+4]` with `a(0)=2, a(1)=3`
-/

namespace A045326.P2711126991283549166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045326.P2711126991283549166

noncomputable section

/-- A045326: Primes congruent to {2, 3} mod 4.

Offset 1, canonical program `A045326.P2711126991283549166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045326 (n : ℕ) : ℤ :=
  (A045326.P2711126991283549166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045327.P5265433612851231069

`p?[a(n-3)+5]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A045327.P5265433612851231069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045327.P5265433612851231069

noncomputable section

/-- A045327: Primes congruent to {2, 3, 4} mod 5.

Offset 1, canonical program `A045327.P5265433612851231069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045327 (n : ℕ) : ℤ :=
  (A045327.P5265433612851231069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045331.P8655262419803922724

`p?[abs(2-n)+2*n]`
-/

namespace A045331.P8655262419803922724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (n : ℤ)| + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045331.P8655262419803922724

noncomputable section

/-- A045331: Primes congruent to {1, 2, 3} mod 6; or, -3 is a square mod p.

Offset 1, canonical program `A045331.P8655262419803922724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045331 (n : ℕ) : ℤ :=
  A045331.P8655262419803922724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045332.P1720600975463191200

`p?[3*floor(n/4)+n]`
-/

namespace A045332.P1720600975463191200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / 4⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045332.P1720600975463191200

noncomputable section

/-- A045332: Primes congruent to {0, 1, 2, 3} (mod 7).

Offset 1, canonical program `A045332.P1720600975463191200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7963 terms. -/
def A045332 (n : ℕ) : ℤ :=
  A045332.P1720600975463191200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7963 terms. -/
def A045332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045333.P834669493138870261

`p?[a(n-3)+7]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A045333.P834669493138870261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045333.P834669493138870261

noncomputable section

/-- A045333: Primes congruent to {0, 2, 3} (mod 7).

Offset 1, canonical program `A045333.P834669493138870261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6892 terms. -/
def A045333 (n : ℕ) : ℤ :=
  (A045333.P834669493138870261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6892 terms. -/
def A045333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045334.P10541325009557143095

`p?[a(n-5)+7]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A045334.P10541325009557143095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045334.P10541325009557143095

noncomputable section

/-- A045334: Primes congruent to {1, 2, 3, 4, 6} (mod 7).

Offset 1, canonical program `A045334.P10541325009557143095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045334 (n : ℕ) : ℤ :=
  (A045334.P10541325009557143095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045335.P13274169013120630169

`p?[a(n-4)+7]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A045335.P13274169013120630169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045335.P13274169013120630169

noncomputable section

/-- A045335: Primes congruent to {2, 3, 4, 6} (mod 7).

Offset 1, canonical program `A045335.P13274169013120630169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045335 (n : ℕ) : ℤ :=
  (A045335.P13274169013120630169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045337.P7827098050540277150

`p?[a(n-4)+7]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A045337.P7827098050540277150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045337.P7827098050540277150

noncomputable section

/-- A045337: Primes congruent to {1, 2, 3, 4} (mod 7).

Offset 1, canonical program `A045337.P7827098050540277150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045337 (n : ℕ) : ℤ :=
  (A045337.P7827098050540277150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045338.P15520504100055306305

`p?[a(n-3)+7]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A045338.P15520504100055306305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045338.P15520504100055306305

noncomputable section

/-- A045338: Primes congruent to {2, 3, 4} mod 7.

Offset 1, canonical program `A045338.P15520504100055306305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045338 (n : ℕ) : ℤ :=
  (A045338.P15520504100055306305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045339.P2349501121068513983

`p?[a(n-1)+8]` with `a(0)=2, a(1)=3`
-/

namespace A045339.P2349501121068513983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045339.P2349501121068513983

noncomputable section

/-- A045339: Primes congruent to {2, 3} mod 8.

Offset 1, canonical program `A045339.P2349501121068513983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045339 (n : ℕ) : ℤ :=
  (A045339.P2349501121068513983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045340.P9762414665066608400

`p?[a(n-4)+7]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A045340.P9762414665066608400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045340.P9762414665066608400

noncomputable section

/-- A045340: Primes congruent to {1, 2, 3, 6} mod 7.

Offset 1, canonical program `A045340.P9762414665066608400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045340 (n : ℕ) : ℤ :=
  (A045340.P9762414665066608400.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045341.P2327228954440728646

`p?[a(n-3)+7]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A045341.P2327228954440728646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045341.P2327228954440728646

noncomputable section

/-- A045341: Primes congruent to {2, 3, 6} mod 7.

Offset 1, canonical program `A045341.P2327228954440728646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045341 (n : ℕ) : ℤ :=
  (A045341.P2327228954440728646.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045342.P196533562296400782

`p?[a(n-3)+7]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A045342.P196533562296400782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045342.P196533562296400782

noncomputable section

/-- A045342: Primes congruent to {1, 2, 3} mod 7.

Offset 1, canonical program `A045342.P196533562296400782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045342 (n : ℕ) : ℤ :=
  (A045342.P196533562296400782.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045344.P7494973559248254871

`p?[a(n-2)+3]` with `a(0)=1, a(1)=2`
-/

namespace A045344.P7494973559248254871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045344.P7494973559248254871

noncomputable section

/-- A045344: Primes congruent to {1, 2} mod 3.

Offset 1, canonical program `A045344.P7494973559248254871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045344 (n : ℕ) : ℤ :=
  (A045344.P7494973559248254871.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045352.P15949065169129240172

`p?[floor(8*n/5)+1]`
-/

namespace A045352.P15949065169129240172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((n : ℚ) / 5)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045352.P15949065169129240172

noncomputable section

/-- A045352: Primes congruent to {1, 2, 5, 7} mod 8.

Offset 1, canonical program `A045352.P15949065169129240172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045352 (n : ℕ) : ℤ :=
  A045352.P15949065169129240172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045355.P15301672748676834570

`p?[a(n-2)+8]` with `a(0)=2, a(1)=5, a(2)=7`
-/

namespace A045355.P15301672748676834570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045355.P15301672748676834570

noncomputable section

/-- A045355: Primes congruent to {2, 5, 7} mod 8.

Offset 1, canonical program `A045355.P15301672748676834570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045355 (n : ℕ) : ℤ :=
  (A045355.P15301672748676834570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045357.P9029028735239483448

`p?[floor(5*n/2)]`
-/

namespace A045357.P9029028735239483448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045357.P9029028735239483448

noncomputable section

/-- A045357: Primes congruent to {0, 2} mod 5.

Offset 1, canonical program `A045357.P9029028735239483448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5519 terms. -/
def A045357 (n : ℕ) : ℤ :=
  A045357.P9029028735239483448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5519 terms. -/
def A045357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045358.P9526829734349604380

`p?[a(n-4)+7]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A045358.P9526829734349604380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 5] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045358.P9526829734349604380

noncomputable section

/-- A045358: Primes congruent to {0, 1, 2, 5} mod 7.

Offset 1, canonical program `A045358.P9526829734349604380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7961 terms. -/
def A045358 (n : ℕ) : ℤ :=
  (A045358.P9526829734349604380.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7961 terms. -/
def A045358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045359.P13294246229926865263

`p?[round(7*n/3)]`
-/

namespace A045359.P13294246229926865263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 * ((n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045359.P13294246229926865263

noncomputable section

/-- A045359: Primes congruent to {0, 2, 5} mod 7.

Offset 1, canonical program `A045359.P13294246229926865263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6900 terms. -/
def A045359 (n : ℕ) : ℤ :=
  A045359.P13294246229926865263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6900 terms. -/
def A045359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045360.P8131706031805652001

`p?[a(n-5)+7]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A045360.P8131706031805652001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5, 6] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045360.P8131706031805652001

noncomputable section

/-- A045360: Primes congruent to {1, 2, 4, 5, 6} mod 7.

Offset 1, canonical program `A045360.P8131706031805652001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045360 (n : ℕ) : ℤ :=
  (A045360.P8131706031805652001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045361.P16169296354414559508

`p?[a(n-4)+7]` with `a(0)=2, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A045361.P16169296354414559508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 5, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045361.P16169296354414559508

noncomputable section

/-- A045361: Primes congruent to {2, 4, 5, 6} mod 7.

Offset 1, canonical program `A045361.P16169296354414559508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045361 (n : ℕ) : ℤ :=
  (A045361.P16169296354414559508.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045362.P9763593593856713170

`p?[a(n-4)+7]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5`
-/

namespace A045362.P9763593593856713170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045362.P9763593593856713170

noncomputable section

/-- A045362: Primes congruent to {1, 2, 4, 5} mod 7.

Offset 1, canonical program `A045362.P9763593593856713170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045362 (n : ℕ) : ℤ :=
  (A045362.P9763593593856713170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045363.P7969860049692655788

`p?[a(n-3)+7]` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A045363.P7969860049692655788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 5] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045363.P7969860049692655788

noncomputable section

/-- A045363: Primes congruent to {2, 4, 5} mod 7.

Offset 1, canonical program `A045363.P7969860049692655788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045363 (n : ℕ) : ℤ :=
  (A045363.P7969860049692655788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045364.P4023765150342401818

`p?[a(n-4)+7]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6`
-/

namespace A045364.P4023765150342401818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045364.P4023765150342401818

noncomputable section

/-- A045364: Primes congruent to {1, 2, 5, 6} mod 7.

Offset 1, canonical program `A045364.P4023765150342401818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045364 (n : ℕ) : ℤ :=
  (A045364.P4023765150342401818.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045365.P2461876682429679509

`p?[a(n-3)+7]` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A045365.P2461876682429679509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045365.P2461876682429679509

noncomputable section

/-- A045365: Primes congruent to {2, 5, 6} mod 7.

Offset 1, canonical program `A045365.P2461876682429679509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045365 (n : ℕ) : ℤ :=
  (A045365.P2461876682429679509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045366.P7029179544086970108

`p?[a(n-1)+8]` with `a(0)=2, a(1)=5`
-/

namespace A045366.P7029179544086970108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045366.P7029179544086970108

noncomputable section

/-- A045366: Primes congruent to {2, 5} mod 8.

Offset 1, canonical program `A045366.P7029179544086970108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045366 (n : ℕ) : ℤ :=
  (A045366.P7029179544086970108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045367.P8548323472795095966

`p?[a(n-3)+7]` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A045367.P8548323472795095966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045367.P8548323472795095966

noncomputable section

/-- A045367: Primes congruent to {1, 2, 5} mod 7.

Offset 1, canonical program `A045367.P8548323472795095966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045367 (n : ℕ) : ℤ :=
  (A045367.P8548323472795095966.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045371.P11733381715091808452

`p?[floor(5*n/3)+1]`
-/

namespace A045371.P11733381715091808452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 3)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045371.P11733381715091808452

noncomputable section

/-- A045371: Primes congruent to {1, 2, 4} mod 5.

Offset 1, canonical program `A045371.P11733381715091808452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045371 (n : ℕ) : ℤ :=
  A045371.P11733381715091808452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045372.P9945200819669883230

`p?[a(n-2)+5]` with `a(0)=1, a(1)=2`
-/

namespace A045372.P9945200819669883230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045372.P9945200819669883230

noncomputable section

/-- A045372: Primes congruent to {1, 2} mod 5.

Offset 1, canonical program `A045372.P9945200819669883230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045372 (n : ℕ) : ℤ :=
  (A045372.P9945200819669883230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045373.P9414361432019321760

`p?[a(n-3)+7]` with `a(0)=2, a(1)=6, a(2)=7, a(3)=1, a(4)=4, a(5)=9`
-/

namespace A045373.P9414361432019321760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 7, 1, 4, 9] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045373.P9414361432019321760

noncomputable section

/-- A045373: Primes congruent to {0, 1, 2, 4} mod 7.

Offset 1, canonical program `A045373.P9414361432019321760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045373 (n : ℕ) : ℤ :=
  (A045373.P9414361432019321760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045375.P9243215768411118197

`p?[xor(1, 3*n)]`
-/

namespace A045375.P9243215768411118197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045375.P9243215768411118197

noncomputable section

/-- A045375: Primes congruent to {1, 2} mod 6.

Offset 1, canonical program `A045375.P9243215768411118197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045375 (n : ℕ) : ℤ :=
  (A045375.P9243215768411118197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045378.P7302375560797389656

`p?[a(n-2)+5]` with `a(0)=2, a(1)=4`
-/

namespace A045378.P7302375560797389656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045378.P7302375560797389656

noncomputable section

/-- A045378: Primes congruent to {2, 4} mod 5.

Offset 1, canonical program `A045378.P7302375560797389656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045378 (n : ℕ) : ℤ :=
  (A045378.P7302375560797389656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045380.P13557672855318644692

`p?[5*n+2]`
-/

namespace A045380.P13557672855318644692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045380.P13557672855318644692

noncomputable section

/-- A045380: Primes congruent to 2 mod 5.

Offset 1, canonical program `A045380.P13557672855318644692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045380 (n : ℕ) : ℤ :=
  (A045380.P13557672855318644692.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045381.P10285474894063151100

`p?[4*floor(n/3)+n]`
-/

namespace A045381.P10285474894063151100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n : ℚ) / 3⌋ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045381.P10285474894063151100

noncomputable section

/-- A045381: Primes congruent to {0, 1, 2} mod 7.

Offset 1, canonical program `A045381.P10285474894063151100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6882 terms. -/
def A045381 (n : ℕ) : ℤ :=
  A045381.P10285474894063151100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6882 terms. -/
def A045381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045382.P1003118328168572152

`p?[a(n-1)+8]` with `a(0)=2, a(1)=7`
-/

namespace A045382.P1003118328168572152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045382.P1003118328168572152

noncomputable section

/-- A045382: Primes congruent to {2, 7} mod 8.

Offset 1, canonical program `A045382.P1003118328168572152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045382 (n : ℕ) : ℤ :=
  (A045382.P1003118328168572152.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045383.P18310772843528433582

`p?[a(n-1)+7]` with `a(0)=2, a(1)=7, a(2)=9`
-/

namespace A045383.P18310772843528433582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 9] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045383.P18310772843528433582

noncomputable section

/-- A045383: Primes congruent to {0, 2} mod 7.

Offset 1, canonical program `A045383.P18310772843528433582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9435 terms. -/
def A045383 (n : ℕ) : ℤ :=
  (A045383.P18310772843528433582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9435 terms. -/
def A045383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045384.P3292180117105214428

`p?[floor(7*n/4)+1]`
-/

namespace A045384.P3292180117105214428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 4)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045384.P3292180117105214428

noncomputable section

/-- A045384: Primes congruent to {1, 2, 4, 6} mod 7.

Offset 1, canonical program `A045384.P3292180117105214428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045384 (n : ℕ) : ℤ :=
  A045384.P3292180117105214428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045385.P8387284813367984474

`p?[a(n-3)+7]` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A045385.P8387284813367984474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045385.P8387284813367984474

noncomputable section

/-- A045385: Primes congruent to {2, 4, 6} mod 7.

Offset 1, canonical program `A045385.P8387284813367984474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045385 (n : ℕ) : ℤ :=
  (A045385.P8387284813367984474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045386.P11411682606839457522

`p?[a(n-3)+7]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A045386.P11411682606839457522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045386.P11411682606839457522

noncomputable section

/-- A045386: Primes congruent to {1, 2, 4} mod 7.

Offset 1, canonical program `A045386.P11411682606839457522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045386 (n : ℕ) : ℤ :=
  (A045386.P11411682606839457522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045388.P13059181190373776702

`p?[a(n-3)+7]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A045388.P13059181190373776702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045388.P13059181190373776702

noncomputable section

/-- A045388: Primes congruent to {1, 2, 6} mod 7.

Offset 1, canonical program `A045388.P13059181190373776702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045388 (n : ℕ) : ℤ :=
  (A045388.P13059181190373776702.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045390.P16028684826565782544

`p?[a(n-1)+8]` with `a(0)=2, a(1)=1`
-/

namespace A045390.P16028684826565782544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045390.P16028684826565782544

noncomputable section

/-- A045390: Primes congruent to {1, 2} mod 8.

Offset 1, canonical program `A045390.P16028684826565782544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045390 (n : ℕ) : ℤ :=
  (A045390.P16028684826565782544.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045395.P7721872047984438201

`p?[a(n-3)+8]` with `a(0)=3, a(1)=5, a(2)=7`
-/

namespace A045395.P7721872047984438201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 7] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045395.P7721872047984438201

noncomputable section

/-- A045395: Primes congruent to {3, 5, 7} mod 8.

Offset 1, canonical program `A045395.P7721872047984438201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045395 (n : ℕ) : ℤ :=
  (A045395.P7721872047984438201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045399.P3206521024149063878

`p?[a(n-4)+7]` with `a(0)=0, a(1)=3, a(2)=5, a(3)=6`
-/

namespace A045399.P3206521024149063878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045399.P3206521024149063878

noncomputable section

/-- A045399: Primes congruent to {0, 3, 5, 6} mod 7.

Offset 1, canonical program `A045399.P3206521024149063878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7980 terms. -/
def A045399 (n : ℕ) : ℤ :=
  (A045399.P3206521024149063878.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7980 terms. -/
def A045399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045400.P3956476260167725671

`p?[floor(7*n/4)]`
-/

namespace A045400.P3956476260167725671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 4)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045400.P3956476260167725671

noncomputable section

/-- A045400: Primes congruent to {0, 1, 3, 5} mod 7.

Offset 1, canonical program `A045400.P3956476260167725671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7966 terms. -/
def A045400 (n : ℕ) : ℤ :=
  A045400.P3956476260167725671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7966 terms. -/
def A045400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045401.P14312674116841472093

`p?[ceil(7*n/3)]`
-/

namespace A045401.P14312674116841472093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((n : ℚ) / 3)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045401.P14312674116841472093

noncomputable section

/-- A045401: Primes congruent to {0, 3, 5} mod 7.

Offset 1, canonical program `A045401.P14312674116841472093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6915 terms. -/
def A045401 (n : ℕ) : ℤ :=
  A045401.P14312674116841472093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6915 terms. -/
def A045401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045402.P6716759835119442044

`p?[a(n-5)+7]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A045402.P6716759835119442044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 5, 6] fun n f1 =>
  f1 (n - 5) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045402.P6716759835119442044

noncomputable section

/-- A045402: Primes congruent to {1, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A045402.P6716759835119442044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045402 (n : ℕ) : ℤ :=
  (A045402.P6716759835119442044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045403.P5897622395383599295

`p?[floor((8*n+1)/5)]`
-/

namespace A045403.P5897622395383599295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * n + 1 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045403.P5897622395383599295

noncomputable section

/-- A045403: Primes congruent to {1, 3, 5} mod 8.

Offset 1, canonical program `A045403.P5897622395383599295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045403 (n : ℕ) : ℤ :=
  A045403.P5897622395383599295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045404.P2338934040506893218

`p?[a(n-4)+7]` with `a(0)=3, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A045404.P2338934040506893218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045404.P2338934040506893218

noncomputable section

/-- A045404: Primes congruent to {3, 4, 5, 6} mod 7.

Offset 1, canonical program `A045404.P2338934040506893218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045404 (n : ℕ) : ℤ :=
  (A045404.P2338934040506893218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045408.P12723487234980853055

`p?[a(n-4)+7]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5`
-/

namespace A045408.P12723487234980853055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 5] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045408.P12723487234980853055

noncomputable section

/-- A045408: Primes congruent to {1, 3, 4, 5} mod 7.

Offset 1, canonical program `A045408.P12723487234980853055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045408 (n : ℕ) : ℤ :=
  (A045408.P12723487234980853055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045409.P10973813303333220082

`p?[a(n-3)+7]` with `a(0)=3, a(1)=4, a(2)=5`
-/

namespace A045409.P10973813303333220082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 5] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045409.P10973813303333220082

noncomputable section

/-- A045409: Primes congruent to {3, 4, 5} mod 7.

Offset 1, canonical program `A045409.P10973813303333220082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045409 (n : ℕ) : ℤ :=
  (A045409.P10973813303333220082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045410.P3893065746671623656

`p?[or(1, 3*n-1)]`
-/

namespace A045410.P3893065746671623656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((3 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045410.P3893065746671623656

noncomputable section

/-- A045410: Primes congruent to {3, 5} mod 6.

Offset 1, canonical program `A045410.P3893065746671623656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045410 (n : ℕ) : ℤ :=
  A045410.P3893065746671623656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045411.P11998876206122543832

`p?[a(n-4)+7]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=6`
-/

namespace A045411.P11998876206122543832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045411.P11998876206122543832

noncomputable section

/-- A045411: Primes congruent to {1, 3, 5, 6} mod 7.

Offset 1, canonical program `A045411.P11998876206122543832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045411 (n : ℕ) : ℤ :=
  (A045411.P11998876206122543832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045414.P1788846652987021577

`p?[ceil(5*n/2)]`
-/

namespace A045414.P1788846652987021577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045414.P1788846652987021577

noncomputable section

/-- A045414: Primes congruent to {0, 3} mod 5.

Offset 1, canonical program `A045414.P1788846652987021577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5521 terms. -/
def A045414 (n : ℕ) : ℤ :=
  A045414.P1788846652987021577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5521 terms. -/
def A045414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045415.P10655368278432645490

`p?[a(n-3)+7]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A045415.P10655368278432645490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045415.P10655368278432645490

noncomputable section

/-- A045415: Primes congruent to {1, 3, 5} mod 7.

Offset 1, canonical program `A045415.P10655368278432645490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045415 (n : ℕ) : ℤ :=
  (A045415.P10655368278432645490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045416.P9358026932021147899

`p?[a(n-2)+7]` with `a(0)=3, a(1)=5`
-/

namespace A045416.P9358026932021147899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045416.P9358026932021147899

noncomputable section

/-- A045416: Primes congruent to {3, 5} mod 7.

Offset 1, canonical program `A045416.P9358026932021147899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045416 (n : ℕ) : ℤ :=
  (A045416.P9358026932021147899.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045418.P4556289289917445752

`p?[a(n-4)+7]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A045418.P4556289289917445752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045418.P4556289289917445752

noncomputable section

/-- A045418: Primes congruent to {0, 3, 4, 6} mod 7.

Offset 1, canonical program `A045418.P4556289289917445752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7956 terms. -/
def A045418 (n : ℕ) : ℤ :=
  (A045418.P4556289289917445752.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7956 terms. -/
def A045418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045419.P10197438057825114288

`p?[floor((8*n+7)/5)]`
-/

namespace A045419.P10197438057825114288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 * n + 7 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045419.P10197438057825114288

noncomputable section

/-- A045419: Primes congruent to {1, 3, 7} mod 8.

Offset 1, canonical program `A045419.P10197438057825114288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045419 (n : ℕ) : ℤ :=
  A045419.P10197438057825114288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045420.P16115474253982141672

`p?[a(n-4)+7]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A045420.P16115474253982141672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 4] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045420.P16115474253982141672

noncomputable section

/-- A045420: Primes congruent to {0, 1, 3, 4} mod 7.

Offset 1, canonical program `A045420.P16115474253982141672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7942 terms. -/
def A045420 (n : ℕ) : ℤ :=
  (A045420.P16115474253982141672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7942 terms. -/
def A045420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045421.P3203693625388626806

`p?[a(n-3)+7]` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A045421.P3203693625388626806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 4] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045421.P3203693625388626806

noncomputable section

/-- A045421: Primes congruent to {0, 3, 4} mod 7.

Offset 1, canonical program `A045421.P3203693625388626806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. -/
def A045421 (n : ℕ) : ℤ :=
  (A045421.P3203693625388626806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6903 terms. -/
def A045421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045423.P3813189958740387075

`p?[a(n-3)+7]` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A045423.P3813189958740387075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045423.P3813189958740387075

noncomputable section

/-- A045423: Primes congruent to {0, 3, 6} mod 7.

Offset 1, canonical program `A045423.P3813189958740387075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6908 terms. -/
def A045423 (n : ℕ) : ℤ :=
  (A045423.P3813189958740387075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6908 terms. -/
def A045423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045424.P1819595906686148591

`p?[a(n-3)+7]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A045424.P1819595906686148591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045424.P1819595906686148591

noncomputable section

/-- A045424: Primes congruent to {0, 1, 3} mod 7.

Offset 1, canonical program `A045424.P1819595906686148591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6897 terms. -/
def A045424 (n : ℕ) : ℤ :=
  (A045424.P1819595906686148591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6897 terms. -/
def A045424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045425.P16613585973053834965

`p?[a(n-2)+7]` with `a(0)=3, a(1)=10, a(2)=7`
-/

namespace A045425.P16613585973053834965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10, 7] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045425.P16613585973053834965

noncomputable section

/-- A045425: Primes congruent to {0, 3} mod 7.

Offset 1, canonical program `A045425.P16613585973053834965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A045425 (n : ℕ) : ℤ :=
  (A045425.P16613585973053834965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5005 terms. -/
def A045425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045426.P3979747812866442004

`p?[a(n-4)+7]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A045426.P3979747812866442004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045426.P3979747812866442004

noncomputable section

/-- A045426: Primes congruent to {1, 3, 4, 6} mod 7.

Offset 1, canonical program `A045426.P3979747812866442004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045426 (n : ℕ) : ℤ :=
  (A045426.P3979747812866442004.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045427.P603247744062735010

`p?[a(n-3)+7]` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A045427.P603247744062735010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045427.P603247744062735010

noncomputable section

/-- A045427: Primes congruent to {3, 4, 6} mod 7.

Offset 1, canonical program `A045427.P603247744062735010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045427 (n : ℕ) : ℤ :=
  (A045427.P603247744062735010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045428.P15442879669614154477

`p?[round(5*n/3)+1]`
-/

namespace A045428.P15442879669614154477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((n : ℚ) / 3)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045428.P15442879669614154477

noncomputable section

/-- A045428: Primes congruent to {1, 3, 4} mod 5.

Offset 1, canonical program `A045428.P15442879669614154477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045428 (n : ℕ) : ℤ :=
  A045428.P15442879669614154477.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045429.P13123593031557052337

`p?[a(n-2)+5]` with `a(0)=1, a(1)=3`
-/

namespace A045429.P13123593031557052337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045429.P13123593031557052337

noncomputable section

/-- A045429: Primes congruent to {1, 3} mod 5.

Offset 1, canonical program `A045429.P13123593031557052337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045429 (n : ℕ) : ℤ :=
  (A045429.P13123593031557052337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045431.P917094724510541085

`p?[a(n-3)+7]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A045431.P917094724510541085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045431.P917094724510541085

noncomputable section

/-- A045431: Primes congruent to {1, 3, 4} mod 7.

Offset 1, canonical program `A045431.P917094724510541085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045431 (n : ℕ) : ℤ :=
  (A045431.P917094724510541085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045432.P5046197234096038513

`p?[or(1, 7*n+3)]`
-/

namespace A045432.P5046197234096038513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045432.P5046197234096038513

noncomputable section

/-- A045432: Primes congruent to {3, 4} mod 7.

Offset 1, canonical program `A045432.P5046197234096038513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045432 (n : ℕ) : ℤ :=
  (A045432.P5046197234096038513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045433.P4831852985344999509

`p?[a(n-3)+7]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A045433.P4831852985344999509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045433.P4831852985344999509

noncomputable section

/-- A045433: Primes congruent to {1, 3, 6} mod 7.

Offset 1, canonical program `A045433.P4831852985344999509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045433 (n : ℕ) : ℤ :=
  (A045433.P4831852985344999509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045434.P17871418179106170878

`p?[a(n-2)+7]` with `a(0)=3, a(1)=6`
-/

namespace A045434.P17871418179106170878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045434.P17871418179106170878

noncomputable section

/-- A045434: Primes congruent to {3, 6} mod 7.

Offset 1, canonical program `A045434.P17871418179106170878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045434 (n : ℕ) : ℤ :=
  (A045434.P17871418179106170878.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045435.P6592625135057840072

`p?[or(1, 5*n+3)]`
-/

namespace A045435.P6592625135057840072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045435.P6592625135057840072

noncomputable section

/-- A045435: Primes congruent to {3, 4} mod 5.

Offset 1, canonical program `A045435.P6592625135057840072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045435 (n : ℕ) : ℤ :=
  (A045435.P6592625135057840072.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045441.P2771389372555859978

`p?[a(n-3)+7]` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A045441.P2771389372555859978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 5] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045441.P2771389372555859978

noncomputable section

/-- A045441: Primes congruent to {0, 4, 5} mod 7.

Offset 1, canonical program `A045441.P2771389372555859978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6911 terms. -/
def A045441 (n : ℕ) : ℤ :=
  (A045441.P2771389372555859978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6911 terms. -/
def A045441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045442.P4869329039055737044

`p?[a(n-3)+8]` with `a(0)=1, a(1)=5, a(2)=7`
-/

namespace A045442.P4869329039055737044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 7] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045442.P4869329039055737044

noncomputable section

/-- A045442: Primes congruent to {1, 5, 7} mod 8.

Offset 1, canonical program `A045442.P4869329039055737044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045442 (n : ℕ) : ℤ :=
  (A045442.P4869329039055737044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045443.P2542425746791850043

`p?[3*round(n/4)+n]`
-/

namespace A045443.P2542425746791850043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((n : ℚ) / 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045443.P2542425746791850043

noncomputable section

/-- A045443: Primes congruent to {0, 1, 5, 6} mod 7.

Offset 1, canonical program `A045443.P2542425746791850043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7967 terms. -/
def A045443 (n : ℕ) : ℤ :=
  A045443.P2542425746791850043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7967 terms. -/
def A045443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045444.P2324794396399335647

`p?[4*ceil(n/3)+n]`
-/

namespace A045444.P2324794396399335647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌈(n : ℚ) / 3⌉ + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045444.P2324794396399335647

noncomputable section

/-- A045444: Primes congruent to {0, 5, 6} mod 7.

Offset 1, canonical program `A045444.P2324794396399335647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A045444 (n : ℕ) : ℤ :=
  A045444.P2324794396399335647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. -/
def A045444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045446.P8652472118922088523

`p?[a(n-3)+7]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A045446.P8652472118922088523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045446.P8652472118922088523

noncomputable section

/-- A045446: Primes congruent to {0, 1, 5} mod 7.

Offset 1, canonical program `A045446.P8652472118922088523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6905 terms. -/
def A045446 (n : ℕ) : ℤ :=
  (A045446.P8652472118922088523.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6905 terms. -/
def A045446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045447.P11335890847617652961

`p?[a(n-2)+7]` with `a(0)=0, a(1)=5`
-/

namespace A045447.P11335890847617652961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045447.P11335890847617652961

noncomputable section

/-- A045447: Primes congruent to {0, 5} mod 7.

Offset 1, canonical program `A045447.P11335890847617652961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A045447 (n : ℕ) : ℤ :=
  (A045447.P11335890847617652961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. -/
def A045447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045448.P14804397343011090116

`p?[a(n-4)+7]` with `a(0)=1, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A045448.P14804397343011090116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5, 6] fun n f1 =>
  f1 (n - 4) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045448.P14804397343011090116

noncomputable section

/-- A045448: Primes congruent to {1, 4, 5, 6} mod 7.

Offset 1, canonical program `A045448.P14804397343011090116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045448 (n : ℕ) : ℤ :=
  (A045448.P14804397343011090116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045449.P5265608845256245410

`p?[a(n-3)+7]` with `a(0)=4, a(1)=5, a(2)=6`
-/

namespace A045449.P5265608845256245410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045449.P5265608845256245410

noncomputable section

/-- A045449: Primes congruent to {4, 5, 6} mod 7.

Offset 1, canonical program `A045449.P5265608845256245410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045449 (n : ℕ) : ℤ :=
  (A045449.P5265608845256245410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045451.P14993889574314152020

`p?[a(n-3)+7]` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A045451.P14993889574314152020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 5] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045451.P14993889574314152020

noncomputable section

/-- A045451: Primes congruent to {1, 4, 5} mod 7.

Offset 1, canonical program `A045451.P14993889574314152020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045451 (n : ℕ) : ℤ :=
  (A045451.P14993889574314152020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045453.P8226086508845477348

`p?[or(1, 5*n)]`
-/

namespace A045453.P8226086508845477348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045453.P8226086508845477348

noncomputable section

/-- A045453: Primes congruent to {0, 1} mod 5.

Offset 1, canonical program `A045453.P8226086508845477348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045453 (n : ℕ) : ℤ :=
  (A045453.P8226086508845477348.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045454.P6464486469092698215

`p?[a(n-3)+7]` with `a(0)=1, a(1)=5, a(2)=6`
-/

namespace A045454.P6464486469092698215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045454.P6464486469092698215

noncomputable section

/-- A045454: Primes congruent to {1, 5, 6} mod 7.

Offset 1, canonical program `A045454.P6464486469092698215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045454 (n : ℕ) : ℤ :=
  (A045454.P6464486469092698215.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045455.P18014272807448646341

`p?[or(1, 7*n+5)]`
-/

namespace A045455.P18014272807448646341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (7 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045455.P18014272807448646341

noncomputable section

/-- A045455: Primes congruent to {5, 6} mod 7.

Offset 1, canonical program `A045455.P18014272807448646341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045455 (n : ℕ) : ℤ :=
  (A045455.P18014272807448646341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045457.P16665131764292938731

`p?[a(n-1)+5]` with `a(0)=5, a(1)=4`
-/

namespace A045457.P16665131764292938731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045457.P16665131764292938731

noncomputable section

/-- A045457: Primes congruent to {0, 4} mod 5.

Offset 1, canonical program `A045457.P16665131764292938731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045457 (n : ℕ) : ℤ :=
  (A045457.P16665131764292938731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045461.P3523084382840932021

`p?[a(n-2)+7]` with `a(0)=1, a(1)=4, a(2)=7, a(3)=1, a(4)=4`
-/

namespace A045461.P3523084382840932021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 7, 1, 4] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045461.P3523084382840932021

noncomputable section

/-- A045461: Primes congruent to {0, 1, 4} mod 7.

Offset 1, canonical program `A045461.P3523084382840932021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A045461 (n : ℕ) : ℤ :=
  (A045461.P3523084382840932021.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9983 terms. -/
def A045461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045462.P6786257225361276851

`p?[a(n-1)+7]` with `a(0)=7, a(1)=4`
-/

namespace A045462.P6786257225361276851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045462.P6786257225361276851

noncomputable section

/-- A045462: Primes congruent to {0, 4} mod 7.

Offset 1, canonical program `A045462.P6786257225361276851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9422 terms. -/
def A045462 (n : ℕ) : ℤ :=
  (A045462.P6786257225361276851.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9422 terms. -/
def A045462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045463.P5606766861568705092

`p?[7*n-a(n-1)]` with `a(0)=7, a(1)=1`
-/

namespace A045463.P5606766861568705092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  (7 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045463.P5606766861568705092

noncomputable section

/-- A045463: Primes congruent to {0, 1, 6} mod 7.

Offset 1, canonical program `A045463.P5606766861568705092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045463 (n : ℕ) : ℤ :=
  A045463.P5606766861568705092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045464.P2558349737237634099

`p?[or(1, 7*n-1)]`
-/

namespace A045464.P2558349737237634099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((7 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045464.P2558349737237634099

noncomputable section

/-- A045464: Primes congruent to {0, 6} mod 7.

Offset 1, canonical program `A045464.P2558349737237634099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9444 terms. -/
def A045464 (n : ℕ) : ℤ :=
  A045464.P2558349737237634099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9444 terms. -/
def A045464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045465.P8796123061652587765

`p?[or(1, 7*n)]`
-/

namespace A045465.P8796123061652587765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (7 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045465.P8796123061652587765

noncomputable section

/-- A045465: Primes congruent to {0, 1} mod 7.

Offset 1, canonical program `A045465.P8796123061652587765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9406 terms. -/
def A045465 (n : ℕ) : ℤ :=
  (A045465.P8796123061652587765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9406 terms. -/
def A045465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045466.P829937196715883891

`p?[floor((7*n+5)/3)]`
-/

namespace A045466.P829937196715883891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * n + 5 : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A045466.P829937196715883891

noncomputable section

/-- A045466: Primes congruent to {1, 4, 6} mod 7.

Offset 1, canonical program `A045466.P829937196715883891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045466 (n : ℕ) : ℤ :=
  A045466.P829937196715883891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045467.P10591137358749887354

`p?[a(n-2)+7]` with `a(0)=4, a(1)=6`
-/

namespace A045467.P10591137358749887354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045467.P10591137358749887354

noncomputable section

/-- A045467: Primes congruent to {4, 6} mod 7.

Offset 1, canonical program `A045467.P10591137358749887354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045467 (n : ℕ) : ℤ :=
  (A045467.P10591137358749887354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045468.P1693416545018853606

`p?[a(n-2)+5]` with `a(0)=1, a(1)=4`
-/

namespace A045468.P1693416545018853606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045468.P1693416545018853606

noncomputable section

/-- A045468: Primes congruent to {1, 4} mod 5.

Offset 1, canonical program `A045468.P1693416545018853606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045468 (n : ℕ) : ℤ :=
  (A045468.P1693416545018853606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045472.P11402682961701220185

`p?[a(n-2)+7]` with `a(0)=1, a(1)=6`
-/

namespace A045472.P11402682961701220185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A045472.P11402682961701220185

noncomputable section

/-- A045472: Primes congruent to {1, 6} mod 7.

Offset 1, canonical program `A045472.P11402682961701220185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045472 (n : ℕ) : ℤ :=
  (A045472.P11402682961701220185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045503.P14409621436097541674

`∑{digits}[n, #^#]`
-/

namespace A045503.P14409621436097541674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ x).sum

end

end A045503.P14409621436097541674

noncomputable section

/-- A045503: If decimal expansion of n is ab...d, a(n) = a^a + b^b +...+ d^d.

Offset 0, canonical program `A045503.P14409621436097541674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045503 (n : ℕ) : ℤ :=
  (A045503.P14409621436097541674.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045512.P17427880865680227867

`∑{digits}[n, lcm(#, (-#)^#)]`
-/

namespace A045512.P17427880865680227867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.lcm (x : ℤ) ((-(x : ℤ)) ^ x)).sum

end

end A045512.P17427880865680227867

noncomputable section

/-- A045512: If decimal expansion of n is ab...d, a(n) = a^a + b^b + ... + d^d (ignoring any 0's).

Offset 0, canonical program `A045512.P17427880865680227867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045512 (n : ℕ) : ℤ :=
  (A045512.P17427880865680227867.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045534.P6417877156370328133

`floor(7/n)*a(n-1)` with `a(0)=1, a(1)=4, a(2)=8`
-/

namespace A045534.P6417877156370328133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  ⌊7 / (n : ℚ)⌋ * a (n - 1)

end

end A045534.P6417877156370328133

noncomputable section

/-- A045534: Number of squarefree self-avoiding walks in 2 dimensions.

Offset 0, canonical program `A045534.P6417877156370328133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045534 (n : ℕ) : ℤ :=
  A045534.P6417877156370328133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045543.P14061756675038654160

`4^n*C(n+5, 5)`
-/

namespace A045543.P14061756675038654160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n * Nat.choose (n + 5) 5

end

end A045543.P14061756675038654160

noncomputable section

/-- A045543: 6-fold convolution of A000302 (powers of 4); expansion of 1/(1-4*x)^6.

Offset 0, canonical program `A045543.P14061756675038654160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A045543 (n : ℕ) : ℤ :=
  (A045543.P14061756675038654160.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A045543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045661.P13832079266207768772

`∏{d}[n+1, (n+1)/#+#]`
-/

namespace A045661.P13832079266207768772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))

end

end A045661.P13832079266207768772

noncomputable section

/-- A045661: a(n) = Product_{d|n} (n/d + d).

Offset 1, canonical program `A045661.P13832079266207768772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A045661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045661.P13832079266207768772.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A045661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045747.P9663379645633747593

`∑{e}[n+1, #]+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A045747.P9663379645633747593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + a (n - 4)

end

end A045747.P9663379645633747593

noncomputable section

/-- A045747: Number of prime factors of n!!!! (A007662), with multiplicity.

Offset 1, canonical program `A045747.P9663379645633747593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5328 terms. -/
def A045747 (n : ℕ) : ℤ :=
  (A045747.P9663379645633747593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5328 terms. -/
def A045747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045766.P10793017351796934949

`∑{e}[n+1, #]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A045766.P10793017351796934949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + a (n - 2)

end

end A045766.P10793017351796934949

noncomputable section

/-- A045766: Number of prime factors of double factorials n!! (A006882), with multiplicity.

Offset 1, canonical program `A045766.P10793017351796934949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3834 terms. -/
def A045766 (n : ℕ) : ℤ :=
  (A045766.P10793017351796934949.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3834 terms. -/
def A045766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045767.P716574645843820968

`∑{e}[n+1, #]+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A045767.P716574645843820968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + a (n - 3)

end

end A045767.P716574645843820968

noncomputable section

/-- A045767: Number of prime factors of triple factorials n!!! (A007661), with multiplicity.

Offset 1, canonical program `A045767.P716574645843820968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4742 terms. -/
def A045767 (n : ℕ) : ℤ :=
  (A045767.P716574645843820968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4742 terms. -/
def A045767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045797.P9904687983047091000

`record[or(10, n)-9]+n`
-/

namespace A045797.P9904687983047091000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 10 n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A045797.P9904687983047091000

noncomputable section

/-- A045797: Evenish numbers (prime to 10 and 10's digit is even).

Offset 1, canonical program `A045797.P9904687983047091000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045797 (n : ℕ) : ℤ :=
  A045797.P9904687983047091000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045798.P823104922367124387

`record[or(10, n)+1]+n`
-/

namespace A045798.P823104922367124387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 10 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A045798.P823104922367124387

noncomputable section

/-- A045798: Oddish numbers (prime to 10 and 10's digit is odd).

Offset 1, canonical program `A045798.P823104922367124387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045798 (n : ℕ) : ℤ :=
  (A045798.P823104922367124387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045823.P1738146074447716157

`∑{d}[Δ[n²], #^3]`
-/

namespace A045823.P1738146074447716157
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 3

end

end A045823.P1738146074447716157

noncomputable section

/-- A045823: a(n) = sigma_3(2*n+1).

Offset 0, canonical program `A045823.P1738146074447716157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045823 (n : ℕ) : ℤ :=
  (A045823.P1738146074447716157.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045891.P14011693326007966013

`round((n+4)*2^(n-3))`
-/

namespace A045891.P14011693326007966013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))

end

end A045891.P14011693326007966013

noncomputable section

/-- A045891: First differences of A045623.

Offset 0, canonical program `A045891.P14011693326007966013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A045891 (n : ℕ) : ℤ :=
  A045891.P14011693326007966013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A045891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045925.P2973697856270922

`n*Δ[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A045925.P2973697856270922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A045925.P2973697856270922

noncomputable section

/-- A045925: a(n) = n*Fibonacci(n).

Offset 0, canonical program `A045925.P2973697856270922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A045925 (n : ℕ) : ℤ :=
  A045925.P2973697856270922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A045925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046162.P5432675134339952397

`gcd(n², C(n², 3))`
-/

namespace A046162.P5432675134339952397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (Nat.choose (n ^ 2) 3)

end

end A046162.P5432675134339952397

noncomputable section

/-- A046162: Reduced numerators of (n-1)^2/(n^2 + n + 1).

Offset 1, canonical program `A046162.P5432675134339952397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046162 (n : ℕ) : ℤ :=
  (A046162.P5432675134339952397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046631.P15516087216477128106

`3*a(n-1)-2*xor(1, n%3)` with `a(0)=1`
-/

namespace A046631.P15516087216477128106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (2 * Nat.xor 1 (n % 3) : ℤ)

end

end A046631.P15516087216477128106

noncomputable section

/-- A046631: Number of cubic residues mod 3^n.

Offset 0, canonical program `A046631.P15516087216477128106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A046631 (n : ℕ) : ℤ :=
  A046631.P15516087216477128106.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A046631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046633.P12442808059030733403

`5*a(n-1)+a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=5, a(2)=21, a(3)=101`
-/

namespace A046633.P12442808059030733403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 21, 101] fun n a =>
  5 * a (n - 1) + a (n - 3) - 5 * a (n - 4)

end

end A046633.P12442808059030733403

noncomputable section

/-- A046633: Number of cubic residues mod 5^n.

Offset 0, canonical program `A046633.P12442808059030733403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A046633 (n : ℕ) : ℤ :=
  A046633.P12442808059030733403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A046633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046699.P121068589245997773

`floor(a(n-a(n-1))+(a(n-1)+1)/2)` with `a(0)=1, a(1)=1`
-/

namespace A046699.P121068589245997773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a ((n : ℤ) - a (n - 1)).toNat : ℚ) + (a (n - 1) + 1 : ℚ) / 2⌋

end

end A046699.P121068589245997773

noncomputable section

/-- A046699: a(1) = a(2) = 1, a(n) = a(n - a(n-1)) + a(n-1 - a(n-2)) if n > 2.

Offset 1, canonical program `A046699.P121068589245997773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046699 (n : ℕ) : ℤ :=
  A046699.P121068589245997773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046701.P6470220685330996812

`a(n-a(n-1))+a(n-a(n-3)-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A046701.P6470220685330996812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - a (n - 1)) + a ((n : ℤ) - (a (n - 3) : ℤ) - 1).toNat

end

end A046701.P6470220685330996812

noncomputable section

/-- A046701: a(1) = a(2) = a(3) = 1, a(n) = a(n - a(n-1)) + a(n-1 - a(n-3)) (n > 3).

Offset 1, canonical program `A046701.P6470220685330996812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046701 (n : ℕ) : ℤ :=
  (A046701.P6470220685330996812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046897.P16845607147500086519

`∑{d}[n+1, #%lcm(4, #)]`
-/

namespace A046897.P16845607147500086519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Nat.lcm 4 d

end

end A046897.P16845607147500086519

noncomputable section

/-- A046897: Sum of divisors of n that are not divisible by 4.

Offset 1, canonical program `A046897.P16845607147500086519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046897 (n : ℕ) : ℤ :=
  (A046897.P16845607147500086519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046898.P13104138769060544553

`∑[∑{d}[n+1, #%lcm(4, #)]]`
-/

namespace A046898.P13104138769060544553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % Nat.lcm 4 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046898.P13104138769060544553

noncomputable section

/-- A046898: Partial sums of A046897.

Offset 1, canonical program `A046898.P13104138769060544553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046898 (n : ℕ) : ℤ :=
  (A046898.P13104138769060544553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046913.P11129583654018100697

`∑{d}[n+1, #%lcm(3, #)]`
-/

namespace A046913.P11129583654018100697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Nat.lcm 3 d

end

end A046913.P11129583654018100697

noncomputable section

/-- A046913: Sum of divisors of n not congruent to 0 mod 3.

Offset 1, canonical program `A046913.P11129583654018100697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046913 (n : ℕ) : ℤ :=
  (A046913.P11129583654018100697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046915.P17110626662330877457

`∑[2^n]*∑[5^n]`
-/

namespace A046915.P17110626662330877457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A046915.P17110626662330877457

noncomputable section

/-- A046915: Sum of divisors of 10^n.

Offset 0, canonical program `A046915.P17110626662330877457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A046915 (n : ℕ) : ℤ :=
  (A046915.P17110626662330877457.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A046915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046978.P71107966793699888

`round(sin(n*atan(1)))`
-/

namespace A046978.P71107966793699888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((n : ℝ) * Real.arctan (1 : ℝ)))

end

end A046978.P71107966793699888

noncomputable section

/-- A046978: Numerators of Taylor series for exp(x)*sin(x).

Offset 0, canonical program `A046978.P71107966793699888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046978 (n : ℕ) : ℤ :=
  A046978.P71107966793699888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046980.P12330990393226196098

`round(cos(n*atan(1)))`
-/

namespace A046980.P12330990393226196098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((n : ℝ) * Real.arctan (1 : ℝ)))

end

end A046980.P12330990393226196098

noncomputable section

/-- A046980: Numerators of Taylor series for exp(x)*cos(x).

Offset 0, canonical program `A046980.P12330990393226196098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046980 (n : ℕ) : ℤ :=
  A046980.P12330990393226196098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046992.P14793221918147079562

`∑[∑[∑{p}[n+1, val(#, n+1)]]]`
-/

namespace A046992.P14793221918147079562
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.valuation p (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P14793221918147079562

noncomputable section

/-- A046992: a(n) = Sum_{k=1..n} pi(k) (cf. A000720).

Offset 1, canonical program `A046992.P14793221918147079562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046992 (n : ℕ) : ℤ :=
  (A046992.P14793221918147079562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047085.P1439326172283854598

`((4*n-3)*a(n-1)-(2*n-5)*a(n-2)+a(n-3)-(n-3)*a(n-4))/n` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A047085.P1439326172283854598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 9] fun n a =>
  (((4 * n : ℤ) - 3 : ℚ) * a (n - 1) - ((2 * n : ℤ) - 5 : ℚ) * a (n - 2) + (a (n - 3) - ((n : ℤ) - 3 : ℚ) * a (n - 4))) / (n : ℚ)

end

end A047085.P1439326172283854598

noncomputable section

/-- A047085: a(n) = T(2*n, n), array T as in A047080.

Offset 0, canonical program `A047085.P1439326172283854598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A047085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A047085.P1439326172283854598.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A047085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047204.P9685075898767516946

`∑[gcd(2, n)²]-1`
-/

namespace A047204.P9685075898767516946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047204.P9685075898767516946

noncomputable section

/-- A047204: Numbers that are congruent to {3, 4} mod 5.

Offset 1, canonical program `A047204.P9685075898767516946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047204 (n : ℕ) : ℤ :=
  A047204.P9685075898767516946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047221.P1532680198306689054

`∑[gcd(2, n)²]-2`
-/

namespace A047221.P1532680198306689054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A047221.P1532680198306689054

noncomputable section

/-- A047221: Numbers that are congruent to {2, 3} mod 5.

Offset 1, canonical program `A047221.P1532680198306689054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047221 (n : ℕ) : ℤ :=
  A047221.P1532680198306689054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047230.P7947870410627615105

`xor(1, 3*n+2)`
-/

namespace A047230.P7947870410627615105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n + 2)

end

end A047230.P7947870410627615105

noncomputable section

/-- A047230: Numbers that are congruent to {3, 4} mod 6.

Offset 1, canonical program `A047230.P7947870410627615105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047230 (n : ℕ) : ℤ :=
  (A047230.P7947870410627615105.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047248.P11378365063847660584

`ceil(6*n/5)`
-/

namespace A047248.P11378365063847660584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 * ((n : ℚ) / 5)⌉

end

end A047248.P11378365063847660584

noncomputable section

/-- A047248: Numbers that are congruent to {0, 2, 3, 4, 5} (mod 6).

Offset 1, canonical program `A047248.P11378365063847660584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047248 (n : ℕ) : ℤ :=
  A047248.P11378365063847660584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047253.P4561467761092434612

`lt[n, lcm(6, n)]`
-/

namespace A047253.P4561467761092434612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047253.P4561467761092434612

noncomputable section

/-- A047253: Numbers that are congruent to {1, 2, 3, 4, 5} mod 6.

Offset 1, canonical program `A047253.P4561467761092434612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047253 (n : ℕ) : ℤ :=
  (A047253.P4561467761092434612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047256.P16489505909603463795

`eq[0, val(n+2, 6)]`
-/

namespace A047256.P16489505909603463795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A047256.P16489505909603463795

noncomputable section

/-- A047256: Numbers that are congruent to {0, 1, 2, 3, 5} mod 6.

Offset 1, canonical program `A047256.P16489505909603463795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047256 (n : ℕ) : ℤ :=
  (A047256.P16489505909603463795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047264.P3404533912891200745

`xor(1, 3*n+1)`
-/

namespace A047264.P3404533912891200745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n + 1)

end

end A047264.P3404533912891200745

noncomputable section

/-- A047264: Numbers that are congruent to 0 or 5 mod 6.

Offset 1, canonical program `A047264.P3404533912891200745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047264 (n : ℕ) : ℤ :=
  (A047264.P3404533912891200745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047274.P2560831960516894838

`7+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A047274.P2560831960516894838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  7 + a (n - 2)

end

end A047274.P2560831960516894838

noncomputable section

/-- A047274: Numbers that are congruent to {0, 1} mod 7.

Offset 1, canonical program `A047274.P2560831960516894838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047274 (n : ℕ) : ℤ :=
  (A047274.P2560831960516894838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047276.P9306124217950747511

`a(n-2)+7` with `a(0)=2, a(1)=6`
-/

namespace A047276.P9306124217950747511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 2) + 7

end

end A047276.P9306124217950747511

noncomputable section

/-- A047276: Numbers that are congruent to {2, 6} mod 7.

Offset 1, canonical program `A047276.P9306124217950747511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047276 (n : ℕ) : ℤ :=
  (A047276.P9306124217950747511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047278.P7475150621032027988

`∑[xor(1, n%3)]+n`
-/

namespace A047278.P7475150621032027988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A047278.P7475150621032027988

noncomputable section

/-- A047278: Numbers that are congruent to {1, 2, 6} mod 7.

Offset 1, canonical program `A047278.P7475150621032027988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047278 (n : ℕ) : ℤ :=
  (A047278.P7475150621032027988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047280.P9672479361568097411

`a(n-2)+7` with `a(0)=3, a(1)=6`
-/

namespace A047280.P9672479361568097411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6] fun n a =>
  a (n - 2) + 7

end

end A047280.P9672479361568097411

noncomputable section

/-- A047280: Numbers that are congruent to {3, 6} mod 7.

Offset 1, canonical program `A047280.P9672479361568097411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047280 (n : ℕ) : ℤ :=
  (A047280.P9672479361568097411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047295.P16891616264724125785

`∑[floor(n%5/3)]+n`
-/

namespace A047295.P16891616264724125785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 5 : ℕ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A047295.P16891616264724125785

noncomputable section

/-- A047295: Numbers that are congruent to {0, 1, 2, 4, 6} mod 7.

Offset 1, canonical program `A047295.P16891616264724125785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047295 (n : ℕ) : ℤ :=
  A047295.P16891616264724125785.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047299.P1626073966181830394

`round(7*n/5)`
-/

namespace A047299.P1626073966181830394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 * ((n : ℚ) / 5))

end

end A047299.P1626073966181830394

noncomputable section

/-- A047299: Numbers that are congruent to {0, 1, 3, 4, 6} mod 7.

Offset 1, canonical program `A047299.P1626073966181830394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047299 (n : ℕ) : ℤ :=
  A047299.P1626073966181830394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047301.P10983125777399651879

`round((7*n+1)/5)`
-/

namespace A047301.P10983125777399651879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 * n + 1 : ℚ) / 5)

end

end A047301.P10983125777399651879

noncomputable section

/-- A047301: Numbers that are congruent to {0, 2, 3, 4, 6} mod 7.

Offset 1, canonical program `A047301.P10983125777399651879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047301 (n : ℕ) : ℤ :=
  A047301.P10983125777399651879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047302.P4308588998934236409

`∑[gcd(2, ∑[n]%5)]-1`
-/

namespace A047302.P4308588998934236409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((∑ j ∈ Finset.range (n + 1), f2 j) % 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047302.P4308588998934236409

noncomputable section

/-- A047302: Numbers that are congruent to {1, 2, 3, 4, 6} mod 7.

Offset 1, canonical program `A047302.P4308588998934236409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047302 (n : ℕ) : ℤ :=
  A047302.P4308588998934236409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047304.P15582409696850660805

`lt[n, lcm(7, n)]`
-/

namespace A047304.P15582409696850660805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047304.P15582409696850660805

noncomputable section

/-- A047304: Numbers not divisible by 7.

Offset 1, canonical program `A047304.P15582409696850660805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047304 (n : ℕ) : ℤ :=
  (A047304.P15582409696850660805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047305.P15217199837314033129

`lt[n, n*n%7]`
-/

namespace A047305.P15217199837314033129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047305.P15217199837314033129

noncomputable section

/-- A047305: Numbers that are congruent to {2, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A047305.P15217199837314033129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047305 (n : ℕ) : ℤ :=
  (A047305.P15217199837314033129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047308.P17500574212671478449

`2*ceil(n/5)+n`
-/

namespace A047308.P17500574212671478449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℚ) / 5⌉ + (n : ℤ)

end

end A047308.P17500574212671478449

noncomputable section

/-- A047308: Numbers that are congruent to {0, 3, 4, 5, 6} mod 7.

Offset 1, canonical program `A047308.P17500574212671478449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047308 (n : ℕ) : ℤ :=
  A047308.P17500574212671478449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047314.P7832033444727920372

`∑[or(1, ∑[n]%5)]-1`
-/

namespace A047314.P7832033444727920372
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((∑ j ∈ Finset.range (n + 1), f2 j) % 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A047314.P7832033444727920372

noncomputable section

/-- A047314: Numbers that are congruent to {0, 1, 4, 5, 6} mod 7.

Offset 1, canonical program `A047314.P7832033444727920372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047314 (n : ℕ) : ℤ :=
  A047314.P7832033444727920372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047316.P3059535813643070293

`Δ[floor((n+1)²/5)]+n`
-/

namespace A047316.P3059535813643070293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A047316.P3059535813643070293

noncomputable section

/-- A047316: Numbers that are congruent to {0, 2, 4, 5, 6} mod 7.

Offset 1, canonical program `A047316.P3059535813643070293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047316 (n : ℕ) : ℤ :=
  A047316.P3059535813643070293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047319.P14299134906101977025

`a(n-2)+7` with `a(0)=5, a(1)=6`
-/

namespace A047319.P14299134906101977025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 6] fun n a =>
  a (n - 2) + 7

end

end A047319.P14299134906101977025

noncomputable section

/-- A047319: Numbers that are congruent to {5, 6} mod 7.

Offset 1, canonical program `A047319.P14299134906101977025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047319 (n : ℕ) : ℤ :=
  (A047319.P14299134906101977025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047326.P13475539557418872456

`2*round(n/5)+n`
-/

namespace A047326.P13475539557418872456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((n : ℚ) / 5) + (n : ℤ)

end

end A047326.P13475539557418872456

noncomputable section

/-- A047326: Numbers that are congruent to {0, 1, 2, 5, 6} mod 7.

Offset 1, canonical program `A047326.P13475539557418872456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047326 (n : ℕ) : ℤ :=
  A047326.P13475539557418872456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047330.P10907432785958860320

`Δ[floor(n²/5)]+n`
-/

namespace A047330.P10907432785958860320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A047330.P10907432785958860320

noncomputable section

/-- A047330: Numbers that are congruent to {0, 1, 3, 5, 6} mod 7.

Offset 1, canonical program `A047330.P10907432785958860320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047330 (n : ℕ) : ℤ :=
  A047330.P10907432785958860320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047335.P5606225180797266211

`a(n-2)+7` with `a(0)=0, a(1)=6`
-/

namespace A047335.P5606225180797266211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 2) + 7

end

end A047335.P5606225180797266211

noncomputable section

/-- A047335: Numbers that are congruent to {0, 6} mod 7.

Offset 1, canonical program `A047335.P5606225180797266211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047335 (n : ℕ) : ℤ :=
  (A047335.P5606225180797266211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047337.P15733132618755856919

`2*floor(n/5)+n`
-/

namespace A047337.P15733132618755856919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 5⌋ + (n : ℤ)

end

end A047337.P15733132618755856919

noncomputable section

/-- A047337: Numbers that are congruent to {0, 1, 2, 3, 4} mod 7.

Offset 1, canonical program `A047337.P15733132618755856919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047337 (n : ℕ) : ℤ :=
  A047337.P15733132618755856919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047341.P14367195457855974847

`a(n-2)+7` with `a(0)=3, a(1)=4`
-/

namespace A047341.P14367195457855974847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 2) + 7

end

end A047341.P14367195457855974847

noncomputable section

/-- A047341: Numbers that are congruent to {3, 4} mod 7.

Offset 1, canonical program `A047341.P14367195457855974847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047341 (n : ℕ) : ℤ :=
  (A047341.P14367195457855974847.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047345.P8178135366022691293

`ceil(7*n/2)`
-/

namespace A047345.P8178135366022691293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * ((n : ℚ) / 2)⌉

end

end A047345.P8178135366022691293

noncomputable section

/-- A047345: Numbers that are congruent to {0, 4} mod 7.

Offset 1, canonical program `A047345.P8178135366022691293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047345 (n : ℕ) : ℤ :=
  A047345.P8178135366022691293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047346.P10034429980946872406

`7+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A047346.P10034429980946872406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  7 + a (n - 2)

end

end A047346.P10034429980946872406

noncomputable section

/-- A047346: Numbers that are congruent to {1, 4} mod 7.

Offset 1, canonical program `A047346.P10034429980946872406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047346 (n : ℕ) : ℤ :=
  (A047346.P10034429980946872406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047353.P16240448836314228230

`7+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A047353.P16240448836314228230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  7 + a (n - 2)

end

end A047353.P16240448836314228230

noncomputable section

/-- A047353: Numbers that are congruent to {1, 2} mod 7.

Offset 1, canonical program `A047353.P16240448836314228230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047353 (n : ℕ) : ℤ :=
  (A047353.P16240448836314228230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047356.P6436573804165714512

`7+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A047356.P6436573804165714512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  7 + a (n - 2)

end

end A047356.P6436573804165714512

noncomputable section

/-- A047356: Numbers that are congruent to {1, 3} mod 7.

Offset 1, canonical program `A047356.P6436573804165714512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047356 (n : ℕ) : ℤ :=
  (A047356.P6436573804165714512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047358.P7513138096876027100

`7+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A047358.P7513138096876027100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  7 + a (n - 2)

end

end A047358.P7513138096876027100

noncomputable section

/-- A047358: Numbers that are congruent to {2, 3} mod 7.

Offset 1, canonical program `A047358.P7513138096876027100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047358 (n : ℕ) : ℤ :=
  (A047358.P7513138096876027100.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047367.P229363764808022562

`floor((7*n+1)/5)`
-/

namespace A047367.P229363764808022562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 * n + 1 : ℚ) / 5⌋

end

end A047367.P229363764808022562

noncomputable section

/-- A047367: Numbers that are congruent to {0, 1, 3, 4, 5} mod 7.

Offset 1, canonical program `A047367.P229363764808022562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047367 (n : ℕ) : ℤ :=
  A047367.P229363764808022562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047374.P6688097991281636162

`7+a(n-2)` with `a(0)=4, a(1)=5`
-/

namespace A047374.P6688097991281636162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n a =>
  7 + a (n - 2)

end

end A047374.P6688097991281636162

noncomputable section

/-- A047374: Numbers that are congruent to {4, 5} mod 7.

Offset 1, canonical program `A047374.P6688097991281636162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047374 (n : ℕ) : ℤ :=
  (A047374.P6688097991281636162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047389.P6454419138721106156

`a(n-2)+7` with `a(0)=3, a(1)=5`
-/

namespace A047389.P6454419138721106156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + 7

end

end A047389.P6454419138721106156

noncomputable section

/-- A047389: Numbers that are congruent to {3, 5} mod 7.

Offset 1, canonical program `A047389.P6454419138721106156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047389 (n : ℕ) : ℤ :=
  (A047389.P6454419138721106156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047405.P192193190784708914

`lt[or(2, n), or(5, n)]`
-/

namespace A047405.P192193190784708914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047405.P192193190784708914

noncomputable section

/-- A047405: Numbers that are congruent to {0, 1, 2, 3, 6} mod 8.

Offset 1, canonical program `A047405.P192193190784708914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047405 (n : ℕ) : ℤ :=
  (A047405.P192193190784708914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047416.P18178038283869261820

`floor(8*n/5)`
-/

namespace A047416.P18178038283869261820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((n : ℚ) / 5)⌋

end

end A047416.P18178038283869261820

noncomputable section

/-- A047416: Numbers that are congruent to {0, 1, 3, 4, 6} mod 8.

Offset 1, canonical program `A047416.P18178038283869261820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047416 (n : ℕ) : ℤ :=
  A047416.P18178038283869261820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047420.P5187025154966166382

`lt[n, or(5, n)]`
-/

namespace A047420.P5187025154966166382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A047420.P5187025154966166382

noncomputable section

/-- A047420: Numbers that are congruent to {0, 1, 2, 3, 4, 6} mod 8.

Offset 1, canonical program `A047420.P5187025154966166382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047420 (n : ℕ) : ℤ :=
  (A047420.P5187025154966166382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047424.P18276099413945376937

`lt[n, or(5, n-2)+2]`
-/

namespace A047424.P18276099413945376937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A047424.P18276099413945376937

noncomputable section

/-- A047424: Numbers that are congruent to {0, 2, 3, 4, 5, 6} mod 8.

Offset 1, canonical program `A047424.P18276099413945376937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047424 (n : ℕ) : ℤ :=
  (A047424.P18276099413945376937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038040.P1845770527370418887

`∑{d}[n+1, lcm(#, n+1)]`
-/

namespace A038040.P1845770527370418887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1)

end

end A038040.P1845770527370418887

noncomputable section

/-- A038040: a(n) = n*d(n), where d(n) = number of divisors of n (A000005).

Offset 1, canonical program `A038040.P1845770527370418887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038040 (n : ℕ) : ℤ :=
  (A038040.P1845770527370418887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045895.P2974834162859892774

`2*lcm(n, ∑[n])`
-/

namespace A045895.P2974834162859892774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A045895.P2974834162859892774

noncomputable section

/-- A045895: Period length of pairs (a,b) where a has period 2n-2 and b has period n.

Offset 1, canonical program `A045895.P2974834162859892774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045895 (n : ℕ) : ℤ :=
  (A045895.P2974834162859892774.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045895.provenance : SequenceMachineLib.Provenance := .conjectured

