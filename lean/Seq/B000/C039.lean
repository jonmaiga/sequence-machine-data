import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A383953.P14880962730702107597

`2*a(n-1)+(-1)^n` with `a(0)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383953.P14880962730702107597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) + (-1) ^ n

end

end A383953.P14880962730702107597

noncomputable section

/-- A383953: a(0) = 4, a(n) = 2*a(n-1) + (-1)^n.

Offset 0, canonical program `A383953.P14880962730702107597`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(-1)^n` (program `A383953.P14880962730702107597`, by `A383953.P14880962730702107597.correct`). Lean does not check the parsing of the name. -/
def A383953 (n : ℕ) : ℤ :=
  A383953.P14880962730702107597.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(-1)^n` (program `A383953.P14880962730702107597`, by `A383953.P14880962730702107597.correct`). Lean does not check the parsing of the name. -/
def A383953.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384328.P11309829807178330690

`ogf(1/(1-3x+3x^2-x^3-x^7+3x^8-3x^9+x^10))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384328.P11309829807178330690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 3, -1, 0, 0, 0, -1, 3, -3, 1] n

end

end A384328.P11309829807178330690

noncomputable section

/-- A384328: Expansion of 1 / ((1-x)^3 * (1-x^7)).

Offset 0, canonical program `A384328.P11309829807178330690`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^3-x^7+3x^8-3x^9+x^10))` (program `A384328.P11309829807178330690`, by `A384328.P11309829807178330690.correct`). Lean does not check the parsing of the name. -/
def A384328 (n : ℕ) : ℤ :=
  A384328.P11309829807178330690.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^3-x^7+3x^8-3x^9+x^10))` (program `A384328.P11309829807178330690`, by `A384328.P11309829807178330690.correct`). Lean does not check the parsing of the name. -/
def A384328.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384367.P11525340815926243755

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384367.P11525340815926243755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A384367.P11525340815926243755

noncomputable section

/-- A384367: a(n) = a(n-1)+2*a(n-2)+a(n-3) with a(0)=1, a(1)=4, a(2) = 6.

Offset 0, canonical program `A384367.P11525340815926243755`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)` (program `A384367.P11525340815926243755`, by `A384367.P11525340815926243755.correct`). Lean does not check the parsing of the name. -/
def A384367 (n : ℕ) : ℤ :=
  (A384367.P11525340815926243755.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)` (program `A384367.P11525340815926243755`, by `A384367.P11525340815926243755.correct`). Lean does not check the parsing of the name. -/
def A384367.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384598.P18088159735085619859

`ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384598.P18088159735085619859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -1, -4, 2, 2] n

end

end A384598.P18088159735085619859

noncomputable section

/-- A384598: Expansion of (1-3*x^2) / (1-x-4*x^2+2*x^3+2*x^4).

Offset 0, canonical program `A384598.P18088159735085619859`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))` (program `A384598.P18088159735085619859`, by `A384598.P18088159735085619859.correct`). Lean does not check the parsing of the name. -/
def A384598 (n : ℕ) : ℤ :=
  A384598.P18088159735085619859.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2)/(1-x-4x^2+2x^3+2x^4))` (program `A384598.P18088159735085619859`, by `A384598.P18088159735085619859.correct`). Lean does not check the parsing of the name. -/
def A384598.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384599.P5405995634609708607

`ogf((1+3x+2x^2)/(1-4x^2-2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384599.P5405995634609708607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, 0, -4, -2] n

end

end A384599.P5405995634609708607

noncomputable section

/-- A384599: Expansion of (1+3*x+2*x^2) / (1-4*x^2-2*x^3).

Offset 0, canonical program `A384599.P5405995634609708607`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-4x^2-2x^3))` (program `A384599.P5405995634609708607`, by `A384599.P5405995634609708607.correct`). Lean does not check the parsing of the name. -/
def A384599 (n : ℕ) : ℤ :=
  A384599.P5405995634609708607.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-4x^2-2x^3))` (program `A384599.P5405995634609708607`, by `A384599.P5405995634609708607.correct`). Lean does not check the parsing of the name. -/
def A384599.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384600.P599682406207582073

`ogf((1+x-x^2)/(1-x-4x^2+2x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384600.P599682406207582073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -4, 2, 2] n

end

end A384600.P599682406207582073

noncomputable section

/-- A384600: Expansion of (1+x-x^2) / (1-x-4*x^2+2*x^3+2*x^4).

Offset 0, canonical program `A384600.P599682406207582073`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-x-4x^2+2x^3+2x^4))` (program `A384600.P599682406207582073`, by `A384600.P599682406207582073.correct`). Lean does not check the parsing of the name. -/
def A384600 (n : ℕ) : ℤ :=
  A384600.P599682406207582073.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-x-4x^2+2x^3+2x^4))` (program `A384600.P599682406207582073`, by `A384600.P599682406207582073.correct`). Lean does not check the parsing of the name. -/
def A384600.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384604.P880113992115688430

`ogf((1-x^2)/(1-x-4x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384604.P880113992115688430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -1, -4, 2] n

end

end A384604.P880113992115688430

noncomputable section

/-- A384604: Expansion of (1-x^2) / (1-x-4*x^2+2*x^3).

Offset 0, canonical program `A384604.P880113992115688430`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-4x^2+2x^3))` (program `A384604.P880113992115688430`, by `A384604.P880113992115688430.correct`). Lean does not check the parsing of the name. -/
def A384604 (n : ℕ) : ℤ :=
  A384604.P880113992115688430.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-x-4x^2+2x^3))` (program `A384604.P880113992115688430`, by `A384604.P880113992115688430.correct`). Lean does not check the parsing of the name. -/
def A384604.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384605.P4452811739406627335

`ogf((1+x)/(1-x-4x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384605.P4452811739406627335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -4, 2] n

end

end A384605.P4452811739406627335

noncomputable section

/-- A384605: Expansion of (1+x) / (1-x-4*x^2+2*x^3).

Offset 0, canonical program `A384605.P4452811739406627335`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-4x^2+2x^3))` (program `A384605.P4452811739406627335`, by `A384605.P4452811739406627335.correct`). Lean does not check the parsing of the name. -/
def A384605 (n : ℕ) : ℤ :=
  A384605.P4452811739406627335.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-4x^2+2x^3))` (program `A384605.P4452811739406627335`, by `A384605.P4452811739406627335.correct`). Lean does not check the parsing of the name. -/
def A384605.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384611.P17716463358878510133

`ogf((1+2x-x^3)/(1-5x^2+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384611.P17716463358878510133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -1] [1, 0, -5, 0, 2] n

end

end A384611.P17716463358878510133

noncomputable section

/-- A384611: Expansion of (1+2*x-x^3) / (1-5*x^2+2*x^4).

Offset 0, canonical program `A384611.P17716463358878510133`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^3)/(1-5x^2+2x^4))` (program `A384611.P17716463358878510133`, by `A384611.P17716463358878510133.correct`). Lean does not check the parsing of the name. -/
def A384611 (n : ℕ) : ℤ :=
  A384611.P17716463358878510133.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^3)/(1-5x^2+2x^4))` (program `A384611.P17716463358878510133`, by `A384611.P17716463358878510133.correct`). Lean does not check the parsing of the name. -/
def A384611.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384614.P1186288960258121026

`ogf((1+x+x^2)/(1-x-3x^2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384614.P1186288960258121026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -1, -3] n

end

end A384614.P1186288960258121026

noncomputable section

/-- A384614: Expansion of (1+x+x^2) / (1-x-3*x^2).

Offset 0, canonical program `A384614.P1186288960258121026`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-x-3x^2))` (program `A384614.P1186288960258121026`, by `A384614.P1186288960258121026.correct`). Lean does not check the parsing of the name. -/
def A384614 (n : ℕ) : ℤ :=
  A384614.P1186288960258121026.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-x-3x^2))` (program `A384614.P1186288960258121026`, by `A384614.P1186288960258121026.correct`). Lean does not check the parsing of the name. -/
def A384614.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384633.P11274361467450250246

`ogf((1+x-2x^2-2x^3)/(1-6x^2-4x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384633.P11274361467450250246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -2] [1, 0, -6, -4, 2] n

end

end A384633.P11274361467450250246

noncomputable section

/-- A384633: Expansion of (1+x-2*x^2-2*x^3) / (1-6*x^2-4*x^3+2*x^4).

Offset 0, canonical program `A384633.P11274361467450250246`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2-2x^3)/(1-6x^2-4x^3+2x^4))` (program `A384633.P11274361467450250246`, by `A384633.P11274361467450250246.correct`). Lean does not check the parsing of the name. -/
def A384633 (n : ℕ) : ℤ :=
  A384633.P11274361467450250246.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2-2x^3)/(1-6x^2-4x^3+2x^4))` (program `A384633.P11274361467450250246`, by `A384633.P11274361467450250246.correct`). Lean does not check the parsing of the name. -/
def A384633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384634.P12909353126095992854

`ogf((1+2x+x^2)/(1-6x^2-4x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384634.P12909353126095992854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, 0, -6, -4, 2] n

end

end A384634.P12909353126095992854

noncomputable section

/-- A384634: Expansion of (1+2*x+x^2) / (1-6*x^2-4*x^3+2*x^4).

Offset 0, canonical program `A384634.P12909353126095992854`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-6x^2-4x^3+2x^4))` (program `A384634.P12909353126095992854`, by `A384634.P12909353126095992854.correct`). Lean does not check the parsing of the name. -/
def A384634 (n : ℕ) : ℤ :=
  A384634.P12909353126095992854.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-6x^2-4x^3+2x^4))` (program `A384634.P12909353126095992854`, by `A384634.P12909353126095992854.correct`). Lean does not check the parsing of the name. -/
def A384634.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384635.P11004738581685573394

`ogf((1+3x+2x^2)/(1-6x^2-4x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384635.P11004738581685573394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, 0, -6, -4, 2] n

end

end A384635.P11004738581685573394

noncomputable section

/-- A384635: Expansion of (1+3*x+2*x^2) / (1-6*x^2-4*x^3+2*x^4).

Offset 0, canonical program `A384635.P11004738581685573394`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-6x^2-4x^3+2x^4))` (program `A384635.P11004738581685573394`, by `A384635.P11004738581685573394.correct`). Lean does not check the parsing of the name. -/
def A384635 (n : ℕ) : ℤ :=
  A384635.P11004738581685573394.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-6x^2-4x^3+2x^4))` (program `A384635.P11004738581685573394`, by `A384635.P11004738581685573394.correct`). Lean does not check the parsing of the name. -/
def A384635.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384640.P13895661277414295081

`ogf((1-3x^2)/(1-x-5x^2+x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384640.P13895661277414295081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -1, -5, 1, 2] n

end

end A384640.P13895661277414295081

noncomputable section

/-- A384640: Expansion of (1-3*x^2) / (1-x-5*x^2+x^3+2*x^4).

Offset 0, canonical program `A384640.P13895661277414295081`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2)/(1-x-5x^2+x^3+2x^4))` (program `A384640.P13895661277414295081`, by `A384640.P13895661277414295081.correct`). Lean does not check the parsing of the name. -/
def A384640 (n : ℕ) : ℤ :=
  A384640.P13895661277414295081.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2)/(1-x-5x^2+x^3+2x^4))` (program `A384640.P13895661277414295081`, by `A384640.P13895661277414295081.correct`). Lean does not check the parsing of the name. -/
def A384640.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384641.P883418741015050253

`ogf((1+2x-x^3)/(1-x-5x^2+x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384641.P883418741015050253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -1] [1, -1, -5, 1, 2] n

end

end A384641.P883418741015050253

noncomputable section

/-- A384641: Expansion of (1+2*x-x^3) / (1-x-5*x^2+x^3+2*x^4).

Offset 0, canonical program `A384641.P883418741015050253`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^3)/(1-x-5x^2+x^3+2x^4))` (program `A384641.P883418741015050253`, by `A384641.P883418741015050253.correct`). Lean does not check the parsing of the name. -/
def A384641 (n : ℕ) : ℤ :=
  A384641.P883418741015050253.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^3)/(1-x-5x^2+x^3+2x^4))` (program `A384641.P883418741015050253`, by `A384641.P883418741015050253.correct`). Lean does not check the parsing of the name. -/
def A384641.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384642.P15225620049367970568

`ogf((1+x-x^2+x^3)/(1-x-5x^2+x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384642.P15225620049367970568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -1, -5, 1, 2] n

end

end A384642.P15225620049367970568

noncomputable section

/-- A384642: Expansion of (1+x-x^2+x^3) / (1-x-5*x^2+x^3+2*x^4).

Offset 0, canonical program `A384642.P15225620049367970568`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2+x^3)/(1-x-5x^2+x^3+2x^4))` (program `A384642.P15225620049367970568`, by `A384642.P15225620049367970568.correct`). Lean does not check the parsing of the name. -/
def A384642 (n : ℕ) : ℤ :=
  A384642.P15225620049367970568.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2+x^3)/(1-x-5x^2+x^3+2x^4))` (program `A384642.P15225620049367970568`, by `A384642.P15225620049367970568.correct`). Lean does not check the parsing of the name. -/
def A384642.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384646.P16657342197962963062

`ogf((1+x)/(1-x-5x^2-2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384646.P16657342197962963062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -5, -2] n

end

end A384646.P16657342197962963062

noncomputable section

/-- A384646: Expansion of (1+x) / (1-x-5*x^2-2*x^3).

Offset 0, canonical program `A384646.P16657342197962963062`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-5x^2-2x^3))` (program `A384646.P16657342197962963062`, by `A384646.P16657342197962963062.correct`). Lean does not check the parsing of the name. -/
def A384646 (n : ℕ) : ℤ :=
  A384646.P16657342197962963062.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x-5x^2-2x^3))` (program `A384646.P16657342197962963062`, by `A384646.P16657342197962963062.correct`). Lean does not check the parsing of the name. -/
def A384646.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384647.P6222566480754992603

`ogf((1+3x+x^2)/(1-x-5x^2-2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384647.P6222566480754992603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, -1, -5, -2] n

end

end A384647.P6222566480754992603

noncomputable section

/-- A384647: Expansion of (1+3*x+x^2) / (1-x-5*x^2-2*x^3).

Offset 0, canonical program `A384647.P6222566480754992603`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+x^2)/(1-x-5x^2-2x^3))` (program `A384647.P6222566480754992603`, by `A384647.P6222566480754992603.correct`). Lean does not check the parsing of the name. -/
def A384647 (n : ℕ) : ℤ :=
  A384647.P6222566480754992603.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+x^2)/(1-x-5x^2-2x^3))` (program `A384647.P6222566480754992603`, by `A384647.P6222566480754992603.correct`). Lean does not check the parsing of the name. -/
def A384647.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384648.P5178255457906667526

`ogf((1+2x+x^2)/(1-x-5x^2-2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384648.P5178255457906667526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -1, -5, -2] n

end

end A384648.P5178255457906667526

noncomputable section

/-- A384648: Expansion of (1+2*x+x^2) / (1-x-5*x^2-2*x^3).

Offset 0, canonical program `A384648.P5178255457906667526`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x-5x^2-2x^3))` (program `A384648.P5178255457906667526`, by `A384648.P5178255457906667526.correct`). Lean does not check the parsing of the name. -/
def A384648 (n : ℕ) : ℤ :=
  A384648.P5178255457906667526.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x-5x^2-2x^3))` (program `A384648.P5178255457906667526`, by `A384648.P5178255457906667526.correct`). Lean does not check the parsing of the name. -/
def A384648.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384671.P2341892804254635137

`ogf((1-x^2)/(1-2x-5x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384671.P2341892804254635137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -2, -5, 2] n

end

end A384671.P2341892804254635137

noncomputable section

/-- A384671: Expansion of (1-x^2) / (1-2*x-5*x^2+2*x^3).

Offset 0, canonical program `A384671.P2341892804254635137`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x-5x^2+2x^3))` (program `A384671.P2341892804254635137`, by `A384671.P2341892804254635137.correct`). Lean does not check the parsing of the name. -/
def A384671 (n : ℕ) : ℤ :=
  A384671.P2341892804254635137.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2)/(1-2x-5x^2+2x^3))` (program `A384671.P2341892804254635137`, by `A384671.P2341892804254635137.correct`). Lean does not check the parsing of the name. -/
def A384671.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384672.P16009796501396644033

`ogf((1+2x-x^2)/(1-2x-5x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384672.P16009796501396644033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -2, -5, 2] n

end

end A384672.P16009796501396644033

noncomputable section

/-- A384672: Expansion of (1+2*x-x^2) / (1-2*x-5*x^2+2*x^3).

Offset 0, canonical program `A384672.P16009796501396644033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-2x-5x^2+2x^3))` (program `A384672.P16009796501396644033`, by `A384672.P16009796501396644033.correct`). Lean does not check the parsing of the name. -/
def A384672 (n : ℕ) : ℤ :=
  A384672.P16009796501396644033.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-2x-5x^2+2x^3))` (program `A384672.P16009796501396644033`, by `A384672.P16009796501396644033.correct`). Lean does not check the parsing of the name. -/
def A384672.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384673.P14419565022815265075

`ogf((1+x)/(1-2x-5x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384673.P14419565022815265075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -5, 2] n

end

end A384673.P14419565022815265075

noncomputable section

/-- A384673: Expansion of (1+x) / (1-2*x-5*x^2+2*x^3).

Offset 0, canonical program `A384673.P14419565022815265075`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-5x^2+2x^3))` (program `A384673.P14419565022815265075`, by `A384673.P14419565022815265075.correct`). Lean does not check the parsing of the name. -/
def A384673 (n : ℕ) : ℤ :=
  A384673.P14419565022815265075.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-5x^2+2x^3))` (program `A384673.P14419565022815265075`, by `A384673.P14419565022815265075.correct`). Lean does not check the parsing of the name. -/
def A384673.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384677.P6933609243300286926

`ogf((1-x-2x^2)/(1-2x-4x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384677.P6933609243300286926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -2, -4, 2] n

end

end A384677.P6933609243300286926

noncomputable section

/-- A384677: Expansion of (1-x-2*x^2) / (1-2*x-4*x^2+2*x^3).

Offset 0, canonical program `A384677.P6933609243300286926`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2)/(1-2x-4x^2+2x^3))` (program `A384677.P6933609243300286926`, by `A384677.P6933609243300286926.correct`). Lean does not check the parsing of the name. -/
def A384677 (n : ℕ) : ℤ :=
  A384677.P6933609243300286926.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2)/(1-2x-4x^2+2x^3))` (program `A384677.P6933609243300286926`, by `A384677.P6933609243300286926.correct`). Lean does not check the parsing of the name. -/
def A384677.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384678.P2397942481497600429

`ogf((1+x)/(1-2x-4x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384678.P2397942481497600429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -4, 2] n

end

end A384678.P2397942481497600429

noncomputable section

/-- A384678: Expansion of (1+x) / (1-2*x-4*x^2+2*x^3).

Offset 0, canonical program `A384678.P2397942481497600429`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-4x^2+2x^3))` (program `A384678.P2397942481497600429`, by `A384678.P2397942481497600429.correct`). Lean does not check the parsing of the name. -/
def A384678 (n : ℕ) : ℤ :=
  A384678.P2397942481497600429.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-4x^2+2x^3))` (program `A384678.P2397942481497600429`, by `A384678.P2397942481497600429.correct`). Lean does not check the parsing of the name. -/
def A384678.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384711.P3011662670924636426

`ogf((1+x)/(1-2x-6x^2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384711.P3011662670924636426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -6] n

end

end A384711.P3011662670924636426

noncomputable section

/-- A384711: Expansion of (1+x) / (1-2*x-6*x^2).

Offset 0, canonical program `A384711.P3011662670924636426`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-6x^2))` (program `A384711.P3011662670924636426`, by `A384711.P3011662670924636426.correct`). Lean does not check the parsing of the name. -/
def A384711 (n : ℕ) : ℤ :=
  A384711.P3011662670924636426.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-6x^2))` (program `A384711.P3011662670924636426`, by `A384711.P3011662670924636426.correct`). Lean does not check the parsing of the name. -/
def A384711.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384712.P13413970938566962457

`ogf((1+2x)/(1-2x-6x^2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384712.P13413970938566962457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, -6] n

end

end A384712.P13413970938566962457

noncomputable section

/-- A384712: Expansion of (1+2*x) / (1-2*x-6*x^2).

Offset 0, canonical program `A384712.P13413970938566962457`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-2x-6x^2))` (program `A384712.P13413970938566962457`, by `A384712.P13413970938566962457.correct`). Lean does not check the parsing of the name. -/
def A384712 (n : ℕ) : ℤ :=
  A384712.P13413970938566962457.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-2x-6x^2))` (program `A384712.P13413970938566962457`, by `A384712.P13413970938566962457.correct`). Lean does not check the parsing of the name. -/
def A384712.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384730.P14893347924458844185

`ogf((1+x-2x^2)/(1-x-6x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384730.P14893347924458844185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -1, -6, 2] n

end

end A384730.P14893347924458844185

noncomputable section

/-- A384730: Expansion of (1+x-2*x^2) / (1-x-6*x^2+2*x^3).

Offset 0, canonical program `A384730.P14893347924458844185`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2)/(1-x-6x^2+2x^3))` (program `A384730.P14893347924458844185`, by `A384730.P14893347924458844185.correct`). Lean does not check the parsing of the name. -/
def A384730 (n : ℕ) : ℤ :=
  A384730.P14893347924458844185.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-2x^2)/(1-x-6x^2+2x^3))` (program `A384730.P14893347924458844185`, by `A384730.P14893347924458844185.correct`). Lean does not check the parsing of the name. -/
def A384730.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384731.P7894094139060898005

`ogf((1+2x-x^2)/(1-x-6x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384731.P7894094139060898005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -1] [1, -1, -6, 2] n

end

end A384731.P7894094139060898005

noncomputable section

/-- A384731: Expansion of (1+2*x-x^2) / (1-x-6*x^2+2*x^3).

Offset 0, canonical program `A384731.P7894094139060898005`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-x-6x^2+2x^3))` (program `A384731.P7894094139060898005`, by `A384731.P7894094139060898005.correct`). Lean does not check the parsing of the name. -/
def A384731 (n : ℕ) : ℤ :=
  A384731.P7894094139060898005.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2)/(1-x-6x^2+2x^3))` (program `A384731.P7894094139060898005`, by `A384731.P7894094139060898005.correct`). Lean does not check the parsing of the name. -/
def A384731.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A384732.P12542306525992931754

`ogf((1+2x)/(1-x-6x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384732.P12542306525992931754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -6, 2] n

end

end A384732.P12542306525992931754

noncomputable section

/-- A384732: Expansion of (1+2*x) / (1-x-6*x^2+2*x^3).

Offset 0, canonical program `A384732.P12542306525992931754`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-x-6x^2+2x^3))` (program `A384732.P12542306525992931754`, by `A384732.P12542306525992931754.correct`). Lean does not check the parsing of the name. -/
def A384732 (n : ℕ) : ℤ :=
  A384732.P12542306525992931754.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-x-6x^2+2x^3))` (program `A384732.P12542306525992931754`, by `A384732.P12542306525992931754.correct`). Lean does not check the parsing of the name. -/
def A384732.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A384852.P3187201973385142083

`2*C(n, 2)+3*C(n, 3)+4*C(n, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384852.P3187201973385142083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2 + 3 * Nat.choose n 3 + 4 * Nat.choose n 4

end

end A384852.P3187201973385142083

noncomputable section

/-- A384852: a(n) = 2*binomial(n,2) + 3*binomial(n,3) + 4*binomial(n,4).

Offset 0, canonical program `A384852.P3187201973385142083`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` (program `A384852.P3187201973385142083`, by `A384852.P3187201973385142083.correct`). Lean does not check the parsing of the name. -/
def A384852 (n : ℕ) : ℤ :=
  (A384852.P3187201973385142083.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(n, 2)+3*C(n, 3)+4*C(n, 4)` (program `A384852.P3187201973385142083`, by `A384852.P3187201973385142083.correct`). Lean does not check the parsing of the name. -/
def A384852.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385106.P9784392135801434795

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385106.P9784392135801434795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + a (n - 4)

end

end A385106.P9784392135801434795

noncomputable section

/-- A385106: a(n) = 3*a(n-1) - 3*a(n-2) + a(n-3) + a(n-4) with a(1) = 1, a(2) = 2, a(3) = 4, and a(4) = 7.

Offset 1, canonical program `A385106.P9784392135801434795`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` (program `A385106.P9784392135801434795`, by `A385106.P9784392135801434795.correct`). Lean does not check the parsing of the name. -/
def A385106 (n : ℕ) : ℤ :=
  A385106.P9784392135801434795.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-4)` (program `A385106.P9784392135801434795`, by `A385106.P9784392135801434795.correct`). Lean does not check the parsing of the name. -/
def A385106.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385107.P16588204817208836442

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385107.P16588204817208836442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 15] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A385107.P16588204817208836442

noncomputable section

/-- A385107: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3) - a(n-4) + a(n-5) with a(1) = 1, a(2) = 2, a(3) = 4, a(4) = 8, and a(5) = 15.

Offset 1, canonical program `A385107.P16588204817208836442`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` (program `A385107.P16588204817208836442`, by `A385107.P16588204817208836442.correct`). Lean does not check the parsing of the name. -/
def A385107 (n : ℕ) : ℤ :=
  A385107.P16588204817208836442.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` (program `A385107.P16588204817208836442`, by `A385107.P16588204817208836442.correct`). Lean does not check the parsing of the name. -/
def A385107.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385142.P8447580447115568887

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385142.P8447580447115568887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A385142.P8447580447115568887

noncomputable section

/-- A385142: a(n) = 4*a(n-1) - 6*a(n-2) + 4*a(n-3) - a(n-4) + a(n-5) with a(1) = a(2) = a(3) = 0, a(4) = 1, and a(5) = 3.

Offset 1, canonical program `A385142.P8447580447115568887`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` (program `A385142.P8447580447115568887`, by `A385142.P8447580447115568887.correct`). Lean does not check the parsing of the name. -/
def A385142 (n : ℕ) : ℤ :=
  A385142.P8447580447115568887.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` (program `A385142.P8447580447115568887`, by `A385142.P8447580447115568887.correct`). Lean does not check the parsing of the name. -/
def A385142.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385633.P2007147361525603576

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385633.P2007147361525603576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8] fun n a =>
  a (n - 1) + a (n - 3)

end

end A385633.P2007147361525603576

noncomputable section

/-- A385633: a(n) = a(n-1) + a(n-3), with a(0) = 1, a(1) = 4, a(2) = 8.

Offset 0, canonical program `A385633.P2007147361525603576`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)` (program `A385633.P2007147361525603576`, by `A385633.P2007147361525603576.correct`). Lean does not check the parsing of the name. -/
def A385633 (n : ℕ) : ℤ :=
  (A385633.P2007147361525603576.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)` (program `A385633.P2007147361525603576`, by `A385633.P2007147361525603576.correct`). Lean does not check the parsing of the name. -/
def A385633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385689.P17703581142400159642

`6*C(n, 4)+6*C(n, 3)+4*C(n, 2)+2*n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385689.P17703581142400159642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose n 4 + 6 * Nat.choose n 3 + 4 * Nat.choose n 2 + 2 * n + 1

end

end A385689.P17703581142400159642

noncomputable section

/-- A385689: a(n) = 6*binomial(n,4) + 6*binomial(n,3) + 4*binomial(n,2) + 2*n + 1.

Offset 0, canonical program `A385689.P17703581142400159642`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n, 4)+6*C(n, 3)+4*C(n, 2)+2*n+1` (program `A385689.P17703581142400159642`, by `A385689.P17703581142400159642.correct`). Lean does not check the parsing of the name. -/
def A385689 (n : ℕ) : ℤ :=
  (A385689.P17703581142400159642.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n, 4)+6*C(n, 3)+4*C(n, 2)+2*n+1` (program `A385689.P17703581142400159642`, by `A385689.P17703581142400159642.correct`). Lean does not check the parsing of the name. -/
def A385689.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385717.P11067697425676795605

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=4, a(1)=13, a(2)=42`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385717.P11067697425676795605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 13, 42] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A385717.P11067697425676795605

noncomputable section

/-- A385717: a(n) = a(n-1) + a(n-2) + a(n-3), with a(1) = 4, a(2) = 13, a(3) = 42.

Offset 1, canonical program `A385717.P11067697425676795605`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A385717.P11067697425676795605`, by `A385717.P11067697425676795605.correct`). Lean does not check the parsing of the name. -/
def A385717 (n : ℕ) : ℤ :=
  (A385717.P11067697425676795605.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A385717.P11067697425676795605`, by `A385717.P11067697425676795605.correct`). Lean does not check the parsing of the name. -/
def A385717.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385726.P15582791440511932674

`3^n-6*C(n, 4)-6*C(n, 3)-4*C(n, 2)-2*n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385726.P15582791440511932674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (6 * Nat.choose n 4 : ℤ) - (6 * Nat.choose n 3 : ℤ) - (4 * Nat.choose n 2 : ℤ) - (2 * n : ℤ) - 1

end

end A385726.P15582791440511932674

noncomputable section

/-- A385726: a(n) = 3^n - 6*binomial(n,4) - 6*binomial(n,3) - 4*binomial(n,2) - 2*n - 1.

Offset 0, canonical program `A385726.P15582791440511932674`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-6*C(n, 4)-6*C(n, 3)-4*C(n, 2)-2*n-1` (program `A385726.P15582791440511932674`, by `A385726.P15582791440511932674.correct`). Lean does not check the parsing of the name. -/
def A385726 (n : ℕ) : ℤ :=
  A385726.P15582791440511932674.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-6*C(n, 4)-6*C(n, 3)-4*C(n, 2)-2*n-1` (program `A385726.P15582791440511932674`, by `A385726.P15582791440511932674.correct`). Lean does not check the parsing of the name. -/
def A385726.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385897.P11105662046187679461

`1-5*(n+1)²+5*(n+1)^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385897.P11105662046187679461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (5 * (n + 1) ^ 2 : ℤ) + (5 * (n + 1) ^ 4 : ℤ)

end

end A385897.P11105662046187679461

noncomputable section

/-- A385897: a(n) = 1 - 5*(n + 1)^2 + 5*(n + 1)^4.

Offset 0, canonical program `A385897.P11105662046187679461`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-5*(n+1)²+5*(n+1)^4` (program `A385897.P11105662046187679461`, by `A385897.P11105662046187679461.correct`). Lean does not check the parsing of the name. -/
def A385897 (n : ℕ) : ℤ :=
  A385897.P11105662046187679461.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1-5*(n+1)²+5*(n+1)^4` (program `A385897.P11105662046187679461`, by `A385897.P11105662046187679461.correct`). Lean does not check the parsing of the name. -/
def A385897.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385898.P6094748751542339153

`16*n^5+70*n^4+105*n^3+65*n²+15*n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385898.P6094748751542339153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n ^ 5 + 70 * n ^ 4 + 105 * n ^ 3 + 65 * n ^ 2 + 15 * n + 1

end

end A385898.P6094748751542339153

noncomputable section

/-- A385898: a(n) = 16*n^5 + 70*n^4 + 105*n^3 + 65*n^2 + 15*n + 1.

Offset 0, canonical program `A385898.P6094748751542339153`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^5+70*n^4+105*n^3+65*n²+15*n+1` (program `A385898.P6094748751542339153`, by `A385898.P6094748751542339153.correct`). Lean does not check the parsing of the name. -/
def A385898 (n : ℕ) : ℤ :=
  (A385898.P6094748751542339153.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^5+70*n^4+105*n^3+65*n²+15*n+1` (program `A385898.P6094748751542339153`, by `A385898.P6094748751542339153.correct`). Lean does not check the parsing of the name. -/
def A385898.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386489.P7858105043473720846

`ogf((1-x)/(1-3x-x^2-7x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386489.P7858105043473720846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -1, -7, 2] n

end

end A386489.P7858105043473720846

noncomputable section

/-- A386489: Expansion of (1-x)/((1+x+2*x^2)*(1-4*x+x^2)).

Offset 0, canonical program `A386489.P7858105043473720846`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-x^2-7x^3+2x^4))` (program `A386489.P7858105043473720846`, by `A386489.P7858105043473720846.correct`). Lean does not check the parsing of the name. -/
def A386489 (n : ℕ) : ℤ :=
  A386489.P7858105043473720846.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-3x-x^2-7x^3+2x^4))` (program `A386489.P7858105043473720846`, by `A386489.P7858105043473720846.correct`). Lean does not check the parsing of the name. -/
def A386489.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386851.P14240077391279146294

`floor(5*(n+1)²/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386851.P14240077391279146294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * (n + 1) ^ 2 : ℚ) / 6⌋

end

end A386851.P14240077391279146294

noncomputable section

/-- A386851: a(n) = floor(5*n^2/6).

Offset 1, canonical program `A386851.P14240077391279146294`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)²/6)` (program `A386851.P14240077391279146294`, by `A386851.P14240077391279146294.correct`). Lean does not check the parsing of the name. -/
def A386851 (n : ℕ) : ℤ :=
  A386851.P14240077391279146294.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)²/6)` (program `A386851.P14240077391279146294`, by `A386851.P14240077391279146294.correct`). Lean does not check the parsing of the name. -/
def A386851.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386858.P9817683384981520497

`floor(5*(n+1)²/8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386858.P9817683384981520497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 * (n + 1) ^ 2 : ℚ) / 8⌋

end

end A386858.P9817683384981520497

noncomputable section

/-- A386858: a(n) = floor(5*n^2/8).

Offset 1, canonical program `A386858.P9817683384981520497`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)²/8)` (program `A386858.P9817683384981520497`, by `A386858.P9817683384981520497.correct`). Lean does not check the parsing of the name. -/
def A386858 (n : ℕ) : ℤ :=
  A386858.P9817683384981520497.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5*(n+1)²/8)` (program `A386858.P9817683384981520497`, by `A386858.P9817683384981520497.correct`). Lean does not check the parsing of the name. -/
def A386858.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386918.P6850681663165678686

`2^n*C(4*n, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386918.P6850681663165678686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (4 * n) n

end

end A386918.P6850681663165678686

noncomputable section

/-- A386918: a(n) = 2^n * binomial(4*n,n).

Offset 0, canonical program `A386918.P6850681663165678686`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(4*n, n)` (program `A386918.P6850681663165678686`, by `A386918.P6850681663165678686.correct`). Lean does not check the parsing of the name. -/
def A386918 (n : ℕ) : ℤ :=
  (A386918.P6850681663165678686.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(4*n, n)` (program `A386918.P6850681663165678686`, by `A386918.P6850681663165678686.correct`). Lean does not check the parsing of the name. -/
def A386918.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387018.P5495358802361442177

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387018.P5495358802361442177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 11] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A387018.P5495358802361442177

noncomputable section

/-- A387018: a(n) = 2*a(n-1) + 2*a(n-2) + 2*a(n-3) - a(n-4) with a(0)=0, a(1)=1, a(2)=4, a(3)=11.

Offset 0, canonical program `A387018.P5495358802361442177`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` (program `A387018.P5495358802361442177`, by `A387018.P5495358802361442177.correct`). Lean does not check the parsing of the name. -/
def A387018 (n : ℕ) : ℤ :=
  A387018.P5495358802361442177.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` (program `A387018.P5495358802361442177`, by `A387018.P5495358802361442177.correct`). Lean does not check the parsing of the name. -/
def A387018.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387091.P16971273414923112342

`C(9*n+1, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387091.P16971273414923112342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (9 * n + 1) n

end

end A387091.P16971273414923112342

noncomputable section

/-- A387091: a(n) = binomial(9*n+1,n).

Offset 0, canonical program `A387091.P16971273414923112342`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(9*n+1, n)` (program `A387091.P16971273414923112342`, by `A387091.P16971273414923112342.correct`). Lean does not check the parsing of the name. -/
def A387091 (n : ℕ) : ℤ :=
  (A387091.P16971273414923112342.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(9*n+1, n)` (program `A387091.P16971273414923112342`, by `A387091.P16971273414923112342.correct`). Lean does not check the parsing of the name. -/
def A387091.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387251.P7654537576363240053

`3^n*n^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387251.P7654537576363240053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * n ^ 4

end

end A387251.P7654537576363240053

noncomputable section

/-- A387251: a(n) = 3^n*n^4.

Offset 0, canonical program `A387251.P7654537576363240053`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*n^4` (program `A387251.P7654537576363240053`, by `A387251.P7654537576363240053.correct`). Lean does not check the parsing of the name. -/
def A387251 (n : ℕ) : ℤ :=
  (A387251.P7654537576363240053.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*n^4` (program `A387251.P7654537576363240053`, by `A387251.P7654537576363240053.correct`). Lean does not check the parsing of the name. -/
def A387251.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387376.P1890184593504587135

`2+4^(n+1)+2*(n+1)*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387376.P1890184593504587135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + 4 ^ (n + 1) + 2 * (n + 1) * n

end

end A387376.P1890184593504587135

noncomputable section

/-- A387376: a(n) = 2 + 4^n + 2*n*(n - 1).

Offset 1, canonical program `A387376.P1890184593504587135`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+4^(n+1)+2*(n+1)*n` (program `A387376.P1890184593504587135`, by `A387376.P1890184593504587135.correct`). Lean does not check the parsing of the name. -/
def A387376 (n : ℕ) : ℤ :=
  (A387376.P1890184593504587135.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+4^(n+1)+2*(n+1)*n` (program `A387376.P1890184593504587135`, by `A387376.P1890184593504587135.correct`). Lean does not check the parsing of the name. -/
def A387376.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387391.P16540200533215578290

`49*2^n-3*n-18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387391.P16540200533215578290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * 2 ^ n : ℤ) - (3 * n : ℤ) - 18

end

end A387391.P16540200533215578290

noncomputable section

/-- A387391: a(n) = 49*2^n - 3*n - 18.

Offset 0, canonical program `A387391.P16540200533215578290`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*2^n-3*n-18` (program `A387391.P16540200533215578290`, by `A387391.P16540200533215578290.correct`). Lean does not check the parsing of the name. -/
def A387391 (n : ℕ) : ℤ :=
  A387391.P16540200533215578290.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*2^n-3*n-18` (program `A387391.P16540200533215578290`, by `A387391.P16540200533215578290.correct`). Lean does not check the parsing of the name. -/
def A387391.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387458.P16532837354093161660

`4*(23-17*(n+1)+8*(n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387458.P16532837354093161660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (23 - (17 * (n + 1) : ℤ) + (8 * (n + 1) ^ 2 : ℤ))

end

end A387458.P16532837354093161660

noncomputable section

/-- A387458: a(n) = 4*(23 - 17*n + 8*n^2).

Offset 1, canonical program `A387458.P16532837354093161660`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(23-17*(n+1)+8*(n+1)²)` (program `A387458.P16532837354093161660`, by `A387458.P16532837354093161660.correct`). Lean does not check the parsing of the name. -/
def A387458 (n : ℕ) : ℤ :=
  A387458.P16532837354093161660.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(23-17*(n+1)+8*(n+1)²)` (program `A387458.P16532837354093161660`, by `A387458.P16532837354093161660.correct`). Lean does not check the parsing of the name. -/
def A387458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387659.P11348158259407236017

`13*n²+10*n+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387659.P11348158259407236017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n ^ 2 + 10 * n + 3

end

end A387659.P11348158259407236017

noncomputable section

/-- A387659: a(n) = 13*n^2 + 10*n + 3.

Offset 0, canonical program `A387659.P11348158259407236017`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n²+10*n+3` (program `A387659.P11348158259407236017`, by `A387659.P11348158259407236017.correct`). Lean does not check the parsing of the name. -/
def A387659 (n : ℕ) : ℤ :=
  (A387659.P11348158259407236017.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n²+10*n+3` (program `A387659.P11348158259407236017`, by `A387659.P11348158259407236017.correct`). Lean does not check the parsing of the name. -/
def A387659.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387684.P6032393437507945414

`(8*n+1)²*(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387684.P6032393437507945414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n + 1) ^ 2 * (4 * n + 1)

end

end A387684.P6032393437507945414

noncomputable section

/-- A387684: a(n) = (8*n + 1)^2*(4*n + 1).

Offset 0, canonical program `A387684.P6032393437507945414`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)²*(4*n+1)` (program `A387684.P6032393437507945414`, by `A387684.P6032393437507945414.correct`). Lean does not check the parsing of the name. -/
def A387684 (n : ℕ) : ℤ :=
  (A387684.P6032393437507945414.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8*n+1)²*(4*n+1)` (program `A387684.P6032393437507945414`, by `A387684.P6032393437507945414.correct`). Lean does not check the parsing of the name. -/
def A387684.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387922.P17855346880793473304

`3*C(2*(n+1)+1, n+2)-(n+1)²-2*(n+1)-4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387922.P17855346880793473304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (2 * (n + 1) + 1) (n + 2) : ℤ) - ((n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) - 4

end

end A387922.P17855346880793473304

noncomputable section

/-- A387922: a(n) = 3*binomial(2*n+1,n+1) - n^2 - 2*n - 4.

Offset 1, canonical program `A387922.P17855346880793473304`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(2*(n+1)+1, n+2)-(n+1)²-2*(n+1)-4` (program `A387922.P17855346880793473304`, by `A387922.P17855346880793473304.correct`). Lean does not check the parsing of the name. -/
def A387922 (n : ℕ) : ℤ :=
  A387922.P17855346880793473304.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*C(2*(n+1)+1, n+2)-(n+1)²-2*(n+1)-4` (program `A387922.P17855346880793473304`, by `A387922.P17855346880793473304.correct`). Lean does not check the parsing of the name. -/
def A387922.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389120.P1395821468702004072

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389120.P1395821468702004072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 7] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A389120.P1395821468702004072

noncomputable section

/-- A389120: a(n) = 2*a(n-1) + 2*a(n-2) + 2*a(n-3) - a(n-4) with a(0)=0, a(1)=1, a(2)=2, a(3)=7.

Offset 0, canonical program `A389120.P1395821468702004072`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` (program `A389120.P1395821468702004072`, by `A389120.P1395821468702004072.correct`). Lean does not check the parsing of the name. -/
def A389120 (n : ℕ) : ℤ :=
  A389120.P1395821468702004072.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` (program `A389120.P1395821468702004072`, by `A389120.P1395821468702004072.correct`). Lean does not check the parsing of the name. -/
def A389120.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389172.P979450038217868466

`2^(n+2)+4^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389172.P979450038217868466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) + 4 ^ n : ℤ) - 1

end

end A389172.P979450038217868466

noncomputable section

/-- A389172: a(n) = 2^(n+1) + 4^(n-1) - 1.

Offset 1, canonical program `A389172.P979450038217868466`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)+4^n-1` (program `A389172.P979450038217868466`, by `A389172.P979450038217868466.correct`). Lean does not check the parsing of the name. -/
def A389172 (n : ℕ) : ℤ :=
  A389172.P979450038217868466.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)+4^n-1` (program `A389172.P979450038217868466`, by `A389172.P979450038217868466.correct`). Lean does not check the parsing of the name. -/
def A389172.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389178.P3385213191501255692

`3*2^n+3*n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389178.P3385213191501255692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ n + 3 * n + 1

end

end A389178.P3385213191501255692

noncomputable section

/-- A389178: a(n) = 3*2^n + 3*n + 1.

Offset 0, canonical program `A389178.P3385213191501255692`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+3*n+1` (program `A389178.P3385213191501255692`, by `A389178.P3385213191501255692.correct`). Lean does not check the parsing of the name. -/
def A389178 (n : ℕ) : ℤ :=
  (A389178.P3385213191501255692.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+3*n+1` (program `A389178.P3385213191501255692`, by `A389178.P3385213191501255692.correct`). Lean does not check the parsing of the name. -/
def A389178.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389373.P11873220984344781085

`ogf(x/(1-2x-3x^2+6x^3+3x^4-6x^5-x^6+2x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389373.P11873220984344781085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -3, 6, 3, -6, -1, 2] n

end

end A389373.P11873220984344781085

noncomputable section

/-- A389373: Expansion of g.f.: x/((1-x^2)^3*(1-2*x)).

Offset 0, canonical program `A389373.P11873220984344781085`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x-3x^2+6x^3+3x^4-6x^5-x^6+2x^7))` (program `A389373.P11873220984344781085`, by `A389373.P11873220984344781085.correct`). Lean does not check the parsing of the name. -/
def A389373 (n : ℕ) : ℤ :=
  A389373.P11873220984344781085.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1-2x-3x^2+6x^3+3x^4-6x^5-x^6+2x^7))` (program `A389373.P11873220984344781085`, by `A389373.P11873220984344781085.correct`). Lean does not check the parsing of the name. -/
def A389373.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389928.P8211443800923910472

`14*(n+1)²-22*(n+1)+9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389928.P8211443800923910472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (14 * (n + 1) ^ 2 : ℤ) - (22 * (n + 1) : ℤ) + 9

end

end A389928.P8211443800923910472

noncomputable section

/-- A389928: Truncated centered square numbers: a(n) = 14*n^2 - 22*n + 9.

Offset 1, canonical program `A389928.P8211443800923910472`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*(n+1)²-22*(n+1)+9` (program `A389928.P8211443800923910472`, by `A389928.P8211443800923910472.correct`). Lean does not check the parsing of the name. -/
def A389928 (n : ℕ) : ℤ :=
  A389928.P8211443800923910472.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*(n+1)²-22*(n+1)+9` (program `A389928.P8211443800923910472`, by `A389928.P8211443800923910472.correct`). Lean does not check the parsing of the name. -/
def A389928.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390044.P2107968494793019417

`ogf(1/(1-4x+6x^2-4x^3+x^4-x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390044.P2107968494793019417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 6, -4, 1, -1] n

end

end A390044.P2107968494793019417

noncomputable section

/-- A390044: Expansion of 1 / ((1-x)^4 - x^5).

Offset 0, canonical program `A390044.P2107968494793019417`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^5))` (program `A390044.P2107968494793019417`, by `A390044.P2107968494793019417.correct`). Lean does not check the parsing of the name. -/
def A390044 (n : ℕ) : ℤ :=
  A390044.P2107968494793019417.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^5))` (program `A390044.P2107968494793019417`, by `A390044.P2107968494793019417.correct`). Lean does not check the parsing of the name. -/
def A390044.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390045.P4577038485087996516

`ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390045.P4577038485087996516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 10, -10, 5, -1, -1] n

end

end A390045.P4577038485087996516

noncomputable section

/-- A390045: Expansion of 1 / ((1-x)^5 - x^6).

Offset 0, canonical program `A390045.P4577038485087996516`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))` (program `A390045.P4577038485087996516`, by `A390045.P4577038485087996516.correct`). Lean does not check the parsing of the name. -/
def A390045 (n : ℕ) : ℤ :=
  A390045.P4577038485087996516.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))` (program `A390045.P4577038485087996516`, by `A390045.P4577038485087996516.correct`). Lean does not check the parsing of the name. -/
def A390045.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390311.P13234706816563629693

`n!*(4^(n+1)-3^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390311.P13234706816563629693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ))

end

end A390311.P13234706816563629693

noncomputable section

/-- A390311: a(n) = n!*(4^(n+1) - 3^(n+1)).

Offset 0, canonical program `A390311.P13234706816563629693`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(4^(n+1)-3^(n+1))` (program `A390311.P13234706816563629693`, by `A390311.P13234706816563629693.correct`). Lean does not check the parsing of the name. -/
def A390311 (n : ℕ) : ℤ :=
  A390311.P13234706816563629693.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(4^(n+1)-3^(n+1))` (program `A390311.P13234706816563629693`, by `A390311.P13234706816563629693.correct`). Lean does not check the parsing of the name. -/
def A390311.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390501.P11829287581223766444

`floor((4^(n+1)-3^(n+1)-(n+1)+2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390501.P11829287581223766444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) - (n + 1 : ℤ) + 2 : ℚ) / 2⌋

end

end A390501.P11829287581223766444

noncomputable section

/-- A390501: a(n) = floor((4^n - 3^n - n + 2)/2).

Offset 1, canonical program `A390501.P11829287581223766444`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((4^(n+1)-3^(n+1)-(n+1)+2)/2)` (program `A390501.P11829287581223766444`, by `A390501.P11829287581223766444.correct`). Lean does not check the parsing of the name. -/
def A390501 (n : ℕ) : ℤ :=
  A390501.P11829287581223766444.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((4^(n+1)-3^(n+1)-(n+1)+2)/2)` (program `A390501.P11829287581223766444`, by `A390501.P11829287581223766444.correct`). Lean does not check the parsing of the name. -/
def A390501.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390565.P17191714061800070819

`floor(n²/3+n^3/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390565.P17191714061800070819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 3 + (n ^ 3 : ℚ) / 2⌋

end

end A390565.P17191714061800070819

noncomputable section

/-- A390565: a(n) = floor(n^2/3 + n^3/2).

Offset 0, canonical program `A390565.P17191714061800070819`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/3+n^3/2)` (program `A390565.P17191714061800070819`, by `A390565.P17191714061800070819.correct`). Lean does not check the parsing of the name. -/
def A390565 (n : ℕ) : ℤ :=
  A390565.P17191714061800070819.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/3+n^3/2)` (program `A390565.P17191714061800070819`, by `A390565.P17191714061800070819.correct`). Lean does not check the parsing of the name. -/
def A390565.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391105.P9636538939398143610

`C(4*n, n)-C(3*n, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391105.P9636538939398143610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) n : ℤ) - (Nat.choose (3 * n) n : ℤ)

end

end A391105.P9636538939398143610

noncomputable section

/-- A391105: a(n) = binomial(4*n,n) - binomial(3*n,n).

Offset 0, canonical program `A391105.P9636538939398143610`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n, n)-C(3*n, n)` (program `A391105.P9636538939398143610`, by `A391105.P9636538939398143610.correct`). Lean does not check the parsing of the name. -/
def A391105 (n : ℕ) : ℤ :=
  A391105.P9636538939398143610.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n, n)-C(3*n, n)` (program `A391105.P9636538939398143610`, by `A391105.P9636538939398143610.correct`). Lean does not check the parsing of the name. -/
def A391105.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391372.P15539026576737795917

`2*a(n-1)²+a(n-1)+1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391372.P15539026576737795917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) ^ 2 + a (n - 1) + 1

end

end A391372.P15539026576737795917

noncomputable section

/-- A391372: a(n) = 2*a(n-1)^2 + a(n-1) + 1 with a(0) = 0.

Offset 0, canonical program `A391372.P15539026576737795917`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²+a(n-1)+1` (program `A391372.P15539026576737795917`, by `A391372.P15539026576737795917.correct`). Lean does not check the parsing of the name. -/
def A391372 (n : ℕ) : ℤ :=
  (A391372.P15539026576737795917.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²+a(n-1)+1` (program `A391372.P15539026576737795917`, by `A391372.P15539026576737795917.correct`). Lean does not check the parsing of the name. -/
def A391372.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391888.P18368503689218933571

`n*(a(n-1)+2)` with `a(0)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391888.P18368503689218933571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  n * (a (n - 1) + 2)

end

end A391888.P18368503689218933571

noncomputable section

/-- A391888: a(0)=5 and a(n) = n*(a(n-1) + 2) for n > 0.

Offset 0, canonical program `A391888.P18368503689218933571`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+2)` (program `A391888.P18368503689218933571`, by `A391888.P18368503689218933571.correct`). Lean does not check the parsing of the name. -/
def A391888 (n : ℕ) : ℤ :=
  (A391888.P18368503689218933571.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)+2)` (program `A391888.P18368503689218933571`, by `A391888.P18368503689218933571.correct`). Lean does not check the parsing of the name. -/
def A391888.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391978.P13048129619013983909

`2*(n+1)*C(n+1, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391978.P13048129619013983909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) * Nat.choose (n + 1) 4

end

end A391978.P13048129619013983909

noncomputable section

/-- A391978: a(n) = 2*n*binomial(n, 4).

Offset 1, canonical program `A391978.P13048129619013983909`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*C(n+1, 4)` (program `A391978.P13048129619013983909`, by `A391978.P13048129619013983909.correct`). Lean does not check the parsing of the name. -/
def A391978 (n : ℕ) : ℤ :=
  (A391978.P13048129619013983909.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*C(n+1, 4)` (program `A391978.P13048129619013983909`, by `A391978.P13048129619013983909.correct`). Lean does not check the parsing of the name. -/
def A391978.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391993.P7779664526921795811

`ogf((14x-2x^2)/(1-3x+3x^2-x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391993.P7779664526921795811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 14, -2] [1, -3, 3, -1] n

end

end A391993.P7779664526921795811

noncomputable section

/-- A391993: Expansion of (2*x*(x - 7))/(x - 1)^3.

Offset 0, canonical program `A391993.P7779664526921795811`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((14x-2x^2)/(1-3x+3x^2-x^3))` (program `A391993.P7779664526921795811`, by `A391993.P7779664526921795811.correct`). Lean does not check the parsing of the name. -/
def A391993 (n : ℕ) : ℤ :=
  A391993.P7779664526921795811.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((14x-2x^2)/(1-3x+3x^2-x^3))` (program `A391993.P7779664526921795811`, by `A391993.P7779664526921795811.correct`). Lean does not check the parsing of the name. -/
def A391993.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391994.P5305675760337210624

`ogf((-x^2+3x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391994.P5305675760337210624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, -1, 3] [1, -3, 2, 2, -3, 1] n

end

end A391994.P5305675760337210624

noncomputable section

/-- A391994: Expansion of (x^2*(3*x - 1))/((x - 1)^4*(x + 1)).

Offset 0, canonical program `A391994.P5305675760337210624`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-x^2+3x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` (program `A391994.P5305675760337210624`, by `A391994.P5305675760337210624.correct`). Lean does not check the parsing of the name. -/
def A391994 (n : ℕ) : ℤ :=
  A391994.P5305675760337210624.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((-x^2+3x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` (program `A391994.P5305675760337210624`, by `A391994.P5305675760337210624.correct`). Lean does not check the parsing of the name. -/
def A391994.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392083.P6764457592341736571

`2*a(n-1)+2^(n+1)-1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392083.P6764457592341736571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (2 ^ (n + 1) : ℤ) - 1

end

end A392083.P6764457592341736571

noncomputable section

/-- A392083: a(n) = 2*a(n-1) + 2^(n+1) - 1, a(0) = 0.

Offset 0, canonical program `A392083.P6764457592341736571`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2^(n+1)-1` (program `A392083.P6764457592341736571`, by `A392083.P6764457592341736571.correct`). Lean does not check the parsing of the name. -/
def A392083 (n : ℕ) : ℤ :=
  A392083.P6764457592341736571.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2^(n+1)-1` (program `A392083.P6764457592341736571`, by `A392083.P6764457592341736571.correct`). Lean does not check the parsing of the name. -/
def A392083.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392084.P2703423043962625915

`3*a(n-1)+2*3^n-1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392084.P2703423043962625915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a (n - 1) + (2 * 3 ^ n : ℤ) - 1

end

end A392084.P2703423043962625915

noncomputable section

/-- A392084: a(n) = 3*a(n-1) + 2*3^n - 1, a(0) = 0.

Offset 0, canonical program `A392084.P2703423043962625915`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*3^n-1` (program `A392084.P2703423043962625915`, by `A392084.P2703423043962625915.correct`). Lean does not check the parsing of the name. -/
def A392084 (n : ℕ) : ℤ :=
  A392084.P2703423043962625915.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+2*3^n-1` (program `A392084.P2703423043962625915`, by `A392084.P2703423043962625915.correct`). Lean does not check the parsing of the name. -/
def A392084.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392137.P10162217843878784996

`5*a(n-1)+2*5^n-1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392137.P10162217843878784996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 * a (n - 1) + (2 * 5 ^ n : ℤ) - 1

end

end A392137.P10162217843878784996

noncomputable section

/-- A392137: a(n) = 5*a(n-1) + 2*5^n - 1, a(0) = 0.

Offset 0, canonical program `A392137.P10162217843878784996`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+2*5^n-1` (program `A392137.P10162217843878784996`, by `A392137.P10162217843878784996.correct`). Lean does not check the parsing of the name. -/
def A392137 (n : ℕ) : ℤ :=
  A392137.P10162217843878784996.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+2*5^n-1` (program `A392137.P10162217843878784996`, by `A392137.P10162217843878784996.correct`). Lean does not check the parsing of the name. -/
def A392137.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392138.P9581258514697756988

`7*a(n-1)+2*7^n-1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392138.P9581258514697756988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  7 * a (n - 1) + (2 * 7 ^ n : ℤ) - 1

end

end A392138.P9581258514697756988

noncomputable section

/-- A392138: a(n) = 7*a(n-1) + 2*7^n - 1, a(0) = 0.

Offset 0, canonical program `A392138.P9581258514697756988`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+2*7^n-1` (program `A392138.P9581258514697756988`, by `A392138.P9581258514697756988.correct`). Lean does not check the parsing of the name. -/
def A392138 (n : ℕ) : ℤ :=
  A392138.P9581258514697756988.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+2*7^n-1` (program `A392138.P9581258514697756988`, by `A392138.P9581258514697756988.correct`). Lean does not check the parsing of the name. -/
def A392138.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392143.P9176097518162991182

`((n+1)^n-1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392143.P9176097518162991182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ n : ℤ) - 1) ^ (n + 1)

end

end A392143.P9176097518162991182

noncomputable section

/-- A392143: a(n) = (n^(n - 1) - 1)^n.

Offset 1, canonical program `A392143.P9176097518162991182`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^n-1)^(n+1)` (program `A392143.P9176097518162991182`, by `A392143.P9176097518162991182.correct`). Lean does not check the parsing of the name. -/
def A392143 (n : ℕ) : ℤ :=
  A392143.P9176097518162991182.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)^n-1)^(n+1)` (program `A392143.P9176097518162991182`, by `A392143.P9176097518162991182.correct`). Lean does not check the parsing of the name. -/
def A392143.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392331.P6151116667762879899

`3^n*(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392331.P6151116667762879899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (4 * n + 1)

end

end A392331.P6151116667762879899

noncomputable section

/-- A392331: a(n) = 3^n*(4*n+1).

Offset 0, canonical program `A392331.P6151116667762879899`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(4*n+1)` (program `A392331.P6151116667762879899`, by `A392331.P6151116667762879899.correct`). Lean does not check the parsing of the name. -/
def A392331 (n : ℕ) : ℤ :=
  (A392331.P6151116667762879899.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(4*n+1)` (program `A392331.P6151116667762879899`, by `A392331.P6151116667762879899.correct`). Lean does not check the parsing of the name. -/
def A392331.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392540.P278826574860282482

`ogf(1/(1-2x+x^2-x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392540.P278826574860282482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 0, 0, -1] n

end

end A392540.P278826574860282482

noncomputable section

/-- A392540: Expansion of 1 / ((1-x)^2 - x^5).

Offset 0, canonical program `A392540.P278826574860282482`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^5))` (program `A392540.P278826574860282482`, by `A392540.P278826574860282482.correct`). Lean does not check the parsing of the name. -/
def A392540 (n : ℕ) : ℤ :=
  A392540.P278826574860282482.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^5))` (program `A392540.P278826574860282482`, by `A392540.P278826574860282482.correct`). Lean does not check the parsing of the name. -/
def A392540.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392541.P3744005679357272477

`ogf(1/(1-2x+x^2-x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392541.P3744005679357272477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 0, 0, 0, -1] n

end

end A392541.P3744005679357272477

noncomputable section

/-- A392541: Expansion of 1 / ((1-x)^2 - x^6).

Offset 0, canonical program `A392541.P3744005679357272477`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^6))` (program `A392541.P3744005679357272477`, by `A392541.P3744005679357272477.correct`). Lean does not check the parsing of the name. -/
def A392541 (n : ℕ) : ℤ :=
  A392541.P3744005679357272477.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^6))` (program `A392541.P3744005679357272477`, by `A392541.P3744005679357272477.correct`). Lean does not check the parsing of the name. -/
def A392541.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392542.P6245958975022901070

`ogf(1/(1-4x+6x^2-4x^3+x^4-x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392542.P6245958975022901070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 6, -4, 1, 0, -1] n

end

end A392542.P6245958975022901070

noncomputable section

/-- A392542: Expansion of 1 / ((1-x)^4 - x^6).

Offset 0, canonical program `A392542.P6245958975022901070`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^6))` (program `A392542.P6245958975022901070`, by `A392542.P6245958975022901070.correct`). Lean does not check the parsing of the name. -/
def A392542 (n : ℕ) : ℤ :=
  A392542.P6245958975022901070.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^6))` (program `A392542.P6245958975022901070`, by `A392542.P6245958975022901070.correct`). Lean does not check the parsing of the name. -/
def A392542.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392543.P4168456153235537033

`ogf(1/(1-2x+x^2-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392543.P4168456153235537033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, 0, 0, 0, 0, -1] n

end

end A392543.P4168456153235537033

noncomputable section

/-- A392543: Expansion of 1 / ((1-x)^2 - x^7).

Offset 0, canonical program `A392543.P4168456153235537033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^7))` (program `A392543.P4168456153235537033`, by `A392543.P4168456153235537033.correct`). Lean does not check the parsing of the name. -/
def A392543 (n : ℕ) : ℤ :=
  A392543.P4168456153235537033.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-x^7))` (program `A392543.P4168456153235537033`, by `A392543.P4168456153235537033.correct`). Lean does not check the parsing of the name. -/
def A392543.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392544.P3085749570705167695

`ogf(1/(1-3x+3x^2-x^3-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392544.P3085749570705167695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 3, -1, 0, 0, 0, -1] n

end

end A392544.P3085749570705167695

noncomputable section

/-- A392544: Expansion of 1 / ((1-x)^3 - x^7).

Offset 0, canonical program `A392544.P3085749570705167695`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^3-x^7))` (program `A392544.P3085749570705167695`, by `A392544.P3085749570705167695.correct`). Lean does not check the parsing of the name. -/
def A392544 (n : ℕ) : ℤ :=
  A392544.P3085749570705167695.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^3-x^7))` (program `A392544.P3085749570705167695`, by `A392544.P3085749570705167695.correct`). Lean does not check the parsing of the name. -/
def A392544.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392545.P16982425835040831362

`ogf(1/(1-4x+6x^2-4x^3+x^4-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392545.P16982425835040831362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 6, -4, 1, 0, 0, -1] n

end

end A392545.P16982425835040831362

noncomputable section

/-- A392545: Expansion of 1 / ((1-x)^4 - x^7).

Offset 0, canonical program `A392545.P16982425835040831362`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^7))` (program `A392545.P16982425835040831362`, by `A392545.P16982425835040831362.correct`). Lean does not check the parsing of the name. -/
def A392545 (n : ℕ) : ℤ :=
  A392545.P16982425835040831362.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^7))` (program `A392545.P16982425835040831362`, by `A392545.P16982425835040831362.correct`). Lean does not check the parsing of the name. -/
def A392545.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392546.P14662061870023942434

`ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392546.P14662061870023942434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 10, -10, 5, -1, 0, -1] n

end

end A392546.P14662061870023942434

noncomputable section

/-- A392546: Expansion of 1 / ((1-x)^5 - x^7).

Offset 0, canonical program `A392546.P14662061870023942434`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^7))` (program `A392546.P14662061870023942434`, by `A392546.P14662061870023942434.correct`). Lean does not check the parsing of the name. -/
def A392546 (n : ℕ) : ℤ :=
  A392546.P14662061870023942434.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^7))` (program `A392546.P14662061870023942434`, by `A392546.P14662061870023942434.correct`). Lean does not check the parsing of the name. -/
def A392546.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392547.P5007982579981245019

`ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392547.P5007982579981245019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 15, -20, 15, -6, 1, -1] n

end

end A392547.P5007982579981245019

noncomputable section

/-- A392547: Expansion of 1 / ((1-x)^6 - x^7).

Offset 0, canonical program `A392547.P5007982579981245019`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6-x^7))` (program `A392547.P5007982579981245019`, by `A392547.P5007982579981245019.correct`). Lean does not check the parsing of the name. -/
def A392547 (n : ℕ) : ℤ :=
  A392547.P5007982579981245019.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6-x^7))` (program `A392547.P5007982579981245019`, by `A392547.P5007982579981245019.correct`). Lean does not check the parsing of the name. -/
def A392547.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392552.P10664071544742040902

`ogf(1/(1-4x+6x^2-4x^3-x^4+4x^5-2x^6+x^8))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392552.P10664071544742040902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 6, -4, -1, 4, -2, 0, 1] n

end

end A392552.P10664071544742040902

noncomputable section

/-- A392552: Expansion of 1 / ((1-x)^2 - x^4)^2.

Offset 0, canonical program `A392552.P10664071544742040902`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3-x^4+4x^5-2x^6+x^8))` (program `A392552.P10664071544742040902`, by `A392552.P10664071544742040902.correct`). Lean does not check the parsing of the name. -/
def A392552 (n : ℕ) : ℤ :=
  A392552.P10664071544742040902.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3-x^4+4x^5-2x^6+x^8))` (program `A392552.P10664071544742040902`, by `A392552.P10664071544742040902.correct`). Lean does not check the parsing of the name. -/
def A392552.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392553.P4453686680860327887

`ogf(1/(1-4x+6x^2-4x^3+x^4-2x^5+4x^6-2x^7+x^10))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392553.P4453686680860327887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 6, -4, 1, -2, 4, -2, 0, 0, 1] n

end

end A392553.P4453686680860327887

noncomputable section

/-- A392553: Expansion of 1 / ((1-x)^2 - x^5)^2.

Offset 0, canonical program `A392553.P4453686680860327887`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-2x^5+4x^6-2x^7+x^10))` (program `A392553.P4453686680860327887`, by `A392553.P4453686680860327887.correct`). Lean does not check the parsing of the name. -/
def A392553 (n : ℕ) : ℤ :=
  A392553.P4453686680860327887.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-2x^5+4x^6-2x^7+x^10))` (program `A392553.P4453686680860327887`, by `A392553.P4453686680860327887.correct`). Lean does not check the parsing of the name. -/
def A392553.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392554.P17253667815891835020

`ogf(1/(1-4x+6x^2-4x^3+x^4-2x^6+4x^7-2x^8+x^12))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392554.P17253667815891835020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 6, -4, 1, 0, -2, 4, -2, 0, 0, 0, 1] n

end

end A392554.P17253667815891835020

noncomputable section

/-- A392554: Expansion of 1 / ((1-x)^2 - x^6)^2.

Offset 0, canonical program `A392554.P17253667815891835020`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-2x^6+4x^7-2x^8+x^12))` (program `A392554.P17253667815891835020`, by `A392554.P17253667815891835020.correct`). Lean does not check the parsing of the name. -/
def A392554 (n : ℕ) : ℤ :=
  A392554.P17253667815891835020.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-2x^6+4x^7-2x^8+x^12))` (program `A392554.P17253667815891835020`, by `A392554.P17253667815891835020.correct`). Lean does not check the parsing of the name. -/
def A392554.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392578.P10088105604886602802

`ogf(1/(1-8x+22x^2-26x^3+17x^4-6x^5+x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392578.P10088105604886602802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 22, -26, 17, -6, 1] n

end

end A392578.P10088105604886602802

noncomputable section

/-- A392578: Expansion of 1 / ((1-x)^3 - x)^2.

Offset 0, canonical program `A392578.P10088105604886602802`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+22x^2-26x^3+17x^4-6x^5+x^6))` (program `A392578.P10088105604886602802`, by `A392578.P10088105604886602802.correct`). Lean does not check the parsing of the name. -/
def A392578 (n : ℕ) : ℤ :=
  A392578.P10088105604886602802.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+22x^2-26x^3+17x^4-6x^5+x^6))` (program `A392578.P10088105604886602802`, by `A392578.P10088105604886602802.correct`). Lean does not check the parsing of the name. -/
def A392578.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392579.P9642938909060208145

`ogf(1/(1-10x+37x^2-68x^3+78x^4-58x^5+28x^6-8x^7+x^8))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392579.P9642938909060208145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 37, -68, 78, -58, 28, -8, 1] n

end

end A392579.P9642938909060208145

noncomputable section

/-- A392579: Expansion of 1 / ((1-x)^4 - x)^2.

Offset 0, canonical program `A392579.P9642938909060208145`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+37x^2-68x^3+78x^4-58x^5+28x^6-8x^7+x^8))` (program `A392579.P9642938909060208145`, by `A392579.P9642938909060208145.correct`). Lean does not check the parsing of the name. -/
def A392579 (n : ℕ) : ℤ :=
  A392579.P9642938909060208145.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+37x^2-68x^3+78x^4-58x^5+28x^6-8x^7+x^8))` (program `A392579.P9642938909060208145`, by `A392579.P9642938909060208145.correct`). Lean does not check the parsing of the name. -/
def A392579.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392581.P7704139350939474602

`ogf(1/(1-6x+13x^2-14x^3+10x^4-4x^5+x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392581.P7704139350939474602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 13, -14, 10, -4, 1] n

end

end A392581.P7704139350939474602

noncomputable section

/-- A392581: Expansion of 1 / ((1-x)^3 - x^2)^2.

Offset 0, canonical program `A392581.P7704139350939474602`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+13x^2-14x^3+10x^4-4x^5+x^6))` (program `A392581.P7704139350939474602`, by `A392581.P7704139350939474602.correct`). Lean does not check the parsing of the name. -/
def A392581 (n : ℕ) : ℤ :=
  A392581.P7704139350939474602.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+13x^2-14x^3+10x^4-4x^5+x^6))` (program `A392581.P7704139350939474602`, by `A392581.P7704139350939474602.correct`). Lean does not check the parsing of the name. -/
def A392581.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392582.P8391907930882077202

`ogf(1/(1-8x+26x^2-48x^3+59x^4-48x^5+26x^6-8x^7+x^8))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392582.P8391907930882077202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 26, -48, 59, -48, 26, -8, 1] n

end

end A392582.P8391907930882077202

noncomputable section

/-- A392582: Expansion of 1 / ((1-x)^4 - x^2)^2.

Offset 0, canonical program `A392582.P8391907930882077202`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+26x^2-48x^3+59x^4-48x^5+26x^6-8x^7+x^8))` (program `A392582.P8391907930882077202`, by `A392582.P8391907930882077202.correct`). Lean does not check the parsing of the name. -/
def A392582 (n : ℕ) : ℤ :=
  A392582.P8391907930882077202.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+26x^2-48x^3+59x^4-48x^5+26x^6-8x^7+x^8))` (program `A392582.P8391907930882077202`, by `A392582.P8391907930882077202.correct`). Lean does not check the parsing of the name. -/
def A392582.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392584.P100911584461057635

`ogf(1/(1-6x+15x^2-22x^3+21x^4-12x^5+4x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392584.P100911584461057635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 15, -22, 21, -12, 4] n

end

end A392584.P100911584461057635

noncomputable section

/-- A392584: Expansion of 1 / ((1-x)^3 - x^3)^2.

Offset 0, canonical program `A392584.P100911584461057635`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-22x^3+21x^4-12x^5+4x^6))` (program `A392584.P100911584461057635`, by `A392584.P100911584461057635.correct`). Lean does not check the parsing of the name. -/
def A392584 (n : ℕ) : ℤ :=
  A392584.P100911584461057635.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-22x^3+21x^4-12x^5+4x^6))` (program `A392584.P100911584461057635`, by `A392584.P100911584461057635.correct`). Lean does not check the parsing of the name. -/
def A392584.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392585.P12874651179010104792

`ogf(1/(1-8x+28x^2-58x^3+78x^4-68x^5+37x^6-10x^7+x^8))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392585.P12874651179010104792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 28, -58, 78, -68, 37, -10, 1] n

end

end A392585.P12874651179010104792

noncomputable section

/-- A392585: Expansion of 1 / ((1-x)^4 - x^3)^2.

Offset 0, canonical program `A392585.P12874651179010104792`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-58x^3+78x^4-68x^5+37x^6-10x^7+x^8))` (program `A392585.P12874651179010104792`, by `A392585.P12874651179010104792.correct`). Lean does not check the parsing of the name. -/
def A392585 (n : ℕ) : ℤ :=
  A392585.P12874651179010104792.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-58x^3+78x^4-68x^5+37x^6-10x^7+x^8))` (program `A392585.P12874651179010104792`, by `A392585.P12874651179010104792.correct`). Lean does not check the parsing of the name. -/
def A392585.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392587.P7012137870044200979

`ogf(1/(1-6x+15x^2-20x^3+13x^4-5x^6+2x^7+x^8))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392587.P7012137870044200979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 15, -20, 13, 0, -5, 2, 1] n

end

end A392587.P7012137870044200979

noncomputable section

/-- A392587: Expansion of 1 / ((1-x)^3 - x^4)^2.

Offset 0, canonical program `A392587.P7012137870044200979`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-20x^3+13x^4-5x^6+2x^7+x^8))` (program `A392587.P7012137870044200979`, by `A392587.P7012137870044200979.correct`). Lean does not check the parsing of the name. -/
def A392587 (n : ℕ) : ℤ :=
  A392587.P7012137870044200979.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-20x^3+13x^4-5x^6+2x^7+x^8))` (program `A392587.P7012137870044200979`, by `A392587.P7012137870044200979.correct`). Lean does not check the parsing of the name. -/
def A392587.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392588.P73157773485409300

`ogf(1/(1-8x+28x^2-56x^3+68x^4-48x^5+16x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392588.P73157773485409300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 28, -56, 68, -48, 16] n

end

end A392588.P73157773485409300

noncomputable section

/-- A392588: Expansion of 1 / ((1-x)^4 - x^4)^2.

Offset 0, canonical program `A392588.P73157773485409300`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-56x^3+68x^4-48x^5+16x^6))` (program `A392588.P73157773485409300`, by `A392588.P73157773485409300.correct`). Lean does not check the parsing of the name. -/
def A392588 (n : ℕ) : ℤ :=
  A392588.P73157773485409300.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-56x^3+68x^4-48x^5+16x^6))` (program `A392588.P73157773485409300`, by `A392588.P73157773485409300.correct`). Lean does not check the parsing of the name. -/
def A392588.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392638.P10015609340432045962

`ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392638.P10015609340432045962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 28, -56, 70, -58, 36, -20, 9, -2, 1] n

end

end A392638.P10015609340432045962

noncomputable section

/-- A392638: Expansion of 1 / ((1-x)^4 - x^5)^2.

Offset 0, canonical program `A392638.P10015609340432045962`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))` (program `A392638.P10015609340432045962`, by `A392638.P10015609340432045962.correct`). Lean does not check the parsing of the name. -/
def A392638 (n : ℕ) : ℤ :=
  A392638.P10015609340432045962.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-56x^3+70x^4-58x^5+36x^6-20x^7+9x^8-2x^9+x^10))` (program `A392638.P10015609340432045962`, by `A392638.P10015609340432045962.correct`). Lean does not check the parsing of the name. -/
def A392638.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392898.P13758147942873924454

`a(n-1)+a(n-2)+n!` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392898.P13758147942873924454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + Nat.factorial n

end

end A392898.P13758147942873924454

noncomputable section

/-- A392898: a(n) = a(n-1) + a(n-2) + n! with a(0)=0, a(1)=1.

Offset 0, canonical program `A392898.P13758147942873924454`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n!` (program `A392898.P13758147942873924454`, by `A392898.P13758147942873924454.correct`). Lean does not check the parsing of the name. -/
def A392898 (n : ℕ) : ℤ :=
  (A392898.P13758147942873924454.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n!` (program `A392898.P13758147942873924454`, by `A392898.P13758147942873924454.correct`). Lean does not check the parsing of the name. -/
def A392898.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393192.P1074485609385906581

`32*(n+1)^3-72*(n+1)²+60*(n+1)-19`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393192.P1074485609385906581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 * (n + 1) ^ 3 : ℤ) - (72 * (n + 1) ^ 2 : ℤ) + (60 * (n + 1) : ℤ) - 19

end

end A393192.P1074485609385906581

noncomputable section

/-- A393192: a(n) = 32*n^3 - 72*n^2 + 60*n - 19.

Offset 1, canonical program `A393192.P1074485609385906581`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1)^3-72*(n+1)²+60*(n+1)-19` (program `A393192.P1074485609385906581`, by `A393192.P1074485609385906581.correct`). Lean does not check the parsing of the name. -/
def A393192 (n : ℕ) : ℤ :=
  A393192.P1074485609385906581.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*(n+1)^3-72*(n+1)²+60*(n+1)-19` (program `A393192.P1074485609385906581`, by `A393192.P1074485609385906581.correct`). Lean does not check the parsing of the name. -/
def A393192.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393231.P17955154013371398717

`ogf((3x+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393231.P17955154013371398717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, -1] [1, -4, 6, -4, 1] n

end

end A393231.P17955154013371398717

noncomputable section

/-- A393231: Expansion of x^2 * (3+x-x^2) / (1-x)^4.

Offset 1, canonical program `A393231.P17955154013371398717`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` (program `A393231.P17955154013371398717`, by `A393231.P17955154013371398717.correct`). Lean does not check the parsing of the name. -/
def A393231 (n : ℕ) : ℤ :=
  A393231.P17955154013371398717.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x+x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` (program `A393231.P17955154013371398717`, by `A393231.P17955154013371398717.correct`). Lean does not check the parsing of the name. -/
def A393231.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393382.P1849362086677719438

`2*a(n-1)+a(floor(n/3))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393382.P1849362086677719438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + a ⌊(n : ℚ) / 3⌋.toNat

end

end A393382.P1849362086677719438

noncomputable section

/-- A393382: a(0) = 1; a(n) = 2 * a(n-1) + a(floor(n/3)).

Offset 0, canonical program `A393382.P1849362086677719438`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(floor(n/3))` (program `A393382.P1849362086677719438`, by `A393382.P1849362086677719438.correct`). Lean does not check the parsing of the name. -/
def A393382 (n : ℕ) : ℤ :=
  (A393382.P1849362086677719438.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(floor(n/3))` (program `A393382.P1849362086677719438`, by `A393382.P1849362086677719438.correct`). Lean does not check the parsing of the name. -/
def A393382.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393384.P9696780041643210683

`a(n-1)+2*a(floor(n/3))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393384.P9696780041643210683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * a ⌊(n : ℚ) / 3⌋.toNat

end

end A393384.P9696780041643210683

noncomputable section

/-- A393384: a(0) = 1; a(n) = a(n-1) + 2 * a(floor(n/3)).

Offset 0, canonical program `A393384.P9696780041643210683`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(floor(n/3))` (program `A393384.P9696780041643210683`, by `A393384.P9696780041643210683.correct`). Lean does not check the parsing of the name. -/
def A393384 (n : ℕ) : ℤ :=
  (A393384.P9696780041643210683.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(floor(n/3))` (program `A393384.P9696780041643210683`, by `A393384.P9696780041643210683.correct`). Lean does not check the parsing of the name. -/
def A393384.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393448.P18083745715759526505

`3*n²-2*n+1+floor(n²/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393448.P18083745715759526505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - (2 * n : ℤ) + 1 + ⌊(n ^ 2 : ℚ) / 4⌋

end

end A393448.P18083745715759526505

noncomputable section

/-- A393448: a(n) = 3*n^2-2*n+1+floor(n^2/4).

Offset 0, canonical program `A393448.P18083745715759526505`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+1+floor(n²/4)` (program `A393448.P18083745715759526505`, by `A393448.P18083745715759526505.correct`). Lean does not check the parsing of the name. -/
def A393448 (n : ℕ) : ℤ :=
  A393448.P18083745715759526505.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+1+floor(n²/4)` (program `A393448.P18083745715759526505`, by `A393448.P18083745715759526505.correct`). Lean does not check the parsing of the name. -/
def A393448.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393655.P8117864334474351213

`3^n*(16*(n+3)-13)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393655.P8117864334474351213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ((16 * (n + 3) : ℤ) - 13)

end

end A393655.P8117864334474351213

noncomputable section

/-- A393655: Total number of descents over all paths from a fixed vertex on level 2*(n+1) to level 1 in the 3-Bratteli diagram, a(n) = 3^(n-3)*(16*n-13), n>=3.

Offset 3, canonical program `A393655.P8117864334474351213`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(16*(n+3)-13)` (program `A393655.P8117864334474351213`, by `A393655.P8117864334474351213.correct`). Lean does not check the parsing of the name. -/
def A393655 (n : ℕ) : ℤ :=
  A393655.P8117864334474351213.a (n - 3)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(16*(n+3)-13)` (program `A393655.P8117864334474351213`, by `A393655.P8117864334474351213.correct`). Lean does not check the parsing of the name. -/
def A393655.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393662.P12609403442720714031

`3^n*(16*(n+3)-15)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393662.P12609403442720714031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ((16 * (n + 3) : ℤ) - 15)

end

end A393662.P12609403442720714031

noncomputable section

/-- A393662: A sequence arising from the 3-Bratteli diagram, a(n) = 3^(n - 3)*(16*n - 15), n>=3.

Offset 3, canonical program `A393662.P12609403442720714031`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(16*(n+3)-15)` (program `A393662.P12609403442720714031`, by `A393662.P12609403442720714031.correct`). Lean does not check the parsing of the name. -/
def A393662 (n : ℕ) : ℤ :=
  A393662.P12609403442720714031.a (n - 3)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*(16*(n+3)-15)` (program `A393662.P12609403442720714031`, by `A393662.P12609403442720714031.correct`). Lean does not check the parsing of the name. -/
def A393662.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393982.P12248329740450704825

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=7, a(2)=49, a(3)=56`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393982.P12248329740450704825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 49, 56] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A393982.P12248329740450704825

noncomputable section

/-- A393982: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 7, a(2) = 49, a(3) = 56.

Offset 0, canonical program `A393982.P12248329740450704825`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A393982.P12248329740450704825`, by `A393982.P12248329740450704825.correct`). Lean does not check the parsing of the name. -/
def A393982 (n : ℕ) : ℤ :=
  (A393982.P12248329740450704825.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A393982.P12248329740450704825`, by `A393982.P12248329740450704825.correct`). Lean does not check the parsing of the name. -/
def A393982.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394192.P9267180659231015820

`n^3-n²+5*n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394192.P9267180659231015820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (n ^ 2 : ℤ) + (5 * n : ℤ) + 2

end

end A394192.P9267180659231015820

noncomputable section

/-- A394192: a(n) = n^3 - n^2 + 5*n + 2.

Offset 0, canonical program `A394192.P9267180659231015820`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²+5*n+2` (program `A394192.P9267180659231015820`, by `A394192.P9267180659231015820.correct`). Lean does not check the parsing of the name. -/
def A394192 (n : ℕ) : ℤ :=
  A394192.P9267180659231015820.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-n²+5*n+2` (program `A394192.P9267180659231015820`, by `A394192.P9267180659231015820.correct`). Lean does not check the parsing of the name. -/
def A394192.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394222.P9982478139255054001

`(n+1)*gcd(5, n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394222.P9982478139255054001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 5 (n + 1)

end

end A394222.P9982478139255054001

noncomputable section

/-- A394222: a(n) = n * gcd(5, n).

Offset 1, canonical program `A394222.P9982478139255054001`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*gcd(5, n+1)` (program `A394222.P9982478139255054001`, by `A394222.P9982478139255054001.correct`). Lean does not check the parsing of the name. -/
def A394222 (n : ℕ) : ℤ :=
  (A394222.P9982478139255054001.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*gcd(5, n+1)` (program `A394222.P9982478139255054001`, by `A394222.P9982478139255054001.correct`). Lean does not check the parsing of the name. -/
def A394222.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394223.P6208972729423307326

`(n+1)*gcd(7, n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394223.P6208972729423307326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 7 (n + 1)

end

end A394223.P6208972729423307326

noncomputable section

/-- A394223: a(n) = n * gcd(7, n).

Offset 1, canonical program `A394223.P6208972729423307326`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*gcd(7, n+1)` (program `A394223.P6208972729423307326`, by `A394223.P6208972729423307326.correct`). Lean does not check the parsing of the name. -/
def A394223 (n : ℕ) : ℤ :=
  (A394223.P6208972729423307326.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*gcd(7, n+1)` (program `A394223.P6208972729423307326`, by `A394223.P6208972729423307326.correct`). Lean does not check the parsing of the name. -/
def A394223.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394245.P1804355167414229738

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=10, a(2)=100, a(3)=110`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394245.P1804355167414229738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 100, 110] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A394245.P1804355167414229738

noncomputable section

/-- A394245: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 10, a(2) = 100, a(3) = 110.

Offset 0, canonical program `A394245.P1804355167414229738`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A394245.P1804355167414229738`, by `A394245.P1804355167414229738.correct`). Lean does not check the parsing of the name. -/
def A394245 (n : ℕ) : ℤ :=
  (A394245.P1804355167414229738.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A394245.P1804355167414229738`, by `A394245.P1804355167414229738.correct`). Lean does not check the parsing of the name. -/
def A394245.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394270.P250688662164372602

`C(5*n+2, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394270.P250688662164372602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n + 2) n

end

end A394270.P250688662164372602

noncomputable section

/-- A394270: a(n) = binomial(5*n+2,n).

Offset 0, canonical program `A394270.P250688662164372602`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n+2, n)` (program `A394270.P250688662164372602`, by `A394270.P250688662164372602.correct`). Lean does not check the parsing of the name. -/
def A394270 (n : ℕ) : ℤ :=
  (A394270.P250688662164372602.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n+2, n)` (program `A394270.P250688662164372602`, by `A394270.P250688662164372602.correct`). Lean does not check the parsing of the name. -/
def A394270.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394342.P5072940989807657412

`n*(3^n-1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394342.P5072940989807657412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((3 ^ n : ℤ) - 1) + 1

end

end A394342.P5072940989807657412

noncomputable section

/-- A394342: a(n) = n*(3^n - 1) + 1.

Offset 0, canonical program `A394342.P5072940989807657412`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3^n-1)+1` (program `A394342.P5072940989807657412`, by `A394342.P5072940989807657412.correct`). Lean does not check the parsing of the name. -/
def A394342 (n : ℕ) : ℤ :=
  A394342.P5072940989807657412.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3^n-1)+1` (program `A394342.P5072940989807657412`, by `A394342.P5072940989807657412.correct`). Lean does not check the parsing of the name. -/
def A394342.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394372.P2206490494112918782

`a(n-1)+gcd(n+1, a(n-2)*a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394372.P2206490494112918782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + Nat.gcd (n + 1) (a (n - 2) * a (n - 3))

end

end A394372.P2206490494112918782

noncomputable section

/-- A394372: a(1)=1, a(2)=2, a(3)=3; for n > 3, a(n) = a(n-1) + gcd(n, a(n-2) * a(n-3)).

Offset 1, canonical program `A394372.P2206490494112918782`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+1, a(n-2)*a(n-3))` (program `A394372.P2206490494112918782`, by `A394372.P2206490494112918782.correct`). Lean does not check the parsing of the name. -/
def A394372 (n : ℕ) : ℤ :=
  (A394372.P2206490494112918782.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+gcd(n+1, a(n-2)*a(n-3))` (program `A394372.P2206490494112918782`, by `A394372.P2206490494112918782.correct`). Lean does not check the parsing of the name. -/
def A394372.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394526.P7639771569929179932

`n*(5^n-1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394526.P7639771569929179932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((5 ^ n : ℤ) - 1) + 1

end

end A394526.P7639771569929179932

noncomputable section

/-- A394526: a(n) = n*(5^n - 1) + 1.

Offset 0, canonical program `A394526.P7639771569929179932`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5^n-1)+1` (program `A394526.P7639771569929179932`, by `A394526.P7639771569929179932.correct`). Lean does not check the parsing of the name. -/
def A394526 (n : ℕ) : ℤ :=
  A394526.P7639771569929179932.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(5^n-1)+1` (program `A394526.P7639771569929179932`, by `A394526.P7639771569929179932.correct`). Lean does not check the parsing of the name. -/
def A394526.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394565.P11846621640199777546

`C(5*n+3, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394565.P11846621640199777546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n + 3) n

end

end A394565.P11846621640199777546

noncomputable section

/-- A394565: a(n) = binomial(5*n+3,n).

Offset 0, canonical program `A394565.P11846621640199777546`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n+3, n)` (program `A394565.P11846621640199777546`, by `A394565.P11846621640199777546.correct`). Lean does not check the parsing of the name. -/
def A394565 (n : ℕ) : ℤ :=
  (A394565.P11846621640199777546.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(5*n+3, n)` (program `A394565.P11846621640199777546`, by `A394565.P11846621640199777546.correct`). Lean does not check the parsing of the name. -/
def A394565.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394613.P2998779106927904544

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=20`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394613.P2998779106927904544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 16, 20] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A394613.P2998779106927904544

noncomputable section

/-- A394613: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 4, a(2) = 16, a(3) = 20.

Offset 0, canonical program `A394613.P2998779106927904544`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A394613.P2998779106927904544`, by `A394613.P2998779106927904544.correct`). Lean does not check the parsing of the name. -/
def A394613 (n : ℕ) : ℤ :=
  (A394613.P2998779106927904544.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A394613.P2998779106927904544`, by `A394613.P2998779106927904544.correct`). Lean does not check the parsing of the name. -/
def A394613.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394656.P12460803549318427871

`C(n, 3)+4*C(n, 4)+10*C(n, 5)+20*C(n, 6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394656.P12460803549318427871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 + 4 * Nat.choose n 4 + 10 * Nat.choose n 5 + 20 * Nat.choose n 6

end

end A394656.P12460803549318427871

noncomputable section

/-- A394656: a(n) = binomial(n,3) + 4*binomial(n,4) + 10*binomial(n,5) + 20*binomial(n,6).

Offset 0, canonical program `A394656.P12460803549318427871`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 3)+4*C(n, 4)+10*C(n, 5)+20*C(n, 6)` (program `A394656.P12460803549318427871`, by `A394656.P12460803549318427871.correct`). Lean does not check the parsing of the name. -/
def A394656 (n : ℕ) : ℤ :=
  (A394656.P12460803549318427871.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 3)+4*C(n, 4)+10*C(n, 5)+20*C(n, 6)` (program `A394656.P12460803549318427871`, by `A394656.P12460803549318427871.correct`). Lean does not check the parsing of the name. -/
def A394656.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394666.P6183646248450568136

`(n+1)!%(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394666.P6183646248450568136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial (n + 1) : ℤ) ((2 * (n + 1) : ℤ) - 1)

end

end A394666.P6183646248450568136

noncomputable section

/-- A394666: a(n) = n! mod (2*n - 1).

Offset 1, canonical program `A394666.P6183646248450568136`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!%(2*(n+1)-1)` (program `A394666.P6183646248450568136`, by `A394666.P6183646248450568136.correct`). Lean does not check the parsing of the name. -/
def A394666 (n : ℕ) : ℤ :=
  A394666.P6183646248450568136.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!%(2*(n+1)-1)` (program `A394666.P6183646248450568136`, by `A394666.P6183646248450568136.correct`). Lean does not check the parsing of the name. -/
def A394666.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394681.P1617660832264607447

`n²*a(n-1)+n!` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394681.P1617660832264607447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ 2 * a (n - 1) + Nat.factorial n

end

end A394681.P1617660832264607447

noncomputable section

/-- A394681: a(0) = 1 and a(n) = n^2*a(n-1) + n! for n > 0.

Offset 0, canonical program `A394681.P1617660832264607447`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+n!` (program `A394681.P1617660832264607447`, by `A394681.P1617660832264607447.correct`). Lean does not check the parsing of the name. -/
def A394681 (n : ℕ) : ℤ :=
  (A394681.P1617660832264607447.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+n!` (program `A394681.P1617660832264607447`, by `A394681.P1617660832264607447.correct`). Lean does not check the parsing of the name. -/
def A394681.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394799.P17718767721472478372

`a(n-1)+(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394799.P17718767721472478372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + ((n : ℤ) - 2) * a (n - 3)

end

end A394799.P17718767721472478372

noncomputable section

/-- A394799: a(0) = a(1) = a(2) = 1; a(n) = a(n-1) + (n-2)*a(n-3).

Offset 0, canonical program `A394799.P17718767721472478372`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-2)*a(n-3)` (program `A394799.P17718767721472478372`, by `A394799.P17718767721472478372.correct`). Lean does not check the parsing of the name. -/
def A394799 (n : ℕ) : ℤ :=
  A394799.P17718767721472478372.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-2)*a(n-3)` (program `A394799.P17718767721472478372`, by `A394799.P17718767721472478372.correct`). Lean does not check the parsing of the name. -/
def A394799.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394800.P14186958594767963629

`a(n-1)+(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394800.P14186958594767963629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) + ((n : ℤ) - 3) * a (n - 4)

end

end A394800.P14186958594767963629

noncomputable section

/-- A394800: a(0) = a(1) = a(2) = a(3) = 1; a(n) = a(n-1) + (n-3)*a(n-4).

Offset 0, canonical program `A394800.P14186958594767963629`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-3)*a(n-4)` (program `A394800.P14186958594767963629`, by `A394800.P14186958594767963629.correct`). Lean does not check the parsing of the name. -/
def A394800 (n : ℕ) : ℤ :=
  A394800.P14186958594767963629.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(n-3)*a(n-4)` (program `A394800.P14186958594767963629`, by `A394800.P14186958594767963629.correct`). Lean does not check the parsing of the name. -/
def A394800.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395031.P6141989788099420546

`14*n^3+28*n²+12*n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395031.P6141989788099420546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n ^ 3 + 28 * n ^ 2 + 12 * n + 1

end

end A395031.P6141989788099420546

noncomputable section

/-- A395031: a(n) = 14*n^3 + 28*n^2 + 12*n + 1.

Offset 0, canonical program `A395031.P6141989788099420546`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n^3+28*n²+12*n+1` (program `A395031.P6141989788099420546`, by `A395031.P6141989788099420546.correct`). Lean does not check the parsing of the name. -/
def A395031 (n : ℕ) : ℤ :=
  (A395031.P6141989788099420546.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n^3+28*n²+12*n+1` (program `A395031.P6141989788099420546`, by `A395031.P6141989788099420546.correct`). Lean does not check the parsing of the name. -/
def A395031.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395241.P8661816280605708552

`n²*(4*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395241.P8661816280605708552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (4 * n + 3)

end

end A395241.P8661816280605708552

noncomputable section

/-- A395241: a(n) = n^2*(4*n + 3).

Offset 0, canonical program `A395241.P8661816280605708552`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(4*n+3)` (program `A395241.P8661816280605708552`, by `A395241.P8661816280605708552.correct`). Lean does not check the parsing of the name. -/
def A395241 (n : ℕ) : ℤ :=
  (A395241.P8661816280605708552.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(4*n+3)` (program `A395241.P8661816280605708552`, by `A395241.P8661816280605708552.correct`). Lean does not check the parsing of the name. -/
def A395241.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395266.P17042320103219594228

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=30`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395266.P17042320103219594228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 30] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A395266.P17042320103219594228

noncomputable section

/-- A395266: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 5, a(2) = 25, a(3) = 30.

Offset 0, canonical program `A395266.P17042320103219594228`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395266.P17042320103219594228`, by `A395266.P17042320103219594228.correct`). Lean does not check the parsing of the name. -/
def A395266 (n : ℕ) : ℤ :=
  (A395266.P17042320103219594228.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395266.P17042320103219594228`, by `A395266.P17042320103219594228.correct`). Lean does not check the parsing of the name. -/
def A395266.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395463.P16345157341292419435

`n*(7^n-1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395463.P16345157341292419435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((7 ^ n : ℤ) - 1) + 1

end

end A395463.P16345157341292419435

noncomputable section

/-- A395463: a(n) = n*(7^n - 1) + 1.

Offset 0, canonical program `A395463.P16345157341292419435`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7^n-1)+1` (program `A395463.P16345157341292419435`, by `A395463.P16345157341292419435.correct`). Lean does not check the parsing of the name. -/
def A395463 (n : ℕ) : ℤ :=
  A395463.P16345157341292419435.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7^n-1)+1` (program `A395463.P16345157341292419435`, by `A395463.P16345157341292419435.correct`). Lean does not check the parsing of the name. -/
def A395463.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395593.P5978937968690005499

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=64, a(3)=72`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395593.P5978937968690005499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 64, 72] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A395593.P5978937968690005499

noncomputable section

/-- A395593: a(n) = a(n-1) + a(n-3) + a(n-4), a(0)=1, a(1)=8, a(2)=64, a(3)=72.

Offset 0, canonical program `A395593.P5978937968690005499`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395593.P5978937968690005499`, by `A395593.P5978937968690005499.correct`). Lean does not check the parsing of the name. -/
def A395593 (n : ℕ) : ℤ :=
  (A395593.P5978937968690005499.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395593.P5978937968690005499`, by `A395593.P5978937968690005499.correct`). Lean does not check the parsing of the name. -/
def A395593.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395594.P17449777468984067767

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=9, a(2)=81, a(3)=90`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395594.P17449777468984067767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 81, 90] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A395594.P17449777468984067767

noncomputable section

/-- A395594: a(n) = a(n-1) + a(n-3) + a(n-4), a(0)=1, a(1)=9, a(2)=81, a(3)=90.

Offset 0, canonical program `A395594.P17449777468984067767`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395594.P17449777468984067767`, by `A395594.P17449777468984067767.correct`). Lean does not check the parsing of the name. -/
def A395594 (n : ℕ) : ℤ :=
  (A395594.P17449777468984067767.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395594.P17449777468984067767`, by `A395594.P17449777468984067767.correct`). Lean does not check the parsing of the name. -/
def A395594.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395607.P18184942053276312114

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=42`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395607.P18184942053276312114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 36, 42] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A395607.P18184942053276312114

noncomputable section

/-- A395607: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 6, a(2) = 36, a(3) = 42.

Offset 0, canonical program `A395607.P18184942053276312114`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395607.P18184942053276312114`, by `A395607.P18184942053276312114.correct`). Lean does not check the parsing of the name. -/
def A395607 (n : ℕ) : ℤ :=
  (A395607.P18184942053276312114.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A395607.P18184942053276312114`, by `A395607.P18184942053276312114.correct`). Lean does not check the parsing of the name. -/
def A395607.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396111.P7594967389268569643

`(n^4)%(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396111.P7594967389268569643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % (2 * n + 1)

end

end A396111.P7594967389268569643

noncomputable section

/-- A396111: a(n) = n^4 mod (2*n+1).

Offset 0, canonical program `A396111.P7594967389268569643`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%(2*n+1)` (program `A396111.P7594967389268569643`, by `A396111.P7594967389268569643.correct`). Lean does not check the parsing of the name. -/
def A396111 (n : ℕ) : ℤ :=
  (A396111.P7594967389268569643.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4)%(2*n+1)` (program `A396111.P7594967389268569643`, by `A396111.P7594967389268569643.correct`). Lean does not check the parsing of the name. -/
def A396111.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396199.P13714647059472639932

`(n+1)*(2^(n+1)-C(n, floor(n/2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396199.P13714647059472639932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 ^ (n + 1) : ℤ) - (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ))

end

end A396199.P13714647059472639932

noncomputable section

/-- A396199: a(n) = (n + 1)*(2^(n + 1) - binomial(n, floor(n / 2))), row sums of A396200.

Offset 0, canonical program `A396199.P13714647059472639932`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2^(n+1)-C(n, floor(n/2)))` (program `A396199.P13714647059472639932`, by `A396199.P13714647059472639932.correct`). Lean does not check the parsing of the name. -/
def A396199 (n : ℕ) : ℤ :=
  A396199.P13714647059472639932.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2^(n+1)-C(n, floor(n/2)))` (program `A396199.P13714647059472639932`, by `A396199.P13714647059472639932.correct`). Lean does not check the parsing of the name. -/
def A396199.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396224.P16898950422535949167

`n!^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396224.P16898950422535949167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 5

end

end A396224.P16898950422535949167

noncomputable section

/-- A396224: a(n) = (n!)^5.

Offset 0, canonical program `A396224.P16898950422535949167`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^5` (program `A396224.P16898950422535949167`, by `A396224.P16898950422535949167.correct`). Lean does not check the parsing of the name. -/
def A396224 (n : ℕ) : ℤ :=
  (A396224.P16898950422535949167.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^5` (program `A396224.P16898950422535949167`, by `A396224.P16898950422535949167.correct`). Lean does not check the parsing of the name. -/
def A396224.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396225.P17083938129874257036

`n!^6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396225.P17083938129874257036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 6

end

end A396225.P17083938129874257036

noncomputable section

/-- A396225: a(n) = (n!)^6.

Offset 0, canonical program `A396225.P17083938129874257036`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^6` (program `A396225.P17083938129874257036`, by `A396225.P17083938129874257036.correct`). Lean does not check the parsing of the name. -/
def A396225 (n : ℕ) : ℤ :=
  (A396225.P17083938129874257036.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^6` (program `A396225.P17083938129874257036`, by `A396225.P17083938129874257036.correct`). Lean does not check the parsing of the name. -/
def A396225.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396226.P3569638910496407692

`n!^7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396226.P3569638910496407692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 7

end

end A396226.P3569638910496407692

noncomputable section

/-- A396226: a(n) = (n!)^7.

Offset 0, canonical program `A396226.P3569638910496407692`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^7` (program `A396226.P3569638910496407692`, by `A396226.P3569638910496407692.correct`). Lean does not check the parsing of the name. -/
def A396226 (n : ℕ) : ℤ :=
  (A396226.P3569638910496407692.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^7` (program `A396226.P3569638910496407692`, by `A396226.P3569638910496407692.correct`). Lean does not check the parsing of the name. -/
def A396226.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A383942.P9378418643718104757

`(8*10^(2*(n+1))-10^(n+2)+2)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383942.P9378418643718104757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 10 ^ (2 * (n + 1)) : ℤ) - (10 ^ (n + 2) : ℤ) + 2 : ℚ) / 9

end

end A383942.P9378418643718104757

noncomputable section

/-- A383942: a(n) = (8*10^(2n) - 10^(n+1) + 2) / 9.

Offset 1, canonical program `A383942.P9378418643718104757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383942.P9378418643718104757.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384198.P14588015488054928887

`3^(n-3)*(C(n, 3)+3*C(n, 2)+9*n+27)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384198.P14588015488054928887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.choose n 3 + 3 * Nat.choose n 2 + 9 * n + 27 : ℚ)

end

end A384198.P14588015488054928887

noncomputable section

/-- A384198: a(n) = 3^(n-3)*(binomial(n,3) + 3*binomial(n,2) + 9*n + 27).

Offset 0, canonical program `A384198.P14588015488054928887`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384198.P14588015488054928887.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384199.P14033144826585406245

`3*n*a(n-1)-(-1)^n*(n-1)!` with `a(0)=0`
-/

namespace A384199.P14033144826585406245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (3 * n : ℤ) * a (n - 1) - (-1) ^ n * (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A384199.P14033144826585406245

noncomputable section

/-- A384199: Expansion of e.g.f. log(1 + x)/(1 - 3*x).

Offset 0, canonical program `A384199.P14033144826585406245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384199 (n : ℕ) : ℤ :=
  A384199.P14033144826585406245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384200.P16319949504910010664

`(4*n-3)*a(n-1)-3*(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A384200.P16319949504910010664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((4 * n : ℤ) - 3) * a (n - 1) - 3 * ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A384200.P16319949504910010664

noncomputable section

/-- A384200: Expansion of e.g.f. -log(1 - 3*x)/(3 * (1 - x)).

Offset 0, canonical program `A384200.P16319949504910010664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384200 (n : ℕ) : ℤ :=
  A384200.P16319949504910010664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384200.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384201.P4797087417940245729

`(n-2)*a(n-1)+2*(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A384201.P4797087417940245729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 2) * a (n - 1) + 2 * ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A384201.P4797087417940245729

noncomputable section

/-- A384201: Expansion of e.g.f. -log(1 - 2*x)/(2 * (1 + x)).

Offset 0, canonical program `A384201.P4797087417940245729`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384201 (n : ℕ) : ℤ :=
  A384201.P4797087417940245729.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384202.P16716347843254804951

`(2*n-3)*a(n-1)+3*(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A384202.P16716347843254804951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℤ) - 3) * a (n - 1) + 3 * ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A384202.P16716347843254804951

noncomputable section

/-- A384202: Expansion of e.g.f. -log(1 - 3*x)/(3 * (1 + x)).

Offset 0, canonical program `A384202.P16716347843254804951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384202 (n : ℕ) : ℤ :=
  A384202.P16716347843254804951.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384243.P11691361283380830276

`2^(n-6)*n*(n-1)*(n*(n-5)+14)`
-/

namespace A384243.P11691361283380830276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 6 : ℤ) * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * ((n : ℤ) * ((n : ℤ) - 5) + 14 : ℚ)

end

end A384243.P11691361283380830276

noncomputable section

/-- A384243: a(n) = 2^(n-6)*n*(n^3 - 6*n^2 + 19*n - 14).

Offset 0, canonical program `A384243.P11691361283380830276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384243 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384243.P11691361283380830276.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384243.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384253.P4958860455693630655

`1+(1+(-1)^n)*n!/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384253.P4958860455693630655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((1 + (-1) ^ n) * (Nat.factorial n : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A384253.P4958860455693630655

noncomputable section

/-- A384253: a(n) = 1 + ((1+(-1)^(n-1))*(n-1)!)/(n+1).

Offset 1, canonical program `A384253.P4958860455693630655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384253 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384253.P4958860455693630655.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384259.P12381055702116771946

`5*(5*n-9)*(5*n-13)*(5*n-1)*(5*n-17)*a(n-4)` with `a(0)=1, a(1)=4, a(2)=45, a(3)=840`
-/

namespace A384259.P12381055702116771946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 45, 840] fun n a =>
  5 * ((5 * n : ℤ) - 9) * ((5 * n : ℤ) - 13) * ((5 * n : ℤ) - 1) * ((5 * n : ℤ) - 17) * a (n - 4)

end

end A384259.P12381055702116771946

noncomputable section

/-- A384259: a(n) = Product_{k=0..n-1} (n+4*k+3).

Offset 0, canonical program `A384259.P12381055702116771946`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384259 (n : ℕ) : ℤ :=
  A384259.P12381055702116771946.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384288.P14524936850200947228

`2*n*(n+1)*(n²+n+1)`
-/

namespace A384288.P14524936850200947228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (n + 1) * (n ^ 2 + n + 1)

end

end A384288.P14524936850200947228

noncomputable section

/-- A384288: Length of the long leg in the unique primitive Pythagorean triple whose inradius is A002378(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A384288.P14524936850200947228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384288 (n : ℕ) : ℤ :=
  (A384288.P14524936850200947228.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384335.P16997469815114454754

`9^n*(512*n^3+64*n²+144*n+15)*(2*n)!/(15*n!²)`
-/

namespace A384335.P16997469815114454754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n * (512 * n ^ 3 + 64 * n ^ 2 + 144 * n + 15) * Nat.factorial (2 * n) : ℚ) / (15 * Nat.factorial n ^ 2 : ℚ)

end

end A384335.P16997469815114454754

noncomputable section

/-- A384335: Expansion of g.f.: cosh(7*arctanh(6*sqrt(x))).

Offset 0, canonical program `A384335.P16997469815114454754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384335.P16997469815114454754.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384415.P15353193061636814150

`4^n-3^n-n*3^(n-1)-C(n, 2)*3^(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384415.P15353193061636814150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) - (n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (Nat.choose n 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A384415.P15353193061636814150

noncomputable section

/-- A384415: a(n) = 4^n - 3^n - n*3^(n-1) - binomial(n,2)*3^(n-2).

Offset 0, canonical program `A384415.P15353193061636814150`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384415.P15353193061636814150.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384506.P5937823451638168484

`2^(n-7)*(n^4-6*n^3+59*n²-54*n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384506.P5937823451638168484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 7 : ℤ) * ((n ^ 4 : ℤ) - (6 * n ^ 3 : ℤ) + (59 * n ^ 2 : ℤ) - (54 * n : ℤ) : ℚ) / 3

end

end A384506.P5937823451638168484

noncomputable section

/-- A384506: a(n) = 2^(n-7)*(n^4 - 6*n^3 + 59*n^2 - 54*n)/3.

Offset 0, canonical program `A384506.P5937823451638168484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384506.P5937823451638168484.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384536.P15435299656690740622

`4^n-2^(n-6)*15*C(n, 6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384536.P15435299656690740622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 6 : ℤ) * 15 * (Nat.choose n 6 : ℚ)

end

end A384536.P15435299656690740622

noncomputable section

/-- A384536: a(n) = 4^n - 2^(n-6)*15*binomial(n,6).

Offset 0, canonical program `A384536.P15435299656690740622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384536 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384536.P15435299656690740622.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384566.P10693336845248242478

`n*(n+1)*(n²+n+1)*(2*n²+2*n+1)`
-/

namespace A384566.P10693336845248242478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) * (n ^ 2 + n + 1) * (2 * n ^ 2 + 2 * n + 1)

end

end A384566.P10693336845248242478

noncomputable section

/-- A384566: Area of the unique primitive Pythagorean triple whose inradius is A002378(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A384566.P10693336845248242478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384566 (n : ℕ) : ℤ :=
  (A384566.P10693336845248242478.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384585.P13734651877486543019

`6*(4*n)!/((n+1)!*(3*n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384585.P13734651877486543019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.factorial (4 * n) : ℚ) / (Nat.factorial (n + 1) * Nat.factorial (3 * n + 1) : ℚ)

end

end A384585.P13734651877486543019

noncomputable section

/-- A384585: a(n) = 6 * (4*n)! / ((n+1)! * (3*n+1)!).

Offset 0, canonical program `A384585.P13734651877486543019`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384585 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384585.P13734651877486543019.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384686.P16921245346159621725

`2^(n-4)*(5*C(n, 5)+6*C(n, 4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384686.P16921245346159621725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * (5 * Nat.choose n 5 + 6 * Nat.choose n 4 : ℚ)

end

end A384686.P16921245346159621725

noncomputable section

/-- A384686: a(n) = 2^(n-4)*(5*binomial(n,5) + 6*binomial(n,4)).

Offset 0, canonical program `A384686.P16921245346159621725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384686 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384686.P16921245346159621725.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384717.P10750683684603795331

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=5, a(4)=6`
-/

namespace A384717.P10750683684603795331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 5, 6] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A384717.P10750683684603795331

noncomputable section

/-- A384717: Sum of floored squared chord lengths from -1 to the 2n-th roots of unity (upper semicircle, endpoints excluded).

Offset 1, canonical program `A384717.P10750683684603795331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384717 (n : ℕ) : ℤ :=
  A384717.P10750683684603795331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384853.P12743840133399295905

`4*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=5, a(2)=9`
-/

namespace A384853.P12743840133399295905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2)

end

end A384853.P12743840133399295905

noncomputable section

/-- A384853: Squared length of interior diagonal of n-th (U, V)-crossbox, where U = (1, 0, 1) and V = (0, 1, 0), as in Comments.

Offset 1, canonical program `A384853.P12743840133399295905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384853 (n : ℕ) : ℤ :=
  A384853.P12743840133399295905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384929.P12774579286931403902

`((2*(n+1)+1)!/(n+2)!-(n+1)!)/2`
-/

namespace A384929.P12774579286931403902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (2 * (n + 1) + 1) : ℚ) / (Nat.factorial (n + 2) : ℚ) - (Nat.factorial (n + 1) : ℚ)) / 2

end

end A384929.P12774579286931403902

noncomputable section

/-- A384929: a(n) = (1/2) * Sum_{k=1..n} (n+k)! / k!.

Offset 1, canonical program `A384929.P12774579286931403902`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384929.P12774579286931403902.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384980.P3824832553157891283

`2-2^(n+2)+3^n+4^n`
-/

namespace A384980.P3824832553157891283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (2 ^ (n + 2) : ℤ) + (3 ^ n : ℤ) + (4 ^ n : ℤ)

end

end A384980.P3824832553157891283

noncomputable section

/-- A384980: Number of proper vertex colorings of the n-complete bipartite graph using exactly 4 interchangeable colors.

Offset 1, canonical program `A384980.P3824832553157891283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384980 (n : ℕ) : ℤ :=
  A384980.P3824832553157891283.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384988.P7265471971138611684

`2^(2*(n+1)-2)+1/2*3^n-3*2^n+3/2`
-/

namespace A384988.P7265471971138611684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ) + (1 : ℚ) / 2 * (3 ^ n : ℚ) - (3 * 2 ^ n : ℚ) + (3 : ℚ) / 2

end

end A384988.P7265471971138611684

noncomputable section

/-- A384988: a(n) = Stirling2(n,2)^2 + Stirling2(n,3).

Offset 1, canonical program `A384988.P7265471971138611684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384988 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384988.P7265471971138611684.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385029.P16907877292585352436

`(n+1)*(n+2)*(2*(n+1)+1)^3/3`
-/

namespace A385029.P16907877292585352436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (2 * (n + 1) + 1) ^ 3 : ℚ) / 3

end

end A385029.P16907877292585352436

noncomputable section

/-- A385029: a(n) = Sum_{-n <= a, b, c <= n} (b^2 - 4*a*c).

Offset 1, canonical program `A385029.P16907877292585352436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385029 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385029.P16907877292585352436.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385085.P12560886625132023276

`2*(3*n+2)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385085.P12560886625132023276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (3 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A385085.P12560886625132023276

noncomputable section

/-- A385085: a(n) = 2 * (3*n+2)^(n-1).

Offset 0, canonical program `A385085.P12560886625132023276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385085 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385085.P12560886625132023276.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385086.P16889082911583328910

`2*(5*n+2)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385086.P16889082911583328910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (5 * n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A385086.P16889082911583328910

noncomputable section

/-- A385086: a(n) = 2 * (5*n+2)^(n-1).

Offset 0, canonical program `A385086.P16889082911583328910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385086 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385086.P16889082911583328910.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385121.P7747440615414836135

`12*a(n-1)-a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A385121.P7747440615414836135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  12 * a (n - 1) - a (n - 2)

end

end A385121.P7747440615414836135

noncomputable section

/-- A385121: a(n+1) = 12*a(n) - a(n-1), a(0) = a(1) = 2, a(n) = a(1-n).

Offset 0, canonical program `A385121.P7747440615414836135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385121 (n : ℕ) : ℤ :=
  A385121.P7747440615414836135.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385187.P11356501436207310025

`n*(n+1)*(n²+n-1)*(2*n²+2*n-1)`
-/

namespace A385187.P11356501436207310025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℤ) * ((n ^ 2 + n : ℤ) - 1) * ((2 * n ^ 2 + 2 * n : ℤ) - 1)

end

end A385187.P11356501436207310025

noncomputable section

/-- A385187: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A002378(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A385187.P11356501436207310025`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385187 (n : ℕ) : ℤ :=
  A385187.P11356501436207310025.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385242.P3515255519971219702

`a(n-1)+4*a(n-2)-3*a(n-3)-2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=12, a(5)=2`
-/

namespace A385242.P3515255519971219702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0, 12, 2] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 3 * a (n - 3) - 2 * a (n - 5)

end

end A385242.P3515255519971219702

noncomputable section

/-- A385242: Number of tilings of a 3 X n strip with dominos and U-shaped pentominos.

Offset 0, canonical program `A385242.P3515255519971219702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385242 (n : ℕ) : ℤ :=
  A385242.P3515255519971219702.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385242.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385329.P12246320153405122947

`5^n-2*4^(n-1)*(n+4)+3^(n-2)*(n²+5*n+9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385329.P12246320153405122947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) - 2 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n + 4 : ℚ) + (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (n ^ 2 + 5 * n + 9 : ℚ)

end

end A385329.P12246320153405122947

noncomputable section

/-- A385329: a(n) = 5^n - 2*4^(n-1)*(n+4) + 3^(n-2)*(n^2+5*n+9).

Offset 0, canonical program `A385329.P12246320153405122947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385329 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385329.P12246320153405122947.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385334.P15710315618376552621

`floor((n+1)/2)*ceil((n+1)/2)+a(ceil((n+1)/2)-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A385334.P15710315618376552621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ⌊(n + 1 : ℚ) / 2⌋ * ⌈(n + 1 : ℚ) / 2⌉ + a (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat

end

end A385334.P15710315618376552621

noncomputable section

/-- A385334: Cat number of complete graphs on n vertices.

Offset 1, canonical program `A385334.P15710315618376552621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385334 (n : ℕ) : ℤ :=
  A385334.P15710315618376552621.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385396.P3098394090964017503

`a(n-1)+2*a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7`
-/

namespace A385396.P3098394090964017503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5)

end

end A385396.P3098394090964017503

noncomputable section

/-- A385396: Numbers k such that 8 does not divide binomial(k, j) for any j in 0..k.

Offset 1, canonical program `A385396.P3098394090964017503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385396 (n : ℕ) : ℤ :=
  A385396.P3098394090964017503.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385407.P7004031065679688765

`60*C(n, 6)+10*C(n, 5)+4*C(n, 4)+4*C(n, 3)+C(n, 2)+n+1`
-/

namespace A385407.P7004031065679688765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * Nat.choose n 6 + 10 * Nat.choose n 5 + 4 * Nat.choose n 4 + 4 * Nat.choose n 3 + Nat.choose n 2 + n + 1

end

end A385407.P7004031065679688765

noncomputable section

/-- A385407: Number of strings of length n defined on {0, 1, 2, 3} that contain one or no 1's, two or no 2's, three or no 3's and any number of 0's.

Offset 0, canonical program `A385407.P7004031065679688765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385407 (n : ℕ) : ℤ :=
  (A385407.P7004031065679688765.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385555.P3319066329953152229

`(n+1)*gcd(6, n+1)`
-/

namespace A385555.P3319066329953152229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 6 (n + 1)

end

end A385555.P3319066329953152229

noncomputable section

/-- A385555: Period of {binomial(N,3) mod n: N in Z}.

Offset 1, canonical program `A385555.P3319066329953152229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385555 (n : ℕ) : ℤ :=
  (A385555.P3319066329953152229.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385556.P15405264877329185066

`(n+1)*gcd(n+1, 6)*(2-(n+1)%2)`
-/

namespace A385556.P15405264877329185066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.gcd (n + 1) 6 : ℤ) * (2 - (((n + 1) % 2 : ℕ) : ℤ))

end

end A385556.P15405264877329185066

noncomputable section

/-- A385556: Period of {binomial(N,4) mod n: N in Z}.

Offset 1, canonical program `A385556.P15405264877329185066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385556 (n : ℕ) : ℤ :=
  A385556.P15405264877329185066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385557.P12954412509993387778

`(n+1)*gcd(n+1, 30)*(2-(n+1)%2)`
-/

namespace A385557.P12954412509993387778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.gcd (n + 1) 30 : ℤ) * (2 - (((n + 1) % 2 : ℕ) : ℤ))

end

end A385557.P12954412509993387778

noncomputable section

/-- A385557: Period of {binomial(N,5) mod n: N in Z}. Also, period of {binomial(N,6) mod n: N in Z}.

Offset 1, canonical program `A385557.P12954412509993387778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385557 (n : ℕ) : ℤ :=
  A385557.P12954412509993387778.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385558.P18014410950527201159

`(n+1)*gcd(n+1, 210)*(2-(n+1)%2)`
-/

namespace A385558.P18014410950527201159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.gcd (n + 1) 210 : ℤ) * (2 - (((n + 1) % 2 : ℕ) : ℤ))

end

end A385558.P18014410950527201159

noncomputable section

/-- A385558: Period of {binomial(N,7) mod n: N in Z}.

Offset 1, canonical program `A385558.P18014410950527201159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385558 (n : ℕ) : ℤ :=
  A385558.P18014410950527201159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385559.P1809382533330294816

`(n+1)*gcd(n+1, 210)*(4-3*(n+1)%2)`
-/

namespace A385559.P1809382533330294816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.gcd (n + 1) 210 : ℤ) * (4 - ((3 * ((n + 1) % 2) : ℕ) : ℤ))

end

end A385559.P1809382533330294816

noncomputable section

/-- A385559: Period of {binomial(N,8) mod n: N in Z}.

Offset 1, canonical program `A385559.P1809382533330294816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385559 (n : ℕ) : ℤ :=
  A385559.P1809382533330294816.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385560.P9142912081511133296

`(n+1)*gcd(n+1, 6)*gcd(n+1, 210)*(2-(n+1)%2)`
-/

namespace A385560.P9142912081511133296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.gcd (n + 1) 6 * Nat.gcd (n + 1) 210 : ℤ) * (2 - (((n + 1) % 2 : ℕ) : ℤ))

end

end A385560.P9142912081511133296

noncomputable section

/-- A385560: Period of {binomial(N,9) mod n: N in Z}. Also, period of {binomial(N,10) mod n: N in Z}.

Offset 1, canonical program `A385560.P9142912081511133296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385560 (n : ℕ) : ℤ :=
  A385560.P9142912081511133296.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385589.P15325417032889616716

`2^(n-2)*(3*C(n, 3)+6*C(n, 2)+6*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385589.P15325417032889616716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (3 * Nat.choose n 3 + 6 * Nat.choose n 2 + 6 * n + 4 : ℚ)

end

end A385589.P15325417032889616716

noncomputable section

/-- A385589: a(n) = 2^(n-2)*(3*binomial(n,3) + 6*binomial(n,2) + 6*n + 4).

Offset 0, canonical program `A385589.P15325417032889616716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385589 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385589.P15325417032889616716.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385730.P7087016858821356909

`1/3*(8*n^3+7*n+3)`
-/

namespace A385730.P7087016858821356909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (8 * n ^ 3 + 7 * n + 3 : ℚ)

end

end A385730.P7087016858821356909

noncomputable section

/-- A385730: The number of lattice points in the 2D plane contained between the curve y=x^2/4 and the line y=n^2, inclusive, where n is a positive integer.

Offset 0, canonical program `A385730.P7087016858821356909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385730 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385730.P7087016858821356909.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385894.P7502482160749098558

`n^5/5+n^3/3+7*n/15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385894.P7502482160749098558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℚ) / 5 + (n ^ 3 : ℚ) / 3 + (7 * n : ℚ) / 15

end

end A385894.P7502482160749098558

noncomputable section

/-- A385894: a(n) = n^5/5 + n^3/3 + 7*n/15.

Offset 0, canonical program `A385894.P7502482160749098558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385894 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385894.P7502482160749098558.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385933.P2515231745291431757

`a(n-1)+a(n-3)-a(n-4)+a(n-5)+a(n-6)-a(n-9)` with `a(0)=4, a(1)=9, a(2)=13, a(3)=25, a(4)=30, a(5)=35, a(6)=52, a(7)=78, a(8)=121`
-/

namespace A385933.P2515231745291431757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9, 13, 25, 30, 35, 52, 78, 121] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4) + a (n - 5) + a (n - 6) - a (n - 9)

end

end A385933.P2515231745291431757

noncomputable section

/-- A385933: Number of ways to tile a "central bump" strip of length n with 1 X 1 squares and 1 X 3 rectangles.

Offset 0, canonical program `A385933.P2515231745291431757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385933 (n : ℕ) : ℤ :=
  A385933.P2515231745291431757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385978.P4609524647744324255

`10*(n+1)*(val(n+1, 10)+1)`
-/

namespace A385978.P4609524647744324255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n + 1) * (SequenceMachineLib.valuation (n + 1) 10 + 1)

end

end A385978.P4609524647744324255

noncomputable section

/-- A385978: Number of trailing zeros in (10*n)^(10*n).

Offset 1, canonical program `A385978.P4609524647744324255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385978 (n : ℕ) : ℤ :=
  (A385978.P4609524647744324255.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386011.P14256953244667034500

`C(n+1, 2)*(n+1)*(n+2)^(n-1)/2`
-/

namespace A386011.P14256953244667034500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 * (n + 1) : ℚ) * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2

end

end A386011.P14256953244667034500

noncomputable section

/-- A386011: Total number of inversions in all parking functions of length n.

Offset 1, canonical program `A386011.P14256953244667034500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386011 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386011.P14256953244667034500.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386222.P7813306655087467098

`5*a(n-1)+9*a(n-2)-14*a(n-3)` with `a(0)=1, a(1)=5, a(2)=34`
-/

namespace A386222.P7813306655087467098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 34] fun n a =>
  5 * a (n - 1) + 9 * a (n - 2) - 14 * a (n - 3)

end

end A386222.P7813306655087467098

noncomputable section

/-- A386222: Number of 3-dimensional tilings of a 2 X 2 X (n+1) box with the two upper right cells removed, using 2 X 2 X 1 plates and 1 X 2 X 1 dominos.

Offset 0, canonical program `A386222.P7813306655087467098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386222 (n : ℕ) : ℤ :=
  A386222.P7813306655087467098.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386250.P12085811948825934987

`4*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=13`
-/

namespace A386250.P12085811948825934987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 4, 13] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A386250.P12085811948825934987

noncomputable section

/-- A386250: Total number of ones in runs of 1's of length >= 4 over all binary strings of length n.

Offset 0, canonical program `A386250.P12085811948825934987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386250 (n : ℕ) : ℤ :=
  A386250.P12085811948825934987.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386293.P14492066126498285944

`13*a(n-1)-36*a(n-2)` with `a(0)=0, a(1)=7, a(2)=73`
-/

namespace A386293.P14492066126498285944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 73] fun n a =>
  13 * a (n - 1) - 36 * a (n - 2)

end

end A386293.P14492066126498285944

noncomputable section

/-- A386293: a(n) = 9^n - (1/2)*4^n, n > 0; a(0) = 0.

Offset 0, canonical program `A386293.P14492066126498285944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386293 (n : ℕ) : ℤ :=
  A386293.P14492066126498285944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386359.P16582126008717073906

`14*a(n-1)-49*a(n-2)+36*a(n-3)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=151`
-/

namespace A386359.P16582126008717073906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 13, 151] fun n a =>
  14 * a (n - 1) - 49 * a (n - 2) + 36 * a (n - 3)

end

end A386359.P16582126008717073906

noncomputable section

/-- A386359: a(n) = (1/4)*(9^n - 2*4^n + 3), n > 0; a(0) = 0.

Offset 0, canonical program `A386359.P16582126008717073906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386359 (n : ℕ) : ℤ :=
  A386359.P16582126008717073906.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386392.P12680172549557109250

`4*C(7*n+4, n)/(7*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386392.P12680172549557109250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (7 * n + 4) n : ℚ) / (7 * n + 4 : ℚ)

end

end A386392.P12680172549557109250

noncomputable section

/-- A386392: a(n) = 4 * binomial(7*n+4,n)/(7*n+4).

Offset 0, canonical program `A386392.P12680172549557109250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386392 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386392.P12680172549557109250.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386394.P12118259344301044148

`57*a(n-1)-800*a(n-2)` with `a(0)=7, a(1)=199`
-/

namespace A386394.P12118259344301044148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 199] fun n a =>
  57 * a (n - 1) - 800 * a (n - 2)

end

end A386394.P12118259344301044148

noncomputable section

/-- A386394: a(n) = (5^(2*n) + 3*2^(5*n-2))/7.

Offset 1, canonical program `A386394.P12118259344301044148`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^(2*(n+1))+3*2^(5*(n+1)-2))/7` (program `A386394.P8684423485226992697`, by `A386394.P8684423485226992697.correct`). Lean does not check the parsing of the name. -/
def A386394 (n : ℕ) : ℤ :=
  A386394.P12118259344301044148.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^(2*(n+1))+3*2^(5*(n+1)-2))/7` (program `A386394.P8684423485226992697`, by `A386394.P8684423485226992697.correct`). Lean does not check the parsing of the name. -/
def A386394.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386397.P7953529038621499286

`19*a(n-1)-48*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A386397.P7953529038621499286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  19 * a (n - 1) - 48 * a (n - 2)

end

end A386397.P7953529038621499286

noncomputable section

/-- A386397: a(n) = (3^(n+2) + 4^(2*n+1))/13.

Offset 0, canonical program `A386397.P7953529038621499286`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(n+2)+4^(2*n+1))/13` (program `A386397.P1855263368743887285`, by `A386397.P1855263368743887285.correct`). Lean does not check the parsing of the name. -/
def A386397 (n : ℕ) : ℤ :=
  A386397.P7953529038621499286.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(n+2)+4^(2*n+1))/13` (program `A386397.P1855263368743887285`, by `A386397.P1855263368743887285.correct`). Lean does not check the parsing of the name. -/
def A386397.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386480.P13010790246014667856

`a(n-1)+2*(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A386480.P13010790246014667856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + 2 * ((n : ℤ) - 1)

end

end A386480.P13010790246014667856

noncomputable section

/-- A386480: a(0) = 1; thereafter a(n) = n^2 - n + 2.

Offset 0, canonical program `A386480.P13010790246014667856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386480 (n : ℕ) : ℤ :=
  A386480.P13010790246014667856.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386485.P16576466191177690074

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=32`
-/

namespace A386485.P16576466191177690074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 12, 32] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A386485.P16576466191177690074

noncomputable section

/-- A386485: a(0) = 1; thereafter a(n) = 5*n^2 - 5*n + 2.

Offset 0, canonical program `A386485.P16576466191177690074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386485 (n : ℕ) : ℤ :=
  A386485.P16576466191177690074.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386486.P4359684344657226413

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=29`
-/

namespace A386486.P4359684344657226413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 12, 29] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A386486.P4359684344657226413

noncomputable section

/-- A386486: a(0) = 1; thereafter a(n) = 4*n^2 - 3*n + 2.

Offset 0, canonical program `A386486.P4359684344657226413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386486 (n : ℕ) : ℤ :=
  A386486.P4359684344657226413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386486.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386552.P15123243711025753606

`10^(n+1)*a(n-1)+10^n` with `a(0)=1`
-/

namespace A386552.P15123243711025753606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  10 ^ (n + 1) * a (n - 1) + 10 ^ n

end

end A386552.P15123243711025753606

noncomputable section

/-- A386552: Concatenate powers of 10.

Offset 0, canonical program `A386552.P15123243711025753606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386552 (n : ℕ) : ℤ :=
  (A386552.P15123243711025753606.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386707.P7578032606459412388

`2*a(n-1)-a(n-3)` with `a(0)=7, a(1)=9, a(2)=10`
-/

namespace A386707.P7578032606459412388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 9, 10] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A386707.P7578032606459412388

noncomputable section

/-- A386707: a(n) = Lucas(n) + 6.

Offset 1, canonical program `A386707.P7578032606459412388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386707 (n : ℕ) : ℤ :=
  A386707.P7578032606459412388.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386707.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386759.P502578375539311596

`4^n*(4*n)!/(n!*4!^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386759.P502578375539311596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial (4 * n) : ℚ) / (Nat.factorial n * Nat.factorial 4 ^ n : ℚ)

end

end A386759.P502578375539311596

noncomputable section

/-- A386759: a(n) = 4^n * (4*n)! / (n! * (4!)^n).

Offset 0, canonical program `A386759.P502578375539311596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386759 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386759.P502578375539311596.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386860.P4448378947613652940

`C(n, 2)*(n+2)^(n-1)`
-/

namespace A386860.P4448378947613652940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A386860.P4448378947613652940

noncomputable section

/-- A386860: The total number of big descents in all parking functions of length n.

Offset 1, canonical program `A386860.P4448378947613652940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386860 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386860.P4448378947613652940.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386861.P12718987367945739866

`(n+1)/4*n*(n-1)*(n+2)^(n-1)`
-/

namespace A386861.P12718987367945739866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (n : ℚ) * ((n : ℤ) - 1 : ℚ) * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A386861.P12718987367945739866

noncomputable section

/-- A386861: The total number of big inversions in all parking functions of length n.

Offset 1, canonical program `A386861.P12718987367945739866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386861.P12718987367945739866.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386889.P17467461584644384473

`16*a(n-1)-25*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=46, a(3)=660`
-/

namespace A386889.P17467461584644384473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 46, 660] fun n a =>
  16 * a (n - 1) - 25 * a (n - 2) + 10 * a (n - 3) - a (n - 4)

end

end A386889.P17467461584644384473

noncomputable section

/-- A386889: Number of ways to use 1 X 1 squares and 1 X 2 dominos (in any orientation) to tile a 3 X (2*n - 1) strip with every other cell in the top row removed.

Offset 0, canonical program `A386889.P17467461584644384473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386889 (n : ℕ) : ℤ :=
  A386889.P17467461584644384473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386906.P4759804718753343731

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=40, a(2)=196, a(3)=550`
-/

namespace A386906.P4759804718753343731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 40, 196, 550] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A386906.P4759804718753343731

noncomputable section

/-- A386906: a(n) = (3*n - 2)^2*(3*n - 1)/2.

Offset 1, canonical program `A386906.P4759804718753343731`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(n+1)-2)²*(3*(n+1)-1)/2` (program `A386906.P9804546570902914387`, by `A386906.P9804546570902914387.correct`). Lean does not check the parsing of the name. -/
def A386906 (n : ℕ) : ℤ :=
  A386906.P4759804718753343731.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(n+1)-2)²*(3*(n+1)-1)/2` (program `A386906.P9804546570902914387`, by `A386906.P9804546570902914387.correct`). Lean does not check the parsing of the name. -/
def A386906.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386976.P3572309863306736497

`4*a(n-1)+24*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=6, a(2)=72`
-/

namespace A386976.P3572309863306736497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 72] fun n a =>
  4 * a (n - 1) + 24 * a (n - 2) + 64 * a (n - 3)

end

end A386976.P3572309863306736497

noncomputable section

/-- A386976: a(n) = Sum_{k=0..n} binomial(3*n+2,4*k).

Offset 0, canonical program `A386976.P3572309863306736497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386976 (n : ℕ) : ℤ :=
  (A386976.P3572309863306736497.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387117.P13677821823471678638

`C(4*n+1, n+1)-C(3*n, n+1)`
-/

namespace A387117.P13677821823471678638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n + 1) (n + 1) : ℤ) - (Nat.choose (3 * n) (n + 1) : ℤ)

end

end A387117.P13677821823471678638

noncomputable section

/-- A387117: a(n) = Sum_{k=0..n} binomial(3*n+k,n).

Offset 0, canonical program `A387117.P13677821823471678638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387117 (n : ℕ) : ℤ :=
  A387117.P13677821823471678638.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387185.P10792436280812433338

`n*2^(n-1)+C(n, 2)*2^(n-2)+C(n, 3)*2^(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387185.P10792436280812433338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (Nat.choose n 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (Nat.choose n 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A387185.P10792436280812433338

noncomputable section

/-- A387185: a(n) = n*2^(n-1) + binomial(n,2)*2^(n-2) + binomial(n,3)*2^(n-3).

Offset 0, canonical program `A387185.P10792436280812433338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387185.P10792436280812433338.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387204.P15110884007341773351

`n*(n+1)*(n*(n+17)+54)/24`
-/

namespace A387204.P15110884007341773351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n * (n + 17) + 54) : ℚ) / 24

end

end A387204.P15110884007341773351

noncomputable section

/-- A387204: a(n) = n*(n + 1)*(n^2 + 17*n + 54)/24.

Offset 0, canonical program `A387204.P15110884007341773351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387204.P15110884007341773351.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387248.P13420228551651377683

`2*(4*n-1)*(4*n-3)/((n+1)*(2*n+1))*a(n-1)` with `a(0)=3`
-/

namespace A387248.P13420228551651377683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (2 * ((4 * n : ℤ) - 1) * ((4 * n : ℤ) - 3) : ℚ) / ((n + 1) * (2 * n + 1) : ℚ) * a (n - 1)

end

end A387248.P13420228551651377683

noncomputable section

/-- A387248: a(n) = 3/(n + 1) * Catalan(2*n).

Offset 0, canonical program `A387248.P13420228551651377683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387248 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387248.P13420228551651377683.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387250.P1110462465994235292

`105/((n+1)*(4*n+1))*C(8*n, 4*n)`
-/

namespace A387250.P1110462465994235292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  105 / ((n + 1) * (4 * n + 1) : ℚ) * (Nat.choose (8 * n) (4 * n) : ℚ)

end

end A387250.P1110462465994235292

noncomputable section

/-- A387250: a(n) = 105/(n + 1) * Catalan(4*n).

Offset 0, canonical program `A387250.P1110462465994235292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387250.P1110462465994235292.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387286.P8488198872043102979

`n²*(3*(n+1)²+2*(n+1))`
-/

namespace A387286.P8488198872043102979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (3 * (n + 1) ^ 2 + 2 * (n + 1))

end

end A387286.P8488198872043102979

noncomputable section

/-- A387286: Number of 2 X 2 square tiles in a discrete 4-dimensional hypercube of side length n.

Offset 1, canonical program `A387286.P8488198872043102979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387286 (n : ℕ) : ℤ :=
  (A387286.P8488198872043102979.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387355.P16162145547914331822

`ceil((3*n²+n)/4)`
-/

namespace A387355.P16162145547914331822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n ^ 2 + n : ℚ) / 4⌉

end

end A387355.P16162145547914331822

noncomputable section

/-- A387355: Upper (1/2)-midsequence of square numbers and triangular numbers; see Comments.

Offset 0, canonical program `A387355.P16162145547914331822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387355 (n : ℕ) : ℤ :=
  A387355.P16162145547914331822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387429.P302094468979754763

`(n+1)*(4+5*(n+1)²+3*(n+1)^4)/12`
-/

namespace A387429.P302094468979754763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (4 + 5 * (n + 1) ^ 2 + 3 * (n + 1) ^ 4) : ℚ) / 12

end

end A387429.P302094468979754763

noncomputable section

/-- A387429: Self-convolution of n-th antidiagonal of the natural number array (so named in the Comments section of A000027).

Offset 1, canonical program `A387429.P302094468979754763`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387429.P302094468979754763.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387439.P7694640285450300545

`(2*n+1)*(12+11*n+93*n²+4*n^3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387439.P7694640285450300545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (12 + 11 * n + 93 * n ^ 2 + 4 * n ^ 3) : ℚ) / 3

end

end A387439.P7694640285450300545

noncomputable section

/-- A387439: a(n) = (2*n + 1)*(12 + 11*n + 93*n^2 + 4*n^3)/3.

Offset 0, canonical program `A387439.P7694640285450300545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387439 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387439.P7694640285450300545.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387469.P7072665965893286847

`a(n-1)+6*a(n-2)-6*a(n-3)-a(n-4)+a(n-5)` with `a(0)=4, a(1)=6, a(2)=41, a(3)=53, a(4)=258`
-/

namespace A387469.P7072665965893286847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 41, 53, 258] fun n a =>
  a (n - 1) + 6 * a (n - 2) - 6 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A387469.P7072665965893286847

noncomputable section

/-- A387469: Numbers s > 0 such that 8*s^2 + 64*s + 57 is a square.

Offset 1, canonical program `A387469.P7072665965893286847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387469 (n : ℕ) : ℤ :=
  A387469.P7072665965893286847.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387525.P18235159657193941252

`n*(n^3-3*n+4)/2+1`
-/

namespace A387525.P18235159657193941252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 3 : ℤ) - (3 * n : ℤ) + 4) : ℚ) / 2 + 1

end

end A387525.P18235159657193941252

noncomputable section

/-- A387525: a(n) = (n^4-3*n^2+4*n+2)/2.

Offset 0, canonical program `A387525.P18235159657193941252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387525 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387525.P18235159657193941252.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387539.P2141426731724547272

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=4, a(5)=4, a(6)=12, a(7)=9, a(8)=16`
-/

namespace A387539.P2141426731724547272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 1, 4, 4, 12, 9, 16] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8) + a (n - 9)

end

end A387539.P2141426731724547272

noncomputable section

/-- A387539: Sum of the odd parts in the partitions of n into 2 parts.

Offset 0, canonical program `A387539.P2141426731724547272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387539 (n : ℕ) : ℤ :=
  A387539.P2141426731724547272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387541.P2549691436260464371

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=4, a(5)=6, a(6)=6, a(7)=12, a(8)=16`
-/

namespace A387541.P2549691436260464371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2, 4, 6, 6, 12, 16] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8) + a (n - 9)

end

end A387541.P2549691436260464371

noncomputable section

/-- A387541: Sum of the even parts in the partitions of n into 2 parts.

Offset 0, canonical program `A387541.P2549691436260464371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387541 (n : ℕ) : ℤ :=
  A387541.P2549691436260464371.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387549.P10063503865492196353

`6*a(n-2)-a(n-4)` with `a(0)=3, a(1)=7, a(2)=25, a(3)=45`
-/

namespace A387549.P10063503865492196353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 25, 45] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A387549.P10063503865492196353

noncomputable section

/-- A387549: Numbers k such that k^2 + 23 is twice a square.

Offset 1, canonical program `A387549.P10063503865492196353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387549 (n : ℕ) : ℤ :=
  A387549.P10063503865492196353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387550.P10534718619198405326

`4*a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=72`
-/

namespace A387550.P10534718619198405326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16, 72] fun n a =>
  4 * a (n - 1) + 8 * a (n - 3) - 4 * a (n - 4)

end

end A387550.P10534718619198405326

noncomputable section

/-- A387550: a(n) = (1/2) * Sum_{k=0..n} 2^k * binomial(2*k+2,2*n-2*k+1).

Offset 0, canonical program `A387550.P10534718619198405326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387550 (n : ℕ) : ℤ :=
  A387550.P10534718619198405326.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387554.P12030374184026086549

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=4, a(4)=3, a(5)=20`
-/

namespace A387554.P12030374184026086549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 4, 3, 20] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + 4 * a (n - 5) - 4 * a (n - 6)

end

end A387554.P12030374184026086549

noncomputable section

/-- A387554: a(n) = (1/2) * Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k+2,2*n-4*k+1).

Offset 0, canonical program `A387554.P12030374184026086549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387554 (n : ℕ) : ℤ :=
  A387554.P12030374184026086549.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387557.P6941856615461377033

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=4, a(5)=0, a(6)=3, a(7)=20`
-/

namespace A387557.P6941856615461377033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 4, 0, 3, 20] fun n a =>
  2 * a (n - 3) + 4 * a (n - 4) - a (n - 6) + 4 * a (n - 7) - 4 * a (n - 8)

end

end A387557.P6941856615461377033

noncomputable section

/-- A387557: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k+2,2*n-6*k+1).

Offset 0, canonical program `A387557.P6941856615461377033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387557 (n : ℕ) : ℤ :=
  A387557.P6941856615461377033.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387570.P11961951256237824758

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=2, a(1)=3, a(2)=9, a(3)=22, a(4)=51, a(5)=111`
-/

namespace A387570.P11961951256237824758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 9, 22, 51, 111] fun n a =>
  3 * a (n - 1) - 5 * a (n - 3) + 3 * a (n - 5) + a (n - 6)

end

end A387570.P11961951256237824758

noncomputable section

/-- A387570: Number of matchings in the n-dipyramidal graph.

Offset 0, canonical program `A387570.P11961951256237824758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387570 (n : ℕ) : ℤ :=
  A387570.P11961951256237824758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387571.P4098746600360052705

`5*a(n-1)-5*a(n-2)-5*a(n-3)+5*a(n-4)-a(n-5)` with `a(0)=3, a(1)=21, a(2)=64, a(3)=217, a(4)=671`
-/

namespace A387571.P4098746600360052705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 21, 64, 217, 671] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2) - 5 * a (n - 3) + 5 * a (n - 4) - a (n - 5)

end

end A387571.P4098746600360052705

noncomputable section

/-- A387571: Number of matchings in the n-double cone graph.

Offset 1, canonical program `A387571.P4098746600360052705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387571 (n : ℕ) : ℤ :=
  A387571.P4098746600360052705.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387571.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387596.P16706952210142339577

`3*a(n-1)+a(n-2)-5*a(n-3)+a(n-4)` with `a(0)=7, a(1)=20, a(2)=53, a(3)=147`
-/

namespace A387596.P16706952210142339577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 20, 53, 147] fun n a =>
  3 * a (n - 1) + a (n - 2) - 5 * a (n - 3) + a (n - 4)

end

end A387596.P16706952210142339577

noncomputable section

/-- A387596: Number of maximum matchings in the n-Cameron graph.

Offset 1, canonical program `A387596.P16706952210142339577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387596 (n : ℕ) : ℤ :=
  A387596.P16706952210142339577.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387598.P5535459554804066709

`floor(n/2)*(n-2)+round((n-2)²/12)`
-/

namespace A387598.P5535459554804066709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * ((n : ℤ) - 2) + SequenceMachineLib.roundAway ((((n : ℤ) - 2) ^ 2 : ℚ) / 12)

end

end A387598.P5535459554804066709

noncomputable section

/-- A387598: a(n) is the number of 3 element sets of distinct integer sided strict rectangles that fill an n X n square.

Offset 1, canonical program `A387598.P5535459554804066709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387598 (n : ℕ) : ℤ :=
  A387598.P5535459554804066709.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387600.P15552032445827693754

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8, a(4)=25, a(5)=62`
-/

namespace A387600.P15552032445827693754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 8, 25, 62] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3) + 4 * a (n - 4) - 4 * a (n - 6)

end

end A387600.P15552032445827693754

noncomputable section

/-- A387600: a(n) = (1/2) * Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+2,2*k+1).

Offset 0, canonical program `A387600.P15552032445827693754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387600 (n : ℕ) : ℤ :=
  A387600.P15552032445827693754.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387601.P7322538152632254719

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=9, a(5)=26, a(6)=63, a(7)=128`
-/

namespace A387601.P7322538152632254719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 9, 26, 63, 128] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + 4 * a (n - 5) - 4 * a (n - 8)

end

end A387601.P7322538152632254719

noncomputable section

/-- A387601: a(n) = (1/2) * Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+2,2*k+1).

Offset 0, canonical program `A387601.P7322538152632254719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387601 (n : ℕ) : ℤ :=
  A387601.P7322538152632254719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387611.P17399779197116354603

`8*n^5/gcd(n, 15)`
-/

namespace A387611.P17399779197116354603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 5 : ℚ) / (Nat.gcd n 15 : ℚ)

end

end A387611.P17399779197116354603

noncomputable section

/-- A387611: a(n) = numerator(Integral_{(x,y,z) in R^3 : 0 <= x^2 + y^2 + z^2 <= n^2} (x^2 + y^2) dx dy dz)/Pi.

Offset 0, canonical program `A387611.P17399779197116354603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387611 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387611.P17399779197116354603.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387612.P380487615845563895

`15/gcd(15, n)`
-/

namespace A387612.P380487615845563895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 / (Nat.gcd 15 n : ℚ)

end

end A387612.P380487615845563895

noncomputable section

/-- A387612: a(n) = denominator(Integral_{(x,y,z) in R^3 : 0 <= x^2 + y^2 + z^2 <= n^2}(x^2 + y^2) dx dy dz).

Offset 0, canonical program `A387612.P380487615845563895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387612 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387612.P380487615845563895.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387612.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387622.P17213284431742214818

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=13, a(5)=31`
-/

namespace A387622.P17213284431742214818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 13, 31] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3) + 4 * a (n - 4) - 4 * a (n - 6)

end

end A387622.P17213284431742214818

noncomputable section

/-- A387622: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k,2*k).

Offset 0, canonical program `A387622.P17213284431742214818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387622 (n : ℕ) : ℤ :=
  A387622.P17213284431742214818.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387623.P16544980671046502623

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3, a(5)=13, a(6)=31, a(7)=57`
-/

namespace A387623.P16544980671046502623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 3, 13, 31, 57] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + 4 * a (n - 5) - 4 * a (n - 8)

end

end A387623.P16544980671046502623

noncomputable section

/-- A387623: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k,2*k).

Offset 0, canonical program `A387623.P16544980671046502623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387623 (n : ℕ) : ℤ :=
  A387623.P16544980671046502623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387624.P18351110829179417898

`2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=21`
-/

namespace A387624.P18351110829179417898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 21] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3) - 4 * a (n - 4)

end

end A387624.P18351110829179417898

noncomputable section

/-- A387624: a(n) = Sum_{k=0..floor(n/2)} 2^k * binomial(2*n-2*k+1,2*k).

Offset 0, canonical program `A387624.P18351110829179417898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387624 (n : ℕ) : ℤ :=
  A387624.P18351110829179417898.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387625.P4687865049303587296

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=7, a(4)=21, a(5)=43`
-/

namespace A387625.P4687865049303587296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 7, 21, 43] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3) + 4 * a (n - 4) - 4 * a (n - 6)

end

end A387625.P4687865049303587296

noncomputable section

/-- A387625: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+1,2*k).

Offset 0, canonical program `A387625.P4687865049303587296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387625 (n : ℕ) : ℤ :=
  A387625.P4687865049303587296.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387626.P12143061957277458242

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=7, a(5)=21, a(6)=43, a(7)=73`
-/

namespace A387626.P12143061957277458242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 7, 21, 43, 73] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + 4 * a (n - 5) - 4 * a (n - 8)

end

end A387626.P12143061957277458242

noncomputable section

/-- A387626: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+1,2*k).

Offset 0, canonical program `A387626.P12143061957277458242`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387626 (n : ℕ) : ℤ :=
  A387626.P12143061957277458242.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387627.P553432912788702254

`2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=27`
-/

namespace A387627.P553432912788702254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 27] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3) - 4 * a (n - 4)

end

end A387627.P553432912788702254

noncomputable section

/-- A387627: a(n) = Sum_{k=0..floor(n/2)} 2^k * binomial(2*n-2*k+1,2*k+1).

Offset 0, canonical program `A387627.P553432912788702254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387627 (n : ℕ) : ℤ :=
  A387627.P553432912788702254.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387628.P12659639395902407937

`2*a(n-1)-a(n-2)+4*a(n-3)+4*a(n-4)-4*a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=9, a(4)=29, a(5)=81`
-/

namespace A387628.P12659639395902407937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 9, 29, 81] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3) + 4 * a (n - 4) - 4 * a (n - 6)

end

end A387628.P12659639395902407937

noncomputable section

/-- A387628: a(n) = Sum_{k=0..floor(n/3)} 2^k * binomial(2*n-4*k+1,2*k+1).

Offset 0, canonical program `A387628.P12659639395902407937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387628 (n : ℕ) : ℤ :=
  A387628.P12659639395902407937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387629.P9691728918316883031

`2*a(n-1)-a(n-2)+4*a(n-4)+4*a(n-5)-4*a(n-8)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=11, a(5)=31, a(6)=83, a(7)=183`
-/

namespace A387629.P9691728918316883031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7, 11, 31, 83, 183] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + 4 * a (n - 5) - 4 * a (n - 8)

end

end A387629.P9691728918316883031

noncomputable section

/-- A387629: a(n) = Sum_{k=0..floor(n/4)} 2^k * binomial(2*n-6*k+1,2*k+1).

Offset 0, canonical program `A387629.P9691728918316883031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387629 (n : ℕ) : ℤ :=
  A387629.P9691728918316883031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387645.P11208717823661659370

`(2*(n+1)²-3-(-1)^(n+1))²*(2*(n+1)²+1-(-1)^(n+1))/128`
-/

namespace A387645.P11208717823661659370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) ^ 2 : ℤ) - 3 - (-1) ^ (n + 1)) ^ 2 * ((2 * (n + 1) ^ 2 + 1 : ℤ) - (-1) ^ (n + 1)) : ℚ) / 128

end

end A387645.P11208717823661659370

noncomputable section

/-- A387645: Detour index of the n X n black bishop graph.

Offset 1, canonical program `A387645.P11208717823661659370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387645 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387645.P11208717823661659370.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387647.P18070227687903299509

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=1, a(5)=12`
-/

namespace A387647.P18070227687903299509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 1, 12] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + 4 * a (n - 5) - 4 * a (n - 6)

end

end A387647.P18070227687903299509

noncomputable section

/-- A387647: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k,2*n-4*k).

Offset 0, canonical program `A387647.P18070227687903299509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387647 (n : ℕ) : ℤ :=
  A387647.P18070227687903299509.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387648.P14380713438877395612

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=0, a(6)=1, a(7)=12`
-/

namespace A387648.P14380713438877395612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 2, 0, 1, 12] fun n a =>
  2 * a (n - 3) + 4 * a (n - 4) - a (n - 6) + 4 * a (n - 7) - 4 * a (n - 8)

end

end A387648.P14380713438877395612

noncomputable section

/-- A387648: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k,2*n-6*k).

Offset 0, canonical program `A387648.P14380713438877395612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387648 (n : ℕ) : ℤ :=
  A387648.P14380713438877395612.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387648.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387649.P14837382352768733732

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6, a(4)=1, a(5)=20`
-/

namespace A387649.P14837382352768733732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 6, 1, 20] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + 4 * a (n - 5) - 4 * a (n - 6)

end

end A387649.P14837382352768733732

noncomputable section

/-- A387649: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k+1,2*n-4*k).

Offset 0, canonical program `A387649.P14837382352768733732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387649 (n : ℕ) : ℤ :=
  A387649.P14837382352768733732.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387649.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387650.P16435050881725697743

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=6, a(5)=0, a(6)=1, a(7)=20`
-/

namespace A387650.P16435050881725697743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 6, 0, 1, 20] fun n a =>
  2 * a (n - 3) + 4 * a (n - 4) - a (n - 6) + 4 * a (n - 7) - 4 * a (n - 8)

end

end A387650.P16435050881725697743

noncomputable section

/-- A387650: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k+1,2*n-6*k).

Offset 0, canonical program `A387650.P16435050881725697743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387650 (n : ℕ) : ℤ :=
  A387650.P16435050881725697743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387651.P1240963754905520773

`2*a(n-2)+4*a(n-3)-a(n-4)+4*a(n-5)-4*a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=5, a(5)=20`
-/

namespace A387651.P1240963754905520773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 2, 5, 20] fun n a =>
  2 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + 4 * a (n - 5) - 4 * a (n - 6)

end

end A387651.P1240963754905520773

noncomputable section

/-- A387651: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*k+1,2*n-4*k+1).

Offset 0, canonical program `A387651.P1240963754905520773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387651 (n : ℕ) : ℤ :=
  A387651.P1240963754905520773.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387652.P42630545566347521

`2*a(n-3)+4*a(n-4)-a(n-6)+4*a(n-7)-4*a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=2, a(5)=0, a(6)=5, a(7)=20`
-/

namespace A387652.P42630545566347521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3, 2, 0, 5, 20] fun n a =>
  2 * a (n - 3) + 4 * a (n - 4) - a (n - 6) + 4 * a (n - 7) - 4 * a (n - 8)

end

end A387652.P42630545566347521

noncomputable section

/-- A387652: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*k+1,2*n-6*k+1).

Offset 0, canonical program `A387652.P42630545566347521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387652 (n : ℕ) : ℤ :=
  A387652.P42630545566347521.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387680.P10945382852570778628

`5^n-n*(n-1)*3^(n-2)`
-/

namespace A387680.P10945382852570778628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) - ((n : ℤ) * ((n : ℤ) - 1) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A387680.P10945382852570778628

noncomputable section

/-- A387680: Number of length n words on the alphabet {a,b,c,d,e} that do not contain exactly one a and exactly one b.

Offset 0, canonical program `A387680.P10945382852570778628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387680 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387680.P10945382852570778628.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387689.P9455251819028227511

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=20`
-/

namespace A387689.P9455251819028227511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 20] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A387689.P9455251819028227511

noncomputable section

/-- A387689: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*n-2*k,2*k).

Offset 0, canonical program `A387689.P9455251819028227511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387689 (n : ℕ) : ℤ :=
  A387689.P9455251819028227511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387690.P18366013979878445201

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=28, a(5)=92`
-/

namespace A387690.P18366013979878445201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 9, 28, 92] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 3) + 4 * a (n - 4) - a (n - 6)

end

end A387690.P18366013979878445201

noncomputable section

/-- A387690: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k,2*k).

Offset 0, canonical program `A387690.P18366013979878445201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387690 (n : ℕ) : ℤ :=
  A387690.P18366013979878445201.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387690.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387691.P13392601389255870572

`4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=17, a(5)=44, a(6)=124, a(7)=352`
-/

namespace A387691.P13392601389255870572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 17, 44, 124, 352] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 4) + 4 * a (n - 5) - a (n - 8)

end

end A387691.P13392601389255870572

noncomputable section

/-- A387691: a(n) = Sum_{k=0..floor(n/4)} 2^(n-4*k) * binomial(2*n-6*k,2*k).

Offset 0, canonical program `A387691.P13392601389255870572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387691 (n : ℕ) : ℤ :=
  A387691.P13392601389255870572.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387692.P427402047839379410

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=36, a(5)=116`
-/

namespace A387692.P427402047839379410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 11, 36, 116] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 3) + 4 * a (n - 4) - a (n - 6)

end

end A387692.P427402047839379410

noncomputable section

/-- A387692: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k+1,2*k).

Offset 0, canonical program `A387692.P427402047839379410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387692 (n : ℕ) : ℤ :=
  A387692.P427402047839379410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387693.P15185850816940270829

`4*a(n-1)-4*a(n-2)+2*a(n-4)+4*a(n-5)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=19, a(5)=52, a(6)=148, a(7)=416`
-/

namespace A387693.P15185850816940270829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 19, 52, 148, 416] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 4) + 4 * a (n - 5) - a (n - 8)

end

end A387693.P15185850816940270829

noncomputable section

/-- A387693: a(n) = Sum_{k=0..floor(n/4)} 2^(n-4*k) * binomial(2*n-6*k+1,2*k).

Offset 0, canonical program `A387693.P15185850816940270829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387693 (n : ℕ) : ℤ :=
  A387693.P15185850816940270829.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387694.P9471301431738774999

`4*a(n-1)-2*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=21, a(3)=76`
-/

namespace A387694.P9471301431738774999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 21, 76] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A387694.P9471301431738774999

noncomputable section

/-- A387694: a(n) = Sum_{k=0..floor(n/2)} 2^(n-2*k) * binomial(2*n-2*k+1,2*k+1).

Offset 0, canonical program `A387694.P9471301431738774999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387694 (n : ℕ) : ℤ :=
  A387694.P9471301431738774999.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387694.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387695.P12302221396290479493

`4*a(n-1)-4*a(n-2)+2*a(n-3)+4*a(n-4)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=57, a(4)=164, a(5)=492`
-/

namespace A387695.P12302221396290479493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 20, 57, 164, 492] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + 2 * a (n - 3) + 4 * a (n - 4) - a (n - 6)

end

end A387695.P12302221396290479493

noncomputable section

/-- A387695: a(n) = Sum_{k=0..floor(n/3)} 2^(n-3*k) * binomial(2*n-4*k+1,2*k+1).

Offset 0, canonical program `A387695.P12302221396290479493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387695 (n : ℕ) : ℤ :=
  A387695.P12302221396290479493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387742.P12791655691872336082

`12*a(n-1)+64*a(n-2)` with `a(0)=0, a(1)=3, a(2)=28`
-/

namespace A387742.P12791655691872336082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 28] fun n a =>
  12 * a (n - 1) + 64 * a (n - 2)

end

end A387742.P12791655691872336082

noncomputable section

/-- A387742: a(n) = (1/2) * Sum_{k=0..n-1} binomial(4*n,4*k+2).

Offset 0, canonical program `A387742.P12791655691872336082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387742 (n : ℕ) : ℤ :=
  (A387742.P12791655691872336082.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387743.P5774746120698566391

`21*a(n-1)+353*a(n-2)-32*a(n-3)` with `a(0)=0, a(1)=1, a(2)=44`
-/

namespace A387743.P5774746120698566391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 44] fun n a =>
  21 * a (n - 1) + 353 * a (n - 2) - 32 * a (n - 3)

end

end A387743.P5774746120698566391

noncomputable section

/-- A387743: a(n) = (1/5) * Sum_{k=0..n-1} binomial(5*n,5*k+1).

Offset 0, canonical program `A387743.P5774746120698566391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387743 (n : ℕ) : ℤ :=
  A387743.P5774746120698566391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387743.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387744.P3944545666817136554

`21*a(n-1)+353*a(n-2)-32*a(n-3)` with `a(0)=0, a(1)=2, a(2)=33`
-/

namespace A387744.P3944545666817136554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 33] fun n a =>
  21 * a (n - 1) + 353 * a (n - 2) - 32 * a (n - 3)

end

end A387744.P3944545666817136554

noncomputable section

/-- A387744: a(n) = (1/5) * Sum_{k=0..n-1} binomial(5*n,5*k+2).

Offset 0, canonical program `A387744.P3944545666817136554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387744 (n : ℕ) : ℤ :=
  A387744.P3944545666817136554.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387764.P8004577650379743226

`4*a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=48`
-/

namespace A387764.P8004577650379743226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10, 48] fun n a =>
  4 * a (n - 1) + 8 * a (n - 3) - 4 * a (n - 4)

end

end A387764.P8004577650379743226

noncomputable section

/-- A387764: a(n) = Sum_{k=0..n} 2^k * binomial(2*k+1,2*n-2*k).

Offset 0, canonical program `A387764.P8004577650379743226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387764 (n : ℕ) : ℤ :=
  A387764.P8004577650379743226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387764.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387767.P15140854620593512084

`4*a(n-1)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=6, a(2)=22, a(3)=96`
-/

namespace A387767.P15140854620593512084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 22, 96] fun n a =>
  4 * a (n - 1) + 8 * a (n - 3) - 4 * a (n - 4)

end

end A387767.P15140854620593512084

noncomputable section

/-- A387767: a(n) = Sum_{k=0..n} 2^k * binomial(2*k+1,2*n-2*k+1).

Offset 0, canonical program `A387767.P15140854620593512084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387767 (n : ℕ) : ℤ :=
  A387767.P15140854620593512084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387778.P3671002558961841931

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=27`
-/

namespace A387778.P3671002558961841931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 10, 27] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A387778.P3671002558961841931

noncomputable section

/-- A387778: Lower (1/2)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A387778.P3671002558961841931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387778 (n : ℕ) : ℤ :=
  A387778.P3671002558961841931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387779.P1712524356062452920

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=28`
-/

namespace A387779.P1712524356062452920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 11, 28] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A387779.P1712524356062452920

noncomputable section

/-- A387779: Upper (1/2)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A387779.P1712524356062452920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387779 (n : ℕ) : ℤ :=
  A387779.P1712524356062452920.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387780.P16098913679345694359

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=12, a(3)=31, a(4)=82`
-/

namespace A387780.P16098913679345694359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 12, 31, 82] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A387780.P16098913679345694359

noncomputable section

/-- A387780: Lower (3/2)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A387780.P16098913679345694359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387780 (n : ℕ) : ℤ :=
  A387780.P16098913679345694359.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387781.P9312498711878284071

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=32, a(4)=83`
-/

namespace A387781.P9312498711878284071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12, 32, 83] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A387781.P9312498711878284071

noncomputable section

/-- A387781: Upper (3/2)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A387781.P9312498711878284071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387781 (n : ℕ) : ℤ :=
  A387781.P9312498711878284071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387782.P7316047337897605881

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7, a(4)=18, a(5)=48`
-/

namespace A387782.P7316047337897605881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 7, 18, 48] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 4) - 3 * a (n - 5) + a (n - 6)

end

end A387782.P7316047337897605881

noncomputable section

/-- A387782: Lower (1/3)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

Offset 1, canonical program `A387782.P7316047337897605881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387782 (n : ℕ) : ℤ :=
  A387782.P7316047337897605881.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387783.P8792000688984517469

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7, a(4)=19, a(5)=48`
-/

namespace A387783.P8792000688984517469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7, 19, 48] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 4) - 3 * a (n - 5) + a (n - 6)

end

end A387783.P8792000688984517469

noncomputable section

/-- A387783: Upper (1/3)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A387783.P8792000688984517469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387783 (n : ℕ) : ℤ :=
  A387783.P8792000688984517469.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387784.P799340563457406706

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=14, a(4)=36, a(5)=96`
-/

namespace A387784.P799340563457406706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 14, 36, 96] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 4) - 3 * a (n - 5) + a (n - 6)

end

end A387784.P799340563457406706

noncomputable section

/-- A387784: Lower (2/3)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A387784.P799340563457406706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387784 (n : ℕ) : ℤ :=
  A387784.P799340563457406706.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387785.P18370146105951954786

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=14, a(4)=37, a(5)=96`
-/

namespace A387785.P18370146105951954786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 14, 37, 96] fun n a =>
  3 * a (n - 1) - a (n - 2) + a (n - 4) - 3 * a (n - 5) + a (n - 6)

end

end A387785.P18370146105951954786

noncomputable section

/-- A387785: Upper (2/3)-midsequence of (F(2n)) and (F(2n+1)), where F=A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A387785.P18370146105951954786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387785 (n : ℕ) : ℤ :=
  A387785.P18370146105951954786.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387814.P13071900105693731522

`(1+2*64^n+3*(-27)^n)/6`
-/

namespace A387814.P13071900105693731522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * 64 ^ n : ℤ) + 3 * (-27) ^ n : ℚ) / 6

end

end A387814.P13071900105693731522

noncomputable section

/-- A387814: a(n) = Sum_{k=0..n} binomial(6*n+1,6*k).

Offset 0, canonical program `A387814.P13071900105693731522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387814 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387814.P13071900105693731522.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387815.P1995157731751778851

`(1+8*64^n+9*(-27)^n)/18`
-/

namespace A387815.P1995157731751778851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + 8 * 64 ^ n : ℤ) + 9 * (-27) ^ n : ℚ) / 18

end

end A387815.P1995157731751778851

noncomputable section

/-- A387815: a(n) = (1/3) * Sum_{k=0..n} binomial(6*n+3,6*k+1).

Offset 0, canonical program `A387815.P1995157731751778851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387815 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387815.P1995157731751778851.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387843.P11767765782459454973

`3*a(n-1)+3*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A387843.P11767765782459454973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3)

end

end A387843.P11767765782459454973

noncomputable section

/-- A387843: a(n) = Sum_{k=0..n} binomial(2*n,3*k).

Offset 0, canonical program `A387843.P11767765782459454973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387843 (n : ℕ) : ℤ :=
  (A387843.P11767765782459454973.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387846.P6512522628485313688

`4*a(n-1)+24*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=1, a(2)=16, a(3)=136`
-/

namespace A387846.P6512522628485313688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 16, 136] fun n a =>
  4 * a (n - 1) + 24 * a (n - 2) + 64 * a (n - 3)

end

end A387846.P6512522628485313688

noncomputable section

/-- A387846: a(n) = Sum_{k=0..n} binomial(3*n,4*k).

Offset 0, canonical program `A387846.P6512522628485313688`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387846 (n : ℕ) : ℤ :=
  (A387846.P6512522628485313688.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387846.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387868.P2846887750665386546

`3*a(n-1)+3*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=11`
-/

namespace A387868.P2846887750665386546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 11] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3)

end

end A387868.P2846887750665386546

noncomputable section

/-- A387868: a(n) = Sum_{k=0..n} binomial(2*n+1,3*k).

Offset 0, canonical program `A387868.P2846887750665386546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387868 (n : ℕ) : ℤ :=
  (A387868.P2846887750665386546.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387869.P5959673116437551759

`4*a(n-1)-4*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A387869.P5959673116437551759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + 16 * a (n - 3)

end

end A387869.P5959673116437551759

noncomputable section

/-- A387869: a(n) = Sum_{k=0..n} binomial(2*n+1,4*k).

Offset 0, canonical program `A387869.P5959673116437551759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387869 (n : ℕ) : ℤ :=
  A387869.P5959673116437551759.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387869.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387870.P3699968840695008378

`4*a(n-1)+24*a(n-2)+64*a(n-3)` with `a(0)=1, a(1)=2, a(2)=36`
-/

namespace A387870.P3699968840695008378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 36] fun n a =>
  4 * a (n - 1) + 24 * a (n - 2) + 64 * a (n - 3)

end

end A387870.P3699968840695008378

noncomputable section

/-- A387870: a(n) = Sum_{k=0..n} binomial(3*n+1,4*k).

Offset 0, canonical program `A387870.P3699968840695008378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387870 (n : ℕ) : ℤ :=
  (A387870.P3699968840695008378.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387875.P10629248055153435172

`7*a(n-1)-19*a(n-2)+189*a(n-3)+216*a(n-4)` with `a(0)=1, a(1)=1, a(2)=8, a(3)=211`
-/

namespace A387875.P10629248055153435172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 8, 211] fun n a =>
  7 * a (n - 1) - 19 * a (n - 2) + 189 * a (n - 3) + 216 * a (n - 4)

end

end A387875.P10629248055153435172

noncomputable section

/-- A387875: a(n) = Sum_{k=0..n} binomial(3*n+1,6*k).

Offset 0, canonical program `A387875.P10629248055153435172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387875 (n : ℕ) : ℤ :=
  A387875.P10629248055153435172.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387875.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387913.P16167928465628734526

`C(2*(n+1)+3, n+3)-(n+3)²`
-/

namespace A387913.P16167928465628734526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1) + 3) (n + 3) : ℤ) - ((n + 3) ^ 2 : ℤ)

end

end A387913.P16167928465628734526

noncomputable section

/-- A387913: Hodge number h^{1,n-1} of a smooth hypersurface of degree n+2 in P^{n+1}.

Offset 1, canonical program `A387913.P16167928465628734526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387913 (n : ℕ) : ℤ :=
  A387913.P16167928465628734526.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388041.P14621709364107648952

`n!*((n-2)*2^(n-1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388041.P14621709364107648952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (((n : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1)

end

end A388041.P14621709364107648952

noncomputable section

/-- A388041: a(n) = n! * ((n-2) * 2^(n-1) + 1).

Offset 0, canonical program `A388041.P14621709364107648952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388041 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388041.P14621709364107648952.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388140.P16253514462590538591

`3*2^(n+1)*(2^(n+1)-1)²`
-/

namespace A388140.P16253514462590538591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ (n + 1) : ℤ) * ((2 ^ (n + 1) : ℤ) - 1) ^ 2

end

end A388140.P16253514462590538591

noncomputable section

/-- A388140: Number of axis-aligned 2 X 2 squares in the 3D projection of a 3n-dimensional hypercube with side length 2.

Offset 1, canonical program `A388140.P16253514462590538591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388140 (n : ℕ) : ℤ :=
  A388140.P16253514462590538591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388140.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388424.P17691383906920712434

`12*2^(3*n)-16*2^(2*n)+5*2^n`
-/

namespace A388424.P17691383906920712434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * 2 ^ (3 * n) : ℤ) - (16 * 2 ^ (2 * n) : ℤ) + (5 * 2 ^ n : ℤ)

end

end A388424.P17691383906920712434

noncomputable section

/-- A388424: Number of axis-aligned 2 X 2 squares in the 3D projection of a (3n+2)-dimensional hypercube with side length 2.

Offset 0, canonical program `A388424.P17691383906920712434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388424 (n : ℕ) : ℤ :=
  A388424.P17691383906920712434.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388424.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388848.P17651515736714168523

`(6*(n+1)^4-3*(n+1)²+(n+1)%2)/4`
-/

namespace A388848.P17651515736714168523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (n + 1) ^ 4 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (((n + 1) % 2 : ℕ) : ℤ) : ℚ) / 4

end

end A388848.P17651515736714168523

noncomputable section

/-- A388848: Number of distinct squares (of any orientation) whose vertices are points of the cross of side n.

Offset 1, canonical program `A388848.P17651515736714168523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388848 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388848.P17651515736714168523.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388848.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389090.P17429034800336636947

`n^4-4*(n^3-n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389090.P17429034800336636947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℚ) - (4 * ((n ^ 3 : ℤ) - (n : ℤ)) : ℚ) / 3

end

end A389090.P17429034800336636947

noncomputable section

/-- A389090: a(n) = n^4 - 4*(n^3-n)/3.

Offset 0, canonical program `A389090.P17429034800336636947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389090.P17429034800336636947.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389111.P6301462249821510295

`2*(n+1)+9*round(sqrt(2*(n+2))/3)²`
-/

namespace A389111.P6301462249821510295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + 9 * SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 2) : ℝ) / 3) ^ 2

end

end A389111.P6301462249821510295

noncomputable section

/-- A389111: Write 0,1,2,3,4,... in a triangular spiral, a(n) is such that n lies geometrically half way between 0 and a(n).

Offset 1, canonical program `A389111.P6301462249821510295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389111 (n : ℕ) : ℤ :=
  A389111.P6301462249821510295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389121.P1288163863579185815

`a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=6, a(5)=10, a(6)=17, a(7)=28, a(8)=45, a(9)=73`
-/

namespace A389121.P1288163863579185815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 6, 10, 17, 28, 45, 73] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 8) - a (n - 9) - a (n - 10)

end

end A389121.P1288163863579185815

noncomputable section

/-- A389121: Lower (2/3)-midsequence of A000032 (Lucas numbers) and A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A389121.P1288163863579185815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389121 (n : ℕ) : ℤ :=
  A389121.P1288163863579185815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389122.P14383533839839385431

`a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=4, a(4)=7, a(5)=11, a(6)=18, a(7)=28, a(8)=46, a(9)=74`
-/

namespace A389122.P14383533839839385431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 4, 7, 11, 18, 28, 46, 74] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 8) - a (n - 9) - a (n - 10)

end

end A389122.P14383533839839385431

noncomputable section

/-- A389122: Upper (2/3)-midsequence of A000032 (Lucas numbers) and A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A389122.P14383533839839385431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389122 (n : ℕ) : ℤ :=
  A389122.P14383533839839385431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389123.P2459231206358201143

`floor(1/3*2^n+1/2*3^n)`
-/

namespace A389123.P2459231206358201143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 3 * (2 ^ n : ℚ) + (1 : ℚ) / 2 * (3 ^ n : ℚ)⌋

end

end A389123.P2459231206358201143

noncomputable section

/-- A389123: Lower (1/3,1/2)-midsequence of ((2^n)) and ((3^n)); see Comments.

Offset 0, canonical program `A389123.P2459231206358201143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389123 (n : ℕ) : ℤ :=
  A389123.P2459231206358201143.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389124.P2451251241919747109

`5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=17`
-/

namespace A389124.P2451251241919747109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 17] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2) - 5 * a (n - 3) + 6 * a (n - 4)

end

end A389124.P2451251241919747109

noncomputable section

/-- A389124: Upper (1/3,1/2)-midsequence of ((2^n)) and ((3^n)); see Comments.

Offset 0, canonical program `A389124.P2451251241919747109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389124 (n : ℕ) : ℤ :=
  A389124.P2451251241919747109.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389142.P4014684878811075659

`floor((3*n²+n+1)/6)`
-/

namespace A389142.P4014684878811075659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 2 + n + 1 : ℚ) / 6⌋

end

end A389142.P4014684878811075659

noncomputable section

/-- A389142: Lower (1/3)-midsequence of square numbers and triangular numbers; see Comments.

Offset 0, canonical program `A389142.P4014684878811075659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389142 (n : ℕ) : ℤ :=
  A389142.P4014684878811075659.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389143.P8194175019073902030

`ceil((3*n²+n)/6)`
-/

namespace A389143.P8194175019073902030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n ^ 2 + n : ℚ) / 6⌉

end

end A389143.P8194175019073902030

noncomputable section

/-- A389143: Upper (1/3)-midsequence of square numbers and triangular numbers; see Comments.

Offset 0, canonical program `A389143.P8194175019073902030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389143 (n : ℕ) : ℤ :=
  A389143.P8194175019073902030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389173.P9350498967192247457

`5*a(n-1)-6*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=4, a(1)=13, a(2)=42, a(3)=135, a(4)=448`
-/

namespace A389173.P9350498967192247457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13, 42, 135, 448] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2) + 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A389173.P9350498967192247457

noncomputable section

/-- A389173: Number of mutual-visibility sets in the n-sun graph.

Offset 1, canonical program `A389173.P9350498967192247457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389173 (n : ℕ) : ℤ :=
  A389173.P9350498967192247457.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389177.P3385469192414663974

`1+(n+1)*(7+30*(n+1)+2*(n+1)²+3*(-1)^(n+1)*(2*(n+1)-5))/48`
-/

namespace A389177.P3385469192414663974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((n + 1 : ℤ) * ((7 + 30 * (n + 1) + 2 * (n + 1) ^ 2 : ℤ) + 3 * (-1) ^ (n + 1) * ((2 * (n + 1) : ℤ) - 5)) : ℚ) / 48

end

end A389177.P3385469192414663974

noncomputable section

/-- A389177: Number of mutual-visibility sets in the n-cycle graph.

Offset 1, canonical program `A389177.P3385469192414663974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389177 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389177.P3385469192414663974.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389177.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389183.P1499694214318350192

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=4, a(1)=15, a(2)=41, a(3)=94, a(4)=190`
-/

namespace A389183.P1499694214318350192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 15, 41, 94, 190] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A389183.P1499694214318350192

noncomputable section

/-- A389183: Number of mutual-visibility sets in the n-ladder graph.

Offset 1, canonical program `A389183.P1499694214318350192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389183 (n : ℕ) : ℤ :=
  A389183.P1499694214318350192.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389183.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389269.P14158565152373130859

`14*a(n-1)-56*a(n-2)+64*a(n-3)` with `a(0)=0, a(1)=16, a(2)=240`
-/

namespace A389269.P14158565152373130859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 16, 240] fun n a =>
  14 * a (n - 1) - 56 * a (n - 2) + 64 * a (n - 3)

end

end A389269.P14158565152373130859

noncomputable section

/-- A389269: Number of axis-aligned 2 X 2 squares in the 3D projection of a (3n+1)-dimensional hypercube with side length 2.

Offset 0, canonical program `A389269.P14158565152373130859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389269 (n : ℕ) : ℤ :=
  A389269.P14158565152373130859.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389269.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389314.P15676417665564126010

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=9, a(5)=1, a(6)=3, a(7)=7, a(8)=5`
-/

namespace A389314.P15676417665564126010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2, 9, 1, 3, 7, 5] fun n a =>
  a (n - 6)

end

end A389314.P15676417665564126010

noncomputable section

/-- A389314: Decimal expansion of 1/3432.

Offset 0, canonical program `A389314.P15676417665564126010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389314 (n : ℕ) : ℤ :=
  (A389314.P15676417665564126010.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389316.P139881400455844798

`floor((3*n²+n)/3)`
-/

namespace A389316.P139881400455844798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * n ^ 2 + n : ℚ) / 3⌋

end

end A389316.P139881400455844798

noncomputable section

/-- A389316: Lower (2/3)-midsequence of square numbers and triangular numbers; see Comments.

Offset 0, canonical program `A389316.P139881400455844798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389316 (n : ℕ) : ℤ :=
  A389316.P139881400455844798.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389317.P4950096540508044717

`ceil((3*n²+n)/3)`
-/

namespace A389317.P4950096540508044717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * n ^ 2 + n : ℚ) / 3⌉

end

end A389317.P4950096540508044717

noncomputable section

/-- A389317: Upper (2/3)-midsequence of square numbers and triangular numbers; see Comments.

Offset 0, canonical program `A389317.P4950096540508044717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389317 (n : ℕ) : ℤ :=
  A389317.P4950096540508044717.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389318.P10323438831737550613

`ceil((n²-n)/8)`
-/

namespace A389318.P10323438831737550613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 8⌉

end

end A389318.P10323438831737550613

noncomputable section

/-- A389318: Upper (1/4)-midsequence of square numbers and (-1)*(triangular numbers); see Comments.

Offset 0, canonical program `A389318.P10323438831737550613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389318 (n : ℕ) : ℤ :=
  A389318.P10323438831737550613.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389319.P7944822161179526840

`floor(3/8*(n²-n))`
-/

namespace A389319.P7944822161179526840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 8 * ((n ^ 2 : ℤ) - (n : ℤ) : ℚ)⌋

end

end A389319.P7944822161179526840

noncomputable section

/-- A389319: Lower (3/4)-midsequence of square numbers and negative triangular numbers; see Comments.

Offset 0, canonical program `A389319.P7944822161179526840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389319 (n : ℕ) : ℤ :=
  A389319.P7944822161179526840.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389320.P2480373306257187130

`ceil(3/8*(n²-n))`
-/

namespace A389320.P2480373306257187130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 8 * ((n ^ 2 : ℤ) - (n : ℤ) : ℚ)⌉

end

end A389320.P2480373306257187130

noncomputable section

/-- A389320: Upper (3/4)-midsequence of square numbers and negative triangular numbers; see Comments.

Offset 0, canonical program `A389320.P2480373306257187130`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389320 (n : ℕ) : ℤ :=
  A389320.P2480373306257187130.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389363.P4317471653549527365

`floor(((n+1)²-1)*(3*(n+1)²+4*(n+1)-3)/16)`
-/

namespace A389363.P4317471653549527365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((n + 1) ^ 2 : ℤ) - 1) * ((3 * (n + 1) ^ 2 + 4 * (n + 1) : ℤ) - 3) : ℚ) / 16⌋

end

end A389363.P4317471653549527365

noncomputable section

/-- A389363: a(n) is the number of isosceles trapezoids in a triangular grid of side length n.

Offset 1, canonical program `A389363.P4317471653549527365`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389363 (n : ℕ) : ℤ :=
  A389363.P4317471653549527365.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389545.P16064439688389422553

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=81`
-/

namespace A389545.P16064439688389422553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27, 81] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A389545.P16064439688389422553

noncomputable section

/-- A389545: a(n) = Sum_{k=0..4} 2^k * binomial(n,k).

Offset 0, canonical program `A389545.P16064439688389422553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389545 (n : ℕ) : ℤ :=
  A389545.P16064439688389422553.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389608.P16797978139586984549

`(7*n²-5*n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389608.P16797978139586984549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * n ^ 2 : ℤ) - (5 * n : ℤ) + 2 : ℚ) / 2

end

end A389608.P16797978139586984549

noncomputable section

/-- A389608: a(n) = (7*n^2-5*n+2)/2.

Offset 0, canonical program `A389608.P16797978139586984549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389608 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389608.P16797978139586984549.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389615.P8878731133497082593

`n*(7*n+3)/2+1`
-/

namespace A389615.P8878731133497082593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (7 * n + 3) : ℚ) / 2 + 1

end

end A389615.P8878731133497082593

noncomputable section

/-- A389615: a(n) = 7*n^2/2 + 3*n/2 + 1.

Offset 0, canonical program `A389615.P8878731133497082593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389615 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389615.P8878731133497082593.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389626.P3308640016307189601

`(n*(n-2)+2)*(n*(3*n+2)+1)/2`
-/

namespace A389626.P3308640016307189601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * ((n : ℤ) - 2) + 2) * (n * (3 * n + 2) + 1 : ℤ) : ℚ) / 2

end

end A389626.P3308640016307189601

noncomputable section

/-- A389626: One-third of the total number of edges formed after n points have been placed in general position on each edge of a triangle (as in A365929).

Offset 0, canonical program `A389626.P3308640016307189601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389626 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389626.P3308640016307189601.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389699.P12100899306193747354

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`
-/

namespace A389699.P12100899306193747354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 20] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A389699.P12100899306193747354

noncomputable section

/-- A389699: a(n) = Sum_{k=0..n} binomial(n+k,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A389699.P12100899306193747354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389699 (n : ℕ) : ℤ :=
  A389699.P12100899306193747354.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389797.P3556850316013249199

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=28, a(2)=82`
-/

namespace A389797.P3556850316013249199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28, 82] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A389797.P3556850316013249199

noncomputable section

/-- A389797: Centered 27-gonal numbers.

Offset 1, canonical program `A389797.P3556850316013249199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389797 (n : ℕ) : ℤ :=
  A389797.P3556850316013249199.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389798.P13110267990818327593

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=30, a(2)=88`
-/

namespace A389798.P13110267990818327593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30, 88] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A389798.P13110267990818327593

noncomputable section

/-- A389798: Centered 29-gonal numbers.

Offset 1, canonical program `A389798.P13110267990818327593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389798 (n : ℕ) : ℤ :=
  A389798.P13110267990818327593.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389799.P12456178853448985860

`15*(n+1)²-15*(n+1)+1`
-/

namespace A389799.P12456178853448985860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (15 * (n + 1) ^ 2 : ℤ) - (15 * (n + 1) : ℤ) + 1

end

end A389799.P12456178853448985860

noncomputable section

/-- A389799: Centered 30-gonal numbers.

Offset 1, canonical program `A389799.P12456178853448985860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389799 (n : ℕ) : ℤ :=
  A389799.P12456178853448985860.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389933.P1180239488055824644

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=29`
-/

namespace A389933.P1180239488055824644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 29] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A389933.P1180239488055824644

noncomputable section

/-- A389933: a(n) = Sum_{k=0..n} binomial(n+k+1,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A389933.P1180239488055824644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389933 (n : ℕ) : ℤ :=
  A389933.P1180239488055824644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389976.P12702085776211857490

`3^n-n*2^(n-1)`
-/

namespace A389976.P12702085776211857490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) - (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A389976.P12702085776211857490

noncomputable section

/-- A389976: Expansion of e.g.f. exp(2*x)*(exp(x) - x).

Offset 0, canonical program `A389976.P12702085776211857490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389976 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389976.P12702085776211857490.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390020.P10148638981166851222

`2*a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=1`
-/

namespace A390020.P10148638981166851222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 1] fun n a =>
  2 * a (n - 3) + a (n - 5) - a (n - 6)

end

end A390020.P10148638981166851222

noncomputable section

/-- A390020: a(n) = Sum_{k=0..floor(2*n/5)} binomial(k+1,2*n-5*k).

Offset 0, canonical program `A390020.P10148638981166851222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390020 (n : ℕ) : ℤ :=
  A390020.P10148638981166851222.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390020.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390034.P16555873954648070697

`3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=1`
-/

namespace A390034.P16555873954648070697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0, 6, 1] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 5) + a (n - 6)

end

end A390034.P16555873954648070697

noncomputable section

/-- A390034: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k+2,3*n-5*k).

Offset 0, canonical program `A390034.P16555873954648070697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390034 (n : ℕ) : ℤ :=
  A390034.P16555873954648070697.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390035.P18431912424920761164

`3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=0, a(6)=10`
-/

namespace A390035.P18431912424920761164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0, 6, 0, 10] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6) + a (n - 7)

end

end A390035.P18431912424920761164

noncomputable section

/-- A390035: a(n) = Sum_{k=0..floor(n/2)} binomial(k+2,3*n-6*k+2).

Offset 0, canonical program `A390035.P18431912424920761164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390035 (n : ℕ) : ℤ :=
  A390035.P18431912424920761164.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390036.P14973686041925270598

`3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=0, a(5)=0, a(6)=6, a(7)=0, a(8)=1`
-/

namespace A390036.P14973686041925270598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3, 0, 0, 6, 0, 1] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 8) + a (n - 9)

end

end A390036.P14973686041925270598

noncomputable section

/-- A390036: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k+2,3*n-8*k).

Offset 0, canonical program `A390036.P14973686041925270598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390036 (n : ℕ) : ℤ :=
  A390036.P14973686041925270598.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390036.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390037.P11491891403978991124

`3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=0, a(5)=0, a(6)=6, a(7)=0, a(8)=0, a(9)=10`
-/

namespace A390037.P11491891403978991124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3, 0, 0, 6, 0, 0, 10] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9) + a (n - 10)

end

end A390037.P11491891403978991124

noncomputable section

/-- A390037: a(n) = Sum_{k=0..floor(n/3)} binomial(k+2,3*n-9*k+2).

Offset 0, canonical program `A390037.P11491891403978991124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390037 (n : ℕ) : ℤ :=
  A390037.P11491891403978991124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390039.P16459634318629443713

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0, a(4)=10, a(5)=0, a(6)=20, a(7)=1`
-/

namespace A390039.P16459634318629443713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 0, 10, 0, 20, 1] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) + a (n - 7) - a (n - 8)

end

end A390039.P16459634318629443713

noncomputable section

/-- A390039: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k+3,4*n-7*k).

Offset 0, canonical program `A390039.P16459634318629443713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390039 (n : ℕ) : ℤ :=
  A390039.P16459634318629443713.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390040.P15272839423703191929

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0, a(4)=10, a(5)=0, a(6)=20, a(7)=0, a(8)=35`
-/

namespace A390040.P15272839423703191929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 0, 10, 0, 20, 0, 35] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) - a (n - 8) + a (n - 9)

end

end A390040.P15272839423703191929

noncomputable section

/-- A390040: a(n) = Sum_{k=0..floor(n/2)} binomial(k+3,4*n-8*k+3).

Offset 0, canonical program `A390040.P15272839423703191929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390040 (n : ℕ) : ℤ :=
  A390040.P15272839423703191929.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390111.P4645352280431117186

`(3*C(2*(n+2), n+2)+5*C(2*(n+2)-2, n+1)-C(2*(n+2)+2, n+3))/2`
-/

namespace A390111.P4645352280431117186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * Nat.choose (2 * (n + 2)) (n + 2) + 5 * Nat.choose ((2 * (n + 2) : ℤ) - 2).toNat (n + 1) : ℤ) - (Nat.choose (2 * (n + 2) + 2) (n + 3) : ℤ) : ℚ) / 2

end

end A390111.P4645352280431117186

noncomputable section

/-- A390111: a(n) is the total number of vertices of degree 1 in Catalan word grid graphs with n parts.

Offset 2, canonical program `A390111.P4645352280431117186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390111 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390111.P4645352280431117186.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390140.P8946685385162124716

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=49, a(2)=235, a(3)=651`
-/

namespace A390140.P8946685385162124716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 49, 235, 651] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A390140.P8946685385162124716

noncomputable section

/-- A390140: Centered truncated cube numbers: a(n) = (46*n^3 - 69*n^2 + 29*n - 3)/3.

Offset 1, canonical program `A390140.P8946685385162124716`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(46*(n+1)^3-69*(n+1)²+29*(n+1)-3)/3` (program `A390140.P7806592582672074501`, by `A390140.P7806592582672074501.correct`). Lean does not check the parsing of the name. -/
def A390140 (n : ℕ) : ℤ :=
  A390140.P8946685385162124716.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(46*(n+1)^3-69*(n+1)²+29*(n+1)-3)/3` (program `A390140.P7806592582672074501`, by `A390140.P7806592582672074501.correct`). Lean does not check the parsing of the name. -/
def A390140.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390190.P6998578419688527072

`4*a(n-1)-a(n-2)` with `a(0)=5, a(1)=25`
-/

namespace A390190.P6998578419688527072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 25] fun n a =>
  4 * a (n - 1) - a (n - 2)

end

end A390190.P6998578419688527072

noncomputable section

/-- A390190: a(n) is the number of square tiles in ring n (n >= 0) symmetric about a vertex of the hyperbolic regular tiling with Schläfli symbol {4,5}.

Offset 0, canonical program `A390190.P6998578419688527072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390190 (n : ℕ) : ℤ :=
  A390190.P6998578419688527072.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390218.P2053282025020217213

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=0, a(6)=4, a(7)=1`
-/

namespace A390218.P2053282025020217213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 3, 0, 4, 1] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) + a (n - 7) - a (n - 8)

end

end A390218.P2053282025020217213

noncomputable section

/-- A390218: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k+1,4*n-7*k).

Offset 0, canonical program `A390218.P2053282025020217213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390218 (n : ℕ) : ℤ :=
  A390218.P2053282025020217213.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390218.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390219.P16232009699612608432

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=0, a(6)=10, a(7)=1`
-/

namespace A390219.P16232009699612608432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0, 6, 0, 10, 1] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) + a (n - 7) - a (n - 8)

end

end A390219.P16232009699612608432

noncomputable section

/-- A390219: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k+2,4*n-7*k).

Offset 0, canonical program `A390219.P16232009699612608432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390219 (n : ℕ) : ℤ :=
  A390219.P16232009699612608432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390220.P5764728923880570764

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=0, a(8)=1`
-/

namespace A390220.P5764728923880570764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 0, 1, 0, 1] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) - a (n - 8) + a (n - 9)

end

end A390220.P5764728923880570764

noncomputable section

/-- A390220: a(n) = Sum_{k=0..floor(n/2)} binomial(k,4*n-8*k).

Offset 0, canonical program `A390220.P5764728923880570764`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390220 (n : ℕ) : ℤ :=
  A390220.P5764728923880570764.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390221.P16754101557240132849

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=0, a(6)=4, a(7)=0, a(8)=5`
-/

namespace A390221.P16754101557240132849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 3, 0, 4, 0, 5] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) - a (n - 8) + a (n - 9)

end

end A390221.P16754101557240132849

noncomputable section

/-- A390221: a(n) = Sum_{k=0..floor(n/2)} binomial(k+1,4*n-8*k+1).

Offset 0, canonical program `A390221.P16754101557240132849`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390221 (n : ℕ) : ℤ :=
  A390221.P16754101557240132849.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390222.P5468076584509733247

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=0, a(6)=10, a(7)=0, a(8)=15`
-/

namespace A390222.P5468076584509733247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0, 6, 0, 10, 0, 15] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) - a (n - 8) + a (n - 9)

end

end A390222.P5468076584509733247

noncomputable section

/-- A390222: a(n) = Sum_{k=0..floor(n/2)} binomial(k+2,4*n-8*k+2).

Offset 0, canonical program `A390222.P5468076584509733247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390222 (n : ℕ) : ℤ :=
  A390222.P5468076584509733247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390310.P263605750338287511

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=1, a(4)=15, a(5)=21`
-/

namespace A390310.P263605750338287511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 9, 1, 15, 21] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A390310.P263605750338287511

noncomputable section

/-- A390310: a(n) = if(n mod 3 = 0, n/3, 4 * n + (-1)^(n mod 3)).

Offset 0, canonical program `A390310.P263605750338287511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390310 (n : ℕ) : ℤ :=
  A390310.P263605750338287511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390325.P16081879559639106622

`2^ceil((n+1)/2)*(2^ceil((n+1)/2)+(-1)^(n+1))`
-/

namespace A390325.P16081879559639106622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n + 1 : ℚ) / 2⌉ : ℤ) * ((2 : ℚ) ^ (⌈(n + 1 : ℚ) / 2⌉ : ℤ) + ((-1) ^ (n + 1) : ℚ))

end

end A390325.P16081879559639106622

noncomputable section

/-- A390325: Oblong numbers of the form 2^k*(2^k - 1) or 2^k*(2^k + 1).

Offset 1, canonical program `A390325.P16081879559639106622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390325 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390325.P16081879559639106622.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390340.P6955577075151613232

`5^n-n*(n+2)*3^(n-2)`
-/

namespace A390340.P6955577075151613232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) - (n * (n + 2) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A390340.P6955577075151613232

noncomputable section

/-- A390340: Expansion of e.g.f. exp(3*x)*(exp(2*x) - x^2 - x).

Offset 0, canonical program `A390340.P6955577075151613232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390340.P6955577075151613232.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390342.P513797795397079055

`ceil((n+1)*n*(n-1)/12)`
-/

namespace A390342.P513797795397079055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n + 1) * n : ℤ) * ((n : ℤ) - 1) : ℚ) / 12⌉

end

end A390342.P513797795397079055

noncomputable section

/-- A390342: Upper (1/2)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

Offset 0, canonical program `A390342.P513797795397079055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390342 (n : ℕ) : ℤ :=
  A390342.P513797795397079055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390343.P15987417995135165692

`ceil((n^3-n)/4)`
-/

namespace A390343.P15987417995135165692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 4⌉

end

end A390343.P15987417995135165692

noncomputable section

/-- A390343: Upper (3/2)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

Offset 0, canonical program `A390343.P15987417995135165692`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390343 (n : ℕ) : ℤ :=
  A390343.P15987417995135165692.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390344.P7519425380196386925

`ceil((n^3-n)/18)`
-/

namespace A390344.P7519425380196386925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 18⌉

end

end A390344.P7519425380196386925

noncomputable section

/-- A390344: Upper (1/3)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

Offset 0, canonical program `A390344.P7519425380196386925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390344 (n : ℕ) : ℤ :=
  A390344.P7519425380196386925.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390345.P7163732838848139157

`ceil((n^3-n)/9)`
-/

namespace A390345.P7163732838848139157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n ^ 3 : ℤ) - (n : ℤ) : ℚ) / 9⌉

end

end A390345.P7163732838848139157

noncomputable section

/-- A390345: Upper (2/3)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

Offset 0, canonical program `A390345.P7163732838848139157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390345 (n : ℕ) : ℤ :=
  A390345.P7163732838848139157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390345.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390346.P6878981634822835949

`floor(n*(n-1)*(n-5)/12)`
-/

namespace A390346.P6878981634822835949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 5) : ℚ) / 12⌋

end

end A390346.P6878981634822835949

noncomputable section

/-- A390346: Lower (1/2)-midsequence of binomial(n,3) and (-1)*binomial(n,2); see Comments.

Offset 0, canonical program `A390346.P6878981634822835949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390346 (n : ℕ) : ℤ :=
  A390346.P6878981634822835949.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390346.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390347.P9545958900628826075

`ceil(n*(n-1)*(n-5)/12)`
-/

namespace A390347.P9545958900628826075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 5) : ℚ) / 12⌉

end

end A390347.P9545958900628826075

noncomputable section

/-- A390347: Upper (1/2)-midsequence of binomial(n,3) and (-1)*binomial(n,2); see Comments.

Offset 0, canonical program `A390347.P9545958900628826075`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390347 (n : ℕ) : ℤ :=
  A390347.P9545958900628826075.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390350.P9626135015938352345

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7, a(4)=12`
-/

namespace A390350.P9626135015938352345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 7, 12] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 5)

end

end A390350.P9626135015938352345

noncomputable section

/-- A390350: Lower (1/2)-midsequence of F(n) and F(n+4), where F = A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A390350.P9626135015938352345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390350 (n : ℕ) : ℤ :=
  A390350.P9626135015938352345.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390350.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390351.P12434344916922279500

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8, a(4)=12`
-/

namespace A390351.P12434344916922279500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 8, 12] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 5)

end

end A390351.P12434344916922279500

noncomputable section

/-- A390351: Upper (1/2)-midsequence of F(n) and F(n+4), where F = A000045 (Fibonacci numbers); see Comments.

Offset 0, canonical program `A390351.P12434344916922279500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390351 (n : ℕ) : ℤ :=
  A390351.P12434344916922279500.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390398.P6805147429816145836

`a(n-1)*(a(n-1)-1)/2+2` with `a(0)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390398.P6805147429816145836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * (a (n - 1) - 1) / 2 + 2

end

end A390398.P6805147429816145836

noncomputable section

/-- A390398: a(2) = 4; for n >= 3, a(n) = a(n-1)*(a(n-1) - 1)/2 + 2.

Offset 2, canonical program `A390398.P6805147429816145836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390398 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390398.P6805147429816145836.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390403.P8157210282863581429

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=21, a(2)=87`
-/

namespace A390403.P8157210282863581429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 21, 87] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + 4 * a (n - 3)

end

end A390403.P8157210282863581429

noncomputable section

/-- A390403: a(n) = (49*4^n + 6*n - 13)/9.

Offset 0, canonical program `A390403.P8157210282863581429`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(49*4^n+6*n-13)/9` (program `A390403.P13923469730129145418`, by `A390403.P13923469730129145418.correct`). Lean does not check the parsing of the name. -/
def A390403 (n : ℕ) : ℤ :=
  A390403.P8157210282863581429.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(49*4^n+6*n-13)/9` (program `A390403.P13923469730129145418`, by `A390403.P13923469730129145418.correct`). Lean does not check the parsing of the name. -/
def A390403.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390418.P1949512912825021070

`9*a(n-1)-21*a(n-2)+19*a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=9, a(2)=60, a(3)=370`
-/

namespace A390418.P1949512912825021070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 60, 370] fun n a =>
  9 * a (n - 1) - 21 * a (n - 2) + 19 * a (n - 3) - 6 * a (n - 4)

end

end A390418.P1949512912825021070

noncomputable section

/-- A390418: Partial sums of A014829.

Offset 1, canonical program `A390418.P1949512912825021070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390418 (n : ℕ) : ℤ :=
  A390418.P1949512912825021070.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390529.P5102562868068074245

`2^n*(1+2^(n+1))-(3^(n+1)+1)/2`
-/

namespace A390529.P5102562868068074245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * (1 + 2 ^ (n + 1)) : ℚ) - (3 ^ (n + 1) + 1 : ℚ) / 2

end

end A390529.P5102562868068074245

noncomputable section

/-- A390529: Weighted count of equivalence classes of words w of length n+1 over {a, b, c, d, A, *} having exactly n letters, exactly one *, an even number of lowercase a's, and weight (-1)^(A(w)), where A(w) is the number of uppercase letters A.

Offset 0, canonical program `A390529.P5102562868068074245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390529.P5102562868068074245.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390532.P391432938433456668

`4*a(n-2)-5*a(n-4)+2*a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=4`
-/

namespace A390532.P391432938433456668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 2, 4] fun n a =>
  4 * a (n - 2) - 5 * a (n - 4) + 2 * a (n - 6)

end

end A390532.P391432938433456668

noncomputable section

/-- A390532: Sequences A001477 and A000079 interlaced.

Offset 0, canonical program `A390532.P391432938433456668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390532 (n : ℕ) : ℤ :=
  A390532.P391432938433456668.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390581.P3602776754298798625

`4*a(n-1)-10*a(n-3)+4*a(n-5)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=22, a(4)=60, a(5)=190`
-/

namespace A390581.P3602776754298798625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 22, 60, 190] fun n a =>
  4 * a (n - 1) - 10 * a (n - 3) + 4 * a (n - 5) - a (n - 6)

end

end A390581.P3602776754298798625

noncomputable section

/-- A390581: Antidiagonal sums of the array A389800.

Offset 0, canonical program `A390581.P3602776754298798625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390581 (n : ℕ) : ℤ :=
  A390581.P3602776754298798625.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390662.P1734761915132612640

`2*a(n-4)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=0, a(6)=0, a(7)=1`
-/

namespace A390662.P1734761915132612640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 2, 0, 0, 1] fun n a =>
  2 * a (n - 4) + a (n - 7) - a (n - 8)

end

end A390662.P1734761915132612640

noncomputable section

/-- A390662: a(n) = Sum_{k=0..floor(2*n/7)} binomial(k+1,2*n-7*k).

Offset 0, canonical program `A390662.P1734761915132612640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390662 (n : ℕ) : ℤ :=
  A390662.P1734761915132612640.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390688.P17025428225401514792

`2*a(n-5)+a(n-9)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=2, a(6)=0, a(7)=0, a(8)=0, a(9)=1`
-/

namespace A390688.P17025428225401514792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 2, 0, 0, 0, 1] fun n a =>
  2 * a (n - 5) + a (n - 9) - a (n - 10)

end

end A390688.P17025428225401514792

noncomputable section

/-- A390688: a(n) = Sum_{k=0..floor(2*n/9)} binomial(k+1,2*n-9*k).

Offset 0, canonical program `A390688.P17025428225401514792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390688 (n : ℕ) : ℤ :=
  A390688.P17025428225401514792.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390775.P15664665695904206775

`4*a(n-3)-4*a(n-6)+12*a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=4`
-/

namespace A390775.P15664665695904206775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 0, 4] fun n a =>
  4 * a (n - 3) - 4 * a (n - 6) + 12 * a (n - 7)

end

end A390775.P15664665695904206775

noncomputable section

/-- A390775: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k,2*(n-3*k)).

Offset 0, canonical program `A390775.P15664665695904206775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390775 (n : ℕ) : ℤ :=
  A390775.P15664665695904206775.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390802.P9720661957360167452

`(n+1)*(2-2*(-1)^(n+1)+3*(n+1)-(-1)^(n+1)*(n+1))/8`
-/

namespace A390802.P9720661957360167452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (2 - 2 * (-1) ^ (n + 1) + (3 * (n + 1) : ℤ) - (-1) ^ (n + 1) * (n + 1 : ℤ)) : ℚ) / 8

end

end A390802.P9720661957360167452

noncomputable section

/-- A390802: The sum of the integers k from 1 to n such that gcd(n, k) is odd.

Offset 1, canonical program `A390802.P9720661957360167452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390802 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390802.P9720661957360167452.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390824.P6579202378889722452

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=42`
-/

namespace A390824.P6579202378889722452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13, 42] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A390824.P6579202378889722452

noncomputable section

/-- A390824: a(n) = Sum_{k=0..n} binomial(n+k+2,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390824.P6579202378889722452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390824 (n : ℕ) : ℤ :=
  A390824.P6579202378889722452.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390850.P6831772031228693775

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=2, a(4)=3`
-/

namespace A390850.P6831772031228693775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, 2, 3] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390850.P6831772031228693775

noncomputable section

/-- A390850: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k-1,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390850.P6831772031228693775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390850 (n : ℕ) : ℤ :=
  A390850.P6831772031228693775.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390850.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390851.P11490575218915877126

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A390851.P11490575218915877126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390851.P11490575218915877126

noncomputable section

/-- A390851: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390851.P11490575218915877126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390851 (n : ℕ) : ℤ :=
  A390851.P11490575218915877126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390852.P15029824279990138756

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A390852.P15029824279990138756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390852.P15029824279990138756

noncomputable section

/-- A390852: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+1,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390852.P15029824279990138756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390852 (n : ℕ) : ℤ :=
  A390852.P15029824279990138756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390853.P17703927995086192055

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A390853.P17703927995086192055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390853.P17703927995086192055

noncomputable section

/-- A390853: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+2,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390853.P17703927995086192055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390853 (n : ℕ) : ℤ :=
  A390853.P17703927995086192055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390859.P13761249216073063088

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12`
-/

namespace A390859.P13761249216073063088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 12] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390859.P13761249216073063088

noncomputable section

/-- A390859: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+3,n-k) * Fibonacci(k+1).

Offset 0, canonical program `A390859.P13761249216073063088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390859 (n : ℕ) : ℤ :=
  A390859.P13761249216073063088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390874.P15443486363157548305

`3*(n+1)*(13+(-1)^(n+1)+12*(n+1)²)`
-/

namespace A390874.P15443486363157548305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * (13 + (-1) ^ (n + 1) + (12 * (n + 1) ^ 2 : ℤ))

end

end A390874.P15443486363157548305

noncomputable section

/-- A390874: Molecular topological index of the n-necklace graph.

Offset 1, canonical program `A390874.P15443486363157548305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390874 (n : ℕ) : ℤ :=
  A390874.P15443486363157548305.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390874.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390904.P6495065465937336164

`n^9-(n^3-C(n, 3))^3`
-/

namespace A390904.P6495065465937336164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 9 : ℤ) - ((n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ)) ^ 3

end

end A390904.P6495065465937336164

noncomputable section

/-- A390904: a(n) is the number of 3 X 3 matrices with elements 1..n where at least one row is strictly increasing.

Offset 0, canonical program `A390904.P6495065465937336164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390904 (n : ℕ) : ℤ :=
  A390904.P6495065465937336164.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390922.P1410402099005325727

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=29, a(4)=106`
-/

namespace A390922.P1410402099005325727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4, 29, 106] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A390922.P1410402099005325727

noncomputable section

/-- A390922: a(n) is the number of 2 X 2 matrices with elements 1..n where at least one row and at least one column is strictly increasing.

Offset 0, canonical program `A390922.P1410402099005325727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390922 (n : ℕ) : ℤ :=
  A390922.P1410402099005325727.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390968.P13054488988277425344

`(3*n+2)*(3*n+3)!/((n+2)!*(2*n+3)!)`
-/

namespace A390968.P13054488988277425344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 2) * Nat.factorial (3 * n + 3) : ℚ) / (Nat.factorial (n + 2) * Nat.factorial (2 * n + 3) : ℚ)

end

end A390968.P13054488988277425344

noncomputable section

/-- A390968: a(n) = (1/(2*n+1)) * Sum_{k=0..n} (k+1)^2 * (2*k+1) * binomial(3*n-k,n-k).

Offset 0, canonical program `A390968.P13054488988277425344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390968.P13054488988277425344.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390969.P4739005397819330857

`6*(23*n²+30*n+10)*(3*n+2)!/((2*n+5)!*n!)`
-/

namespace A390969.P4739005397819330857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * (23 * n ^ 2 + 30 * n + 10) * Nat.factorial (3 * n + 2) : ℚ) / (Nat.factorial (2 * n + 5) * Nat.factorial n : ℚ)

end

end A390969.P4739005397819330857

noncomputable section

/-- A390969: a(n) = (1/(2*n+1)) * Sum_{k=0..n} (k+1)^3 * (2*k+1) * binomial(3*n-k,n-k).

Offset 0, canonical program `A390969.P4739005397819330857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390969.P4739005397819330857.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391054.P1851313567108275429

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=10, a(2)=1, a(3)=28, a(4)=1, a(5)=46`
-/

namespace A391054.P1851313567108275429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 1, 28, 1, 46] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A391054.P1851313567108275429

noncomputable section

/-- A391054: a(n) = 9*n+1 if n is odd and (n + (n mod 4))/4 if n is even.

Offset 0, canonical program `A391054.P1851313567108275429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391054 (n : ℕ) : ℤ :=
  A391054.P1851313567108275429.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391075.P17698031144604397816

`a(n-2)+a(n-8)-a(n-10)` with `a(0)=0, a(1)=26, a(2)=1, a(3)=76, a(4)=1, a(5)=126, a(6)=1, a(7)=176, a(8)=1, a(9)=226`
-/

namespace A391075.P17698031144604397816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 26, 1, 76, 1, 126, 1, 176, 1, 226] fun n a =>
  a (n - 2) + a (n - 8) - a (n - 10)

end

end A391075.P17698031144604397816

noncomputable section

/-- A391075: a(n) = 25*n+1 if n is odd and floor((n+6)/8) if n is even.

Offset 0, canonical program `A391075.P17698031144604397816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391075 (n : ℕ) : ℤ :=
  A391075.P17698031144604397816.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391075.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391092.P5526526414319194207

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=19, a(4)=76`
-/

namespace A391092.P5526526414319194207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 19, 76] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A391092.P5526526414319194207

noncomputable section

/-- A391092: a(n) is the number of 2 X 2 matrices with elements 1..n where at least one row, at least one column and at least one of the two diagonals is strictly increasing.

Offset 0, canonical program `A391092.P5526526414319194207`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391092 (n : ℕ) : ℤ :=
  A391092.P5526526414319194207.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391092.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391165.P178877086553410402

`(108*(n+1)*(n-1)+109)*(8*(n+1)-7)`
-/

namespace A391165.P178877086553410402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((108 * (n + 1) : ℤ) * ((n : ℤ) - 1) + 109) * ((8 * (n + 1) : ℤ) - 7)

end

end A391165.P178877086553410402

noncomputable section

/-- A391165: Primitive cubic pyritohedral numbers: a(n) = 864*n^3 - 2484*n^2 + 2384*n - 763.

Offset 1, canonical program `A391165.P178877086553410402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391165 (n : ℕ) : ℤ :=
  A391165.P178877086553410402.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391166.P16730452323879448182

`(108*(n+1)*(n-1)+109)*(16*(n+1)-15)`
-/

namespace A391166.P16730452323879448182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((108 * (n + 1) : ℤ) * ((n : ℤ) - 1) + 109) * ((16 * (n + 1) : ℤ) - 15)

end

end A391166.P16730452323879448182

noncomputable section

/-- A391166: Body-centered cubic pyritohedral numbers: a(n) = 1728*n^3 - 5076*n^2 + 4984*n - 1635.

Offset 1, canonical program `A391166.P16730452323879448182`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391166 (n : ℕ) : ℤ :=
  A391166.P16730452323879448182.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391196.P8311857454480616872

`(2^n*n!+floor((n+2)/2))%(n+2)`
-/

namespace A391196.P8311857454480616872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 ^ n * Nat.factorial n : ℤ) + ⌊(n + 2 : ℚ) / 2⌋) (n + 2 : ℤ)

end

end A391196.P8311857454480616872

noncomputable section

/-- A391196: a(n) = (2^(n-2) * (n-2)! + floor(n/2)) mod n for n > 1.

Offset 2, canonical program `A391196.P8311857454480616872`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391196 (n : ℕ) : ℤ :=
  A391196.P8311857454480616872.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391265.P12173664234301480603

`2*a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1`
-/

namespace A391265.P12173664234301480603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 1] fun n a =>
  2 * a (n - 3) + a (n - 5) - a (n - 6)

end

end A391265.P12173664234301480603

noncomputable section

/-- A391265: a(n) = Sum_{k=0..floor(2*n/5)} binomial(k,2*n-5*k).

Offset 0, canonical program `A391265.P12173664234301480603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391265 (n : ℕ) : ℤ :=
  A391265.P12173664234301480603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391399.P4179791730406078398

`2*a(n-3)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1`
-/

namespace A391399.P4179791730406078398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 0, 1] fun n a =>
  2 * a (n - 3) - a (n - 6) + a (n - 7)

end

end A391399.P4179791730406078398

noncomputable section

/-- A391399: a(n) = Sum_{k=0..floor(n/3)} binomial(k,2*n-6*k).

Offset 0, canonical program `A391399.P4179791730406078398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391399 (n : ℕ) : ℤ :=
  A391399.P4179791730406078398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391481.P4159822313512081732

`n^(n*(n-1))*(n-1)^n`
-/

namespace A391481.P4159822313512081732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((n : ℤ) * ((n : ℤ) - 1) : ℤ) * (((n : ℤ) - 1) ^ n : ℚ)

end

end A391481.P4159822313512081732

noncomputable section

/-- A391481: Number of labeled magmas with n elements and no idempotents.

Offset 0, canonical program `A391481.P4159822313512081732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391481.P4159822313512081732.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391483.P769298527151140074

`n^(n*(n-1)/2)*(n-1)^n`
-/

namespace A391483.P769298527151140074
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) * (((n : ℤ) - 1) ^ n : ℝ)

end

end A391483.P769298527151140074

noncomputable section

/-- A391483: Number of labeled commutative magmas with n elements and no idempotents.

Offset 0, canonical program `A391483.P769298527151140074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391483 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391483.P769298527151140074.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391537.P6365406852932535841

`floor((n+1)*n/4)+n+1`
-/

namespace A391537.P6365406852932535841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) * n : ℚ) / 4⌋ + (n + 1 : ℤ)

end

end A391537.P6365406852932535841

noncomputable section

/-- A391537: Guaranteed win if opponent chooses one of two baskets and the player chooses the coins with values from 1 to n (see Comments for details).

Offset 1, canonical program `A391537.P6365406852932535841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391537 (n : ℕ) : ℤ :=
  A391537.P6365406852932535841.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391541.P828086827920938965

`2*a(n-1)-a(n-2)+4*a(n-3)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=11`
-/

namespace A391541.P828086827920938965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4, 11] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 3) + a (n - 5)

end

end A391541.P828086827920938965

noncomputable section

/-- A391541: a(n) = Sum_{k=0..floor(2*n/5)} binomial(2*n-3*k,2*k).

Offset 0, canonical program `A391541.P828086827920938965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391541 (n : ℕ) : ℤ :=
  A391541.P828086827920938965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391542.P11430227394760662820

`C(5*n+1, n+1)-C(4*n, n+1)`
-/

namespace A391542.P11430227394760662820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n + 1) (n + 1) : ℤ) - (Nat.choose (4 * n) (n + 1) : ℤ)

end

end A391542.P11430227394760662820

noncomputable section

/-- A391542: a(n) = Sum_{k=0..n} binomial(4*n+k,n).

Offset 0, canonical program `A391542.P11430227394760662820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391542 (n : ℕ) : ℤ :=
  A391542.P11430227394760662820.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391594.P4729804204103271103

`5*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A391594.P4729804204103271103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A391594.P4729804204103271103

noncomputable section

/-- A391594: a(n) = Sum_{k=0..2*n} binomial(2*k,2*n-k).

Offset 0, canonical program `A391594.P4729804204103271103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391594 (n : ℕ) : ℤ :=
  A391594.P4729804204103271103.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391594.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391600.P4214696590702494719

`4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=11`
-/

namespace A391600.P4214696590702494719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5, 11] fun n a =>
  4 * a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A391600.P4214696590702494719

noncomputable section

/-- A391600: a(n) = Sum_{k=0..floor((2*n+1)/3)} binomial(2*k+1,2*n-3*k+1).

Offset 0, canonical program `A391600.P4214696590702494719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391600 (n : ℕ) : ℤ :=
  A391600.P4214696590702494719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391618.P8243255841012535230

`floor((sqrt(n)+1)/2)`
-/

namespace A391618.P8243255841012535230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (n : ℝ) + 1) / 2⌋

end

end A391618.P8243255841012535230

noncomputable section

/-- A391618: Chebyshev distance from n to the origin in a square spiral of positive integers and 1 at the origin.

Offset 1, canonical program `A391618.P8243255841012535230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391618 (n : ℕ) : ℤ :=
  A391618.P8243255841012535230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391686.P6123578692271403931

`(5*2^(2*n+3)-21*n-31)/9`
-/

namespace A391686.P6123578692271403931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ (2 * n + 3) : ℤ) - (21 * n : ℤ) - 31 : ℚ) / 9

end

end A391686.P6123578692271403931

noncomputable section

/-- A391686: Antidiagonal sums of the array A391685.

Offset 0, canonical program `A391686.P6123578692271403931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391686 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391686.P6123578692271403931.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391700.P11693234310550773510

`C(8*n, 3*n)*C(3*n, n)`
-/

namespace A391700.P11693234310550773510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (8 * n) (3 * n) * Nat.choose (3 * n) n

end

end A391700.P11693234310550773510

noncomputable section

/-- A391700: a(n) = (8*n)!/(n!*(2*n)!*(5*n)!).

Offset 0, canonical program `A391700.P11693234310550773510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391700 (n : ℕ) : ℤ :=
  (A391700.P11693234310550773510.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391717.P14845569280378568371

`((n+2)^(n+1)+(n+2)^(n+3)-(n+3)^(n+1)-(n+1)^(n+3))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391717.P14845569280378568371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ (n + 1) + (n + 2) ^ (n + 3) : ℤ) - ((n + 3) ^ (n + 1) : ℤ) - ((n + 1) ^ (n + 3) : ℤ) : ℚ) / 2

end

end A391717.P14845569280378568371

noncomputable section

/-- A391717: a(n) = (n^(n-1) + n^(n+1) - (n+1)^(n-1) - (n-1)^(n+1))/2.

Offset 2, canonical program `A391717.P14845569280378568371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391717 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391717.P14845569280378568371.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391778.P13166623166481535712

`(n+1)*n*(n-1)²*2^(n-3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391778.P13166623166481535712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * n : ℤ) * ((n : ℤ) - 1) ^ 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) / 3

end

end A391778.P13166623166481535712

noncomputable section

/-- A391778: a(n) = n*(n-1)*(n- 2)^2*2^(n-4)/3.

Offset 1, canonical program `A391778.P13166623166481535712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391778 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391778.P13166623166481535712.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391843.P11493510497588929288

`3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=1`
-/

namespace A391843.P11493510497588929288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 3, 1] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 5) + a (n - 6)

end

end A391843.P11493510497588929288

noncomputable section

/-- A391843: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k+1,3*n-5*k).

Offset 0, canonical program `A391843.P11493510497588929288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391843 (n : ℕ) : ℤ :=
  A391843.P11493510497588929288.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391889.P4388753595049388390

`C(7*n, 3*n)*C(3*n, n)`
-/

namespace A391889.P4388753595049388390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n) (3 * n) * Nat.choose (3 * n) n

end

end A391889.P4388753595049388390

noncomputable section

/-- A391889: a(n) = (7*n)!/(n!*(2*n)!*(4*n)!).

Offset 0, canonical program `A391889.P4388753595049388390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391889 (n : ℕ) : ℤ :=
  (A391889.P4388753595049388390.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391902.P12474551055585629767

`3*a(n-1)+22*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=21, a(4)=86, a(5)=305`
-/

namespace A391902.P12474551055585629767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 21, 86, 305] fun n a =>
  3 * a (n - 1) + 22 * a (n - 3) + 3 * a (n - 5) + a (n - 6)

end

end A391902.P12474551055585629767

noncomputable section

/-- A391902: a(n) = Sum_{k=0..n} binomial(3*k,3*(n-k)).

Offset 0, canonical program `A391902.P12474551055585629767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391902 (n : ℕ) : ℤ :=
  (A391902.P12474551055585629767.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391929.P9420849167608159605

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=10, a(4)=10, a(5)=22`
-/

namespace A391929.P9420849167608159605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 10, 10, 22] fun n a =>
  a (n - 1)

end

end A391929.P9420849167608159605

noncomputable section

/-- A391929: Number of fixed points on row n of triangle A391930.

Offset 0, canonical program `A391929.P9420849167608159605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391929 (n : ℕ) : ℤ :=
  (A391929.P9420849167608159605.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391995.P15684201075971885915

`(4*n^3-18*n²-4*n+9*(1-(-1)^n))/48`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391995.P15684201075971885915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 : ℤ) - (18 * n ^ 2 : ℤ) - (4 * n : ℤ) + 9 * (1 - (-1) ^ n) : ℚ) / 48

end

end A391995.P15684201075971885915

noncomputable section

/-- A391995: a(n) = (4*n^3 - 18*n^2 - 4*n + 9*(1 - (-1)^n)) / 48.

Offset 0, canonical program `A391995.P15684201075971885915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391995.P15684201075971885915.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391995.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391997.P10341551691138528101

`(2*n^5+3*n^4-2*n^3-n%2*3*n²)/24`
-/

namespace A391997.P10341551691138528101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n ^ 5 + 3 * n ^ 4 : ℤ) - (2 * n ^ 3 : ℤ) - ((n % 2 * 3 * n ^ 2 : ℕ) : ℤ) : ℚ) / 24

end

end A391997.P10341551691138528101

noncomputable section

/-- A391997: a(n) = Sum_{k=0..n} floor((k/2)^2)*n^2. Row sums of A391996.

Offset 0, canonical program `A391997.P10341551691138528101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391997.P10341551691138528101.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391997.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392003.P18270984355386008728

`(7*2^(n+1)-9+5*(-1)^(n+1))/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392003.P18270984355386008728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 2 ^ (n + 1) : ℤ) - 9 + 5 * (-1) ^ (n + 1) : ℚ) / 6

end

end A392003.P18270984355386008728

noncomputable section

/-- A392003: a(n) = (7*2^n - 9 + 5*(-1)^n) / 6.

Offset 1, canonical program `A392003.P18270984355386008728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392003.P18270984355386008728.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392003.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392042.P4313322309876102670

`6*a(n-3)-12*a(n-6)+8*a(n-9)+24*a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=4, a(7)=0, a(8)=0, a(9)=8`
-/

namespace A392042.P4313322309876102670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 0, 4, 0, 0, 8] fun n a =>
  6 * a (n - 3) - 12 * a (n - 6) + 8 * a (n - 9) + 24 * a (n - 10)

end

end A392042.P4313322309876102670

noncomputable section

/-- A392042: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k,3*(n-3*k)).

Offset 0, canonical program `A392042.P4313322309876102670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392042 (n : ℕ) : ℤ :=
  A392042.P4313322309876102670.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392105.P3123101596274763263

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=23, a(4)=48`
-/

namespace A392105.P3123101596274763263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8, 23, 48] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A392105.P3123101596274763263

noncomputable section

/-- A392105: Upper (1,1/2) midsequence of (n^2) and (n^3); see Comments.

Offset 0, canonical program `A392105.P3123101596274763263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392105 (n : ℕ) : ℤ :=
  A392105.P3123101596274763263.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392172.P17435700186567268442

`n²*(n*(17*n-18)+15)/2+1`
-/

namespace A392172.P17435700186567268442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n : ℤ) * ((17 * n : ℤ) - 18) + 15) : ℚ) / 2 + 1

end

end A392172.P17435700186567268442

noncomputable section

/-- A392172: Number of regions formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

Offset 0, canonical program `A392172.P17435700186567268442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392172.P17435700186567268442.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392173.P16232750102715233459

`n*(n*(n*(17*n-18)+3)+8)/2+4`
-/

namespace A392173.P16232750102715233459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) * ((n : ℤ) * ((17 * n : ℤ) - 18) + 3) + 8) : ℚ) / 2 + 4

end

end A392173.P16232750102715233459

noncomputable section

/-- A392173: Total number of vertices in the graph (see A392172) formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

Offset 0, canonical program `A392173.P16232750102715233459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392173 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392173.P16232750102715233459.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392174.P10747589443982194111

`n²*(n*(17*n-18)+9)/4+n+1`
-/

namespace A392174.P10747589443982194111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n : ℤ) * ((17 * n : ℤ) - 18) + 9) : ℚ) / 4 + (n : ℚ) + 1

end

end A392174.P10747589443982194111

noncomputable section

/-- A392174: One-fourth of the total number of edges in the graph (see A392172) formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

Offset 0, canonical program `A392174.P10747589443982194111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392174 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392174.P10747589443982194111.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392250.P897853649052432994

`2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A392250.P897853649052432994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  2 * a (n - 2) - a (n - 4) + a (n - 5)

end

end A392250.P897853649052432994

noncomputable section

/-- A392250: a(n) = Sum_{k=0..floor(n/2)} binomial(k,2*(n-2*k)).

Offset 0, canonical program `A392250.P897853649052432994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392250 (n : ℕ) : ℤ :=
  A392250.P897853649052432994.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392253.P1575022005452008621

`3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1`
-/

namespace A392253.P1575022005452008621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 0, 1] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6) + a (n - 7)

end

end A392253.P1575022005452008621

noncomputable section

/-- A392253: a(n) = Sum_{k=0..floor(n/2)} binomial(k,3*(n-2*k)).

Offset 0, canonical program `A392253.P1575022005452008621`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392253 (n : ℕ) : ℤ :=
  A392253.P1575022005452008621.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392266.P17295911882647806289

`(3^n+2*n*3^(n-1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392266.P17295911882647806289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℚ) + (2 * n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) / 4

end

end A392266.P17295911882647806289

noncomputable section

/-- A392266: a(n) = (3^n + 2*n*3^(n-1) - 1)/4.

Offset 0, canonical program `A392266.P17295911882647806289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392266.P17295911882647806289.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392271.P3563500365068188376

`3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1`
-/

namespace A392271.P3563500365068188376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 1] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 5) + a (n - 6)

end

end A392271.P3563500365068188376

noncomputable section

/-- A392271: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k,3*n-5*k).

Offset 0, canonical program `A392271.P3563500365068188376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392271 (n : ℕ) : ℤ :=
  A392271.P3563500365068188376.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392272.P715007451280986353

`3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1, a(7)=0, a(8)=1`
-/

namespace A392272.P715007451280986353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 0, 1, 0, 1] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 8) + a (n - 9)

end

end A392272.P715007451280986353

noncomputable section

/-- A392272: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k,3*n-8*k).

Offset 0, canonical program `A392272.P715007451280986353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392272 (n : ℕ) : ℤ :=
  A392272.P715007451280986353.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392273.P11078980793188720100

`3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1, a(7)=0, a(8)=0, a(9)=1`
-/

namespace A392273.P11078980793188720100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 0, 1, 0, 0, 1] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9) + a (n - 10)

end

end A392273.P11078980793188720100

noncomputable section

/-- A392273: a(n) = Sum_{k=0..floor(n/3)} binomial(k,3*n-9*k).

Offset 0, canonical program `A392273.P11078980793188720100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392273 (n : ℕ) : ℤ :=
  A392273.P11078980793188720100.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392315.P17554009615328560894

`16^(n+1)-3^(n+1)-3*(5*3^(n+1)-7)*(n+1)/2-1`
-/

namespace A392315.P17554009615328560894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) : ℚ) - (3 * ((5 * 3 ^ (n + 1) : ℤ) - 7) * (n + 1 : ℤ) : ℚ) / 2 - 1

end

end A392315.P17554009615328560894

noncomputable section

/-- A392315: Number of vertex cuts in the n-necklace graph.

Offset 1, canonical program `A392315.P17554009615328560894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392315.P17554009615328560894.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392315.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392336.P8704834034968667777

`3*a(n-1)+8*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=25, a(2)=111`
-/

namespace A392336.P8704834034968667777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 25, 111] fun n a =>
  3 * a (n - 1) + 8 * a (n - 2) + 4 * a (n - 3)

end

end A392336.P8704834034968667777

noncomputable section

/-- A392336: Number of maximal matchings in the n-necklace graph.

Offset 1, canonical program `A392336.P8704834034968667777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392336 (n : ℕ) : ℤ :=
  (A392336.P8704834034968667777.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392349.P10832540254107981097

`a(n-1)+3*a(n-3)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6, a(5)=9, a(6)=18, a(7)=36`
-/

namespace A392349.P10832540254107981097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 6, 9, 18, 36] fun n a =>
  a (n - 1) + 3 * a (n - 3) + a (n - 8)

end

end A392349.P10832540254107981097

noncomputable section

/-- A392349: a(n) = Sum_{k=0..floor(3*n/8)} binomial(3*n-7*k,k).

Offset 0, canonical program `A392349.P10832540254107981097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392349 (n : ℕ) : ℤ :=
  (A392349.P10832540254107981097.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392355.P16174605325011554625

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1, a(7)=1`
-/

namespace A392355.P16174605325011554625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 0, 1, 1] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) + a (n - 7) - a (n - 8)

end

end A392355.P16174605325011554625

noncomputable section

/-- A392355: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k,4*n-7*k).

Offset 0, canonical program `A392355.P16174605325011554625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392355 (n : ℕ) : ℤ :=
  A392355.P16174605325011554625.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392398.P17002019119230106315

`2*a(n-1)-a(n-2)+4*a(n-4)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=11, a(6)=22`
-/

namespace A392398.P17002019119230106315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4, 11, 22] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 4) + a (n - 7)

end

end A392398.P17002019119230106315

noncomputable section

/-- A392398: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*n-5*k,2*k).

Offset 0, canonical program `A392398.P17002019119230106315`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392398 (n : ℕ) : ℤ :=
  A392398.P17002019119230106315.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392399.P15716478085503372267

`2*a(n-1)-a(n-2)+4*a(n-5)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=4, a(6)=11, a(7)=22, a(8)=37`
-/

namespace A392399.P15716478085503372267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 4, 11, 22, 37] fun n a =>
  2 * a (n - 1) - a (n - 2) + 4 * a (n - 5) + a (n - 9)

end

end A392399.P15716478085503372267

noncomputable section

/-- A392399: a(n) = Sum_{k=0..floor(2*n/9)} binomial(2*n-7*k,2*k).

Offset 0, canonical program `A392399.P15716478085503372267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392399 (n : ℕ) : ℤ :=
  A392399.P15716478085503372267.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392400.P9822403989897879702

`3*a(n-1)-a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=11`
-/

namespace A392400.P9822403989897879702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 11] fun n a =>
  3 * a (n - 1) - a (n - 2) + 7 * a (n - 3) - a (n - 4)

end

end A392400.P9822403989897879702

noncomputable section

/-- A392400: a(n) = Sum_{k=0..floor(n/2)} binomial(2*n-k,3*k).

Offset 0, canonical program `A392400.P9822403989897879702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392400 (n : ℕ) : ℤ :=
  A392400.P9822403989897879702.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392401.P664316746938785616

`3*a(n-1)-3*a(n-2)+7*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=21`
-/

namespace A392401.P664316746938785616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5, 21] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 7 * a (n - 3) + 2 * a (n - 4) + a (n - 5)

end

end A392401.P664316746938785616

noncomputable section

/-- A392401: a(n) = Sum_{k=0..floor(2*n/5)} binomial(2*n-2*k,3*k).

Offset 0, canonical program `A392401.P664316746938785616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392401 (n : ℕ) : ℤ :=
  A392401.P664316746938785616.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392402.P10531053733747042139

`3*a(n-1)-3*a(n-2)+3*a(n-3)+6*a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=11, a(5)=36`
-/

namespace A392402.P10531053733747042139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 11, 36] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) + 6 * a (n - 4) - a (n - 6)

end

end A392402.P10531053733747042139

noncomputable section

/-- A392402: a(n) = Sum_{k=0..floor(n/3)} binomial(2*n-3*k,3*k).

Offset 0, canonical program `A392402.P10531053733747042139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392402 (n : ℕ) : ℤ :=
  A392402.P10531053733747042139.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392415.P712935102460050653

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=9`
-/

namespace A392415.P712935102460050653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 9] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3) + a (n - 4)

end

end A392415.P712935102460050653

noncomputable section

/-- A392415: Number of partitions of the vertices of the n-ladder graph into total dominating sets.

Offset 1, canonical program `A392415.P712935102460050653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392415 (n : ℕ) : ℤ :=
  A392415.P712935102460050653.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392421.P13628368402688059629

`C(n+1, 3)-(n+1)*C(floor(n/2), 2)`
-/

namespace A392421.P13628368402688059629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 3 : ℤ) - ((n + 1) * Nat.choose ⌊(n : ℚ) / 2⌋.toNat 2 : ℤ)

end

end A392421.P13628368402688059629

noncomputable section

/-- A392421: Number of mutual-visibility sets of size 3 in the n-cycle graph.

Offset 1, canonical program `A392421.P13628368402688059629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392421 (n : ℕ) : ℤ :=
  A392421.P13628368402688059629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392428.P17500773232252830925

`4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=6`
-/

namespace A392428.P17500773232252830925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 1, 6] fun n a =>
  4 * a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A392428.P17500773232252830925

noncomputable section

/-- A392428: a(n) = Sum_{k=0..floor(2*n/3)} binomial(2*k,2*n-3*k).

Offset 0, canonical program `A392428.P17500773232252830925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392428 (n : ℕ) : ℤ :=
  A392428.P17500773232252830925.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392429.P7193628213570142124

`4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=1, a(6)=6`
-/

namespace A392429.P7193628213570142124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 1, 6] fun n a =>
  4 * a (n - 3) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A392429.P7193628213570142124

noncomputable section

/-- A392429: a(n) = Sum_{k=0..floor(2*n/5)} binomial(2*k,2*n-5*k).

Offset 0, canonical program `A392429.P7193628213570142124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392429 (n : ℕ) : ℤ :=
  A392429.P7193628213570142124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392430.P453624865674544716

`4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=0, a(6)=0, a(7)=1, a(8)=6`
-/

namespace A392430.P453624865674544716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 2, 0, 0, 1, 6] fun n a =>
  4 * a (n - 4) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A392430.P453624865674544716

noncomputable section

/-- A392430: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*k,2*n-7*k).

Offset 0, canonical program `A392430.P453624865674544716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392430 (n : ℕ) : ℤ :=
  A392430.P453624865674544716.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392431.P8691648750353875342

`7*a(n-1)-a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=26, a(3)=181`
-/

namespace A392431.P8691648750353875342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 26, 181] fun n a =>
  7 * a (n - 1) - a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A392431.P8691648750353875342

noncomputable section

/-- A392431: a(n) = Sum_{k=0..2*n} binomial(3*k,2*n-k).

Offset 0, canonical program `A392431.P8691648750353875342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392431 (n : ℕ) : ℤ :=
  A392431.P8691648750353875342.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392432.P15515989790877378272

`6*a(n-2)+3*a(n-3)-3*a(n-4)+3*a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=15, a(5)=24`
-/

namespace A392432.P15515989790877378272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 2, 15, 24] fun n a =>
  6 * a (n - 2) + 3 * a (n - 3) - 3 * a (n - 4) + 3 * a (n - 5) - a (n - 6)

end

end A392432.P15515989790877378272

noncomputable section

/-- A392432: a(n) = Sum_{k=0..floor(2*n/3)} binomial(3*k,2*n-3*k).

Offset 0, canonical program `A392432.P15515989790877378272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392432 (n : ℕ) : ℤ :=
  A392432.P15515989790877378272.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392441.P12375707478178903987

`(n+1)*n*(12*(n+1)^3+6*(n+1)²-5*(n+1)-2)/6`
-/

namespace A392441.P12375707478178903987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * n : ℤ) * ((12 * (n + 1) ^ 3 + 6 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) - 2) : ℚ) / 6

end

end A392441.P12375707478178903987

noncomputable section

/-- A392441: a(n) is the sum of n consecutive triangular numbers immediately preceding a triangular number T(k), which is also equal to the sum of n-1 consecutive triangular numbers immediately following T(k).

Offset 1, canonical program `A392441.P12375707478178903987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392441.P12375707478178903987.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392454.P8393862469342533652

`4*a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=10`
-/

namespace A392454.P8393862469342533652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 2, 10] fun n a =>
  4 * a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A392454.P8393862469342533652

noncomputable section

/-- A392454: a(n) = Sum_{k=0..floor(2*n/3)} binomial(2*k+1,2*n-3*k).

Offset 0, canonical program `A392454.P8393862469342533652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392454 (n : ℕ) : ℤ :=
  A392454.P8393862469342533652.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392455.P13570136347101353320

`4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=1, a(5)=1, a(6)=10`
-/

namespace A392455.P13570136347101353320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3, 1, 1, 10] fun n a =>
  4 * a (n - 3) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A392455.P13570136347101353320

noncomputable section

/-- A392455: a(n) = Sum_{k=0..floor(2*n/5)} binomial(2*k+1,2*n-5*k).

Offset 0, canonical program `A392455.P13570136347101353320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392455 (n : ℕ) : ℤ :=
  A392455.P13570136347101353320.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392456.P12851857564400953604

`4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=3, a(5)=1, a(6)=0, a(7)=1, a(8)=10`
-/

namespace A392456.P12851857564400953604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 3, 1, 0, 1, 10] fun n a =>
  4 * a (n - 4) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A392456.P12851857564400953604

noncomputable section

/-- A392456: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*k+1,2*n-7*k).

Offset 0, canonical program `A392456.P12851857564400953604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392456 (n : ℕ) : ℤ :=
  A392456.P12851857564400953604.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392473.P4934109314884397624

`a(n-1)+a(floor(sqrt(n-1))²)` with `a(0)=0, a(1)=1`
-/

namespace A392473.P4934109314884397624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (Int.sqrt ((n : ℤ) - 1) ^ 2).toNat

end

end A392473.P4934109314884397624

noncomputable section

/-- A392473: a(0) = 0, a(1) = 1; otherwise, a(n) = a(n-1) + a(m), where m is the greatest square < n.

Offset 0, canonical program `A392473.P4934109314884397624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392473 (n : ℕ) : ℤ :=
  (A392473.P4934109314884397624.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392478.P6871897596749963138

`15*a(n-1)-13*a(n-2)+3*a(n-3)` with `a(0)=3, a(1)=15, a(2)=199`
-/

namespace A392478.P6871897596749963138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15, 199] fun n a =>
  15 * a (n - 1) - 13 * a (n - 2) + 3 * a (n - 3)

end

end A392478.P6871897596749963138

noncomputable section

/-- A392478: Number of dominating sets in the n-necklace graph.

Offset 0, canonical program `A392478.P6871897596749963138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392478 (n : ℕ) : ℤ :=
  A392478.P6871897596749963138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392487.P7955142106458207248

`4*a(n-3)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=0, a(5)=5, a(6)=10`
-/

namespace A392487.P7955142106458207248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3, 0, 5, 10] fun n a =>
  4 * a (n - 3) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A392487.P7955142106458207248

noncomputable section

/-- A392487: a(n) = Sum_{k=0..floor((2*n+1)/5)} binomial(2*k+1,2*n-5*k+1).

Offset 0, canonical program `A392487.P7955142106458207248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392487 (n : ℕ) : ℤ :=
  A392487.P7955142106458207248.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392488.P14323190195778832669

`4*a(n-4)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=0, a(6)=0, a(7)=5, a(8)=10`
-/

namespace A392488.P14323190195778832669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 3, 0, 0, 5, 10] fun n a =>
  4 * a (n - 4) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A392488.P14323190195778832669

noncomputable section

/-- A392488: a(n) = Sum_{k=0..floor((2*n+1)/7)} binomial(2*k+1,2*n-7*k+1).

Offset 0, canonical program `A392488.P14323190195778832669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392488 (n : ℕ) : ℤ :=
  A392488.P14323190195778832669.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392489.P15509680287055895193

`2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3`
-/

namespace A392489.P15509680287055895193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 3] fun n a =>
  2 * a (n - 2) - a (n - 4) + a (n - 5)

end

end A392489.P15509680287055895193

noncomputable section

/-- A392489: a(n) = Sum_{k=0..floor(n/2)} binomial(k+1,2*n-4*k+1).

Offset 0, canonical program `A392489.P15509680287055895193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392489 (n : ℕ) : ℤ :=
  A392489.P15509680287055895193.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392490.P1985756058173581985

`2*a(n-3)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=3`
-/

namespace A392490.P1985756058173581985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 0, 3] fun n a =>
  2 * a (n - 3) - a (n - 6) + a (n - 7)

end

end A392490.P1985756058173581985

noncomputable section

/-- A392490: a(n) = Sum_{k=0..floor(n/3)} binomial(k+1,2*n-6*k+1).

Offset 0, canonical program `A392490.P1985756058173581985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392490 (n : ℕ) : ℤ :=
  A392490.P1985756058173581985.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392491.P12253180548815093300

`2*a(n-4)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=0, a(6)=0, a(7)=0, a(8)=3`
-/

namespace A392491.P12253180548815093300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 2, 0, 0, 0, 3] fun n a =>
  2 * a (n - 4) - a (n - 8) + a (n - 9)

end

end A392491.P12253180548815093300

noncomputable section

/-- A392491: a(n) = Sum_{k=0..floor(n/4)} binomial(k+1,2*n-8*k+1).

Offset 0, canonical program `A392491.P12253180548815093300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392491 (n : ℕ) : ℤ :=
  A392491.P12253180548815093300.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392531.P11788307861027386374

`n*(8*n*(6*n+1)-21-(-1)^n)/2`
-/

namespace A392531.P11788307861027386374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((8 * n * (6 * n + 1) : ℤ) - 21 - (-1) ^ n) : ℚ) / 2

end

end A392531.P11788307861027386374

noncomputable section

/-- A392531: Detour index of the n-necklace graph.

Offset 0, canonical program `A392531.P11788307861027386374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392531.P11788307861027386374.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392590.P11969927368070026159

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A392590.P11969927368070026159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4, 5] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A392590.P11969927368070026159

noncomputable section

/-- A392590: Upper irredundance and domination number of the n-Moebius ladder.

Offset 1, canonical program `A392590.P11969927368070026159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392590 (n : ℕ) : ℤ :=
  A392590.P11969927368070026159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392620.P12808742823013400187

`4*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=10, a(2)=34`
-/

namespace A392620.P12808742823013400187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 34] fun n a =>
  4 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3)

end

end A392620.P12808742823013400187

noncomputable section

/-- A392620: Number of maximal independent vertex sets in the n-necklace graph.

Offset 1, canonical program `A392620.P12808742823013400187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392620 (n : ℕ) : ℤ :=
  A392620.P12808742823013400187.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392673.P1285588607504056432

`3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=0, a(6)=4`
-/

namespace A392673.P1285588607504056432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 0, 3, 0, 4] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6) + a (n - 7)

end

end A392673.P1285588607504056432

noncomputable section

/-- A392673: a(n) = Sum_{k=0..floor(n/2)} binomial(k+1,3*n-6*k+1).

Offset 0, canonical program `A392673.P1285588607504056432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392673 (n : ℕ) : ℤ :=
  A392673.P1285588607504056432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392674.P5425032225252229005

`3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=3, a(7)=0, a(8)=1`
-/

namespace A392674.P5425032225252229005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 0, 3, 0, 1] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 8) + a (n - 9)

end

end A392674.P5425032225252229005

noncomputable section

/-- A392674: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k+1,3*n-8*k).

Offset 0, canonical program `A392674.P5425032225252229005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392674 (n : ℕ) : ℤ :=
  A392674.P5425032225252229005.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392674.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392675.P3275726363782901375

`3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=0, a(6)=3, a(7)=0, a(8)=0, a(9)=4`
-/

namespace A392675.P3275726363782901375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 0, 3, 0, 0, 4] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9) + a (n - 10)

end

end A392675.P3275726363782901375

noncomputable section

/-- A392675: a(n) = Sum_{k=0..floor(n/3)} binomial(k+1,3*n-9*k+1).

Offset 0, canonical program `A392675.P3275726363782901375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392675 (n : ℕ) : ℤ :=
  A392675.P3275726363782901375.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392833.P9325085470590352023

`((10^(n+1)-1)/3)^3`
-/

namespace A392833.P9325085470590352023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 3) ^ 3

end

end A392833.P9325085470590352023

noncomputable section

/-- A392833: Cube of 3, then 33, then 333, increasing the number of threes by one each time.

Offset 1, canonical program `A392833.P9325085470590352023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392833 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392833.P9325085470590352023.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392837.P5172730101375875008

`18*a(n-1)-64*a(n-2)+72*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=3, a(2)=30, a(3)=412`
-/

namespace A392837.P5172730101375875008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 30, 412] fun n a =>
  18 * a (n - 1) - 64 * a (n - 2) + 72 * a (n - 3) - 16 * a (n - 4)

end

end A392837.P5172730101375875008

noncomputable section

/-- A392837: a(n) = 2^(n-1)*(L(4*n + 1) + 9 - 5*n)/5, where L(n) = A000032(n).

Offset 0, canonical program `A392837.P5172730101375875008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392837 (n : ℕ) : ℤ :=
  A392837.P5172730101375875008.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392838.P15727283444503708815

`9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=17, a(3)=107`
-/

namespace A392838.P15727283444503708815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 17, 107] fun n a =>
  9 * a (n - 1) - 16 * a (n - 2) + 9 * a (n - 3) - a (n - 4)

end

end A392838.P15727283444503708815

noncomputable section

/-- A392838: a(n) = (F(4*n + 3) - F(4*n - 1) + 5*n - 1)/5, where F(n) = A000045(n).

Offset 0, canonical program `A392838.P15727283444503708815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392838 (n : ℕ) : ℤ :=
  A392838.P15727283444503708815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392839.P14156472917058135261

`9*a(n-1)-16*a(n-2)+9*a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=15, a(3)=103`
-/

namespace A392839.P14156472917058135261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 15, 103] fun n a =>
  9 * a (n - 1) - 16 * a (n - 2) + 9 * a (n - 3) - a (n - 4)

end

end A392839.P14156472917058135261

noncomputable section

/-- A392839: a(n) = (F(4*n + 3) - F(4*n - 1) - 5*n + 9)/5, where F(n) = A000045(n).

Offset 0, canonical program `A392839.P14156472917058135261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392839 (n : ℕ) : ℤ :=
  A392839.P14156472917058135261.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392844.P4021648935066291138

`8*(n+1)^3-12*(n+1)+5`
-/

namespace A392844.P4021648935066291138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) ^ 3 : ℤ) - (12 * (n + 1) : ℤ) + 5

end

end A392844.P4021648935066291138

noncomputable section

/-- A392844: Stellated octahemioctahedral numbers.

Offset 1, canonical program `A392844.P4021648935066291138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392844 (n : ℕ) : ℤ :=
  A392844.P4021648935066291138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392844.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392884.P5211202424227521369

`8*(n+3)²+2*(n+3)+2`
-/

namespace A392884.P5211202424227521369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 3) ^ 2 + 2 * (n + 3) + 2

end

end A392884.P5211202424227521369

noncomputable section

/-- A392884: a(n) is the minimum total surface area of four-element sets of distinct integer-sided cuboids that fill an n X n X n cube.

Offset 3, canonical program `A392884.P5211202424227521369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392884 (n : ℕ) : ℤ :=
  (A392884.P5211202424227521369.a (n - 3) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393011.P16048391216167990832

`C(7*n, 2*n)`
-/

namespace A393011.P16048391216167990832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n) (2 * n)

end

end A393011.P16048391216167990832

noncomputable section

/-- A393011: a(n) = (7*n)!/((5*n)!*(2*n)!).

Offset 0, canonical program `A393011.P16048391216167990832`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393011 (n : ℕ) : ℤ :=
  (A393011.P16048391216167990832.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393073.P2538012477291526266

`2*a(n-1)+a(n-2)-3*a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=3`
-/

namespace A393073.P2538012477291526266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) - 3 * a (n - 4) - 2 * a (n - 5) - a (n - 6)

end

end A393073.P2538012477291526266

noncomputable section

/-- A393073: Convolution of the two tribonacci sequences A000073 and A001590.

Offset 0, canonical program `A393073.P2538012477291526266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393073 (n : ℕ) : ℤ :=
  A393073.P2538012477291526266.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393093.P5340454546163931360

`a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2, a(6)=4, a(7)=5`
-/

namespace A393093.P5340454546163931360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 2, 4, 5] fun n a =>
  a (n - 2) + 2 * a (n - 3) - 2 * a (n - 5) - a (n - 6) + a (n - 8)

end

end A393093.P5340454546163931360

noncomputable section

/-- A393093: Group the partitions of n into 3 parts into sets whose smallest parts are equal. a(n) is the sum of the maximum values of all the middle parts in each set.

Offset 0, canonical program `A393093.P5340454546163931360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393093 (n : ℕ) : ℤ :=
  A393093.P5340454546163931360.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393095.P8856493313611828990

`a(n-2)+2*a(n-3)-2*a(n-5)-a(n-6)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=2, a(6)=5, a(7)=6`
-/

namespace A393095.P8856493313611828990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 2, 5, 6] fun n a =>
  a (n - 2) + 2 * a (n - 3) - 2 * a (n - 5) - a (n - 6) + a (n - 8)

end

end A393095.P8856493313611828990

noncomputable section

/-- A393095: Group the partitions of n into 3 parts into sets whose smallest parts are equal. a(n) is the sum of the minimum values of all the largest parts in each set.

Offset 0, canonical program `A393095.P8856493313611828990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393095 (n : ℕ) : ℤ :=
  A393095.P8856493313611828990.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393145.P2861122081500613122

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15, a(4)=26, a(5)=43`
-/

namespace A393145.P2861122081500613122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 15, 26, 43] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A393145.P2861122081500613122

noncomputable section

/-- A393145: Minimal voucher cost for n distinct positive integer vouchers v_1, v_2, ..., v_n, where the cost is defined as v_1 + v_1*v_2 + v_2*v_3 + ... + v_(n-1)*v_n.

Offset 1, canonical program `A393145.P2861122081500613122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393145 (n : ℕ) : ℤ :=
  A393145.P2861122081500613122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393145.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393148.P17677091688796033846

`1/24*(n+1)*(n+2)*((n+4)²+11*(n+4)-48)`
-/

namespace A393148.P17677091688796033846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n + 1 : ℚ) * (n + 2 : ℚ) * (((n + 4) ^ 2 + 11 * (n + 4) : ℤ) - 48 : ℚ)

end

end A393148.P17677091688796033846

noncomputable section

/-- A393148: Partial sums of truncated triangular pyramid numbers.

Offset 4, canonical program `A393148.P17677091688796033846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393148 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393148.P17677091688796033846.a (n - 4))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393326.P11322102043773576211

`8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=15, a(2)=123, a(3)=603`
-/

namespace A393326.P11322102043773576211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15, 123, 603] fun n a =>
  8 * a (n - 1) - 22 * a (n - 2) + 24 * a (n - 3) - 9 * a (n - 4)

end

end A393326.P11322102043773576211

noncomputable section

/-- A393326: Number of connected induced subgraphs in the n-necklace graph.

Offset 0, canonical program `A393326.P11322102043773576211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393326 (n : ℕ) : ℤ :=
  A393326.P11322102043773576211.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393327.P2666079404015355865

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=30, a(3)=63`
-/

namespace A393327.P2666079404015355865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 30, 63] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A393327.P2666079404015355865

noncomputable section

/-- A393327: a(n) = (1/2)*n*(n+3)*(n+4).

Offset 0, canonical program `A393327.P2666079404015355865`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*n*(n+3)*(n+4)` (program `A393327.P1726746816851771471`, by `A393327.P1726746816851771471.correct`). Lean does not check the parsing of the name. -/
def A393327 (n : ℕ) : ℤ :=
  A393327.P2666079404015355865.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*n*(n+3)*(n+4)` (program `A393327.P1726746816851771471`, by `A393327.P1726746816851771471.correct`). Lean does not check the parsing of the name. -/
def A393327.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393329.P16063588259219489897

`14*a(n-1)-51*a(n-2)+14*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=14`
-/

namespace A393329.P16063588259219489897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 14] fun n a =>
  14 * a (n - 1) - 51 * a (n - 2) + 14 * a (n - 3) - a (n - 4)

end

end A393329.P16063588259219489897

noncomputable section

/-- A393329: Self-convolution of the sequence b(n) = A004187(n) = F(4*n)/3, where F(n) are Fibonacci numbers.

Offset 0, canonical program `A393329.P16063588259219489897`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393329 (n : ℕ) : ℤ :=
  A393329.P16063588259219489897.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393343.P5115787409294094998

`6*a(n-1)-11*a(n-2)+10*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=11, a(4)=42`
-/

namespace A393343.P5115787409294094998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 11, 42] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 10 * a (n - 3) - 2 * a (n - 4)

end

end A393343.P5115787409294094998

noncomputable section

/-- A393343: Number of Cayley permutations of size n avoiding 132 and 213.

Offset 0, canonical program `A393343.P5115787409294094998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393343 (n : ℕ) : ℤ :=
  A393343.P5115787409294094998.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393348.P7676419597316792850

`64^(n+1)-(24*(n+1)+14)*14^n`
-/

namespace A393348.P7676419597316792850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 ^ (n + 1) : ℤ) - ((24 * (n + 1) + 14) * 14 ^ n : ℤ)

end

end A393348.P7676419597316792850

noncomputable section

/-- A393348: Number of edge cuts in the n-necklace graph.

Offset 1, canonical program `A393348.P7676419597316792850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393348 (n : ℕ) : ℤ :=
  A393348.P7676419597316792850.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393385.P2107325569529261320

`7*a(n-1)+10*a(n-2)+6*a(n-3)` with `a(0)=3, a(1)=7, a(2)=69`
-/

namespace A393385.P2107325569529261320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 69] fun n a =>
  7 * a (n - 1) + 10 * a (n - 2) + 6 * a (n - 3)

end

end A393385.P2107325569529261320

noncomputable section

/-- A393385: Number of minimal edge covers in the n-necklace graph.

Offset 0, canonical program `A393385.P2107325569529261320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393385 (n : ℕ) : ℤ :=
  (A393385.P2107325569529261320.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393385.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393414.P10739002018828388705

`a(n-1)+a(n-2)` with `a(0)=29, a(1)=21`
-/

namespace A393414.P10739002018828388705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [29, 21] fun n a =>
  a (n - 1) + a (n - 2)

end

end A393414.P10739002018828388705

noncomputable section

/-- A393414: Fibonacci sequence beginning 29, 21.

Offset 0, canonical program `A393414.P10739002018828388705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393414 (n : ℕ) : ℤ :=
  (A393414.P10739002018828388705.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393441.P3618720708825274761

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=34, a(4)=109`
-/

namespace A393441.P3618720708825274761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 34, 109] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A393441.P3618720708825274761

noncomputable section

/-- A393441: a(n) = (n^4-n^3+2*n^2-2*n+2)/2.

Offset 0, canonical program `A393441.P3618720708825274761`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4-n^3+2*n²-2*n+2)/2` (program `A393441.P818760732443974118`, by `A393441.P818760732443974118.correct`). Lean does not check the parsing of the name. -/
def A393441 (n : ℕ) : ℤ :=
  A393441.P3618720708825274761.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4-n^3+2*n²-2*n+2)/2` (program `A393441.P818760732443974118`, by `A393441.P818760732443974118.correct`). Lean does not check the parsing of the name. -/
def A393441.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393462.P11513158641186952572

`n*(1+(-1)^n+12*n²)/2`
-/

namespace A393462.P11513158641186952572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (1 + (-1) ^ n + (12 * n ^ 2 : ℤ)) : ℚ) / 2

end

end A393462.P11513158641186952572

noncomputable section

/-- A393462: Wiener index of the n-necklace graph.

Offset 0, canonical program `A393462.P11513158641186952572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393462 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393462.P11513158641186952572.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393464.P6727666420595507354

`4*a(n-2)-4*a(n-4)` with `a(0)=4, a(1)=4, a(2)=24, a(3)=8`
-/

namespace A393464.P6727666420595507354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 24, 8] fun n a =>
  4 * a (n - 2) - 4 * a (n - 4)

end

end A393464.P6727666420595507354

noncomputable section

/-- A393464: Number of maximum independent vertex sets and minimum vertex covers in the n-necklace graph.

Offset 1, canonical program `A393464.P6727666420595507354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393464 (n : ℕ) : ℤ :=
  A393464.P6727666420595507354.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393464.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393478.P11225261868587834319

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=54, a(1)=81, a(2)=138, a(3)=247, a(4)=462`
-/

namespace A393478.P11225261868587834319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [54, 81, 138, 247, 462] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A393478.P11225261868587834319

noncomputable section

/-- A393478: Number of mutual-visibility sets in the n-Plummer-Toft graph.

Offset 1, canonical program `A393478.P11225261868587834319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393478 (n : ℕ) : ℤ :=
  A393478.P11225261868587834319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393503.P12262583245712848993

`(77*4^(n+1)-128)*(n+1)/6`
-/

namespace A393503.P12262583245712848993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((77 * 4 ^ (n + 1) : ℤ) - 128) * (n + 1 : ℤ) : ℚ) / 6

end

end A393503.P12262583245712848993

noncomputable section

/-- A393503: Number of paths in the n-necklace graph.

Offset 1, canonical program `A393503.P12262583245712848993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393503.P12262583245712848993.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393512.P6697239211401130408

`((2*n)^(2*n+1)+1)/(2*n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393512.P6697239211401130408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ (2 * n + 1) + 1 : ℚ) / ((2 * n + 1) ^ 2 : ℚ)

end

end A393512.P6697239211401130408

noncomputable section

/-- A393512: a(n) = ((2n)^(2n + 1) + 1)/(2n + 1)^2.

Offset 0, canonical program `A393512.P6697239211401130408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393512 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393512.P6697239211401130408.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393532.P15979102273837115022

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=22, a(5)=39`
-/

namespace A393532.P15979102273837115022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 10, 22, 39] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A393532.P15979102273837115022

noncomputable section

/-- A393532: The difference between the maximum and minimum voucher costs for n distinct positive integer vouchers v_1, v_2, ..., v_n, where the cost is defined as v_1 + v_1*v_2 + v_2*v_3 + ... + v_(n-1)*v_n.

Offset 1, canonical program `A393532.P15979102273837115022`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393532 (n : ℕ) : ℤ :=
  A393532.P15979102273837115022.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393548.P262370244966247609

`(4^(n+1)-1)^3+3*(4^(n+1)-1-(n+1))²`
-/

namespace A393548.P262370244966247609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) - 1) ^ 3 + 3 * ((4 ^ (n + 1) : ℤ) - 1 - (n + 1 : ℤ)) ^ 2

end

end A393548.P262370244966247609

noncomputable section

/-- A393548: Number of total dominating sets in K_{2n,2n,2n} minus a perfect matching.

Offset 1, canonical program `A393548.P262370244966247609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393548 (n : ℕ) : ℤ :=
  A393548.P262370244966247609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393553.P4582885726841251083

`3*((n+1)²+n+1-4^(n+1)*(n+2))+64^(n+1)+5`
-/

namespace A393553.P4582885726841251083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((n + 1) ^ 2 + (n + 1) : ℤ) - (4 ^ (n + 1) * (n + 2) : ℤ)) + (64 ^ (n + 1) : ℤ) + 5

end

end A393553.P4582885726841251083

noncomputable section

/-- A393553: Number of dominating sets in K_{2n,2n,2n} minus a perfect matching.

Offset 1, canonical program `A393553.P4582885726841251083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393553 (n : ℕ) : ℤ :=
  A393553.P4582885726841251083.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393642.P5833135613385001955

`(5*n^9+10*n^7+n^5)/16`
-/

namespace A393642.P5833135613385001955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 9 + 10 * n ^ 7 + n ^ 5 : ℚ) / 16

end

end A393642.P5833135613385001955

noncomputable section

/-- A393642: First differences of fifth powers of triangular numbers.

Offset 0, canonical program `A393642.P5833135613385001955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393642 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393642.P5833135613385001955.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393661.P18445463208938884355

`3^n*(16*(n+3)-17)`
-/

namespace A393661.P18445463208938884355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ((16 * (n + 3) : ℤ) - 17)

end

end A393661.P18445463208938884355

noncomputable section

/-- A393661: A sequence appearing in the 3-Bratteli diagram, a(n)=3^(n-3)*(16*n-17), n>=3.

Offset 3, canonical program `A393661.P18445463208938884355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393661 (n : ℕ) : ℤ :=
  A393661.P18445463208938884355.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393677.P2815755897781841043

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=17`
-/

namespace A393677.P2815755897781841043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 17] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A393677.P2815755897781841043

noncomputable section

/-- A393677: Upper (1,1/2) midsequence of (n^2) and ((n+1)^2); see Comments.

Offset 0, canonical program `A393677.P2815755897781841043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393677 (n : ℕ) : ℤ :=
  A393677.P2815755897781841043.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393678.P16894942421807432163

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=9, a(4)=16, a(5)=24`
-/

namespace A393678.P16894942421807432163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 9, 16, 24] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A393678.P16894942421807432163

noncomputable section

/-- A393678: Lower (1/2,1/3) midsequence of (n^2) and ((n+1)^2); see Comments.

Offset 0, canonical program `A393678.P16894942421807432163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393678 (n : ℕ) : ℤ :=
  A393678.P16894942421807432163.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393679.P2971570159515742930

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=17, a(5)=25, a(6)=35, a(7)=46`
-/

namespace A393679.P2971570159515742930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 10, 17, 25, 35, 46] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 6) - 2 * a (n - 7) + a (n - 8)

end

end A393679.P2971570159515742930

noncomputable section

/-- A393679: Upper (1/2,1/3) midsequence of (n^2) and ((n+1)^2); see Comments.

Offset 0, canonical program `A393679.P2971570159515742930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393679 (n : ℕ) : ℤ :=
  A393679.P2971570159515742930.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393679.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393680.P17823751236329769493

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=20, a(5)=28`
-/

namespace A393680.P17823751236329769493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 12, 20, 28] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A393680.P17823751236329769493

noncomputable section

/-- A393680: Lower (1/2,1/3) midsequence of (n^2) and ((n+2)^2); see Comments.

Offset 0, canonical program `A393680.P17823751236329769493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393680 (n : ℕ) : ℤ :=
  A393680.P17823751236329769493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393682.P13212100984617720194

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7, a(4)=11, a(5)=16, a(6)=22, a(7)=29`
-/

namespace A393682.P13212100984617720194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 7, 11, 16, 22, 29] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 6) - 2 * a (n - 7) + a (n - 8)

end

end A393682.P13212100984617720194

noncomputable section

/-- A393682: Lower (1/3,1/6) midsequence of (n^2) and ((n+2)^2); see Comments.

Offset 0, canonical program `A393682.P13212100984617720194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393682 (n : ℕ) : ℤ :=
  A393682.P13212100984617720194.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393683.P8133223760399323745

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=17, a(6)=23, a(7)=30`
-/

namespace A393683.P8133223760399323745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 12, 17, 23, 30] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 6) - 2 * a (n - 7) + a (n - 8)

end

end A393683.P8133223760399323745

noncomputable section

/-- A393683: Upper (1/3,1/6) midsequence of (n^2) and ((n+2)^2); see Comments.

Offset 0, canonical program `A393683.P8133223760399323745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393683 (n : ℕ) : ℤ :=
  A393683.P8133223760399323745.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393719.P13019433132294518856

`(n+1)*((n+1)²+1)²*((n+1)²+2)/12`
-/

namespace A393719.P13019433132294518856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 2 + 1) ^ 2 * ((n + 1) ^ 2 + 2) : ℚ) / 12

end

end A393719.P13019433132294518856

noncomputable section

/-- A393719: Sum of next n octahedral numbers (A005900).

Offset 1, canonical program `A393719.P13019433132294518856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393719 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393719.P13019433132294518856.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393794.P17029044210723335748

`110*(10^(n+2)-1)`
-/

namespace A393794.P17029044210723335748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  110 * ((10 ^ (n + 2) : ℤ) - 1)

end

end A393794.P17029044210723335748

noncomputable section

/-- A393794: Fixed points of the 1089-trick map T(n) = |n - reverse(n)| + reverse(|n - reverse(n)|).

Offset 1, canonical program `A393794.P17029044210723335748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393794 (n : ℕ) : ℤ :=
  A393794.P17029044210723335748.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393794.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394051.P14398310074069352782

`a(n-a(n-1))+a(n-a(n-2))+(-1)^(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A394051.P14398310074069352782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - a (n - 1)).toNat + a ((n : ℤ) - a (n - 2)).toNat + (-1) ^ (n + 1)

end

end A394051.P14398310074069352782

noncomputable section

/-- A394051: Hofstadter Q-sequence perturbed by (-1)^n.

Offset 1, canonical program `A394051.P14398310074069352782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394051 (n : ℕ) : ℤ :=
  A394051.P14398310074069352782.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394185.P5619514107203186845

`n^3/6+3*n²+41*n/6+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394185.P5619514107203186845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / 6 + (3 * n ^ 2 : ℚ) + (41 * n : ℚ) / 6 + 3

end

end A394185.P5619514107203186845

noncomputable section

/-- A394185: a(n) = n^3/6 + 3*n^2 + 41*n/6 + 3.

Offset 0, canonical program `A394185.P5619514107203186845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394185.P5619514107203186845.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394231.P1695926774520394941

`(5*(2*n-1)*a(n-1)-17*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=5`
-/

namespace A394231.P1695926774520394941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((5 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) - (17 * ((n : ℤ) - 1) : ℚ) * a (n - 2)) / (n : ℚ)

end

end A394231.P1695926774520394941

noncomputable section

/-- A394231: Expansion of 1 / sqrt(1 - 10*x + 17*x^2).

Offset 0, canonical program `A394231.P1695926774520394941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394231.P1695926774520394941.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394232.P9178413718657827253

`(6*(2*n-1)*a(n-1)-28*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=6`
-/

namespace A394232.P9178413718657827253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  ((6 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) - (28 * ((n : ℤ) - 1) : ℚ) * a (n - 2)) / (n : ℚ)

end

end A394232.P9178413718657827253

noncomputable section

/-- A394232: Expansion of 1 / sqrt(1 - 12*x + 28*x^2).

Offset 0, canonical program `A394232.P9178413718657827253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394232 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394232.P9178413718657827253.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394233.P1193346871535408783

`(7*(2*n-1)*a(n-1)-41*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=7`
-/

namespace A394233.P1193346871535408783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  ((7 * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1) - (41 * ((n : ℤ) - 1) : ℚ) * a (n - 2)) / (n : ℚ)

end

end A394233.P1193346871535408783

noncomputable section

/-- A394233: Expansion of 1 / sqrt(1 - 14*x + 41*x^2).

Offset 0, canonical program `A394233.P1193346871535408783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394233 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394233.P1193346871535408783.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394274.P1363637198758073110

`12*a(n-1)-35*a(n-2)+24*a(n-3)` with `a(0)=1, a(1)=16, a(2)=168`
-/

namespace A394274.P1363637198758073110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16, 168] fun n a =>
  12 * a (n - 1) - 35 * a (n - 2) + 24 * a (n - 3)

end

end A394274.P1363637198758073110

noncomputable section

/-- A394274: Number of induced cubes in the n-Sierpinski carpet graph.

Offset 1, canonical program `A394274.P1363637198758073110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394274 (n : ℕ) : ℤ :=
  A394274.P1363637198758073110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394275.P7956179940845381263

`5*a(n-1)-4*a(n-2)` with `a(0)=10, a(1)=37, a(2)=142`
-/

namespace A394275.P7956179940845381263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 37, 142] fun n a =>
  5 * a (n - 1) - 4 * a (n - 2)

end

end A394275.P7956179940845381263

noncomputable section

/-- A394275: Number of induced cubes in the n-Sierpinski tetrahedron graph.

Offset 1, canonical program `A394275.P7956179940845381263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394275 (n : ℕ) : ℤ :=
  A394275.P7956179940845381263.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394279.P5667834372275693597

`(n+2)*(3-3*(-1)^(n+1)+(n+1)*(n+2)*(n+3))/24`
-/

namespace A394279.P5667834372275693597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * (3 - 3 * (-1) ^ (n + 1) + ((n + 1) * (n + 2) * (n + 3) : ℤ)) : ℚ) / 24

end

end A394279.P5667834372275693597

noncomputable section

/-- A394279: Number of induced cubes in the n X n black bishop graph.

Offset 1, canonical program `A394279.P5667834372275693597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394279.P5667834372275693597.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394293.P15844129642221276303

`(n+2)*(3*((-1)^(n+1)-1)+(n+1)*(n+2)*(n+3))/24`
-/

namespace A394293.P15844129642221276303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * (3 * ((-1) ^ (n + 1) - 1) + ((n + 1) * (n + 2) * (n + 3) : ℤ)) : ℚ) / 24

end

end A394293.P15844129642221276303

noncomputable section

/-- A394293: Number of induced cubes in the n X n white bishop graph.

Offset 1, canonical program `A394293.P15844129642221276303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394293.P15844129642221276303.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394314.P7002470424039581728

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=12, a(4)=62`
-/

namespace A394314.P7002470424039581728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 12, 62] fun n a =>
  10 * a (n - 1) - 35 * a (n - 2) + 50 * a (n - 3) - 24 * a (n - 4)

end

end A394314.P7002470424039581728

noncomputable section

/-- A394314: a(n) = 2^(2*n-1) - 3^n + 2^n - 1, n > 0; a(0)=0.

Offset 0, canonical program `A394314.P7002470424039581728`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394314 (n : ℕ) : ℤ :=
  A394314.P7002470424039581728.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394374.P11444638324699548566

`a(n-1)+(2*(n+1)-1)^(2*(n+1))` with `a(0)=1`
-/

namespace A394374.P11444638324699548566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * (n + 1) : ℤ) - 1) ^ (2 * (n + 1))

end

end A394374.P11444638324699548566

noncomputable section

/-- A394374: a(n) = Sum_{i=1..n} (2*i-1)^(2*i).

Offset 1, canonical program `A394374.P11444638324699548566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394374 (n : ℕ) : ℤ :=
  A394374.P11444638324699548566.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394410.P1684294186342874645

`(a(n-1)²+a(n-2)²)/2` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394410.P1684294186342874645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2) / 2

end

end A394410.P1684294186342874645

noncomputable section

/-- A394410: Quadratic recurrence sequence with a(1)=1, a(2)=3, and a(n) = (a(n-1)^2 + a(n-2)^2)/2 for n > 2.

Offset 1, canonical program `A394410.P1684294186342874645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394410 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394410.P1684294186342874645.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394483.P6091680119963873756

`(n-5)*4^(n+2)+(n+9)*3^(n+2)`
-/

namespace A394483.P6091680119963873756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 5) * (4 ^ (n + 2) : ℤ) + ((n + 9) * 3 ^ (n + 2) : ℤ)

end

end A394483.P6091680119963873756

noncomputable section

/-- A394483: Expansion of 1/((1-3*x)^2*(1-4*x)^2).

Offset 0, canonical program `A394483.P6091680119963873756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394483 (n : ℕ) : ℤ :=
  A394483.P6091680119963873756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394572.P3430094835660377810

`ceil(2^(n-4)*(10*n-3-(-1)^n))`
-/

namespace A394572.P3430094835660377810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 4 : ℤ) * ((10 * n : ℤ) - 3 - (-1) ^ n : ℚ)⌉

end

end A394572.P3430094835660377810

noncomputable section

/-- A394572: Minimal value of Sum_{i=1..n} p(i)*p((i mod n)+1), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

Offset 0, canonical program `A394572.P3430094835660377810`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394572 (n : ℕ) : ℤ :=
  A394572.P3430094835660377810.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394642.P11416306177130536638

`C(7*n, 2*n)*C(5*n, 2*n)*C(3*n, n)`
-/

namespace A394642.P11416306177130536638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n) (2 * n) * Nat.choose (5 * n) (2 * n) * Nat.choose (3 * n) n

end

end A394642.P11416306177130536638

noncomputable section

/-- A394642: a(n) = (7*n)!/(n!*((2*n)!)^3).

Offset 0, canonical program `A394642.P11416306177130536638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394642 (n : ℕ) : ℤ :=
  (A394642.P11416306177130536638.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394644.P4630803448087939545

`a(n-1)+4*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A394644.P4630803448087939545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + 4 * ((n : ℤ) - 1) * ((n : ℤ) - 2) * a (n - 3)

end

end A394644.P4630803448087939545

noncomputable section

/-- A394644: Expansion of e.g.f. exp((4/3)*x^3+x).

Offset 0, canonical program `A394644.P4630803448087939545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394644 (n : ℕ) : ℤ :=
  A394644.P4630803448087939545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394678.P14362963184433160294

`((n+1)!-1)%(n+1)²`
-/

namespace A394678.P14362963184433160294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.factorial (n + 1) : ℤ) - 1) ((n + 1) ^ 2 : ℤ)

end

end A394678.P14362963184433160294

noncomputable section

/-- A394678: a(n) = (n! - 1) mod n^2.

Offset 1, canonical program `A394678.P14362963184433160294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394678 (n : ℕ) : ℤ :=
  A394678.P14362963184433160294.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394716.P80698359387520326

`(n^3+(n-1)^3)*a(n-1)-(n-1)^6*a(n-2)+(n-2)!^3` with `a(0)=0, a(1)=0`
-/

namespace A394716.P80698359387520326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((n ^ 3 : ℤ) + ((n : ℤ) - 1) ^ 3) * a (n - 1) - ((n : ℤ) - 1) ^ 6 * a (n - 2) + (Nat.factorial ((n : ℤ) - 2).toNat ^ 3 : ℤ)

end

end A394716.P80698359387520326

noncomputable section

/-- A394716: a(n) = Sum_{1 <= i < j <= n} ( n!/(i*j) )^3.

Offset 0, canonical program `A394716.P80698359387520326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394716 (n : ℕ) : ℤ :=
  A394716.P80698359387520326.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394724.P2376370618956943717

`C(7*n, n)*C(6*n, n)*C(5*n, n)`
-/

namespace A394724.P2376370618956943717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n) n * Nat.choose (6 * n) n * Nat.choose (5 * n) n

end

end A394724.P2376370618956943717

noncomputable section

/-- A394724: a(n) = (7*n)!/((4*n)!*(n!)^3).

Offset 0, canonical program `A394724.P2376370618956943717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394724 (n : ℕ) : ℤ :=
  (A394724.P2376370618956943717.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394826.P10046672064844749092

`(n+3)*(4*(n+1)²-5*(n+1)+3)/6`
-/

namespace A394826.P10046672064844749092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * ((4 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) + 3) : ℚ) / 6

end

end A394826.P10046672064844749092

noncomputable section

/-- A394826: The tetrahemihexahedral numbers.

Offset 1, canonical program `A394826.P10046672064844749092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394826 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394826.P10046672064844749092.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394829.P332927322309657524

`n*(n+1)/2+7*floor((n+1)/2)²`
-/

namespace A394829.P332927322309657524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) : ℚ) / 2 + (7 * ⌊(n + 1 : ℚ) / 2⌋ ^ 2 : ℚ)

end

end A394829.P332927322309657524

noncomputable section

/-- A394829: Numbers of the form h*(9*h+1), where h = 0, -1, 1, -2, 2, -3, 3, ...

Offset 0, canonical program `A394829.P332927322309657524`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394829.P332927322309657524.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394829.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394903.P272038596754920444

`20*a(n-1)-123*a(n-2)+216*a(n-3)` with `a(0)=0, a(1)=0, a(2)=12`
-/

namespace A394903.P272038596754920444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 12] fun n a =>
  20 * a (n - 1) - 123 * a (n - 2) + 216 * a (n - 3)

end

end A394903.P272038596754920444

noncomputable section

/-- A394903: Number of square grid edges that are visible through the n-th order Sierpinski carpet fractal.

Offset 0, canonical program `A394903.P272038596754920444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394903 (n : ℕ) : ℤ :=
  A394903.P272038596754920444.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394938.P12412694586539431707

`floor(log2(2*(n+2)-1))+floor(log2(2*(n+2)-1-2^(floor(log2(2*(n+2)-2))-1)))+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394938.P12412694586539431707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 ((2 * (n + 2) : ℤ) - 1).toNat : ℤ) + ⌊Real.logb 2 (((2 * (n + 2) : ℤ) - 1 : ℚ) - (2 : ℚ) ^ ((Nat.log 2 ((2 * (n + 2) : ℤ) - 2).toNat : ℤ) - 1 : ℤ) : ℝ)⌋ + 2

end

end A394938.P12412694586539431707

noncomputable section

/-- A394938: a(n) = floor(log_2(2*n - 1)) + floor(log_2(2*n - 1 - 2^(floor(log_2(2*n - 2)) - 1))) + 2.

Offset 2, canonical program `A394938.P12412694586539431707`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(2*(n+2)-1))+floor(log2(2*(n+2)-1-2^(floor(log2(2*(n+2)-2))-1)))+2` (program `A394938.P12412694586539431707`, by `A394938.P12412694586539431707.correct`). Lean does not check the parsing of the name. -/
def A394938 (n : ℕ) : ℤ :=
  A394938.P12412694586539431707.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(2*(n+2)-1))+floor(log2(2*(n+2)-1-2^(floor(log2(2*(n+2)-2))-1)))+2` (program `A394938.P12412694586539431707`, by `A394938.P12412694586539431707.correct`). Lean does not check the parsing of the name. -/
def A394938.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394960.P6409184033975738542

`(2^(n-1)-1)*(2^n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394960.P6409184033975738542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) * ((2 ^ n : ℤ) - 3 : ℚ)

end

end A394960.P6409184033975738542

noncomputable section

/-- A394960: a(n) = (2^(n-1)-1) * (2^n-3).

Offset 0, canonical program `A394960.P6409184033975738542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394960 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394960.P6409184033975738542.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395025.P3756625425658122689

`(n-1)*((n-2)*a(n-3)-2*a(n-2))+(n+1)*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A395025.P3756625425658122689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3) - 2 * a (n - 2)) + (n + 1 : ℤ) * a (n - 1)

end

end A395025.P3756625425658122689

noncomputable section

/-- A395025: a(n) = n! * [x^n] exp(x-x^2/2)/(1 - x).

Offset 0, canonical program `A395025.P3756625425658122689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395025 (n : ℕ) : ℤ :=
  A395025.P3756625425658122689.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395029.P17845111885337283828

`3*a(n-1)+a(n-2)-2*a(n-4)` with `a(0)=6, a(1)=22, a(2)=68, a(3)=222`
-/

namespace A395029.P17845111885337283828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 22, 68, 222] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 4)

end

end A395029.P17845111885337283828

noncomputable section

/-- A395029: Number of {0,1}-labelings of the ladder graph L_n that are unchanged when every vertex updates to the majority of itself and its neighbors, keeping its value on a tie.

Offset 2, canonical program `A395029.P17845111885337283828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395029 (n : ℕ) : ℤ :=
  A395029.P17845111885337283828.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395068.P11899098471299221882

`(n^4+(n-1)^4)*a(n-1)-(n-1)^8*a(n-2)+(n-2)!^4` with `a(0)=0, a(1)=0`
-/

namespace A395068.P11899098471299221882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ((n ^ 4 : ℤ) + ((n : ℤ) - 1) ^ 4) * a (n - 1) - ((n : ℤ) - 1) ^ 8 * a (n - 2) + (Nat.factorial ((n : ℤ) - 2).toNat ^ 4 : ℤ)

end

end A395068.P11899098471299221882

noncomputable section

/-- A395068: a(n) = Sum_{1 <= i < j <= n} ( n!/(i*j) )^4.

Offset 0, canonical program `A395068.P11899098471299221882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395068 (n : ℕ) : ℤ :=
  A395068.P11899098471299221882.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395184.P8852498894924238411

`3*a(n-1)+8*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A395184.P8852498894924238411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) + 8 * a (n - 2) - 8 * a (n - 3)

end

end A395184.P8852498894924238411

noncomputable section

/-- A395184: Totals of the base-3 run-length transform of the Jacobsthal numbers.

Offset 0, canonical program `A395184.P8852498894924238411`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395184 (n : ℕ) : ℤ :=
  A395184.P8852498894924238411.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395245.P3705972980554811711

`(n-2)*a(n-1)+(n-1)!*floor(n²/4)` with `a(0)=0`
-/

namespace A395245.P3705972980554811711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n : ℤ) - 2) * a (n - 1) + (Nat.factorial ((n : ℤ) - 1).toNat : ℤ) * ⌊(n ^ 2 : ℚ) / 4⌋

end

end A395245.P3705972980554811711

noncomputable section

/-- A395245: Sum over all permutations of [n] of the number of doubly shaded squares in a certain graphical representation of the permutations.

Offset 0, canonical program `A395245.P3705972980554811711`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395245 (n : ℕ) : ℤ :=
  A395245.P3705972980554811711.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395260.P1935786938111893379

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=4, a(1)=13, a(2)=33, a(3)=71, a(4)=136`
-/

namespace A395260.P1935786938111893379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13, 33, 71, 136] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A395260.P1935786938111893379

noncomputable section

/-- A395260: Number of order-convex subsets of the rectangular grid poset [2] X [n] with componentwise partial order.

Offset 1, canonical program `A395260.P1935786938111893379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395260 (n : ℕ) : ℤ :=
  A395260.P1935786938111893379.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395328.P11782026124961658442

`1+ceil(log2(n+2))+ceil(log2(n+3))`
-/

namespace A395328.P11782026124961658442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌈Real.logb 2 (n + 2 : ℝ)⌉ + ⌈Real.logb 2 (n + 3 : ℝ)⌉

end

end A395328.P11782026124961658442

noncomputable section

/-- A395328: Bipartite dimension of the n-barbell graph.

Offset 3, canonical program `A395328.P11782026124961658442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395328 (n : ℕ) : ℤ :=
  A395328.P11782026124961658442.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395396.P11751672268797446085

`C(n, floor(n/2))+n%2-2`
-/

namespace A395396.P11751672268797446085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n ⌊(n : ℚ) / 2⌋.toNat + n % 2 : ℕ) : ℤ) - 2

end

end A395396.P11751672268797446085

noncomputable section

/-- A395396: a(n) = binomial(n,floor(n/2)) + (n mod 2) - 2.

Offset 0, canonical program `A395396.P11751672268797446085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395396 (n : ℕ) : ℤ :=
  A395396.P11751672268797446085.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395421.P240790419776921196

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=14, a(4)=20`
-/

namespace A395421.P240790419776921196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 14, 20] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A395421.P240790419776921196

noncomputable section

/-- A395421: a(n) = (2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8.

Offset 0, canonical program `A395421.P240790419776921196`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8` (program `A395421.P11877085220403644313`, by `A395421.P11877085220403644313.correct`). Lean does not check the parsing of the name. -/
def A395421 (n : ℕ) : ℤ :=
  A395421.P240790419776921196.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3-(-1)^n)*(10*n-1+(-1)^n)/8` (program `A395421.P11877085220403644313`, by `A395421.P11877085220403644313.correct`). Lean does not check the parsing of the name. -/
def A395421.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395431.P2289722612649236450

`8*a(n-1)-14*a(n-2)-8*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8`
-/

namespace A395431.P2289722612649236450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 8] fun n a =>
  8 * a (n - 1) - 14 * a (n - 2) - 8 * a (n - 3) - a (n - 4)

end

end A395431.P2289722612649236450

noncomputable section

/-- A395431: Self-convolution of A001076.

Offset 0, canonical program `A395431.P2289722612649236450`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395431 (n : ℕ) : ℤ :=
  A395431.P2289722612649236450.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395461.P11626616581990755088

`n*(n-1)*(n-2)²*(n²-7*n+18)/6`
-/

namespace A395461.P11626616581990755088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) ^ 2 * ((n ^ 2 : ℤ) - (7 * n : ℤ) + 18) : ℚ) / 6

end

end A395461.P11626616581990755088

noncomputable section

/-- A395461: Expansion of e.g.f. x^3*(1 + x + x^2/2 + x^3/6)*exp(x).

Offset 0, canonical program `A395461.P11626616581990755088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395461 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395461.P11626616581990755088.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395476.P7947992125469464142

`n*(n-1)*(n-2)*(n²-5*n+8)/2`
-/

namespace A395476.P7947992125469464142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n ^ 2 : ℤ) - (5 * n : ℤ) + 8) : ℚ) / 2

end

end A395476.P7947992125469464142

noncomputable section

/-- A395476: Expansion of e.g.f. x^3*(1 + x + x^2/2)*exp(x).

Offset 0, canonical program `A395476.P7947992125469464142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395476 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395476.P7947992125469464142.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395481.P9155933806148453481

`7*a(n-1)-16*a(n-2)+12*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=4, a(5)=24`
-/

namespace A395481.P9155933806148453481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 4, 24] fun n a =>
  7 * a (n - 1) - 16 * a (n - 2) + 12 * a (n - 3)

end

end A395481.P9155933806148453481

noncomputable section

/-- A395481: Number of derangements of [n] with 2 descents.

Offset 0, canonical program `A395481.P9155933806148453481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395481 (n : ℕ) : ℤ :=
  A395481.P9155933806148453481.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395540.P3552911399672935764

`floor(log2(n+1))+floor(log2(2*(n+1)/3))+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395540.P3552911399672935764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) + ⌊Real.logb 2 ((2 * (n + 1) : ℚ) / 3 : ℝ)⌋ + 3

end

end A395540.P3552911399672935764

noncomputable section

/-- A395540: a(n) = floor(log_2(n)) + floor(log_2(2*n/3)) + 3.

Offset 1, canonical program `A395540.P3552911399672935764`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1))+floor(log2(2*(n+1)/3))+3` (program `A395540.P3552911399672935764`, by `A395540.P3552911399672935764.correct`). Lean does not check the parsing of the name. -/
def A395540 (n : ℕ) : ℤ :=
  A395540.P3552911399672935764.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1))+floor(log2(2*(n+1)/3))+3` (program `A395540.P3552911399672935764`, by `A395540.P3552911399672935764.correct`). Lean does not check the parsing of the name. -/
def A395540.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395560.P12810589271726075161

`2*(3*n-2)*a(n-1)-(3*n-5)²*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395560.P12810589271726075161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * ((3 * n : ℤ) - 2) * a (n - 1) - ((3 * n : ℤ) - 5) ^ 2 * a (n - 2)

end

end A395560.P12810589271726075161

noncomputable section

/-- A395560: 1 = Sum_{n>=0} a(n) * x^n * (1 - (3*n+1)*x)^2.

Offset 0, canonical program `A395560.P12810589271726075161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395560 (n : ℕ) : ℤ :=
  A395560.P12810589271726075161.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395577.P15864192331152809571

`2*(4*n-3)*a(n-1)-(4*n-7)²*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A395577.P15864192331152809571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * ((4 * n : ℤ) - 3) * a (n - 1) - ((4 * n : ℤ) - 7) ^ 2 * a (n - 2)

end

end A395577.P15864192331152809571

noncomputable section

/-- A395577: 1 = Sum_{n>=0} a(n) * x^n * (1 - (4*n+1)*x)^2.

Offset 0, canonical program `A395577.P15864192331152809571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395577 (n : ℕ) : ℤ :=
  A395577.P15864192331152809571.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395628.P10171134918520284731

`(n+1)!*(n-1)!/a(n-1)` with `a(0)=1`
-/

namespace A395628.P10171134918520284731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial (n + 1) * Nat.factorial ((n : ℤ) - 1).toNat : ℚ) / a (n - 1)

end

end A395628.P10171134918520284731

noncomputable section

/-- A395628: a(n) = f(n+1) * n! where f(n) = n/f(n-1), f(1) = 1.

Offset 0, canonical program `A395628.P10171134918520284731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395628 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395628.P10171134918520284731.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395813.P11902416282784165986

`(10*n²-10*n+3)*a(n-1)-9*(n-1)^4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A395813.P11902416282784165986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((10 * n ^ 2 : ℤ) - (10 * n : ℤ) + 3) * a (n - 1) - 9 * ((n : ℤ) - 1) ^ 4 * a (n - 2)

end

end A395813.P11902416282784165986

noncomputable section

/-- A395813: Number of perfect matchings in the complete 4-partite graph K_{n,n,n,n}.

Offset 0, canonical program `A395813.P11902416282784165986`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395813 (n : ℕ) : ℤ :=
  A395813.P11902416282784165986.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395815.P4122459993557326812

`((2*n)!/n!)^3`
-/

namespace A395815.P4122459993557326812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)) ^ 3

end

end A395815.P4122459993557326812

noncomputable section

/-- A395815: Number of perfect matchings in the complete tripartite graph K_{2n,2n,2n}.

Offset 0, canonical program `A395815.P4122459993557326812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395815 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395815.P4122459993557326812.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395839.P5228573350943917225

`10*C(2*n+2, n)/(n+1)-C(2*n+1, n)/(2*n+1)`
-/

namespace A395839.P5228573350943917225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * Nat.choose (2 * n + 2) n : ℚ) / (n + 1 : ℚ) - (Nat.choose (2 * n + 1) n : ℚ) / (2 * n + 1 : ℚ)

end

end A395839.P5228573350943917225

noncomputable section

/-- A395839: G.f. 10*C(x)^2 - C(x), where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A395839.P5228573350943917225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395839.P5228573350943917225.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395908.P13993909786748262097

`n*(n+1)*(n+2)*(n+3)*(n+5)*(n+8)/48`
-/

namespace A395908.P13993909786748262097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (n + 3) * (n + 5) * (n + 8) : ℚ) / 48

end

end A395908.P13993909786748262097

noncomputable section

/-- A395908: Series expansion of (27*x - 14*x^2 + 2*x^3) / (1 - x)^7.

Offset 0, canonical program `A395908.P13993909786748262097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395908.P13993909786748262097.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395933.P16884302019947846580

`2*a(n-1)-2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=4, a(2)=2, a(3)=8, a(4)=12, a(5)=22`
-/

namespace A395933.P16884302019947846580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 2, 8, 12, 22] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + 2 * a (n - 4) - a (n - 6)

end

end A395933.P16884302019947846580

noncomputable section

/-- A395933: Number of fixed points of the longest-run operator with radius 2 on binary configurations of the cycle graph C_n.

Offset 1, canonical program `A395933.P16884302019947846580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395933 (n : ℕ) : ℤ :=
  A395933.P16884302019947846580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395947.P7316245981973091337

`(2*(n+1)-1)*(3^(2*(n+1)-2)-1)/4`
-/

namespace A395947.P7316245981973091337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * ((3 : ℚ) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ) - 1) / 4

end

end A395947.P7316245981973091337

noncomputable section

/-- A395947: Expansion of e.g.f.: x*sinh(x)^2*cosh(x) (odd powers only).

Offset 1, canonical program `A395947.P7316245981973091337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395947.P7316245981973091337.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396065.P15859994651627376683

`C(n+1, 2)*a(n-1)+C(n+1, 3)*a(n-2)+C(n+1, 4)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A396065.P15859994651627376683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  Nat.choose (n + 1) 2 * a (n - 1) + Nat.choose (n + 1) 3 * a (n - 2) + Nat.choose (n + 1) 4 * a (n - 3)

end

end A396065.P15859994651627376683

noncomputable section

/-- A396065: The total number of at-most-4-furcating labeled histories that can be constructed for n labeled leaves.

Offset 1, canonical program `A396065.P15859994651627376683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396065 (n : ℕ) : ℤ :=
  (A396065.P15859994651627376683.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396065.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A396509.P9110258302490296449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396509 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396509.P9110258302490296449.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396509.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A397269.P4273237033905400757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397269 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397269.P4273237033905400757.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397269.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A397270.P11203406880893266705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397270 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397270.P11203406880893266705.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397270.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A398083.P9899704942900619040

`a(n-1)-a(n-3)+a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64`
-/

namespace A398083.P9899704942900619040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 64] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4) - a (n - 6) + a (n - 7)

end

end A398083.P9899704942900619040

noncomputable section

/-- A398083: a(n) = 2^n mod 73.

Offset 0, canonical program `A398083.P9899704942900619040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398083 (n : ℕ) : ℤ :=
  A398083.P9899704942900619040.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398084.P3644106471520027009

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=8, a(5)=24, a(6)=72`
-/

namespace A398084.P3644106471520027009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27, 8, 24, 72] fun n a =>
  a (n - 1) - a (n - 6) + a (n - 7)

end

end A398084.P3644106471520027009

noncomputable section

/-- A398084: a(n) = 3^n mod 73.

Offset 0, canonical program `A398084.P3644106471520027009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398084 (n : ℕ) : ℤ :=
  A398084.P3644106471520027009.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398084.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A384063.P1749494280284243678

`∑[floor(sqrt(2*n))]`
-/

namespace A384063.P1749494280284243678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384063.P1749494280284243678

noncomputable section

/-- A384063: Partial sums of A172471.

Offset 0, canonical program `A384063.P1749494280284243678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384063 (n : ℕ) : ℤ :=
  (A384063.P1749494280284243678.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384694.P6283803004892063302

`ogf((3x^2-x^4)/(1-4x+4x^2))`
-/

namespace A384694.P6283803004892063302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 0, -1] [1, -4, 4] n

end

end A384694.P6283803004892063302

noncomputable section

/-- A384694: Sum of the number of cells alive after 2 generations of Conway's game of life for initial 1 X n cells taken in all 2^n combinations of alive or dead.

Offset 0, canonical program `A384694.P6283803004892063302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A384694 (n : ℕ) : ℤ :=
  A384694.P6283803004892063302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A384694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384815.P8636745227655148743

`∑{e}[n+1, #^3]`
-/

namespace A384815.P8636745227655148743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 3

end

end A384815.P8636745227655148743

noncomputable section

/-- A384815: Sum of the cubes of the exponents in the prime factorization of n.

Offset 1, canonical program `A384815.P8636745227655148743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384815 (n : ℕ) : ℤ :=
  (A384815.P8636745227655148743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384815.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385071.P18157201007924314701

`round(sqrt(∑[∑[2*n]]+1))`
-/

namespace A385071.P18157201007924314701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))

end

end A385071.P18157201007924314701

noncomputable section

/-- A385071: a(n) = number of triangular numbers <= n-th tetrahedral number.

Offset 0, canonical program `A385071.P18157201007924314701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385071 (n : ℕ) : ℤ :=
  A385071.P18157201007924314701.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385083.P17960936055995275838

`C(n, gcd(2, n))`
-/

namespace A385083.P17960936055995275838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.gcd 2 n)

end

end A385083.P17960936055995275838

noncomputable section

/-- A385083: Expansion of e.g.f. cosh(x)*(x + x^2/2).

Offset 0, canonical program `A385083.P17960936055995275838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385083 (n : ℕ) : ℤ :=
  (A385083.P17960936055995275838.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385552.P12696242286888131710

`5*a(floor(n/5))` with `a(0)=1`
-/

namespace A385552.P12696242286888131710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a ⌊(n : ℚ) / 5⌋.toNat

end

end A385552.P12696242286888131710

noncomputable section

/-- A385552: Period of {binomial(N,n) mod 5: N in Z}.

Offset 0, canonical program `A385552.P12696242286888131710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. -/
def A385552 (n : ℕ) : ℤ :=
  (A385552.P12696242286888131710.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. -/
def A385552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385683.P15517185110051809613

`comp[floor(2/3*n²)]`
-/

namespace A385683.P15517185110051809613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * (n ^ 2 : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A385683.P15517185110051809613

noncomputable section

/-- A385683: Complement of A030511.

Offset 1, canonical program `A385683.P15517185110051809613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385683 (n : ℕ) : ℤ :=
  (A385683.P15517185110051809613.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385821.P12825252148629589579

`eq[1, ∑{e}[∑[-n%2+n]+1, #]]`
-/

namespace A385821.P12825252148629589579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n : ℤ)) 2 + (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385821.P12825252148629589579

noncomputable section

/-- A385821: Numbers k such that ceiling((k^2 + 1)/2) is prime.

Offset 1, canonical program `A385821.P12825252148629589579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A385821 (n : ℕ) : ℤ :=
  (A385821.P12825252148629589579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A385821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385869.P7123830249210921867

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5, a(4)=5, a(5)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A385869.P7123830249210921867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 5, 5, 7] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385869.P7123830249210921867

noncomputable section

/-- A385869: The maximum possible number of 7-cycles in an outerplanar graph on n vertices.

Offset 7, canonical program `A385869.P7123830249210921867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385869 (n : ℕ) : ℤ :=
  (A385869.P7123830249210921867.a (n - 7) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386267.P3202596603399632592

`comp[comp[comp[n²]²]²]`
-/

namespace A386267.P3202596603399632592
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A386267.P3202596603399632592

noncomputable section

/-- A386267: If k appears, k^2 does not.

Offset 1, canonical program `A386267.P3202596603399632592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386267 (n : ℕ) : ℤ :=
  (A386267.P3202596603399632592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386278.P4176702376567079211

`∏{e}[n+1, C(3, #%4)]`
-/

namespace A386278.P4176702376567079211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 (Nat.factorization (f1 n) p % 4)

end

end A386278.P4176702376567079211

noncomputable section

/-- A386278: Multiplicative sequence a(n) with a(p^e) = 1 + (e mod 4) * (3 - (e mod 4)) for prime p and e >= 0.

Offset 1, canonical program `A386278.P4176702376567079211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386278 (n : ℕ) : ℤ :=
  (A386278.P4176702376567079211.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386470.P4132024422393300518

`∏{e}[n+1, ceil(sqrt(#+1))]`
-/

namespace A386470.P4132024422393300518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.sqrt (Nat.factorization (f1 n) p + 1 : ℝ)⌉

end

end A386470.P4132024422393300518

noncomputable section

/-- A386470: The number of divisors of n whose exponents in their prime factorization are squares.

Offset 1, canonical program `A386470.P4132024422393300518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386470 (n : ℕ) : ℤ :=
  A386470.P4132024422393300518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386479.P5187279637996672355

`∑[a(n-1)+4]` with `a(0)=0, a(1)=4, a(2)=3`
-/

namespace A386479.P5187279637996672355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386479.P5187279637996672355

noncomputable section

/-- A386479: a(0) = 0; thereafter a(n) = 2*n^2 - 3*n + 5.

Offset 0, canonical program `A386479.P5187279637996672355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386479 (n : ℕ) : ℤ :=
  (A386479.P5187279637996672355.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386709.P1736714991201598067

`∑[a(n-2)+a(n-5)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A386709.P1736714991201598067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 0] fun n f1 =>
  f1 (n - 2) + f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386709.P1736714991201598067

noncomputable section

/-- A386709: Number of length n binary palindromic words which are not all zero in which 1's occur in blocks of at least 4.

Offset 1, canonical program `A386709.P1736714991201598067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1086 terms. -/
def A386709 (n : ℕ) : ℤ :=
  (A386709.P1736714991201598067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1086 terms. -/
def A386709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386745.P17448882685446905493

`∑{d}[n, (n*#)²]`
-/

namespace A386745.P17448882685446905493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * d) ^ 2

end

end A386745.P17448882685446905493

noncomputable section

/-- A386745: a(n) = n^2*sigma_2(n).

Offset 0, canonical program `A386745.P17448882685446905493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386745 (n : ℕ) : ℤ :=
  (A386745.P17448882685446905493.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386746.P7829302292468683500

`n^3*∑{d}[n, #²]`
-/

namespace A386746.P7829302292468683500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 * (∑ d ∈ Nat.divisors (f1 n), d ^ 2)

end

end A386746.P7829302292468683500

noncomputable section

/-- A386746: a(n) = n^3*sigma_2(n).

Offset 0, canonical program `A386746.P7829302292468683500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386746 (n : ℕ) : ℤ :=
  (A386746.P7829302292468683500.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386747.P1365684270962356850

`∑{d}[n, (n*#²)²]`
-/

namespace A386747.P1365684270962356850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * d ^ 2) ^ 2

end

end A386747.P1365684270962356850

noncomputable section

/-- A386747: a(n) = n^2*sigma_4(n).

Offset 0, canonical program `A386747.P1365684270962356850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386747 (n : ℕ) : ℤ :=
  (A386747.P1365684270962356850.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386748.P7993596691927966895

`n*∑{d}[n, (n*#²)²]`
-/

namespace A386748.P7993596691927966895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), (n * d ^ 2) ^ 2)

end

end A386748.P7993596691927966895

noncomputable section

/-- A386748: a(n) = n^3*sigma_4(n).

Offset 0, canonical program `A386748.P7993596691927966895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386748 (n : ℕ) : ℤ :=
  (A386748.P7993596691927966895.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386749.P4661943499512016437

`∑{d}[n, n*#^4]`
-/

namespace A386749.P4661943499512016437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), n * d ^ 4

end

end A386749.P4661943499512016437

noncomputable section

/-- A386749: a(n) = n*sigma_4(n).

Offset 0, canonical program `A386749.P4661943499512016437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386749 (n : ℕ) : ℤ :=
  (A386749.P4661943499512016437.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386750.P8209237796018943525

`∑{d}[n, n*#^6]`
-/

namespace A386750.P8209237796018943525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), n * d ^ 6

end

end A386750.P8209237796018943525

noncomputable section

/-- A386750: a(n) = n*sigma_6(n).

Offset 0, canonical program `A386750.P8209237796018943525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386750 (n : ℕ) : ℤ :=
  (A386750.P8209237796018943525.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386751.P5665838399217936275

`∑{d}[n, n*#^8]`
-/

namespace A386751.P5665838399217936275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), n * d ^ 8

end

end A386751.P5665838399217936275

noncomputable section

/-- A386751: a(n) = n*sigma_8(n).

Offset 0, canonical program `A386751.P5665838399217936275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386751 (n : ℕ) : ℤ :=
  (A386751.P5665838399217936275.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386777.P12656423041185433258

`∑{d}[n, (n*#^3)²]`
-/

namespace A386777.P12656423041185433258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * d ^ 3) ^ 2

end

end A386777.P12656423041185433258

noncomputable section

/-- A386777: a(n) = n^2*sigma_6(n).

Offset 0, canonical program `A386777.P12656423041185433258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386777 (n : ℕ) : ℤ :=
  (A386777.P12656423041185433258.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386778.P15489260822773192962

`∑{d}[n, (n*#^4)²]`
-/

namespace A386778.P15489260822773192962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * d ^ 4) ^ 2

end

end A386778.P15489260822773192962

noncomputable section

/-- A386778: a(n) = n^2*sigma_8(n).

Offset 0, canonical program `A386778.P15489260822773192962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386778 (n : ℕ) : ℤ :=
  (A386778.P15489260822773192962.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386780.P13078752620683526910

`∑{d}[n, (n*#²)^3]`
-/

namespace A386780.P13078752620683526910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * d ^ 2) ^ 3

end

end A386780.P13078752620683526910

noncomputable section

/-- A386780: a(n) = n^3*sigma_6(n).

Offset 0, canonical program `A386780.P13078752620683526910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386780 (n : ℕ) : ℤ :=
  (A386780.P13078752620683526910.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386781.P8985128467454895527

`n*∑{d}[n, n²*#^7]`
-/

namespace A386781.P8985128467454895527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), n ^ 2 * d ^ 7)

end

end A386781.P8985128467454895527

noncomputable section

/-- A386781: a(n) = n^3*sigma_7(n).

Offset 0, canonical program `A386781.P8985128467454895527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386781 (n : ℕ) : ℤ :=
  (A386781.P8985128467454895527.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386782.P12551871518556311143

`n*∑{d}[n, (n*#^4)²]`
-/

namespace A386782.P12551871518556311143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), (n * d ^ 4) ^ 2)

end

end A386782.P12551871518556311143

noncomputable section

/-- A386782: a(n) = n^3*sigma_8(n).

Offset 0, canonical program `A386782.P12551871518556311143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386782 (n : ℕ) : ℤ :=
  (A386782.P12551871518556311143.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386783.P827810172145761178

`∑{d}[n, (#*n²)²]`
-/

namespace A386783.P827810172145761178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d * n ^ 2) ^ 2

end

end A386783.P827810172145761178

noncomputable section

/-- A386783: a(n) = n^4*sigma_2(n).

Offset 0, canonical program `A386783.P827810172145761178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386783 (n : ℕ) : ℤ :=
  (A386783.P827810172145761178.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386784.P17494537975093454927

`∑{d}[n, (n*#)^4]`
-/

namespace A386784.P17494537975093454927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * d) ^ 4

end

end A386784.P17494537975093454927

noncomputable section

/-- A386784: a(n) = n^4*sigma_4(n).

Offset 0, canonical program `A386784.P17494537975093454927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386784 (n : ℕ) : ℤ :=
  (A386784.P17494537975093454927.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386785.P10566170912316061246

`n²*∑{d}[n, n²*#^5]`
-/

namespace A386785.P10566170912316061246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ d ∈ Nat.divisors (f1 n), n ^ 2 * d ^ 5)

end

end A386785.P10566170912316061246

noncomputable section

/-- A386785: a(n) = n^4*sigma_5(n).

Offset 0, canonical program `A386785.P10566170912316061246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386785 (n : ℕ) : ℤ :=
  (A386785.P10566170912316061246.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386786.P18419305462551058444

`n*∑{d}[n, (n*#²)^3]`
-/

namespace A386786.P18419305462551058444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), (n * d ^ 2) ^ 3)

end

end A386786.P18419305462551058444

noncomputable section

/-- A386786: a(n) = n^4*sigma_6(n).

Offset 0, canonical program `A386786.P18419305462551058444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386786 (n : ℕ) : ℤ :=
  (A386786.P18419305462551058444.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386787.P15333458997169148532

`n²*∑{d}[n, n²*#^7]`
-/

namespace A386787.P15333458997169148532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ d ∈ Nat.divisors (f1 n), n ^ 2 * d ^ 7)

end

end A386787.P15333458997169148532

noncomputable section

/-- A386787: a(n) = n^4*sigma_7(n).

Offset 0, canonical program `A386787.P15333458997169148532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386787 (n : ℕ) : ℤ :=
  (A386787.P15333458997169148532.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386788.P16067395032970393946

`∑{d}[n, (n*#²)^4]`
-/

namespace A386788.P16067395032970393946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * d ^ 2) ^ 4

end

end A386788.P16067395032970393946

noncomputable section

/-- A386788: a(n) = n^4*sigma_8(n).

Offset 0, canonical program `A386788.P16067395032970393946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386788 (n : ℕ) : ℤ :=
  (A386788.P16067395032970393946.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386792.P11342616478634595471

`floor(3/2*a(n-1))` with `a(0)=8`
-/

namespace A386792.P11342616478634595471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌊(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌋

end

end A386792.P11342616478634595471

noncomputable section

/-- A386792: Antihydra, a BB(6) Turing machine (values of a).

Offset 0, canonical program `A386792.P11342616478634595471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 563 terms. -/
def A386792 (n : ℕ) : ℤ :=
  A386792.P11342616478634595471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 563 terms. -/
def A386792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386878.P3525845935937245273

`ogf((x-x^2-x^4+x^5)/(1-4x+4x^2))`
-/

namespace A386878.P3525845935937245273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 0, -1, 1] [1, -4, 4] n

end

end A386878.P3525845935937245273

noncomputable section

/-- A386878: Number of runs of 1's of length <= 3 over all binary strings of length n.

Offset 0, canonical program `A386878.P3525845935937245273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A386878 (n : ℕ) : ℤ :=
  A386878.P3525845935937245273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A386878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387455.P1845506814409954094

`∑[floor(∑[2^n/3])²]`
-/

namespace A387455.P1845506814409954094
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387455.P1845506814409954094

noncomputable section

/-- A387455: Partial sums of squares of A000975.

Offset 0, canonical program `A387455.P1845506814409954094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387455 (n : ℕ) : ℤ :=
  A387455.P1845506814409954094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387540.P6510496065785966546

`a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=3, a(7)=3, a(8)=3, a(9)=2`
-/

namespace A387540.P6510496065785966546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 2, 3, 3, 3, 2] fun n a =>
  a (n - 1)

end

end A387540.P6510496065785966546

noncomputable section

/-- A387540: Number of simply laced Dynkin diagrams with n nodes.

Offset 0, canonical program `A387540.P6510496065785966546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387540 (n : ℕ) : ℤ :=
  (A387540.P6510496065785966546.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387614.P8023775704916743095

`5-ceil(C(5, n)/(n+3))`
-/

namespace A387614.P8023775704916743095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ⌈(Nat.choose 5 n : ℚ) / (n + 3 : ℚ)⌉

end

end A387614.P8023775704916743095

noncomputable section

/-- A387614: The Pythagoras number of the maximal order of the field Q(sqrt(D)), where D = A005117(n) is the n-th squarefree number.

Offset 1, canonical program `A387614.P8023775704916743095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387614 (n : ℕ) : ℤ :=
  A387614.P8023775704916743095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387646.P8127621791678997301

`char[∑[n]²]`
-/

namespace A387646.P8127621791678997301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A387646.P8127621791678997301

noncomputable section

/-- A387646: Characteristic function of A000537.

Offset 0, canonical program `A387646.P8127621791678997301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387646 (n : ℕ) : ℤ :=
  (A387646.P8127621791678997301.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387655.P7937086130713726409

`n²*gcd(2*n, C(2*n+1, 3))`
-/

namespace A387655.P7937086130713726409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * Nat.gcd (2 * n) (Nat.choose (2 * n + 1) 3)

end

end A387655.P7937086130713726409

noncomputable section

/-- A387655: a(n) = numerator(n^3/3).

Offset 0, canonical program `A387655.P7937086130713726409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387655 (n : ℕ) : ℤ :=
  (A387655.P7937086130713726409.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387960.P16530550988797664069

`∏{e}[n+1, C(2, #%3)]`
-/

namespace A387960.P16530550988797664069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 (Nat.factorization (f1 n) p % 3)

end

end A387960.P16530550988797664069

noncomputable section

/-- A387960: Multiplicative sequence a(n) with a(p^e) = 1 + (e mod 3) * (2 - (e mod 3)) for prime p and e >= 0.

Offset 1, canonical program `A387960.P16530550988797664069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387960 (n : ℕ) : ℤ :=
  (A387960.P16530550988797664069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387996.P12346668092968048436

`∑[n+1]-floor(a(n-1)-(n+1)/3)` with `a(0)=2`
-/

namespace A387996.P12346668092968048436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(a (n - 1) : ℚ) - (n + 1 : ℚ) / 3⌋

end

end A387996.P12346668092968048436

noncomputable section

/-- A387996: One third the number of solid partitions of n with 3 parts.

Offset 3, canonical program `A387996.P12346668092968048436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387996 (n : ℕ) : ℤ :=
  A387996.P12346668092968048436.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389430.P4053345114218918592

`∑[floor((n+1)/(and(2, n-1)+2))]`
-/

namespace A389430.P4053345114218918592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Int.land 2 ((n : ℤ) - 1) + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389430.P4053345114218918592

noncomputable section

/-- A389430: Number of nodes on a hexagonal lattice where the side lengths increase in this pattern: (x, x, x, x, x, x) -> (x+1, x, x, x+1, x, x) -> (x+1, x, x+1, x, x+1, x) -> (x+1, x+1, x, x+1, x+1, x) -> (x+1, x+1, x+1, x+1, x+1, x+1).

Offset 0, canonical program `A389430.P4053345114218918592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389430 (n : ℕ) : ℤ :=
  A389430.P4053345114218918592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389571.P14881936152397108172

`∑[∑[floor(∑[1/a(n-1)]-a(n-1))]]` with `a(0)=2`
-/

namespace A389571.P14881936152397108172
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f3 =>
  1 / f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  ⌊∑ j ∈ Finset.range (n + 1), f3 j - (f2 (n - 1) : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389571.P14881936152397108172

noncomputable section

/-- A389571: Number of rooted binary perfect phylogenies with sample size n and 4 leaves.

Offset 4, canonical program `A389571.P14881936152397108172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389571 (n : ℕ) : ℤ :=
  A389571.P14881936152397108172.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389582.P17584436343250649778

`floor(∑[n²]-n/6)`
-/

namespace A389582.P17584436343250649778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ) / 6⌋

end

end A389582.P17584436343250649778

noncomputable section

/-- A389582: Lower (1/2,1/3) midsequence of (n^2) and (n^3); see Comments.

Offset 0, canonical program `A389582.P17584436343250649778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389582 (n : ℕ) : ℤ :=
  A389582.P17584436343250649778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389583.P2456528887545005619

`∑[n²]-floor(n/6)`
-/

namespace A389583.P2456528887545005619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 6⌋

end

end A389583.P2456528887545005619

noncomputable section

/-- A389583: Upper (1/2,1/3) midsequence of (n^2) and (n^3); see Comments.

Offset 0, canonical program `A389583.P2456528887545005619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389583 (n : ℕ) : ℤ :=
  A389583.P2456528887545005619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389614.P9653990573492328529

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=1, a(2)=4, a(3)=4, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A389614.P9653990573492328529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4, 4, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389614.P9653990573492328529

noncomputable section

/-- A389614: a(n) = 2*n^2 + 1 - (m*n - 3*m*(m+1)/2) where m = floor(n/3).

Offset 0, canonical program `A389614.P9653990573492328529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389614 (n : ℕ) : ℤ :=
  (A389614.P9653990573492328529.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389625.P6871337298579563724

`∑[a(n-1)+11]` with `a(0)=1, a(1)=2, a(2)=12`
-/

namespace A389625.P6871337298579563724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 12] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389625.P6871337298579563724

noncomputable section

/-- A389625: a(0) = 1; a(n) = (11*n^2 - 9*n + 4)/2 for n>0.

Offset 0, canonical program `A389625.P6871337298579563724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389625 (n : ℕ) : ℤ :=
  (A389625.P6871337298579563724.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389737.P8491295870997957256

`∑[∑[∑{d}[n-1, gcd(n, #)]]]`
-/

namespace A389737.P8491295870997957256
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, Nat.gcd n d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389737.P8491295870997957256

noncomputable section

/-- A389737: Number of subsets of {1..n} forming a finite arithmetic progression.

Offset 0, canonical program `A389737.P8491295870997957256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389737 (n : ℕ) : ℤ :=
  (A389737.P8491295870997957256.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389775.P6092823824966538876

`∏{p}[n+1, #²-(#+1)]`
-/

namespace A389775.P6092823824966538876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p ^ 2 : ℤ) - (p + 1 : ℤ))

end

end A389775.P6092823824966538876

noncomputable section

/-- A389775: Absolute value of the inverse Möbius transform of mu(n)*phi(n^2).

Offset 1, canonical program `A389775.P6092823824966538876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389775 (n : ℕ) : ℤ :=
  A389775.P6092823824966538876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389831.P17950296721468507002

`∏{e}[n+1, #²+2]`
-/

namespace A389831.P17950296721468507002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p ^ 2 + 2)

end

end A389831.P17950296721468507002

noncomputable section

/-- A389831: Multiplicative sequence a(n) with a(p^e) = 2 + e^2 for prime p and e > 0.

Offset 1, canonical program `A389831.P17950296721468507002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389831 (n : ℕ) : ℤ :=
  (A389831.P17950296721468507002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389977.P13860639153508659065

`∏{p}[n+1, #²-1+#]`
-/

namespace A389977.P13860639153508659065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p ^ 2 : ℤ) - 1 + (p : ℤ))

end

end A389977.P13860639153508659065

noncomputable section

/-- A389977: Absolute value of the inverse Möbius transform of n*mu(n)*sigma(n).

Offset 1, canonical program `A389977.P13860639153508659065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389977 (n : ℕ) : ℤ :=
  A389977.P13860639153508659065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390255.P7810669235587212114

`lcm(n, floor(n/2))`
-/

namespace A390255.P7810669235587212114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A390255.P7810669235587212114

noncomputable section

/-- A390255: Expansion of e.g.f. x*(1 + x/2)*sinh(x).

Offset 0, canonical program `A390255.P7810669235587212114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390255 (n : ℕ) : ℤ :=
  (A390255.P7810669235587212114.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390318.P14324731915381538911

`floor(sqrt(γ^-(2*n)))`
-/

namespace A390318.P14324731915381538911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.eulerMascheroniConstant ^ (-(2 * n : ℤ) : ℤ))⌋

end

end A390318.P14324731915381538911

noncomputable section

/-- A390318: a(n) = floor(gamma^(-n)) where gamma is Euler's constant A001620.

Offset 0, canonical program `A390318.P14324731915381538911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A390318 (n : ℕ) : ℤ :=
  A390318.P14324731915381538911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A390318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390538.P484711700725292266

`lt[n, ∏{p}[n+1, #²]]+1`
-/

namespace A390538.P484711700725292266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A390538.P484711700725292266

noncomputable section

/-- A390538: Numbers that do not exceed the square of their squarefree kernel.

Offset 1, canonical program `A390538.P484711700725292266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9723 terms. -/
def A390538 (n : ℕ) : ℤ :=
  (A390538.P484711700725292266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9723 terms. -/
def A390538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390766.P3448197139807937500

`ceil(ceil(abs(log2(n+γ)))/3)`
-/

namespace A390766.P3448197139807937500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈|Real.logb 2 ((n : ℝ) + Real.eulerMascheroniConstant)|⌉ : ℚ) / 3⌉

end

end A390766.P3448197139807937500

noncomputable section

/-- A390766: Number of digits in base-8 representation of n.

Offset 0, canonical program `A390766.P3448197139807937500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390766 (n : ℕ) : ℤ :=
  A390766.P3448197139807937500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390774.P16977446357652743833

`6*floor(n/4)+n`
-/

namespace A390774.P16977446357652743833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n : ℚ) / 4⌋ + (n : ℤ)

end

end A390774.P16977446357652743833

noncomputable section

/-- A390774: Numbers whose final digit is at most 3.

Offset 0, canonical program `A390774.P16977446357652743833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390774 (n : ℕ) : ℤ :=
  A390774.P16977446357652743833.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390915.P6633462256444884451

`∏{p}[n+2, or(1, #)]`
-/

namespace A390915.P6633462256444884451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 1 p

end

end A390915.P6633462256444884451

noncomputable section

/-- A390915: Number of elements of the ring of n-adic integers that satisfy y^k = y for at least one integer k > 1.

Offset 2, canonical program `A390915.P6633462256444884451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390915 (n : ℕ) : ℤ :=
  (A390915.P6633462256444884451.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391264.P7367445441425205946

`C(n, n%3)`
-/

namespace A391264.P7367445441425205946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n % 3)

end

end A391264.P7367445441425205946

noncomputable section

/-- A391264: a(3*n) = 1, a(3*n+1) = 3*n+1, a(3*n+2) = (3*n+1)*(3*n+2)/2.

Offset 0, canonical program `A391264.P7367445441425205946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391264 (n : ℕ) : ℤ :=
  (A391264.P7367445441425205946.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391272.P13329201290402455589

`∑[2*a(n-1)+a(n-2)+1]` with `a(0)=0, a(1)=2`
-/

namespace A391272.P13329201290402455589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 1) + (f1 (n - 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391272.P13329201290402455589

noncomputable section

/-- A391272: Row sums of the triangle A391318, given by T(n,k) = T(n-1,k) + T(n-1,k-1) + T(n-2,k-1) + 1, with T(0,0) = T(n,-1) = T(n,n+1) = 0.

Offset 0, canonical program `A391272.P13329201290402455589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A391272 (n : ℕ) : ℤ :=
  (A391272.P13329201290402455589.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A391272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391576.P4667412630720203092

`lt[1, or(n-1, 2*n)%3]`
-/

namespace A391576.P4667412630720203092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor ((n : ℤ) - 1) (2 * n : ℤ)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A391576.P4667412630720203092

noncomputable section

/-- A391576: Numbers k such that A048720(3,k) = 3*m for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391576.P4667412630720203092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391576 (n : ℕ) : ℤ :=
  (A391576.P4667412630720203092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391696.P5710632746105613203

`∑[floor(log2(n+1))]+1`
-/

namespace A391696.P5710632746105613203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A391696.P5710632746105613203

noncomputable section

/-- A391696: Irregular triangular array read by rows: T(n,k) = position of 1st letter of 1st appearance of the k-th word of length n in the lexicographic ordering of all 01-words, as in A076478.

Offset 1, canonical program `A391696.P5710632746105613203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391696 (n : ℕ) : ℤ :=
  (A391696.P5710632746105613203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392065.P16173427328749793390

`∏{e}[∏{e}[n+1, ceil(2/#)], #]`
-/

namespace A392065.P16173427328749793390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌈2 / (Nat.factorization (f2 n) p : ℚ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A392065.P16173427328749793390

noncomputable section

/-- A392065: a(n) = number of primes with unit exponent in the prime factorization of n, or 1 if no such primes exist.

Offset 1, canonical program `A392065.P16173427328749793390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392065 (n : ℕ) : ℤ :=
  (A392065.P16173427328749793390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392318.P11358537660704665373

`a(n-1)` with `a(0)=5, a(1)=1, a(2)=3, a(3)=8`
-/

namespace A392318.P11358537660704665373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 1, 3, 8] fun n a =>
  a (n - 1)

end

end A392318.P11358537660704665373

noncomputable section

/-- A392318: Decimal expansion of 37/72.

Offset 0, canonical program `A392318.P11358537660704665373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392318 (n : ℕ) : ℤ :=
  (A392318.P11358537660704665373.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392447.P11774020866332799433

`∏{e}[n+1, val(#, 2)+1]`
-/

namespace A392447.P11774020866332799433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 2 + 1)

end

end A392447.P11774020866332799433

noncomputable section

/-- A392447: The number of exponential divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A392447.P11774020866332799433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392447 (n : ℕ) : ℤ :=
  (A392447.P11774020866332799433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392452.P10509127174743125491

`∏{e}[n+1, #-val(#!, 2)]`
-/

namespace A392452.P10509127174743125491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))

end

end A392452.P10509127174743125491

noncomputable section

/-- A392452: The number of coreful infinitary divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A392452.P10509127174743125491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392452 (n : ℕ) : ℤ :=
  A392452.P10509127174743125491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392628.P6323033129836470467

`∏{e}[n+1, val(#+1, 2)+1]`
-/

namespace A392628.P6323033129836470467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (Nat.factorization (f1 n) p + 1) 2 + 1)

end

end A392628.P6323033129836470467

noncomputable section

/-- A392628: The number of infinitary divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A392628.P6323033129836470467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392628 (n : ℕ) : ℤ :=
  (A392628.P6323033129836470467.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392629.P8999806984046215470

`∏{e}[n+1, val(#+1, 2)]`
-/

namespace A392629.P8999806984046215470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p + 1) 2

end

end A392629.P8999806984046215470

noncomputable section

/-- A392629: The number of coreful infinitary divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A392629.P8999806984046215470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392629 (n : ℕ) : ℤ :=
  (A392629.P8999806984046215470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392782.P7874202101078099020

`comp[3*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A392782.P7874202101078099020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 4] fun n f1 =>
  3 * f1 (n - 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A392782.P7874202101078099020

noncomputable section

/-- A392782: Complement of A000792.

Offset 1, canonical program `A392782.P7874202101078099020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392782 (n : ℕ) : ℤ :=
  (A392782.P7874202101078099020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392807.P3043267967174591191

`∑[a(n-2)+4]-(a(n-1)+a(n-2))` with `a(0)=3, a(1)=3`
-/

namespace A392807.P3043267967174591191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A392807.P3043267967174591191

noncomputable section

/-- A392807: Number of plane partitions of n with 3 parts.

Offset 3, canonical program `A392807.P3043267967174591191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392807 (n : ℕ) : ℤ :=
  A392807.P3043267967174591191.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392814.P8950680628207234601

`∑{p}[n+1, #%val(n+1, #)]`
-/

namespace A392814.P8950680628207234601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p % SequenceMachineLib.valuation (n + 1) p

end

end A392814.P8950680628207234601

noncomputable section

/-- A392814: Additive with a(p^e) = p mod e.

Offset 1, canonical program `A392814.P8950680628207234601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392814 (n : ℕ) : ℤ :=
  (A392814.P8950680628207234601.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393187.P813506043606163247

`xor(n+1, xor(n, n+1)+1)`
-/

namespace A393187.P813506043606163247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.xor n (n + 1) + 1)

end

end A393187.P813506043606163247

noncomputable section

/-- A393187: a(n) = n XOR (2 * (n AND -n)) assuming a two's complement representation of negative values.

Offset 1, canonical program `A393187.P813506043606163247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393187 (n : ℕ) : ℤ :=
  (A393187.P813506043606163247.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393188.P11239075537385551219

`or(n+2, xor(n, n+1)+n)`
-/

namespace A393188.P11239075537385551219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 2) (Nat.xor n (n + 1) + n)

end

end A393188.P11239075537385551219

noncomputable section

/-- A393188: a(n) = u(n) OR (u(n) - 1) where u(n) = n + (n AND -n) assuming a two's complement representation for negative values.

Offset 1, canonical program `A393188.P11239075537385551219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393188 (n : ℕ) : ℤ :=
  (A393188.P11239075537385551219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393210.P5495341853458949391

`2*xor(n, n+1)-1`
-/

namespace A393210.P5495341853458949391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor n (n + 1) : ℤ) - 1

end

end A393210.P5495341853458949391

noncomputable section

/-- A393210: Halting time for Wolfram's 2-state 2-symbol Turing machine 3626 when started with n on the tape.

Offset 1, canonical program `A393210.P5495341853458949391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393210 (n : ℕ) : ℤ :=
  A393210.P5495341853458949391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393214.P14055961800002760975

`∏{e}[n+1, C(#+3, 3)²]`
-/

namespace A393214.P14055961800002760975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 3) 3 ^ 2

end

end A393214.P14055961800002760975

noncomputable section

/-- A393214: a(n) = d_4(n)^2, where d_4 is the 4th Piltz function (A007426).

Offset 1, canonical program `A393214.P14055961800002760975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393214 (n : ℕ) : ℤ :=
  (A393214.P14055961800002760975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393307.P16840033001540489795

`and(n+1, (n+2)%4+n)`
-/

namespace A393307.P16840033001540489795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) ((n + 2) % 4 + n)

end

end A393307.P16840033001540489795

noncomputable section

/-- A393307: Number computed by Wolfram's 2-state 2-symbol Turing machine 2977 when started with n on the tape.

Offset 1, canonical program `A393307.P16840033001540489795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393307 (n : ℕ) : ℤ :=
  (A393307.P16840033001540489795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393313.P9944757430971594284

`∑[a(n-1)+a(floor(n/3))]` with `a(0)=1`
-/

namespace A393313.P9944757430971594284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393313.P9944757430971594284

noncomputable section

/-- A393313: G.f. A(x) satisfies: A(x) = (1 + x + x^2)^2 * A(x^3) / (1 - x).

Offset 0, canonical program `A393313.P9944757430971594284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A393313 (n : ℕ) : ℤ :=
  (A393313.P9944757430971594284.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A393313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393314.P6534115869234177053

`∑[a(n-1)+a(floor(n/4))]` with `a(0)=1`
-/

namespace A393314.P6534115869234177053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393314.P6534115869234177053

noncomputable section

/-- A393314: G.f. A(x) satisfies: A(x) = (1 + x + x^2 + x^3)^2 * A(x^4) / (1 - x).

Offset 0, canonical program `A393314.P6534115869234177053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2100 terms. -/
def A393314 (n : ℕ) : ℤ :=
  (A393314.P6534115869234177053.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2100 terms. -/
def A393314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393346.P11555351604380109696

`floor((n/3+1)*n²)`
-/

namespace A393346.P11555351604380109696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 3 + 1) * (n ^ 2 : ℚ)⌋

end

end A393346.P11555351604380109696

noncomputable section

/-- A393346: Lower (1,1/3) midsequence of (n^2) and (n^3); see Comments.

Offset 0, canonical program `A393346.P11555351604380109696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393346 (n : ℕ) : ℤ :=
  A393346.P11555351604380109696.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393347.P16074458007357386784

`ceil((n+3)/3*n²)`
-/

namespace A393347.P16074458007357386784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / 3 * (n ^ 2 : ℚ)⌉

end

end A393347.P16074458007357386784

noncomputable section

/-- A393347: Upper (1,1/3) midsequence of (n^2) and (n^3); see Comments.

Offset 0, canonical program `A393347.P16074458007357386784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393347 (n : ℕ) : ℤ :=
  A393347.P16074458007357386784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393491.P7429229746465201342

`∏{e}[n+1, round(#/3)]`
-/

namespace A393491.P7429229746465201342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway ((Nat.factorization (f1 n) p : ℚ) / 3)

end

end A393491.P7429229746465201342

noncomputable section

/-- A393491: Multiplicative sequence a(n) with a(p^e) = floor((e+1)/3) for prime p and e > 0.

Offset 1, canonical program `A393491.P7429229746465201342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393491 (n : ℕ) : ℤ :=
  A393491.P7429229746465201342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393579.P9619749412502138219

`floor(ϕ*(n+1))%3`
-/

namespace A393579.P9619749412502138219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ 3

end

end A393579.P9619749412502138219

noncomputable section

/-- A393579: a(n) = floor(g*n) mod 3, where g = (1+sqrt(5))/2 is the golden ratio.

Offset 1, canonical program `A393579.P9619749412502138219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393579 (n : ℕ) : ℤ :=
  A393579.P9619749412502138219.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393966.P17334113040274682572

`lt[n, lcm(n, dr(n))]`
-/

namespace A393966.P17334113040274682572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393966.P17334113040274682572

noncomputable section

/-- A393966: Numbers k which are not divisible by their digital root A010888(k).

Offset 1, canonical program `A393966.P17334113040274682572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393966 (n : ℕ) : ℤ :=
  (A393966.P17334113040274682572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394499.P7830385450786944049

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=6`
-/

namespace A394499.P7830385450786944049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1, 6] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394499.P7830385450786944049

noncomputable section

/-- A394499: Starting at one corner of n X n grid of dots, the maximum number of edges that can be drawn without lifting the pencil or going over a previously drawn edge.

Offset 1, canonical program `A394499.P7830385450786944049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394499 (n : ℕ) : ℤ :=
  A394499.P7830385450786944049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395242.P7356846218417856694

`comp[or(n, 2*and(n, 2*n))]`
-/

namespace A395242.P7356846218417856694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * Nat.land n (2 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A395242.P7356846218417856694

noncomputable section

/-- A395242: Numbers whose binary representation contains isolated digits "11" at least once.

Offset 1, canonical program `A395242.P7356846218417856694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395242 (n : ℕ) : ℤ :=
  (A395242.P7356846218417856694.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395831.P4522594969490723447

`7*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=8`
-/

namespace A395831.P4522594969490723447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  7 * (a (n - 1) + a (n - 2))

end

end A395831.P4522594969490723447

noncomputable section

/-- A395831: Number of octal strings of length n that do not contain a specific string xx (where x is a single digit).

Offset 0, canonical program `A395831.P4522594969490723447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A395831 (n : ℕ) : ℤ :=
  (A395831.P4522594969490723447.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A395831.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A396059.P9001877094237801459

`xor(2*n, floor(n/2))`
-/

namespace A396059.P9001877094237801459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) ⌊(n : ℚ) / 2⌋

end

end A396059.P9001877094237801459

noncomputable section

/-- A396059: a(n) is the action of "Rule 90" elementary cellular automaton on the binary representation of n if the cells may only expand into the significant bit.

Offset 0, canonical program `A396059.P9001877094237801459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396059 (n : ℕ) : ℤ :=
  A396059.P9001877094237801459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396073.P3494542612140640641

`comp[∑[∑{d}[n, ceil(1/#)]]]`
-/

namespace A396073.P3494542612140640641
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈1 / (d : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P3494542612140640641

noncomputable section

/-- A396073: Numbers not of the form Sum_{k=1..m} floor(m/k).

Offset 1, canonical program `A396073.P3494542612140640641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396073 (n : ℕ) : ℤ :=
  (A396073.P3494542612140640641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396179.P6313024239879174676

`comp[∑[floor(n/8)]]`
-/

namespace A396179.P6313024239879174676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 8⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396179.P6313024239879174676

noncomputable section

/-- A396179: Positive integers not in A008726.

Offset 1, canonical program `A396179.P6313024239879174676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396179 (n : ℕ) : ℤ :=
  (A396179.P6313024239879174676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396201.P2362147857527105902

`a(n-2)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A396201.P2362147857527105902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - a (n - 1)

end

end A396201.P2362147857527105902

noncomputable section

/-- A396201: a(x) = psi * phi^(-x) + (1 - psi) * (-phi)^x, where phi = (1 + sqrt(5)) / 2 and psi = phi^4 / sqrt(5) - 1, evaluated at the nonnegative integers.

Offset 0, canonical program `A396201.P2362147857527105902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A396201 (n : ℕ) : ℤ :=
  A396201.P2362147857527105902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A396201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396232.P16787481113001593262

`a(n-1)+20` with `a(0)=1, a(1)=3, a(2)=8, a(3)=18`
-/

namespace A396232.P16787481113001593262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 8, 18] fun n a =>
  a (n - 1) + 20

end

end A396232.P16787481113001593262

noncomputable section

/-- A396232: The smallest amount which cannot be made with fewer than n Indian coins.

Offset 1, canonical program `A396232.P16787481113001593262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396232 (n : ℕ) : ℤ :=
  (A396232.P16787481113001593262.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396813.P17031582197009336318

`floor(∑[∑[n]/a(n-1)]-n)` with `a(0)=0, a(1)=2`
-/

namespace A396813.P17031582197009336318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)⌋

end

end A396813.P17031582197009336318

noncomputable section

/-- A396813: Lower (1/2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396813.P17031582197009336318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396813 (n : ℕ) : ℤ :=
  A396813.P17031582197009336318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396814.P6530181582357071457

`floor(∑[(n+1)/gcd(2, n)]-n)`
-/

namespace A396814.P6530181582357071457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)⌋

end

end A396814.P6530181582357071457

noncomputable section

/-- A396814: Upper (1/2,1) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396814.P6530181582357071457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396814 (n : ℕ) : ℤ :=
  A396814.P6530181582357071457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396834.P5557126064486009035

`floor(a(n-1)+n*gcd(2, n)/3)` with `a(0)=0`
-/

namespace A396834.P5557126064486009035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) * ((Nat.gcd 2 n : ℚ) / 3)⌋

end

end A396834.P5557126064486009035

noncomputable section

/-- A396834: Lower (2/3,1/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396834.P5557126064486009035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396834 (n : ℕ) : ℤ :=
  A396834.P5557126064486009035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396945.P912619964047640132

`∏{e}[n^3+1, #+1]`
-/

namespace A396945.P912619964047640132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A396945.P912619964047640132

noncomputable section

/-- A396945: Number of divisors of n^3 + 1.

Offset 0, canonical program `A396945.P912619964047640132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A396945 (n : ℕ) : ℤ :=
  (A396945.P912619964047640132.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A396945.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397686.P17616375302226965562

`∏{e}[n+1, 2*#+1]*∏{e}[n+1, C(#+2, 2)]`
-/

namespace A397686.P17616375302226965562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1)) * (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2)

end

end A397686.P17616375302226965562

noncomputable section

/-- A397686: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+1)/2.

Offset 1, canonical program `A397686.P17616375302226965562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397686 (n : ℕ) : ℤ :=
  (A397686.P17616375302226965562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397686.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397976.P17523580794336411567

`floor(2*(1/8+n)²)`
-/

namespace A397976.P17523580794336411567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((1 : ℚ) / 8 + (n : ℚ)) ^ 2⌋

end

end A397976.P17523580794336411567

noncomputable section

/-- A397976: Lower (1,3/2) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397976.P17523580794336411567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397976 (n : ℕ) : ℤ :=
  A397976.P17523580794336411567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397977.P8002124037299490132

`ceil(((2*n)²+n)/2)`
-/

namespace A397977.P8002124037299490132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n) ^ 2 + n : ℚ) / 2⌉

end

end A397977.P8002124037299490132

noncomputable section

/-- A397977: Upper (1,3/2) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397977.P8002124037299490132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397977 (n : ℕ) : ℤ :=
  A397977.P8002124037299490132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397986.P9100517263041861075

`floor(∑[n/2]+n²/3)`
-/

namespace A397986.P9100517263041861075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ) / 3⌋

end

end A397986.P9100517263041861075

noncomputable section

/-- A397986: Lower (1/2,1/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397986.P9100517263041861075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397986 (n : ℕ) : ℤ :=
  A397986.P9100517263041861075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397987.P8556232856134825525

`floor(∑[a(n-1)+7]/6)` with `a(0)=4, a(1)=5`
-/

namespace A397987.P8556232856134825525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌋

end

end A397987.P8556232856134825525

noncomputable section

/-- A397987: Upper (1/2,1/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A397987.P8556232856134825525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397987 (n : ℕ) : ℤ :=
  A397987.P8556232856134825525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397992.P13780803117957403864

`∑[∏{e}[n+1, #+1]+n]`
-/

namespace A397992.P13780803117957403864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397992.P13780803117957403864

noncomputable section

/-- A397992: Antidiagonal sums of the array A397991.

Offset 0, canonical program `A397992.P13780803117957403864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397992 (n : ℕ) : ℤ :=
  (A397992.P13780803117957403864.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398046.P6030537389870259891

`floor(∑[n/4]+n²)`
-/

namespace A398046.P6030537389870259891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)⌋

end

end A398046.P6030537389870259891

noncomputable section

/-- A398046: Lower (1/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398046.P6030537389870259891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398046 (n : ℕ) : ℤ :=
  A398046.P6030537389870259891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398046.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398048.P2747850737111379664

`floor(3/4*∑[n])+n²`
-/

namespace A398048.P2747850737111379664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋ + (n ^ 2 : ℤ)

end

end A398048.P2747850737111379664

noncomputable section

/-- A398048: Lower (3/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398048.P2747850737111379664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398048 (n : ℕ) : ℤ :=
  A398048.P2747850737111379664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398049.P5737372841266844217

`n²-floor(∑[n/4-n])`
-/

namespace A398049.P5737372841266844217
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398049.P5737372841266844217

noncomputable section

/-- A398049: Upper (3/4,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

Offset 0, canonical program `A398049.P5737372841266844217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398049 (n : ℕ) : ℤ :=
  A398049.P5737372841266844217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398049.provenance : SequenceMachineLib.Provenance := .conjectured

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

