import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A063270.P13187597729236919533

`9^(2*n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063270.P13187597729236919533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (2 * n) + 1

end

end A063270.P13187597729236919533

noncomputable section

/-- A063270: a(n) = 9^(2*n) + 1.

Offset 0, canonical program `A063270.P13187597729236919533`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^(2*n)+1` (program `A063270.P13187597729236919533`, by `A063270.P13187597729236919533.correct`). Lean does not check the parsing of the name. -/
def A063270 (n : ℕ) : ℤ :=
  (A063270.P13187597729236919533.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^(2*n)+1` (program `A063270.P13187597729236919533`, by `A063270.P13187597729236919533.correct`). Lean does not check the parsing of the name. -/
def A063270.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063401.P17678042544295066128

`a(n-1)*a(n-2)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063401.P17678042544295066128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) * a (n - 2) * a (n - 3)

end

end A063401.P17678042544295066128

noncomputable section

/-- A063401: a(n) = a(n-1)*a(n-2)*a(n-3) with a(0)=1, a(1)=2, a(2)=2.

Offset 0, canonical program `A063401.P17678042544295066128`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)` (program `A063401.P17678042544295066128`, by `A063401.P17678042544295066128.correct`). Lean does not check the parsing of the name. -/
def A063401 (n : ℕ) : ℤ :=
  (A063401.P17678042544295066128.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)` (program `A063401.P17678042544295066128`, by `A063401.P17678042544295066128.correct`). Lean does not check the parsing of the name. -/
def A063401.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063404.P11346250842822155209

`a(n-1)+(1+a(n-2))*(1+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063404.P11346250842822155209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (1 + a (n - 2)) * (1 + a (n - 3))

end

end A063404.P11346250842822155209

noncomputable section

/-- A063404: a(0)=1; a(1)=1; a(2)=1; a(n) = a(n-1) + (1 + a(n-2))*(1 + a(n-3)).

Offset 0, canonical program `A063404.P11346250842822155209`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(1+a(n-2))*(1+a(n-3))` (program `A063404.P11346250842822155209`, by `A063404.P11346250842822155209.correct`). Lean does not check the parsing of the name. -/
def A063404 (n : ℕ) : ℤ :=
  (A063404.P11346250842822155209.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+(1+a(n-2))*(1+a(n-3))` (program `A063404.P11346250842822155209`, by `A063404.P11346250842822155209.correct`). Lean does not check the parsing of the name. -/
def A063404.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063481.P8654168379830397221

`4^n+8^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063481.P8654168379830397221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n + 8 ^ n

end

end A063481.P8654168379830397221

noncomputable section

/-- A063481: a(n) = 4^n + 8^n.

Offset 0, canonical program `A063481.P8654168379830397221`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+8^n` (program `A063481.P8654168379830397221`, by `A063481.P8654168379830397221.correct`). Lean does not check the parsing of the name. -/
def A063481 (n : ℕ) : ℤ :=
  (A063481.P8654168379830397221.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+8^n` (program `A063481.P8654168379830397221`, by `A063481.P8654168379830397221.correct`). Lean does not check the parsing of the name. -/
def A063481.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063511.P2999449240964338839

`a(floor(sqrt(n+1))-1)*2` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063511.P2999449240964338839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.sqrt (n + 1) - 1) * 2

end

end A063511.P2999449240964338839

noncomputable section

/-- A063511: a(n) = a(floor(sqrt(n))) * 2.

Offset 1, canonical program `A063511.P2999449240964338839`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(sqrt(n+1))-1)*2` (program `A063511.P2999449240964338839`, by `A063511.P2999449240964338839.correct`). Lean does not check the parsing of the name. -/
def A063511 (n : ℕ) : ℤ :=
  (A063511.P2999449240964338839.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(sqrt(n+1))-1)*2` (program `A063511.P2999449240964338839`, by `A063511.P2999449240964338839.correct`). Lean does not check the parsing of the name. -/
def A063511.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063727.P4628812826446673500

`2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063727.P4628812826446673500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2)

end

end A063727.P4628812826446673500

noncomputable section

/-- A063727: a(n) = 2*a(n-1) + 4*a(n-2), a(0)=1, a(1)=2.

Offset 0, canonical program `A063727.P4628812826446673500`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A063727.P4628812826446673500`, by `A063727.P4628812826446673500.correct`). Lean does not check the parsing of the name. -/
def A063727 (n : ℕ) : ℤ :=
  (A063727.P4628812826446673500.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A063727.P4628812826446673500`, by `A063727.P4628812826446673500.correct`). Lean does not check the parsing of the name. -/
def A063727.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063757.P10025757676693359246

`ogf((1+3x+2x^2)/(1-x-2x^2+2x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063757.P10025757676693359246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -1, -2, 2] n

end

end A063757.P10025757676693359246

noncomputable section

/-- A063757: Expansion of g.f. (1+3*x+2*x^2)/((1-x)*(1-2*x^2)).

Offset 0, canonical program `A063757.P10025757676693359246`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-x-2x^2+2x^3))` (program `A063757.P10025757676693359246`, by `A063757.P10025757676693359246.correct`). Lean does not check the parsing of the name. -/
def A063757 (n : ℕ) : ℤ :=
  A063757.P10025757676693359246.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-x-2x^2+2x^3))` (program `A063757.P10025757676693359246`, by `A063757.P10025757676693359246.correct`). Lean does not check the parsing of the name. -/
def A063757.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063782.P750457964841289750

`2*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063782.P750457964841289750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2)

end

end A063782.P750457964841289750

noncomputable section

/-- A063782: a(0) = 1, a(1) = 3; for n > 1, a(n) = 2*a(n-1) + 4*a(n-2).

Offset 0, canonical program `A063782.P750457964841289750`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A063782.P750457964841289750`, by `A063782.P750457964841289750.correct`). Lean does not check the parsing of the name. -/
def A063782 (n : ℕ) : ℤ :=
  (A063782.P750457964841289750.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A063782.P750457964841289750`, by `A063782.P750457964841289750.correct`). Lean does not check the parsing of the name. -/
def A063782.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063823.P17099221139023686430

`ogf((1-2x^2-3x^3)/(1-2x-x^3+2x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063823.P17099221139023686430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -3] [1, -2, 0, -1, 2] n

end

end A063823.P17099221139023686430

noncomputable section

/-- A063823: Expansion of g.f. (1 - 2*x^2 - 3*x^3)/((1 - x^3)*(1 - 2*x)).

Offset 0, canonical program `A063823.P17099221139023686430`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2-3x^3)/(1-2x-x^3+2x^4))` (program `A063823.P17099221139023686430`, by `A063823.P17099221139023686430.correct`). Lean does not check the parsing of the name. -/
def A063823 (n : ℕ) : ℤ :=
  A063823.P17099221139023686430.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2-3x^3)/(1-2x-x^3+2x^4))` (program `A063823.P17099221139023686430`, by `A063823.P17099221139023686430.correct`). Lean does not check the parsing of the name. -/
def A063823.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063882.P3070067966620141214

`a(n-a(n-1))+a(n-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063882.P3070067966620141214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - a (n - 1)) + a (n - a (n - 4))

end

end A063882.P3070067966620141214

noncomputable section

/-- A063882: a(n) = a(n - a(n - 1)) + a(n - a(n - 4)), with a(1) = ... = a(4) = 1.

Offset 1, canonical program `A063882.P3070067966620141214`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-4))` (program `A063882.P3070067966620141214`, by `A063882.P3070067966620141214.correct`). Lean does not check the parsing of the name. -/
def A063882 (n : ℕ) : ℤ :=
  (A063882.P3070067966620141214.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(n-a(n-4))` (program `A063882.P3070067966620141214`, by `A063882.P3070067966620141214.correct`). Lean does not check the parsing of the name. -/
def A063882.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063941.P11538279312247182265

`17*39^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063941.P11538279312247182265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * 39 ^ n

end

end A063941.P11538279312247182265

noncomputable section

/-- A063941: a(n) = 17*39^n.

Offset 0, canonical program `A063941.P11538279312247182265`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*39^n` (program `A063941.P11538279312247182265`, by `A063941.P11538279312247182265.correct`). Lean does not check the parsing of the name. -/
def A063941 (n : ℕ) : ℤ :=
  (A063941.P11538279312247182265.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*39^n` (program `A063941.P11538279312247182265`, by `A063941.P11538279312247182265.correct`). Lean does not check the parsing of the name. -/
def A063941.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064200.P7711796051295634463

`12*n*(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064200.P7711796051295634463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ((n : ℤ) * ((n : ℤ) - 1))

end

end A064200.P7711796051295634463

noncomputable section

/-- A064200: a(n) = 12*n*(n-1).

Offset 0, canonical program `A064200.P7711796051295634463`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n*(n-1)` (program `A064200.P7711796051295634463`, by `A064200.P7711796051295634463.correct`). Lean does not check the parsing of the name. -/
def A064200 (n : ℕ) : ℤ :=
  A064200.P7711796051295634463.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n*(n-1)` (program `A064200.P7711796051295634463`, by `A064200.P7711796051295634463.correct`). Lean does not check the parsing of the name. -/
def A064200.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064201.P17390735966757415515

`9*n*(3*n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064201.P17390735966757415515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((n : ℤ) * ((3 * n : ℤ) - 2))

end

end A064201.P17390735966757415515

noncomputable section

/-- A064201: 9 times octagonal numbers: a(n) = 9*n*(3*n-2).

Offset 0, canonical program `A064201.P17390735966757415515`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n*(3*n-2)` (program `A064201.P17390735966757415515`, by `A064201.P17390735966757415515.correct`). Lean does not check the parsing of the name. -/
def A064201 (n : ℕ) : ℤ :=
  A064201.P17390735966757415515.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n*(3*n-2)` (program `A064201.P17390735966757415515`, by `A064201.P17390735966757415515.correct`). Lean does not check the parsing of the name. -/
def A064201.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064321.P16030386990226526016

`n*(n-1)^3*(n-2)^3*(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064321.P16030386990226526016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) ^ 3 * ((n : ℤ) - 2) ^ 3 * ((n : ℤ) - 3)

end

end A064321.P16030386990226526016

noncomputable section

/-- A064321: a(n) = n*(n-1)^3*(n-2)^3*(n-3).

Offset 0, canonical program `A064321.P16030386990226526016`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)^3*(n-2)^3*(n-3)` (program `A064321.P16030386990226526016`, by `A064321.P16030386990226526016.correct`). Lean does not check the parsing of the name. -/
def A064321 (n : ℕ) : ℤ :=
  A064321.P16030386990226526016.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)^3*(n-2)^3*(n-3)` (program `A064321.P16030386990226526016`, by `A064321.P16030386990226526016.correct`). Lean does not check the parsing of the name. -/
def A064321.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064323.P4734053142636850996

`a(n-1)+ceil(a(n-2)/2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064323.P4734053142636850996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + ⌈(a (n - 2) : ℚ) / 2⌉

end

end A064323.P4734053142636850996

noncomputable section

/-- A064323: a(n) = a(n-1)+ceiling(a(n-2)/2) with a(0)=0, a(1)=1.

Offset 0, canonical program `A064323.P4734053142636850996`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+ceil(a(n-2)/2)` (program `A064323.P4734053142636850996`, by `A064323.P4734053142636850996.correct`). Lean does not check the parsing of the name. -/
def A064323 (n : ℕ) : ℤ :=
  A064323.P4734053142636850996.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+ceil(a(n-2)/2)` (program `A064323.P4734053142636850996`, by `A064323.P4734053142636850996.correct`). Lean does not check the parsing of the name. -/
def A064323.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064324.P11387025875580787052

`a(n-1)+floor(a(n-2)/2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064324.P11387025875580787052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + ⌊(a (n - 2) : ℚ) / 2⌋

end

end A064324.P11387025875580787052

noncomputable section

/-- A064324: a(n) = a(n-1) + floor(a(n-2)/2) with a(0)=1, a(1)=2.

Offset 0, canonical program `A064324.P11387025875580787052`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(a(n-2)/2)` (program `A064324.P11387025875580787052`, by `A064324.P11387025875580787052.correct`). Lean does not check the parsing of the name. -/
def A064324 (n : ℕ) : ℤ :=
  A064324.P11387025875580787052.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(a(n-2)/2)` (program `A064324.P11387025875580787052`, by `A064324.P11387025875580787052.correct`). Lean does not check the parsing of the name. -/
def A064324.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064385.P1222445988099951119

`2*5^(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064385.P1222445988099951119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 5 ^ (n + 1) : ℤ) - 3

end

end A064385.P1222445988099951119

noncomputable section

/-- A064385: a(n) = 2*5^n - 3.

Offset 1, canonical program `A064385.P1222445988099951119`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*5^(n+1)-3` (program `A064385.P1222445988099951119`, by `A064385.P1222445988099951119.correct`). Lean does not check the parsing of the name. -/
def A064385 (n : ℕ) : ℤ :=
  A064385.P1222445988099951119.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*5^(n+1)-3` (program `A064385.P1222445988099951119`, by `A064385.P1222445988099951119.correct`). Lean does not check the parsing of the name. -/
def A064385.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064583.P8505456152632923813

`n^4*(n^4+1)*(n²-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064583.P8505456152632923813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) * ((n ^ 4 + 1 : ℤ) * ((n ^ 2 : ℤ) - 1))

end

end A064583.P8505456152632923813

noncomputable section

/-- A064583: a(n) = n^4*(n^4+1)*(n^2-1).

Offset 0, canonical program `A064583.P8505456152632923813`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^4+1)*(n²-1)` (program `A064583.P8505456152632923813`, by `A064583.P8505456152632923813.correct`). Lean does not check the parsing of the name. -/
def A064583 (n : ℕ) : ℤ :=
  A064583.P8505456152632923813.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(n^4+1)*(n²-1)` (program `A064583.P8505456152632923813`, by `A064583.P8505456152632923813.correct`). Lean does not check the parsing of the name. -/
def A064583.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064587.P18145688638181735966

`n^6*(n^4+n²+1)*(n^3-1)*(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064587.P18145688638181735966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 6 : ℤ) * ((n ^ 4 + n ^ 2 + 1 : ℤ) * (((n ^ 3 : ℤ) - 1) * ((n : ℤ) - 1)))

end

end A064587.P18145688638181735966

noncomputable section

/-- A064587: a(n) = n^6*(n^4 + n^2 + 1)*(n^3 - 1)*(n - 1).

Offset 0, canonical program `A064587.P18145688638181735966`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^4+n²+1)*(n^3-1)*(n-1)` (program `A064587.P18145688638181735966`, by `A064587.P18145688638181735966.correct`). Lean does not check the parsing of the name. -/
def A064587 (n : ℕ) : ℤ :=
  A064587.P18145688638181735966.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(n^4+n²+1)*(n^3-1)*(n-1)` (program `A064587.P18145688638181735966`, by `A064587.P18145688638181735966.correct`). Lean does not check the parsing of the name. -/
def A064587.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064650.P7940449836741381077

`floor(a(n-1)/2)+a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064650.P7940449836741381077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) / 2⌋ + a (n - 2)

end

end A064650.P7940449836741381077

noncomputable section

/-- A064650: a(n) = floor(a(n-1)/2) + a(n-2) with a(0)=1, a(1)=2.

Offset 0, canonical program `A064650.P7940449836741381077`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)/2)+a(n-2)` (program `A064650.P7940449836741381077`, by `A064650.P7940449836741381077.correct`). Lean does not check the parsing of the name. -/
def A064650 (n : ℕ) : ℤ :=
  A064650.P7940449836741381077.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)/2)+a(n-2)` (program `A064650.P7940449836741381077`, by `A064650.P7940449836741381077.correct`). Lean does not check the parsing of the name. -/
def A064650.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064651.P1745475762559280573

`ceil(a(n-1)/2)+a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064651.P1745475762559280573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(a (n - 1) : ℚ) / 2⌉ + a (n - 2)

end

end A064651.P1745475762559280573

noncomputable section

/-- A064651: a(n) = ceiling(a(n-1)/2) + a(n-2) with a(0)=0 and a(1)=1.

Offset 0, canonical program `A064651.P1745475762559280573`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(a(n-1)/2)+a(n-2)` (program `A064651.P1745475762559280573`, by `A064651.P1745475762559280573.correct`). Lean does not check the parsing of the name. -/
def A064651 (n : ℕ) : ℤ :=
  A064651.P1745475762559280573.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(a(n-1)/2)+a(n-2)` (program `A064651.P1745475762559280573`, by `A064651.P1745475762559280573.correct`). Lean does not check the parsing of the name. -/
def A064651.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064746.P4109743125523953254

`n*8^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064746.P4109743125523953254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 8 ^ n + 1

end

end A064746.P4109743125523953254

noncomputable section

/-- A064746: a(n) = n*8^n + 1.

Offset 0, canonical program `A064746.P4109743125523953254`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*8^n+1` (program `A064746.P4109743125523953254`, by `A064746.P4109743125523953254.correct`). Lean does not check the parsing of the name. -/
def A064746 (n : ℕ) : ℤ :=
  (A064746.P4109743125523953254.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*8^n+1` (program `A064746.P4109743125523953254`, by `A064746.P4109743125523953254.correct`). Lean does not check the parsing of the name. -/
def A064746.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064747.P2746404470026299106

`n*9^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064747.P2746404470026299106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 9 ^ n + 1

end

end A064747.P2746404470026299106

noncomputable section

/-- A064747: a(n) = n*9^n + 1.

Offset 0, canonical program `A064747.P2746404470026299106`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*9^n+1` (program `A064747.P2746404470026299106`, by `A064747.P2746404470026299106.correct`). Lean does not check the parsing of the name. -/
def A064747 (n : ℕ) : ℤ :=
  (A064747.P2746404470026299106.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*9^n+1` (program `A064747.P2746404470026299106`, by `A064747.P2746404470026299106.correct`). Lean does not check the parsing of the name. -/
def A064747.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064748.P4514015484673215208

`n*10^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064748.P4514015484673215208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 10 ^ n + 1

end

end A064748.P4514015484673215208

noncomputable section

/-- A064748: a(n) = n*10^n + 1.

Offset 0, canonical program `A064748.P4514015484673215208`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*10^n+1` (program `A064748.P4514015484673215208`, by `A064748.P4514015484673215208.correct`). Lean does not check the parsing of the name. -/
def A064748 (n : ℕ) : ℤ :=
  (A064748.P4514015484673215208.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*10^n+1` (program `A064748.P4514015484673215208`, by `A064748.P4514015484673215208.correct`). Lean does not check the parsing of the name. -/
def A064748.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064749.P13370309510445526629

`n*11^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064749.P13370309510445526629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 11 ^ n + 1

end

end A064749.P13370309510445526629

noncomputable section

/-- A064749: a(n) = n*11^n + 1.

Offset 0, canonical program `A064749.P13370309510445526629`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*11^n+1` (program `A064749.P13370309510445526629`, by `A064749.P13370309510445526629.correct`). Lean does not check the parsing of the name. -/
def A064749 (n : ℕ) : ℤ :=
  (A064749.P13370309510445526629.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*11^n+1` (program `A064749.P13370309510445526629`, by `A064749.P13370309510445526629.correct`). Lean does not check the parsing of the name. -/
def A064749.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064750.P8846264144529737356

`n*12^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064750.P8846264144529737356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 12 ^ n + 1

end

end A064750.P8846264144529737356

noncomputable section

/-- A064750: a(n) = n*12^n + 1.

Offset 0, canonical program `A064750.P8846264144529737356`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*12^n+1` (program `A064750.P8846264144529737356`, by `A064750.P8846264144529737356.correct`). Lean does not check the parsing of the name. -/
def A064750 (n : ℕ) : ℤ :=
  (A064750.P8846264144529737356.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*12^n+1` (program `A064750.P8846264144529737356`, by `A064750.P8846264144529737356.correct`). Lean does not check the parsing of the name. -/
def A064750.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064751.P2179001577369083540

`(n+1)*5^(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064751.P2179001577369083540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 5 ^ (n + 1) : ℤ) - 1

end

end A064751.P2179001577369083540

noncomputable section

/-- A064751: a(n) = n*5^n - 1.

Offset 1, canonical program `A064751.P2179001577369083540`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*5^(n+1)-1` (program `A064751.P2179001577369083540`, by `A064751.P2179001577369083540.correct`). Lean does not check the parsing of the name. -/
def A064751 (n : ℕ) : ℤ :=
  A064751.P2179001577369083540.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*5^(n+1)-1` (program `A064751.P2179001577369083540`, by `A064751.P2179001577369083540.correct`). Lean does not check the parsing of the name. -/
def A064751.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064752.P6838774867230682218

`(n+1)*6^(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064752.P6838774867230682218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 6 ^ (n + 1) : ℤ) - 1

end

end A064752.P6838774867230682218

noncomputable section

/-- A064752: a(n) = n*6^n - 1.

Offset 1, canonical program `A064752.P6838774867230682218`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*6^(n+1)-1` (program `A064752.P6838774867230682218`, by `A064752.P6838774867230682218.correct`). Lean does not check the parsing of the name. -/
def A064752 (n : ℕ) : ℤ :=
  A064752.P6838774867230682218.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*6^(n+1)-1` (program `A064752.P6838774867230682218`, by `A064752.P6838774867230682218.correct`). Lean does not check the parsing of the name. -/
def A064752.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064753.P11049362427559591682

`(n+1)*7^(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064753.P11049362427559591682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 7 ^ (n + 1) : ℤ) - 1

end

end A064753.P11049362427559591682

noncomputable section

/-- A064753: a(n) = n*7^n - 1.

Offset 1, canonical program `A064753.P11049362427559591682`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*7^(n+1)-1` (program `A064753.P11049362427559591682`, by `A064753.P11049362427559591682.correct`). Lean does not check the parsing of the name. -/
def A064753 (n : ℕ) : ℤ :=
  A064753.P11049362427559591682.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*7^(n+1)-1` (program `A064753.P11049362427559591682`, by `A064753.P11049362427559591682.correct`). Lean does not check the parsing of the name. -/
def A064753.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064754.P2499548771574143420

`(n+1)*8^(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064754.P2499548771574143420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 8 ^ (n + 1) : ℤ) - 1

end

end A064754.P2499548771574143420

noncomputable section

/-- A064754: a(n) = n*8^n - 1.

Offset 1, canonical program `A064754.P2499548771574143420`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*8^(n+1)-1` (program `A064754.P2499548771574143420`, by `A064754.P2499548771574143420.correct`). Lean does not check the parsing of the name. -/
def A064754 (n : ℕ) : ℤ :=
  A064754.P2499548771574143420.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*8^(n+1)-1` (program `A064754.P2499548771574143420`, by `A064754.P2499548771574143420.correct`). Lean does not check the parsing of the name. -/
def A064754.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064755.P806243928124627926

`(n+1)*9^(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064755.P806243928124627926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 9 ^ (n + 1) : ℤ) - 1

end

end A064755.P806243928124627926

noncomputable section

/-- A064755: a(n) = n*9^n - 1.

Offset 1, canonical program `A064755.P806243928124627926`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*9^(n+1)-1` (program `A064755.P806243928124627926`, by `A064755.P806243928124627926.correct`). Lean does not check the parsing of the name. -/
def A064755 (n : ℕ) : ℤ :=
  A064755.P806243928124627926.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*9^(n+1)-1` (program `A064755.P806243928124627926`, by `A064755.P806243928124627926.correct`). Lean does not check the parsing of the name. -/
def A064755.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064756.P1316985546857033383

`(n+1)*10^(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064756.P1316985546857033383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 10 ^ (n + 1) : ℤ) - 1

end

end A064756.P1316985546857033383

noncomputable section

/-- A064756: a(n) = n*10^n - 1.

Offset 1, canonical program `A064756.P1316985546857033383`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*10^(n+1)-1` (program `A064756.P1316985546857033383`, by `A064756.P1316985546857033383.correct`). Lean does not check the parsing of the name. -/
def A064756 (n : ℕ) : ℤ :=
  A064756.P1316985546857033383.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*10^(n+1)-1` (program `A064756.P1316985546857033383`, by `A064756.P1316985546857033383.correct`). Lean does not check the parsing of the name. -/
def A064756.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064757.P257597308733415405

`(n+1)*11^(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064757.P257597308733415405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 11 ^ (n + 1) : ℤ) - 1

end

end A064757.P257597308733415405

noncomputable section

/-- A064757: a(n) = n*11^n - 1.

Offset 1, canonical program `A064757.P257597308733415405`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*11^(n+1)-1` (program `A064757.P257597308733415405`, by `A064757.P257597308733415405.correct`). Lean does not check the parsing of the name. -/
def A064757 (n : ℕ) : ℤ :=
  A064757.P257597308733415405.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*11^(n+1)-1` (program `A064757.P257597308733415405`, by `A064757.P257597308733415405.correct`). Lean does not check the parsing of the name. -/
def A064757.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064758.P16934764560612669296

`(n+1)*12^(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064758.P16934764560612669296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 12 ^ (n + 1) : ℤ) - 1

end

end A064758.P16934764560612669296

noncomputable section

/-- A064758: a(n) = n*12^n - 1.

Offset 1, canonical program `A064758.P16934764560612669296`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*12^(n+1)-1` (program `A064758.P16934764560612669296`, by `A064758.P16934764560612669296.correct`). Lean does not check the parsing of the name. -/
def A064758 (n : ℕ) : ℤ :=
  A064758.P16934764560612669296.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*12^(n+1)-1` (program `A064758.P16934764560612669296`, by `A064758.P16934764560612669296.correct`). Lean does not check the parsing of the name. -/
def A064758.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064761.P5984238371699821623

`15*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064761.P5984238371699821623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n ^ 2

end

end A064761.P5984238371699821623

noncomputable section

/-- A064761: a(n) = 15*n^2.

Offset 0, canonical program `A064761.P5984238371699821623`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n²` (program `A064761.P5984238371699821623`, by `A064761.P5984238371699821623.correct`). Lean does not check the parsing of the name. -/
def A064761 (n : ℕ) : ℤ :=
  (A064761.P5984238371699821623.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*n²` (program `A064761.P5984238371699821623`, by `A064761.P5984238371699821623.correct`). Lean does not check the parsing of the name. -/
def A064761.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064762.P18116716922960969571

`21*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064762.P18116716922960969571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n ^ 2

end

end A064762.P18116716922960969571

noncomputable section

/-- A064762: a(n) = 21*n^2.

Offset 0, canonical program `A064762.P18116716922960969571`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*n²` (program `A064762.P18116716922960969571`, by `A064762.P18116716922960969571.correct`). Lean does not check the parsing of the name. -/
def A064762 (n : ℕ) : ℤ :=
  (A064762.P18116716922960969571.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*n²` (program `A064762.P18116716922960969571`, by `A064762.P18116716922960969571.correct`). Lean does not check the parsing of the name. -/
def A064762.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064763.P5638320516339495305

`28*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064763.P5638320516339495305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n ^ 2

end

end A064763.P5638320516339495305

noncomputable section

/-- A064763: a(n) = 28*n^2.

Offset 0, canonical program `A064763.P5638320516339495305`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*n²` (program `A064763.P5638320516339495305`, by `A064763.P5638320516339495305.correct`). Lean does not check the parsing of the name. -/
def A064763 (n : ℕ) : ℤ :=
  (A064763.P5638320516339495305.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28*n²` (program `A064763.P5638320516339495305`, by `A064763.P5638320516339495305.correct`). Lean does not check the parsing of the name. -/
def A064763.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065140.P1913945543101322244

`2^n*(2*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065140.P1913945543101322244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.factorial (2 * n)

end

end A065140.P1913945543101322244

noncomputable section

/-- A065140: a(n) = 2^n*(2*n)!.

Offset 0, canonical program `A065140.P1913945543101322244`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(2*n)!` (program `A065140.P1913945543101322244`, by `A065140.P1913945543101322244.correct`). Lean does not check the parsing of the name. -/
def A065140 (n : ℕ) : ℤ :=
  (A065140.P1913945543101322244.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(2*n)!` (program `A065140.P1913945543101322244`, by `A065140.P1913945543101322244.correct`). Lean does not check the parsing of the name. -/
def A065140.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065141.P6680190401653701366

`(n+1)*2^n*(2*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065141.P6680190401653701366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 2 ^ n * Nat.factorial (2 * n)

end

end A065141.P6680190401653701366

noncomputable section

/-- A065141: a(n) = (n+1)*2^n*(2*n)!.

Offset 0, canonical program `A065141.P6680190401653701366`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^n*(2*n)!` (program `A065141.P6680190401653701366`, by `A065141.P6680190401653701366.correct`). Lean does not check the parsing of the name. -/
def A065141 (n : ℕ) : ℤ :=
  (A065141.P6680190401653701366.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^n*(2*n)!` (program `A065141.P6680190401653701366`, by `A065141.P6680190401653701366.correct`). Lean does not check the parsing of the name. -/
def A065141.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065142.P11329876877853403681

`2^n*(n+1)*(3*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065142.P11329876877853403681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * ((n + 1) * Nat.factorial (3 * n))

end

end A065142.P11329876877853403681

noncomputable section

/-- A065142: a(n) = 2^n*(n+1)*(3*n)!.

Offset 0, canonical program `A065142.P11329876877853403681`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(n+1)*(3*n)!` (program `A065142.P11329876877853403681`, by `A065142.P11329876877853403681.correct`). Lean does not check the parsing of the name. -/
def A065142 (n : ℕ) : ℤ :=
  (A065142.P11329876877853403681.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(n+1)*(3*n)!` (program `A065142.P11329876877853403681`, by `A065142.P11329876877853403681.correct`). Lean does not check the parsing of the name. -/
def A065142.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065186.P7787110248735877771

`5+a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=2, a(4)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065186.P7787110248735877771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 2, 4] fun n a =>
  5 + a (n - 5)

end

end A065186.P7787110248735877771

noncomputable section

/-- A065186: a(1)=1, a(2)=3, a(3)=5, a(4)=2, a(5)=4; for n > 5, a(n) = a(n-5) + 5.

Offset 1, canonical program `A065186.P7787110248735877771`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5+a(n-5)` (program `A065186.P7787110248735877771`, by `A065186.P7787110248735877771.correct`). Lean does not check the parsing of the name. -/
def A065186 (n : ℕ) : ℤ :=
  (A065186.P7787110248735877771.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5+a(n-5)` (program `A065186.P7787110248735877771`, by `A065186.P7787110248735877771.correct`). Lean does not check the parsing of the name. -/
def A065186.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065440.P10983116689325036244

`(n-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065440.P10983116689325036244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

end

end A065440.P10983116689325036244

noncomputable section

/-- A065440: a(n) = (n-1)^n.

Offset 0, canonical program `A065440.P10983116689325036244`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)^n` (program `A065440.P10983116689325036244`, by `A065440.P10983116689325036244.correct`). Lean does not check the parsing of the name. -/
def A065440 (n : ℕ) : ℤ :=
  A065440.P10983116689325036244.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)^n` (program `A065440.P10983116689325036244`, by `A065440.P10983116689325036244.correct`). Lean does not check the parsing of the name. -/
def A065440.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065482.P11906938650527563455

`round(2^(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065482.P11906938650527563455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A065482.P11906938650527563455

noncomputable section

/-- A065482: a(n) = round( 2^n/n ).

Offset 1, canonical program `A065482.P11906938650527563455`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(2^(n+1)/(n+1))` (program `A065482.P11906938650527563455`, by `A065482.P11906938650527563455.correct`). Lean does not check the parsing of the name. -/
def A065482 (n : ℕ) : ℤ :=
  A065482.P11906938650527563455.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(2^(n+1)/(n+1))` (program `A065482.P11906938650527563455`, by `A065482.P11906938650527563455.correct`). Lean does not check the parsing of the name. -/
def A065482.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065532.P11573010565156108803

`48*n²-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065532.P11573010565156108803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n ^ 2 : ℤ) - 1

end

end A065532.P11573010565156108803

noncomputable section

/-- A065532: a(n) = 48*n^2 - 1.

Offset 0, canonical program `A065532.P11573010565156108803`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `48*n²-1` (program `A065532.P11573010565156108803`, by `A065532.P11573010565156108803.correct`). Lean does not check the parsing of the name. -/
def A065532 (n : ℕ) : ℤ :=
  A065532.P11573010565156108803.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `48*n²-1` (program `A065532.P11573010565156108803`, by `A065532.P11573010565156108803.correct`). Lean does not check the parsing of the name. -/
def A065532.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065597.P9393336464240022364

`2*a(n-1)*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065597.P9393336464240022364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3] fun n a =>
  2 * a (n - 1) * a (n - 2) - a (n - 3)

end

end A065597.P9393336464240022364

noncomputable section

/-- A065597: a(0)=0, a(1)=1, a(2)=1; for n >= 3, a(n) = 2*a(n-1)*a(n-2) - a(n-3).

Offset 0, canonical program `A065597.P9393336464240022364`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)-a(n-3)` (program `A065597.P9393336464240022364`, by `A065597.P9393336464240022364.correct`). Lean does not check the parsing of the name. -/
def A065597 (n : ℕ) : ℤ :=
  A065597.P9393336464240022364.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)-a(n-3)` (program `A065597.P9393336464240022364`, by `A065597.P9393336464240022364.correct`). Lean does not check the parsing of the name. -/
def A065597.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065598.P18110081213714271515

`2*a(n-1)*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065598.P18110081213714271515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 1) * a (n - 2) - a (n - 3)

end

end A065598.P18110081213714271515

noncomputable section

/-- A065598: a(0)=0, a(1)=1, a(2)=2; for n >= 3, a(n) = 2*a(n-1)*a(n-2) - a(n-3).

Offset 0, canonical program `A065598.P18110081213714271515`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)-a(n-3)` (program `A065598.P18110081213714271515`, by `A065598.P18110081213714271515.correct`). Lean does not check the parsing of the name. -/
def A065598 (n : ℕ) : ℤ :=
  A065598.P18110081213714271515.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)-a(n-3)` (program `A065598.P18110081213714271515`, by `A065598.P18110081213714271515.correct`). Lean does not check the parsing of the name. -/
def A065598.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065651.P6946383518765194660

`n+2-2*floor(sqrt(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065651.P6946383518765194660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (2 * Nat.sqrt (n + 2) : ℤ)

end

end A065651.P6946383518765194660

noncomputable section

/-- A065651: a(n) = Sum_{k=1..n} (-1)^tau(k) = n - 2*floor(sqrt(n)).

Offset 2, canonical program `A065651.P6946383518765194660`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2-2*floor(sqrt(n+2))` (program `A065651.P6946383518765194660`, by `A065651.P6946383518765194660.correct`). Lean does not check the parsing of the name. -/
def A065651 (n : ℕ) : ℤ :=
  A065651.P6946383518765194660.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2-2*floor(sqrt(n+2))` (program `A065651.P6946383518765194660`, by `A065651.P6946383518765194660.correct`). Lean does not check the parsing of the name. -/
def A065651.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065653.P3135961964413243920

`a(n-2)*a(n-2)+2` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065653.P3135961964413243920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) * a (n - 2) + 2

end

end A065653.P3135961964413243920

noncomputable section

/-- A065653: a(0) = 0, a(1) = 1, a(n) = a(n-2)*a(n-2) + 2 for n > 1.

Offset 0, canonical program `A065653.P3135961964413243920`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*a(n-2)+2` (program `A065653.P3135961964413243920`, by `A065653.P3135961964413243920.correct`). Lean does not check the parsing of the name. -/
def A065653 (n : ℕ) : ℤ :=
  (A065653.P3135961964413243920.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*a(n-2)+2` (program `A065653.P3135961964413243920`, by `A065653.P3135961964413243920.correct`). Lean does not check the parsing of the name. -/
def A065653.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066068.P5452189247178737058

`n^n+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066068.P5452189247178737058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n + n

end

end A066068.P5452189247178737058

noncomputable section

/-- A066068: a(n) = n^n + n.

Offset 0, canonical program `A066068.P5452189247178737058`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+n` (program `A066068.P5452189247178737058`, by `A066068.P5452189247178737058.correct`). Lean does not check the parsing of the name. -/
def A066068 (n : ℕ) : ℤ :=
  (A066068.P5452189247178737058.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+n` (program `A066068.P5452189247178737058`, by `A066068.P5452189247178737058.correct`). Lean does not check the parsing of the name. -/
def A066068.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066084.P5628382183890451674

`n!²+n!+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066084.P5628382183890451674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 + Nat.factorial n + n

end

end A066084.P5628382183890451674

noncomputable section

/-- A066084: a(n) = (n!)^2 + n! + n.

Offset 0, canonical program `A066084.P5628382183890451674`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+n!+n` (program `A066084.P5628382183890451674`, by `A066084.P5628382183890451674.correct`). Lean does not check the parsing of the name. -/
def A066084 (n : ℕ) : ℤ :=
  (A066084.P5628382183890451674.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+n!+n` (program `A066084.P5628382183890451674`, by `A066084.P5628382183890451674.correct`). Lean does not check the parsing of the name. -/
def A066084.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066138.P15800142740498849672

`10^(2*n)+10^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066138.P15800142740498849672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (2 * n) + 10 ^ n + 1

end

end A066138.P15800142740498849672

noncomputable section

/-- A066138: a(n) = 10^(2*n) + 10^n + 1.

Offset 0, canonical program `A066138.P15800142740498849672`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(2*n)+10^n+1` (program `A066138.P15800142740498849672`, by `A066138.P15800142740498849672.correct`). Lean does not check the parsing of the name. -/
def A066138 (n : ℕ) : ℤ :=
  (A066138.P15800142740498849672.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(2*n)+10^n+1` (program `A066138.P15800142740498849672`, by `A066138.P15800142740498849672.correct`). Lean does not check the parsing of the name. -/
def A066138.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066141.P3644562334677578148

`(n+1)^n+n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066141.P3644562334677578148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n + (n + 2)

end

end A066141.P3644562334677578148

noncomputable section

/-- A066141: a(n) = n^(n-1) + n + 1.

Offset 1, canonical program `A066141.P3644562334677578148`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n+n+2` (program `A066141.P3644562334677578148`, by `A066141.P3644562334677578148.correct`). Lean does not check the parsing of the name. -/
def A066141 (n : ℕ) : ℤ :=
  (A066141.P3644562334677578148.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n+n+2` (program `A066141.P3644562334677578148`, by `A066141.P3644562334677578148.correct`). Lean does not check the parsing of the name. -/
def A066141.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066142.P17327499882956603005

`n!²+n!+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066142.P17327499882956603005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 + Nat.factorial n + 1

end

end A066142.P17327499882956603005

noncomputable section

/-- A066142: a(n) = (n!)^2 + n! + 1.

Offset 0, canonical program `A066142.P17327499882956603005`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+n!+1` (program `A066142.P17327499882956603005`, by `A066142.P17327499882956603005.correct`). Lean does not check the parsing of the name. -/
def A066142 (n : ℕ) : ℤ :=
  (A066142.P17327499882956603005.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+n!+1` (program `A066142.P17327499882956603005`, by `A066142.P17327499882956603005.correct`). Lean does not check the parsing of the name. -/
def A066142.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066143.P17504484635712324695

`n!+n²+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066143.P17504484635712324695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + n ^ 2 + n

end

end A066143.P17504484635712324695

noncomputable section

/-- A066143: a(n) = n! + n^2 + n.

Offset 0, canonical program `A066143.P17504484635712324695`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+n²+n` (program `A066143.P17504484635712324695`, by `A066143.P17504484635712324695.correct`). Lean does not check the parsing of the name. -/
def A066143 (n : ℕ) : ℤ :=
  (A066143.P17504484635712324695.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+n²+n` (program `A066143.P17504484635712324695`, by `A066143.P17504484635712324695.correct`). Lean does not check the parsing of the name. -/
def A066143.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066406.P13494832108669392044

`2^(n+1)*(3^(n+1)-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066406.P13494832108669392044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * ((3 ^ (n + 1) : ℤ) - 3)

end

end A066406.P13494832108669392044

noncomputable section

/-- A066406: a(n) = 2^n*(3^n-3).

Offset 1, canonical program `A066406.P13494832108669392044`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*(3^(n+1)-3)` (program `A066406.P13494832108669392044`, by `A066406.P13494832108669392044.correct`). Lean does not check the parsing of the name. -/
def A066406 (n : ℕ) : ℤ :=
  A066406.P13494832108669392044.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)*(3^(n+1)-3)` (program `A066406.P13494832108669392044`, by `A066406.P13494832108669392044.correct`). Lean does not check the parsing of the name. -/
def A066406.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066455.P8479762657970922833

`6*C(n+1, 4)+5*C(n+1, 2)-4*(n+1)+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066455.P8479762657970922833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (n + 1) 4 + 5 * Nat.choose (n + 1) 2 : ℤ) - (4 * (n + 1) : ℤ) + 5

end

end A066455.P8479762657970922833

noncomputable section

/-- A066455: a(n) = 6*binomial(n,4) + 5*binomial(n,2) - 4*n + 5.

Offset 1, canonical program `A066455.P8479762657970922833`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n+1, 4)+5*C(n+1, 2)-4*(n+1)+5` (program `A066455.P8479762657970922833`, by `A066455.P8479762657970922833.correct`). Lean does not check the parsing of the name. -/
def A066455 (n : ℕ) : ℤ :=
  A066455.P8479762657970922833.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*C(n+1, 4)+5*C(n+1, 2)-4*(n+1)+5` (program `A066455.P8479762657970922833`, by `A066455.P8479762657970922833.correct`). Lean does not check the parsing of the name. -/
def A066455.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066524.P7942145865934771605

`n*(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066524.P7942145865934771605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((2 ^ n : ℤ) - 1)

end

end A066524.P7942145865934771605

noncomputable section

/-- A066524: a(n) = n*(2^n - 1).

Offset 0, canonical program `A066524.P7942145865934771605`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2^n-1)` (program `A066524.P7942145865934771605`, by `A066524.P7942145865934771605.correct`). Lean does not check the parsing of the name. -/
def A066524 (n : ℕ) : ℤ :=
  A066524.P7942145865934771605.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2^n-1)` (program `A066524.P7942145865934771605`, by `A066524.P7942145865934771605.correct`). Lean does not check the parsing of the name. -/
def A066524.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066530.P11584113782926563272

`ogf((1+x+x^3)/(1-x-x^4+x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066530.P11584113782926563272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1] [1, -1, 0, 0, -1, 1] n

end

end A066530.P11584113782926563272

noncomputable section

/-- A066530: Expansion of (1+x+x^3)/((1-x)*(1-x^4)).

Offset 0, canonical program `A066530.P11584113782926563272`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^3)/(1-x-x^4+x^5))` (program `A066530.P11584113782926563272`, by `A066530.P11584113782926563272.correct`). Lean does not check the parsing of the name. -/
def A066530 (n : ℕ) : ℤ :=
  A066530.P11584113782926563272.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^3)/(1-x-x^4+x^5))` (program `A066530.P11584113782926563272`, by `A066530.P11584113782926563272.correct`). Lean does not check the parsing of the name. -/
def A066530.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066559.P5954974370800163633

`ceil(10^n/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066559.P5954974370800163633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / (n + 1 : ℚ)⌉

end

end A066559.P5954974370800163633

noncomputable section

/-- A066559: a(n) = ceiling(10^(n-1)/n).

Offset 1, canonical program `A066559.P5954974370800163633`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(10^n/(n+1))` (program `A066559.P5954974370800163633`, by `A066559.P5954974370800163633.correct`). Lean does not check the parsing of the name. -/
def A066559 (n : ℕ) : ℤ :=
  A066559.P5954974370800163633.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(10^n/(n+1))` (program `A066559.P5954974370800163633`, by `A066559.P5954974370800163633.correct`). Lean does not check the parsing of the name. -/
def A066559.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066810.P10107864647593630781

`ogf(x^2/(1-7x+16x^2-12x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066810.P10107864647593630781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -7, 16, -12] n

end

end A066810.P10107864647593630781

noncomputable section

/-- A066810: Expansion of x^2/((1-3*x)*(1-2*x)^2).

Offset 0, canonical program `A066810.P10107864647593630781`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-7x+16x^2-12x^3))` (program `A066810.P10107864647593630781`, by `A066810.P10107864647593630781.correct`). Lean does not check the parsing of the name. -/
def A066810 (n : ℕ) : ℤ :=
  A066810.P10107864647593630781.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-7x+16x^2-12x^3))` (program `A066810.P10107864647593630781`, by `A066810.P10107864647593630781.correct`). Lean does not check the parsing of the name. -/
def A066810.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066979.P6247858953745526574

`floor((n+1)!/2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066979.P6247858953745526574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)⌋

end

end A066979.P6247858953745526574

noncomputable section

/-- A066979: a(n) = floor(n!/2^n).

Offset 1, canonical program `A066979.P6247858953745526574`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/2^(n+1))` (program `A066979.P6247858953745526574`, by `A066979.P6247858953745526574.correct`). Lean does not check the parsing of the name. -/
def A066979 (n : ℕ) : ℤ :=
  A066979.P6247858953745526574.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/2^(n+1))` (program `A066979.P6247858953745526574`, by `A066979.P6247858953745526574.correct`). Lean does not check the parsing of the name. -/
def A066979.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066998.P9420470937437890405

`n²*a(n-1)+1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066998.P9420470937437890405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ 2 * a (n - 1) + 1

end

end A066998.P9420470937437890405

noncomputable section

/-- A066998: a(0)=0; a(n) = n^2*a(n-1) + 1.

Offset 0, canonical program `A066998.P9420470937437890405`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+1` (program `A066998.P9420470937437890405`, by `A066998.P9420470937437890405.correct`). Lean does not check the parsing of the name. -/
def A066998 (n : ℕ) : ℤ :=
  (A066998.P9420470937437890405.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+1` (program `A066998.P9420470937437890405`, by `A066998.P9420470937437890405.correct`). Lean does not check the parsing of the name. -/
def A066998.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067078.P14897806109440932293

`n*a(n-1)-(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067078.P14897806109440932293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * a (n - 1) - ((n : ℤ) - 1) * a (n - 2)

end

end A067078.P14897806109440932293

noncomputable section

/-- A067078: a(1) = 1, a(2) = 2, a(n) = (n-1)*a(n-1) - (n-2)*a(n-2).

Offset 1, canonical program `A067078.P14897806109440932293`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-(n-1)*a(n-2)` (program `A067078.P14897806109440932293`, by `A067078.P14897806109440932293.correct`). Lean does not check the parsing of the name. -/
def A067078 (n : ℕ) : ℤ :=
  A067078.P14897806109440932293.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)-(n-1)*a(n-2)` (program `A067078.P14897806109440932293`, by `A067078.P14897806109440932293.correct`). Lean does not check the parsing of the name. -/
def A067078.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067272.P7660226144984630586

`2*10^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067272.P7660226144984630586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 10 ^ n : ℤ) - 1

end

end A067272.P7660226144984630586

noncomputable section

/-- A067272: a(n) = 2*10^(n-1) - 1.

Offset 1, canonical program `A067272.P7660226144984630586`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*10^n-1` (program `A067272.P7660226144984630586`, by `A067272.P7660226144984630586.correct`). Lean does not check the parsing of the name. -/
def A067272 (n : ℕ) : ℤ :=
  A067272.P7660226144984630586.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*10^n-1` (program `A067272.P7660226144984630586`, by `A067272.P7660226144984630586.correct`). Lean does not check the parsing of the name. -/
def A067272.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067273.P3171522677798974503

`n*(a(n-1)*2+1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067273.P3171522677798974503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) * 2 + 1)

end

end A067273.P3171522677798974503

noncomputable section

/-- A067273: a(n) = n*(a(n-1)*2+1), a(0) = 0.

Offset 0, canonical program `A067273.P3171522677798974503`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)*2+1)` (program `A067273.P3171522677798974503`, by `A067273.P3171522677798974503.correct`). Lean does not check the parsing of the name. -/
def A067273 (n : ℕ) : ℤ :=
  (A067273.P3171522677798974503.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(a(n-1)*2+1)` (program `A067273.P3171522677798974503`, by `A067273.P3171522677798974503.correct`). Lean does not check the parsing of the name. -/
def A067273.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067389.P14097551594125527113

`3*n^3+2*n²+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067389.P14097551594125527113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 2 * n ^ 2 + n

end

end A067389.P14097551594125527113

noncomputable section

/-- A067389: a(n) = 3*n^3 + 2*n^2 + n.

Offset 0, canonical program `A067389.P14097551594125527113`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3+2*n²+n` (program `A067389.P14097551594125527113`, by `A067389.P14097551594125527113.correct`). Lean does not check the parsing of the name. -/
def A067389 (n : ℕ) : ℤ :=
  (A067389.P14097551594125527113.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n^3+2*n²+n` (program `A067389.P14097551594125527113`, by `A067389.P14097551594125527113.correct`). Lean does not check the parsing of the name. -/
def A067389.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067624.P5275510762540578590

`2^(2*n)*(2*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067624.P5275510762540578590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n) * Nat.factorial (2 * n)

end

end A067624.P5275510762540578590

noncomputable section

/-- A067624: a(n) = 2^(2*n)*(2*n)!.

Offset 0, canonical program `A067624.P5275510762540578590`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n)*(2*n)!` (program `A067624.P5275510762540578590`, by `A067624.P5275510762540578590.correct`). Lean does not check the parsing of the name. -/
def A067624 (n : ℕ) : ℤ :=
  (A067624.P5275510762540578590.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n)*(2*n)!` (program `A067624.P5275510762540578590`, by `A067624.P5275510762540578590.correct`). Lean does not check the parsing of the name. -/
def A067624.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067626.P3218770229817333251

`2^(2*n+1)*(2*n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067626.P3218770229817333251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n + 1) * Nat.factorial (2 * n + 1)

end

end A067626.P3218770229817333251

noncomputable section

/-- A067626: a(n) = 2^(2n+1)*(2n+1)!.

Offset 0, canonical program `A067626.P3218770229817333251`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)*(2*n+1)!` (program `A067626.P3218770229817333251`, by `A067626.P3218770229817333251.correct`). Lean does not check the parsing of the name. -/
def A067626 (n : ℕ) : ℤ :=
  (A067626.P3218770229817333251.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)*(2*n+1)!` (program `A067626.P3218770229817333251`, by `A067626.P3218770229817333251.correct`). Lean does not check the parsing of the name. -/
def A067626.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067705.P17568998580690962890

`11*(n+1)²+22*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067705.P17568998580690962890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (n + 1) ^ 2 + 22 * (n + 1)

end

end A067705.P17568998580690962890

noncomputable section

/-- A067705: a(n) = 11*n^2 + 22*n.

Offset 1, canonical program `A067705.P17568998580690962890`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*(n+1)²+22*(n+1)` (program `A067705.P17568998580690962890`, by `A067705.P17568998580690962890.correct`). Lean does not check the parsing of the name. -/
def A067705 (n : ℕ) : ℤ :=
  (A067705.P17568998580690962890.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*(n+1)²+22*(n+1)` (program `A067705.P17568998580690962890`, by `A067705.P17568998580690962890.correct`). Lean does not check the parsing of the name. -/
def A067705.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067707.P5911507643238364005

`3*(n+1)²+12*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067707.P5911507643238364005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2 + 12 * (n + 1)

end

end A067707.P5911507643238364005

noncomputable section

/-- A067707: a(n) = 3*n^2 + 12*n.

Offset 1, canonical program `A067707.P5911507643238364005`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²+12*(n+1)` (program `A067707.P5911507643238364005`, by `A067707.P5911507643238364005.correct`). Lean does not check the parsing of the name. -/
def A067707 (n : ℕ) : ℤ :=
  (A067707.P5911507643238364005.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²+12*(n+1)` (program `A067707.P5911507643238364005`, by `A067707.P5911507643238364005.correct`). Lean does not check the parsing of the name. -/
def A067707.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067724.P9963393938596018905

`5*(n+1)²+10*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067724.P9963393938596018905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1) ^ 2 + 10 * (n + 1)

end

end A067724.P9963393938596018905

noncomputable section

/-- A067724: a(n) = 5*n^2 + 10*n.

Offset 1, canonical program `A067724.P9963393938596018905`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)²+10*(n+1)` (program `A067724.P9963393938596018905`, by `A067724.P9963393938596018905.correct`). Lean does not check the parsing of the name. -/
def A067724 (n : ℕ) : ℤ :=
  (A067724.P9963393938596018905.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(n+1)²+10*(n+1)` (program `A067724.P9963393938596018905`, by `A067724.P9963393938596018905.correct`). Lean does not check the parsing of the name. -/
def A067724.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067725.P18258344800788486266

`3*n²+6*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067725.P18258344800788486266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 6 * n

end

end A067725.P18258344800788486266

noncomputable section

/-- A067725: a(n) = 3*n^2 + 6*n.

Offset 0, canonical program `A067725.P18258344800788486266`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+6*n` (program `A067725.P18258344800788486266`, by `A067725.P18258344800788486266.correct`). Lean does not check the parsing of the name. -/
def A067725 (n : ℕ) : ℤ :=
  (A067725.P18258344800788486266.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+6*n` (program `A067725.P18258344800788486266`, by `A067725.P18258344800788486266.correct`). Lean does not check the parsing of the name. -/
def A067725.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067726.P5504740399403573179

`6*(n+1)²+12*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067726.P5504740399403573179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1) ^ 2 + 12 * (n + 1)

end

end A067726.P5504740399403573179

noncomputable section

/-- A067726: a(n) = 6*n^2 + 12*n.

Offset 1, canonical program `A067726.P5504740399403573179`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)²+12*(n+1)` (program `A067726.P5504740399403573179`, by `A067726.P5504740399403573179.correct`). Lean does not check the parsing of the name. -/
def A067726 (n : ℕ) : ℤ :=
  (A067726.P5504740399403573179.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)²+12*(n+1)` (program `A067726.P5504740399403573179`, by `A067726.P5504740399403573179.correct`). Lean does not check the parsing of the name. -/
def A067726.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067727.P1628858591748561100

`7*(n+1)²+14*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067727.P1628858591748561100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n + 1) ^ 2 + 14 * (n + 1)

end

end A067727.P1628858591748561100

noncomputable section

/-- A067727: a(n) = 7*n^2 + 14*n.

Offset 1, canonical program `A067727.P1628858591748561100`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)²+14*(n+1)` (program `A067727.P1628858591748561100`, by `A067727.P1628858591748561100.correct`). Lean does not check the parsing of the name. -/
def A067727 (n : ℕ) : ℤ :=
  (A067727.P1628858591748561100.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)²+14*(n+1)` (program `A067727.P1628858591748561100`, by `A067727.P1628858591748561100.correct`). Lean does not check the parsing of the name. -/
def A067727.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067728.P6158032751772494089

`2*(n+1)²+8*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067728.P6158032751772494089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2 + 8 * (n + 1)

end

end A067728.P6158032751772494089

noncomputable section

/-- A067728: a(n) = 2*n^2 + 8*n.

Offset 1, canonical program `A067728.P6158032751772494089`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+8*(n+1)` (program `A067728.P6158032751772494089`, by `A067728.P6158032751772494089.correct`). Lean does not check the parsing of the name. -/
def A067728 (n : ℕ) : ℤ :=
  (A067728.P6158032751772494089.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+8*(n+1)` (program `A067728.P6158032751772494089`, by `A067728.P6158032751772494089.correct`). Lean does not check the parsing of the name. -/
def A067728.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067815.P4190552477698997636

`gcd(n+1, floor(sqrt(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067815.P4190552477698997636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.sqrt (n + 1))

end

end A067815.P4190552477698997636

noncomputable section

/-- A067815: a(n) = gcd(n, floor(sqrt(n))).

Offset 1, canonical program `A067815.P4190552477698997636`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, floor(sqrt(n+1)))` (program `A067815.P4190552477698997636`, by `A067815.P4190552477698997636.correct`). Lean does not check the parsing of the name. -/
def A067815 (n : ℕ) : ℤ :=
  (A067815.P4190552477698997636.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, floor(sqrt(n+1)))` (program `A067815.P4190552477698997636`, by `A067815.P4190552477698997636.correct`). Lean does not check the parsing of the name. -/
def A067815.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067900.P11799195000871412519

`14*a(n-1)-a(n-2)` with `a(0)=0, a(1)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067900.P11799195000871412519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n a =>
  14 * a (n - 1) - a (n - 2)

end

end A067900.P11799195000871412519

noncomputable section

/-- A067900: a(n) = 14*a(n-1) - a(n-2); a(0) = 0, a(1) = 8.

Offset 0, canonical program `A067900.P11799195000871412519`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A067900.P11799195000871412519`, by `A067900.P11799195000871412519.correct`). Lean does not check the parsing of the name. -/
def A067900 (n : ℕ) : ℤ :=
  A067900.P11799195000871412519.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A067900.P11799195000871412519`, by `A067900.P11799195000871412519.correct`). Lean does not check the parsing of the name. -/
def A067900.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067902.P1687835793602107167

`14*a(n-1)-a(n-2)` with `a(0)=2, a(1)=14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067902.P1687835793602107167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 14] fun n a =>
  14 * a (n - 1) - a (n - 2)

end

end A067902.P1687835793602107167

noncomputable section

/-- A067902: a(n) = 14*a(n-1) - a(n-2); a(0) = 2, a(1) = 14.

Offset 0, canonical program `A067902.P1687835793602107167`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A067902.P1687835793602107167`, by `A067902.P1687835793602107167.correct`). Lean does not check the parsing of the name. -/
def A067902 (n : ℕ) : ℤ :=
  A067902.P1687835793602107167.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-a(n-2)` (program `A067902.P1687835793602107167`, by `A067902.P1687835793602107167.correct`). Lean does not check the parsing of the name. -/
def A067902.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A067998.P12062298001294777272

`n²-2*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067998.P12062298001294777272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (2 * n : ℤ)

end

end A067998.P12062298001294777272

noncomputable section

/-- A067998: a(n) = n^2 - 2*n.

Offset 0, canonical program `A067998.P12062298001294777272`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-2*n` (program `A067998.P12062298001294777272`, by `A067998.P12062298001294777272.correct`). Lean does not check the parsing of the name. -/
def A067998 (n : ℕ) : ℤ :=
  A067998.P12062298001294777272.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-2*n` (program `A067998.P12062298001294777272`, by `A067998.P12062298001294777272.correct`). Lean does not check the parsing of the name. -/
def A067998.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A068508.P7181404711369062843

`round((a(n-1)+a(n-2))/a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068508.P7181404711369062843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) + a (n - 2) : ℚ) / (a (n - 3) : ℚ))

end

end A068508.P7181404711369062843

noncomputable section

/-- A068508: a(n) = round((a(n-1) + a(n-2))/a(n-3)) starting with a(1)=a(2)=a(3)=1.

Offset 1, canonical program `A068508.P7181404711369062843`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((a(n-1)+a(n-2))/a(n-3))` (program `A068508.P7181404711369062843`, by `A068508.P7181404711369062843.correct`). Lean does not check the parsing of the name. -/
def A068508 (n : ℕ) : ℤ :=
  A068508.P7181404711369062843.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((a(n-1)+a(n-2))/a(n-3))` (program `A068508.P7181404711369062843`, by `A068508.P7181404711369062843.correct`). Lean does not check the parsing of the name. -/
def A068508.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A068601.P18163521696996894258

`(n+1)^3-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068601.P18163521696996894258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - 1

end

end A068601.P18163521696996894258

noncomputable section

/-- A068601: a(n) = n^3 - 1.

Offset 1, canonical program `A068601.P18163521696996894258`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-1` (program `A068601.P18163521696996894258`, by `A068601.P18163521696996894258.correct`). Lean does not check the parsing of the name. -/
def A068601 (n : ℕ) : ℤ :=
  A068601.P18163521696996894258.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-1` (program `A068601.P18163521696996894258`, by `A068601.P18163521696996894258.correct`). Lean does not check the parsing of the name. -/
def A068601.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069038.P11696173579921960810

`ogf((x+4x^2+6x^3+4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069038.P11696173579921960810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 6, 4, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A069038.P11696173579921960810

noncomputable section

/-- A069038: Expansion of g.f. x*(1+x)^4/(1-x)^6.

Offset 0, canonical program `A069038.P11696173579921960810`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+4x^2+6x^3+4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A069038.P11696173579921960810`, by `A069038.P11696173579921960810.correct`). Lean does not check the parsing of the name. -/
def A069038 (n : ℕ) : ℤ :=
  A069038.P11696173579921960810.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+4x^2+6x^3+4x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` (program `A069038.P11696173579921960810`, by `A069038.P11696173579921960810.correct`). Lean does not check the parsing of the name. -/
def A069038.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069039.P11719410095030268358

`ogf((x+5x^2+10x^3+10x^4+5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069039.P11719410095030268358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 10, 10, 5, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A069039.P11719410095030268358

noncomputable section

/-- A069039: Expansion of g.f. x*(1+x)^5/(1-x)^7.

Offset 0, canonical program `A069039.P11719410095030268358`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+5x^2+10x^3+10x^4+5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A069039.P11719410095030268358`, by `A069039.P11719410095030268358.correct`). Lean does not check the parsing of the name. -/
def A069039 (n : ℕ) : ℤ :=
  A069039.P11719410095030268358.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+5x^2+10x^3+10x^4+5x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A069039.P11719410095030268358`, by `A069039.P11719410095030268358.correct`). Lean does not check the parsing of the name. -/
def A069039.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069071.P2704706594091739207

`(2*n+1)*((2*n+1)^4+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069071.P2704706594091739207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((2 * n + 1) ^ 4 + 4)

end

end A069071.P2704706594091739207

noncomputable section

/-- A069071: a(n) = (2*n + 1)*((2*n + 1)^4 + 4).

Offset 0, canonical program `A069071.P2704706594091739207`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*((2*n+1)^4+4)` (program `A069071.P2704706594091739207`, by `A069071.P2704706594091739207.correct`). Lean does not check the parsing of the name. -/
def A069071 (n : ℕ) : ℤ :=
  (A069071.P2704706594091739207.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*((2*n+1)^4+4)` (program `A069071.P2704706594091739207`, by `A069071.P2704706594091739207.correct`). Lean does not check the parsing of the name. -/
def A069071.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069072.P12258976068866877537

`(2*n+1)*(2*n+2)*(2*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069072.P12258976068866877537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((2 * n + 2) * (2 * n + 3))

end

end A069072.P12258976068866877537

noncomputable section

/-- A069072: a(n) = (2n+1)*(2n+2)*(2n+3).

Offset 0, canonical program `A069072.P12258976068866877537`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+3)` (program `A069072.P12258976068866877537`, by `A069072.P12258976068866877537.correct`). Lean does not check the parsing of the name. -/
def A069072 (n : ℕ) : ℤ :=
  (A069072.P12258976068866877537.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+3)` (program `A069072.P12258976068866877537`, by `A069072.P12258976068866877537.correct`). Lean does not check the parsing of the name. -/
def A069072.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069073.P8377113290800975738

`n*(4*n²-1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069073.P8377113290800975738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((4 * n ^ 2 : ℤ) - 1) ^ 2

end

end A069073.P8377113290800975738

noncomputable section

/-- A069073: a(n) = n*(4n^2 - 1)^2.

Offset 0, canonical program `A069073.P8377113290800975738`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n²-1)²` (program `A069073.P8377113290800975738`, by `A069073.P8377113290800975738.correct`). Lean does not check the parsing of the name. -/
def A069073 (n : ℕ) : ℤ :=
  A069073.P8377113290800975738.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n²-1)²` (program `A069073.P8377113290800975738`, by `A069073.P8377113290800975738.correct`). Lean does not check the parsing of the name. -/
def A069073.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069074.P11612305474879561126

`(2*n+2)*(2*n+3)*(2*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069074.P11612305474879561126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 2) * ((2 * n + 3) * (2 * n + 4))

end

end A069074.P11612305474879561126

noncomputable section

/-- A069074: a(n) = (2*n+2)*(2*n+3)*(2*n+4) = 24*A000330(n+1).

Offset 0, canonical program `A069074.P11612305474879561126`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+2)*(2*n+3)*(2*n+4)` (program `A069074.P11612305474879561126`, by `A069074.P11612305474879561126.correct`). Lean does not check the parsing of the name. -/
def A069074 (n : ℕ) : ℤ :=
  (A069074.P11612305474879561126.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+2)*(2*n+3)*(2*n+4)` (program `A069074.P11612305474879561126`, by `A069074.P11612305474879561126.correct`). Lean does not check the parsing of the name. -/
def A069074.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069075.P1012277660260982624

`(4*n²-1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069075.P1012277660260982624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 2 : ℤ) - 1) ^ 2

end

end A069075.P1012277660260982624

noncomputable section

/-- A069075: a(n) = (4*n^2 - 1)^2.

Offset 0, canonical program `A069075.P1012277660260982624`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n²-1)²` (program `A069075.P1012277660260982624`, by `A069075.P1012277660260982624.correct`). Lean does not check the parsing of the name. -/
def A069075 (n : ℕ) : ℤ :=
  A069075.P1012277660260982624.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n²-1)²` (program `A069075.P1012277660260982624`, by `A069075.P1012277660260982624.correct`). Lean does not check the parsing of the name. -/
def A069075.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069076.P13284712890466576937

`(4*(n+1)²-1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069076.P13284712890466576937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) ^ 2 : ℤ) - 1) ^ 3

end

end A069076.P13284712890466576937

noncomputable section

/-- A069076: a(n) = (4*n^2 - 1)^3.

Offset 1, canonical program `A069076.P13284712890466576937`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)²-1)^3` (program `A069076.P13284712890466576937`, by `A069076.P13284712890466576937.correct`). Lean does not check the parsing of the name. -/
def A069076 (n : ℕ) : ℤ :=
  A069076.P13284712890466576937.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)²-1)^3` (program `A069076.P13284712890466576937`, by `A069076.P13284712890466576937.correct`). Lean does not check the parsing of the name. -/
def A069076.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069078.P9288704633967038313

`n*(4*n^4+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069078.P9288704633967038313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (4 * n ^ 4 + 1)

end

end A069078.P9288704633967038313

noncomputable section

/-- A069078: a(n) = n*(4*n^4 + 1).

Offset 0, canonical program `A069078.P9288704633967038313`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n^4+1)` (program `A069078.P9288704633967038313`, by `A069078.P9288704633967038313.correct`). Lean does not check the parsing of the name. -/
def A069078 (n : ℕ) : ℤ :=
  (A069078.P9288704633967038313.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(4*n^4+1)` (program `A069078.P9288704633967038313`, by `A069078.P9288704633967038313.correct`). Lean does not check the parsing of the name. -/
def A069078.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069079.P10567195182999650856

`(2*n+1)*(2*n+2)*(2*n+4)*(2*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069079.P10567195182999650856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((2 * n + 2) * ((2 * n + 4) * (2 * n + 5)))

end

end A069079.P10567195182999650856

noncomputable section

/-- A069079: a(n) = (2*n+1)*(2*n+2)*(2*n+4)*(2*n+5).

Offset 0, canonical program `A069079.P10567195182999650856`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+4)*(2*n+5)` (program `A069079.P10567195182999650856`, by `A069079.P10567195182999650856.correct`). Lean does not check the parsing of the name. -/
def A069079 (n : ℕ) : ℤ :=
  (A069079.P10567195182999650856.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+4)*(2*n+5)` (program `A069079.P10567195182999650856`, by `A069079.P10567195182999650856.correct`). Lean does not check the parsing of the name. -/
def A069079.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069080.P12415619324160763511

`(2*n+1)*(2*n+2)*(2*n+6)*(2*n+7)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069080.P12415619324160763511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * ((2 * n + 2) * ((2 * n + 6) * (2 * n + 7)))

end

end A069080.P12415619324160763511

noncomputable section

/-- A069080: a(n) = (2n+1)*(2n+2)*(2n+6)*(2n+7).

Offset 0, canonical program `A069080.P12415619324160763511`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+6)*(2*n+7)` (program `A069080.P12415619324160763511`, by `A069080.P12415619324160763511.correct`). Lean does not check the parsing of the name. -/
def A069080 (n : ℕ) : ℤ :=
  (A069080.P12415619324160763511.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(2*n+2)*(2*n+6)*(2*n+7)` (program `A069080.P12415619324160763511`, by `A069080.P12415619324160763511.correct`). Lean does not check the parsing of the name. -/
def A069080.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069134.P14913592356176758804

`(n!*3*n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069134.P14913592356176758804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * (3 * n)) ^ 2

end

end A069134.P14913592356176758804

noncomputable section

/-- A069134: (n!*(3*n))^2.

Offset 0, canonical program `A069134.P14913592356176758804`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n!*3*n)²` (program `A069134.P14913592356176758804`, by `A069134.P14913592356176758804.correct`). Lean does not check the parsing of the name. -/
def A069134 (n : ℕ) : ℤ :=
  (A069134.P14913592356176758804.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n!*3*n)²` (program `A069134.P14913592356176758804`, by `A069134.P14913592356176758804.correct`). Lean does not check the parsing of the name. -/
def A069134.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069135.P18204192042065814080

`(n!*(n+1)!)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069135.P18204192042065814080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 1)) ^ 2

end

end A069135.P18204192042065814080

noncomputable section

/-- A069135: a(n) = (n!*(n+1)!)^2.

Offset 0, canonical program `A069135.P18204192042065814080`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n!*(n+1)!)²` (program `A069135.P18204192042065814080`, by `A069135.P18204192042065814080.correct`). Lean does not check the parsing of the name. -/
def A069135 (n : ℕ) : ℤ :=
  (A069135.P18204192042065814080.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n!*(n+1)!)²` (program `A069135.P18204192042065814080`, by `A069135.P18204192042065814080.correct`). Lean does not check the parsing of the name. -/
def A069135.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069140.P5151333609523772961

`(4*n-1)*4*n*(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069140.P5151333609523772961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) - 1) * (4 * (n * (4 * n + 1)) : ℤ)

end

end A069140.P5151333609523772961

noncomputable section

/-- A069140: a(n) = (4*n-1)*4*n*(4*n+1).

Offset 0, canonical program `A069140.P5151333609523772961`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n-1)*4*n*(4*n+1)` (program `A069140.P5151333609523772961`, by `A069140.P5151333609523772961.correct`). Lean does not check the parsing of the name. -/
def A069140 (n : ℕ) : ℤ :=
  A069140.P5151333609523772961.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n-1)*4*n*(4*n+1)` (program `A069140.P5151333609523772961`, by `A069140.P5151333609523772961.correct`). Lean does not check the parsing of the name. -/
def A069140.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069183.P4423711919027016735

`ogf(1/(1-x-2x^2+x^3+2x^4+x^5-3x^6+3x^8-x^9-2x^10-x^11+2x^12+x^13-x^14))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069183.P4423711919027016735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, 1, 2, 1, -3, 0, 3, -1, -2, -1, 2, 1, -1] n

end

end A069183.P4423711919027016735

noncomputable section

/-- A069183: Expansion of 1/((1-x)*(1-x^2)^2*(1-x^3)*(1-x^6)).

Offset 0, canonical program `A069183.P4423711919027016735`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+x^3+2x^4+x^5-3x^6+3x^8-x^9-2x^10-x^11+2x^12+x^13-x^14))` (program `A069183.P4423711919027016735`, by `A069183.P4423711919027016735.correct`). Lean does not check the parsing of the name. -/
def A069183 (n : ℕ) : ℤ :=
  A069183.P4423711919027016735.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2+x^3+2x^4+x^5-3x^6+3x^8-x^9-2x^10-x^11+2x^12+x^13-x^14))` (program `A069183.P4423711919027016735`, by `A069183.P4423711919027016735.correct`). Lean does not check the parsing of the name. -/
def A069183.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069226.P812798564728484573

`gcd(n, 2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069226.P812798564728484573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 ^ n + 1)

end

end A069226.P812798564728484573

noncomputable section

/-- A069226: a(n) = gcd(n, 2^n + 1).

Offset 0, canonical program `A069226.P812798564728484573`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 2^n+1)` (program `A069226.P812798564728484573`, by `A069226.P812798564728484573.correct`). Lean does not check the parsing of the name. -/
def A069226 (n : ℕ) : ℤ :=
  (A069226.P812798564728484573.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 2^n+1)` (program `A069226.P812798564728484573`, by `A069226.P812798564728484573.correct`). Lean does not check the parsing of the name. -/
def A069226.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069229.P9777305323734948243

`n*(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069229.P9777305323734948243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 ^ n + 1)

end

end A069229.P9777305323734948243

noncomputable section

/-- A069229: a(n) = n*(2^n + 1).

Offset 0, canonical program `A069229.P9777305323734948243`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2^n+1)` (program `A069229.P9777305323734948243`, by `A069229.P9777305323734948243.correct`). Lean does not check the parsing of the name. -/
def A069229 (n : ℕ) : ℤ :=
  (A069229.P9777305323734948243.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2^n+1)` (program `A069229.P9777305323734948243`, by `A069229.P9777305323734948243.correct`). Lean does not check the parsing of the name. -/
def A069229.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069477.P5873570272558288466

`60*(n+1)²+180*(n+1)+150`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069477.P5873570272558288466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * (n + 1) ^ 2 + 180 * (n + 1) + 150

end

end A069477.P5873570272558288466

noncomputable section

/-- A069477: a(n) = 60*n^2 + 180*n + 150.

Offset 1, canonical program `A069477.P5873570272558288466`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `60*(n+1)²+180*(n+1)+150` (program `A069477.P5873570272558288466`, by `A069477.P5873570272558288466.correct`). Lean does not check the parsing of the name. -/
def A069477 (n : ℕ) : ℤ :=
  (A069477.P5873570272558288466.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `60*(n+1)²+180*(n+1)+150` (program `A069477.P5873570272558288466`, by `A069477.P5873570272558288466.correct`). Lean does not check the parsing of the name. -/
def A069477.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069745.P13177746589081917293

`ogf(1/(1-x^2-x^3+x^5-x^6-x^7+2x^9+2x^10-x^12+x^14-2x^16-2x^17+x^19+x^20-x^21+x^23+x^24-x^26))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069745.P13177746589081917293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -1, 0, 1, -1, -1, 0, 2, 2, 0, -1, 0, 1, 0, -2, -2, 0, 1, 1, -1, 0, 1, 1, 0, -1] n

end

end A069745.P13177746589081917293

noncomputable section

/-- A069745: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^6)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A069745.P13177746589081917293`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^6-x^7+2x^9+2x^10-x^12+x^14-2x^16-2x^17+x^19+x^20-x^21+x^23+x^24-x^26))` (program `A069745.P13177746589081917293`, by `A069745.P13177746589081917293.correct`). Lean does not check the parsing of the name. -/
def A069745 (n : ℕ) : ℤ :=
  A069745.P13177746589081917293.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^5-x^6-x^7+2x^9+2x^10-x^12+x^14-2x^16-2x^17+x^19+x^20-x^21+x^23+x^24-x^26))` (program `A069745.P13177746589081917293`, by `A069745.P13177746589081917293.correct`). Lean does not check the parsing of the name. -/
def A069745.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069894.P6207372148760126868

`4*n²+4*n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069894.P6207372148760126868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 2 + 4 * n + 2

end

end A069894.P6207372148760126868

noncomputable section

/-- A069894: Centered square numbers: a(n) = 4*n^2 + 4*n + 2.

Offset 0, canonical program `A069894.P6207372148760126868`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+4*n+2` (program `A069894.P6207372148760126868`, by `A069894.P6207372148760126868.correct`). Lean does not check the parsing of the name. -/
def A069894 (n : ℕ) : ℤ :=
  (A069894.P6207372148760126868.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n²+4*n+2` (program `A069894.P6207372148760126868`, by `A069894.P6207372148760126868.correct`). Lean does not check the parsing of the name. -/
def A069894.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069957.P15361692526959934535

`ogf(1/(1-2x-x^2+3x^3-x^4+2x^5+x^6-4x^7-2x^8+2x^10+2x^11+2x^12-2x^14-4x^15+x^16+2x^17-x^18+3x^19-x^20-2x^21+x^22))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069957.P15361692526959934535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -1, 3, -1, 2, 1, -4, -2, 0, 2, 2, 2, 0, -2, -4, 1, 2, -1, 3, -1, -2, 1] n

end

end A069957.P15361692526959934535

noncomputable section

/-- A069957: Expansion of 1/((1-x)^2*(1-x^2)^2*(1-x^3)*(1-x^4)^2*(1-x^5)).

Offset 0, canonical program `A069957.P15361692526959934535`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+3x^3-x^4+2x^5+x^6-4x^7-2x^8+2x^10+2x^11+2x^12-2x^14-4x^15+x^16+2x^17-x^18+3x^19-x^20-2x^21+x^22))` (program `A069957.P15361692526959934535`, by `A069957.P15361692526959934535.correct`). Lean does not check the parsing of the name. -/
def A069957 (n : ℕ) : ℤ :=
  A069957.P15361692526959934535.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+3x^3-x^4+2x^5+x^6-4x^7-2x^8+2x^10+2x^11+2x^12-2x^14-4x^15+x^16+2x^17-x^18+3x^19-x^20-2x^21+x^22))` (program `A069957.P15361692526959934535`, by `A069957.P15361692526959934535.correct`). Lean does not check the parsing of the name. -/
def A069957.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069975.P15256637362710662577

`(n+1)*(16*(n+1)²-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069975.P15256637362710662577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((16 * (n + 1) ^ 2 : ℤ) - 1)

end

end A069975.P15256637362710662577

noncomputable section

/-- A069975: a(n) = n*(16*n^2 - 1).

Offset 1, canonical program `A069975.P15256637362710662577`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(16*(n+1)²-1)` (program `A069975.P15256637362710662577`, by `A069975.P15256637362710662577.correct`). Lean does not check the parsing of the name. -/
def A069975 (n : ℕ) : ℤ :=
  A069975.P15256637362710662577.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(16*(n+1)²-1)` (program `A069975.P15256637362710662577`, by `A069975.P15256637362710662577.correct`). Lean does not check the parsing of the name. -/
def A069975.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A070207.P5866126796030755027

`ogf((1-x-5x^2)/(1-3x-2x^2-x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070207.P5866126796030755027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -5] [1, -3, -2, -1] n

end

end A070207.P5866126796030755027

noncomputable section

/-- A070207: Expansion of (1-x-5*x^2)/(1-3*x-2*x^2-x^3).

Offset 0, canonical program `A070207.P5866126796030755027`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-5x^2)/(1-3x-2x^2-x^3))` (program `A070207.P5866126796030755027`, by `A070207.P5866126796030755027.correct`). Lean does not check the parsing of the name. -/
def A070207 (n : ℕ) : ℤ :=
  A070207.P5866126796030755027.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-5x^2)/(1-3x-2x^2-x^3))` (program `A070207.P5866126796030755027`, by `A070207.P5866126796030755027.correct`). Lean does not check the parsing of the name. -/
def A070207.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A070285.P17042730788052653744

`(n+2)^n*(n+1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070285.P17042730788052653744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ n * (n + 1) ^ (n + 1)

end

end A070285.P17042730788052653744

noncomputable section

/-- A070285: a(n) = n^(n-2) * (n-1)^(n-1).

Offset 2, canonical program `A070285.P17042730788052653744`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)^n*(n+1)^(n+1)` (program `A070285.P17042730788052653744`, by `A070285.P17042730788052653744.correct`). Lean does not check the parsing of the name. -/
def A070285 (n : ℕ) : ℤ :=
  (A070285.P17042730788052653744.a (n - 2) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)^n*(n+1)^(n+1)` (program `A070285.P17042730788052653744`, by `A070285.P17042730788052653744.correct`). Lean does not check the parsing of the name. -/
def A070285.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A070313.P8694605406940819949

`2^n-(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070313.P8694605406940819949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 * n + 1 : ℤ)

end

end A070313.P8694605406940819949

noncomputable section

/-- A070313: a(n) = 2^n - (2*n+1).

Offset 0, canonical program `A070313.P8694605406940819949`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-(2*n+1)` (program `A070313.P8694605406940819949`, by `A070313.P8694605406940819949.correct`). Lean does not check the parsing of the name. -/
def A070313 (n : ℕ) : ℤ :=
  A070313.P8694605406940819949.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-(2*n+1)` (program `A070313.P8694605406940819949`, by `A070313.P8694605406940819949.correct`). Lean does not check the parsing of the name. -/
def A070313.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A070333.P3899160730985704373

`ogf((1+x^3)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070333.P3899160730985704373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 1] [1, -3, 3, -2, 3, -3, 1] n

end

end A070333.P3899160730985704373

noncomputable section

/-- A070333: Expansion of (1 + x)*(1 - x + x^2)/((1 - x)^4*(1 + x + x^2)).

Offset 0, canonical program `A070333.P3899160730985704373`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` (program `A070333.P3899160730985704373`, by `A070333.P3899160730985704373.correct`). Lean does not check the parsing of the name. -/
def A070333 (n : ℕ) : ℤ :=
  A070333.P3899160730985704373.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` (program `A070333.P3899160730985704373`, by `A070333.P3899160730985704373.correct`). Lean does not check the parsing of the name. -/
def A070333.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A070550.P2965766991754456893

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070550.P2965766991754456893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  a (n - 1) + a (n - 3) + a (n - 4)

end

end A070550.P2965766991754456893

noncomputable section

/-- A070550: a(n) = a(n-1) + a(n-3) + a(n-4), starting with a(0..3) = 1, 2, 2, 3.

Offset 0, canonical program `A070550.P2965766991754456893`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A070550.P2965766991754456893`, by `A070550.P2965766991754456893.correct`). Lean does not check the parsing of the name. -/
def A070550 (n : ℕ) : ℤ :=
  (A070550.P2965766991754456893.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A070550.P2965766991754456893`, by `A070550.P2965766991754456893.correct`). Lean does not check the parsing of the name. -/
def A070550.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063142.P7680892014655154097

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=8, a(1)=27, a(2)=45, a(3)=65`
-/

namespace A063142.P7680892014655154097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 27, 45, 65] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A063142.P7680892014655154097

noncomputable section

/-- A063142: Dimension of the space of weight 2n cusp forms for Gamma_0( 74 ).

Offset 1, canonical program `A063142.P7680892014655154097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063142 (n : ℕ) : ℤ :=
  A063142.P7680892014655154097.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063143.P11237709998098837530

`2*a(n-1)-a(n-2)` with `a(0)=5, a(1)=24, a(2)=44`
-/

namespace A063143.P11237709998098837530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 24, 44] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063143.P11237709998098837530

noncomputable section

/-- A063143: Dimension of the space of weight 2n cusp forms for Gamma_0( 75 ).

Offset 1, canonical program `A063143.P11237709998098837530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063143 (n : ℕ) : ℤ :=
  A063143.P11237709998098837530.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063144.P6741670271126821195

`2*a(n-1)-a(n-2)` with `a(0)=8, a(1)=27, a(2)=47`
-/

namespace A063144.P6741670271126821195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 27, 47] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063144.P6741670271126821195

noncomputable section

/-- A063144: Dimension of the space of weight 2n cusp forms for Gamma_0( 76 ).

Offset 1, canonical program `A063144.P6741670271126821195`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063144 (n : ℕ) : ℤ :=
  A063144.P6741670271126821195.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063146.P11565290397261738495

`2*a(n-1)-a(n-2)` with `a(0)=11, a(1)=38, a(2)=66`
-/

namespace A063146.P11565290397261738495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 38, 66] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063146.P11565290397261738495

noncomputable section

/-- A063146: Dimension of the space of weight 2n cusp forms for Gamma_0( 78 ).

Offset 1, canonical program `A063146.P11565290397261738495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063146 (n : ℕ) : ℤ :=
  A063146.P11565290397261738495.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063147.P3365130398821341012

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=6, a(1)=19, a(2)=33, a(3)=45, a(4)=59`
-/

namespace A063147.P3365130398821341012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 19, 33, 45, 59] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A063147.P3365130398821341012

noncomputable section

/-- A063147: Dimension of the space of weight 2n cusp forms for Gamma_0( 79 ).

Offset 1, canonical program `A063147.P3365130398821341012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063147 (n : ℕ) : ℤ :=
  A063147.P3365130398821341012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063149.P4679270050047913503

`30*(n+1)-a(n-1)` with `a(0)=25`
-/

namespace A063149.P4679270050047913503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25] fun n a =>
  (30 * (n + 1) : ℤ) - a (n - 1)

end

end A063149.P4679270050047913503

noncomputable section

/-- A063149: Composite numbers which in base 5 contain their largest proper factor as a substring.

Offset 1, canonical program `A063149.P4679270050047913503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063149 (n : ℕ) : ℤ :=
  A063149.P4679270050047913503.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063150.P3448883486686056758

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=9, a(1)=30, a(2)=50, a(3)=72`
-/

namespace A063150.P3448883486686056758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 30, 50, 72] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A063150.P3448883486686056758

noncomputable section

/-- A063150: Dimension of the space of weight 2n cusp forms for Gamma_0( 82 ).

Offset 1, canonical program `A063150.P3448883486686056758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063150 (n : ℕ) : ℤ :=
  A063150.P3448883486686056758.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063151.P4761982576470019004

`2*a(n-1)-a(n-2)` with `a(0)=7, a(1)=20, a(2)=34`
-/

namespace A063151.P4761982576470019004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 20, 34] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063151.P4761982576470019004

noncomputable section

/-- A063151: Dimension of the space of weight 2n cusp forms for Gamma_0( 83 ).

Offset 1, canonical program `A063151.P4761982576470019004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063151 (n : ℕ) : ℤ :=
  A063151.P4761982576470019004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063152.P13669433527835332582

`2*a(n-1)-a(n-2)` with `a(0)=11, a(1)=42, a(2)=74`
-/

namespace A063152.P13669433527835332582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 42, 74] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063152.P13669433527835332582

noncomputable section

/-- A063152: Dimension of the space of weight 2n cusp forms for Gamma_0( 84 ).

Offset 1, canonical program `A063152.P13669433527835332582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063152 (n : ℕ) : ℤ :=
  A063152.P13669433527835332582.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063153.P80593327038973464

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=7, a(1)=26, a(2)=42, a(3)=62`
-/

namespace A063153.P80593327038973464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 26, 42, 62] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A063153.P80593327038973464

noncomputable section

/-- A063153: Dimension of the space of weight 2n cusp forms for Gamma_0( 85 ).

Offset 1, canonical program `A063153.P80593327038973464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063153 (n : ℕ) : ℤ :=
  A063153.P80593327038973464.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063153.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063154.P16871946908456581068

`2*a(n-1)-a(n-2)` with `a(0)=10, a(1)=31, a(2)=53`
-/

namespace A063154.P16871946908456581068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 31, 53] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063154.P16871946908456581068

noncomputable section

/-- A063154: Dimension of the space of weight 2n cusp forms for Gamma_0( 86 ).

Offset 1, canonical program `A063154.P16871946908456581068`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063154 (n : ℕ) : ℤ :=
  A063154.P16871946908456581068.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063155.P6839356519906210139

`2*a(n-1)-a(n-2)` with `a(0)=9, a(1)=28, a(2)=48`
-/

namespace A063155.P6839356519906210139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 28, 48] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063155.P6839356519906210139

noncomputable section

/-- A063155: Dimension of the space of weight 2n cusp forms for Gamma_0( 87 ).

Offset 1, canonical program `A063155.P6839356519906210139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063155 (n : ℕ) : ℤ :=
  A063155.P6839356519906210139.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063158.P4747929295774593561

`2*a(n-1)-a(n-2)` with `a(0)=11, a(1)=46, a(2)=82`
-/

namespace A063158.P4747929295774593561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 46, 82] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063158.P4747929295774593561

noncomputable section

/-- A063158: Dimension of the space of weight 2n cusp forms for Gamma_0( 90 ).

Offset 1, canonical program `A063158.P4747929295774593561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063158 (n : ℕ) : ℤ :=
  A063158.P4747929295774593561.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063159.P8680012068232969896

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=7, a(1)=26, a(2)=46, a(3)=62, a(4)=82`
-/

namespace A063159.P8680012068232969896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 26, 46, 62, 82] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A063159.P8680012068232969896

noncomputable section

/-- A063159: Dimension of the space of weight 2n cusp forms for Gamma_0( 91 ).

Offset 1, canonical program `A063159.P8680012068232969896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063159 (n : ℕ) : ℤ :=
  A063159.P8680012068232969896.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063160.P18167733328148420091

`2*a(n-1)-a(n-2)` with `a(0)=10, a(1)=33, a(2)=57`
-/

namespace A063160.P18167733328148420091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 33, 57] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063160.P18167733328148420091

noncomputable section

/-- A063160: Dimension of the space of weight 2n cusp forms for Gamma_0( 92 ).

Offset 1, canonical program `A063160.P18167733328148420091`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063160 (n : ℕ) : ℤ :=
  A063160.P18167733328148420091.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063160.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063162.P6996180765914314155

`2*a(n-1)-a(n-2)` with `a(0)=11, a(1)=34, a(2)=58`
-/

namespace A063162.P6996180765914314155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11, 34, 58] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063162.P6996180765914314155

noncomputable section

/-- A063162: Dimension of the space of weight 2n cusp forms for Gamma_0( 94 ).

Offset 1, canonical program `A063162.P6996180765914314155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063162 (n : ℕ) : ℤ :=
  A063162.P6996180765914314155.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063164.P16353583560042366254

`2*a(n-1)-a(n-2)` with `a(0)=9, a(1)=40, a(2)=72`
-/

namespace A063164.P16353583560042366254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 40, 72] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063164.P16353583560042366254

noncomputable section

/-- A063164: Dimension of the space of weight 2n cusp forms for Gamma_0( 96 ).

Offset 1, canonical program `A063164.P16353583560042366254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063164 (n : ℕ) : ℤ :=
  A063164.P16353583560042366254.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063166.P3730503641675669758

`2*a(n-1)-a(n-2)` with `a(0)=7, a(1)=34, a(2)=62`
-/

namespace A063166.P3730503641675669758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 34, 62] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063166.P3730503641675669758

noncomputable section

/-- A063166: Dimension of the space of weight 2n cusp forms for Gamma_0( 98 ).

Offset 1, canonical program `A063166.P3730503641675669758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063166 (n : ℕ) : ℤ :=
  A063166.P3730503641675669758.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063196.P6542515056253574600

`2*n-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A063196.P6542515056253574600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (2 * n : ℤ) - a (n - 1)

end

end A063196.P6542515056253574600

noncomputable section

/-- A063196: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 7 ).

Offset 1, canonical program `A063196.P6542515056253574600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063196 (n : ℕ) : ℤ :=
  A063196.P6542515056253574600.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063197.P1516822207262317747

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=3`
-/

namespace A063197.P1516822207262317747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 3, 3] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063197.P1516822207262317747

noncomputable section

/-- A063197: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 9 ).

Offset 1, canonical program `A063197.P1516822207262317747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063197 (n : ℕ) : ℤ :=
  A063197.P1516822207262317747.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063203.P6310427360662625857

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=2, a(1)=5, a(2)=9, a(3)=13, a(4)=17, a(5)=19`
-/

namespace A063203.P6310427360662625857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 9, 13, 17, 19] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063203.P6310427360662625857

noncomputable section

/-- A063203: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 23 ).

Offset 1, canonical program `A063203.P6310427360662625857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063203 (n : ℕ) : ℤ :=
  A063203.P6310427360662625857.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063204.P309394886215100245

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=9, a(4)=13`
-/

namespace A063204.P309394886215100245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 7, 9, 13] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063204.P309394886215100245

noncomputable section

/-- A063204: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 25 ).

Offset 1, canonical program `A063204.P309394886215100245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063204 (n : ℕ) : ℤ :=
  A063204.P309394886215100245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063206.P12553831353234623464

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=7, a(2)=13, a(3)=17`
-/

namespace A063206.P12553831353234623464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 13, 17] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A063206.P12553831353234623464

noncomputable section

/-- A063206: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 31 ).

Offset 1, canonical program `A063206.P12553831353234623464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063206 (n : ℕ) : ℤ :=
  A063206.P12553831353234623464.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063206.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063207.P4152208277931986503

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=6, a(2)=8, a(3)=12, a(4)=14, a(5)=20`
-/

namespace A063207.P4152208277931986503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 8, 12, 14, 20] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063207.P4152208277931986503

noncomputable section

/-- A063207: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 33 ).

Offset 1, canonical program `A063207.P4152208277931986503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063207 (n : ℕ) : ℤ :=
  A063207.P4152208277931986503.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063207.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063210.P7966168385283118229

`4*n-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A063210.P7966168385283118229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 * n : ℤ) - a (n - 1)

end

end A063210.P7966168385283118229

noncomputable section

/-- A063210: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 42 ).

Offset 1, canonical program `A063210.P7966168385283118229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063210 (n : ℕ) : ℤ :=
  A063210.P7966168385283118229.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063211.P15192801344633485790

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=3, a(1)=10, a(2)=18, a(3)=24`
-/

namespace A063211.P15192801344633485790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10, 18, 24] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A063211.P15192801344633485790

noncomputable section

/-- A063211: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 43 ).

Offset 1, canonical program `A063211.P15192801344633485790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063211 (n : ℕ) : ℤ :=
  A063211.P15192801344633485790.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063212.P9405659393869729451

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7, a(4)=7`
-/

namespace A063212.P9405659393869729451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 7, 7] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063212.P9405659393869729451

noncomputable section

/-- A063212: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 44 ).

Offset 1, canonical program `A063212.P9405659393869729451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063212 (n : ℕ) : ℤ :=
  A063212.P9405659393869729451.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063214.P10588406300896630407

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=12, a(4)=16, a(5)=22`
-/

namespace A063214.P10588406300896630407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 10, 12, 16, 22] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063214.P10588406300896630407

noncomputable section

/-- A063214: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 46 ).

Offset 1, canonical program `A063214.P10588406300896630407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063214 (n : ℕ) : ℤ :=
  A063214.P10588406300896630407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063214.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063215.P16612473911794581702

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=4, a(1)=11, a(2)=19, a(3)=27, a(4)=35, a(5)=41`
-/

namespace A063215.P16612473911794581702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 11, 19, 27, 35, 41] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063215.P16612473911794581702

noncomputable section

/-- A063215: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 47 ).

Offset 1, canonical program `A063215.P16612473911794581702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063215 (n : ℕ) : ℤ :=
  A063215.P16612473911794581702.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063215.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063216.P16832493926664578224

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=8, a(2)=14, a(3)=22, a(4)=28`
-/

namespace A063216.P16832493926664578224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 14, 22, 28] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063216.P16832493926664578224

noncomputable section

/-- A063216: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 49 ).

Offset 1, canonical program `A063216.P16832493926664578224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063216 (n : ℕ) : ℤ :=
  A063216.P16832493926664578224.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063217.P14881326508109598123

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=12, a(4)=14`
-/

namespace A063217.P14881326508109598123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 7, 12, 14] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063217.P14881326508109598123

noncomputable section

/-- A063217: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 50 ).

Offset 1, canonical program `A063217.P14881326508109598123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063217 (n : ℕ) : ℤ :=
  A063217.P14881326508109598123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063219.P5256409622068863211

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=13, a(2)=21, a(3)=31, a(4)=39`
-/

namespace A063219.P5256409622068863211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 13, 21, 31, 39] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A063219.P5256409622068863211

noncomputable section

/-- A063219: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 53 ).

Offset 1, canonical program `A063219.P5256409622068863211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063219 (n : ℕ) : ℤ :=
  A063219.P5256409622068863211.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063223.P8636699475728164837

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=5, a(1)=14, a(2)=24, a(3)=34, a(4)=44, a(5)=52`
-/

namespace A063223.P8636699475728164837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 14, 24, 34, 44, 52] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063223.P8636699475728164837

noncomputable section

/-- A063223: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 59 ).

Offset 1, canonical program `A063223.P8636699475728164837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063223 (n : ℕ) : ℤ :=
  A063223.P8636699475728164837.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063224.P2851558114836419567

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=4`
-/

namespace A063224.P2851558114836419567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 4] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A063224.P2851558114836419567

noncomputable section

/-- A063224: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 60 ).

Offset 1, canonical program `A063224.P2851558114836419567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063224 (n : ℕ) : ℤ :=
  A063224.P2851558114836419567.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063226.P10617879665855353397

`4*floor((n+1)/2)+6*floor(n/2)+3`
-/

namespace A063226.P10617879665855353397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n + 1 : ℚ) / 2⌋ + 6 * ⌊(n : ℚ) / 2⌋ + 3

end

end A063226.P10617879665855353397

noncomputable section

/-- A063226: Dimension of the space of weight 2n cuspidal newforms for Gamma_0(63).

Offset 1, canonical program `A063226.P10617879665855353397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063226 (n : ℕ) : ℤ :=
  A063226.P10617879665855353397.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063227.P709757166809240282

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=3, a(1)=4, a(2)=8, a(3)=12, a(4)=16, a(5)=16`
-/

namespace A063227.P709757166809240282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 8, 12, 16, 16] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063227.P709757166809240282

noncomputable section

/-- A063227: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 66 ).

Offset 1, canonical program `A063227.P709757166809240282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063227 (n : ℕ) : ℤ :=
  A063227.P709757166809240282.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063232.P6767471423208825915

`20*n-a(n-1)` with `a(0)=5, a(1)=16`
-/

namespace A063232.P6767471423208825915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 16] fun n a =>
  (20 * n : ℤ) - a (n - 1)

end

end A063232.P6767471423208825915

noncomputable section

/-- A063232: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 77 ).

Offset 1, canonical program `A063232.P6767471423208825915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063232 (n : ℕ) : ℤ :=
  A063232.P6767471423208825915.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063233.P15658935437451909845

`26*n-a(n-1)` with `a(0)=6, a(1)=19`
-/

namespace A063233.P15658935437451909845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 19] fun n a =>
  (26 * n : ℤ) - a (n - 1)

end

end A063233.P15658935437451909845

noncomputable section

/-- A063233: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 79 ).

Offset 1, canonical program `A063233.P15658935437451909845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063233 (n : ℕ) : ℤ :=
  A063233.P15658935437451909845.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063247.P12863676235286375461

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=11, a(4)=14`
-/

namespace A063247.P12863676235286375461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8, 11, 14] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063247.P12863676235286375461

noncomputable section

/-- A063247: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 100 ).

Offset 1, canonical program `A063247.P12863676235286375461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063247 (n : ℕ) : ℤ :=
  A063247.P12863676235286375461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063249.P2810649737606401349

`n*(2*n-1)*(4*n²-2*n-1)`
-/

namespace A063249.P2810649737606401349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((2 * n : ℤ) - 1) * ((4 * n ^ 2 : ℤ) - (2 * n : ℤ) - 1))

end

end A063249.P2810649737606401349

noncomputable section

/-- A063249: Doubly hexagonal numbers.

Offset 0, canonical program `A063249.P2810649737606401349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063249 (n : ℕ) : ℤ :=
  A063249.P2810649737606401349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063277.P16896625443768556237

`a(n-4)+a(n-6)-a(n-10)` with `a(0)=-1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=2, a(7)=0, a(8)=3, a(9)=1`
-/

namespace A063277.P16896625443768556237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 0, 0, 1, 1, 2, 0, 3, 1] fun n a =>
  a (n - 4) + a (n - 6) - a (n - 10)

end

end A063277.P16896625443768556237

noncomputable section

/-- A063277: Dimension of the space of weight n cuspidal newforms for Gamma_1( 4 ).

Offset 2, canonical program `A063277.P16896625443768556237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063277 (n : ℕ) : ℤ :=
  A063277.P16896625443768556237.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063297.P1609756068591715116

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=5, a(2)=12, a(3)=17, a(4)=26, a(5)=31, a(6)=40`
-/

namespace A063297.P1609756068591715116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 5, 12, 17, 26, 31, 40] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A063297.P1609756068591715116

noncomputable section

/-- A063297: Dimension of the space of weight n cuspidal newforms for Gamma_1( 24 ).

Offset 2, canonical program `A063297.P1609756068591715116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063297 (n : ℕ) : ℤ :=
  A063297.P1609756068591715116.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063300.P4555800188597653628

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=-1, a(1)=13, a(2)=35, a(3)=56, a(4)=77`
-/

namespace A063300.P4555800188597653628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 13, 35, 56, 77] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A063300.P4555800188597653628

noncomputable section

/-- A063300: Dimension of the space of weight n cuspidal newforms for Gamma_1( 27 ).

Offset 2, canonical program `A063300.P4555800188597653628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063300 (n : ℕ) : ℤ :=
  A063300.P4555800188597653628.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063305.P17234269249351541694

`2*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=13, a(2)=31`
-/

namespace A063305.P17234269249351541694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 13, 31] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063305.P17234269249351541694

noncomputable section

/-- A063305: Dimension of the space S_n^{new}(Gamma_1(32)) of weight n cuspidal newforms for Gamma_1( 32 ).

Offset 2, canonical program `A063305.P17234269249351541694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063305 (n : ℕ) : ℤ :=
  A063305.P17234269249351541694.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063305.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063313.P6802900432498550628

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=19, a(2)=44, a(3)=67, a(4)=94, a(5)=117, a(6)=144`
-/

namespace A063313.P6802900432498550628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 19, 44, 67, 94, 117, 144] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A063313.P6802900432498550628

noncomputable section

/-- A063313: Dimension of the space of weight n cuspidal newforms for Gamma_1( 40 ).

Offset 2, canonical program `A063313.P6802900432498550628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063313 (n : ℕ) : ℤ :=
  A063313.P6802900432498550628.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063321.P2430824081364252262

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=-1, a(1)=23, a(2)=49, a(3)=77`
-/

namespace A063321.P2430824081364252262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 23, 49, 77] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A063321.P2430824081364252262

noncomputable section

/-- A063321: Dimension of the space of weight n cuspidal newforms for Gamma_1( 48 ).

Offset 2, canonical program `A063321.P2430824081364252262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063321 (n : ℕ) : ℤ :=
  A063321.P2430824081364252262.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063327.P8605005621614585401

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=-1, a(1)=22, a(2)=42, a(3)=64, a(4)=86`
-/

namespace A063327.P8605005621614585401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 22, 42, 64, 86] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A063327.P8605005621614585401

noncomputable section

/-- A063327: Dimension of the space of weight n cuspidal newforms for Gamma_1( 54 ).

Offset 2, canonical program `A063327.P8605005621614585401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063327 (n : ℕ) : ℤ :=
  A063327.P8605005621614585401.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063329.P2493816827882129097

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=42, a(2)=94, a(3)=144, a(4)=198, a(5)=248, a(6)=302`
-/

namespace A063329.P2493816827882129097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 42, 94, 144, 198, 248, 302] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A063329.P2493816827882129097

noncomputable section

/-- A063329: Dimension of the space of weight n cuspidal newforms for Gamma_1( 56 ).

Offset 2, canonical program `A063329.P2493816827882129097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063329 (n : ℕ) : ℤ :=
  A063329.P2493816827882129097.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063337.P11535504555053814579

`2*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=61, a(2)=133`
-/

namespace A063337.P11535504555053814579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 61, 133] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063337.P11535504555053814579

noncomputable section

/-- A063337: Dimension of the space of weight n cuspidal newforms for Gamma_1( 64 ).

Offset 2, canonical program `A063337.P11535504555053814579`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063337 (n : ℕ) : ℤ :=
  A063337.P11535504555053814579.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063345.P5958737216323019255

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=55, a(2)=119, a(3)=184, a(4)=247, a(5)=312, a(6)=375`
-/

namespace A063345.P5958737216323019255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 55, 119, 184, 247, 312, 375] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A063345.P5958737216323019255

noncomputable section

/-- A063345: Dimension of the space of weight n cuspidal newforms for Gamma_1( 72 ).

Offset 2, canonical program `A063345.P5958737216323019255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063345 (n : ℕ) : ℤ :=
  A063345.P5958737216323019255.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063345.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063353.P15196848433256147359

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=-1, a(1)=86, a(2)=184, a(3)=284`
-/

namespace A063353.P15196848433256147359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 86, 184, 284] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A063353.P15196848433256147359

noncomputable section

/-- A063353: Dimension of the space of weight n cuspidal newforms for Gamma_1( 80 ).

Offset 2, canonical program `A063353.P15196848433256147359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063353 (n : ℕ) : ℤ :=
  A063353.P15196848433256147359.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063354.P9220137753813608176

`2*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=164, a(2)=356`
-/

namespace A063354.P9220137753813608176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 164, 356] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063354.P9220137753813608176

noncomputable section

/-- A063354: Dimension of the space of weight n cuspidal newforms for Gamma_1( 81 ).

Offset 2, canonical program `A063354.P9220137753813608176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063354 (n : ℕ) : ℤ :=
  A063354.P9220137753813608176.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063361.P13697193221650290066

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=-1, a(1)=115, a(2)=248, a(3)=379, a(4)=514, a(5)=645, a(6)=780`
-/

namespace A063361.P13697193221650290066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 115, 248, 379, 514, 645, 780] fun n a =>
  a (n - 2) + a (n - 4) - a (n - 6)

end

end A063361.P13697193221650290066

noncomputable section

/-- A063361: Dimension of the space of weight n cuspidal newforms for Gamma_1( 88 ).

Offset 2, canonical program `A063361.P13697193221650290066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063361 (n : ℕ) : ℤ :=
  A063361.P13697193221650290066.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063369.P4199705870894292686

`2*a(n-1)-a(n-2)` with `a(0)=-1, a(1)=98, a(2)=206`
-/

namespace A063369.P4199705870894292686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 98, 206] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063369.P4199705870894292686

noncomputable section

/-- A063369: Dimension of the space of weight n cuspidal newforms for Gamma_1( 96 ).

Offset 2, canonical program `A063369.P4199705870894292686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063369 (n : ℕ) : ℤ :=
  A063369.P4199705870894292686.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063436.P6856054806736193048

`n*(12*n+3)`
-/

namespace A063436.P6856054806736193048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (12 * n + 3)

end

end A063436.P6856054806736193048

noncomputable section

/-- A063436: Write 1, 2, 3, 4, ... counterclockwise in a hexagonal spiral around 0 starting left down, then a(n) is the sequence found by reading from 0 in the vertical upward direction.

Offset 0, canonical program `A063436.P6856054806736193048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063436 (n : ℕ) : ℤ :=
  (A063436.P6856054806736193048.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063438.P16780072889950511457

`floor((n+2)*π)-floor((n+1)*π)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063438.P16780072889950511457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * Real.pi⌋ - ⌊(n + 1 : ℝ) * Real.pi⌋

end

end A063438.P16780072889950511457

noncomputable section

/-- A063438: a(n) = floor((n+1)*Pi) - floor(n*Pi).

Offset 1, canonical program `A063438.P16780072889950511457`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)*π)-floor((n+1)*π)` (program `A063438.P16780072889950511457`, by `A063438.P16780072889950511457.correct`). Lean does not check the parsing of the name. -/
def A063438 (n : ℕ) : ℤ :=
  A063438.P16780072889950511457.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+2)*π)-floor((n+1)*π)` (program `A063438.P16780072889950511457`, by `A063438.P16780072889950511457.correct`). Lean does not check the parsing of the name. -/
def A063438.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063457.P10658367742645819765

`floor(a(n-1)*(π-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063457.P10658367742645819765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) * (Real.pi - 1)⌋

end

end A063457.P10658367742645819765

noncomputable section

/-- A063457: a(n) = floor(a(n-1)*(Pi-1)); a(1) = 1.

Offset 1, canonical program `A063457.P10658367742645819765`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)*(π-1))` (program `A063457.P10658367742645819765`, by `A063457.P10658367742645819765.correct`). Lean does not check the parsing of the name. -/
def A063457 (n : ℕ) : ℤ :=
  A063457.P10658367742645819765.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)*(π-1))` (program `A063457.P10658367742645819765`, by `A063457.P10658367742645819765.correct`). Lean does not check the parsing of the name. -/
def A063457.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063458.P17405332967880915097

`floor(a(n-1)^(π-1))` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063458.P17405332967880915097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) ^ (Real.pi - 1)⌋

end

end A063458.P17405332967880915097

noncomputable section

/-- A063458: a(n) = floor(a(n-1)^(Pi-1)); a(1) = 2.

Offset 1, canonical program `A063458.P17405332967880915097`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)^(π-1))` (program `A063458.P17405332967880915097`, by `A063458.P17405332967880915097.correct`). Lean does not check the parsing of the name. -/
def A063458 (n : ℕ) : ℤ :=
  A063458.P17405332967880915097.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)^(π-1))` (program `A063458.P17405332967880915097`, by `A063458.P17405332967880915097.correct`). Lean does not check the parsing of the name. -/
def A063458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063460.P5079764106570345208

`floor((n+1)*(π-1)/(π-2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063460.P5079764106570345208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((Real.pi - 1) / (Real.pi - 2))⌋

end

end A063460.P5079764106570345208

noncomputable section

/-- A063460: A Beatty sequence: a(n) = floor(n * (Pi-1)/(Pi-2)).

Offset 1, canonical program `A063460.P5079764106570345208`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(π-1)/(π-2))` (program `A063460.P5079764106570345208`, by `A063460.P5079764106570345208.correct`). Lean does not check the parsing of the name. -/
def A063460 (n : ℕ) : ℤ :=
  A063460.P5079764106570345208.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(π-1)/(π-2))` (program `A063460.P5079764106570345208`, by `A063460.P5079764106570345208.correct`). Lean does not check the parsing of the name. -/
def A063460.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063462.P14791275031351594588

`n%10*n`
-/

namespace A063462.P14791275031351594588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10 * n

end

end A063462.P14791275031351594588

noncomputable section

/-- A063462: a(n) = n * last digit of n.

Offset 0, canonical program `A063462.P14791275031351594588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063462 (n : ℕ) : ℤ :=
  (A063462.P14791275031351594588.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063486.P8364557207783819813

`2^2^n+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063486.P8364557207783819813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n + 5

end

end A063486.P8364557207783819813

noncomputable section

/-- A063486: a(n) = 2^(2^n) + 5.

Offset 0, canonical program `A063486.P8364557207783819813`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n+5` (program `A063486.P8364557207783819813`, by `A063486.P8364557207783819813.correct`). Lean does not check the parsing of the name. -/
def A063486 (n : ℕ) : ℤ :=
  (A063486.P8364557207783819813.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n+5` (program `A063486.P8364557207783819813`, by `A063486.P8364557207783819813.correct`). Lean does not check the parsing of the name. -/
def A063486.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063489.P9136806150699106916

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=30, a(3)=77`
-/

namespace A063489.P9136806150699106916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 30, 77] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A063489.P9136806150699106916

noncomputable section

/-- A063489: a(n) = (2*n-1)*(5*n^2-5*n+6)/6.

Offset 1, canonical program `A063489.P9136806150699106916`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+6)/6` (program `A063489.P1856527707604124216`, by `A063489.P1856527707604124216.correct`). Lean does not check the parsing of the name. -/
def A063489 (n : ℕ) : ℤ :=
  A063489.P9136806150699106916.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+6)/6` (program `A063489.P1856527707604124216`, by `A063489.P1856527707604124216.correct`). Lean does not check the parsing of the name. -/
def A063489.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063490.P3741481667960660483

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=40, a(3)=105`
-/

namespace A063490.P3741481667960660483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 40, 105] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A063490.P3741481667960660483

noncomputable section

/-- A063490: a(n) = (2*n - 1)*(7*n^2 - 7*n + 6)/6.

Offset 1, canonical program `A063490.P3741481667960660483`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+6)/6` (program `A063490.P16776524260869191749`, by `A063490.P16776524260869191749.correct`). Lean does not check the parsing of the name. -/
def A063490 (n : ℕ) : ℤ :=
  A063490.P3741481667960660483.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+6)/6` (program `A063490.P16776524260869191749`, by `A063490.P16776524260869191749.correct`). Lean does not check the parsing of the name. -/
def A063490.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063491.P10484467690369194705

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=12, a(2)=50, a(3)=133`
-/

namespace A063491.P10484467690369194705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 50, 133] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A063491.P10484467690369194705

noncomputable section

/-- A063491: a(n) = (2*n - 1)*(3*n^2 - 3*n + 2)/2.

Offset 1, canonical program `A063491.P10484467690369194705`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(3*(n+1)²-3*(n+1)+2)/2` (program `A063491.P6792749238991495000`, by `A063491.P6792749238991495000.correct`). Lean does not check the parsing of the name. -/
def A063491 (n : ℕ) : ℤ :=
  A063491.P10484467690369194705.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(3*(n+1)²-3*(n+1)+2)/2` (program `A063491.P6792749238991495000`, by `A063491.P6792749238991495000.correct`). Lean does not check the parsing of the name. -/
def A063491.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063492.P10643875222042233622

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=14, a(2)=60, a(3)=161`
-/

namespace A063492.P10643875222042233622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 60, 161] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A063492.P10643875222042233622

noncomputable section

/-- A063492: a(n) = (2*n - 1)*(11*n^2 - 11*n + 6)/6.

Offset 1, canonical program `A063492.P10643875222042233622`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(11*(n+1)²-11*(n+1)+6)/6` (program `A063492.P9983821533982398515`, by `A063492.P9983821533982398515.correct`). Lean does not check the parsing of the name. -/
def A063492 (n : ℕ) : ℤ :=
  A063492.P10643875222042233622.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(11*(n+1)²-11*(n+1)+6)/6` (program `A063492.P9983821533982398515`, by `A063492.P9983821533982398515.correct`). Lean does not check the parsing of the name. -/
def A063492.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063493.P1331803190446192830

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=16, a(2)=70, a(3)=189`
-/

namespace A063493.P1331803190446192830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16, 70, 189] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A063493.P1331803190446192830

noncomputable section

/-- A063493: a(n) = (2*n-1)*(13*n^2-13*n+6)/6.

Offset 1, canonical program `A063493.P1331803190446192830`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(13*(n+1)²-13*(n+1)+6)/6` (program `A063493.P10713378664696090563`, by `A063493.P10713378664696090563.correct`). Lean does not check the parsing of the name. -/
def A063493 (n : ℕ) : ℤ :=
  A063493.P1331803190446192830.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(13*(n+1)²-13*(n+1)+6)/6` (program `A063493.P10713378664696090563`, by `A063493.P10713378664696090563.correct`). Lean does not check the parsing of the name. -/
def A063493.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063494.P9121033367143698868

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=17, a(2)=75, a(3)=203`
-/

namespace A063494.P9121033367143698868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17, 75, 203] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A063494.P9121033367143698868

noncomputable section

/-- A063494: a(n) = (2*n - 1)*(7*n^2 - 7*n + 3)/3.

Offset 1, canonical program `A063494.P9121033367143698868`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+3)/3` (program `A063494.P651550034393316257`, by `A063494.P651550034393316257.correct`). Lean does not check the parsing of the name. -/
def A063494 (n : ℕ) : ℤ :=
  A063494.P9121033367143698868.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(7*(n+1)²-7*(n+1)+3)/3` (program `A063494.P651550034393316257`, by `A063494.P651550034393316257.correct`). Lean does not check the parsing of the name. -/
def A063494.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063495.P9934370336374609921

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=18, a(2)=80, a(3)=217`
-/

namespace A063495.P9934370336374609921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 80, 217] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A063495.P9934370336374609921

noncomputable section

/-- A063495: a(n) = (2*n-1)*(5*n^2-5*n+2)/2.

Offset 1, canonical program `A063495.P9934370336374609921`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+2)/2` (program `A063495.P14655603667879209989`, by `A063495.P14655603667879209989.correct`). Lean does not check the parsing of the name. -/
def A063495 (n : ℕ) : ℤ :=
  A063495.P9934370336374609921.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)*(5*(n+1)²-5*(n+1)+2)/2` (program `A063495.P14655603667879209989`, by `A063495.P14655603667879209989.correct`). Lean does not check the parsing of the name. -/
def A063495.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063497.P14189921204005272401

`20*n^3+30*n²+10*n`
-/

namespace A063497.P14189921204005272401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n ^ 3 + 30 * n ^ 2 + 10 * n

end

end A063497.P14189921204005272401

noncomputable section

/-- A063497: Number of atoms in first n shells of type I hyperfullerene.

Offset 0, canonical program `A063497.P14189921204005272401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063497 (n : ℕ) : ℤ :=
  (A063497.P14189921204005272401.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063498.P1596618943449873521

`10*n²+(10*n^3+56*n)/3`
-/

namespace A063498.P1596618943449873521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n ^ 2 : ℚ) + (10 * n ^ 3 + 56 * n : ℚ) / 3

end

end A063498.P1596618943449873521

noncomputable section

/-- A063498: Number of atoms in cluster of n layers around C_60.

Offset 0, canonical program `A063498.P1596618943449873521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063498 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063498.P1596618943449873521.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063518.P2259982563687034774

`(17^(n+1))%23`
-/

namespace A063518.P2259982563687034774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ (n + 1) % 23

end

end A063518.P2259982563687034774

noncomputable section

/-- A063518: Values of 17^n mod 23.

Offset 1, canonical program `A063518.P2259982563687034774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063518 (n : ℕ) : ℤ :=
  (A063518.P2259982563687034774.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063521.P7422953320800481522

`n*(7*n²-4)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063521.P7422953320800481522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((7 * n ^ 2 : ℤ) - 4 : ℚ) / 3)

end

end A063521.P7422953320800481522

noncomputable section

/-- A063521: a(n) = n*(7*n^2-4)/3.

Offset 0, canonical program `A063521.P7422953320800481522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063521 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063521.P7422953320800481522.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063522.P9235906446721575731

`n*(5*n²-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A063522.P9235906446721575731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((5 * n ^ 2 : ℤ) - 3 : ℚ) / 2)

end

end A063522.P9235906446721575731

noncomputable section

/-- A063522: a(n) = n*(5*n^2 - 3)/2.

Offset 0, canonical program `A063522.P9235906446721575731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063522 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063522.P9235906446721575731.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063523.P8074895751634320080

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=18, a(3)=67`
-/

namespace A063523.P8074895751634320080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 18, 67] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A063523.P8074895751634320080

noncomputable section

/-- A063523: a(n) = n*(8*n^2 - 5)/3.

Offset 0, canonical program `A063523.P8074895751634320080`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n²-5)/3` (program `A063523.P17784495270784109771`, by `A063523.P17784495270784109771.correct`). Lean does not check the parsing of the name. -/
def A063523 (n : ℕ) : ℤ :=
  A063523.P8074895751634320080.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n²-5)/3` (program `A063523.P17784495270784109771`, by `A063523.P17784495270784109771.correct`). Lean does not check the parsing of the name. -/
def A063523.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A063694.P13727673457584379920

`n-2*a(floor(n/2))` with `a(0)=0`
-/

namespace A063694.P13727673457584379920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A063694.P13727673457584379920

noncomputable section

/-- A063694: Remove odd-positioned bits from the binary expansion of n.

Offset 0, canonical program `A063694.P13727673457584379920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063694 (n : ℕ) : ℤ :=
  A063694.P13727673457584379920.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063694.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063695.P1892314685594787414

`2*(floor(n/2)-a(floor(n/2)))` with `a(0)=0`
-/

namespace A063695.P1892314685594787414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A063695.P1892314685594787414

noncomputable section

/-- A063695: Remove even-positioned bits from the binary expansion of n.

Offset 0, canonical program `A063695.P1892314685594787414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063695 (n : ℕ) : ℤ :=
  A063695.P1892314685594787414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063709.P9541028602343683894

`(n^n)%n!`
-/

namespace A063709.P9541028602343683894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n % Nat.factorial n

end

end A063709.P9541028602343683894

noncomputable section

/-- A063709: Remainder when n^n is divided by n!.

Offset 0, canonical program `A063709.P9541028602343683894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063709 (n : ℕ) : ℤ :=
  (A063709.P9541028602343683894.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063724.P41683358143530848

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=8, a(4)=11, a(5)=15, a(6)=18`
-/

namespace A063724.P41683358143530848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 8, 11, 15, 18] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A063724.P41683358143530848

noncomputable section

/-- A063724: Consider problem of placing N queens on an n X n board so that each queen attacks precisely 4 others. Sequence gives maximal number of queens.

Offset 1, canonical program `A063724.P41683358143530848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063724 (n : ℕ) : ℤ :=
  A063724.P41683358143530848.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063732.P8899392036906600095

`floor((3-ϕ)*(n+1))-1`
-/

namespace A063732.P8899392036906600095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 - Real.goldenRatio) * (n + 1 : ℝ)⌋ - 1

end

end A063732.P8899392036906600095

noncomputable section

/-- A063732: Numbers whose Lucas representation excludes L_0 = 2.

Offset 1, canonical program `A063732.P8899392036906600095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063732 (n : ℕ) : ℤ :=
  A063732.P8899392036906600095.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063759.P13169766541335737416

`2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A063759.P13169766541335737416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  2 * a (n - 2)

end

end A063759.P13169766541335737416

noncomputable section

/-- A063759: Spherical growth series for modular group.

Offset 0, canonical program `A063759.P13169766541335737416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063759 (n : ℕ) : ℤ :=
  (A063759.P13169766541335737416.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063843.P4769205565620020737

`n²*(n^8+10*n^5+15*n^4+20*n²+50*n+24)/120`
-/

namespace A063843.P4769205565620020737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * ((n ^ 8 + 10 * n ^ 5 + 15 * n ^ 4 + 20 * n ^ 2 + 50 * n + 24 : ℚ) / 120)

end

end A063843.P4769205565620020737

noncomputable section

/-- A063843: Number of n-multigraphs on 5 nodes.

Offset 0, canonical program `A063843.P4769205565620020737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063843 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063843.P4769205565620020737.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063886.P9006225015591204980

`4*a(n-2)+2*(a(n-1)-4*a(n-2))/n` with `a(0)=1, a(1)=2`
-/

namespace A063886.P9006225015591204980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 2) + 2 * ((a (n - 1) - 4 * a (n - 2)) / (n : ℚ))

end

end A063886.P9006225015591204980

noncomputable section

/-- A063886: Number of n-step walks on a line starting from the origin but not returning to it.

Offset 0, canonical program `A063886.P9006225015591204980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063886 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063886.P9006225015591204980.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063886.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063896.P13745238574859807931

`(a(n-1)+1)*(a(n-2)+1)-1` with `a(0)=0, a(1)=1`
-/

namespace A063896.P13745238574859807931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + 1) * (a (n - 2) + 1) - 1

end

end A063896.P13745238574859807931

noncomputable section

/-- A063896: a(n) = 2^Fibonacci(n) - 1.

Offset 0, canonical program `A063896.P13745238574859807931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063896 (n : ℕ) : ℤ :=
  A063896.P13745238574859807931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063914.P8080515543989543871

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A063914.P8080515543989543871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A063914.P8080515543989543871

noncomputable section

/-- A063914: Odd numbers interlaced with numbers 3m+2.

Offset 1, canonical program `A063914.P8080515543989543871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063914 (n : ℕ) : ℤ :=
  A063914.P8080515543989543871.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063920.P8569464319641913210

`(12-2*(-1)^n)*2^floor(n/2)`
-/

namespace A063920.P8569464319641913210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 - 2 * (-1) ^ n : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A063920.P8569464319641913210

noncomputable section

/-- A063920: Numbers k such that k = 2*phi(k) + phi(phi(k)).

Offset 0, canonical program `A063920.P8569464319641913210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A063920.P8569464319641913210.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063920.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063945.P12643452236985488154

`a(n-1)*10` with `a(0)=10, a(1)=90`
-/

namespace A063945.P12643452236985488154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 90] fun n a =>
  a (n - 1) * 10

end

end A063945.P12643452236985488154

noncomputable section

/-- A063945: Number of nonnegative integers with n digits.

Offset 1, canonical program `A063945.P12643452236985488154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063945 (n : ℕ) : ℤ :=
  (A063945.P12643452236985488154.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063957.P2911444210877799103

`round((n+1-1/2)*(2+sqrt(2)))`
-/

namespace A063957.P2911444210877799103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℚ) - (1 : ℚ) / 2 : ℝ) * (2 + Real.sqrt (2 : ℝ)))

end

end A063957.P2911444210877799103

noncomputable section

/-- A063957: Numbers not of the form round(m*sqrt(2)) for any integer m, i.e., complement of A022846.

Offset 1, canonical program `A063957.P2911444210877799103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063957 (n : ℕ) : ℤ :=
  A063957.P2911444210877799103.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064043.P3578565822102951633

`n*(n²+3*n-1)`
-/

namespace A064043.P3578565822102951633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n ^ 2 + 3 * n : ℤ) - 1)

end

end A064043.P3578565822102951633

noncomputable section

/-- A064043: Number of length 3 walks on an n-dimensional hypercubic lattice starting at the origin and staying in the nonnegative part.

Offset 0, canonical program `A064043.P3578565822102951633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064043 (n : ℕ) : ℤ :=
  A064043.P3578565822102951633.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064046.P7780980610392515940

`5*n*(3*n²-3*n+1)`
-/

namespace A064046.P7780980610392515940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * ((3 * n ^ 2 : ℤ) - (3 * n : ℤ) + 1))

end

end A064046.P7780980610392515940

noncomputable section

/-- A064046: Number of length 6 walks on an n-dimensional hypercubic lattice starting and finishing at the origin and staying in the nonnegative part.

Offset 0, canonical program `A064046.P7780980610392515940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064046 (n : ℕ) : ℤ :=
  A064046.P7780980610392515940.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064096.P2354515318743573392

`1+3*n+5*n²+5*n^3`
-/

namespace A064096.P2354515318743573392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * n + 5 * n ^ 2 + 5 * n ^ 3

end

end A064096.P2354515318743573392

noncomputable section

/-- A064096: Fifth diagonal of triangle A064094.

Offset 0, canonical program `A064096.P2354515318743573392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064096 (n : ℕ) : ℤ :=
  (A064096.P2354515318743573392.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064096.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064098.P14924765170715774487

`3*a(n-1)*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A064098.P14924765170715774487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 1) * a (n - 2) - a (n - 3)

end

end A064098.P14924765170715774487

noncomputable section

/-- A064098: a(n+1) = (a(n)^2 + a(n-1)^2)/a(n-2), with a(1) = a(2) = a(3) = 1.

Offset 1, canonical program `A064098.P14924765170715774487`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064098 (n : ℕ) : ℤ :=
  A064098.P14924765170715774487.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064099.P18180227861605135739

`ceil(log(3+2*n)/log(3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064099.P18180227861605135739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (3 + 2 * n : ℝ) / Real.log (3 : ℝ)⌉

end

end A064099.P18180227861605135739

noncomputable section

/-- A064099: a(n) = ceiling(log(3 + 2*n)/log(3)).

Offset 0, canonical program `A064099.P18180227861605135739`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(3+2*n)/log(3))` (program `A064099.P18180227861605135739`, by `A064099.P18180227861605135739.correct`). Lean does not check the parsing of the name. -/
def A064099 (n : ℕ) : ℤ :=
  A064099.P18180227861605135739.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(3+2*n)/log(3))` (program `A064099.P18180227861605135739`, by `A064099.P18180227861605135739.correct`). Lean does not check the parsing of the name. -/
def A064099.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064108.P1250208547377425864

`20*a(n-1)+1` with `a(0)=0`
-/

namespace A064108.P1250208547377425864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  20 * a (n - 1) + 1

end

end A064108.P1250208547377425864

noncomputable section

/-- A064108: a(n) = (20^n - 1)/19.

Offset 0, canonical program `A064108.P1250208547377425864`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(20^n-1)/19` (program `A064108.P7902289262578448078`, by `A064108.P7902289262578448078.correct`). Lean does not check the parsing of the name. -/
def A064108 (n : ℕ) : ℤ :=
  (A064108.P1250208547377425864.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(20^n-1)/19` (program `A064108.P7902289262578448078`, by `A064108.P7902289262578448078.correct`). Lean does not check the parsing of the name. -/
def A064108.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A064183.P4595388989862845162

`(a(n-1)+a(n-2))*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A064183.P4595388989862845162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) + a (n - 2)) * a (n - 2)

end

end A064183.P4595388989862845162

noncomputable section

/-- A064183: Define a pair of sequences by p(0) = 0, q(0) = p(1) = q(1) = 1, q(n+1) = p(n)*q(n-1), p(n+1) = q(n+1) + q(n) for n > 0; then a(n) = q(n) and A064526(n) = p(n).

Offset 0, canonical program `A064183.P4595388989862845162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064183 (n : ℕ) : ℤ :=
  (A064183.P4595388989862845162.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064183.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064194.P3427049653599210233

`a(floor((n+1)/2)-1)+2*a(ceil((n+1)/2)-1)` with `a(0)=1`
-/

namespace A064194.P3427049653599210233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 2 * a (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat

end

end A064194.P3427049653599210233

noncomputable section

/-- A064194: a(2n) = 3*a(n), a(2n+1) = 2*a(n+1)+a(n), with a(1) = 1.

Offset 1, canonical program `A064194.P3427049653599210233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064194 (n : ℕ) : ℤ :=
  (A064194.P3427049653599210233.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064195.P6889834624107559539

`3*n*(n-1)*(3*(n+2)²-9)*(3*(n+2)²-9*(n+2)-5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064195.P6889834624107559539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((3 * (n + 2) ^ 2 : ℤ) - 9 : ℚ) * (((3 * (n + 2) ^ 2 : ℤ) - (9 * (n + 2) : ℤ) - 5 : ℚ) / 2))))

end

end A064195.P6889834624107559539

noncomputable section

/-- A064195: a(n) = 3*(n-2)*(n-3)*(3*n^2-9)*(3*n^2-9*n-5)/2.

Offset 2, canonical program `A064195.P6889834624107559539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064195 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064195.P6889834624107559539.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064197.P18438572515742920347

`27*(n+1)*n*(n-1)*(3*(n+2)-8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064197.P18438572515742920347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  27 * ((n + 1 : ℚ) * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((3 * (n + 2) : ℤ) - 8 : ℚ) / 2))))

end

end A064197.P18438572515742920347

noncomputable section

/-- A064197: a(n) = 27*(n-1)*(n-2)*(n-3)*(3*n-8)/2.

Offset 2, canonical program `A064197.P18438572515742920347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064197 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064197.P18438572515742920347.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064198.P7137048228674840319

`3*n*(n-1)*(3*(n+2)²-3*(n+2)-8)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064198.P7137048228674840319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((3 * (n + 2) ^ 2 : ℤ) - (3 * (n + 2) : ℤ) - 8 : ℚ) / 2)))

end

end A064198.P7137048228674840319

noncomputable section

/-- A064198: a(n) = 3*(n-2)*(n-3)*(3*n^2-3*n-8)/2.

Offset 2, canonical program `A064198.P7137048228674840319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064198 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064198.P7137048228674840319.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064199.P2822773989361274768

`9*n²*((n+2)²-2*(n+2)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064199.P2822773989361274768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * n ^ 2 : ℚ) * ((((n + 2) ^ 2 : ℤ) - (2 * (n + 2) : ℤ) - 1 : ℚ) / 2)

end

end A064199.P2822773989361274768

noncomputable section

/-- A064199: a(n) = 9*(n-2)^2*(n^2-2*n-1)/2.

Offset 2, canonical program `A064199.P2822773989361274768`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064199.P2822773989361274768.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064202.P14589107317213495302

`n*(n+1)*(n+2)*(2*n^3+6*n²+7*n-3)/36`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064202.P14589107317213495302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) * (((2 * n ^ 3 + 6 * n ^ 2 + 7 * n : ℤ) - 3 : ℚ) / 36)))

end

end A064202.P14589107317213495302

noncomputable section

/-- A064202: a(n) = n*(n+1)*(n+2)*(2*n^3 + 6*n^2 + 7*n - 3)/36.

Offset 0, canonical program `A064202.P14589107317213495302`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064202 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064202.P14589107317213495302.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064225.P12846736633224934928

`1+n*(9*n+5)/2`
-/

namespace A064225.P12846736633224934928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (n : ℚ) * ((9 * n + 5 : ℚ) / 2)

end

end A064225.P12846736633224934928

noncomputable section

/-- A064225: a(n) = (9*n^2 + 5*n + 2)/2.

Offset 0, canonical program `A064225.P12846736633224934928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064225.P12846736633224934928.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064226.P4368823021118134049

`3+n*(9*n+13)/2`
-/

namespace A064226.P4368823021118134049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 + (n : ℚ) * ((9 * n + 13 : ℚ) / 2)

end

end A064226.P4368823021118134049

noncomputable section

/-- A064226: a(n) = (9*n^2 + 13*n + 6)/2.

Offset 0, canonical program `A064226.P4368823021118134049`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064226.P4368823021118134049.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064232.P11338699749963750884

`(n^(n+2))%((n+1)^(n+1))`
-/

namespace A064232.P11338699749963750884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 2) % (n + 1) ^ (n + 1)

end

end A064232.P11338699749963750884

noncomputable section

/-- A064232: a(n) = n^(n+2) mod (n+1)^(n+1).

Offset 0, canonical program `A064232.P11338699749963750884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064232 (n : ℕ) : ℤ :=
  (A064232.P11338699749963750884.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064302.P8647975354804214736

`1+4*n+9*n²+14*n^3+14*n^4`
-/

namespace A064302.P8647975354804214736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 4 * n + 9 * n ^ 2 + 14 * n ^ 3 + 14 * n ^ 4

end

end A064302.P8647975354804214736

noncomputable section

/-- A064302: Sixth diagonal of triangle A064094.

Offset 0, canonical program `A064302.P8647975354804214736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064302 (n : ℕ) : ℤ :=
  (A064302.P8647975354804214736.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064303.P6262408916139910147

`1+5*n+14*n²+28*n^3+42*n^4+42*n^5`
-/

namespace A064303.P6262408916139910147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 5 * n + 14 * n ^ 2 + 28 * n ^ 3 + 42 * n ^ 4 + 42 * n ^ 5

end

end A064303.P6262408916139910147

noncomputable section

/-- A064303: Seventh diagonal of triangle A064094.

Offset 0, canonical program `A064303.P6262408916139910147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064303 (n : ℕ) : ℤ :=
  (A064303.P6262408916139910147.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064335.P8957484775733374507

`6*(2*n)!/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064335.P8957484775733374507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * Nat.factorial (2 * n) : ℚ) / (n + 2 : ℚ)

end

end A064335.P8957484775733374507

noncomputable section

/-- A064335: a(n) = 6*(2*n)!/(n+2).

Offset 0, canonical program `A064335.P8957484775733374507`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064335.P8957484775733374507.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064350.P6352301221126572588

`(27*(n-1)²+27*(n-1)+6)*a(n-1)` with `a(0)=1`
-/

namespace A064350.P6352301221126572588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (27 * ((n : ℤ) - 1) ^ 2 + 27 * ((n : ℤ) - 1) + 6) * a (n - 1)

end

end A064350.P6352301221126572588

noncomputable section

/-- A064350: a(n) = (3*n)!/n!.

Offset 0, canonical program `A064350.P6352301221126572588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064350 (n : ℕ) : ℤ :=
  A064350.P6352301221126572588.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064350.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064352.P17858079158270413850

`(3*n)!/(2*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064352.P17858079158270413850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n) : ℚ) / (Nat.factorial (2 * n) : ℚ)

end

end A064352.P17858079158270413850

noncomputable section

/-- A064352: a(n) = (3*n)!/(2*n)!.

Offset 0, canonical program `A064352.P17858079158270413850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064352 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064352.P17858079158270413850.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064386.P17847876676253479796

`a(n-1)+6*a(n-3)-6*a(n-4)-8*a(n-6)+8*a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=9, a(5)=13, a(6)=17, a(7)=33, a(8)=57`
-/

namespace A064386.P17847876676253479796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 9, 13, 17, 33, 57] fun n a =>
  a (n - 1) + 6 * a (n - 3) - 6 * a (n - 4) - 8 * a (n - 6) + 8 * a (n - 7)

end

end A064386.P17847876676253479796

noncomputable section

/-- A064386: Numbers of the form 2^k+1 or 4^k-2^k+1.

Offset 1, canonical program `A064386.P17847876676253479796`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064386 (n : ℕ) : ℤ :=
  A064386.P17847876676253479796.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064429.P9109266708527274454

`a(n-3)+3` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A064429.P9109266708527274454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 3) + 3

end

end A064429.P9109266708527274454

noncomputable section

/-- A064429: a(n) = floor(n / 3) * 3 + sign(n mod 3) * (3 - n mod 3).

Offset 0, canonical program `A064429.P9109266708527274454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064429 (n : ℕ) : ℤ :=
  (A064429.P9109266708527274454.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064437.P5587334447792693443

`ceil((1+sqrt(2))*n+1/(2+sqrt(2)))`
-/

namespace A064437.P5587334447792693443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 + Real.sqrt (2 : ℝ)) * (n : ℝ) + 1 / (2 + Real.sqrt (2 : ℝ))⌉

end

end A064437.P5587334447792693443

noncomputable section

/-- A064437: a(1)=1, a(n) = a(n-1) + 3 if n is already in the sequence, a(n) = a(n-1) + 2 otherwise.

Offset 1, canonical program `A064437.P5587334447792693443`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064437 (n : ℕ) : ℤ :=
  A064437.P5587334447792693443.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064455.P3834939167983651066

`1/2*(n+1)*(-1)^(n+1)+n+1+1/4*(1-(-1)^(n+1))`
-/

namespace A064455.P3834939167983651066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((n + 1 : ℤ) * (-1) ^ (n + 1) : ℚ) + ((n + 1 : ℚ) + (1 : ℚ) / 4 * (1 - (-1) ^ (n + 1) : ℚ))

end

end A064455.P3834939167983651066

noncomputable section

/-- A064455: a(2n) = 3n, a(2n-1) = n.

Offset 1, canonical program `A064455.P3834939167983651066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064455 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064455.P3834939167983651066.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064506.P10353514903725018766

`floor((sqrt(2*(n+1)*(n+2)+1)-1)/2)`
-/

namespace A064506.P10353514903725018766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (2 * ((n + 1) * (n + 2)) + 1 : ℝ) - 1) / 2⌋

end

end A064506.P10353514903725018766

noncomputable section

/-- A064506: a(n) = Max { k | k*(k+1)/2 <= n*(n+1)/2 - k*(k+1)/2 }.

Offset 1, canonical program `A064506.P10353514903725018766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064506 (n : ℕ) : ℤ :=
  A064506.P10353514903725018766.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064536.P16906778984448148347

`((4^(n+1))%(3^(n+1)))%(2^(n+1))`
-/

namespace A064536.P16906778984448148347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1) % 3 ^ (n + 1) % 2 ^ (n + 1)

end

end A064536.P16906778984448148347

noncomputable section

/-- A064536: a(n) = (4^n mod 3^n) mod 2^n.

Offset 1, canonical program `A064536.P16906778984448148347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064536 (n : ℕ) : ℤ :=
  (A064536.P16906778984448148347.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064546.P12817454430364114420

`(n+1)!²%((n+1)^(n+1))`
-/

namespace A064546.P12817454430364114420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 2 % (n + 1) ^ (n + 1)

end

end A064546.P12817454430364114420

noncomputable section

/-- A064546: Remainder when (n!)^2 is divided by n^n.

Offset 1, canonical program `A064546.P12817454430364114420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064546 (n : ℕ) : ℤ :=
  (A064546.P12817454430364114420.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064551.P2947192802145306770

`4*a(n-1)-5*a(n-2)+a(n-3)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A064551.P2947192802145306770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 3] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + a (n - 3) + 2 * a (n - 4) - a (n - 5)

end

end A064551.P2947192802145306770

noncomputable section

/-- A064551: Ado [Simone Caramel]'s function: a(0) = 1, a(n) = a(n-1) + 2*(Fibonacci(n+1)-n), n > 0.

Offset 0, canonical program `A064551.P2947192802145306770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064551 (n : ℕ) : ℤ :=
  A064551.P2947192802145306770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064570.P15349332461680232478

`1+2*n*(2*n-1)*a(n-1)-2*n*(2*n-2)*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A064570.P15349332461680232478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 + 2 * ((n : ℤ) * (((2 * n : ℤ) - 1) * a (n - 1))) - 2 * ((n : ℤ) * (((2 * n : ℤ) - 2) * a (n - 2)))

end

end A064570.P15349332461680232478

noncomputable section

/-- A064570: Binomial transform of (2n)!.

Offset 0, canonical program `A064570.P15349332461680232478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064570 (n : ℕ) : ℤ :=
  A064570.P15349332461680232478.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064617.P10655094265559728395

`(10^(n+1)-1)*80/81+(n+1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064617.P10655094265559728395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 1) : ℤ) - 1 : ℚ) * ((80 : ℚ) / 81) + (n + 1 : ℚ) / 9

end

end A064617.P10655094265559728395

noncomputable section

/-- A064617: a(n) = (10^n - 1)*(80/81) + n/9.

Offset 1, canonical program `A064617.P10655094265559728395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064617.P10655094265559728395.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064628.P4534274668701968878

`floor(4^n/3^n)`
-/

namespace A064628.P4534274668701968878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / (3 ^ n : ℚ)⌋

end

end A064628.P4534274668701968878

noncomputable section

/-- A064628: a(n) = floor((4/3)^n).

Offset 0, canonical program `A064628.P4534274668701968878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064628 (n : ℕ) : ℤ :=
  A064628.P4534274668701968878.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064633.P13094384076149203170

`3^n*n!*(n+2)!/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064633.P13094384076149203170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.factorial n * Nat.factorial (n + 2) : ℚ) / 2

end

end A064633.P13094384076149203170

noncomputable section

/-- A064633: a(n) = 3^n*n!*(n+2)!/2!.

Offset 0, canonical program `A064633.P13094384076149203170`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064633 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064633.P13094384076149203170.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064680.P14625774430786589521

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=6`
-/

namespace A064680.P14625774430786589521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 6] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A064680.P14625774430786589521

noncomputable section

/-- A064680: Halve every even number, double every odd number.

Offset 0, canonical program `A064680.P14625774430786589521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064680 (n : ℕ) : ℤ :=
  A064680.P14625774430786589521.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064686.P7581998241004610186

`5*a(n-1)-6*a(n-2)` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A064686.P7581998241004610186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7] fun n a =>
  5 * a (n - 1) - 6 * a (n - 2)

end

end A064686.P7581998241004610186

noncomputable section

/-- A064686: a(n) = number of n-digit base-3 biquams.

Offset 1, canonical program `A064686.P7581998241004610186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064686 (n : ℕ) : ℤ :=
  A064686.P7581998241004610186.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064724.P6478327992548843633

`floor((n+1)*2^sqrt(2)/(2^sqrt(2)-1))`
-/

namespace A064724.P6478327992548843633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((2 : ℝ) ^ (Real.sqrt (2 : ℝ)) / ((2 : ℝ) ^ (Real.sqrt (2 : ℝ)) - 1))⌋

end

end A064724.P6478327992548843633

noncomputable section

/-- A064724: A Beatty sequence for 2^sqrt(2).

Offset 1, canonical program `A064724.P6478327992548843633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064724 (n : ℕ) : ℤ :=
  A064724.P6478327992548843633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064780.P6241550995251501969

`floor(exp(n+1))-ceil(exp(n))+1`
-/

namespace A064780.P6241550995251501969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (n + 1 : ℝ)⌋ - ⌈Real.exp (n : ℝ)⌉ + 1

end

end A064780.P6241550995251501969

noncomputable section

/-- A064780: Number of times n occurs in A000195.

Offset 0, canonical program `A064780.P6241550995251501969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064780 (n : ℕ) : ℤ :=
  A064780.P6241550995251501969.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064796.P2967550620710016835

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=8, a(4)=12, a(5)=15`
-/

namespace A064796.P2967550620710016835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 8, 12, 15] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A064796.P2967550620710016835

noncomputable section

/-- A064796: Largest integer m such that every permutation (p_1, ..., p_n) of (1, ..., n) satisfies p_i * p_{i+1} >= m for some i, 1 <= i <= n, where p_{n+1} = p_1.

Offset 1, canonical program `A064796.P2967550620710016835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064796 (n : ℕ) : ℤ :=
  A064796.P2967550620710016835.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064808.P202906029436536577

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=22`
-/

namespace A064808.P202906029436536577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 22] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A064808.P202906029436536577

noncomputable section

/-- A064808: a(n) is the (n+1)st (n+2)-gonal number.

Offset 0, canonical program `A064808.P202906029436536577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064808 (n : ℕ) : ℤ :=
  A064808.P202906029436536577.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064808.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064815.P17103036428449020221

`2*(2*(n+1)-3)*a(n-1)+2*(2*(n+1)-5)*(n-3)*a(n-2)` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A064815.P17103036428449020221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  2 * (((2 * (n + 1) : ℤ) - 3) * a (n - 1)) + 2 * (((2 * (n + 1) : ℤ) - 5) * (((n : ℤ) - 3) * a (n - 2)))

end

end A064815.P17103036428449020221

noncomputable section

/-- A064815: Related to enumeration of finite automata.

Offset 1, canonical program `A064815.P17103036428449020221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064815 (n : ℕ) : ℤ :=
  A064815.P17103036428449020221.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064831.P15565744250995574709

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A064831.P15565744250995574709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 9] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3) + a (n - 4)

end

end A064831.P15565744250995574709

noncomputable section

/-- A064831: Partial sums of A001654, or sum of the areas of the first n Fibonacci rectangles.

Offset 0, canonical program `A064831.P15565744250995574709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064831 (n : ℕ) : ℤ :=
  A064831.P15565744250995574709.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064835.P551224385011782999

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=10, a(4)=44, a(5)=120`
-/

namespace A064835.P551224385011782999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 10, 44, 120] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 5 * a (n - 4) - 4 * a (n - 5) + a (n - 6)

end

end A064835.P551224385011782999

noncomputable section

/-- A064835: If n mod 2 = 0 then a(n) = n^4/4 - 2*n^2 + 3*n; otherwise, a(n) = n^4/4 - 2*n^2 + 3*n - 5/4.

Offset 0, canonical program `A064835.P551224385011782999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064835 (n : ℕ) : ℤ :=
  A064835.P551224385011782999.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064837.P11798844267501506906

`(6*n^4+30*n^3-20*n²+14)*n/30+n%2`
-/

namespace A064837.P11798844267501506906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n ^ 4 + 30 * n ^ 3 : ℤ) - (20 * n ^ 2 : ℤ) + 14 : ℚ) * ((n : ℚ) / 30) + ((n % 2 : ℕ) : ℚ)

end

end A064837.P11798844267501506906

noncomputable section

/-- A064837: a(n) = (6*n^4 + 30*n^3 - 20*n^2 + 14)*n/30 + (n mod 2).

Offset 0, canonical program `A064837.P11798844267501506906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064837 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064837.P11798844267501506906.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064837.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064842.P6641733526798544504

`(2*(n+1)^3-8*(n+1)+3*(-1)^(n+1)+9)/6`
-/

namespace A064842.P6641733526798544504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 : ℤ) - (8 * (n + 1) : ℤ) + 3 * (-1) ^ (n + 1) + 9 : ℚ) / 6

end

end A064842.P6641733526798544504

noncomputable section

/-- A064842: Maximal value of Sum_{i=1..n} (p(i) - p(i+1))^2, where p(n+1) = p(1), as p ranges over all permutations of {1, 2, ..., n}.

Offset 1, canonical program `A064842.P6641733526798544504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064842 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064842.P6641733526798544504.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064847.P969182412453794672

`a(n-1)*(a(n-1)/a(n-2)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A064847.P969182412453794672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * (a (n - 1) / a (n - 2) + a (n - 2))

end

end A064847.P969182412453794672

noncomputable section

/-- A064847: Sequence a(n) such that there is a sequence b(n) with a(1) = b(1) = 1, a(n+1) = a(n) * b(n) and b(n+1) = a(n) + b(n) for n >= 1.

Offset 1, canonical program `A064847.P969182412453794672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064847 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064847.P969182412453794672.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064847.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064854.P2270640745282534819

`(((5^(n+1))%(4^(n+1)))%(3^(n+1)))%(2^(n+1))`
-/

namespace A064854.P2270640745282534819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1) % 4 ^ (n + 1) % 3 ^ (n + 1) % 2 ^ (n + 1)

end

end A064854.P2270640745282534819

noncomputable section

/-- A064854: a(n) = ((5^n mod 4^n) mod 3^n) mod 2^n.

Offset 1, canonical program `A064854.P2270640745282534819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064854 (n : ℕ) : ℤ :=
  (A064854.P2270640745282534819.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064855.P14315810281932359240

`((((6^(n+1))%(5^(n+1)))%(4^(n+1)))%(3^(n+1)))%(2^(n+1))`
-/

namespace A064855.P14315810281932359240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1) % 5 ^ (n + 1) % 4 ^ (n + 1) % 3 ^ (n + 1) % 2 ^ (n + 1)

end

end A064855.P14315810281932359240

noncomputable section

/-- A064855: a(n) = (((6^n mod 5^n) mod 4^n) mod 3^n) mod 2^n.

Offset 1, canonical program `A064855.P14315810281932359240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064855 (n : ℕ) : ℤ :=
  (A064855.P14315810281932359240.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064867.P322936720118734139

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=26, a(1)=63, a(2)=68, a(3)=23, a(4)=27, a(5)=31, a(6)=35, a(7)=39, a(8)=43, a(9)=46`
-/

namespace A064867.P322936720118734139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [26, 63, 68, 23, 27, 31, 35, 39, 43, 46] fun n a =>
  a (n - 1) + a (n - 6) - a (n - 7)

end

end A064867.P322936720118734139

noncomputable section

/-- A064867: The minimal number which has multiplicative persistence 3 in base n.

Offset 3, canonical program `A064867.P322936720118734139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064867 (n : ℕ) : ℤ :=
  A064867.P322936720118734139.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064867.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064999.P8874839216037770762

`n*(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A064999.P8874839216037770762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * (n + 1) + a (n - 1)

end

end A064999.P8874839216037770762

noncomputable section

/-- A064999: Partial sums of sequence (essentially A002378): 1, 2, 6, 12, 20, 30, 42, 56, 72, 90, ...

Offset 0, canonical program `A064999.P8874839216037770762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064999 (n : ℕ) : ℤ :=
  (A064999.P8874839216037770762.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065033.P13150710762287634520

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A065033.P13150710762287634520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A065033.P13150710762287634520

noncomputable section

/-- A065033: 1 appears three times, other numbers twice.

Offset 0, canonical program `A065033.P13150710762287634520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065033 (n : ℕ) : ℤ :=
  A065033.P13150710762287634520.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065035.P13186703384493540882

`a(n-1)²+3*a(n-1)+1` with `a(0)=0`
-/

namespace A065035.P13186703384493540882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 + 3 * a (n - 1) + 1

end

end A065035.P13186703384493540882

noncomputable section

/-- A065035: a(n+1) = a(n)^2 + 3*a(n) + 1.

Offset 0, canonical program `A065035.P13186703384493540882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065035 (n : ℕ) : ℤ :=
  (A065035.P13186703384493540882.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065100.P9079584606151478998

`9*a(n-1)-a(n-2)` with `a(0)=3, a(1)=27`
-/

namespace A065100.P9079584606151478998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 27] fun n a =>
  9 * a (n - 1) - a (n - 2)

end

end A065100.P9079584606151478998

noncomputable section

/-- A065100: a(n+2) = 9*a(n+1) - a(n), a(0) = 3, a(1) = 27.

Offset 0, canonical program `A065100.P9079584606151478998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065100 (n : ℕ) : ℤ :=
  A065100.P9079584606151478998.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065113.P698618875220295726

`6*a(n-1)-a(n-2)+4` with `a(0)=6, a(1)=40`
-/

namespace A065113.P698618875220295726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 40] fun n a =>
  6 * a (n - 1) - a (n - 2) + 4

end

end A065113.P698618875220295726

noncomputable section

/-- A065113: Sum of the squares of the a(n)-th and the (a(n)+1)st triangular numbers (A000217) is a perfect square.

Offset 1, canonical program `A065113.P698618875220295726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065113 (n : ℕ) : ℤ :=
  A065113.P698618875220295726.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065164.P11898003082546795665

`2*(n+1)-a(n-1)-1` with `a(0)=2, a(1)=4`
-/

namespace A065164.P11898003082546795665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (2 * (n + 1) : ℤ) - a (n - 1) - 1

end

end A065164.P11898003082546795665

noncomputable section

/-- A065164: Permutation t->t+1 of Z, folded to N.

Offset 1, canonical program `A065164.P11898003082546795665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065164 (n : ℕ) : ℤ :=
  A065164.P11898003082546795665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065165.P7531479745816109852

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=6, a(2)=2, a(3)=8, a(4)=1, a(5)=10`
-/

namespace A065165.P7531479745816109852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6, 2, 8, 1, 10] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A065165.P7531479745816109852

noncomputable section

/-- A065165: Permutation t->t+2 of Z, folded to N.

Offset 1, canonical program `A065165.P7531479745816109852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065165 (n : ℕ) : ℤ :=
  A065165.P7531479745816109852.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065169.P14320157084508052809

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=3, a(2)=7, a(3)=1, a(4)=9, a(5)=2, a(6)=11`
-/

namespace A065169.P14320157084508052809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3, 7, 1, 9, 2, 11] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A065169.P14320157084508052809

noncomputable section

/-- A065169: Permutation t->t-2 of Z, folded to N.

Offset 1, canonical program `A065169.P14320157084508052809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065169 (n : ℕ) : ℤ :=
  A065169.P14320157084508052809.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065170.P10173856216532677162

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=7, a(1)=5, a(2)=9, a(3)=3, a(4)=11, a(5)=1, a(6)=13, a(7)=2, a(8)=15`
-/

namespace A065170.P10173856216532677162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 5, 9, 3, 11, 1, 13, 2, 15] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A065170.P10173856216532677162

noncomputable section

/-- A065170: Permutation t->t-3 of Z, folded to N.

Offset 1, canonical program `A065170.P10173856216532677162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065170 (n : ℕ) : ℤ :=
  A065170.P10173856216532677162.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065171.P5124900426512068722

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=8, a(4)=3, a(5)=12, a(6)=6, a(7)=16`
-/

namespace A065171.P5124900426512068722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2, 8, 3, 12, 6, 16] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A065171.P5124900426512068722

noncomputable section

/-- A065171: Permutation of Z, folded to N, corresponding to the site swap pattern ...26120123456... which ascends infinitely after t=0.

Offset 1, canonical program `A065171.P5124900426512068722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065171 (n : ℕ) : ℤ :=
  A065171.P5124900426512068722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065173.P15900657868582209570

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=1, a(5)=3, a(6)=6, a(7)=4`
-/

namespace A065173.P15900657868582209570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 2, 1, 3, 6, 4] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A065173.P15900657868582209570

noncomputable section

/-- A065173: Site swap sequence that rises infinitely after t=0. The associated delta sequence p(t)-t for the permutation of Z: A065171.

Offset 1, canonical program `A065173.P15900657868582209570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065173 (n : ℕ) : ℤ :=
  A065173.P15900657868582209570.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065187.P14016398150635672788

`5+a(n-5)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=5, a(4)=3`
-/

namespace A065187.P14016398150635672788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 2, 5, 3] fun n a =>
  5 + a (n - 5)

end

end A065187.P14016398150635672788

noncomputable section

/-- A065187: "Greedy Dragons" permutation of the natural numbers, inverse of A065186.

Offset 1, canonical program `A065187.P14016398150635672788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065187 (n : ℕ) : ℤ :=
  (A065187.P14016398150635672788.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065190.P13211442057156314252

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=5`
-/

namespace A065190.P13211442057156314252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 5] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A065190.P13211442057156314252

noncomputable section

/-- A065190: Self-inverse permutation of the positive integers: 1 is fixed, followed by an infinite number of adjacent transpositions (n n+1).

Offset 1, canonical program `A065190.P13211442057156314252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065190 (n : ℕ) : ℤ :=
  A065190.P13211442057156314252.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065220.P9399318287820856505

`a(n-1)+a(n-2)+n-3` with `a(0)=0, a(1)=0`
-/

namespace A065220.P9399318287820856505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + a (n - 2) + ((n : ℤ) - 3)

end

end A065220.P9399318287820856505

noncomputable section

/-- A065220: a(n) = Fibonacci(n) - n.

Offset 0, canonical program `A065220.P9399318287820856505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065220 (n : ℕ) : ℤ :=
  A065220.P9399318287820856505.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065236.P2191422335204547360

`(4*n)!*(n+1)!/(2*n)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065236.P2191422335204547360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) * Nat.factorial (n + 1) : ℚ) / (Nat.factorial (2 * n) : ℚ)

end

end A065236.P2191422335204547360

noncomputable section

/-- A065236: a(n) = (4*n)!*(n+1)!/(2*n)!.

Offset 0, canonical program `A065236.P2191422335204547360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065236 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065236.P2191422335204547360.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065259.P1655135024653917412

`2*a(n-4)-a(n-8)` with `a(0)=3, a(1)=1, a(2)=7, a(3)=2, a(4)=11, a(5)=5, a(6)=15, a(7)=4`
-/

namespace A065259.P1655135024653917412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 7, 2, 11, 5, 15, 4] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A065259.P1655135024653917412

noncomputable section

/-- A065259: A057114 conjugated with A059893, inverse of A065260.

Offset 1, canonical program `A065259.P1655135024653917412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065259 (n : ℕ) : ℤ :=
  A065259.P1655135024653917412.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065260.P8099633097199352646

`2*a(n-4)-a(n-8)` with `a(0)=2, a(1)=4, a(2)=1, a(3)=8, a(4)=6, a(5)=12, a(6)=3, a(7)=16`
-/

namespace A065260.P8099633097199352646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 1, 8, 6, 12, 3, 16] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A065260.P8099633097199352646

noncomputable section

/-- A065260: A057115 conjugated with A059893, inverse of A065259.

Offset 1, canonical program `A065260.P8099633097199352646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065260 (n : ℕ) : ℤ :=
  A065260.P8099633097199352646.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065261.P7216788646373031993

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=5, a(5)=3, a(6)=2, a(7)=4`
-/

namespace A065261.P7216788646373031993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 5, 3, 2, 4] fun n a =>
  2 * a (n - 4) - a (n - 8)

end

end A065261.P7216788646373031993

noncomputable section

/-- A065261: The siteswap sequence (the deltas p[i]-i, i in ]-inf,+inf[, folded from Z to N, mapping 0->1, 1->2, -1->3, 2->4, -2->5, etc.) for A065260.

Offset 1, canonical program `A065261.P7216788646373031993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065261 (n : ℕ) : ℤ :=
  A065261.P7216788646373031993.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065262.P12135470620216614774

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=2`
-/

namespace A065262.P12135470620216614774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5, 2] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A065262.P12135470620216614774

noncomputable section

/-- A065262: The nonpositive side (-1, -2, -3, ...) of the site swap sequence A065261. The bisection of odd terms of A065261.

Offset 1, canonical program `A065262.P12135470620216614774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065262 (n : ℕ) : ℤ :=
  A065262.P12135470620216614774.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065330.P9420218423794118930

`(n+1)/gcd(n+1, 6^(n+1))`
-/

namespace A065330.P9420218423794118930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (6 ^ (n + 1)) : ℚ)

end

end A065330.P9420218423794118930

noncomputable section

/-- A065330: Largest divisor of n coprime to 6. I.e., a(n) = max { k | gcd(n,k)=k and gcd(k,6)=1 }.

Offset 1, canonical program `A065330.P9420218423794118930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065330 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065330.P9420218423794118930.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065330.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065340.P9578595943055160296

`3^(n+4)-(3*(n+4)+1)*2^(n+3)+2*(n+4)²-2*(n+4)+1`
-/

namespace A065340.P9578595943055160296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 4) : ℤ) - ((3 * (n + 4) + 1) * 2 ^ (n + 3) : ℤ) + (2 * (n + 4) ^ 2 : ℤ) - (2 * (n + 4) : ℤ) + 1

end

end A065340.P9578595943055160296

noncomputable section

/-- A065340: Third diagonal of triangle in A046740.

Offset 4, canonical program `A065340.P9578595943055160296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065340 (n : ℕ) : ℤ :=
  A065340.P9578595943055160296.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065361.P17377270535182688236

`2*a(floor(n/3))+n-3*floor(n/3)` with `a(0)=0`
-/

namespace A065361.P17377270535182688236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋)

end

end A065361.P17377270535182688236

noncomputable section

/-- A065361: Rebase n from 3 to 2. Replace 3^k with 2^k in ternary expansion of n.

Offset 0, canonical program `A065361.P17377270535182688236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065361 (n : ℕ) : ℤ :=
  A065361.P17377270535182688236.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065410.P14215951990435232941

`n*a(n-1)²+2` with `a(0)=2`
-/

namespace A065410.P14215951990435232941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  n * a (n - 1) ^ 2 + 2

end

end A065410.P14215951990435232941

noncomputable section

/-- A065410: Number of labeled, rooted, binary trees with internal nodes labeled from {1, ...,n} and leaves labeled from {0,1} such that for any path from the root to a leaf, the internal nodes receive distinct labels. In other words, the number of decision trees on n Boolean variables.

Offset 0, canonical program `A065410.P14215951990435232941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065410 (n : ℕ) : ℤ :=
  (A065410.P14215951990435232941.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065455.P777768816140198286

`3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A065455.P777768816140198286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * a (n - 2) + a (n - 3)

end

end A065455.P777768816140198286

noncomputable section

/-- A065455: Number of (binary) bit strings of length n in which no even block of 0's is followed by an odd block of 1's.

Offset 0, canonical program `A065455.P777768816140198286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065455 (n : ℕ) : ℤ :=
  (A065455.P777768816140198286.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065475.P2637304413385993180

`1+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A065475.P2637304413385993180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 + a (n - 1)

end

end A065475.P2637304413385993180

noncomputable section

/-- A065475: Natural numbers excluding 2.

Offset 1, canonical program `A065475.P2637304413385993180`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065475 (n : ℕ) : ℤ :=
  (A065475.P2637304413385993180.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065513.P10886915821715712736

`(n+2)*(n+1)*(n+3)^n`
-/

namespace A065513.P10886915821715712736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * ((n + 1) * (n + 3) ^ n)

end

end A065513.P10886915821715712736

noncomputable section

/-- A065513: Number of endofunctions of [n] with a cycle a->b->c->a and for all x in [n], some iterate f^k(x)=a.

Offset 3, canonical program `A065513.P10886915821715712736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065513 (n : ℕ) : ℤ :=
  (A065513.P10886915821715712736.a (n - 3) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065530.P295616064296752458

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=3, a(4)=24, a(5)=5`
-/

namespace A065530.P295616064296752458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8, 3, 24, 5] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A065530.P295616064296752458

noncomputable section

/-- A065530: If n is odd then a(n) = n, else a(n) = n*(n+2).

Offset 0, canonical program `A065530.P295616064296752458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065530 (n : ℕ) : ℤ :=
  A065530.P295616064296752458.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065563.P5350296318441326914

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=30, a(3)=120`
-/

namespace A065563.P5350296318441326914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 30, 120] fun n a =>
  3 * a (n - 1) + 6 * a (n - 2) - 3 * a (n - 3) - a (n - 4)

end

end A065563.P5350296318441326914

noncomputable section

/-- A065563: Product of three consecutive Fibonacci numbers.

Offset 1, canonical program `A065563.P5350296318441326914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065563 (n : ℕ) : ℤ :=
  A065563.P5350296318441326914.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065599.P7928286075118809615

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9, a(4)=4, a(5)=25`
-/

namespace A065599.P7928286075118809615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 9, 4, 25] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A065599.P7928286075118809615

noncomputable section

/-- A065599: If n odd, a(n) = n^2 else a(n) = n.

Offset 0, canonical program `A065599.P7928286075118809615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065599 (n : ℕ) : ℤ :=
  A065599.P7928286075118809615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065613.P2720830873747882225

`floor(log(n+1)*2^(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065613.P2720830873747882225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ) * (2 ^ (n + 1) : ℝ) / (n + 1 : ℝ)⌋

end

end A065613.P2720830873747882225

noncomputable section

/-- A065613: a(n) = floor(log(n)*2^n/n).

Offset 1, canonical program `A065613.P2720830873747882225`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log(n+1)*2^(n+1)/(n+1))` (program `A065613.P2720830873747882225`, by `A065613.P2720830873747882225.correct`). Lean does not check the parsing of the name. -/
def A065613 (n : ℕ) : ℤ :=
  A065613.P2720830873747882225.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log(n+1)*2^(n+1)/(n+1))` (program `A065613.P2720830873747882225`, by `A065613.P2720830873747882225.correct`). Lean does not check the parsing of the name. -/
def A065613.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065614.P319803417945957386

`round(log(n+1)*2^(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065614.P319803417945957386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (n + 1 : ℝ) * (2 ^ (n + 1) : ℝ) / (n + 1 : ℝ))

end

end A065614.P319803417945957386

noncomputable section

/-- A065614: a(n) = round(log(n)*2^n/n).

Offset 1, canonical program `A065614.P319803417945957386`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(log(n+1)*2^(n+1)/(n+1))` (program `A065614.P319803417945957386`, by `A065614.P319803417945957386.correct`). Lean does not check the parsing of the name. -/
def A065614 (n : ℕ) : ℤ :=
  A065614.P319803417945957386.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(log(n+1)*2^(n+1)/(n+1))` (program `A065614.P319803417945957386`, by `A065614.P319803417945957386.correct`). Lean does not check the parsing of the name. -/
def A065614.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065615.P13536214938280925636

`ceil(log(n+1)*2^(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065615.P13536214938280925636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (n + 1 : ℝ) * (2 ^ (n + 1) : ℝ) / (n + 1 : ℝ)⌉

end

end A065615.P13536214938280925636

noncomputable section

/-- A065615: a(n) = ceiling(log(n)*2^n/n).

Offset 1, canonical program `A065615.P13536214938280925636`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(n+1)*2^(n+1)/(n+1))` (program `A065615.P13536214938280925636`, by `A065615.P13536214938280925636.correct`). Lean does not check the parsing of the name. -/
def A065615 (n : ℕ) : ℤ :=
  A065615.P13536214938280925636.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log(n+1)*2^(n+1)/(n+1))` (program `A065615.P13536214938280925636`, by `A065615.P13536214938280925636.correct`). Lean does not check the parsing of the name. -/
def A065615.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065616.P13918067892437015974

`floor(log2(n+1)*2^(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065616.P13918067892437015974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) * (2 ^ (n + 1) : ℝ) / (n + 1 : ℝ)⌋

end

end A065616.P13918067892437015974

noncomputable section

/-- A065616: a(n) = floor(log_2(n)*2^n/n).

Offset 1, canonical program `A065616.P13918067892437015974`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1)*2^(n+1)/(n+1))` (program `A065616.P13918067892437015974`, by `A065616.P13918067892437015974.correct`). Lean does not check the parsing of the name. -/
def A065616 (n : ℕ) : ℤ :=
  A065616.P13918067892437015974.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1)*2^(n+1)/(n+1))` (program `A065616.P13918067892437015974`, by `A065616.P13918067892437015974.correct`). Lean does not check the parsing of the name. -/
def A065616.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065617.P14848530249574948336

`round(log2(n+1)*2^(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065617.P14848530249574948336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (n + 1 : ℝ) * (2 ^ (n + 1) : ℝ) / (n + 1 : ℝ))

end

end A065617.P14848530249574948336

noncomputable section

/-- A065617: a(n) = round(log_2(n)*2^n/n).

Offset 1, canonical program `A065617.P14848530249574948336`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(log2(n+1)*2^(n+1)/(n+1))` (program `A065617.P14848530249574948336`, by `A065617.P14848530249574948336.correct`). Lean does not check the parsing of the name. -/
def A065617 (n : ℕ) : ℤ :=
  A065617.P14848530249574948336.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(log2(n+1)*2^(n+1)/(n+1))` (program `A065617.P14848530249574948336`, by `A065617.P14848530249574948336.correct`). Lean does not check the parsing of the name. -/
def A065617.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065618.P2874956495138809541

`ceil(log2(n+1)*2^(n+1)/(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065618.P2874956495138809541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ) * (2 ^ (n + 1) : ℝ) / (n + 1 : ℝ)⌉

end

end A065618.P2874956495138809541

noncomputable section

/-- A065618: a(n) = ceiling(log_2(n)*2^n/n).

Offset 1, canonical program `A065618.P2874956495138809541`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log2(n+1)*2^(n+1)/(n+1))` (program `A065618.P2874956495138809541`, by `A065618.P2874956495138809541.correct`). Lean does not check the parsing of the name. -/
def A065618 (n : ℕ) : ℤ :=
  A065618.P2874956495138809541.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log2(n+1)*2^(n+1)/(n+1))` (program `A065618.P2874956495138809541`, by `A065618.P2874956495138809541.correct`). Lean does not check the parsing of the name. -/
def A065618.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065621.P7428635038631224963

`xor(n, 2*n+1)`
-/

namespace A065621.P7428635038631224963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

end

end A065621.P7428635038631224963

noncomputable section

/-- A065621: Reversing binary representation of n. Converting sum of powers of 2 in binary representation of a(n) to alternating sum gives n.

Offset 1, canonical program `A065621.P7428635038631224963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065621 (n : ℕ) : ℤ :=
  (A065621.P7428635038631224963.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065622.P3252005977964471814

`4^n*(1+floor((3/2)^n))-3^n-6^n`
-/

namespace A065622.P3252005977964471814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (1 + ⌊((3 : ℚ) / 2) ^ n⌋) - (3 ^ n : ℤ) - (6 ^ n : ℤ)

end

end A065622.P3252005977964471814

noncomputable section

/-- A065622: Numerator of 1 - (3/4)^n - frac((3/2)^n), where frac(x) = x - floor(x).

Offset 0, canonical program `A065622.P3252005977964471814`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065622 (n : ℕ) : ℤ :=
  A065622.P3252005977964471814.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065623.P14161991079757764054

`floor(abs(cos(n)/cos(2*n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065623.P14161991079757764054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.cos (n : ℝ) / Real.cos (2 * n : ℝ)|⌋

end

end A065623.P14161991079757764054

noncomputable section

/-- A065623: a(n) = floor(abs(cos(n)/cos(2n))).

Offset 0, canonical program `A065623.P14161991079757764054`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(abs(cos(n)/cos(2*n)))` (program `A065623.P14161991079757764054`, by `A065623.P14161991079757764054.correct`). Lean does not check the parsing of the name. -/
def A065623 (n : ℕ) : ℤ :=
  A065623.P14161991079757764054.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(abs(cos(n)/cos(2*n)))` (program `A065623.P14161991079757764054`, by `A065623.P14161991079757764054.correct`). Lean does not check the parsing of the name. -/
def A065623.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065692.P15749156932814241604

`9*a(n-1)-33*a(n-2)+52*a(n-3)` with `a(0)=0, a(1)=3, a(2)=24`
-/

namespace A065692.P15749156932814241604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 24] fun n a =>
  9 * a (n - 1) - 33 * a (n - 2) + 52 * a (n - 3)

end

end A065692.P15749156932814241604

noncomputable section

/-- A065692: Braided power sequence: this is b(n+1) = 3*b(n) + 2*d(n) - c(n), A065693 is c(n+1) = 3*c(n) + 2*b(n) - d(n) and A065694 is d(n+1) = 3*d(n) + 2*c(n) - b(n), starting with b(0) = 0, c(0) = 1 and d(0) = 2.

Offset 0, canonical program `A065692.P15749156932814241604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065692 (n : ℕ) : ℤ :=
  A065692.P15749156932814241604.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065693.P18352274278328952649

`9*a(n-1)-33*a(n-2)+52*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A065693.P18352274278328952649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  9 * a (n - 1) - 33 * a (n - 2) + 52 * a (n - 3)

end

end A065693.P18352274278328952649

noncomputable section

/-- A065693: Braided power sequence: A065692 is b(n+1) = 3*b(n) + 2*d(n) - c(n), this is c(n+1) = 3*c(n) + 2*b(n) - d(n) and A065694 is d(n+1) = 3*d(n) + 2*c(n) - b(n), starting with b(0) = 0, c(0) = 1 and d(0) = 2.

Offset 0, canonical program `A065693.P18352274278328952649`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065693 (n : ℕ) : ℤ :=
  A065693.P18352274278328952649.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065694.P5412418138732673378

`9*a(n-1)-33*a(n-2)+52*a(n-3)` with `a(0)=2, a(1)=8, a(2)=23`
-/

namespace A065694.P5412418138732673378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 23] fun n a =>
  9 * a (n - 1) - 33 * a (n - 2) + 52 * a (n - 3)

end

end A065694.P5412418138732673378

noncomputable section

/-- A065694: Braided power sequence: A065692 is b(n+1) = 3*b(n) + 2*d(n) - c(n), A065693 is c(n+1) = 3*c(n) + 2*b(n) - d(n) and this is d(n+1) = 3*d(n) + 2*c(n) - b(n), starting with b(0) = 0, c(0) = 1 and d(0) = 2.

Offset 0, canonical program `A065694.P5412418138732673378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065694 (n : ℕ) : ℤ :=
  A065694.P5412418138732673378.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065694.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065705.P14190034376336801662

`123*a(n-1)-a(n-2)` with `a(0)=2, a(1)=123`
-/

namespace A065705.P14190034376336801662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 123] fun n a =>
  123 * a (n - 1) - a (n - 2)

end

end A065705.P14190034376336801662

noncomputable section

/-- A065705: a(n) = Lucas(10*n).

Offset 0, canonical program `A065705.P14190034376336801662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065705 (n : ℕ) : ℤ :=
  A065705.P14190034376336801662.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065731.P12877525842493104667

`floor(sqrt(n!))²`
-/

namespace A065731.P12877525842493104667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.factorial n) ^ 2

end

end A065731.P12877525842493104667

noncomputable section

/-- A065731: Largest square <= n!.

Offset 0, canonical program `A065731.P12877525842493104667`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065731 (n : ℕ) : ℤ :=
  (A065731.P12877525842493104667.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065736.P17074082600863172526

`floor(sqrt(10^(n+1)))²`
-/

namespace A065736.P17074082600863172526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (10 ^ (n + 1)) ^ 2

end

end A065736.P17074082600863172526

noncomputable section

/-- A065736: Largest square <= 10^n.

Offset 1, canonical program `A065736.P17074082600863172526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065736 (n : ℕ) : ℤ :=
  (A065736.P17074082600863172526.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065740.P13693046897734475492

`floor(sqrt((n+1)^(n+1)))²`
-/

namespace A065740.P13693046897734475492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 1) ^ (n + 1)) ^ 2

end

end A065740.P13693046897734475492

noncomputable section

/-- A065740: Largest square <= n^n.

Offset 1, canonical program `A065740.P13693046897734475492`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065740 (n : ℕ) : ℤ :=
  (A065740.P13693046897734475492.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065866.P4744219493298047151

`2*(2*n+1)!/(n+2)!`
-/

namespace A065866.P4744219493298047151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial (n + 2) : ℚ)

end

end A065866.P4744219493298047151

noncomputable section

/-- A065866: a(n) = n! * Catalan(n+1).

Offset 0, canonical program `A065866.P4744219493298047151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065866 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065866.P4744219493298047151.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065874.P1838138275124097795

`a(n-1)+42*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A065874.P1838138275124097795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 42 * a (n - 2)

end

end A065874.P1838138275124097795

noncomputable section

/-- A065874: a(n) = (7^(n+1) - (-6)^(n+1))/13.

Offset 0, canonical program `A065874.P1838138275124097795`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^(n+1)-(-6)^(n+1))/13` (program `A065874.P16222674565413484036`, by `A065874.P16222674565413484036.correct`). Lean does not check the parsing of the name. -/
def A065874 (n : ℕ) : ℤ :=
  (A065874.P1838138275124097795.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^(n+1)-(-6)^(n+1))/13` (program `A065874.P16222674565413484036`, by `A065874.P16222674565413484036.correct`). Lean does not check the parsing of the name. -/
def A065874.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065881.P12919191287620288312

`((n+1)/10^val(n+1, 10))%10`
-/

namespace A065881.P12919191287620288312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) 10

end

end A065881.P12919191287620288312

noncomputable section

/-- A065881: Ultimate modulo 10: right-hand nonzero digit of n.

Offset 1, canonical program `A065881.P12919191287620288312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065881 (n : ℕ) : ℤ :=
  A065881.P12919191287620288312.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065882.P15915198935150562604

`((n+1)/4^val(n+1, 4))%4`
-/

namespace A065882.P15915198935150562604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) 4

end

end A065882.P15915198935150562604

noncomputable section

/-- A065882: Ultimate modulo 4: right-hand nonzero digit of n when written in base 4.

Offset 1, canonical program `A065882.P15915198935150562604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065882 (n : ℕ) : ℤ :=
  A065882.P15915198935150562604.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065882.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065883.P11028761589523276427

`(n+1)/4^val(n+1, 4)`
-/

namespace A065883.P11028761589523276427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ)

end

end A065883.P11028761589523276427

noncomputable section

/-- A065883: Remove factors of 4 from n (i.e., write n in base 4, drop final zeros, then rewrite in decimal).

Offset 1, canonical program `A065883.P11028761589523276427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065883.P11028761589523276427.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065885.P17730579912462143560

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=9, a(5)=25, a(6)=26, a(7)=64, a(8)=169, a(9)=441`
-/

namespace A065885.P17730579912462143560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 5, 9, 25, 26, 64, 169, 441] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A065885.P17730579912462143560

noncomputable section

/-- A065885: a(n)-1, a(n) and a(n)+1 form three consecutive integers that can be factored into Fibonacci numbers.

Offset 1, canonical program `A065885.P17730579912462143560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065885 (n : ℕ) : ℤ :=
  A065885.P17730579912462143560.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065888.P6182398258122379903

`(n+3)*(n+2)*(n+1)*(n+4)^n`
-/

namespace A065888.P6182398258122379903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * ((n + 2) * ((n + 1) * (n + 4) ^ n))

end

end A065888.P6182398258122379903

noncomputable section

/-- A065888: a(n) = number of endofunctions on [n] with a 4-cycle a->b->c->d->a and for any x in [n], some iterate f^k(x) = a.

Offset 4, canonical program `A065888.P6182398258122379903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065888 (n : ℕ) : ℤ :=
  (A065888.P6182398258122379903.a (n - 4) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065889.P5021309692457016998

`12*C(n+4, 4)*(n+4)^(n-1)`
-/

namespace A065889.P5021309692457016998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * Nat.choose (n + 4) 4 : ℚ) * (n + 4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A065889.P5021309692457016998

noncomputable section

/-- A065889: a(n) = number of unicyclic connected simple graphs whose cycle has length 4.

Offset 4, canonical program `A065889.P5021309692457016998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065889.P5021309692457016998.a (n - 4))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065915.P10643357233130055355

`2^(2*val(n+1, 2)+4)-1`
-/

namespace A065915.P10643357233130055355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * SequenceMachineLib.valuation (n + 1) 2 + 4) : ℤ) - 1

end

end A065915.P10643357233130055355

noncomputable section

/-- A065915: Numerator of sigma(8*n^2)/sigma(4*n^2).

Offset 1, canonical program `A065915.P10643357233130055355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065915 (n : ℕ) : ℤ :=
  A065915.P10643357233130055355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065916.P7924980822449154994

`2^(2*val(n+1, 2)+3)-1`
-/

namespace A065916.P7924980822449154994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * SequenceMachineLib.valuation (n + 1) 2 + 3) : ℤ) - 1

end

end A065916.P7924980822449154994

noncomputable section

/-- A065916: Denominator of sigma(8*n^2)/sigma(4*n^2).

Offset 1, canonical program `A065916.P7924980822449154994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065916 (n : ℕ) : ℤ :=
  A065916.P7924980822449154994.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065919.P13888781187407027226

`4*(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A065919.P13888781187407027226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * (((2 * n : ℤ) - 1) * a (n - 1)) + a (n - 2)

end

end A065919.P13888781187407027226

noncomputable section

/-- A065919: Bessel polynomial y_n(4).

Offset 0, canonical program `A065919.P13888781187407027226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065919 (n : ℕ) : ℤ :=
  A065919.P13888781187407027226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065928.P16206430690023336403

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=2, a(1)=11, a(2)=63`
-/

namespace A065928.P16206430690023336403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11, 63] fun n a =>
  7 * a (n - 1) - 7 * a (n - 2) + a (n - 3)

end

end A065928.P16206430690023336403

noncomputable section

/-- A065928: (x,y) = (a(n),a(n+1)) are the solutions of (t(x)+t(y))/(1+xy) = t(2) = 3, where t(n) denotes the n-th triangular number t(n) = n(n+1)/2.

Offset 0, canonical program `A065928.P16206430690023336403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065928 (n : ℕ) : ℤ :=
  A065928.P16206430690023336403.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065929.P9969198685907048495

`13*a(n-1)-13*a(n-2)+a(n-3)` with `a(0)=3, a(1)=35, a(2)=416`
-/

namespace A065929.P9969198685907048495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 35, 416] fun n a =>
  13 * a (n - 1) - 13 * a (n - 2) + a (n - 3)

end

end A065929.P9969198685907048495

noncomputable section

/-- A065929: (x,y) = (a(n),a(n+1)) are the solutions of (t(x)+t(y))/(1+xy) = t(3) = 6, where t(n) denotes the n-th triangular number t(n) = n(n+1)/2.

Offset 0, canonical program `A065929.P9969198685907048495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065929 (n : ℕ) : ℤ :=
  A065929.P9969198685907048495.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065961.P17290473748255014114

`(3*(n+1))!/6`
-/

namespace A065961.P17290473748255014114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * (n + 1)) : ℚ) / 6

end

end A065961.P17290473748255014114

noncomputable section

/-- A065961: a(n) = (3*n - 1)!*n/2.

Offset 1, canonical program `A065961.P17290473748255014114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065961 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065961.P17290473748255014114.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066026.P3977274256426755055

`ceil(log((n+1)!))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066026.P3977274256426755055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Nat.factorial (n + 1) : ℝ)⌉

end

end A066026.P3977274256426755055

noncomputable section

/-- A066026: a(n) = ceiling(log(n!)).

Offset 1, canonical program `A066026.P3977274256426755055`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log((n+1)!))` (program `A066026.P3977274256426755055`, by `A066026.P3977274256426755055.correct`). Lean does not check the parsing of the name. -/
def A066026 (n : ℕ) : ℤ :=
  A066026.P3977274256426755055.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(log((n+1)!))` (program `A066026.P3977274256426755055`, by `A066026.P3977274256426755055.correct`). Lean does not check the parsing of the name. -/
def A066026.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066070.P577212344033438367

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=3, a(3)=10`
-/

namespace A066070.P577212344033438367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 3, 10] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A066070.P577212344033438367

noncomputable section

/-- A066070: a(1) = 1; for m > 0, a(2m) = 2(2m+1), a(2m+1) = 2m+1.

Offset 1, canonical program `A066070.P577212344033438367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066070 (n : ℕ) : ℤ :=
  A066070.P577212344033438367.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066104.P15686550211836964089

`(3*n+2-(n+2)*(-1)^n)/2`
-/

namespace A066104.P15686550211836964089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) + (2 - (n + 2 : ℤ) * (-1) ^ n) : ℚ) / 2

end

end A066104.P15686550211836964089

noncomputable section

/-- A066104: a(2n) = 2n, a(2n+1) = 4(n+1).

Offset 0, canonical program `A066104.P15686550211836964089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066104 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066104.P15686550211836964089.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066118.P15000649881952415993

`(n+1)!*(3*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066118.P15000649881952415993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (((3 * (n + 1) : ℤ) - 1 : ℚ) / 2)

end

end A066118.P15000649881952415993

noncomputable section

/-- A066118: a(n) = n!*(3*n-1)/2.

Offset 1, canonical program `A066118.P15000649881952415993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066118 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066118.P15000649881952415993.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066164.P10542613699364172950

`(n+1)*180`
-/

namespace A066164.P10542613699364172950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 180

end

end A066164.P10542613699364172950

noncomputable section

/-- A066164: Sum of interior angles in an n-sided polygon in degrees.

Offset 3, canonical program `A066164.P10542613699364172950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066164 (n : ℕ) : ℤ :=
  (A066164.P10542613699364172950.a (n - 3) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066178.P9650228280100825632

`2*a(n-1)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32, a(7)=64`
-/

namespace A066178.P9650228280100825632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32, 64] fun n a =>
  2 * a (n - 1) - a (n - 8)

end

end A066178.P9650228280100825632

noncomputable section

/-- A066178: Nonzero heptanacci numbers, A122189.

Offset 0, canonical program `A066178.P9650228280100825632`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066178 (n : ℕ) : ℤ :=
  A066178.P9650228280100825632.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066178.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066210.P12054575185968295704

`((2*n)^(2*n+2)-1)/(4*n²-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066210.P12054575185968295704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n) ^ (2 * n + 2) : ℤ) - 1 : ℚ) / ((4 * n ^ 2 : ℤ) - 1 : ℚ)

end

end A066210.P12054575185968295704

noncomputable section

/-- A066210: a(n) = ((2*n)^(2*n+2) - 1)/(4*n^2 - 1).

Offset 0, canonical program `A066210.P12054575185968295704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066210.P12054575185968295704.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066223.P999147527247587771

`(4*n-2)*a(n-1)-2*(n-1)*(2*n-3)*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A066223.P999147527247587771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((4 * n : ℤ) - 2) * a (n - 1) - 2 * (((n : ℤ) - 1) * (((2 * n : ℤ) - 3) * a (n - 2)))

end

end A066223.P999147527247587771

noncomputable section

/-- A066223: Bisection of A000085.

Offset 0, canonical program `A066223.P999147527247587771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066223 (n : ℕ) : ℤ :=
  A066223.P999147527247587771.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066237.P1106044645368667877

`(n+1)*a(n-1)-n*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A066237.P1106044645368667877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - (n : ℤ) * a (n - 2)

end

end A066237.P1106044645368667877

noncomputable section

/-- A066237: First differences give A052849.

Offset 1, canonical program `A066237.P1106044645368667877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066237 (n : ℕ) : ℤ :=
  A066237.P1106044645368667877.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066237.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066258.P15787594772273939232

`3*a(n-1)+6*a(n-2)-3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=12`
-/

namespace A066258.P15787594772273939232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 12] fun n a =>
  3 * a (n - 1) + 6 * a (n - 2) - 3 * a (n - 3) - a (n - 4)

end

end A066258.P15787594772273939232

noncomputable section

/-- A066258: a(n) = Fibonacci(n)^2 * Fibonacci(n+1).

Offset 0, canonical program `A066258.P15787594772273939232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066258 (n : ℕ) : ℤ :=
  A066258.P15787594772273939232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066274.P4127562941293127807

`n*(n+1)^n`
-/

namespace A066274.P4127562941293127807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1) ^ n

end

end A066274.P4127562941293127807

noncomputable section

/-- A066274: Number of endofunctions of [n] such that 1 is not a fixed point.

Offset 1, canonical program `A066274.P4127562941293127807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066274 (n : ℕ) : ℤ :=
  (A066274.P4127562941293127807.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066275.P4305811953647676198

`(n+1)^(n+1)-(n+1)^n-n^(n+1)`
-/

namespace A066275.P4305811953647676198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - ((n + 1) ^ n : ℤ) - (n ^ (n + 1) : ℤ)

end

end A066275.P4305811953647676198

noncomputable section

/-- A066275: Number of endofunctions of [n] such that some element is fixed, but 1 is not fixed.

Offset 1, canonical program `A066275.P4305811953647676198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066275 (n : ℕ) : ℤ :=
  A066275.P4305811953647676198.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066300.P11587297981237565345

`C(n+1, 2)^(n+1)`
-/

namespace A066300.P11587297981237565345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ (n + 1)

end

end A066300.P11587297981237565345

noncomputable section

/-- A066300: Number of n X n matrices with exactly 2 1's in each row, other entries 0.

Offset 1, canonical program `A066300.P11587297981237565345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066300 (n : ℕ) : ℤ :=
  (A066300.P11587297981237565345.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066319.P3236432404801211674

`(n+1)^(n-1)*n!`
-/

namespace A066319.P3236432404801211674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ)

end

end A066319.P3236432404801211674

noncomputable section

/-- A066319: A labeled structure simultaneously a tree and a cycle.

Offset 1, canonical program `A066319.P3236432404801211674`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066319 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066319.P3236432404801211674.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066343.P13541909171452676471

`floor((n+1)*log2(10))`
-/

namespace A066343.P13541909171452676471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.logb 2 (10 : ℝ)⌋

end

end A066343.P13541909171452676471

noncomputable section

/-- A066343: Beatty sequence for log_2(10).

Offset 1, canonical program `A066343.P13541909171452676471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066343 (n : ℕ) : ℤ :=
  A066343.P13541909171452676471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066368.P1475710799661482819

`(n+2)*2^(n-1)-2*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066368.P1475710799661482819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (2 * n : ℚ)

end

end A066368.P1475710799661482819

noncomputable section

/-- A066368: a(n) = (n+2)*2^(n-1) - 2*n.

Offset 0, canonical program `A066368.P1475710799661482819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066368 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066368.P1475710799661482819.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066373.P310869979239115400

`(3*(n+2)-2)*2^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066373.P310869979239115400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 2) : ℤ) - 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A066373.P310869979239115400

noncomputable section

/-- A066373: a(n) = (3*n-2)*2^(n-3).

Offset 2, canonical program `A066373.P310869979239115400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066373 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066373.P310869979239115400.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066373.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066374.P5084603354309075955

`(3*(n+2)+4)*2^(n-1)-(2*(n+2)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066374.P5084603354309075955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (n + 2) + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - ((2 * (n + 2) : ℤ) - 1 : ℚ)

end

end A066374.P5084603354309075955

noncomputable section

/-- A066374: a(n) = (3*n+4)*2^(n-3)-(2*n-1).

Offset 2, canonical program `A066374.P5084603354309075955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066374 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066374.P5084603354309075955.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066375.P17807161311016987422

`(8-14*(n+1)+13*(n+1)²-4*(n+1)^3+(n+1)^4)/4`
-/

namespace A066375.P17807161311016987422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 - (14 * (n + 1) : ℤ) + (13 * (n + 1) ^ 2 : ℤ) - (4 * (n + 1) ^ 3 : ℤ) + ((n + 1) ^ 4 : ℤ) : ℚ) / 4

end

end A066375.P17807161311016987422

noncomputable section

/-- A066375: a(n) = 6*binomial(n,4) + 3*binomial(n,3) + 4*binomial(n,2) - n + 2.

Offset 1, canonical program `A066375.P17807161311016987422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066375 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066375.P17807161311016987422.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066394.P14483117659571427459

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=10, a(3)=10, a(4)=46, a(5)=26, a(6)=106`
-/

namespace A066394.P14483117659571427459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 10, 10, 46, 26, 106] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A066394.P14483117659571427459

noncomputable section

/-- A066394: Coordination sequence for ReO_3 net with respect to oxygen atom O_1.

Offset 0, canonical program `A066394.P14483117659571427459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066394 (n : ℕ) : ℤ :=
  A066394.P14483117659571427459.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066407.P14327006728578835734

`2^(n+1)*(10^(n+1)-15*4^(n+1)+45*2^(n+1)-40)`
-/

namespace A066407.P14327006728578835734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * ((10 ^ (n + 1) : ℤ) - (15 * 4 ^ (n + 1) : ℤ) + (45 * 2 ^ (n + 1) : ℤ) - 40)

end

end A066407.P14327006728578835734

noncomputable section

/-- A066407: Number of orthogonal arrays OA(6,n,2,1).

Offset 1, canonical program `A066407.P14327006728578835734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066407 (n : ℕ) : ℤ :=
  A066407.P14327006728578835734.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066443.P4391103697561392204

`9*a(n-1)-2` with `a(0)=1`
-/

namespace A066443.P4391103697561392204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - 2

end

end A066443.P4391103697561392204

noncomputable section

/-- A066443: Number of distinct paths of length 2n+1 along edges of a unit cube between two fixed adjacent vertices.

Offset 0, canonical program `A066443.P4391103697561392204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066443 (n : ℕ) : ℤ :=
  A066443.P4391103697561392204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066532.P15180921194300574676

`2^n*(1-(-1)^n)/2+(1+(-1)^n)/2`
-/

namespace A066532.P15180921194300574676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * ((1 - (-1) ^ n : ℚ) / 2) + (1 + (-1) ^ n : ℚ) / 2

end

end A066532.P15180921194300574676

noncomputable section

/-- A066532: If n is odd a(n) = 1, if n is even a(n) = 2^(n-1).

Offset 1, canonical program `A066532.P15180921194300574676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066532 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066532.P15180921194300574676.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066557.P759970560427044152

`floor((10^(n+1)-1)/(n+1))*(n+1)`
-/

namespace A066557.P759970560427044152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((10 ^ (n + 1) : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋ * (n + 1 : ℤ)

end

end A066557.P759970560427044152

noncomputable section

/-- A066557: Largest n-digit multiple of n.

Offset 1, canonical program `A066557.P759970560427044152`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066557 (n : ℕ) : ℤ :=
  A066557.P759970560427044152.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066558.P1575641468741182367

`floor((10^(n+1)-1)/(n+1))`
-/

namespace A066558.P1575641468741182367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((10 ^ (n + 1) : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A066558.P1575641468741182367

noncomputable section

/-- A066558: a(n) = A066557(n)/n.

Offset 1, canonical program `A066558.P1575641468741182367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066558 (n : ℕ) : ℤ :=
  A066558.P1575641468741182367.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066629.P3516911385192021662

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A066629.P3516911385192021662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 8] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A066629.P3516911385192021662

noncomputable section

/-- A066629: a(n) = 2*Fibonacci(n+2) + ((-1)^n - 3)/2.

Offset 0, canonical program `A066629.P3516911385192021662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066629 (n : ℕ) : ℤ :=
  A066629.P3516911385192021662.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066642.P16897421890588518632

`floor(n^(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066642.P16897421890588518632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

end

end A066642.P16897421890588518632

noncomputable section

/-- A066642: a(n) = floor(n^(n/2)).

Offset 0, canonical program `A066642.P16897421890588518632`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(n/2))` (program `A066642.P16897421890588518632`, by `A066642.P16897421890588518632.correct`). Lean does not check the parsing of the name. -/
def A066642 (n : ℕ) : ℤ :=
  A066642.P16897421890588518632.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n^(n/2))` (program `A066642.P16897421890588518632`, by `A066642.P16897421890588518632.correct`). Lean does not check the parsing of the name. -/
def A066642.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066644.P16665683560414241158

`floor(4*π*(n+1)²)`
-/

namespace A066644.P16665683560414241158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (Real.pi * ((n + 1) ^ 2 : ℝ))⌋

end

end A066644.P16665683560414241158

noncomputable section

/-- A066644: a(n) = floor(surface area of a sphere with radius n).

Offset 1, canonical program `A066644.P16665683560414241158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066644 (n : ℕ) : ℤ :=
  A066644.P16665683560414241158.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066645.P5022062718999659502

`floor(4/3*π*n^3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066645.P5022062718999659502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 : ℚ) / 3 : ℝ) * (Real.pi * (n ^ 3 : ℝ))⌋

end

end A066645.P5022062718999659502

noncomputable section

/-- A066645: a(n) = floor( (4/3)*Pi*n^3 ).

Offset 0, canonical program `A066645.P5022062718999659502`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4/3*π*n^3)` (program `A066645.P5022062718999659502`, by `A066645.P5022062718999659502.correct`). Lean does not check the parsing of the name. -/
def A066645 (n : ℕ) : ℤ :=
  A066645.P5022062718999659502.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4/3*π*n^3)` (program `A066645.P5022062718999659502`, by `A066645.P5022062718999659502.correct`). Lean does not check the parsing of the name. -/
def A066645.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066770.P15272350832997921281

`6*a(n-1)-25*a(n-2)` with `a(0)=4, a(1)=24`
-/

namespace A066770.P15272350832997921281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 24] fun n a =>
  6 * a (n - 1) - 25 * a (n - 2)

end

end A066770.P15272350832997921281

noncomputable section

/-- A066770: a(n) = 5^n*sin(2n*arctan(1/2)) or numerator of tan(2n*arctan(1/2)).

Offset 1, canonical program `A066770.P15272350832997921281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066770 (n : ℕ) : ℤ :=
  A066770.P15272350832997921281.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066770.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066771.P3131167813611666749

`6*a(n-1)-25*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A066771.P3131167813611666749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * a (n - 1) - 25 * a (n - 2)

end

end A066771.P3131167813611666749

noncomputable section

/-- A066771: a(n) = 5^n*cos(2*n*arctan(1/2)) or denominator of tan(2*n*arctan(1/2)).

Offset 0, canonical program `A066771.P3131167813611666749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066771 (n : ℕ) : ℤ :=
  A066771.P3131167813611666749.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066830.P18127611172649281958

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=15, a(4)=12, a(5)=35`
-/

namespace A066830.P18127611172649281958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 15, 12, 35] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A066830.P18127611172649281958

noncomputable section

/-- A066830: a(n) = lcm(n+1, n-1).

Offset 1, canonical program `A066830.P18127611172649281958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066830 (n : ℕ) : ℤ :=
  A066830.P18127611172649281958.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066830.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066982.P16000712910211817416

`a(n-1)+a(n-2)+n-1` with `a(0)=1, a(1)=1`
-/

namespace A066982.P16000712910211817416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) + ((n : ℤ) - 1)

end

end A066982.P16000712910211817416

noncomputable section

/-- A066982: a(n) = Lucas(n+1) - (n+1).

Offset 1, canonical program `A066982.P16000712910211817416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066982 (n : ℕ) : ℤ :=
  A066982.P16000712910211817416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066983.P9158293881669286122

`2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A066983.P9158293881669286122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  2 * a (n - 2) + a (n - 3)

end

end A066983.P9158293881669286122

noncomputable section

/-- A066983: a(n+2) = a(n+1) + a(n) + (-1)^n, with a(1) = a(2) = 1.

Offset 1, canonical program `A066983.P9158293881669286122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066983 (n : ℕ) : ℤ :=
  (A066983.P9158293881669286122.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066999.P116705358463195293

`3*a(n-1)+(n+1)^3` with `a(0)=1`
-/

namespace A066999.P116705358463195293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (n + 1) ^ 3

end

end A066999.P116705358463195293

noncomputable section

/-- A066999: a(n) = 3^n * Sum_{i=1..n} i^3/3^i.

Offset 1, canonical program `A066999.P116705358463195293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066999 (n : ℕ) : ℤ :=
  (A066999.P116705358463195293.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067010.P2608060975640535891

`22*a(n-2)+9*a(n-4)` with `a(0)=32, a(1)=33, a(2)=682, a(3)=779`
-/

namespace A067010.P2608060975640535891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [32, 33, 682, 779] fun n a =>
  22 * a (n - 2) + 9 * a (n - 4)

end

end A067010.P2608060975640535891

noncomputable section

/-- A067010: a(2n) and a(2n+1) are side lengths of a Beentjes sequence of perfect squared rectangles, starting with a 32 X 33 rectangle.

Offset 0, canonical program `A067010.P2608060975640535891`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067010 (n : ℕ) : ℤ :=
  (A067010.P2608060975640535891.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067011.P13845959895897160392

`22*a(n-2)+9*a(n-4)` with `a(0)=33, a(1)=32, a(2)=683, a(3)=781`
-/

namespace A067011.P13845959895897160392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [33, 32, 683, 781] fun n a =>
  22 * a (n - 2) + 9 * a (n - 4)

end

end A067011.P13845959895897160392

noncomputable section

/-- A067011: a(2n) and a(2n+1) are side lengths of a Beentjes sequence of perfect squared rectangles, starting with a 33 X 32 rectangle.

Offset 0, canonical program `A067011.P13845959895897160392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067011 (n : ℕ) : ℤ :=
  (A067011.P13845959895897160392.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067055.P12862384320138867781

`n!^(n*(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067055.P12862384320138867781
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) ^ ((n : ℚ) * ((n + 1 : ℚ) / 2) : ℝ)

end

end A067055.P12862384320138867781

noncomputable section

/-- A067055: a(n) = (n!)^(n*(n+1)/2).

Offset 0, canonical program `A067055.P12862384320138867781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067055 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067055.P12862384320138867781.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067060.P14309129114179668057

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=3, a(1)=1, a(2)=4, a(3)=2, a(4)=7`
-/

namespace A067060.P14309129114179668057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 4, 2, 7] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A067060.P14309129114179668057

noncomputable section

/-- A067060: A permutation of the positive integers in groups of four such that any two consecutive numbers differ by at least 2.

Offset 1, canonical program `A067060.P14309129114179668057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067060 (n : ℕ) : ℤ :=
  A067060.P14309129114179668057.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067080.P16301526241117869634

`(n+1)*a(floor((n+1)/10)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7, a(7)=8, a(8)=9`
-/

namespace A067080.P16301526241117869634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7, 8, 9] fun n a =>
  (n + 1) * a (⌊(n + 1 : ℚ) / 10⌋ - 1).toNat

end

end A067080.P16301526241117869634

noncomputable section

/-- A067080: If n = ab...def in decimal notation then the left digitorial function Ld(n) = ab...def*ab...de*ab...d*...*ab*a.

Offset 1, canonical program `A067080.P16301526241117869634`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067080 (n : ℕ) : ℤ :=
  (A067080.P16301526241117869634.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067080.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067099.P10224763880654855806

`floor(1/(2*sin(π/(n+3))))`
-/

namespace A067099.P10224763880654855806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (2 * Real.sin (Real.pi / (n + 3 : ℝ)))⌋

end

end A067099.P10224763880654855806

noncomputable section

/-- A067099: Floor[radius of the circumscribed circle of a regular n-gon with unit sides].

Offset 3, canonical program `A067099.P10224763880654855806`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067099 (n : ℕ) : ℤ :=
  A067099.P10224763880654855806.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067100.P7896498252395916471

`floor(cot(π/(n+3))/2)`
-/

namespace A067100.P7896498252395916471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.pi / (n + 3 : ℝ)) / 2⌋

end

end A067100.P7896498252395916471

noncomputable section

/-- A067100: Floor[radius of the inscribed-circle of a regular n-gon with unit sides].

Offset 3, canonical program `A067100.P7896498252395916471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067100 (n : ℕ) : ℤ :=
  A067100.P7896498252395916471.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067239.P8755021300817404734

`a(n-1)+32*n-24` with `a(0)=1, a(1)=8`
-/

namespace A067239.P8755021300817404734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + (32 * n : ℤ) - 24

end

end A067239.P8755021300817404734

noncomputable section

/-- A067239: a(0)=1, a(n) = 8*n*(2*n-1).

Offset 0, canonical program `A067239.P8755021300817404734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067239 (n : ℕ) : ℤ :=
  A067239.P8755021300817404734.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067251.P5430989431558208268

`n+1+floor(n/9)`
-/

namespace A067251.P5430989431558208268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊(n : ℚ) / 9⌋

end

end A067251.P5430989431558208268

noncomputable section

/-- A067251: Numbers with no trailing zeros in decimal representation.

Offset 1, canonical program `A067251.P5430989431558208268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067251 (n : ℕ) : ℤ :=
  A067251.P5430989431558208268.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067275.P9874333317425327769

`10*a(n-1)-3` with `a(0)=0, a(1)=1`
-/

namespace A067275.P9874333317425327769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  10 * a (n - 1) - 3

end

end A067275.P9874333317425327769

noncomputable section

/-- A067275: Number of Fibonacci numbers A000045(k), k <= 10^n, which end in 4.

Offset 0, canonical program `A067275.P9874333317425327769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067275 (n : ℕ) : ℤ :=
  A067275.P9874333317425327769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067318.P4371926111959039693

`(n+1)*a(n-1)+n*n!` with `a(0)=0, a(1)=1`
-/

namespace A067318.P4371926111959039693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1) * a (n - 1) + n * Nat.factorial n

end

end A067318.P4371926111959039693

noncomputable section

/-- A067318: Sum of the reflection lengths of all permutations of n letters.

Offset 1, canonical program `A067318.P4371926111959039693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067318 (n : ℕ) : ℤ :=
  (A067318.P4371926111959039693.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067331.P2883430465799452445

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=25`
-/

namespace A067331.P2883430465799452445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12, 25] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A067331.P2883430465799452445

noncomputable section

/-- A067331: Convolution of Fibonacci F(n+1), n >= 0, with F(n+3), n >= 0.

Offset 0, canonical program `A067331.P2883430465799452445`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067331 (n : ℕ) : ℤ :=
  A067331.P2883430465799452445.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067332.P854858703104768905

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=3, a(1)=8, a(2)=19, a(3)=40`
-/

namespace A067332.P854858703104768905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 19, 40] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A067332.P854858703104768905

noncomputable section

/-- A067332: Convolution of Fibonacci F(n+1), n>=0, with F(n+4), n>=0.

Offset 0, canonical program `A067332.P854858703104768905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067332 (n : ℕ) : ℤ :=
  A067332.P854858703104768905.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067334.P13359382140778625802

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=8, a(1)=21, a(2)=50, a(3)=105`
-/

namespace A067334.P13359382140778625802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 21, 50, 105] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A067334.P13359382140778625802

noncomputable section

/-- A067334: Convolution of Fibonacci F(n+1), n>=0, with F(n+6), n>=0.

Offset 0, canonical program `A067334.P13359382140778625802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067334 (n : ℕ) : ℤ :=
  A067334.P13359382140778625802.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067339.P13966282820832344326

`a(n-1)*(a(n-1)+1)/2+2` with `a(0)=2`
-/

namespace A067339.P13966282820832344326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((a (n - 1) + 1) / 2) + 2

end

end A067339.P13966282820832344326

noncomputable section

/-- A067339: Divide the natural numbers in sets of consecutive numbers, starting with {1,2}, each set with number of elements equal to the sum of elements of the preceding set. The final element of the n-th set gives a(n).

Offset 1, canonical program `A067339.P13966282820832344326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067339.P13966282820832344326.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067339.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067353.P15609335875187053528

`(n+1)*a(n-1)-n*(n-1)/2` with `a(0)=2`
-/

namespace A067353.P15609335875187053528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n + 1 : ℚ) * a (n - 1) - (n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2)

end

end A067353.P15609335875187053528

noncomputable section

/-- A067353: Divide the natural numbers in sets of consecutive numbers starting with {1,2} as the first set. The number of elements of the n-th set is equal to the sum of the n-1 final numbers in the (n-1)st set. The final number of the n-th set gives a(n).

Offset 1, canonical program `A067353.P15609335875187053528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067353.P15609335875187053528.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067358.P3739332946696833435

`10*a(n-1)-169*a(n-2)` with `a(0)=0, a(1)=12`
-/

namespace A067358.P3739332946696833435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12] fun n a =>
  10 * a (n - 1) - 169 * a (n - 2)

end

end A067358.P3739332946696833435

noncomputable section

/-- A067358: Imaginary part of (5+12i)^n.

Offset 0, canonical program `A067358.P3739332946696833435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067358 (n : ℕ) : ℤ :=
  A067358.P3739332946696833435.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067359.P16770837282952367462

`10*a(n-1)-169*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A067359.P16770837282952367462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  10 * a (n - 1) - 169 * a (n - 2)

end

end A067359.P16770837282952367462

noncomputable section

/-- A067359: Real part of (5 + 12i)^n.

Offset 1, canonical program `A067359.P16770837282952367462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067359 (n : ℕ) : ℤ :=
  A067359.P16770837282952367462.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067360.P14123033257591685291

`30*a(n-1)-289*a(n-2)` with `a(0)=8, a(1)=240`
-/

namespace A067360.P14123033257591685291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 240] fun n a =>
  30 * a (n - 1) - 289 * a (n - 2)

end

end A067360.P14123033257591685291

noncomputable section

/-- A067360: a(n) = 17^n sin(2n arctan(1/4)) or numerator of tan(2n arctan(1/4)).

Offset 1, canonical program `A067360.P14123033257591685291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067360 (n : ℕ) : ℤ :=
  A067360.P14123033257591685291.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067361.P9351002894098836174

`30*a(n-1)-289*a(n-2)` with `a(0)=15, a(1)=161`
-/

namespace A067361.P9351002894098836174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 161] fun n a =>
  30 * a (n - 1) - 289 * a (n - 2)

end

end A067361.P9351002894098836174

noncomputable section

/-- A067361: a(n) = 17^n*cos(2*n*arctan(1/4)) or denominator of tan(2*n*arctan(1/4)).

Offset 1, canonical program `A067361.P9351002894098836174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067361 (n : ℕ) : ℤ :=
  A067361.P9351002894098836174.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067419.P2287473286642241397

`12*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A067419.P2287473286642241397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  12 * a (n - 1)

end

end A067419.P2287473286642241397

noncomputable section

/-- A067419: Fourth column of triangle A067417.

Offset 0, canonical program `A067419.P2287473286642241397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067419 (n : ℕ) : ℤ :=
  (A067419.P2287473286642241397.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067420.P16277033960324451470

`15*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A067420.P16277033960324451470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  15 * a (n - 1)

end

end A067420.P16277033960324451470

noncomputable section

/-- A067420: Fifth column of triangle A067417.

Offset 0, canonical program `A067420.P16277033960324451470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067420 (n : ℕ) : ℤ :=
  (A067420.P16277033960324451470.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067421.P11459033084619437038

`18*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A067421.P11459033084619437038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  18 * a (n - 1)

end

end A067421.P11459033084619437038

noncomputable section

/-- A067421: Sixth column of triangle A067417.

Offset 0, canonical program `A067421.P11459033084619437038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067421 (n : ℕ) : ℤ :=
  (A067421.P11459033084619437038.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067422.P10911694884674045842

`21*a(n-1)` with `a(0)=1, a(1)=9`
-/

namespace A067422.P10911694884674045842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  21 * a (n - 1)

end

end A067422.P10911694884674045842

noncomputable section

/-- A067422: Seventh column of triangle A067417.

Offset 0, canonical program `A067422.P10911694884674045842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067422 (n : ℕ) : ℤ :=
  (A067422.P10911694884674045842.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067423.P8991997847526556743

`24*a(n-1)` with `a(0)=1, a(1)=10`
-/

namespace A067423.P8991997847526556743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  24 * a (n - 1)

end

end A067423.P8991997847526556743

noncomputable section

/-- A067423: Eighth column of triangle A067417.

Offset 0, canonical program `A067423.P8991997847526556743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067423 (n : ℕ) : ℤ :=
  (A067423.P8991997847526556743.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067426.P13256715690506206717

`ceil(9*24^(n-1))`
-/

namespace A067426.P13256715690506206717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * (24 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A067426.P13256715690506206717

noncomputable section

/-- A067426: Sixth column of triangle A067425.

Offset 0, canonical program `A067426.P13256715690506206717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067426 (n : ℕ) : ℤ :=
  A067426.P13256715690506206717.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067430.P16408898910722994529

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=13, a(1)=34, a(2)=81, a(3)=170`
-/

namespace A067430.P16408898910722994529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13, 34, 81, 170] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A067430.P16408898910722994529

noncomputable section

/-- A067430: Convolution of Fibonacci F(n+1), n>=0, with F(n+7), n>=0.

Offset 0, canonical program `A067430.P16408898910722994529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067430 (n : ℕ) : ℤ :=
  A067430.P16408898910722994529.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067472.P6719527458701129361

`ceil(sqrt(2*10^(n+1)))²`
-/

namespace A067472.P6719527458701129361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * 10 ^ (n + 1) : ℝ)⌉ ^ 2

end

end A067472.P6719527458701129361

noncomputable section

/-- A067472: Smallest n-digit square starting with 2.

Offset 2, canonical program `A067472.P6719527458701129361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067472 (n : ℕ) : ℤ :=
  A067472.P6719527458701129361.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067473.P6889147784083757504

`ceil(sqrt(3*10^(n+1)))²`
-/

namespace A067473.P6889147784083757504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (3 * 10 ^ (n + 1) : ℝ)⌉ ^ 2

end

end A067473.P6889147784083757504

noncomputable section

/-- A067473: Smallest n-digit square starting with 3.

Offset 2, canonical program `A067473.P6889147784083757504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067473 (n : ℕ) : ℤ :=
  A067473.P6889147784083757504.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067474.P16137602945229342153

`ceil(sqrt(4*10^n))²`
-/

namespace A067474.P16137602945229342153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (4 * 10 ^ n : ℝ)⌉ ^ 2

end

end A067474.P16137602945229342153

noncomputable section

/-- A067474: Smallest n-digit square starting with 4.

Offset 1, canonical program `A067474.P16137602945229342153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067474 (n : ℕ) : ℤ :=
  A067474.P16137602945229342153.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067475.P7789097694759456774

`ceil(sqrt(5*10^(n+2)))²`
-/

namespace A067475.P7789097694759456774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (5 * 10 ^ (n + 2) : ℝ)⌉ ^ 2

end

end A067475.P7789097694759456774

noncomputable section

/-- A067475: Smallest n-digit square starting with 5.

Offset 3, canonical program `A067475.P7789097694759456774`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067475 (n : ℕ) : ℤ :=
  A067475.P7789097694759456774.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067476.P12981035764265906753

`ceil(sqrt(6*10^(n+1)))²`
-/

namespace A067476.P12981035764265906753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (6 * 10 ^ (n + 1) : ℝ)⌉ ^ 2

end

end A067476.P12981035764265906753

noncomputable section

/-- A067476: Smallest n-digit square starting with 6.

Offset 2, canonical program `A067476.P12981035764265906753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067476 (n : ℕ) : ℤ :=
  A067476.P12981035764265906753.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067477.P3013669096841720414

`ceil(sqrt(7*10^(n+2)))²`
-/

namespace A067477.P3013669096841720414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (7 * 10 ^ (n + 2) : ℝ)⌉ ^ 2

end

end A067477.P3013669096841720414

noncomputable section

/-- A067477: Smallest n-digit square starting with 7.

Offset 3, canonical program `A067477.P3013669096841720414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067477 (n : ℕ) : ℤ :=
  A067477.P3013669096841720414.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067478.P17314618488285642705

`ceil(sqrt(8*10^(n+1)))²`
-/

namespace A067478.P17314618488285642705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (8 * 10 ^ (n + 1) : ℝ)⌉ ^ 2

end

end A067478.P17314618488285642705

noncomputable section

/-- A067478: Smallest n-digit square starting with 8.

Offset 2, canonical program `A067478.P17314618488285642705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067478 (n : ℕ) : ℤ :=
  A067478.P17314618488285642705.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067488.P10416879168026951780

`2^ceil(n*log(10)/log(2))`
-/

namespace A067488.P10416879168026951780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℝ) * Real.log (10 : ℝ) / Real.log (2 : ℝ)⌉ : ℤ)

end

end A067488.P10416879168026951780

noncomputable section

/-- A067488: Powers of 2 with initial digit 1.

Offset 1, canonical program `A067488.P10416879168026951780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067488 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067488.P10416879168026951780.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067497.P1379721111122819957

`ceil(n*log2(10))`
-/

namespace A067497.P1379721111122819957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.logb 2 (10 : ℝ)⌉

end

end A067497.P1379721111122819957

noncomputable section

/-- A067497: Smallest k for which 2^k is n+1 decimal digits long, and equivalently numbers k such that 1 is the first digit of 2^k.

Offset 0, canonical program `A067497.P1379721111122819957`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067497 (n : ℕ) : ℤ :=
  A067497.P1379721111122819957.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067534.P17280178159656179340

`4*a(n-1)+(n+1)^4` with `a(0)=1`
-/

namespace A067534.P17280178159656179340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + (n + 1) ^ 4

end

end A067534.P17280178159656179340

noncomputable section

/-- A067534: a(n) = 4^n * Sum_{i=1..n} i^4/4^i.

Offset 1, canonical program `A067534.P17280178159656179340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067534 (n : ℕ) : ℤ :=
  (A067534.P17280178159656179340.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067550.P2915293281010861943

`n!*(n+3)!/(3*2^(n+1))`
-/

namespace A067550.P2915293281010861943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * Nat.factorial (n + 3) : ℚ) / (3 * 2 ^ (n + 1) : ℚ)

end

end A067550.P2915293281010861943

noncomputable section

/-- A067550: a(n) = (n-1)!(n+2)!/(3*2^n).

Offset 1, canonical program `A067550.P2915293281010861943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067550.P2915293281010861943.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067556.P2130873490670003943

`1/7*(5^(n+1)*10^((n+1)%6)-1)`
-/

namespace A067556.P2130873490670003943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 7 * ((5 ^ (n + 1) * 10 ^ ((n + 1) % 6) : ℤ) - 1 : ℚ)

end

end A067556.P2130873490670003943

noncomputable section

/-- A067556: Terms in the decimal expansion of 1/(7*2^n) before the block of decimals 142857 (the period of 1/7) appears.

Offset 1, canonical program `A067556.P2130873490670003943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067556.P2130873490670003943.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067556.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067623.P12723816654749283554

`3^n*a(floor(n/3))` with `a(0)=1`
-/

namespace A067623.P12723816654749283554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 ^ n * a ⌊(n : ℚ) / 3⌋.toNat

end

end A067623.P12723816654749283554

noncomputable section

/-- A067623: Consider the power series (x+1)^(1/3)=1+x/3-x^2/9+5x^3/81+...; sequence gives denominators of coefficients.

Offset 0, canonical program `A067623.P12723816654749283554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067623 (n : ℕ) : ℤ :=
  (A067623.P12723816654749283554.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067628.P11261685792341375981

`2*ceil((n+sqrt(6*n))/2)-n`
-/

namespace A067628.P11261685792341375981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈((n : ℝ) + Real.sqrt (6 * n : ℝ)) / 2⌉ - (n : ℤ)

end

end A067628.P11261685792341375981

noncomputable section

/-- A067628: Minimal perimeter of polyiamond with n triangles.

Offset 0, canonical program `A067628.P11261685792341375981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067628 (n : ℕ) : ℤ :=
  A067628.P11261685792341375981.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067630.P2395894801648612813

`(64*n^4-96*n^3+44*n²-6*n)*a(n-1)` with `a(0)=1`
-/

namespace A067630.P2395894801648612813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((64 * n ^ 4 : ℤ) - (96 * n ^ 3 : ℤ) + (44 * n ^ 2 : ℤ) - (6 * n : ℤ)) * a (n - 1)

end

end A067630.P2395894801648612813

noncomputable section

/-- A067630: a(n) = (4*n)! / 4^n.

Offset 0, canonical program `A067630.P2395894801648612813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067630 (n : ℕ) : ℤ :=
  A067630.P2395894801648612813.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067636.P9941358980440956853

`(2*n+2)!*(2*n+4)!/(n!*(n+2)!²*(n+3)!)`
-/

namespace A067636.P9941358980440956853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 2) * Nat.factorial (2 * n + 4) : ℚ) / (Nat.factorial n * Nat.factorial (n + 2) ^ 2 * Nat.factorial (n + 3) : ℚ)

end

end A067636.P9941358980440956853

noncomputable section

/-- A067636: Row 1 of table in A067640.

Offset 0, canonical program `A067636.P9941358980440956853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067636 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067636.P9941358980440956853.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067667.P17747516719831646261

`(2^n)!/2^(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067667.P17747516719831646261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 ^ n) : ℚ) / (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ)

end

end A067667.P17747516719831646261

noncomputable section

/-- A067667: a(n) = (2^n)!/2^(2^n-1).

Offset 0, canonical program `A067667.P17747516719831646261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067667.P17747516719831646261.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067686.P4909967033697860206

`a(n-1)*(a(n-1)-7)+7` with `a(0)=8`
-/

namespace A067686.P4909967033697860206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) * (a (n - 1) - 7) + 7

end

end A067686.P4909967033697860206

noncomputable section

/-- A067686: a(n) = a(n-1) * a(n-1) - B * a(n-1) + B, a(0) = 1 + B for B = 7.

Offset 0, canonical program `A067686.P4909967033697860206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067686 (n : ℕ) : ℤ :=
  A067686.P4909967033697860206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067691.P12742204699060189386

`(a(n-1)+1)^(n-1)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A067691.P12742204699060189386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 1) ^ ((n : ℤ) - 1 : ℤ)

end

end A067691.P12742204699060189386

noncomputable section

/-- A067691: a(n) = (a(n-1) + 1)^(n-1) for n > 0, a(0) = 0.

Offset 0, canonical program `A067691.P12742204699060189386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067691 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067691.P12742204699060189386.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067699.P13286580728195762838

`2*ceil((n+2)/2)+a(ceil((n+1)/2)-1)+a(floor((n+1)/2)-1)` with `a(0)=0`
-/

namespace A067699.P13286580728195762838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ⌈(n + 2 : ℚ) / 2⌉ + a (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat + a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat

end

end A067699.P13286580728195762838

noncomputable section

/-- A067699: Number of comparisons made in a version of the sorting algorithm QuickSort for an array of size n with n identical elements.

Offset 1, canonical program `A067699.P13286580728195762838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067699 (n : ℕ) : ℤ :=
  A067699.P13286580728195762838.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067744.P12619025824766221584

`round((2*π/3^(3/2)*(6*(n+2)-5)/6)^(3/2))`
-/

namespace A067744.P12619025824766221584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (Real.pi / (3 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)) * (((6 * (n + 2) : ℤ) - 5 : ℚ) / 6 : ℝ)) ^ ((3 : ℚ) / 2 : ℝ))

end

end A067744.P12619025824766221584

noncomputable section

/-- A067744: Number of terms yielding particularly small errors in a numerical integration of exp((cos(x)-1)/(cos(x)+1)) having non-monotonic sub-geometric convergence.

Offset 2, canonical program `A067744.P12619025824766221584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067744 (n : ℕ) : ℤ :=
  A067744.P12619025824766221584.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067749.P16300885776624889877

`2*a(n-1)-a(n-2)` with `a(0)=87, a(1)=187`
-/

namespace A067749.P16300885776624889877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [87, 187] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A067749.P16300885776624889877

noncomputable section

/-- A067749: Numbers k such that k and 3^k end with the same two digits.

Offset 1, canonical program `A067749.P16300885776624889877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067749 (n : ℕ) : ℤ :=
  A067749.P16300885776624889877.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067761.P4795784631609582241

`a(n-6)+35` with `a(0)=5, a(1)=10, a(2)=15, a(3)=20, a(4)=25, a(5)=30`
-/

namespace A067761.P4795784631609582241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 10, 15, 20, 25, 30] fun n a =>
  a (n - 6) + 35

end

end A067761.P4795784631609582241

noncomputable section

/-- A067761: Positive integers divisible by 5 but not by 7.

Offset 1, canonical program `A067761.P4795784631609582241`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067761 (n : ℕ) : ℤ :=
  (A067761.P4795784631609582241.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067771.P15536293959813524838

`3*a(n-1)-3` with `a(0)=3`
-/

namespace A067771.P15536293959813524838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (n - 1) - 3

end

end A067771.P15536293959813524838

noncomputable section

/-- A067771: Number of vertices in Sierpiński triangle of order n.

Offset 0, canonical program `A067771.P15536293959813524838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067771 (n : ℕ) : ℤ :=
  A067771.P15536293959813524838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067844.P15021944009808777686

`10*(n+1)-4*(-1)^(n+1)`
-/

namespace A067844.P15021944009808777686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * (n + 1) : ℤ) - 4 * (-1) ^ (n + 1)

end

end A067844.P15021944009808777686

noncomputable section

/-- A067844: Numbers k such that k and 2^k end with the same digit.

Offset 1, canonical program `A067844.P15021944009808777686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067844 (n : ℕ) : ℤ :=
  A067844.P15021944009808777686.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067844.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067865.P6950762193816359348

`2*a(n-1)-a(n-2)` with `a(0)=36, a(1)=136`
-/

namespace A067865.P6950762193816359348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [36, 136] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A067865.P6950762193816359348

noncomputable section

/-- A067865: Numbers n such that n and 2^n end with the same two digits.

Offset 1, canonical program `A067865.P6950762193816359348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067865 (n : ℕ) : ℤ :=
  A067865.P6950762193816359348.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067866.P7326673974600323700

`736+1000*n`
-/

namespace A067866.P7326673974600323700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  736 + 1000 * n

end

end A067866.P7326673974600323700

noncomputable section

/-- A067866: Numbers n such that n and 2^n end with the same three digits.

Offset 1, canonical program `A067866.P7326673974600323700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067866 (n : ℕ) : ℤ :=
  (A067866.P7326673974600323700.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067866.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067868.P2949719373633979561

`a(n-1)+a(floor(n/2))²` with `a(0)=1`
-/

namespace A067868.P2949719373633979561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat ^ 2

end

end A067868.P2949719373633979561

noncomputable section

/-- A067868: a(n) = a(n-1) + a(floor(n/2))^2 for n > 0, a(0) = 1.

Offset 0, canonical program `A067868.P2949719373633979561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067868 (n : ℕ) : ℤ :=
  (A067868.P2949719373633979561.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067870.P964946976463771286

`20*n-a(n-1)` with `a(0)=7`
-/

namespace A067870.P964946976463771286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (20 * n : ℤ) - a (n - 1)

end

end A067870.P964946976463771286

noncomputable section

/-- A067870: Numbers k such that k and 3^k end with the same digit.

Offset 1, canonical program `A067870.P964946976463771286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067870 (n : ℕ) : ℤ :=
  A067870.P964946976463771286.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067882.P15519907872735892579

`floor((n+1)!*log(2))-(n+1)*floor(n!*log(2))`
-/

namespace A067882.P15519907872735892579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℝ) * Real.log (2 : ℝ)⌋ - (n + 1 : ℤ) * ⌊(Nat.factorial n : ℝ) * Real.log (2 : ℝ)⌋

end

end A067882.P15519907872735892579

noncomputable section

/-- A067882: Factorial expansion of log(2) = Sum_{n>=1} a(n)/n!.

Offset 1, canonical program `A067882.P15519907872735892579`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067882 (n : ℕ) : ℤ :=
  A067882.P15519907872735892579.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067882.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067895.P8743565247918585657

`22*a(n-1)-40*a(n-2)` with `a(0)=1, a(1)=21`
-/

namespace A067895.P8743565247918585657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  22 * a (n - 1) - 40 * a (n - 2)

end

end A067895.P8743565247918585657

noncomputable section

/-- A067895: Write 2^n, 2^n+1, 2^n+2, ..., 2^(n+1)-1 in binary and add as if they were decimal numbers.

Offset 0, canonical program `A067895.P8743565247918585657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067895 (n : ℕ) : ℤ :=
  A067895.P8743565247918585657.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068010.P8679337915236840263

`2*a(n-3)+2^(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A068010.P8679337915236840263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A068010.P8679337915236840263

noncomputable section

/-- A068010: Number of subsets of {1,2,3,...,n} that sum to 0 mod 3.

Offset 0, canonical program `A068010.P8679337915236840263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068010 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068010.P8679337915236840263.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068082.P13594583604330320635

`10*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=21, a(4)=190`
-/

namespace A068082.P13594583604330320635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10, 21, 190] fun n a =>
  10 * a (n - 1) - 9 * a (n - 2)

end

end A068082.P13594583604330320635

noncomputable section

/-- A068082: a(1) = 1, a(n) = smallest triangular number of the form k*a(n-1) + 1 for some positive integer k.

Offset 0, canonical program `A068082.P13594583604330320635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068082 (n : ℕ) : ℤ :=
  A068082.P13594583604330320635.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068087.P1756694442987373916

`(n+1)^(2*(n+1)-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068087.P1756694442987373916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ)

end

end A068087.P1756694442987373916

noncomputable section

/-- A068087: a(n) = n^(2*n-2).

Offset 1, canonical program `A068087.P1756694442987373916`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068087 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068087.P1756694442987373916.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068092.P3786387799136448240

`round(sqrt(2*10^n))`
-/

namespace A068092.P3786387799136448240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * 10 ^ n : ℝ))

end

end A068092.P3786387799136448240

noncomputable section

/-- A068092: Index of smallest triangular number with n digits.

Offset 1, canonical program `A068092.P3786387799136448240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068092 (n : ℕ) : ℤ :=
  A068092.P3786387799136448240.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068092.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068156.P1770333181684600762

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A068156.P1770333181684600762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A068156.P1770333181684600762

noncomputable section

/-- A068156: G.f.: (x+2)*(x+1)/((x-1)*(x-2)) = Sum_{n>=0} a(n)*(x/2)^n.

Offset 0, canonical program `A068156.P1770333181684600762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068156 (n : ℕ) : ℤ :=
  A068156.P1770333181684600762.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068156.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068179.P16842971898579560751

`5*2^(n+1)+6^(n+1)-5*3^(n+1)`
-/

namespace A068179.P16842971898579560751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 2 ^ (n + 1) + 6 ^ (n + 1) : ℤ) - (5 * 3 ^ (n + 1) : ℤ)

end

end A068179.P16842971898579560751

noncomputable section

/-- A068179: Product_{i=1..3} (i+x) / Product_{i=1..3} (i-x) = Sum_{n>=0} (a(n)/b(n))*x^n.

Offset 0, canonical program `A068179.P16842971898579560751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068179 (n : ℕ) : ℤ :=
  A068179.P16842971898579560751.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068203.P6636843592554519852

`30*a(n-1)-a(n-2)` with `a(0)=1, a(1)=15`
-/

namespace A068203.P6636843592554519852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15] fun n a =>
  30 * a (n - 1) - a (n - 2)

end

end A068203.P6636843592554519852

noncomputable section

/-- A068203: Chebyshev T-polynomials T(n,15) with Diophantine property.

Offset 0, canonical program `A068203.P6636843592554519852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068203 (n : ℕ) : ℤ :=
  A068203.P6636843592554519852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068204.P5055730914267291819

`30*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A068204.P5055730914267291819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  30 * a (n - 1) - a (n - 2)

end

end A068204.P5055730914267291819

noncomputable section

/-- A068204: Let (x_n, y_n) be n-th solution to the Pell equation x^2 = 14*y^2 + 1. Sequence gives {y_n}.

Offset 1, canonical program `A068204.P5055730914267291819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068204 (n : ℕ) : ℤ :=
  A068204.P5055730914267291819.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068217.P1284071991272962723

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=4, a(2)=2, a(3)=8, a(4)=10, a(5)=4`
-/

namespace A068217.P1284071991272962723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 2, 8, 10, 4] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A068217.P1284071991272962723

noncomputable section

/-- A068217: Denominators of coefficients in 3*log(sqrt(1+x)) power series.

Offset 1, canonical program `A068217.P1284071991272962723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068217 (n : ℕ) : ℤ :=
  A068217.P1284071991272962723.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068236.P8866221321753829906

`(n+2)^5-2*(n+1)^5+n^5`
-/

namespace A068236.P8866221321753829906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 5 : ℤ) - (2 * (n + 1) ^ 5 : ℤ) + (n ^ 5 : ℤ)

end

end A068236.P8866221321753829906

noncomputable section

/-- A068236: First differences of (n+1)^5 - n^5.

Offset 0, canonical program `A068236.P8866221321753829906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068236 (n : ℕ) : ℤ :=
  A068236.P8866221321753829906.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068250.P2553707168632581841

`(n+2)*(n+3)*((n+4)²-5*(n+4)+7)*(n+1)^4*(n+4)/24`
-/

namespace A068250.P2553707168632581841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * ((n + 3 : ℤ) * ((((n + 4) ^ 2 : ℤ) - (5 * (n + 4) : ℤ) + 7) * ((n + 1) ^ 4 : ℤ))) : ℚ) * ((n + 4 : ℚ) / 24)

end

end A068250.P2553707168632581841

noncomputable section

/-- A068250: 1/24 the number of colorings of a 3 X 3 octagonal array with n colors.

Offset 4, canonical program `A068250.P2553707168632581841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068250.P2553707168632581841.a (n - 4))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068293.P8754097377432460261

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=6, a(2)=18`
-/

namespace A068293.P8754097377432460261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 18] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A068293.P8754097377432460261

noncomputable section

/-- A068293: a(1) = 1; thereafter a(n) = 6*(2^(n-1) - 1).

Offset 1, canonical program `A068293.P8754097377432460261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068293 (n : ℕ) : ℤ :=
  A068293.P8754097377432460261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068377.P14171198910882807529

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=6, a(2)=20, a(3)=42`
-/

namespace A068377.P14171198910882807529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 20, 42] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A068377.P14171198910882807529

noncomputable section

/-- A068377: Engel expansion of sinh(1).

Offset 1, canonical program `A068377.P14171198910882807529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068377 (n : ℕ) : ℤ :=
  A068377.P14171198910882807529.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068379.P11485449252466730629

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=24, a(2)=80, a(3)=168`
-/

namespace A068379.P11485449252466730629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 24, 80, 168] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A068379.P11485449252466730629

noncomputable section

/-- A068379: Engel expansion of sinh(1/2).

Offset 1, canonical program `A068379.P11485449252466730629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068379 (n : ℕ) : ℤ :=
  A068379.P11485449252466730629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068380.P8903160775293879707

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=3, a(1)=54, a(2)=180, a(3)=378`
-/

namespace A068380.P8903160775293879707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 54, 180, 378] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A068380.P8903160775293879707

noncomputable section

/-- A068380: Engel expansion of sinh(1/3).

Offset 1, canonical program `A068380.P8903160775293879707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068380 (n : ℕ) : ℤ :=
  A068380.P8903160775293879707.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068397.P17834049133524278927

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=9`
-/

namespace A068397.P17834049133524278927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 4, 9] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A068397.P17834049133524278927

noncomputable section

/-- A068397: a(n) = Lucas(n) + (-1)^n + 1.

Offset 1, canonical program `A068397.P17834049133524278927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068397 (n : ℕ) : ℤ :=
  A068397.P17834049133524278927.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068449.P3233074658566794342

`floor((n+1)!*log(π/2))-(n+1)*floor(n!*log(π/2))`
-/

namespace A068449.P3233074658566794342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℝ) * Real.log (Real.pi / 2)⌋ - (n + 1 : ℤ) * ⌊(Nat.factorial n : ℝ) * Real.log (Real.pi / 2)⌋

end

end A068449.P3233074658566794342

noncomputable section

/-- A068449: Factorial expansion of log(Pi/2) = sum n>0 a(n)/n!.

Offset 1, canonical program `A068449.P3233074658566794342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068449 (n : ℕ) : ℤ :=
  A068449.P3233074658566794342.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068491.P13525769717976008257

`floor((n^3+3*n²+(18+3*(-1)^n)*n+36)/36)`
-/

namespace A068491.P13525769717976008257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 3 + 3 * n ^ 2 : ℤ) + (18 + 3 * (-1) ^ n) * (n : ℤ) + 36 : ℚ) / 36⌋

end

end A068491.P13525769717976008257

noncomputable section

/-- A068491: Expansion of Molien series for a certain 4-D group of order 96.

Offset 0, canonical program `A068491.P13525769717976008257`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068491 (n : ℕ) : ℤ :=
  A068491.P13525769717976008257.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068496.P16008085768783862985

`(n+1)!%(2^(n+1))`
-/

namespace A068496.P16008085768783862985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) % 2 ^ (n + 1)

end

end A068496.P16008085768783862985

noncomputable section

/-- A068496: a(n) = n! reduced mod 2^n.

Offset 1, canonical program `A068496.P16008085768783862985`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068496 (n : ℕ) : ℤ :=
  (A068496.P16008085768783862985.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068527.P16594543609173014161

`ceil(sqrt(n))²-n`
-/

namespace A068527.P16594543609173014161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)

end

end A068527.P16594543609173014161

noncomputable section

/-- A068527: Difference between smallest square >= n and n.

Offset 0, canonical program `A068527.P16594543609173014161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068527 (n : ℕ) : ℤ :=
  A068527.P16594543609173014161.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068531.P11524486685135021709

`(3^2^(n+1)-1)/2^(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A068531.P11524486685135021709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ 2 ^ (n + 1) : ℤ) - 1 : ℚ) / (2 ^ (n + 3) : ℚ)

end

end A068531.P11524486685135021709

noncomputable section

/-- A068531: a(n) = (3^(2^n) - 1)/2^(n + 2).

Offset 1, canonical program `A068531.P11524486685135021709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068531 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068531.P11524486685135021709.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068605.P17851244163823024288

`C(n+2, 2)*(2^(n+2)-2)`
-/

namespace A068605.P17851244163823024288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * ((2 ^ (n + 2) : ℤ) - 2)

end

end A068605.P17851244163823024288

noncomputable section

/-- A068605: Number of functions from [1,2,...,n] to [1,2,...,n] such that the image contains exactly two elements.

Offset 2, canonical program `A068605.P17851244163823024288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068605 (n : ℕ) : ℤ :=
  A068605.P17851244163823024288.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068626.P5228562958192297829

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=7, a(4)=12, a(5)=12, a(6)=19`
-/

namespace A068626.P5228562958192297829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 7, 12, 12, 19] fun n a =>
  a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4) - a (n - 6) + a (n - 7)

end

end A068626.P5228562958192297829

noncomputable section

/-- A068626: a(3n) = a(3n-1) = 3*n^2, a(3n-2) = 3*n^2 - 3*n + 1.

Offset 1, canonical program `A068626.P5228562958192297829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068626 (n : ℕ) : ℤ :=
  A068626.P5228562958192297829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068628.P15376073080134531172

`12*(4*(n+1)-3)*n`
-/

namespace A068628.P15376073080134531172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (((4 * (n + 1) : ℤ) - 3) * (n : ℤ))

end

end A068628.P15376073080134531172

noncomputable section

/-- A068628: Numbers occurring twice in A068627.

Offset 1, canonical program `A068628.P15376073080134531172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068628 (n : ℕ) : ℤ :=
  A068628.P15376073080134531172.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068639.P13920701701106592336

`ceil(n/2)-a(n-ceil(n/2))` with `a(0)=0`
-/

namespace A068639.P13920701701106592336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(n : ℚ) / 2⌉ - a ((n : ℤ) - ⌈(n : ℚ) / 2⌉).toNat

end

end A068639.P13920701701106592336

noncomputable section

/-- A068639: a(0) = 0, a(n) = a(n-1) + (-1)^p(n) for n >= 1, where p(n) = highest power of 2 dividing n.

Offset 0, canonical program `A068639.P13920701701106592336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068639 (n : ℕ) : ℤ :=
  A068639.P13920701701106592336.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068639.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068722.P15004994183655715878

`(1+2*n+2*n²)*(1+3*n+3*n²)`
-/

namespace A068722.P15004994183655715878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + 2 * n + 2 * n ^ 2) * (1 + 3 * n + 3 * n ^ 2)

end

end A068722.P15004994183655715878

noncomputable section

/-- A068722: Number of solenoidal flows (flow in = flow out) in a 3 X 3 square array with integer velocities -n .. n.

Offset 0, canonical program `A068722.P15004994183655715878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068722 (n : ℕ) : ℤ :=
  (A068722.P15004994183655715878.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068769.P8669857018943178956

`(168*(2-n)*a(n-2)+14*(2*n-1)*a(n-1))/(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A068769.P8669857018943178956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (168 * ((2 - (n : ℤ) : ℚ) * a (n - 2)) + 14 * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1))) / (n + 1 : ℚ)

end

end A068769.P8669857018943178956

noncomputable section

/-- A068769: Generalized Catalan numbers 7*x*A(x)^2 -A(x) +1 -6*x=0.

Offset 0, canonical program `A068769.P8669857018943178956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068769 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068769.P8669857018943178956.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068771.P7034023627033263953

`(288*(2-n)*a(n-2)+18*(2*n-1)*a(n-1))/(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A068771.P7034023627033263953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (288 * ((2 - (n : ℤ) : ℚ) * a (n - 2)) + 18 * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1))) / (n + 1 : ℚ)

end

end A068771.P7034023627033263953

noncomputable section

/-- A068771: Generalized Catalan numbers 9*x*A(x)^2 -A(x) +1 -8*x=0.

Offset 0, canonical program `A068771.P7034023627033263953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068771 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068771.P7034023627033263953.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068772.P15639350334178717250

`(360*(2-n)*a(n-2)+20*(2*n-1)*a(n-1))/(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A068772.P15639350334178717250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (360 * ((2 - (n : ℤ) : ℚ) * a (n - 2)) + 20 * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1))) / (n + 1 : ℚ)

end

end A068772.P15639350334178717250

noncomputable section

/-- A068772: Generalized Catalan numbers 10*x*A(x)^2 -A(x) +1 -9*x =0.

Offset 0, canonical program `A068772.P15639350334178717250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068772 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068772.P15639350334178717250.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068792.P1636343819888297812

`(((n+2)^(n+1)-1)/(n+1))²`
-/

namespace A068792.P1636343819888297812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n + 2) ^ (n + 1) : ℤ) - 1 : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A068792.P1636343819888297812

noncomputable section

/-- A068792: a(n) = (n-1)*n^(n-2) + Sum_{i=1..n} (n-i)*(n^(n-i-1) + n^(n+i-3)).

Offset 2, canonical program `A068792.P1636343819888297812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068792 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068792.P1636343819888297812.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068792.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068793.P1211834704252003361

`((n+2)^(n+2)*((n+2)^(n+2)*n+2)-(n+2)²+n+1)/(n+1)²`
-/

namespace A068793.P1211834704252003361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ (n + 2) * ((n + 2) ^ (n + 2) * n + 2) : ℤ) - ((n + 2) ^ 2 : ℤ) + (n + 1 : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A068793.P1211834704252003361

noncomputable section

/-- A068793: a(n) = Sum_{i=1..n} i*(n^(n-i-1) + n^(n+i-1)).

Offset 2, canonical program `A068793.P1211834704252003361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068793 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068793.P1211834704252003361.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068911.P11224025969434433245

`3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A068911.P11224025969434433245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * a (n - 2)

end

end A068911.P11224025969434433245

noncomputable section

/-- A068911: Number of n-step walks (each step +-1 starting from 0) which are never more than 2 or less than -2.

Offset 0, canonical program `A068911.P11224025969434433245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068911 (n : ℕ) : ℤ :=
  (A068911.P11224025969434433245.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068912.P9985970511912984352

`4*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A068912.P9985970511912984352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  4 * a (n - 2) - 2 * a (n - 4)

end

end A068912.P9985970511912984352

noncomputable section

/-- A068912: Number of n step walks (each step +/ -1 starting from 0) which are never more than 3 or less than -3.

Offset 0, canonical program `A068912.P9985970511912984352`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068912 (n : ℕ) : ℤ :=
  A068912.P9985970511912984352.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068921.P14390823611597591154

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A068921.P14390823611597591154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 3)

end

end A068921.P14390823611597591154

noncomputable section

/-- A068921: Number of ways to tile a 2 X n room with 1 X 2 Tatami mats. At most 3 Tatami mats may meet at a point.

Offset 0, canonical program `A068921.P14390823611597591154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068921 (n : ℕ) : ℤ :=
  (A068921.P14390823611597591154.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068922.P4974104702800734513

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A068922.P4974104702800734513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6] fun n a =>
  a (n - 1) + a (n - 2)

end

end A068922.P4974104702800734513

noncomputable section

/-- A068922: Number of ways to tile a 3 X 2n room with 1 X 2 Tatami mats. At most 3 Tatami mats may meet at a point.

Offset 1, canonical program `A068922.P4974104702800734513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068922 (n : ℕ) : ℤ :=
  (A068922.P4974104702800734513.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068923.P4744788943475700446

`a(n-3)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=2, a(4)=3, a(5)=3, a(6)=3, a(7)=5`
-/

namespace A068923.P4744788943475700446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 2, 3, 3, 3, 5] fun n a =>
  a (n - 3) + a (n - 5)

end

end A068923.P4744788943475700446

noncomputable section

/-- A068923: Number of ways to tile a 4 X n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

Offset 1, canonical program `A068923.P4744788943475700446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068923 (n : ℕ) : ℤ :=
  (A068923.P4744788943475700446.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068924.P2546220936895595989

`a(n-2)+a(n-3)` with `a(0)=6, a(1)=3, a(2)=2, a(3)=2, a(4)=4, a(5)=4, a(6)=6`
-/

namespace A068924.P2546220936895595989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 3, 2, 2, 4, 4, 6] fun n a =>
  a (n - 2) + a (n - 3)

end

end A068924.P2546220936895595989

noncomputable section

/-- A068924: Number of ways to tile a 5 X 2n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

Offset 1, canonical program `A068924.P2546220936895595989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068924 (n : ℕ) : ℤ :=
  (A068924.P2546220936895595989.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068928.P9095793775632633845

`a(n-1)+2*a(n-2)-a(n-3)-a(n-5)-a(n-6)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=4, a(4)=5, a(5)=9, a(6)=12`
-/

namespace A068928.P9095793775632633845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 4, 5, 9, 12] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 5) - a (n - 6)

end

end A068928.P9095793775632633845

noncomputable section

/-- A068928: Number of incongruent ways to tile a 3 X 2n room with 1x2 Tatami mats. At most 3 Tatami mats may meet at a point.

Offset 1, canonical program `A068928.P9095793775632633845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068928 (n : ℕ) : ℤ :=
  A068928.P9095793775632633845.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069006.P4434490563107905522

`3*a(n-1)+3*a(n-2)-4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=29, a(4)=105`
-/

namespace A069006.P4434490563107905522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9, 29, 105] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) - 4 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A069006.P4434490563107905522

noncomputable section

/-- A069006: Let M denote the 5 X 5 matrix with rows /1,1,1,1,1/1,1,1,1,0/1,1,1,0,0/1,1,0,0,0/1,0,0,0,0/ and A(n) = vector (x(n),y(n),z(n),t(n),u(n)) = M^n*A where A is the vector (1,1,1,1,1); then a(n) = t(n).

Offset 0, canonical program `A069006.P4434490563107905522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069006 (n : ℕ) : ℤ :=
  A069006.P4434490563107905522.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069015.P13411419148294257333

`3*(n+1)*a(n-1)+n!` with `a(0)=1`
-/

namespace A069015.P13411419148294257333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((n + 1) * a (n - 1)) + Nat.factorial n

end

end A069015.P13411419148294257333

noncomputable section

/-- A069015: a(n) = n! * 3^n * Sum_{i=1..n} 1/(i * 3^i).

Offset 1, canonical program `A069015.P13411419148294257333`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069015 (n : ℕ) : ℤ :=
  (A069015.P13411419148294257333.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069099.P12335597801895064299

`7*n+a(n-1)` with `a(0)=1`
-/

namespace A069099.P12335597801895064299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * n + a (n - 1)

end

end A069099.P12335597801895064299

noncomputable section

/-- A069099: Centered heptagonal numbers.

Offset 1, canonical program `A069099.P12335597801895064299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069099 (n : ℕ) : ℤ :=
  (A069099.P12335597801895064299.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069121.P16200525854911329356

`a(n-1)*(4*n-2)*n^3/(n-1)^4` with `a(0)=0, a(1)=2`
-/

namespace A069121.P16200525854911329356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) * (((4 * n : ℤ) - 2) * (n ^ 3 : ℤ) : ℚ) / (((n : ℤ) - 1) ^ 4 : ℚ)

end

end A069121.P16200525854911329356

noncomputable section

/-- A069121: a(n) = n^4*binomial(2*n,n).

Offset 0, canonical program `A069121.P16200525854911329356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069121 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069121.P16200525854911329356.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069121.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069125.P7085178367733847533

`11*n+a(n-1)` with `a(0)=1`
-/

namespace A069125.P7085178367733847533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  11 * n + a (n - 1)

end

end A069125.P7085178367733847533

noncomputable section

/-- A069125: a(n) = (11*n^2 - 11*n + 2)/2.

Offset 1, canonical program `A069125.P7085178367733847533`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*(n+1)²-11*(n+1)+2)/2` (program `A069125.P10502233020917627447`, by `A069125.P10502233020917627447.correct`). Lean does not check the parsing of the name. -/
def A069125 (n : ℕ) : ℤ :=
  (A069125.P7085178367733847533.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*(n+1)²-11*(n+1)+2)/2` (program `A069125.P10502233020917627447`, by `A069125.P10502233020917627447.correct`). Lean does not check the parsing of the name. -/
def A069125.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069126.P4423583929307567482

`13*n+a(n-1)` with `a(0)=1`
-/

namespace A069126.P4423583929307567482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  13 * n + a (n - 1)

end

end A069126.P4423583929307567482

noncomputable section

/-- A069126: Centered 13-gonal numbers.

Offset 1, canonical program `A069126.P4423583929307567482`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069126 (n : ℕ) : ℤ :=
  (A069126.P4423583929307567482.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069127.P17805209540756871466

`14*n+a(n-1)` with `a(0)=1`
-/

namespace A069127.P17805209540756871466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  14 * n + a (n - 1)

end

end A069127.P17805209540756871466

noncomputable section

/-- A069127: Centered 14-gonal numbers.

Offset 1, canonical program `A069127.P17805209540756871466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069127 (n : ℕ) : ℤ :=
  (A069127.P17805209540756871466.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069128.P2666364132664357027

`15*n+a(n-1)` with `a(0)=1`
-/

namespace A069128.P2666364132664357027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  15 * n + a (n - 1)

end

end A069128.P2666364132664357027

noncomputable section

/-- A069128: Centered 15-gonal numbers: a(n) = (15*n^2 - 15*n + 2)/2.

Offset 1, canonical program `A069128.P2666364132664357027`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15*(n+1)²-15*(n+1)+2)/2` (program `A069128.P3824391422216030582`, by `A069128.P3824391422216030582.correct`). Lean does not check the parsing of the name. -/
def A069128 (n : ℕ) : ℤ :=
  (A069128.P2666364132664357027.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(15*(n+1)²-15*(n+1)+2)/2` (program `A069128.P3824391422216030582`, by `A069128.P3824391422216030582.correct`). Lean does not check the parsing of the name. -/
def A069128.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069129.P16591082131829992890

`16*n+a(n-1)` with `a(0)=1`
-/

namespace A069129.P16591082131829992890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  16 * n + a (n - 1)

end

end A069129.P16591082131829992890

noncomputable section

/-- A069129: Centered 16-gonal numbers.

Offset 1, canonical program `A069129.P16591082131829992890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069129 (n : ℕ) : ℤ :=
  (A069129.P16591082131829992890.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069130.P10071785890437190694

`17*n+a(n-1)` with `a(0)=1`
-/

namespace A069130.P10071785890437190694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  17 * n + a (n - 1)

end

end A069130.P10071785890437190694

noncomputable section

/-- A069130: Centered 17-gonal numbers: (17*n^2 - 17*n + 2)/2.

Offset 1, canonical program `A069130.P10071785890437190694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(17*(n+1)²-17*(n+1)+2)/2` (program `A069130.P14382583759398379207`, by `A069130.P14382583759398379207.correct`). Lean does not check the parsing of the name. -/
def A069130 (n : ℕ) : ℤ :=
  (A069130.P10071785890437190694.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(17*(n+1)²-17*(n+1)+2)/2` (program `A069130.P14382583759398379207`, by `A069130.P14382583759398379207.correct`). Lean does not check the parsing of the name. -/
def A069130.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069131.P15314971307123032816

`18*n+a(n-1)` with `a(0)=1`
-/

namespace A069131.P15314971307123032816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  18 * n + a (n - 1)

end

end A069131.P15314971307123032816

noncomputable section

/-- A069131: Centered 18-gonal numbers.

Offset 1, canonical program `A069131.P15314971307123032816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069131 (n : ℕ) : ℤ :=
  (A069131.P15314971307123032816.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069132.P17810868112455853009

`19*n+a(n-1)` with `a(0)=1`
-/

namespace A069132.P17810868112455853009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  19 * n + a (n - 1)

end

end A069132.P17810868112455853009

noncomputable section

/-- A069132: Centered 19-gonal numbers.

Offset 1, canonical program `A069132.P17810868112455853009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069132 (n : ℕ) : ℤ :=
  (A069132.P17810868112455853009.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069133.P13893462842116951769

`10*(n+1)*n+1`
-/

namespace A069133.P13893462842116951769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * ((n + 1) * n) + 1

end

end A069133.P13893462842116951769

noncomputable section

/-- A069133: Centered 20-gonal (or icosagonal) numbers.

Offset 1, canonical program `A069133.P13893462842116951769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069133 (n : ℕ) : ℤ :=
  (A069133.P13893462842116951769.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069173.P4099492214142924125

`22*n+a(n-1)` with `a(0)=1`
-/

namespace A069173.P4099492214142924125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  22 * n + a (n - 1)

end

end A069173.P4099492214142924125

noncomputable section

/-- A069173: Centered 22-gonal numbers.

Offset 1, canonical program `A069173.P4099492214142924125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069173 (n : ℕ) : ℤ :=
  (A069173.P4099492214142924125.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069174.P11742216319110211995

`23*n+a(n-1)` with `a(0)=1`
-/

namespace A069174.P11742216319110211995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  23 * n + a (n - 1)

end

end A069174.P11742216319110211995

noncomputable section

/-- A069174: Centered 23-gonal numbers.

Offset 1, canonical program `A069174.P11742216319110211995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069174 (n : ℕ) : ℤ :=
  (A069174.P11742216319110211995.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069178.P2286736981591671008

`21*n+a(n-1)` with `a(0)=1`
-/

namespace A069178.P2286736981591671008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  21 * n + a (n - 1)

end

end A069178.P2286736981591671008

noncomputable section

/-- A069178: Centered 21-gonal numbers.

Offset 1, canonical program `A069178.P2286736981591671008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069178 (n : ℕ) : ℤ :=
  (A069178.P2286736981591671008.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069178.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069190.P7174808803043212073

`24*n+a(n-1)` with `a(0)=1`
-/

namespace A069190.P7174808803043212073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  24 * n + a (n - 1)

end

end A069190.P7174808803043212073

noncomputable section

/-- A069190: Centered 24-gonal numbers.

Offset 1, canonical program `A069190.P7174808803043212073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069190 (n : ℕ) : ℤ :=
  (A069190.P7174808803043212073.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069214.P8682733862485696210

`2*a(n-2)-a(n-4)` with `a(0)=5, a(1)=4, a(2)=5, a(3)=6, a(4)=8`
-/

namespace A069214.P8682733862485696210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 5, 6, 8] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A069214.P8682733862485696210

noncomputable section

/-- A069214: Let u(n,k) be the recursion defined by u(n,1)=1, u(n,2)=2, u(n,3)=n, and u(n,k+3) = (u(n,k+2) + u(n,k+1))/u(n,k) if u(n,k) divides u(n,k+2) + u(n,k+1), u(n,k+3) = u(n,k) otherwise. Then u(n,k) is periodic and a(n) = Max(u(n,k), k >= 1).

Offset 1, canonical program `A069214.P8682733862485696210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069214 (n : ℕ) : ℤ :=
  A069214.P8682733862485696210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069214.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069241.P2240930364742614384

`3*a(n-1)-3*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=6`
-/

namespace A069241.P2240930364742614384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3, 6] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A069241.P2240930364742614384

noncomputable section

/-- A069241: Number of Hamiltonian paths in the graph on n vertices {1,...,n}, with i adjacent to j iff |i-j| <= 2.

Offset 0, canonical program `A069241.P2240930364742614384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069241 (n : ℕ) : ℤ :=
  A069241.P2240930364742614384.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069306.P14559750050030937555

`2*a(n-1)+a(n-2)` with `a(0)=5, a(1)=12`
-/

namespace A069306.P14559750050030937555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 12] fun n a =>
  2 * a (n - 1) + a (n - 2)

end

end A069306.P14559750050030937555

noncomputable section

/-- A069306: Number of 2 X n binary arrays with a path of adjacent 1's from upper left corner to anywhere in right hand column.

Offset 2, canonical program `A069306.P14559750050030937555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069306 (n : ℕ) : ℤ :=
  (A069306.P14559750050030937555.a (n - 2) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069361.P15645671292584396017

`15*a(n-1)-58*a(n-2)+16*a(n-3)` with `a(0)=1, a(1)=17, a(2)=197`
-/

namespace A069361.P15645671292584396017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17, 197] fun n a =>
  15 * a (n - 1) - 58 * a (n - 2) + 16 * a (n - 3)

end

end A069361.P15645671292584396017

noncomputable section

/-- A069361: Number of 3 X n binary arrays with a path of adjacent 1's from top row to bottom row.

Offset 1, canonical program `A069361.P15645671292584396017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069361 (n : ℕ) : ℤ :=
  A069361.P15645671292584396017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069403.P9469960685264620895

`3*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A069403.P9469960685264620895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - a (n - 2) + 1

end

end A069403.P9469960685264620895

noncomputable section

/-- A069403: a(n) = 2*Fibonacci(2*n+1) - 1.

Offset 0, canonical program `A069403.P9469960685264620895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069403 (n : ℕ) : ℤ :=
  A069403.P9469960685264620895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069440.P8022658432027792083

`7*a(n-1)-13*a(n-2)+3*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=16, a(3)=88`
-/

namespace A069440.P8022658432027792083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 16, 88] fun n a =>
  7 * a (n - 1) - 13 * a (n - 2) + 3 * a (n - 3) + 4 * a (n - 4)

end

end A069440.P8022658432027792083

noncomputable section

/-- A069440: Half the number of n X 2 binary arrays with no path of adjacent 1's or adjacent 0's from top row to bottom row.

Offset 1, canonical program `A069440.P8022658432027792083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069440 (n : ℕ) : ℤ :=
  A069440.P8022658432027792083.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069473.P14246622697866425335

`30*n^4+120*n^3+210*n²+180*n+62`
-/

namespace A069473.P14246622697866425335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * n ^ 4 + 120 * n ^ 3 + 210 * n ^ 2 + 180 * n + 62

end

end A069473.P14246622697866425335

noncomputable section

/-- A069473: First differences of (n+1)^6-n^6 (A022522).

Offset 0, canonical program `A069473.P14246622697866425335`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069473 (n : ℕ) : ℤ :=
  (A069473.P14246622697866425335.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069474.P3030932707550304372

`120*n^3+540*n²+900*n+540`
-/

namespace A069474.P3030932707550304372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  120 * n ^ 3 + 540 * n ^ 2 + 900 * n + 540

end

end A069474.P3030932707550304372

noncomputable section

/-- A069474: First differences of A069473.

Offset 0, canonical program `A069474.P3030932707550304372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069474 (n : ℕ) : ℤ :=
  (A069474.P3030932707550304372.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069476.P8053620155685330337

`360*(2*n+5)`
-/

namespace A069476.P8053620155685330337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  360 * (2 * n + 5)

end

end A069476.P8053620155685330337

noncomputable section

/-- A069476: First differences of A069475, successive differences of (n+1)^6 - n^6.

Offset 0, canonical program `A069476.P8053620155685330337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069476 (n : ℕ) : ℤ :=
  (A069476.P8053620155685330337.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069478.P7618583102907137042

`120*(n+3)`
-/

namespace A069478.P7618583102907137042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  120 * (n + 3)

end

end A069478.P7618583102907137042

noncomputable section

/-- A069478: First differences of A069477, successive differences of (n+1)^5 - n^5.

Offset 1, canonical program `A069478.P7618583102907137042`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069478 (n : ℕ) : ℤ :=
  (A069478.P7618583102907137042.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069506.P12004557389417616494

`11*a(n-1)-10*a(n-2)` with `a(0)=2, a(1)=5, a(2)=11, a(3)=111`
-/

namespace A069506.P12004557389417616494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 11, 111] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A069506.P12004557389417616494

noncomputable section

/-- A069506: a(1) = 2; a(n) = smallest palindromic number of the form k*a(n-1) + 1 with k > 1.

Offset 0, canonical program `A069506.P12004557389417616494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069506 (n : ℕ) : ℤ :=
  A069506.P12004557389417616494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069515.P3912833888764347261

`n*(n+2)*3^(n-1)`
-/

namespace A069515.P3912833888764347261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A069515.P3912833888764347261

noncomputable section

/-- A069515: Number of transpositions (interchanges of adjacent digits, sometimes called inversions) needed to change all n-digit base 3 numbers into nondecreasing order.

Offset 1, canonical program `A069515.P3912833888764347261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069515.P3912833888764347261.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069705.P6871397949020099510

`2^(n%3)`
-/

namespace A069705.P6871397949020099510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n % 3)

end

end A069705.P6871397949020099510

noncomputable section

/-- A069705: a(n) = 2^n mod 7.

Offset 0, canonical program `A069705.P6871397949020099510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069705 (n : ℕ) : ℤ :=
  (A069705.P6871397949020099510.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069756.P8613557898676914719

`((n+2)²-1)*((n+3)²-1)-1`
-/

namespace A069756.P8613557898676914719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - 1) * (((n + 3) ^ 2 : ℤ) - 1) - 1

end

end A069756.P8613557898676914719

noncomputable section

/-- A069756: Frobenius number of the numerical semigroup generated by consecutive squares.

Offset 2, canonical program `A069756.P8613557898676914719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069756 (n : ℕ) : ℤ :=
  A069756.P8613557898676914719.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069759.P8755191422924500770

`9*(n+1)^4+36*(n+1)^3+45*(n+1)²+18*(n+1)-1`
-/

namespace A069759.P8755191422924500770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (n + 1) ^ 4 + 36 * (n + 1) ^ 3 + 45 * (n + 1) ^ 2 + 18 * (n + 1) : ℤ) - 1

end

end A069759.P8755191422924500770

noncomputable section

/-- A069759: Frobenius number of the numerical semigroup generated by consecutive hex numbers.

Offset 1, canonical program `A069759.P8755191422924500770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069759 (n : ℕ) : ℤ :=
  A069759.P8755191422924500770.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069760.P14508178980381402531

`4*(n+1)^4+16*(n+1)^3+20*(n+1)²+8*(n+1)-1`
-/

namespace A069760.P14508178980381402531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) ^ 4 + 16 * (n + 1) ^ 3 + 20 * (n + 1) ^ 2 + 8 * (n + 1) : ℤ) - 1

end

end A069760.P14508178980381402531

noncomputable section

/-- A069760: Frobenius number of the numerical semigroup generated by consecutive centered square numbers.

Offset 1, canonical program `A069760.P14508178980381402531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069760 (n : ℕ) : ℤ :=
  A069760.P14508178980381402531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069763.P5797869210077477369

`(n+2)^3*(n+3)^3-(n+2)^3-(n+3)^3`
-/

namespace A069763.P5797869210077477369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 * (n + 3) ^ 3 : ℤ) - ((n + 2) ^ 3 : ℤ) - ((n + 3) ^ 3 : ℤ)

end

end A069763.P5797869210077477369

noncomputable section

/-- A069763: Frobenius number of the numerical semigroup generated by consecutive cubes.

Offset 2, canonical program `A069763.P5797869210077477369`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069763 (n : ℕ) : ℤ :=
  A069763.P5797869210077477369.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069778.P7271251286085944554

`(n+1)*(n²+n+1)`
-/

namespace A069778.P7271251286085944554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n ^ 2 + (n + 1))

end

end A069778.P7271251286085944554

noncomputable section

/-- A069778: q-factorial numbers 3!_q.

Offset 0, canonical program `A069778.P7271251286085944554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069778 (n : ℕ) : ℤ :=
  (A069778.P7271251286085944554.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069779.P17821355219999005567

`(n+1)*(n²+n+1)*(n^3+n²+n+1)`
-/

namespace A069779.P17821355219999005567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n ^ 2 + (n + 1)) * (n ^ 3 + n ^ 2 + (n + 1)))

end

end A069779.P17821355219999005567

noncomputable section

/-- A069779: q-factorial numbers 4!_q.

Offset 0, canonical program `A069779.P17821355219999005567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069779 (n : ℕ) : ℤ :=
  (A069779.P17821355219999005567.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069874.P2905399290746344950

`2^a(n-1)+2^a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069874.P2905399290746344950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 ^ a (n - 1) + 2 ^ a (n - 2)

end

end A069874.P2905399290746344950

noncomputable section

/-- A069874: a(1) = a(2) = 1; a(n) = 2^a(n-1) + 2^a(n-2) for n > 2.

Offset 1, canonical program `A069874.P2905399290746344950`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^a(n-1)+2^a(n-2)` (program `A069874.P2905399290746344950`, by `A069874.P2905399290746344950.correct`). Lean does not check the parsing of the name. -/
def A069874 (n : ℕ) : ℤ :=
  (A069874.P2905399290746344950.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^a(n-1)+2^a(n-2)` (program `A069874.P2905399290746344950`, by `A069874.P2905399290746344950.correct`). Lean does not check the parsing of the name. -/
def A069874.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A069882.P8569674765764534696

`11*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=66`
-/

namespace A069882.P8569674765764534696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 66] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A069882.P8569674765764534696

noncomputable section

/-- A069882: Numbers n such that n and 2n-1 are both palindromes.

Offset 1, canonical program `A069882.P8569674765764534696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069882 (n : ℕ) : ℤ :=
  A069882.P8569674765764534696.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069882.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069905.P9161905402948910103

`round(n²/12)`
-/

namespace A069905.P9161905402948910103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

end

end A069905.P9161905402948910103

noncomputable section

/-- A069905: Number of partitions of n into 3 positive parts.

Offset 0, canonical program `A069905.P9161905402948910103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069905 (n : ℕ) : ℤ :=
  A069905.P9161905402948910103.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069909.P16895275314905969528

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=7, a(4)=9, a(5)=10`
-/

namespace A069909.P16895275314905969528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6, 7, 9, 10] fun n a =>
  2 * a (n - 1) - a (n - 2) - a (n - 4) + 2 * a (n - 5) - a (n - 6)

end

end A069909.P16895275314905969528

noncomputable section

/-- A069909: Numbers congruent to +-1, +-4, +-6, +-7 mod 16.

Offset 0, canonical program `A069909.P16895275314905969528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069909 (n : ℕ) : ℤ :=
  A069909.P16895275314905969528.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069921.P17876201462096095852

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=10`
-/

namespace A069921.P17876201462096095852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 10] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A069921.P17876201462096095852

noncomputable section

/-- A069921: Define C(n) by the recursion C(0) = 1 + I where I^2 = -1, C(n+1) = 1/(1+C(n)); then a(n) = (-1)^n/Im(C(n)) where Im(z) is the imaginary part of the complex number z.

Offset 0, canonical program `A069921.P17876201462096095852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069921 (n : ℕ) : ℤ :=
  A069921.P17876201462096095852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069951.P10384582414497277789

`2*a(n-5)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=18, a(3)=7, a(4)=1, a(5)=1, a(6)=10, a(7)=54, a(8)=16, a(9)=1`
-/

namespace A069951.P10384582414497277789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 18, 7, 1, 1, 10, 54, 16, 1] fun n a =>
  2 * a (n - 5) - a (n - 10)

end

end A069951.P10384582414497277789

noncomputable section

/-- A069951: Continued fraction expansion of the number e^(2/3).

Offset 0, canonical program `A069951.P10384582414497277789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069951 (n : ℕ) : ℤ :=
  A069951.P10384582414497277789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069959.P12459289007884588928

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A069959.P12459289007884588928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A069959.P12459289007884588928

noncomputable section

/-- A069959: Define C(n) by the recursion C(0) = 2*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 2*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of the complex number z.

Offset 0, canonical program `A069959.P12459289007884588928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069959 (n : ℕ) : ℤ :=
  A069959.P12459289007884588928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069960.P13287061063244179403

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=10, a(2)=13`
-/

namespace A069960.P13287061063244179403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 13] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A069960.P13287061063244179403

noncomputable section

/-- A069960: Define C(n) by the recursion C(0) = 3*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 3*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of the complex number z.

Offset 0, canonical program `A069960.P13287061063244179403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069960 (n : ℕ) : ℤ :=
  A069960.P13287061063244179403.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069961.P9620747756128315193

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=17, a(2)=20`
-/

namespace A069961.P9620747756128315193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17, 20] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A069961.P9620747756128315193

noncomputable section

/-- A069961: Define C(n) by the recursion C(0) = 4*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 4*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of z.

Offset 0, canonical program `A069961.P9620747756128315193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069961 (n : ℕ) : ℤ :=
  A069961.P9620747756128315193.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069962.P16624175660714019626

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=26, a(2)=29`
-/

namespace A069962.P16624175660714019626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26, 29] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A069962.P16624175660714019626

noncomputable section

/-- A069962: Define C(n) by the recursion C(0) = 5*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 5*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of z.

Offset 0, canonical program `A069962.P16624175660714019626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069962 (n : ℕ) : ℤ :=
  A069962.P16624175660714019626.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069963.P7840976701550802181

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=37, a(2)=40`
-/

namespace A069963.P7840976701550802181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 37, 40] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A069963.P7840976701550802181

noncomputable section

/-- A069963: Define C(n) by the recursion C(0) = 6*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 6*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of z.

Offset 0, canonical program `A069963.P7840976701550802181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069963 (n : ℕ) : ℤ :=
  A069963.P7840976701550802181.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069976.P11019580135875034032

`round((n+1)*180/(n+3))`
-/

namespace A069976.P11019580135875034032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) * 180 : ℚ) / (n + 3 : ℚ))

end

end A069976.P11019580135875034032

noncomputable section

/-- A069976: Interior angle of a regular polygon of n sides, rounded to nearest integer.

Offset 3, canonical program `A069976.P11019580135875034032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069976 (n : ℕ) : ℤ :=
  A069976.P11019580135875034032.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069993.P10904131476634752855

`2*(4^(n+1)-(n+1))-1`
-/

namespace A069993.P10904131476634752855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((4 ^ (n + 1) : ℤ) - (n + 1 : ℤ)) - 1

end

end A069993.P10904131476634752855

noncomputable section

/-- A069993: a(n) = 2^(2*n+1)*Sum_{k=1..2*n} binomial(2*n+1,k)*Bernoulli(k)/2^k.

Offset 1, canonical program `A069993.P10904131476634752855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069993 (n : ℕ) : ℤ :=
  A069993.P10904131476634752855.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069996.P9125420906948530787

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A069996.P9125420906948530787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 12] fun n a =>
  9 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A069996.P9125420906948530787

noncomputable section

/-- A069996: Number of spanning trees on the bipartite graph K_{3,n}.

Offset 0, canonical program `A069996.P9125420906948530787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069996 (n : ℕ) : ℤ :=
  A069996.P9125420906948530787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070050.P14479049171832621215

`((n+1)²+3*(n+1)+16)*2^(n-2)-1`
-/

namespace A070050.P14479049171832621215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 3 * (n + 1) + 16 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1

end

end A070050.P14479049171832621215

noncomputable section

/-- A070050: Number of Bottleneck-Monge matrices with 2 rows. In the formula below, P = 2.

Offset 1, canonical program `A070050.P14479049171832621215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070050 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070050.P14479049171832621215.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070169.P12326242139371247653

`round(n²*sqrt(3))`
-/

namespace A070169.P12326242139371247653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℝ) * Real.sqrt (3 : ℝ))

end

end A070169.P12326242139371247653

noncomputable section

/-- A070169: Rounded total surface area of a regular tetrahedron with edge length n.

Offset 0, canonical program `A070169.P12326242139371247653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070169 (n : ℕ) : ℤ :=
  A070169.P12326242139371247653.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070199.P1496566458978163531

`a(n-1)+10*a(n-2)-10*a(n-3)` with `a(0)=10, a(1)=19, a(2)=109`
-/

namespace A070199.P1496566458978163531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 19, 109] fun n a =>
  a (n - 1) + 10 * a (n - 2) - 10 * a (n - 3)

end

end A070199.P1496566458978163531

noncomputable section

/-- A070199: Number of palindromes of length <= n.

Offset 1, canonical program `A070199.P1496566458978163531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070199 (n : ℕ) : ℤ :=
  A070199.P1496566458978163531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070252.P11112006205463858820

`10*a(n-2)` with `a(0)=10, a(1)=9, a(2)=90`
-/

namespace A070252.P11112006205463858820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10, 9, 90] fun n a =>
  10 * a (n - 2)

end

end A070252.P11112006205463858820

noncomputable section

/-- A070252: Number of n-digit palindromes.

Offset 1, canonical program `A070252.P11112006205463858820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070252 (n : ℕ) : ℤ :=
  (A070252.P11112006205463858820.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070252.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070260.P5967124606837962089

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=3, a(1)=2, a(2)=15, a(3)=6, a(4)=35, a(5)=12`
-/

namespace A070260.P5967124606837962089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 15, 6, 35, 12] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A070260.P5967124606837962089

noncomputable section

/-- A070260: Third diagonal of triangle defined in A051537.

Offset 1, canonical program `A070260.P5967124606837962089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070260 (n : ℕ) : ℤ :=
  A070260.P5967124606837962089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070261.P9735302363210010820

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=4, a(1)=10, a(2)=2, a(3)=28, a(4)=40, a(5)=6, a(6)=70, a(7)=88, a(8)=12`
-/

namespace A070261.P9735302363210010820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 2, 28, 40, 6, 70, 88, 12] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9)

end

end A070261.P9735302363210010820

noncomputable section

/-- A070261: 4th diagonal of triangle defined in A051537.

Offset 1, canonical program `A070261.P9735302363210010820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070261 (n : ℕ) : ℤ :=
  A070261.P9735302363210010820.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070262.P10224702268297014060

`(n+1)*(n+5)*(37-27*cos((n+1)*π)-6*cos((n+1)*π/2))/64`
-/

namespace A070262.P10224702268297014060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * ((n + 5 : ℝ) * ((37 - 27 * Real.cos ((n + 1 : ℝ) * Real.pi) - 6 * Real.cos ((n + 1 : ℝ) * (Real.pi / 2))) / 64))

end

end A070262.P10224702268297014060

noncomputable section

/-- A070262: 5th diagonal of triangle defined in A051537.

Offset 1, canonical program `A070262.P10224702268297014060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070262 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070262.P10224702268297014060.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070290.P4086161650100029925

`lcm(8, n+1)/gcd(8, n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070290.P4086161650100029925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 (n + 1) : ℚ) / (Nat.gcd 8 (n + 1) : ℚ)

end

end A070290.P4086161650100029925

noncomputable section

/-- A070290: a(n) = lcm(8,n)/gcd(8,n).

Offset 1, canonical program `A070290.P4086161650100029925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070290 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070290.P4086161650100029925.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070290.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070291.P8242243017987582003

`lcm(10, n+1)/gcd(10, n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070291.P8242243017987582003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 10 (n + 1) : ℚ) / (Nat.gcd 10 (n + 1) : ℚ)

end

end A070291.P8242243017987582003

noncomputable section

/-- A070291: a(n) = lcm(10,n)/gcd(10,n).

Offset 1, canonical program `A070291.P8242243017987582003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070291.P8242243017987582003.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070292.P12027537870379567925

`lcm(12, n+1)/gcd(12, n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070292.P12027537870379567925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 (n + 1) : ℚ) / (Nat.gcd 12 (n + 1) : ℚ)

end

end A070292.P12027537870379567925

noncomputable section

/-- A070292: a(n) = lcm(12,n)/gcd(12,n).

Offset 1, canonical program `A070292.P12027537870379567925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070292 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070292.P12027537870379567925.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070292.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070293.P11789546069594536792

`lcm(30, n+1)/gcd(30, n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070293.P11789546069594536792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 30 (n + 1) : ℚ) / (Nat.gcd 30 (n + 1) : ℚ)

end

end A070293.P11789546069594536792

noncomputable section

/-- A070293: a(n) = lcm(30,n)/gcd(30,n).

Offset 1, canonical program `A070293.P11789546069594536792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070293.P11789546069594536792.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070315.P10232599069789594573

`3^(n+4)-(3*(n+4)+2)*2^(n+3)+2*(n+4)²`
-/

namespace A070315.P10232599069789594573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 4) : ℤ) - ((3 * (n + 4) + 2) * 2 ^ (n + 3) : ℤ) + (2 * (n + 4) ^ 2 : ℤ)

end

end A070315.P10232599069789594573

noncomputable section

/-- A070315: Third diagonal of triangle in A046739.

Offset 4, canonical program `A070315.P10232599069789594573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070315 (n : ℕ) : ℤ :=
  A070315.P10232599069789594573.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070315.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070337.P10483146356275945858

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=5, a(6)=10, a(7)=20, a(8)=13, a(9)=26`
-/

namespace A070337.P10483146356275945858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 5, 10, 20, 13, 26] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A070337.P10483146356275945858

noncomputable section

/-- A070337: a(n) = 2^n mod 27.

Offset 0, canonical program `A070337.P10483146356275945858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070337 (n : ℕ) : ℤ :=
  A070337.P10483146356275945858.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070338.P7416970572545984166

`a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=31, a(7)=29, a(8)=25, a(9)=17`
-/

namespace A070338.P7416970572545984166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 31, 29, 25, 17] fun n a =>
  a (n - 10)

end

end A070338.P7416970572545984166

noncomputable section

/-- A070338: a(n) = 2^n mod 33.

Offset 0, canonical program `A070338.P7416970572545984166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070338 (n : ℕ) : ℤ :=
  (A070338.P7416970572545984166.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070338.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070340.P9122939424640795955

`a(n-1)-a(n-4)+a(n-5)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=25, a(7)=11, a(8)=22`
-/

namespace A070340.P9122939424640795955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 25, 11, 22] fun n a =>
  a (n - 1) - a (n - 4) + a (n - 5) - a (n - 8) + a (n - 9)

end

end A070340.P9122939424640795955

noncomputable section

/-- A070340: a(n) = 2^n mod 39.

Offset 0, canonical program `A070340.P9122939424640795955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070340 (n : ℕ) : ℤ :=
  A070340.P9122939424640795955.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070341.P11038923617910494174

`a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=5, a(4)=4`
-/

namespace A070341.P11038923617910494174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 5, 4] fun n a =>
  a (n - 5)

end

end A070341.P11038923617910494174

noncomputable section

/-- A070341: a(n) = 3^n mod 11: Repeat (1, 3, 9, 5, 4), period 5.

Offset 0, canonical program `A070341.P11038923617910494174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070341 (n : ℕ) : ℤ :=
  (A070341.P11038923617910494174.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070342.P13926702451677461996

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=8, a(4)=5, a(5)=15, a(6)=7, a(7)=2, a(8)=6, a(9)=18`
-/

namespace A070342.P13926702451677461996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 8, 5, 15, 7, 2, 6, 18] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A070342.P13926702451677461996

noncomputable section

/-- A070342: a(n) = 3^n mod 19.

Offset 0, canonical program `A070342.P13926702451677461996`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070342 (n : ℕ) : ℤ :=
  A070342.P13926702451677461996.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070347.P14326898336553682767

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=11`
-/

namespace A070347.P14326898336553682767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 11] fun n a =>
  a (n - 6)

end

end A070347.P14326898336553682767

noncomputable section

/-- A070347: a(n) = 2^n mod 21.

Offset 0, canonical program `A070347.P14326898336553682767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070347 (n : ℕ) : ℤ :=
  (A070347.P14326898336553682767.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070349.P8898981060293200931

`a(n-1)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=21, a(7)=42`
-/

namespace A070349.P8898981060293200931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 21, 42] fun n a =>
  a (n - 1) - a (n - 7) + a (n - 8)

end

end A070349.P8898981060293200931

noncomputable section

/-- A070349: a(n) = 2^n mod 43.

Offset 0, canonical program `A070349.P8898981060293200931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070349 (n : ℕ) : ℤ :=
  A070349.P8898981060293200931.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070352.P10623104770029805467

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=2`
-/

namespace A070352.P10623104770029805467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 2] fun n a =>
  a (n - 4)

end

end A070352.P10623104770029805467

noncomputable section

/-- A070352: a(n) = 3^n mod 5; or period 4, repeat [1, 3, 4, 2].

Offset 0, canonical program `A070352.P10623104770029805467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070352 (n : ℕ) : ℤ :=
  (A070352.P10623104770029805467.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070353.P16430542077980648899

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A070353.P16430542077980648899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A070353.P16430542077980648899

noncomputable section

/-- A070353: a(n) = 3^n mod 14.

Offset 0, canonical program `A070353.P16430542077980648899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070353 (n : ℕ) : ℤ :=
  A070353.P16430542077980648899.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070354.P10766215878332449962

`a(n-4)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=11`
-/

namespace A070354.P10766215878332449962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 11] fun n a =>
  a (n - 4)

end

end A070354.P10766215878332449962

noncomputable section

/-- A070354: a(n) = 3^n mod 16.

Offset 0, canonical program `A070354.P10766215878332449962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070354 (n : ℕ) : ℤ :=
  (A070354.P10766215878332449962.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070355.P11189578737572194036

`a(n-5)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=5, a(4)=15`
-/

namespace A070355.P11189578737572194036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 5, 15] fun n a =>
  a (n - 5)

end

end A070355.P11189578737572194036

noncomputable section

/-- A070355: a(n) = 3^n mod 22.

Offset 0, canonical program `A070355.P11189578737572194036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070355 (n : ℕ) : ℤ :=
  (A070355.P11189578737572194036.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070357.P6491386056516521259

`a(n-6)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=25, a(5)=19`
-/

namespace A070357.P6491386056516521259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 25, 19] fun n a =>
  a (n - 6)

end

end A070357.P6491386056516521259

noncomputable section

/-- A070357: a(n) = 3^n mod 28.

Offset 0, canonical program `A070357.P6491386056516521259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070357 (n : ℕ) : ℤ :=
  (A070357.P6491386056516521259.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070358.P7160327298463004773

`a(n-8)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=17, a(5)=19, a(6)=25, a(7)=11`
-/

namespace A070358.P7160327298463004773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 17, 19, 25, 11] fun n a =>
  a (n - 8)

end

end A070358.P7160327298463004773

noncomputable section

/-- A070358: a(n) = 3^n mod 32.

Offset 0, canonical program `A070358.P7160327298463004773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070358 (n : ℕ) : ℤ :=
  (A070358.P7160327298463004773.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070359.P16354341178707148311

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=13, a(5)=5, a(6)=15, a(7)=11, a(8)=33`
-/

namespace A070359.P16354341178707148311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27, 13, 5, 15, 11, 33] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070359.P16354341178707148311

noncomputable section

/-- A070359: a(n) = 3^n mod 34.

Offset 0, canonical program `A070359.P16354341178707148311`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070359 (n : ℕ) : ℤ :=
  A070359.P16354341178707148311.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070360.P10537892112917682660

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=5, a(5)=15, a(6)=7, a(7)=21, a(8)=25, a(9)=37`
-/

namespace A070360.P10537892112917682660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9, 27, 5, 15, 7, 21, 25, 37] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A070360.P10537892112917682660

noncomputable section

/-- A070360: a(n) = 3^n mod 38.

Offset 0, canonical program `A070360.P10537892112917682660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070360 (n : ℕ) : ℤ :=
  A070360.P10537892112917682660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070361.P16330651898271197811

`a(n-8)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=40, a(5)=38, a(6)=32, a(7)=14`
-/

namespace A070361.P16330651898271197811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 40, 38, 32, 14] fun n a =>
  a (n - 8)

end

end A070361.P16330651898271197811

noncomputable section

/-- A070361: a(n) = 3^n mod 41.

Offset 0, canonical program `A070361.P16330651898271197811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070361 (n : ℕ) : ℤ :=
  (A070361.P16330651898271197811.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070362.P17841599975813556660

`a(n-10)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=37, a(5)=23, a(6)=25, a(7)=31, a(8)=5, a(9)=15`
-/

namespace A070362.P17841599975813556660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 37, 23, 25, 31, 5, 15] fun n a =>
  a (n - 10)

end

end A070362.P17841599975813556660

noncomputable section

/-- A070362: a(n) = 3^n mod 44.

Offset 0, canonical program `A070362.P17841599975813556660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070362 (n : ℕ) : ℤ :=
  (A070362.P17841599975813556660.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070365.P363765688735375491

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=6, a(4)=2, a(5)=3`
-/

namespace A070365.P363765688735375491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 4, 6, 2, 3] fun n a =>
  a (n - 6)

end

end A070365.P363765688735375491

noncomputable section

/-- A070365: a(n) = 5^n mod 7.

Offset 0, canonical program `A070365.P363765688735375491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070365 (n : ℕ) : ℤ :=
  (A070365.P363765688735375491.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070366.P1914710916886525817

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=7, a(3)=8, a(4)=4, a(5)=2`
-/

namespace A070366.P1914710916886525817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 7, 8, 4, 2] fun n a =>
  a (n - 6)

end

end A070366.P1914710916886525817

noncomputable section

/-- A070366: a(n) = 5^n mod 9.

Offset 0, canonical program `A070366.P1914710916886525817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070366 (n : ℕ) : ℤ :=
  (A070366.P1914710916886525817.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070367.P13547610818378276327

`a(n-5)` with `a(0)=1, a(1)=5, a(2)=3, a(3)=4, a(4)=9`
-/

namespace A070367.P13547610818378276327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 3, 4, 9] fun n a =>
  a (n - 5)

end

end A070367.P13547610818378276327

noncomputable section

/-- A070367: a(n) = 5^n mod 11.

Offset 0, canonical program `A070367.P13547610818378276327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070367 (n : ℕ) : ℤ :=
  (A070367.P13547610818378276327.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070368.P12006950494227191021

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=12, a(3)=8`
-/

namespace A070368.P12006950494227191021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 12, 8] fun n a =>
  a (n - 4)

end

end A070368.P12006950494227191021

noncomputable section

/-- A070368: a(n) = 5^n mod 13.

Offset 0, canonical program `A070368.P12006950494227191021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070368 (n : ℕ) : ℤ :=
  (A070368.P12006950494227191021.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070369.P14013941357409623779

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=13, a(4)=9, a(5)=3`
-/

namespace A070369.P14013941357409623779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11, 13, 9, 3] fun n a =>
  a (n - 6)

end

end A070369.P14013941357409623779

noncomputable section

/-- A070369: a(n) = 5^n mod 14.

Offset 0, canonical program `A070369.P14013941357409623779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070369 (n : ℕ) : ℤ :=
  (A070369.P14013941357409623779.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070370.P7077811863926508026

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=13`
-/

namespace A070370.P7077811863926508026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 9, 13] fun n a =>
  a (n - 4)

end

end A070370.P7077811863926508026

noncomputable section

/-- A070370: a(n) = 5^n mod 16.

Offset 0, canonical program `A070370.P7077811863926508026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070370 (n : ℕ) : ℤ :=
  (A070370.P7077811863926508026.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070371.P2004210824482009188

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=6, a(4)=13, a(5)=14, a(6)=2, a(7)=10, a(8)=16`
-/

namespace A070371.P2004210824482009188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8, 6, 13, 14, 2, 10, 16] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070371.P2004210824482009188

noncomputable section

/-- A070371: a(n) = 5^n mod 17.

Offset 0, canonical program `A070371.P2004210824482009188`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070371 (n : ℕ) : ℤ :=
  A070371.P2004210824482009188.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070372.P8500301956428501799

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=7, a(3)=17, a(4)=13, a(5)=11`
-/

namespace A070372.P8500301956428501799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 7, 17, 13, 11] fun n a =>
  a (n - 6)

end

end A070372.P8500301956428501799

noncomputable section

/-- A070372: a(n) = 5^n mod 18.

Offset 0, canonical program `A070372.P8500301956428501799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070372 (n : ℕ) : ℤ :=
  (A070372.P8500301956428501799.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070372.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070373.P2443529617434040278

`a(n-9)` with `a(0)=1, a(1)=5, a(2)=6, a(3)=11, a(4)=17, a(5)=9, a(6)=7, a(7)=16, a(8)=4`
-/

namespace A070373.P2443529617434040278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 6, 11, 17, 9, 7, 16, 4] fun n a =>
  a (n - 9)

end

end A070373.P2443529617434040278

noncomputable section

/-- A070373: a(n) = 5^n mod 19.

Offset 0, canonical program `A070373.P2443529617434040278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070373 (n : ℕ) : ℤ :=
  (A070373.P2443529617434040278.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070373.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070374.P18106835225190842990

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=20, a(4)=16, a(5)=17`
-/

namespace A070374.P18106835225190842990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 4, 20, 16, 17] fun n a =>
  a (n - 6)

end

end A070374.P18106835225190842990

noncomputable section

/-- A070374: a(n) = 5^n mod 21.

Offset 0, canonical program `A070374.P18106835225190842990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070374 (n : ℕ) : ℤ :=
  (A070374.P18106835225190842990.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070375.P5432521142464282773

`a(n-5)` with `a(0)=1, a(1)=5, a(2)=3, a(3)=15, a(4)=9`
-/

namespace A070375.P5432521142464282773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 3, 15, 9] fun n a =>
  a (n - 5)

end

end A070375.P5432521142464282773

noncomputable section

/-- A070375: a(n) = 5^n mod 22.

Offset 0, canonical program `A070375.P5432521142464282773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070375 (n : ℕ) : ℤ :=
  (A070375.P5432521142464282773.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070376.P1417703680989136620

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=21`
-/

namespace A070376.P1417703680989136620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 21] fun n a =>
  a (n - 4)

end

end A070376.P1417703680989136620

noncomputable section

/-- A070376: a(n) = 5^n mod 26.

Offset 0, canonical program `A070376.P1417703680989136620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070376 (n : ℕ) : ℤ :=
  (A070376.P1417703680989136620.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070377.P8582843443270358502

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=17, a(4)=4, a(5)=20, a(6)=19, a(7)=14, a(8)=16, a(9)=26`
-/

namespace A070377.P8582843443270358502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 17, 4, 20, 19, 14, 16, 26] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A070377.P8582843443270358502

noncomputable section

/-- A070377: a(n) = 5^n mod 27.

Offset 0, canonical program `A070377.P8582843443270358502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070377 (n : ℕ) : ℤ :=
  A070377.P8582843443270358502.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070378.P17180915267969712896

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=13, a(4)=9, a(5)=17`
-/

namespace A070378.P17180915267969712896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 13, 9, 17] fun n a =>
  a (n - 6)

end

end A070378.P17180915267969712896

noncomputable section

/-- A070378: a(n) = 5^n mod 28.

Offset 0, canonical program `A070378.P17180915267969712896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070378 (n : ℕ) : ℤ :=
  (A070378.P17180915267969712896.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070379.P3046261442480544518

`a(n-1)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=9, a(4)=16, a(5)=22, a(6)=23, a(7)=28`
-/

namespace A070379.P3046261442480544518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 9, 16, 22, 23, 28] fun n a =>
  a (n - 1) - a (n - 7) + a (n - 8)

end

end A070379.P3046261442480544518

noncomputable section

/-- A070379: a(n) = 5^n mod 29.

Offset 0, canonical program `A070379.P3046261442480544518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070379 (n : ℕ) : ℤ :=
  A070379.P3046261442480544518.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070380.P17946258730387679434

`a(n-8)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=29, a(4)=17, a(5)=21, a(6)=9, a(7)=13`
-/

namespace A070380.P17946258730387679434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 29, 17, 21, 9, 13] fun n a =>
  a (n - 8)

end

end A070380.P17946258730387679434

noncomputable section

/-- A070380: a(n) = 5^n mod 32.

Offset 0, canonical program `A070380.P17946258730387679434`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070380 (n : ℕ) : ℤ :=
  (A070380.P17946258730387679434.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070381.P11877611234201629956

`a(n-10)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=26, a(4)=31, a(5)=23, a(6)=16, a(7)=14, a(8)=4, a(9)=20`
-/

namespace A070381.P11877611234201629956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 26, 31, 23, 16, 14, 4, 20] fun n a =>
  a (n - 10)

end

end A070381.P11877611234201629956

noncomputable section

/-- A070381: a(n) = 5^n mod 33.

Offset 0, canonical program `A070381.P11877611234201629956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070381 (n : ℕ) : ℤ :=
  (A070381.P11877611234201629956.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070382.P11281774103465972926

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=23, a(4)=13, a(5)=31, a(6)=19, a(7)=27, a(8)=33`
-/

namespace A070382.P11281774103465972926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 25, 23, 13, 31, 19, 27, 33] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070382.P11281774103465972926

noncomputable section

/-- A070382: a(n) = 5^n mod 34.

Offset 0, canonical program `A070382.P11281774103465972926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070382 (n : ℕ) : ℤ :=
  A070382.P11281774103465972926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070382.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070383.P17380556802680787469

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=17, a(4)=13, a(5)=29`
-/

namespace A070383.P17380556802680787469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 17, 13, 29] fun n a =>
  a (n - 6)

end

end A070383.P17380556802680787469

noncomputable section

/-- A070383: a(n) = 5^n mod 36.

Offset 0, canonical program `A070383.P17380556802680787469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070383 (n : ℕ) : ℤ :=
  (A070383.P17380556802680787469.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070383.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070384.P9418795622096719463

`(5^(n%36))%37`
-/

namespace A070384.P9418795622096719463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n % 36) % 37

end

end A070384.P9418795622096719463

noncomputable section

/-- A070384: a(n) = 5^n mod 37.

Offset 0, canonical program `A070384.P9418795622096719463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070384 (n : ℕ) : ℤ :=
  (A070384.P9418795622096719463.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070385.P17650287535849309407

`a(n-9)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=11, a(4)=17, a(5)=9, a(6)=7, a(7)=35, a(8)=23`
-/

namespace A070385.P17650287535849309407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 11, 17, 9, 7, 35, 23] fun n a =>
  a (n - 9)

end

end A070385.P17650287535849309407

noncomputable section

/-- A070385: a(n) = 5^n mod 38.

Offset 0, canonical program `A070385.P17650287535849309407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070385 (n : ℕ) : ℤ :=
  (A070385.P17650287535849309407.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070385.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070386.P6823547712121913766

`a(n-4)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=8`
-/

namespace A070386.P6823547712121913766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 8] fun n a =>
  a (n - 4)

end

end A070386.P6823547712121913766

noncomputable section

/-- A070386: a(n) = 5^n mod 39.

Offset 0, canonical program `A070386.P6823547712121913766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070386 (n : ℕ) : ℤ :=
  (A070386.P6823547712121913766.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070388.P12141502998398056528

`a(n-6)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=41, a(4)=37, a(5)=17`
-/

namespace A070388.P12141502998398056528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 41, 37, 17] fun n a =>
  a (n - 6)

end

end A070388.P12141502998398056528

noncomputable section

/-- A070388: a(n) = 5^n mod 42.

Offset 0, canonical program `A070388.P12141502998398056528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070388 (n : ℕ) : ℤ :=
  (A070388.P12141502998398056528.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070390.P4031011956997315020

`a(n-5)` with `a(0)=1, a(1)=5, a(2)=25, a(3)=37, a(4)=9`
-/

namespace A070390.P4031011956997315020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 25, 37, 9] fun n a =>
  a (n - 5)

end

end A070390.P4031011956997315020

noncomputable section

/-- A070390: a(n) = 5^n mod 44.

Offset 0, canonical program `A070390.P4031011956997315020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070390 (n : ℕ) : ℤ :=
  (A070390.P4031011956997315020.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070392.P15785062589287769959

`a(n-10)` with `a(0)=1, a(1)=6, a(2)=3, a(3)=7, a(4)=9, a(5)=10, a(6)=5, a(7)=8, a(8)=4, a(9)=2`
-/

namespace A070392.P15785062589287769959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 3, 7, 9, 10, 5, 8, 4, 2] fun n a =>
  a (n - 10)

end

end A070392.P15785062589287769959

noncomputable section

/-- A070392: a(n) = 6^n mod 11.

Offset 0, canonical program `A070392.P15785062589287769959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070392 (n : ℕ) : ℤ :=
  (A070392.P15785062589287769959.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070393.P4998169526265859260

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=6, a(2)=10, a(3)=8, a(4)=9, a(5)=2, a(6)=12`
-/

namespace A070393.P4998169526265859260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 10, 8, 9, 2, 12] fun n a =>
  a (n - 1) - a (n - 6) + a (n - 7)

end

end A070393.P4998169526265859260

noncomputable section

/-- A070393: a(n) = 6^n mod 13.

Offset 0, canonical program `A070393.P4998169526265859260`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070393 (n : ℕ) : ℤ :=
  A070393.P4998169526265859260.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070393.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070394.P10203345864848217822

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=6, a(2)=2, a(3)=12, a(4)=4, a(5)=7, a(6)=8, a(7)=14, a(8)=16`
-/

namespace A070394.P10203345864848217822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 2, 12, 4, 7, 8, 14, 16] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070394.P10203345864848217822

noncomputable section

/-- A070394: a(n) = 6^n mod 17.

Offset 0, canonical program `A070394.P10203345864848217822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070394 (n : ℕ) : ℤ :=
  A070394.P10203345864848217822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070395.P10333123779390332383

`a(n-9)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=7, a(4)=4, a(5)=5, a(6)=11, a(7)=9, a(8)=16`
-/

namespace A070395.P10333123779390332383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 17, 7, 4, 5, 11, 9, 16] fun n a =>
  a (n - 9)

end

end A070395.P10333123779390332383

noncomputable section

/-- A070395: a(n) = 6^n mod 19.

Offset 0, canonical program `A070395.P10333123779390332383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070395 (n : ℕ) : ℤ :=
  (A070395.P10333123779390332383.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070397.P11293939111583422314

`a(n-5)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=16, a(4)=21`
-/

namespace A070397.P11293939111583422314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 11, 16, 21] fun n a =>
  a (n - 5)

end

end A070397.P11293939111583422314

noncomputable section

/-- A070397: a(n) = 6^n mod 25.

Offset 0, canonical program `A070397.P11293939111583422314`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070397 (n : ℕ) : ℤ :=
  (A070397.P11293939111583422314.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070398.P3633205753836909736

`a(n-1)-a(n-7)+a(n-8)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=13, a(4)=20, a(5)=4, a(6)=24, a(7)=28`
-/

namespace A070398.P3633205753836909736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 7, 13, 20, 4, 24, 28] fun n a =>
  a (n - 1) - a (n - 7) + a (n - 8)

end

end A070398.P3633205753836909736

noncomputable section

/-- A070398: a(n) = 6^n mod 29.

Offset 0, canonical program `A070398.P3633205753836909736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070398 (n : ℕ) : ℤ :=
  A070398.P3633205753836909736.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070399.P14628561361767883667

`a(n-6)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=30, a(4)=25, a(5)=26`
-/

namespace A070399.P14628561361767883667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 5, 30, 25, 26] fun n a =>
  a (n - 6)

end

end A070399.P14628561361767883667

noncomputable section

/-- A070399: a(n) = 6^n mod 31.

Offset 0, canonical program `A070399.P14628561361767883667`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070399 (n : ℕ) : ℤ :=
  (A070399.P14628561361767883667.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070400.P10185152292824196824

`a(n-4)` with `a(0)=1, a(1)=6, a(2)=36, a(3)=31`
-/

namespace A070400.P10185152292824196824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 36, 31] fun n a =>
  a (n - 4)

end

end A070400.P10185152292824196824

noncomputable section

/-- A070400: a(n) = 6^n mod 37.

Offset 0, canonical program `A070400.P10185152292824196824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070400 (n : ℕ) : ℤ :=
  (A070400.P10185152292824196824.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070402.P14652274366504996575

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A070402.P14652274366504996575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 3)

end

end A070402.P14652274366504996575

noncomputable section

/-- A070402: a(n) = 2^n mod 5.

Offset 0, canonical program `A070402.P14652274366504996575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070402 (n : ℕ) : ℤ :=
  A070402.P14652274366504996575.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070403.P17916869300024313800

`a(n-3)` with `a(0)=1, a(1)=7, a(2)=4`
-/

namespace A070403.P17916869300024313800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 4] fun n a =>
  a (n - 3)

end

end A070403.P17916869300024313800

noncomputable section

/-- A070403: a(n) = 7^n mod 9.

Offset 0, canonical program `A070403.P17916869300024313800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070403 (n : ℕ) : ℤ :=
  (A070403.P17916869300024313800.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070404.P9842961580031254777

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=5, a(3)=2, a(4)=3, a(5)=10, a(6)=4, a(7)=6, a(8)=9, a(9)=8`
-/

namespace A070404.P9842961580031254777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 5, 2, 3, 10, 4, 6, 9, 8] fun n a =>
  a (n - 10)

end

end A070404.P9842961580031254777

noncomputable section

/-- A070404: a(n) = 7^n mod 11.

Offset 0, canonical program `A070404.P9842961580031254777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070404 (n : ℕ) : ℤ :=
  (A070404.P9842961580031254777.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070404.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070405.P9978818919327121131

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=7, a(2)=10, a(3)=5, a(4)=9, a(5)=11, a(6)=12`
-/

namespace A070405.P9978818919327121131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 10, 5, 9, 11, 12] fun n a =>
  a (n - 1) - a (n - 6) + a (n - 7)

end

end A070405.P9978818919327121131

noncomputable section

/-- A070405: a(n) = 7^n mod 13.

Offset 0, canonical program `A070405.P9978818919327121131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070405 (n : ℕ) : ℤ :=
  A070405.P9978818919327121131.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070405.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070406.P16511783930150534217

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=4, a(3)=13`
-/

namespace A070406.P16511783930150534217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 4, 13] fun n a =>
  a (n - 4)

end

end A070406.P16511783930150534217

noncomputable section

/-- A070406: a(n) = 7^n mod 15.

Offset 0, canonical program `A070406.P16511783930150534217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070406 (n : ℕ) : ℤ :=
  (A070406.P16511783930150534217.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070406.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070407.P62203253580032942

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=7, a(2)=15, a(3)=3, a(4)=4, a(5)=11, a(6)=9, a(7)=12, a(8)=16`
-/

namespace A070407.P62203253580032942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 15, 3, 4, 11, 9, 12, 16] fun n a =>
  a (n - 1) - a (n - 8) + a (n - 9)

end

end A070407.P62203253580032942

noncomputable section

/-- A070407: a(n) = 7^n mod 17.

Offset 0, canonical program `A070407.P62203253580032942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070407 (n : ℕ) : ℤ :=
  A070407.P62203253580032942.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070408.P11540405188456264859

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=5, a(3)=13, a(4)=3, a(5)=21, a(6)=15, a(7)=17, a(8)=9, a(9)=19`
-/

namespace A070408.P11540405188456264859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 5, 13, 3, 21, 15, 17, 9, 19] fun n a =>
  a (n - 10)

end

end A070408.P11540405188456264859

noncomputable section

/-- A070408: a(n) = 7^n mod 22.

Offset 0, canonical program `A070408.P11540405188456264859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070408 (n : ℕ) : ℤ :=
  (A070408.P11540405188456264859.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070408.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070410.P11898094663944204915

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=24, a(3)=18`
-/

namespace A070410.P11898094663944204915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 24, 18] fun n a =>
  a (n - 4)

end

end A070410.P11898094663944204915

noncomputable section

/-- A070410: a(n) = 7^n mod 25.

Offset 0, canonical program `A070410.P11898094663944204915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070410 (n : ℕ) : ℤ :=
  (A070410.P11898094663944204915.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070411.P12190021387445766757

`a(n-1)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=7, a(2)=23, a(3)=5, a(4)=9, a(5)=11, a(6)=25`
-/

namespace A070411.P12190021387445766757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 23, 5, 9, 11, 25] fun n a =>
  a (n - 1) - a (n - 6) + a (n - 7)

end

end A070411.P12190021387445766757

noncomputable section

/-- A070411: a(n) = 7^n mod 26.

Offset 0, canonical program `A070411.P12190021387445766757`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070411 (n : ℕ) : ℤ :=
  A070411.P12190021387445766757.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070412.P17195710593601807091

`a(n-9)` with `a(0)=1, a(1)=7, a(2)=22, a(3)=19, a(4)=25, a(5)=13, a(6)=10, a(7)=16, a(8)=4`
-/

namespace A070412.P17195710593601807091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 22, 19, 25, 13, 10, 16, 4] fun n a =>
  a (n - 9)

end

end A070412.P17195710593601807091

noncomputable section

/-- A070412: a(n) = 7^n mod 27.

Offset 0, canonical program `A070412.P17195710593601807091`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070412 (n : ℕ) : ℤ :=
  (A070412.P17195710593601807091.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070413.P2607222986699651498

`a(n-7)` with `a(0)=1, a(1)=7, a(2)=20, a(3)=24, a(4)=23, a(5)=16, a(6)=25`
-/

namespace A070413.P2607222986699651498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 20, 24, 23, 16, 25] fun n a =>
  a (n - 7)

end

end A070413.P2607222986699651498

noncomputable section

/-- A070413: a(n) = 7^n mod 29.

Offset 0, canonical program `A070413.P2607222986699651498`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070413 (n : ℕ) : ℤ :=
  (A070413.P2607222986699651498.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070414.P9920014016832554360

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=19, a(3)=13`
-/

namespace A070414.P9920014016832554360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 19, 13] fun n a =>
  a (n - 4)

end

end A070414.P9920014016832554360

noncomputable section

/-- A070414: a(n) = 7^n mod 30.

Offset 0, canonical program `A070414.P9920014016832554360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070414 (n : ℕ) : ℤ :=
  (A070414.P9920014016832554360.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070416.P11537922546914434429

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=17, a(3)=23`
-/

namespace A070416.P11537922546914434429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 17, 23] fun n a =>
  a (n - 4)

end

end A070416.P11537922546914434429

noncomputable section

/-- A070416: a(n) = 7^n mod 32.

Offset 0, canonical program `A070416.P11537922546914434429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070416 (n : ℕ) : ℤ :=
  (A070416.P11537922546914434429.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070417.P9623908105772476278

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=16, a(3)=13, a(4)=25, a(5)=10, a(6)=4, a(7)=28, a(8)=31, a(9)=19`
-/

namespace A070417.P9623908105772476278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 16, 13, 25, 10, 4, 28, 31, 19] fun n a =>
  a (n - 10)

end

end A070417.P9623908105772476278

noncomputable section

/-- A070417: a(n) = 7^n mod 33.

Offset 0, canonical program `A070417.P9623908105772476278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070417 (n : ℕ) : ℤ :=
  (A070417.P9623908105772476278.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070419.P11348679197052352720

`a(n-6)` with `a(0)=1, a(1)=7, a(2)=13, a(3)=19, a(4)=25, a(5)=31`
-/

namespace A070419.P11348679197052352720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 13, 19, 25, 31] fun n a =>
  a (n - 6)

end

end A070419.P11348679197052352720

noncomputable section

/-- A070419: a(n) = 7^n mod 36.

Offset 0, canonical program `A070419.P11348679197052352720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070419 (n : ℕ) : ℤ :=
  (A070419.P11348679197052352720.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070420.P1308532024172838749

`a(n-9)` with `a(0)=1, a(1)=7, a(2)=12, a(3)=10, a(4)=33, a(5)=9, a(6)=26, a(7)=34, a(8)=16`
-/

namespace A070420.P1308532024172838749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 12, 10, 33, 9, 26, 34, 16] fun n a =>
  a (n - 9)

end

end A070420.P1308532024172838749

noncomputable section

/-- A070420: a(n) = 7^n mod 37.

Offset 0, canonical program `A070420.P1308532024172838749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070420 (n : ℕ) : ℤ :=
  (A070420.P1308532024172838749.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070421.P10270292036796713250

`a(n-3)` with `a(0)=1, a(1)=7, a(2)=11`
-/

namespace A070421.P10270292036796713250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 11] fun n a =>
  a (n - 3)

end

end A070421.P10270292036796713250

noncomputable section

/-- A070421: a(n) = 7^n mod 38.

Offset 0, canonical program `A070421.P10270292036796713250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070421 (n : ℕ) : ℤ :=
  (A070421.P10270292036796713250.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070422.P6538264564158119359

`a(n-2)-a(n-4)+a(n-6)-a(n-8)+a(n-10)` with `a(0)=1, a(1)=7, a(2)=10, a(3)=31, a(4)=22, a(5)=37, a(6)=25, a(7)=19, a(8)=16, a(9)=34`
-/

namespace A070422.P6538264564158119359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 10, 31, 22, 37, 25, 19, 16, 34] fun n a =>
  a (n - 2) - a (n - 4) + a (n - 6) - a (n - 8) + a (n - 10)

end

end A070422.P6538264564158119359

noncomputable section

/-- A070422: a(n) = 7^n mod 39.

Offset 0, canonical program `A070422.P6538264564158119359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070422 (n : ℕ) : ℤ :=
  A070422.P6538264564158119359.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070423.P6058490411443126669

`a(n-4)` with `a(0)=1, a(1)=7, a(2)=9, a(3)=23`
-/

namespace A070423.P6058490411443126669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 9, 23] fun n a =>
  a (n - 4)

end

end A070423.P6058490411443126669

noncomputable section

/-- A070423: a(n) = 7^n mod 40.

Offset 0, canonical program `A070423.P6058490411443126669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070423 (n : ℕ) : ℤ :=
  (A070423.P6058490411443126669.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070425.P16354183869889664659

`a(n-6)` with `a(0)=1, a(1)=7, a(2)=6, a(3)=42, a(4)=36, a(5)=37`
-/

namespace A070425.P16354183869889664659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 6, 42, 36, 37] fun n a =>
  a (n - 6)

end

end A070425.P16354183869889664659

noncomputable section

/-- A070425: a(n) = 7^n mod 43.

Offset 0, canonical program `A070425.P16354183869889664659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070425 (n : ℕ) : ℤ :=
  (A070425.P16354183869889664659.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070426.P10521480670665855542

`a(n-10)` with `a(0)=1, a(1)=7, a(2)=5, a(3)=35, a(4)=25, a(5)=43, a(6)=37, a(7)=39, a(8)=9, a(9)=19`
-/

namespace A070426.P10521480670665855542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 5, 35, 25, 43, 37, 39, 9, 19] fun n a =>
  a (n - 10)

end

end A070426.P10521480670665855542

noncomputable section

/-- A070426: a(n) = 7^n mod 44.

Offset 0, canonical program `A070426.P10521480670665855542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070426 (n : ℕ) : ℤ :=
  (A070426.P10521480670665855542.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070430.P13649630533228626573

`n²%5`
-/

namespace A070430.P13649630533228626573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 5

end

end A070430.P13649630533228626573

noncomputable section

/-- A070430: a(n) = n^2 mod 5.

Offset 0, canonical program `A070430.P13649630533228626573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070430 (n : ℕ) : ℤ :=
  (A070430.P13649630533228626573.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070431.P7600090919849270006

`n²%6`
-/

namespace A070431.P7600090919849270006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 6

end

end A070431.P7600090919849270006

noncomputable section

/-- A070431: a(n) = n^2 mod 6.

Offset 0, canonical program `A070431.P7600090919849270006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070431 (n : ℕ) : ℤ :=
  (A070431.P7600090919849270006.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070432.P9608462224796550643

`n²%8`
-/

namespace A070432.P9608462224796550643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 8

end

end A070432.P9608462224796550643

noncomputable section

/-- A070432: Period 4: repeat [0, 1, 4, 1]; a(n) = n^2 mod 8.

Offset 0, canonical program `A070432.P9608462224796550643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070432 (n : ℕ) : ℤ :=
  (A070432.P9608462224796550643.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070433.P14281554298463016556

`n²%9`
-/

namespace A070433.P14281554298463016556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 9

end

end A070433.P14281554298463016556

noncomputable section

/-- A070433: a(n) = n^2 mod 9.

Offset 0, canonical program `A070433.P14281554298463016556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070433 (n : ℕ) : ℤ :=
  (A070433.P14281554298463016556.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070434.P15416121312503829875

`n²%11`
-/

namespace A070434.P15416121312503829875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 11

end

end A070434.P15416121312503829875

noncomputable section

/-- A070434: a(n) = n^2 mod 11.

Offset 0, canonical program `A070434.P15416121312503829875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070434 (n : ℕ) : ℤ :=
  (A070434.P15416121312503829875.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070435.P1693440915559612720

`n²%12`
-/

namespace A070435.P1693440915559612720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 12

end

end A070435.P1693440915559612720

noncomputable section

/-- A070435: a(n) = n^2 mod 12, or alternately n^4 mod 12.

Offset 0, canonical program `A070435.P1693440915559612720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070435 (n : ℕ) : ℤ :=
  (A070435.P1693440915559612720.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070435.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070436.P14723731776833475700

`n²%13`
-/

namespace A070436.P14723731776833475700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 13

end

end A070436.P14723731776833475700

noncomputable section

/-- A070436: a(n) = n^2 mod 13.

Offset 0, canonical program `A070436.P14723731776833475700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070436 (n : ℕ) : ℤ :=
  (A070436.P14723731776833475700.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070437.P17439045342879117999

`n²%14`
-/

namespace A070437.P17439045342879117999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 14

end

end A070437.P17439045342879117999

noncomputable section

/-- A070437: a(n) = n^2 mod 14.

Offset 0, canonical program `A070437.P17439045342879117999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070437 (n : ℕ) : ℤ :=
  (A070437.P17439045342879117999.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070438.P8580065970173098769

`n²%15`
-/

namespace A070438.P8580065970173098769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 15

end

end A070438.P8580065970173098769

noncomputable section

/-- A070438: a(n) = n^2 mod 15.

Offset 0, canonical program `A070438.P8580065970173098769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070438 (n : ℕ) : ℤ :=
  (A070438.P8580065970173098769.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070439.P9262648694973607488

`n²%16`
-/

namespace A070439.P9262648694973607488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 16

end

end A070439.P9262648694973607488

noncomputable section

/-- A070439: a(n) = n^2 mod 16.

Offset 0, canonical program `A070439.P9262648694973607488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070439 (n : ℕ) : ℤ :=
  (A070439.P9262648694973607488.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070440.P16252927356344110559

`n²%18`
-/

namespace A070440.P16252927356344110559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 18

end

end A070440.P16252927356344110559

noncomputable section

/-- A070440: a(n) = n^2 mod 18.

Offset 0, canonical program `A070440.P16252927356344110559`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070440 (n : ℕ) : ℤ :=
  (A070440.P16252927356344110559.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070441.P4860380538418349536

`n²%19`
-/

namespace A070441.P4860380538418349536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 19

end

end A070441.P4860380538418349536

noncomputable section

/-- A070441: n^2 mod 19.

Offset 0, canonical program `A070441.P4860380538418349536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070441 (n : ℕ) : ℤ :=
  (A070441.P4860380538418349536.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070442.P1642344981458505647

`n²%20`
-/

namespace A070442.P1642344981458505647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 20

end

end A070442.P1642344981458505647

noncomputable section

/-- A070442: a(n) = n^2 mod 20.

Offset 0, canonical program `A070442.P1642344981458505647`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070442 (n : ℕ) : ℤ :=
  (A070442.P1642344981458505647.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070443.P6660383300507350232

`n²%21`
-/

namespace A070443.P6660383300507350232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 21

end

end A070443.P6660383300507350232

noncomputable section

/-- A070443: a(n) = n^2 mod 21.

Offset 0, canonical program `A070443.P6660383300507350232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070443 (n : ℕ) : ℤ :=
  (A070443.P6660383300507350232.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070444.P15371062373712899472

`n²%22`
-/

namespace A070444.P15371062373712899472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 22

end

end A070444.P15371062373712899472

noncomputable section

/-- A070444: a(n) = n^2 mod 22.

Offset 0, canonical program `A070444.P15371062373712899472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070444 (n : ℕ) : ℤ :=
  (A070444.P15371062373712899472.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070444.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070445.P16316496943072602847

`n²%23`
-/

namespace A070445.P16316496943072602847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 23

end

end A070445.P16316496943072602847

noncomputable section

/-- A070445: a(n) = n^2 mod 23.

Offset 0, canonical program `A070445.P16316496943072602847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070445 (n : ℕ) : ℤ :=
  (A070445.P16316496943072602847.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070446.P1017940539263783076

`n²%24`
-/

namespace A070446.P1017940539263783076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 24

end

end A070446.P1017940539263783076

noncomputable section

/-- A070446: a(n) = n^2 mod 24.

Offset 0, canonical program `A070446.P1017940539263783076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070446 (n : ℕ) : ℤ :=
  (A070446.P1017940539263783076.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070447.P9554645578152341771

`n²%25`
-/

namespace A070447.P9554645578152341771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 25

end

end A070447.P9554645578152341771

noncomputable section

/-- A070447: a(n) = n^2 mod 25.

Offset 0, canonical program `A070447.P9554645578152341771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070447 (n : ℕ) : ℤ :=
  (A070447.P9554645578152341771.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070448.P1904474002317019673

`n²%26`
-/

namespace A070448.P1904474002317019673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 26

end

end A070448.P1904474002317019673

noncomputable section

/-- A070448: a(n) = n^2 mod 26.

Offset 0, canonical program `A070448.P1904474002317019673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070448 (n : ℕ) : ℤ :=
  (A070448.P1904474002317019673.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070449.P12849106193043106442

`n²%27`
-/

namespace A070449.P12849106193043106442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 27

end

end A070449.P12849106193043106442

noncomputable section

/-- A070449: a(n) = n^2 mod 27.

Offset 0, canonical program `A070449.P12849106193043106442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070449 (n : ℕ) : ℤ :=
  (A070449.P12849106193043106442.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070450.P2505732787251683723

`n²%28`
-/

namespace A070450.P2505732787251683723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 28

end

end A070450.P2505732787251683723

noncomputable section

/-- A070450: a(n) = n^2 mod 28.

Offset 0, canonical program `A070450.P2505732787251683723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070450 (n : ℕ) : ℤ :=
  (A070450.P2505732787251683723.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070451.P1104831304241860584

`n²%29`
-/

namespace A070451.P1104831304241860584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 29

end

end A070451.P1104831304241860584

noncomputable section

/-- A070451: a(n) = n^2 mod 29.

Offset 0, canonical program `A070451.P1104831304241860584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070451 (n : ℕ) : ℤ :=
  (A070451.P1104831304241860584.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070452.P13779430467128966169

`n²%30`
-/

namespace A070452.P13779430467128966169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 30

end

end A070452.P13779430467128966169

noncomputable section

/-- A070452: a(n) = n^2 mod 30.

Offset 0, canonical program `A070452.P13779430467128966169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070452 (n : ℕ) : ℤ :=
  (A070452.P13779430467128966169.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070453.P1534849703903125308

`n²%31`
-/

namespace A070453.P1534849703903125308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 31

end

end A070453.P1534849703903125308

noncomputable section

/-- A070453: a(n) = n^2 mod 31.

Offset 0, canonical program `A070453.P1534849703903125308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070453 (n : ℕ) : ℤ :=
  (A070453.P1534849703903125308.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070454.P3554147580359124617

`n²%32`
-/

namespace A070454.P3554147580359124617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 32

end

end A070454.P3554147580359124617

noncomputable section

/-- A070454: a(n) = n^2 mod 32.

Offset 0, canonical program `A070454.P3554147580359124617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070454 (n : ℕ) : ℤ :=
  (A070454.P3554147580359124617.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070455.P8665083248690279238

`n²%33`
-/

namespace A070455.P8665083248690279238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 33

end

end A070455.P8665083248690279238

noncomputable section

/-- A070455: a(n) = n^2 mod 33.

Offset 0, canonical program `A070455.P8665083248690279238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070455 (n : ℕ) : ℤ :=
  (A070455.P8665083248690279238.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070456.P14992319796054944826

`n²%34`
-/

namespace A070456.P14992319796054944826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 34

end

end A070456.P14992319796054944826

noncomputable section

/-- A070456: a(n) = n^2 mod 34.

Offset 0, canonical program `A070456.P14992319796054944826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070456 (n : ℕ) : ℤ :=
  (A070456.P14992319796054944826.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070456.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070457.P6679630281650522601

`n²%35`
-/

namespace A070457.P6679630281650522601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 35

end

end A070457.P6679630281650522601

noncomputable section

/-- A070457: a(n) = n^2 mod 35.

Offset 0, canonical program `A070457.P6679630281650522601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070457 (n : ℕ) : ℤ :=
  (A070457.P6679630281650522601.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070458.P14288912970409848613

`n²%36`
-/

namespace A070458.P14288912970409848613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 36

end

end A070458.P14288912970409848613

noncomputable section

/-- A070458: a(n) = n^2 mod 36.

Offset 0, canonical program `A070458.P14288912970409848613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070458 (n : ℕ) : ℤ :=
  (A070458.P14288912970409848613.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070459.P4750342145577487435

`n²%37`
-/

namespace A070459.P4750342145577487435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 37

end

end A070459.P4750342145577487435

noncomputable section

/-- A070459: a(n) = n^2 mod 37.

Offset 0, canonical program `A070459.P4750342145577487435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070459 (n : ℕ) : ℤ :=
  (A070459.P4750342145577487435.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070460.P3703919912887073839

`n²%38`
-/

namespace A070460.P3703919912887073839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 38

end

end A070460.P3703919912887073839

noncomputable section

/-- A070460: a(n) = n^2 mod 38.

Offset 0, canonical program `A070460.P3703919912887073839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070460 (n : ℕ) : ℤ :=
  (A070460.P3703919912887073839.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070460.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070461.P5661713765493042901

`n²%39`
-/

namespace A070461.P5661713765493042901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 39

end

end A070461.P5661713765493042901

noncomputable section

/-- A070461: a(n) = n^2 mod 39.

Offset 0, canonical program `A070461.P5661713765493042901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070461 (n : ℕ) : ℤ :=
  (A070461.P5661713765493042901.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070462.P16236734377597102239

`n²%40`
-/

namespace A070462.P16236734377597102239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 40

end

end A070462.P16236734377597102239

noncomputable section

/-- A070462: a(n) = n^2 mod 40.

Offset 0, canonical program `A070462.P16236734377597102239`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070462 (n : ℕ) : ℤ :=
  (A070462.P16236734377597102239.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070463.P14379443800512940319

`n²%41`
-/

namespace A070463.P14379443800512940319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 41

end

end A070463.P14379443800512940319

noncomputable section

/-- A070463: a(n) = n^2 mod 41.

Offset 0, canonical program `A070463.P14379443800512940319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070463 (n : ℕ) : ℤ :=
  (A070463.P14379443800512940319.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070463.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070464.P17171655340112419714

`n²%42`
-/

namespace A070464.P17171655340112419714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 42

end

end A070464.P17171655340112419714

noncomputable section

/-- A070464: a(n) = n^2 mod 42.

Offset 0, canonical program `A070464.P17171655340112419714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070464 (n : ℕ) : ℤ :=
  (A070464.P17171655340112419714.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070464.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070465.P7988870738206295563

`n²%43`
-/

namespace A070465.P7988870738206295563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 43

end

end A070465.P7988870738206295563

noncomputable section

/-- A070465: a(n) = n^2 mod 43.

Offset 0, canonical program `A070465.P7988870738206295563`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070465 (n : ℕ) : ℤ :=
  (A070465.P7988870738206295563.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070466.P13847128071308558702

`n²%44`
-/

namespace A070466.P13847128071308558702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 44

end

end A070466.P13847128071308558702

noncomputable section

/-- A070466: a(n) = n^2 mod 44.

Offset 0, canonical program `A070466.P13847128071308558702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070466 (n : ℕ) : ℤ :=
  (A070466.P13847128071308558702.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070467.P11888127687101422727

`n²%45`
-/

namespace A070467.P11888127687101422727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 45

end

end A070467.P11888127687101422727

noncomputable section

/-- A070467: a(n) = n^2 mod 45.

Offset 0, canonical program `A070467.P11888127687101422727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070467 (n : ℕ) : ℤ :=
  (A070467.P11888127687101422727.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070468.P3082328316912602767

`n²%46`
-/

namespace A070468.P3082328316912602767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 46

end

end A070468.P3082328316912602767

noncomputable section

/-- A070468: a(n) = n^2 mod 46.

Offset 0, canonical program `A070468.P3082328316912602767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070468 (n : ℕ) : ℤ :=
  (A070468.P3082328316912602767.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070469.P10040318588050845139

`n²%47`
-/

namespace A070469.P10040318588050845139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 47

end

end A070469.P10040318588050845139

noncomputable section

/-- A070469: a(n) = n^2 mod 47.

Offset 0, canonical program `A070469.P10040318588050845139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070469 (n : ℕ) : ℤ :=
  (A070469.P10040318588050845139.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070470.P5252652761751043201

`n²%48`
-/

namespace A070470.P5252652761751043201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 48

end

end A070470.P5252652761751043201

noncomputable section

/-- A070470: a(n) = n^2 mod 48.

Offset 0, canonical program `A070470.P5252652761751043201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070470 (n : ℕ) : ℤ :=
  (A070470.P5252652761751043201.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070470.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070471.P4265815756706654454

`a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=4`
-/

namespace A070471.P4265815756706654454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 4] fun n a =>
  a (n - 5)

end

end A070471.P4265815756706654454

noncomputable section

/-- A070471: a(n) = n^3 mod 5.

Offset 0, canonical program `A070471.P4265815756706654454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070471 (n : ℕ) : ℤ :=
  (A070471.P4265815756706654454.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070472.P14240066263563040876

`(n^3)%7`
-/

namespace A070472.P14240066263563040876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 7

end

end A070472.P14240066263563040876

noncomputable section

/-- A070472: a(n) = n^3 mod 7.

Offset 0, canonical program `A070472.P14240066263563040876`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070472 (n : ℕ) : ℤ :=
  (A070472.P14240066263563040876.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070473.P1856165689597305854

`(n^3)%11`
-/

namespace A070473.P1856165689597305854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 11

end

end A070473.P1856165689597305854

noncomputable section

/-- A070473: a(n) = n^3 mod 11.

Offset 0, canonical program `A070473.P1856165689597305854`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070473 (n : ℕ) : ℤ :=
  (A070473.P1856165689597305854.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070474.P11317956512109003332

`(n^3)%12`
-/

namespace A070474.P11317956512109003332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 12

end

end A070474.P11317956512109003332

noncomputable section

/-- A070474: a(n) = n^3 mod 12, n^5 mod 12.

Offset 0, canonical program `A070474.P11317956512109003332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070474 (n : ℕ) : ℤ :=
  (A070474.P11317956512109003332.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070475.P16400688187319052371

`(n^3)%13`
-/

namespace A070475.P16400688187319052371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 13

end

end A070475.P16400688187319052371

noncomputable section

/-- A070475: a(n) = n^3 mod 13.

Offset 0, canonical program `A070475.P16400688187319052371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070475 (n : ℕ) : ℤ :=
  (A070475.P16400688187319052371.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070477.P2339843795242381386

`(n^3)%15`
-/

namespace A070477.P2339843795242381386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 15

end

end A070477.P2339843795242381386

noncomputable section

/-- A070477: a(n) = n^3 mod 15.

Offset 0, canonical program `A070477.P2339843795242381386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070477 (n : ℕ) : ℤ :=
  (A070477.P2339843795242381386.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070478.P15547874119884835980

`(n^3)%16`
-/

namespace A070478.P15547874119884835980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 16

end

end A070478.P15547874119884835980

noncomputable section

/-- A070478: a(n) = n^3 mod 16.

Offset 0, canonical program `A070478.P15547874119884835980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070478 (n : ℕ) : ℤ :=
  (A070478.P15547874119884835980.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070479.P300612867029587473

`(n^3)%17`
-/

namespace A070479.P300612867029587473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 17

end

end A070479.P300612867029587473

noncomputable section

/-- A070479: a(n) = n^3 mod 17.

Offset 0, canonical program `A070479.P300612867029587473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070479 (n : ℕ) : ℤ :=
  (A070479.P300612867029587473.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070480.P5020635013362298801

`a(n-6)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=9, a(4)=10, a(5)=17`
-/

namespace A070480.P5020635013362298801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 9, 10, 17] fun n a =>
  a (n - 6)

end

end A070480.P5020635013362298801

noncomputable section

/-- A070480: a(n) = n^3 mod 18.

Offset 0, canonical program `A070480.P5020635013362298801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070480 (n : ℕ) : ℤ :=
  (A070480.P5020635013362298801.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070481.P17088839584122307562

`(n^3)%19`
-/

namespace A070481.P17088839584122307562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 19

end

end A070481.P17088839584122307562

noncomputable section

/-- A070481: a(n) = n^3 mod 19.

Offset 0, canonical program `A070481.P17088839584122307562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070481 (n : ℕ) : ℤ :=
  (A070481.P17088839584122307562.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070482.P10743472904273330781

`(n^3)%20`
-/

namespace A070482.P10743472904273330781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 20

end

end A070482.P10743472904273330781

noncomputable section

/-- A070482: a(n) = n^3 mod 20.

Offset 0, canonical program `A070482.P10743472904273330781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070482 (n : ℕ) : ℤ :=
  (A070482.P10743472904273330781.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070483.P198801577822908280

`(n^3)%21`
-/

namespace A070483.P198801577822908280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 21

end

end A070483.P198801577822908280

noncomputable section

/-- A070483: a(n) = n^3 mod 21.

Offset 0, canonical program `A070483.P198801577822908280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070483 (n : ℕ) : ℤ :=
  (A070483.P198801577822908280.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070484.P4214967371165184301

`(n^3)%22`
-/

namespace A070484.P4214967371165184301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 22

end

end A070484.P4214967371165184301

noncomputable section

/-- A070484: a(n) = n^3 mod 22.

Offset 0, canonical program `A070484.P4214967371165184301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070484 (n : ℕ) : ℤ :=
  (A070484.P4214967371165184301.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070485.P14876895893566334667

`(n^3)%23`
-/

namespace A070485.P14876895893566334667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 23

end

end A070485.P14876895893566334667

noncomputable section

/-- A070485: a(n) = n^3 mod 23.

Offset 0, canonical program `A070485.P14876895893566334667`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070485 (n : ℕ) : ℤ :=
  (A070485.P14876895893566334667.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070487.P16571631960564171466

`(n^3)%25`
-/

namespace A070487.P16571631960564171466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 25

end

end A070487.P16571631960564171466

noncomputable section

/-- A070487: a(n) = n^3 mod 25.

Offset 0, canonical program `A070487.P16571631960564171466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070487 (n : ℕ) : ℤ :=
  (A070487.P16571631960564171466.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070488.P5835939121409521593

`(n^3)%26`
-/

namespace A070488.P5835939121409521593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 26

end

end A070488.P5835939121409521593

noncomputable section

/-- A070488: a(n) = n^3 mod 26.

Offset 0, canonical program `A070488.P5835939121409521593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070488 (n : ℕ) : ℤ :=
  (A070488.P5835939121409521593.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070491.P17337301132106599161

`(n^3)%29`
-/

namespace A070491.P17337301132106599161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 29

end

end A070491.P17337301132106599161

noncomputable section

/-- A070491: a(n) = n^3 mod 29.

Offset 0, canonical program `A070491.P17337301132106599161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070491 (n : ℕ) : ℤ :=
  (A070491.P17337301132106599161.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070492.P17042360999769823050

`(n^3)%30`
-/

namespace A070492.P17042360999769823050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 30

end

end A070492.P17042360999769823050

noncomputable section

/-- A070492: a(n) = n^3 mod 30.

Offset 0, canonical program `A070492.P17042360999769823050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070492 (n : ℕ) : ℤ :=
  (A070492.P17042360999769823050.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070492.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070493.P15578310029288361053

`(n^3)%31`
-/

namespace A070493.P15578310029288361053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 31

end

end A070493.P15578310029288361053

noncomputable section

/-- A070493: a(n) = n^3 mod 31.

Offset 0, canonical program `A070493.P15578310029288361053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070493 (n : ℕ) : ℤ :=
  (A070493.P15578310029288361053.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070494.P15370169801844295222

`(n^3)%32`
-/

namespace A070494.P15370169801844295222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 32

end

end A070494.P15370169801844295222

noncomputable section

/-- A070494: a(n) = n^3 mod 32.

Offset 0, canonical program `A070494.P15370169801844295222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070494 (n : ℕ) : ℤ :=
  (A070494.P15370169801844295222.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070495.P14567310252373649029

`(n^3)%33`
-/

namespace A070495.P14567310252373649029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 33

end

end A070495.P14567310252373649029

noncomputable section

/-- A070495: a(n) = n^3 mod 33.

Offset 0, canonical program `A070495.P14567310252373649029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070495 (n : ℕ) : ℤ :=
  (A070495.P14567310252373649029.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070496.P3985207821046093131

`(n^3)%34`
-/

namespace A070496.P3985207821046093131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 34

end

end A070496.P3985207821046093131

noncomputable section

/-- A070496: a(n) = n^3 mod 34.

Offset 0, canonical program `A070496.P3985207821046093131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070496 (n : ℕ) : ℤ :=
  (A070496.P3985207821046093131.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070497.P15227137104459871480

`(n^3)%35`
-/

namespace A070497.P15227137104459871480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 35

end

end A070497.P15227137104459871480

noncomputable section

/-- A070497: a(n) = n^3 mod 35.

Offset 0, canonical program `A070497.P15227137104459871480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070497 (n : ℕ) : ℤ :=
  (A070497.P15227137104459871480.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070498.P4964602231222920905

`(n^3)%36`
-/

namespace A070498.P4964602231222920905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 36

end

end A070498.P4964602231222920905

noncomputable section

/-- A070498: a(n) = n^3 mod 36.

Offset 0, canonical program `A070498.P4964602231222920905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070498 (n : ℕ) : ℤ :=
  (A070498.P4964602231222920905.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070499.P2601940573456181473

`(n^3)%37`
-/

namespace A070499.P2601940573456181473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 37

end

end A070499.P2601940573456181473

noncomputable section

/-- A070499: a(n) = n^3 mod 37.

Offset 0, canonical program `A070499.P2601940573456181473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070499 (n : ℕ) : ℤ :=
  (A070499.P2601940573456181473.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070500.P4845983330119351375

`(n^3)%38`
-/

namespace A070500.P4845983330119351375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 38

end

end A070500.P4845983330119351375

noncomputable section

/-- A070500: a(n) = n^3 mod 38.

Offset 0, canonical program `A070500.P4845983330119351375`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070500 (n : ℕ) : ℤ :=
  (A070500.P4845983330119351375.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070501.P3079324267389686229

`(n^3)%39`
-/

namespace A070501.P3079324267389686229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 39

end

end A070501.P3079324267389686229

noncomputable section

/-- A070501: a(n) = n^3 mod 39.

Offset 0, canonical program `A070501.P3079324267389686229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070501 (n : ℕ) : ℤ :=
  (A070501.P3079324267389686229.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070502.P856125361185997482

`(n^3)%40`
-/

namespace A070502.P856125361185997482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 40

end

end A070502.P856125361185997482

noncomputable section

/-- A070502: a(n) = n^3 mod 40.

Offset 0, canonical program `A070502.P856125361185997482`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070502 (n : ℕ) : ℤ :=
  (A070502.P856125361185997482.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070502.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070503.P17237357418945443191

`(n^3)%41`
-/

namespace A070503.P17237357418945443191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 41

end

end A070503.P17237357418945443191

noncomputable section

/-- A070503: a(n) = n^3 mod 41.

Offset 0, canonical program `A070503.P17237357418945443191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070503 (n : ℕ) : ℤ :=
  (A070503.P17237357418945443191.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070504.P11451228735327151677

`(n^3)%42`
-/

namespace A070504.P11451228735327151677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 42

end

end A070504.P11451228735327151677

noncomputable section

/-- A070504: a(n) = n^3 mod 42.

Offset 0, canonical program `A070504.P11451228735327151677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070504 (n : ℕ) : ℤ :=
  (A070504.P11451228735327151677.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070505.P13894925496215325713

`(n^3)%43`
-/

namespace A070505.P13894925496215325713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 43

end

end A070505.P13894925496215325713

noncomputable section

/-- A070505: a(n) = n^3 mod 43.

Offset 0, canonical program `A070505.P13894925496215325713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070505 (n : ℕ) : ℤ :=
  (A070505.P13894925496215325713.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070506.P14040519121237412931

`(n^3)%44`
-/

namespace A070506.P14040519121237412931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 44

end

end A070506.P14040519121237412931

noncomputable section

/-- A070506: a(n) = n^3 mod 44.

Offset 0, canonical program `A070506.P14040519121237412931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070506 (n : ℕ) : ℤ :=
  (A070506.P14040519121237412931.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070507.P3348989475566424957

`(n^3)%45`
-/

namespace A070507.P3348989475566424957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 45

end

end A070507.P3348989475566424957

noncomputable section

/-- A070507: a(n) = n^3 mod 45.

Offset 0, canonical program `A070507.P3348989475566424957`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070507 (n : ℕ) : ℤ :=
  (A070507.P3348989475566424957.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070507.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070508.P15898175176773514015

`(n^3)%46`
-/

namespace A070508.P15898175176773514015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 46

end

end A070508.P15898175176773514015

noncomputable section

/-- A070508: a(n) = n^3 mod 46.

Offset 0, canonical program `A070508.P15898175176773514015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070508 (n : ℕ) : ℤ :=
  (A070508.P15898175176773514015.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070509.P10319126028089605698

`(n^3)%47`
-/

namespace A070509.P10319126028089605698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 47

end

end A070509.P10319126028089605698

noncomputable section

/-- A070509: a(n) = n^3 mod 47.

Offset 0, canonical program `A070509.P10319126028089605698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070509 (n : ℕ) : ℤ :=
  (A070509.P10319126028089605698.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070510.P10337291064051920016

`(n^3)%48`
-/

namespace A070510.P10337291064051920016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 48

end

end A070510.P10337291064051920016

noncomputable section

/-- A070510: a(n) = n^3 mod 48.

Offset 0, canonical program `A070510.P10337291064051920016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070510 (n : ℕ) : ℤ :=
  (A070510.P10337291064051920016.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070510.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070512.P17622950001414582623

`(n^4)%7`
-/

namespace A070512.P17622950001414582623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 7

end

end A070512.P17622950001414582623

noncomputable section

/-- A070512: a(n) = n^4 mod 7.

Offset 0, canonical program `A070512.P17622950001414582623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070512 (n : ℕ) : ℤ :=
  (A070512.P17622950001414582623.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070513.P14782710442911775860

`(n^4)%9`
-/

namespace A070513.P14782710442911775860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 9

end

end A070513.P14782710442911775860

noncomputable section

/-- A070513: a(n) = n^4 mod 9.

Offset 0, canonical program `A070513.P14782710442911775860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070513 (n : ℕ) : ℤ :=
  (A070513.P14782710442911775860.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070514.P11408138510612910342

`(n^4)%10`
-/

namespace A070514.P11408138510612910342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 10

end

end A070514.P11408138510612910342

noncomputable section

/-- A070514: Final digit of n^4: a(n) = n^4 mod 10.

Offset 0, canonical program `A070514.P11408138510612910342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070514 (n : ℕ) : ℤ :=
  (A070514.P11408138510612910342.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070515.P8806484406322965726

`(n^4)%11`
-/

namespace A070515.P8806484406322965726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 11

end

end A070515.P8806484406322965726

noncomputable section

/-- A070515: a(n) = n^4 mod 11.

Offset 0, canonical program `A070515.P8806484406322965726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070515 (n : ℕ) : ℤ :=
  (A070515.P8806484406322965726.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070517.P16802137181824019221

`(n^4)%13`
-/

namespace A070517.P16802137181824019221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 13

end

end A070517.P16802137181824019221

noncomputable section

/-- A070517: a(n) = n^4 mod 13.

Offset 0, canonical program `A070517.P16802137181824019221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070517 (n : ℕ) : ℤ :=
  (A070517.P16802137181824019221.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070532.P9810051034817014135

`(n^4)%14`
-/

namespace A070532.P9810051034817014135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 14

end

end A070532.P9810051034817014135

noncomputable section

/-- A070532: a(n) = n^4 mod 14.

Offset 0, canonical program `A070532.P9810051034817014135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070532 (n : ℕ) : ℤ :=
  (A070532.P9810051034817014135.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070533.P6715377568218510577

`(n^4)%15`
-/

namespace A070533.P6715377568218510577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 15

end

end A070533.P6715377568218510577

noncomputable section

/-- A070533: a(n) = n^4 mod 15.

Offset 0, canonical program `A070533.P6715377568218510577`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070533 (n : ℕ) : ℤ :=
  (A070533.P6715377568218510577.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070534.P4082806252586310237

`(n^4)%17`
-/

namespace A070534.P4082806252586310237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 17

end

end A070534.P4082806252586310237

noncomputable section

/-- A070534: a(n) = n^4 mod 17.

Offset 0, canonical program `A070534.P4082806252586310237`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070534 (n : ℕ) : ℤ :=
  (A070534.P4082806252586310237.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070535.P12642555784278441921

`(n^4)%18`
-/

namespace A070535.P12642555784278441921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 18

end

end A070535.P12642555784278441921

noncomputable section

/-- A070535: a(n) = n^4 mod 18.

Offset 0, canonical program `A070535.P12642555784278441921`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070535 (n : ℕ) : ℤ :=
  (A070535.P12642555784278441921.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070538.P18421862084349490932

`(n^4)%19`
-/

namespace A070538.P18421862084349490932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 19

end

end A070538.P18421862084349490932

noncomputable section

/-- A070538: a(n) = n^4 mod 19.

Offset 0, canonical program `A070538.P18421862084349490932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070538 (n : ℕ) : ℤ :=
  (A070538.P18421862084349490932.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070539.P6760145934644244628

`(n^4)%20`
-/

namespace A070539.P6760145934644244628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 20

end

end A070539.P6760145934644244628

noncomputable section

/-- A070539: a(n) = n^4 mod 20.

Offset 0, canonical program `A070539.P6760145934644244628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070539 (n : ℕ) : ℤ :=
  (A070539.P6760145934644244628.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070540.P16047135118684893836

`(n^4)%21`
-/

namespace A070540.P16047135118684893836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 21

end

end A070540.P16047135118684893836

noncomputable section

/-- A070540: a(n) = n^4 mod 21.

Offset 0, canonical program `A070540.P16047135118684893836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070540 (n : ℕ) : ℤ :=
  (A070540.P16047135118684893836.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070541.P14051961859066572473

`(n^4)%22`
-/

namespace A070541.P14051961859066572473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 22

end

end A070541.P14051961859066572473

noncomputable section

/-- A070541: a(n) = n^4 mod 22.

Offset 0, canonical program `A070541.P14051961859066572473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070541 (n : ℕ) : ℤ :=
  (A070541.P14051961859066572473.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070551.P4488527819851764077

`(n^4)%23`
-/

namespace A070551.P4488527819851764077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 23

end

end A070551.P4488527819851764077

noncomputable section

/-- A070551: a(n) = n^4 mod 23.

Offset 0, canonical program `A070551.P4488527819851764077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070551 (n : ℕ) : ℤ :=
  (A070551.P4488527819851764077.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070567.P12517893732606410256

`(n^4)%24`
-/

namespace A070567.P12517893732606410256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 24

end

end A070567.P12517893732606410256

noncomputable section

/-- A070567: a(n) = n^4 mod 24.

Offset 0, canonical program `A070567.P12517893732606410256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070567 (n : ℕ) : ℤ :=
  (A070567.P12517893732606410256.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070568.P10490807712328987284

`(n^4)%25`
-/

namespace A070568.P10490807712328987284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 25

end

end A070568.P10490807712328987284

noncomputable section

/-- A070568: a(n) = n^4 mod 25.

Offset 0, canonical program `A070568.P10490807712328987284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070568 (n : ℕ) : ℤ :=
  (A070568.P10490807712328987284.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070569.P15448264399439248417

`(n^4)%26`
-/

namespace A070569.P15448264399439248417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 26

end

end A070569.P15448264399439248417

noncomputable section

/-- A070569: a(n) = n^4 mod 26.

Offset 0, canonical program `A070569.P15448264399439248417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070569 (n : ℕ) : ℤ :=
  (A070569.P15448264399439248417.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070570.P2204984223092488304

`(n^4)%27`
-/

namespace A070570.P2204984223092488304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 27

end

end A070570.P2204984223092488304

noncomputable section

/-- A070570: a(n) = n^4 mod 27.

Offset 0, canonical program `A070570.P2204984223092488304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070570 (n : ℕ) : ℤ :=
  (A070570.P2204984223092488304.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070571.P4274079522636602736

`(n^4)%28`
-/

namespace A070571.P4274079522636602736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 28

end

end A070571.P4274079522636602736

noncomputable section

/-- A070571: a(n) = n^4 mod 28.

Offset 0, canonical program `A070571.P4274079522636602736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070571 (n : ℕ) : ℤ :=
  (A070571.P4274079522636602736.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070571.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070572.P9218308096083047191

`(n^4)%29`
-/

namespace A070572.P9218308096083047191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 29

end

end A070572.P9218308096083047191

noncomputable section

/-- A070572: a(n) = n^4 mod 29.

Offset 0, canonical program `A070572.P9218308096083047191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070572 (n : ℕ) : ℤ :=
  (A070572.P9218308096083047191.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070573.P17887134406610134795

`(n^4)%30`
-/

namespace A070573.P17887134406610134795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 30

end

end A070573.P17887134406610134795

noncomputable section

/-- A070573: a(n) = n^4 mod 30.

Offset 0, canonical program `A070573.P17887134406610134795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070573 (n : ℕ) : ℤ :=
  (A070573.P17887134406610134795.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070574.P3967205766759917016

`(n^4)%31`
-/

namespace A070574.P3967205766759917016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 31

end

end A070574.P3967205766759917016

noncomputable section

/-- A070574: a(n) = n^4 mod 31.

Offset 0, canonical program `A070574.P3967205766759917016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070574 (n : ℕ) : ℤ :=
  (A070574.P3967205766759917016.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070575.P8029253604659982879

`(n^4)%32`
-/

namespace A070575.P8029253604659982879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 32

end

end A070575.P8029253604659982879

noncomputable section

/-- A070575: a(n) = n^4 mod 32.

Offset 0, canonical program `A070575.P8029253604659982879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070575 (n : ℕ) : ℤ :=
  (A070575.P8029253604659982879.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070576.P7175982811432111376

`(n^4)%33`
-/

namespace A070576.P7175982811432111376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 33

end

end A070576.P7175982811432111376

noncomputable section

/-- A070576: a(n) = n^4 mod 33.

Offset 0, canonical program `A070576.P7175982811432111376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070576 (n : ℕ) : ℤ :=
  (A070576.P7175982811432111376.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070577.P2926029159382558726

`(n^4)%34`
-/

namespace A070577.P2926029159382558726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 34

end

end A070577.P2926029159382558726

noncomputable section

/-- A070577: a(n) = n^4 mod 34.

Offset 0, canonical program `A070577.P2926029159382558726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070577 (n : ℕ) : ℤ :=
  (A070577.P2926029159382558726.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070578.P9419788483335888794

`(n^4)%35`
-/

namespace A070578.P9419788483335888794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 35

end

end A070578.P9419788483335888794

noncomputable section

/-- A070578: a(n) = n^4 mod 35.

Offset 0, canonical program `A070578.P9419788483335888794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070578 (n : ℕ) : ℤ :=
  (A070578.P9419788483335888794.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070579.P2692570409952231511

`(n^4)%36`
-/

namespace A070579.P2692570409952231511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 36

end

end A070579.P2692570409952231511

noncomputable section

/-- A070579: a(n) = n^4 mod 36.

Offset 0, canonical program `A070579.P2692570409952231511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070579 (n : ℕ) : ℤ :=
  (A070579.P2692570409952231511.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070580.P17186996685340434407

`(n^4)%37`
-/

namespace A070580.P17186996685340434407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 37

end

end A070580.P17186996685340434407

noncomputable section

/-- A070580: a(n) = n^4 mod 37.

Offset 0, canonical program `A070580.P17186996685340434407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070580 (n : ℕ) : ℤ :=
  (A070580.P17186996685340434407.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070581.P9433214768191612643

`(n^4)%38`
-/

namespace A070581.P9433214768191612643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 38

end

end A070581.P9433214768191612643

noncomputable section

/-- A070581: a(n) = n^4 mod 38.

Offset 0, canonical program `A070581.P9433214768191612643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070581 (n : ℕ) : ℤ :=
  (A070581.P9433214768191612643.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070582.P15900372405393351765

`(n^4)%39`
-/

namespace A070582.P15900372405393351765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 39

end

end A070582.P15900372405393351765

noncomputable section

/-- A070582: a(n) = n^4 mod 39.

Offset 0, canonical program `A070582.P15900372405393351765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070582 (n : ℕ) : ℤ :=
  (A070582.P15900372405393351765.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070583.P4944730656812248177

`(n^4)%40`
-/

namespace A070583.P4944730656812248177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 40

end

end A070583.P4944730656812248177

noncomputable section

/-- A070583: a(n) = n^4 mod 40.

Offset 0, canonical program `A070583.P4944730656812248177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070583 (n : ℕ) : ℤ :=
  (A070583.P4944730656812248177.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070584.P13919625733112180211

`(n^4)%41`
-/

namespace A070584.P13919625733112180211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 41

end

end A070584.P13919625733112180211

noncomputable section

/-- A070584: a(n) = n^4 mod 41.

Offset 0, canonical program `A070584.P13919625733112180211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070584 (n : ℕ) : ℤ :=
  (A070584.P13919625733112180211.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070585.P7078322027425363896

`(n^4)%42`
-/

namespace A070585.P7078322027425363896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 42

end

end A070585.P7078322027425363896

noncomputable section

/-- A070585: a(n) = n^4 mod 42.

Offset 0, canonical program `A070585.P7078322027425363896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070585 (n : ℕ) : ℤ :=
  (A070585.P7078322027425363896.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070586.P13179581914409986246

`(n^4)%43`
-/

namespace A070586.P13179581914409986246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 43

end

end A070586.P13179581914409986246

noncomputable section

/-- A070586: a(n) = n^4 mod 43.

Offset 0, canonical program `A070586.P13179581914409986246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070586 (n : ℕ) : ℤ :=
  (A070586.P13179581914409986246.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070587.P11842817594351834643

`(n^4)%44`
-/

namespace A070587.P11842817594351834643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 44

end

end A070587.P11842817594351834643

noncomputable section

/-- A070587: a(n) = n^4 mod 44.

Offset 0, canonical program `A070587.P11842817594351834643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070587 (n : ℕ) : ℤ :=
  (A070587.P11842817594351834643.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070588.P2405269052891366513

`(n^4)%45`
-/

namespace A070588.P2405269052891366513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 45

end

end A070588.P2405269052891366513

noncomputable section

/-- A070588: a(n) = n^4 mod 45.

Offset 0, canonical program `A070588.P2405269052891366513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070588 (n : ℕ) : ℤ :=
  (A070588.P2405269052891366513.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070589.P15668357856705475539

`(n^4)%46`
-/

namespace A070589.P15668357856705475539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 46

end

end A070589.P15668357856705475539

noncomputable section

/-- A070589: a(n) = n^4 mod 46.

Offset 0, canonical program `A070589.P15668357856705475539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070589 (n : ℕ) : ℤ :=
  (A070589.P15668357856705475539.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070590.P2859710448694475272

`(n^4)%47`
-/

namespace A070590.P2859710448694475272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 47

end

end A070590.P2859710448694475272

noncomputable section

/-- A070590: a(n) = n^4 mod 47.

Offset 0, canonical program `A070590.P2859710448694475272`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070590 (n : ℕ) : ℤ :=
  (A070590.P2859710448694475272.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070591.P2728292423439476844

`(n^4)%48`
-/

namespace A070591.P2728292423439476844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 48

end

end A070591.P2728292423439476844

noncomputable section

/-- A070591: a(n) = n^4 mod 48.

Offset 0, canonical program `A070591.P2728292423439476844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070591 (n : ℕ) : ℤ :=
  (A070591.P2728292423439476844.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070593.P270678160015829560

`(n^5)%7`
-/

namespace A070593.P270678160015829560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 7

end

end A070593.P270678160015829560

noncomputable section

/-- A070593: a(n) = n^5 mod 7.

Offset 0, canonical program `A070593.P270678160015829560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070593 (n : ℕ) : ℤ :=
  (A070593.P270678160015829560.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070595.P8658359655410696601

`(n^5)%9`
-/

namespace A070595.P8658359655410696601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 9

end

end A070595.P8658359655410696601

noncomputable section

/-- A070595: a(n) = n^5 mod 9.

Offset 0, canonical program `A070595.P8658359655410696601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070595 (n : ℕ) : ℤ :=
  (A070595.P8658359655410696601.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070596.P2022854988770605576

`(n^5)%11`
-/

namespace A070596.P2022854988770605576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 11

end

end A070596.P2022854988770605576

noncomputable section

/-- A070596: n^5 mod 11.

Offset 0, canonical program `A070596.P2022854988770605576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070596 (n : ℕ) : ℤ :=
  (A070596.P2022854988770605576.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070598.P16740936729610378642

`(n^5)%13`
-/

namespace A070598.P16740936729610378642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 13

end

end A070598.P16740936729610378642

noncomputable section

/-- A070598: n^5 mod 13.

Offset 0, canonical program `A070598.P16740936729610378642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070598 (n : ℕ) : ℤ :=
  (A070598.P16740936729610378642.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070599.P306759182467789987

`(n^5)%14`
-/

namespace A070599.P306759182467789987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 14

end

end A070599.P306759182467789987

noncomputable section

/-- A070599: a(n) = n^5 mod 14.

Offset 0, canonical program `A070599.P306759182467789987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070599 (n : ℕ) : ℤ :=
  (A070599.P306759182467789987.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070601.P15890532136264960557

`(n^5)%17`
-/

namespace A070601.P15890532136264960557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 17

end

end A070601.P15890532136264960557

noncomputable section

/-- A070601: n^5 mod 17.

Offset 0, canonical program `A070601.P15890532136264960557`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070601 (n : ℕ) : ℤ :=
  (A070601.P15890532136264960557.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070602.P10752447907995977523

`(n^5)%18`
-/

namespace A070602.P10752447907995977523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 18

end

end A070602.P10752447907995977523

noncomputable section

/-- A070602: n^5 mod 18.

Offset 0, canonical program `A070602.P10752447907995977523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070602 (n : ℕ) : ℤ :=
  (A070602.P10752447907995977523.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070603.P480176259783977788

`(n^5)%19`
-/

namespace A070603.P480176259783977788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 19

end

end A070603.P480176259783977788

noncomputable section

/-- A070603: a(n) = n^5 mod 19.

Offset 0, canonical program `A070603.P480176259783977788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070603 (n : ℕ) : ℤ :=
  (A070603.P480176259783977788.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070604.P17152098815249427293

`(n^5)%20`
-/

namespace A070604.P17152098815249427293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 20

end

end A070604.P17152098815249427293

noncomputable section

/-- A070604: n^5 mod 20.

Offset 0, canonical program `A070604.P17152098815249427293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070604 (n : ℕ) : ℤ :=
  (A070604.P17152098815249427293.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070605.P5615555639683985544

`(n^5)%21`
-/

namespace A070605.P5615555639683985544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 21

end

end A070605.P5615555639683985544

noncomputable section

/-- A070605: n^5 mod 21.

Offset 0, canonical program `A070605.P5615555639683985544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070605 (n : ℕ) : ℤ :=
  (A070605.P5615555639683985544.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070606.P10540796150880092643

`(n^5)%22`
-/

namespace A070606.P10540796150880092643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 22

end

end A070606.P10540796150880092643

noncomputable section

/-- A070606: n^5 mod 22.

Offset 0, canonical program `A070606.P10540796150880092643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070606 (n : ℕ) : ℤ :=
  (A070606.P10540796150880092643.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070607.P15348654201308153211

`(n^5)%23`
-/

namespace A070607.P15348654201308153211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 23

end

end A070607.P15348654201308153211

noncomputable section

/-- A070607: a(n) = n^5 mod 23.

Offset 0, canonical program `A070607.P15348654201308153211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070607 (n : ℕ) : ℤ :=
  (A070607.P15348654201308153211.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070609.P10232034111706142340

`(n^5)%25`
-/

namespace A070609.P10232034111706142340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 25

end

end A070609.P10232034111706142340

noncomputable section

/-- A070609: a(n) = n^5 mod 25.

Offset 0, canonical program `A070609.P10232034111706142340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070609 (n : ℕ) : ℤ :=
  (A070609.P10232034111706142340.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070611.P11658201062847179891

`(n^5)%27`
-/

namespace A070611.P11658201062847179891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 27

end

end A070611.P11658201062847179891

noncomputable section

/-- A070611: n^5 mod 27.

Offset 0, canonical program `A070611.P11658201062847179891`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070611 (n : ℕ) : ℤ :=
  (A070611.P11658201062847179891.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070612.P3663876166421854294

`(n^5)%28`
-/

namespace A070612.P3663876166421854294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 28

end

end A070612.P3663876166421854294

noncomputable section

/-- A070612: n^5 mod 28.

Offset 0, canonical program `A070612.P3663876166421854294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070612 (n : ℕ) : ℤ :=
  (A070612.P3663876166421854294.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070612.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070613.P9604283639497680894

`(n^5)%29`
-/

namespace A070613.P9604283639497680894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 29

end

end A070613.P9604283639497680894

noncomputable section

/-- A070613: a(n) = n^5 mod 29.

Offset 0, canonical program `A070613.P9604283639497680894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070613 (n : ℕ) : ℤ :=
  (A070613.P9604283639497680894.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070614.P1153951477243074511

`(n^5)%31`
-/

namespace A070614.P1153951477243074511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 31

end

end A070614.P1153951477243074511

noncomputable section

/-- A070614: a(n) = n^5 mod 31.

Offset 0, canonical program `A070614.P1153951477243074511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070614 (n : ℕ) : ℤ :=
  (A070614.P1153951477243074511.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070616.P9172666136454872006

`(n^5)%33`
-/

namespace A070616.P9172666136454872006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 33

end

end A070616.P9172666136454872006

noncomputable section

/-- A070616: a(n) = n^5 mod 33.

Offset 0, canonical program `A070616.P9172666136454872006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070616 (n : ℕ) : ℤ :=
  (A070616.P9172666136454872006.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070616.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070617.P6815704200243328263

`(n^5)%34`
-/

namespace A070617.P6815704200243328263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 34

end

end A070617.P6815704200243328263

noncomputable section

/-- A070617: a(n) = n^5 mod 34.

Offset 0, canonical program `A070617.P6815704200243328263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070617 (n : ℕ) : ℤ :=
  (A070617.P6815704200243328263.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070618.P5472341875136748655

`(n^5)%35`
-/

namespace A070618.P5472341875136748655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 35

end

end A070618.P5472341875136748655

noncomputable section

/-- A070618: a(n) = n^5 mod 35.

Offset 0, canonical program `A070618.P5472341875136748655`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070618 (n : ℕ) : ℤ :=
  (A070618.P5472341875136748655.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070619.P3909071996074613635

`(n^5)%36`
-/

namespace A070619.P3909071996074613635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 36

end

end A070619.P3909071996074613635

noncomputable section

/-- A070619: a(n) = n^5 mod 36.

Offset 0, canonical program `A070619.P3909071996074613635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070619 (n : ℕ) : ℤ :=
  (A070619.P3909071996074613635.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070620.P10817786413629746444

`(n^5)%37`
-/

namespace A070620.P10817786413629746444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 37

end

end A070620.P10817786413629746444

noncomputable section

/-- A070620: a(n) = n^5 mod 37.

Offset 0, canonical program `A070620.P10817786413629746444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070620 (n : ℕ) : ℤ :=
  (A070620.P10817786413629746444.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070621.P613864729482269334

`(n^5)%38`
-/

namespace A070621.P613864729482269334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 38

end

end A070621.P613864729482269334

noncomputable section

/-- A070621: a(n) = n^5 mod 38.

Offset 0, canonical program `A070621.P613864729482269334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070621 (n : ℕ) : ℤ :=
  (A070621.P613864729482269334.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070622.P5989575180887111861

`(n^5)%39`
-/

namespace A070622.P5989575180887111861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 39

end

end A070622.P5989575180887111861

noncomputable section

/-- A070622: a(n) = n^5 mod 39.

Offset 0, canonical program `A070622.P5989575180887111861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070622 (n : ℕ) : ℤ :=
  (A070622.P5989575180887111861.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070623.P16155948804434859538

`(n^5)%40`
-/

namespace A070623.P16155948804434859538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 40

end

end A070623.P16155948804434859538

noncomputable section

/-- A070623: a(n) = n^5 mod 40.

Offset 0, canonical program `A070623.P16155948804434859538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070623 (n : ℕ) : ℤ :=
  (A070623.P16155948804434859538.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070624.P12215836320204559886

`(n^5)%41`
-/

namespace A070624.P12215836320204559886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 41

end

end A070624.P12215836320204559886

noncomputable section

/-- A070624: a(n) = n^5 mod 41.

Offset 0, canonical program `A070624.P12215836320204559886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070624 (n : ℕ) : ℤ :=
  (A070624.P12215836320204559886.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070625.P7186550585686977704

`(n^5)%42`
-/

namespace A070625.P7186550585686977704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 42

end

end A070625.P7186550585686977704

noncomputable section

/-- A070625: a(n) = n^5 mod 42.

Offset 0, canonical program `A070625.P7186550585686977704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070625 (n : ℕ) : ℤ :=
  (A070625.P7186550585686977704.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070626.P6219294263075521353

`(n^5)%43`
-/

namespace A070626.P6219294263075521353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 43

end

end A070626.P6219294263075521353

noncomputable section

/-- A070626: a(n) = n^5 mod 43.

Offset 0, canonical program `A070626.P6219294263075521353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070626 (n : ℕ) : ℤ :=
  (A070626.P6219294263075521353.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070627.P7012231911529578705

`(n^5)%44`
-/

namespace A070627.P7012231911529578705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 44

end

end A070627.P7012231911529578705

noncomputable section

/-- A070627: a(n) = n^5 mod 44.

Offset 0, canonical program `A070627.P7012231911529578705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070627 (n : ℕ) : ℤ :=
  (A070627.P7012231911529578705.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070628.P2215670471522195395

`(n^5)%45`
-/

namespace A070628.P2215670471522195395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 45

end

end A070628.P2215670471522195395

noncomputable section

/-- A070628: a(n) = n^5 mod 45.

Offset 0, canonical program `A070628.P2215670471522195395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070628 (n : ℕ) : ℤ :=
  (A070628.P2215670471522195395.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070629.P11584025810604400116

`(n^5)%46`
-/

namespace A070629.P11584025810604400116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 46

end

end A070629.P11584025810604400116

noncomputable section

/-- A070629: a(n) = n^5 mod 46.

Offset 0, canonical program `A070629.P11584025810604400116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070629 (n : ℕ) : ℤ :=
  (A070629.P11584025810604400116.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070630.P4103104186709486095

`(n^5)%47`
-/

namespace A070630.P4103104186709486095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 47

end

end A070630.P4103104186709486095

noncomputable section

/-- A070630: a(n) = n^5 mod 47.

Offset 0, canonical program `A070630.P4103104186709486095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070630 (n : ℕ) : ℤ :=
  (A070630.P4103104186709486095.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070630.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070631.P8401728629825013714

`(n^5)%48`
-/

namespace A070631.P8401728629825013714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % 48

end

end A070631.P8401728629825013714

noncomputable section

/-- A070631: a(n) = n^5 mod 48.

Offset 0, canonical program `A070631.P8401728629825013714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070631 (n : ℕ) : ℤ :=
  (A070631.P8401728629825013714.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070631.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070634.P5221792269490572766

`(n^6)%11`
-/

namespace A070634.P5221792269490572766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 11

end

end A070634.P5221792269490572766

noncomputable section

/-- A070634: a(n) = n^6 mod 11.

Offset 0, canonical program `A070634.P5221792269490572766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070634 (n : ℕ) : ℤ :=
  (A070634.P5221792269490572766.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070636.P458347136884930074

`(n^6)%13`
-/

namespace A070636.P458347136884930074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 13

end

end A070636.P458347136884930074

noncomputable section

/-- A070636: a(n) = n^6 mod 13.

Offset 0, canonical program `A070636.P458347136884930074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070636 (n : ℕ) : ℤ :=
  (A070636.P458347136884930074.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070637.P13297676816007351529

`(n^6)%14`
-/

namespace A070637.P13297676816007351529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 14

end

end A070637.P13297676816007351529

noncomputable section

/-- A070637: a(n) = n^6 mod 14.

Offset 0, canonical program `A070637.P13297676816007351529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070637 (n : ℕ) : ℤ :=
  (A070637.P13297676816007351529.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070640.P13352665983296541484

`(n^6)%17`
-/

namespace A070640.P13352665983296541484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 17

end

end A070640.P13352665983296541484

noncomputable section

/-- A070640: a(n) = n^6 mod 17.

Offset 0, canonical program `A070640.P13352665983296541484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070640 (n : ℕ) : ℤ :=
  (A070640.P13352665983296541484.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070641.P1536320297944298394

`(n^6)%18`
-/

namespace A070641.P1536320297944298394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 18

end

end A070641.P1536320297944298394

noncomputable section

/-- A070641: a(n) = n^6 mod 18.

Offset 0, canonical program `A070641.P1536320297944298394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070641 (n : ℕ) : ℤ :=
  (A070641.P1536320297944298394.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070642.P13065058208812181642

`(n^6)%19`
-/

namespace A070642.P13065058208812181642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 19

end

end A070642.P13065058208812181642

noncomputable section

/-- A070642: a(n) = n^6 mod 19.

Offset 0, canonical program `A070642.P13065058208812181642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070642 (n : ℕ) : ℤ :=
  (A070642.P13065058208812181642.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070644.P1859451650697066523

`(n^6)%21`
-/

namespace A070644.P1859451650697066523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 21

end

end A070644.P1859451650697066523

noncomputable section

/-- A070644: a(n) = n^6 mod 21.

Offset 0, canonical program `A070644.P1859451650697066523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070644 (n : ℕ) : ℤ :=
  (A070644.P1859451650697066523.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070645.P7843175072023001332

`(n^6)%22`
-/

namespace A070645.P7843175072023001332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 22

end

end A070645.P7843175072023001332

noncomputable section

/-- A070645: a(n) = n^6 mod 22.

Offset 0, canonical program `A070645.P7843175072023001332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070645 (n : ℕ) : ℤ :=
  (A070645.P7843175072023001332.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070646.P5507643922852492635

`(n^6)%23`
-/

namespace A070646.P5507643922852492635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 23

end

end A070646.P5507643922852492635

noncomputable section

/-- A070646: a(n) = n^6 mod 23.

Offset 0, canonical program `A070646.P5507643922852492635`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070646 (n : ℕ) : ℤ :=
  (A070646.P5507643922852492635.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070646.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070648.P3587089535205217080

`(n^6)%25`
-/

namespace A070648.P3587089535205217080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 25

end

end A070648.P3587089535205217080

noncomputable section

/-- A070648: a(n) = n^6 mod 25.

Offset 0, canonical program `A070648.P3587089535205217080`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070648 (n : ℕ) : ℤ :=
  (A070648.P3587089535205217080.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070648.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070649.P5497107033750592366

`(n^6)%26`
-/

namespace A070649.P5497107033750592366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 26

end

end A070649.P5497107033750592366

noncomputable section

/-- A070649: a(n) = n^6 mod 26.

Offset 0, canonical program `A070649.P5497107033750592366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070649 (n : ℕ) : ℤ :=
  (A070649.P5497107033750592366.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070649.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070650.P11488115335532773492

`(n^6)%27`
-/

namespace A070650.P11488115335532773492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 27

end

end A070650.P11488115335532773492

noncomputable section

/-- A070650: a(n) = n^6 mod 27.

Offset 0, canonical program `A070650.P11488115335532773492`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070650 (n : ℕ) : ℤ :=
  (A070650.P11488115335532773492.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070651.P6834262170941446172

`(n^6)%28`
-/

namespace A070651.P6834262170941446172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 28

end

end A070651.P6834262170941446172

noncomputable section

/-- A070651: a(n) = n^6 mod 28.

Offset 0, canonical program `A070651.P6834262170941446172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070651 (n : ℕ) : ℤ :=
  (A070651.P6834262170941446172.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070652.P310716294929853020

`(n^6)%29`
-/

namespace A070652.P310716294929853020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 29

end

end A070652.P310716294929853020

noncomputable section

/-- A070652: a(n) = n^6 mod 29.

Offset 0, canonical program `A070652.P310716294929853020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070652 (n : ℕ) : ℤ :=
  (A070652.P310716294929853020.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070654.P12274703441497918566

`(n^6)%31`
-/

namespace A070654.P12274703441497918566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 31

end

end A070654.P12274703441497918566

noncomputable section

/-- A070654: a(n) = n^6 mod 31.

Offset 0, canonical program `A070654.P12274703441497918566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070654 (n : ℕ) : ℤ :=
  (A070654.P12274703441497918566.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070656.P6639742064117952948

`(n^6)%33`
-/

namespace A070656.P6639742064117952948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 33

end

end A070656.P6639742064117952948

noncomputable section

/-- A070656: a(n) = n^6 mod 33.

Offset 0, canonical program `A070656.P6639742064117952948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070656 (n : ℕ) : ℤ :=
  (A070656.P6639742064117952948.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070657.P16779415762482396601

`(n^6)%34`
-/

namespace A070657.P16779415762482396601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 34

end

end A070657.P16779415762482396601

noncomputable section

/-- A070657: a(n) = n^6 mod 34.

Offset 0, canonical program `A070657.P16779415762482396601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070657 (n : ℕ) : ℤ :=
  (A070657.P16779415762482396601.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070658.P18190876774045248567

`(n^6)%35`
-/

namespace A070658.P18190876774045248567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 35

end

end A070658.P18190876774045248567

noncomputable section

/-- A070658: a(n) = n^6 mod 35.

Offset 0, canonical program `A070658.P18190876774045248567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070658 (n : ℕ) : ℤ :=
  (A070658.P18190876774045248567.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070659.P1785876431740346656

`(n^6)%36`
-/

namespace A070659.P1785876431740346656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 36

end

end A070659.P1785876431740346656

noncomputable section

/-- A070659: a(n) = n^6 mod 36.

Offset 0, canonical program `A070659.P1785876431740346656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070659 (n : ℕ) : ℤ :=
  (A070659.P1785876431740346656.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070660.P1805974761973614416

`(n^6)%37`
-/

namespace A070660.P1805974761973614416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 37

end

end A070660.P1805974761973614416

noncomputable section

/-- A070660: a(n) = n^6 mod 37.

Offset 0, canonical program `A070660.P1805974761973614416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070660 (n : ℕ) : ℤ :=
  (A070660.P1805974761973614416.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070661.P16583307289542981959

`(n^6)%38`
-/

namespace A070661.P16583307289542981959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 38

end

end A070661.P16583307289542981959

noncomputable section

/-- A070661: a(n) = n^6 mod 38.

Offset 0, canonical program `A070661.P16583307289542981959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070661 (n : ℕ) : ℤ :=
  (A070661.P16583307289542981959.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070661.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070662.P8335392568474009620

`(n^6)%39`
-/

namespace A070662.P8335392568474009620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 39

end

end A070662.P8335392568474009620

noncomputable section

/-- A070662: a(n) = n^6 mod 39.

Offset 0, canonical program `A070662.P8335392568474009620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070662 (n : ℕ) : ℤ :=
  (A070662.P8335392568474009620.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070663.P2197963365928174202

`(n^6)%40`
-/

namespace A070663.P2197963365928174202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 40

end

end A070663.P2197963365928174202

noncomputable section

/-- A070663: a(n) = n^6 mod 40.

Offset 0, canonical program `A070663.P2197963365928174202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070663 (n : ℕ) : ℤ :=
  (A070663.P2197963365928174202.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070664.P5376344737634216751

`(n^6)%41`
-/

namespace A070664.P5376344737634216751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 41

end

end A070664.P5376344737634216751

noncomputable section

/-- A070664: a(n) = n^6 mod 41.

Offset 0, canonical program `A070664.P5376344737634216751`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070664 (n : ℕ) : ℤ :=
  (A070664.P5376344737634216751.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070665.P6349313733821803319

`(n^6)%42`
-/

namespace A070665.P6349313733821803319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 42

end

end A070665.P6349313733821803319

noncomputable section

/-- A070665: a(n) = n^6 mod 42.

Offset 0, canonical program `A070665.P6349313733821803319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070665 (n : ℕ) : ℤ :=
  (A070665.P6349313733821803319.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070666.P18326583946273921184

`(n^6)%43`
-/

namespace A070666.P18326583946273921184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 43

end

end A070666.P18326583946273921184

noncomputable section

/-- A070666: n^6 mod 43.

Offset 0, canonical program `A070666.P18326583946273921184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070666 (n : ℕ) : ℤ :=
  (A070666.P18326583946273921184.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070684.P15363693857418800498

`(n^6)%44`
-/

namespace A070684.P15363693857418800498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 44

end

end A070684.P15363693857418800498

noncomputable section

/-- A070684: n^6 mod 44.

Offset 0, canonical program `A070684.P15363693857418800498`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070684 (n : ℕ) : ℤ :=
  (A070684.P15363693857418800498.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070685.P359627259987455179

`(n^6)%45`
-/

namespace A070685.P359627259987455179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 45

end

end A070685.P359627259987455179

noncomputable section

/-- A070685: n^6 mod 45.

Offset 0, canonical program `A070685.P359627259987455179`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070685 (n : ℕ) : ℤ :=
  (A070685.P359627259987455179.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070686.P1552370197948955069

`(n^6)%46`
-/

namespace A070686.P1552370197948955069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 46

end

end A070686.P1552370197948955069

noncomputable section

/-- A070686: n^6 mod 46.

Offset 0, canonical program `A070686.P1552370197948955069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070686 (n : ℕ) : ℤ :=
  (A070686.P1552370197948955069.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070687.P4975730223566079817

`(n^6)%47`
-/

namespace A070687.P4975730223566079817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 47

end

end A070687.P4975730223566079817

noncomputable section

/-- A070687: n^6 mod 47.

Offset 0, canonical program `A070687.P4975730223566079817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070687 (n : ℕ) : ℤ :=
  (A070687.P4975730223566079817.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070688.P10431114025521317803

`(n^6)%48`
-/

namespace A070688.P10431114025521317803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6 % 48

end

end A070688.P10431114025521317803

noncomputable section

/-- A070688: a(n) = n^6 mod 48.

Offset 0, canonical program `A070688.P10431114025521317803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070688 (n : ℕ) : ℤ :=
  (A070688.P10431114025521317803.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070692.P370804864202959523

`(n^7)%9`
-/

namespace A070692.P370804864202959523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7 % 9

end

end A070692.P370804864202959523

noncomputable section

/-- A070692: a(n) = n^7 mod 9.

Offset 0, canonical program `A070692.P370804864202959523`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070692 (n : ℕ) : ℤ :=
  (A070692.P370804864202959523.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070693.P10884968805276210041

`(n^7)%11`
-/

namespace A070693.P10884968805276210041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7 % 11

end

end A070693.P10884968805276210041

noncomputable section

/-- A070693: a(n) = n^7 mod 11.

Offset 0, canonical program `A070693.P10884968805276210041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070693 (n : ℕ) : ℤ :=
  (A070693.P10884968805276210041.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070695.P18227276242851458959

`(n^7)%13`
-/

namespace A070695.P18227276242851458959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7 % 13

end

end A070695.P18227276242851458959

noncomputable section

/-- A070695: a(n) = n^7 mod 13.

Offset 0, canonical program `A070695.P18227276242851458959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070695 (n : ℕ) : ℤ :=
  (A070695.P18227276242851458959.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063157.P15872071186610242370

`a(n-2)+30` with `a(0)=7, a(1)=22, a(2)=36`
-/

namespace A063157.P15872071186610242370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 22, 36] fun n a =>
  a (n - 2) + 30

end

end A063157.P15872071186610242370

noncomputable section

/-- A063157: Dimension of the space of weight 2n cusp forms for Gamma_0( 89 ).

Offset 1, canonical program `A063157.P15872071186610242370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063157 (n : ℕ) : ℤ :=
  (A063157.P15872071186610242370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063161.P9870358192729769257

`∑[floor(a(n-3))]+12*n` with `a(0)=9, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063161.P9870358192729769257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 12 * n

end

end A063161.P9870358192729769257

noncomputable section

/-- A063161: Dimension of the space of weight 2n cusp forms for Gamma_0( 93 ).

Offset 1, canonical program `A063161.P9870358192729769257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063161 (n : ℕ) : ℤ :=
  (A063161.P9870358192729769257.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063165.P5147967105631691808

`a(n-2)+a(n-3)-a(n-5)` with `a(0)=7, a(1)=24, a(2)=40, a(3)=56, a(4)=72, a(5)=90`
-/

namespace A063165.P5147967105631691808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 24, 40, 56, 72, 90] fun n a =>
  a (n - 2) + a (n - 3) - a (n - 5)

end

end A063165.P5147967105631691808

noncomputable section

/-- A063165: Dimension of the space of weight 2n cusp forms for Gamma_0( 97 ).

Offset 1, canonical program `A063165.P5147967105631691808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063165 (n : ℕ) : ℤ :=
  A063165.P5147967105631691808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063168.P13592748858365207877

`a(n-1)+30` with `a(0)=7, a(1)=36`
-/

namespace A063168.P13592748858365207877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 36] fun n a =>
  a (n - 1) + 30

end

end A063168.P13592748858365207877

noncomputable section

/-- A063168: Dimension of the space of weight 2n cusp forms for Gamma_0( 100 ).

Offset 1, canonical program `A063168.P13592748858365207877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063168 (n : ℕ) : ℤ :=
  (A063168.P13592748858365207877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063195.P1630113690537469423

`or(1, a(n-3)+n%2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A063195.P1630113690537469423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.lor 1 (a (n - 3) + n % 2)

end

end A063195.P1630113690537469423

noncomputable section

/-- A063195: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 6 ).

Offset 1, canonical program `A063195.P1630113690537469423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063195 (n : ℕ) : ℤ :=
  (A063195.P1630113690537469423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063198.P12323865191057902422

`a(n-3)+2` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A063198.P12323865191057902422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n a =>
  a (n - 3) + 2

end

end A063198.P12323865191057902422

noncomputable section

/-- A063198: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 10 ).

Offset 1, canonical program `A063198.P12323865191057902422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063198 (n : ℕ) : ℤ :=
  (A063198.P12323865191057902422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063199.P3721005094342737347

`a(n-2)-gcd(3, n+1)+5` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A063199.P3721005094342737347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) - (Nat.gcd 3 (n + 1) : ℤ) + 5

end

end A063199.P3721005094342737347

noncomputable section

/-- A063199: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 11 ).

Offset 1, canonical program `A063199.P3721005094342737347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063199 (n : ℕ) : ℤ :=
  A063199.P3721005094342737347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063200.P15218102957685383550

`a(n-3)+4` with `a(0)=1, a(1)=2, a(2)=4, a(3)=4`
-/

namespace A063200.P15218102957685383550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 4] fun n a =>
  a (n - 3) + 4

end

end A063200.P15218102957685383550

noncomputable section

/-- A063200: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 15 ).

Offset 1, canonical program `A063200.P15218102957685383550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063200 (n : ℕ) : ℤ :=
  (A063200.P15218102957685383550.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063201.P863168209842636781

`∑[gcd(2, n)+1-gcd(3, n)]`
-/

namespace A063201.P863168209842636781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + (1 - (Nat.gcd 3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063201.P863168209842636781

noncomputable section

/-- A063201: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 18 ).

Offset 1, canonical program `A063201.P863168209842636781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063201 (n : ℕ) : ℤ :=
  A063201.P863168209842636781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063202.P6595617589327715731

`a(n-2)+2*gcd(3, n+1)` with `a(0)=0, a(1)=3, a(2)=5`
-/

namespace A063202.P6595617589327715731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 5] fun n a =>
  a (n - 2) + 2 * Nat.gcd 3 (n + 1)

end

end A063202.P6595617589327715731

noncomputable section

/-- A063202: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 22 ).

Offset 1, canonical program `A063202.P6595617589327715731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063202 (n : ℕ) : ℤ :=
  (A063202.P6595617589327715731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063205.P10959968045936974589

`a(n-3)+14` with `a(0)=2, a(1)=7, a(2)=11, a(3)=17`
-/

namespace A063205.P10959968045936974589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 11, 17] fun n a =>
  a (n - 3) + 14

end

end A063205.P10959968045936974589

noncomputable section

/-- A063205: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 29 ).

Offset 1, canonical program `A063205.P10959968045936974589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063205 (n : ℕ) : ℤ :=
  (A063205.P10959968045936974589.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063208.P10724846621838265583

`ceil(xor(1, 5*n)/6)`
-/

namespace A063208.P10724846621838265583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (5 * n) : ℚ) / 6⌉

end

end A063208.P10724846621838265583

noncomputable section

/-- A063208: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 36 ).

Offset 1, canonical program `A063208.P10724846621838265583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063208 (n : ℕ) : ℤ :=
  A063208.P10724846621838265583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063209.P10207882519954817012

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=7, a(2)=6, a(3)=8, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A063209.P10207882519954817012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 6, 8, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063209.P10207882519954817012

noncomputable section

/-- A063209: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 41 ).

Offset 1, canonical program `A063209.P10207882519954817012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063209 (n : ℕ) : ℤ :=
  (A063209.P10207882519954817012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063213.P12967062985369795642

`∑[5-gcd(3, n)]-1`
-/

namespace A063213.P12967062985369795642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A063213.P12967062985369795642

noncomputable section

/-- A063213: Dimension of the space of weight 2n cuspidal newforms for Gamma_0(45).

Offset 1, canonical program `A063213.P12967062985369795642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063213 (n : ℕ) : ℤ :=
  A063213.P12967062985369795642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063218.P12008912409708754126

`a(n-3)+16` with `a(0)=3, a(1)=8, a(2)=14, a(3)=18`
-/

namespace A063218.P12008912409708754126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8, 14, 18] fun n a =>
  a (n - 3) + 16

end

end A063218.P12008912409708754126

noncomputable section

/-- A063218: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 51 ).

Offset 1, canonical program `A063218.P12008912409708754126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063218 (n : ℕ) : ℤ :=
  (A063218.P12008912409708754126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063220.P1165827545311593591

`∑[floor(a(n-3))]` with `a(0)=3, a(1)=7, a(2)=8, a(3)=4, a(4)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A063220.P1165827545311593591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 8, 4, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063220.P1165827545311593591

noncomputable section

/-- A063220: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 55 ).

Offset 1, canonical program `A063220.P1165827545311593591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063220 (n : ℕ) : ℤ :=
  (A063220.P1165827545311593591.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063221.P6529527685248435411

`a(n-2)+12` with `a(0)=3, a(1)=10, a(2)=14`
-/

namespace A063221.P6529527685248435411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10, 14] fun n a =>
  a (n - 2) + 12

end

end A063221.P6529527685248435411

noncomputable section

/-- A063221: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 57 ).

Offset 1, canonical program `A063221.P6529527685248435411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063221 (n : ℕ) : ℤ :=
  (A063221.P6529527685248435411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063222.P18006565172130122509

`a(n-3)+14` with `a(0)=2, a(1)=7, a(2)=13, a(3)=15`
-/

namespace A063222.P18006565172130122509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 13, 15] fun n a =>
  a (n - 3) + 14

end

end A063222.P18006565172130122509

noncomputable section

/-- A063222: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 58 ).

Offset 1, canonical program `A063222.P18006565172130122509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063222 (n : ℕ) : ℤ :=
  (A063222.P18006565172130122509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063225.P17139391306117208946

`a(n-2)+10` with `a(0)=3, a(1)=8, a(2)=12`
-/

namespace A063225.P17139391306117208946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8, 12] fun n a =>
  a (n - 2) + 10

end

end A063225.P17139391306117208946

noncomputable section

/-- A063225: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 62 ).

Offset 1, canonical program `A063225.P17139391306117208946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063225 (n : ℕ) : ℤ :=
  (A063225.P17139391306117208946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063228.P2110612994570635045

`a(n-2)+22` with `a(0)=5, a(1)=16, a(2)=28`
-/

namespace A063228.P2110612994570635045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 16, 28] fun n a =>
  a (n - 2) + 22

end

end A063228.P2110612994570635045

noncomputable section

/-- A063228: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 67 ).

Offset 1, canonical program `A063228.P2110612994570635045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063228 (n : ℕ) : ℤ :=
  (A063228.P2110612994570635045.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063231.P12835314924208144101

`or(1, 7*n+3)-∑[n²%3]`
-/

namespace A063231.P12835314924208144101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (7 * n + 3) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A063231.P12835314924208144101

noncomputable section

/-- A063231: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 75 ).

Offset 1, canonical program `A063231.P12835314924208144101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063231 (n : ℕ) : ℤ :=
  A063231.P12835314924208144101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063237.P7134032457122781092

`a(n-2)+14` with `a(0)=4, a(1)=11, a(2)=17`
-/

namespace A063237.P7134032457122781092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 11, 17] fun n a =>
  a (n - 2) + 14

end

end A063237.P7134032457122781092

noncomputable section

/-- A063237: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 86 ).

Offset 1, canonical program `A063237.P7134032457122781092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063237 (n : ℕ) : ℤ :=
  (A063237.P7134032457122781092.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063238.P11345210530109085450

`∑[floor(a(n-3))]` with `a(0)=5, a(1)=9, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A063238.P11345210530109085450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 9, 10, 8, 10] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063238.P11345210530109085450

noncomputable section

/-- A063238: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 87 ).

Offset 1, canonical program `A063238.P11345210530109085450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063238 (n : ℕ) : ℤ :=
  (A063238.P11345210530109085450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063241.P16923742261835107444

`∑[2*gcd(3, n)]-3`
-/

namespace A063241.P16923742261835107444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A063241.P16923742261835107444

noncomputable section

/-- A063241: Dimension of the space of weight 2n cuspidal newforms for Gamma_0(90).

Offset 1, canonical program `A063241.P16923742261835107444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063241 (n : ℕ) : ℤ :=
  A063241.P16923742261835107444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063242.P2977745325607408242

`2*floor(∑[gcd(3, n)/2]+n)`
-/

namespace A063242.P2977745325607408242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌋

end

end A063242.P2977745325607408242

noncomputable section

/-- A063242: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 92 ).

Offset 1, canonical program `A063242.P2977745325607408242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063242 (n : ℕ) : ℤ :=
  A063242.P2977745325607408242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063245.P12587339197299949899

`or(1, 7*n)+3-Δ[ceil(n²/12)]`
-/

namespace A063245.P12587339197299949899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (7 * n) + 3 : ℤ) - (f1 (n + 1) - f1 n)

end

end A063245.P12587339197299949899

noncomputable section

/-- A063245: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 98 ).

Offset 1, canonical program `A063245.P12587339197299949899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063245 (n : ℕ) : ℤ :=
  A063245.P12587339197299949899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063246.P15627297055228981031

`∑[2*n²%3]+or(1, 7*n)+3`
-/

namespace A063246.P15627297055228981031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lor 1 (7 * n) + 3)

end

end A063246.P15627297055228981031

noncomputable section

/-- A063246: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 99 ).

Offset 1, canonical program `A063246.P15627297055228981031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063246 (n : ℕ) : ℤ :=
  (A063246.P15627297055228981031.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063250.P9111133968187368532

`floor(log2(or(1, n-and(n, 2*n))))`
-/

namespace A063250.P9111133968187368532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Int.lor 1 ((n : ℤ) - (Nat.land n (2 * n) : ℤ))).toNat

end

end A063250.P9111133968187368532

noncomputable section

/-- A063250: Number of binary right-rotations (iterations of A038572) to reach fixed point.

Offset 0, canonical program `A063250.P9111133968187368532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063250 (n : ℕ) : ℤ :=
  (A063250.P9111133968187368532.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063262.P8795539107600880781

`∑[∑[C(n+6, 5)-2]]`
-/

namespace A063262.P8795539107600880781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 5 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063262.P8795539107600880781

noncomputable section

/-- A063262: Eighth column (k=7) of sextinomial array A063260.

Offset 0, canonical program `A063262.P8795539107600880781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063262 (n : ℕ) : ℤ :=
  A063262.P8795539107600880781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063267.P8729524999753635741

`∑[∑[C(n+6, 5)]]`
-/

namespace A063267.P8729524999753635741
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063267.P8729524999753635741

noncomputable section

/-- A063267: Eighth column (k=7) of septinomial array A063265.

Offset 0, canonical program `A063267.P8729524999753635741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063267 (n : ℕ) : ℤ :=
  (A063267.P8729524999753635741.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063281.P4522217296163462892

`round(5*n/(gcd(2, n)+3))-1`
-/

namespace A063281.P4522217296163462892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 * n : ℚ) / (Nat.gcd 2 n + 3 : ℚ)) - 1

end

end A063281.P4522217296163462892

noncomputable section

/-- A063281: Dimension of the space of weight n cuspidal newforms for Gamma_1( 8 ).

Offset 2, canonical program `A063281.P4522217296163462892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063281 (n : ℕ) : ℤ :=
  A063281.P4522217296163462892.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063289.P401268230358747086

`a(n-2)+9` with `a(0)=-1, a(1)=2, a(2)=7`
-/

namespace A063289.P401268230358747086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 7] fun n a =>
  a (n - 2) + 9

end

end A063289.P401268230358747086

noncomputable section

/-- A063289: Dimension of the space of weight n cuspidal newforms for Gamma_1( 16 ).

Offset 2, canonical program `A063289.P401268230358747086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063289 (n : ℕ) : ℤ :=
  A063289.P401268230358747086.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063417.P4702373015135659206

`∑[∑[C(n+7, 6)-2]]`
-/

namespace A063417.P4702373015135659206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 6 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063417.P4702373015135659206

noncomputable section

/-- A063417: Ninth column (k=8) of septinomial array A063265.

Offset 0, canonical program `A063417.P4702373015135659206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063417 (n : ℕ) : ℤ :=
  A063417.P4702373015135659206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063453.P7272092198875575783

`∏{p}[n+1, 1-#^3]`
-/

namespace A063453.P7272092198875575783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p ^ 3 : ℤ))

end

end A063453.P7272092198875575783

noncomputable section

/-- A063453: Multiplicative with a(p^e) = 1 - p^3.

Offset 1, canonical program `A063453.P7272092198875575783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063453 (n : ℕ) : ℤ :=
  A063453.P7272092198875575783.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063472.P15172457332249542488

`p?[9*37*n-1]`
-/

namespace A063472.P15172457332249542488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * (37 * n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063472.P15172457332249542488

noncomputable section

/-- A063472: Primes of the form 666*k - 1.

Offset 1, canonical program `A063472.P15172457332249542488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A063472 (n : ℕ) : ℤ :=
  A063472.P15172457332249542488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. -/
def A063472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063476.P8277533662658363674

`∑{d}[1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n, #²]`
-/

namespace A063476.P8277533662658363674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A063476.P8277533662658363674

noncomputable section

/-- A063476: Sum_{d |C(n)} d^2, where C(n) is the Cototient function n - phi(n) (A051953).

Offset 1, canonical program `A063476.P8277533662658363674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063476 (n : ℕ) : ℤ :=
  (A063476.P8277533662658363674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063488.P11110899129665486277

`(∑[n]+1)*Δ[n²]`
-/

namespace A063488.P11110899129665486277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A063488.P11110899129665486277

noncomputable section

/-- A063488: a(n) = (2*n-1)*(n^2 -n +2)/2.

Offset 1, canonical program `A063488.P11110899129665486277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063488 (n : ℕ) : ℤ :=
  A063488.P11110899129665486277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063536.P5588768487015741314

`floor(cot(n+1)^3)`
-/

namespace A063536.P5588768487015741314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (n + 1 : ℝ) ^ 3⌋

end

end A063536.P5588768487015741314

noncomputable section

/-- A063536: a(n) = floor(cotangent(n)^3).

Offset 1, canonical program `A063536.P5588768487015741314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063536 (n : ℕ) : ℤ :=
  A063536.P5588768487015741314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063743.P16037835070093761383

`eq[1, gcd(n, ∑{e}[n, #])]`
-/

namespace A063743.P16037835070093761383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063743.P16037835070093761383

noncomputable section

/-- A063743: Numbers n such that n and Omega(n) are relatively prime, where Omega(n) is the number of prime divisors of n (with repetition).

Offset 1, canonical program `A063743.P16037835070093761383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6108 terms. -/
def A063743 (n : ℕ) : ℤ :=
  (A063743.P16037835070093761383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6108 terms. -/
def A063743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063749.P7178083772229867068

`floor(∑{d}[n+1, (n+2)/2-#])`
-/

namespace A063749.P7178083772229867068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), ((n + 2 : ℚ) / 2 - (d : ℚ))⌋

end

end A063749.P7178083772229867068

noncomputable section

/-- A063749: a(n) = floor(d(n)*(n+1)/2) - sigma(n), where d = A000005, sigma = A000203.

Offset 1, canonical program `A063749.P7178083772229867068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063749 (n : ℕ) : ℤ :=
  A063749.P7178083772229867068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063758.P6067888829019265093

`a(n-1)+a(n-2)+6` with `a(0)=1, a(1)=4, a(2)=10`
-/

namespace A063758.P6067888829019265093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 10] fun n a =>
  a (n - 1) + (a (n - 2) + 6)

end

end A063758.P6067888829019265093

noncomputable section

/-- A063758: a(0)=1, a(n) = 2*Fibonacci(n+4) - 6.

Offset 0, canonical program `A063758.P6067888829019265093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A063758 (n : ℕ) : ℤ :=
  (A063758.P6067888829019265093.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A063758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063806.P12972369782176506399

`eq[1, ∏{e}[∏{e}[n, #+1]-1, #+1]-1]`
-/

namespace A063806.P12972369782176506399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n), (Nat.factorization (f4 n) p + 1) : ℕ) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A063806.P12972369782176506399

noncomputable section

/-- A063806: Numbers with a prime number of proper divisors.

Offset 1, canonical program `A063806.P12972369782176506399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7591 terms. -/
def A063806 (n : ℕ) : ℤ :=
  (A063806.P12972369782176506399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7591 terms. -/
def A063806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063808.P12884231742634146997

`a(n-1)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=6`
-/

namespace A063808.P12884231742634146997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 8, 6] fun n a =>
  a (n - 1)

end

end A063808.P12884231742634146997

noncomputable section

/-- A063808: Spherical growth series for Z as generated by {2, 3}.

Offset 0, canonical program `A063808.P12884231742634146997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063808 (n : ℕ) : ℤ :=
  (A063808.P12884231742634146997.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063826.P4687858328118668891

`(floor(sqrt(4*n+1))-1)%4+1`
-/

namespace A063826.P4687858328118668891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.sqrt (4 * n + 1) : ℤ) - 1) 4 + 1

end

end A063826.P4687858328118668891

noncomputable section

/-- A063826: Let 1, 2, 3, 4 represent moves to the right, down, left and up; this sequence describes the movements in the clockwise square spiral (a.k.a. Ulam Spiral).

Offset 0, canonical program `A063826.P4687858328118668891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063826 (n : ℕ) : ℤ :=
  A063826.P4687858328118668891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063827.P9213320766622095947

`round(sqrt(a(n-2)²+a(n-1)²))` with `a(0)=1, a(1)=2`
-/

namespace A063827.P9213320766622095947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (a (n - 2) ^ 2 + a (n - 1) ^ 2 : ℝ))

end

end A063827.P9213320766622095947

noncomputable section

/-- A063827: a(n) = round(sqrt(a(n-2)^2 + a(n-1)^2)) with a(0) = 1 and a(1) = 2.

Offset 0, canonical program `A063827.P9213320766622095947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A063827 (n : ℕ) : ℤ :=
  A063827.P9213320766622095947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A063827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063905.P6640284831248930620

`p?[round(sqrt(2*n))]`
-/

namespace A063905.P6640284831248930620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A063905.P6640284831248930620

noncomputable section

/-- A063905: Each prime p appears p times.

Offset 1, canonical program `A063905.P6640284831248930620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063905 (n : ℕ) : ℤ :=
  A063905.P6640284831248930620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063915.P14827254206405701185

`∑[n-and(n+1, a(n-1))]+n` with `a(0)=1`
-/

namespace A063915.P14827254206405701185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - Int.land (n + 1 : ℤ) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063915.P14827254206405701185

noncomputable section

/-- A063915: Expansion of g.f. (1 + Sum_{ i >= 0 } 2^i*x^(2^(i+1)-1)) / (1-x)^2.

Offset 0, canonical program `A063915.P14827254206405701185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063915 (n : ℕ) : ℤ :=
  A063915.P14827254206405701185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063916.P11540467349423169323

`∑[and(n+1, -a(n-1))]+a(n-1)` with `a(0)=1`
-/

namespace A063916.P11540467349423169323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.land (n + 1 : ℤ) (-f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A063916.P11540467349423169323

noncomputable section

/-- A063916: G.f.: (1 + Sum_{ i >= 0 } 2^i*x^(2^(i+1)-1)) / (1-x)^3.

Offset 0, canonical program `A063916.P11540467349423169323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063916 (n : ℕ) : ℤ :=
  A063916.P11540467349423169323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063942.P17986453813200706380

`a(n-3)+1` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A063942.P17986453813200706380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 3) + 1

end

end A063942.P17986453813200706380

noncomputable section

/-- A063942: Follow k with k-1 and k-2.

Offset 0, canonical program `A063942.P17986453813200706380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063942 (n : ℕ) : ℤ :=
  A063942.P17986453813200706380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063989.P15199823276984632827

`eq[1, ∑{e}[∑{e}[n, #], #]]`
-/

namespace A063989.P15199823276984632827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A063989.P15199823276984632827

noncomputable section

/-- A063989: Numbers with a prime number of prime divisors (counted with multiplicity).

Offset 1, canonical program `A063989.P15199823276984632827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6396 terms. -/
def A063989 (n : ℕ) : ℤ :=
  (A063989.P15199823276984632827.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6396 terms. -/
def A063989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063992.P17244322416060534239

`comp[n!-char[1]]`
-/

namespace A063992.P17244322416060534239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A063992.P17244322416060534239

noncomputable section

/-- A063992: Numbers that are not factorials.

Offset 1, canonical program `A063992.P17244322416060534239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063992 (n : ℕ) : ℤ :=
  (A063992.P17244322416060534239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063994.P16689841622396858113

`∏{p}[n+1, gcd(n, 1-#)]`
-/

namespace A063994.P16689841622396858113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd (n : ℤ) (1 - (p : ℤ))

end

end A063994.P16689841622396858113

noncomputable section

/-- A063994: a(n) = Product_{primes p dividing n } gcd(p-1, n-1).

Offset 1, canonical program `A063994.P16689841622396858113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063994 (n : ℕ) : ℤ :=
  (A063994.P16689841622396858113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064056.P9237720687950614526

`∑[∑[C(n+5, 4)-2]]`
-/

namespace A064056.P9237720687950614526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064056.P9237720687950614526

noncomputable section

/-- A064056: Seventh column of quintinomial coefficients.

Offset 0, canonical program `A064056.P9237720687950614526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064056 (n : ℕ) : ℤ :=
  A064056.P9237720687950614526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064170.P16752448467765158732

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=10`
-/

namespace A064170.P16752448467765158732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 10] fun n a =>
  8 * a (n - 1) - 8 * a (n - 2) + a (n - 3)

end

end A064170.P16752448467765158732

noncomputable section

/-- A064170: a(1) = 1; a(n+1) = product of numerator and denominator in Sum_{k=1..n} 1/a(k).

Offset 1, canonical program `A064170.P16752448467765158732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A064170 (n : ℕ) : ℤ :=
  A064170.P16752448467765158732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A064170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064263.P17184208965746812833

`(11*n)%30`
-/

namespace A064263.P17184208965746812833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n % 30

end

end A064263.P17184208965746812833

noncomputable section

/-- A064263: a(n) = 11*n mod 30.

Offset 0, canonical program `A064263.P17184208965746812833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064263 (n : ℕ) : ℤ :=
  (A064263.P17184208965746812833.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064264.P5937820716179192664

`(19*n)%30`
-/

namespace A064264.P5937820716179192664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n % 30

end

end A064264.P5937820716179192664

noncomputable section

/-- A064264: a(n) = 19*n mod 30.

Offset 0, canonical program `A064264.P5937820716179192664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064264 (n : ℕ) : ℤ :=
  (A064264.P5937820716179192664.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064366.P15152380846360297940

`C(∑{d}[n+1, #], (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A064366.P15152380846360297940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A064366.P15152380846360297940

noncomputable section

/-- A064366: a(n) = binomial(sigma(n), phi(n)).

Offset 1, canonical program `A064366.P15152380846360297940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A064366 (n : ℕ) : ℤ :=
  (A064366.P15152380846360297940.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A064366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064405.P15876211885316024430

`n-∑{d}[2*a(and(n, n-1)), #]` with `a(0)=1`
-/

namespace A064405.P15876211885316024430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A064405.P15876211885316024430

noncomputable section

/-- A064405: Number of even entries (A048967) minus the number of odd entries (A001316) in row n of Pascal's triangle (A007318).

Offset 0, canonical program `A064405.P15876211885316024430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064405 (n : ℕ) : ℤ :=
  A064405.P15876211885316024430.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064406.P8058739545937717966

`∑[n-∑{d}[2*a(and(n, n-1)), #]]` with `a(0)=1`
-/

namespace A064406.P8058739545937717966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  2 * f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064406.P8058739545937717966

noncomputable section

/-- A064406: Partial sums of A064405.

Offset 0, canonical program `A064406.P8058739545937717966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064406 (n : ℕ) : ℤ :=
  A064406.P8058739545937717966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064427.P3640371439941264988

`∑[∑{p}[n, val(#, n)]+1]`
-/

namespace A064427.P3640371439941264988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064427.P3640371439941264988

noncomputable section

/-- A064427: a(n) = n + (number of primes < n).

Offset 1, canonical program `A064427.P3640371439941264988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064427 (n : ℕ) : ℤ :=
  (A064427.P3640371439941264988.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064434.P2455745478227498282

`(2*a(n-1)+1)%(n+1)` with `a(0)=0`
-/

namespace A064434.P2455745478227498282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (2 * a (n - 1) + 1) % (n + 1)

end

end A064434.P2455745478227498282

noncomputable section

/-- A064434: a(n) = (2*a(n-1) + 1) mod n.

Offset 1, canonical program `A064434.P2455745478227498282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064434 (n : ℕ) : ℤ :=
  (A064434.P2455745478227498282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064458.P10453265991465218882

`a(n-1)+val(n, 11)` with `a(0)=0`
-/

namespace A064458.P10453265991465218882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 11

end

end A064458.P10453265991465218882

noncomputable section

/-- A064458: Highest power of 11 dividing n!.

Offset 0, canonical program `A064458.P10453265991465218882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064458 (n : ℕ) : ℤ :=
  (A064458.P10453265991465218882.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064459.P10824503332311968310

`a(n-1)+val(n, 12)` with `a(0)=0`
-/

namespace A064459.P10824503332311968310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 12

end

end A064459.P10824503332311968310

noncomputable section

/-- A064459: a(n) = Sum_{k>=1} floor(n/12^k).

Offset 0, canonical program `A064459.P10824503332311968310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064459 (n : ℕ) : ℤ :=
  (A064459.P10824503332311968310.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064615.P6052731312723093505

`eq[val(n+1, 2), val(n+1, 3)]+1`
-/

namespace A064615.P6052731312723093505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A064615.P6052731312723093505

noncomputable section

/-- A064615: Numbers of the form m * 6^k for k >= 0 and m > 0 with gcd(m, 6) = 1.

Offset 1, canonical program `A064615.P6052731312723093505`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064615 (n : ℕ) : ℤ :=
  (A064615.P6052731312723093505.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064629.P8933291331078850316

`(4^n)%(3^n)`
-/

namespace A064629.P8933291331078850316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n % 3 ^ n

end

end A064629.P8933291331078850316

noncomputable section

/-- A064629: a(n) = 4^n mod 3^n.

Offset 0, canonical program `A064629.P8933291331078850316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A064629 (n : ℕ) : ℤ :=
  (A064629.P8933291331078850316.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A064629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064671.P4508910619740119428

`2^n*∑[2^n-1]+n`
-/

namespace A064671.P4508910619740119428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A064671.P4508910619740119428

noncomputable section

/-- A064671: Number of n-digit base 4 biquanimous numbers (with leading 0's allowed, but not all-0 string).

Offset 1, canonical program `A064671.P4508910619740119428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A064671 (n : ℕ) : ℤ :=
  A064671.P4508910619740119428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A064671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064727.P12752756130573243475

`floor(∏{p}[n+1, #^val(n+1, #²)]/2)`
-/

namespace A064727.P12752756130573243475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) / 2⌋

end

end A064727.P12752756130573243475

noncomputable section

/-- A064727: Number of pairs x,y such that 0 < x <= y < n and x+y = n and x*y = k*n for some k.

Offset 1, canonical program `A064727.P12752756130573243475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064727 (n : ℕ) : ℤ :=
  A064727.P12752756130573243475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064739.P7248377334255330722

`p?[a(n-2)+5]` with `a(0)=2, a(1)=1, a(2)=4`
-/

namespace A064739.P7248377334255330722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 4] fun n f1 =>
  f1 (n - 2) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A064739.P7248377334255330722

noncomputable section

/-- A064739: Primes p such that Fibonacci(p)-1 is divisible by p.

Offset 1, canonical program `A064739.P7248377334255330722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064739 (n : ℕ) : ℤ :=
  (A064739.P7248377334255330722.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064807.P15331081347800531989

`lt[lcm(n, dr(n)), 2*n]`
-/

namespace A064807.P15331081347800531989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (SequenceMachineLib.digitalRoot (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A064807.P15331081347800531989

noncomputable section

/-- A064807: Numbers which are divisible by their digital root (A010888).

Offset 1, canonical program `A064807.P15331081347800531989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064807 (n : ℕ) : ℤ :=
  (A064807.P15331081347800531989.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064840.P9951464707142976250

`∑{d}[n+1, #]*∏{e}[n+1, #+1]`
-/

namespace A064840.P9951464707142976250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A064840.P9951464707142976250

noncomputable section

/-- A064840: a(n) = tau(n)*sigma(n).

Offset 1, canonical program `A064840.P9951464707142976250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064840 (n : ℕ) : ℤ :=
  (A064840.P9951464707142976250.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064990.P15716924184883463782

`(a(floor(n/3))-(1-n)%3)%2` with `a(0)=0, a(1)=0`
-/

namespace A064990.P15716924184883463782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.tmod (a ⌊(n : ℚ) / 3⌋.toNat - Int.tmod (1 - (n : ℤ)) 3) 2

end

end A064990.P15716924184883463782

noncomputable section

/-- A064990: If A_k denotes the first 3^k terms, then A_0 = 0, A_{k+1} = A_k A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

Offset 0, canonical program `A064990.P15716924184883463782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064990 (n : ℕ) : ℤ :=
  A064990.P15716924184883463782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064996.P17668339033509216266

`∑[gcd(2, Δ[floor(n*π²)])]`
-/

namespace A064996.P17668339033509216266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi ^ 2⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064996.P17668339033509216266

noncomputable section

/-- A064996: A Beatty sequence: a(n) = floor(Pi^2 - 8).

Offset 1, canonical program `A064996.P17668339033509216266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064996 (n : ℕ) : ℤ :=
  (A064996.P17668339033509216266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065007.P26704653692681443

`eq[4, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]`
-/

namespace A065007.P26704653692681443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (Real.sqrt (n : ℝ) + (1 - ⌈Real.sqrt (n : ℝ)⌉ : ℝ))⌉ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065007.P26704653692681443

noncomputable section

/-- A065007: Integers for which the periodic part of the continued fraction for the square root of n begins with 4.

Offset 1, canonical program `A065007.P26704653692681443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A065007 (n : ℕ) : ℤ :=
  (A065007.P26704653692681443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A065007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065008.P17253712875511855506

`eq[5, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]`
-/

namespace A065008.P17253712875511855506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (Real.sqrt (n : ℝ) + (1 - ⌈Real.sqrt (n : ℝ)⌉ : ℝ))⌉ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065008.P17253712875511855506

noncomputable section

/-- A065008: Integers for which the periodic part of the continued fraction for the square root of n begins with 5.

Offset 1, canonical program `A065008.P17253712875511855506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1650 terms. -/
def A065008 (n : ℕ) : ℤ :=
  (A065008.P17253712875511855506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1650 terms. -/
def A065008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065009.P56991429542663186

`eq[6, ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1]`
-/

namespace A065009.P56991429542663186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (Real.sqrt (n : ℝ) + (1 - ⌈Real.sqrt (n : ℝ)⌉ : ℝ))⌉ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065009.P56991429542663186

noncomputable section

/-- A065009: Integers for which the periodic part of the continued fraction for the square root of n begins with 6.

Offset 1, canonical program `A065009.P56991429542663186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1211 terms. -/
def A065009 (n : ℕ) : ℤ :=
  (A065009.P56991429542663186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1211 terms. -/
def A065009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065120.P11949846161913114325

`a(floor(n/2))+C(2, ∏{p}[2*n, #])` with `a(0)=0`
-/

namespace A065120.P11949846161913114325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A065120.P11949846161913114325

noncomputable section

/-- A065120: Highest power of 2 dividing A057335(n).

Offset 0, canonical program `A065120.P11949846161913114325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065120 (n : ℕ) : ℤ :=
  (A065120.P11949846161913114325.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065168.P1274827437729612839

`a(n-2)+2` with `a(0)=3, a(1)=1, a(2)=5, a(3)=2`
-/

namespace A065168.P1274827437729612839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 5, 2] fun n a =>
  a (n - 2) + 2

end

end A065168.P1274827437729612839

noncomputable section

/-- A065168: Permutation t->t-1 of Z, folded to N.

Offset 1, canonical program `A065168.P1274827437729612839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065168 (n : ℕ) : ℤ :=
  (A065168.P1274827437729612839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065176.P5511106239495278485

`and(n+1, -n)`
-/

namespace A065176.P5511106239495278485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n : ℤ))

end

end A065176.P5511106239495278485

noncomputable section

/-- A065176: Site swap sequence associated with the permutation A065174 of Z.

Offset 1, canonical program `A065176.P5511106239495278485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065176 (n : ℕ) : ℤ :=
  A065176.P5511106239495278485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065251.P3642109721607212568

`1-lt[xor(n, floor(n/2)), n]%3`
-/

namespace A065251.P3642109721607212568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n % 3 : ℕ) : ℤ)

end

end A065251.P3642109721607212568

noncomputable section

/-- A065251: Simple quasi-periodic sequence consisting of the terms 1, 0 and -1.

Offset 1, canonical program `A065251.P3642109721607212568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065251 (n : ℕ) : ℤ :=
  A065251.P3642109721607212568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065252.P11004860730195619418

`dr(and(11, (floor(log2(n+1))%2-n)%3+1))`
-/

namespace A065252.P11004860730195619418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land 11 (Int.tmod (((Nat.log 2 (n + 1) % 2 : ℕ) : ℤ) - (n : ℤ)) 3 + 1))

end

end A065252.P11004860730195619418

noncomputable section

/-- A065252: The sequence A065251 reduced modulo 3 (i.e., replace every -1 with 2).

Offset 1, canonical program `A065252.P11004860730195619418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065252 (n : ℕ) : ℤ :=
  (A065252.P11004860730195619418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065333.P1505503991428848330

`∏{p}[n+1, floor(3/#)]`
-/

namespace A065333.P1505503991428848330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊3 / (p : ℚ)⌋

end

end A065333.P1505503991428848330

noncomputable section

/-- A065333: Characteristic function of 3-smooth numbers, i.e., numbers of the form 2^i*3^j (i, j >= 0).

Offset 1, canonical program `A065333.P1505503991428848330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065333 (n : ℕ) : ℤ :=
  A065333.P1505503991428848330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065360.P15066176197117585318

`∑[1-val(3*n+1, 2)]`
-/

namespace A065360.P15066176197117585318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (3 * n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065360.P15066176197117585318

noncomputable section

/-- A065360: Alternating sum of "negabits". Replace (-2)^k with (-1)^k in negabinary expansion of n.

Offset 1, canonical program `A065360.P15066176197117585318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065360 (n : ℕ) : ℤ :=
  A065360.P15066176197117585318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065365.P7263896479732553066

`∑[2-2^val(Δ[n²], 3)]`
-/

namespace A065365.P7263896479732553066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (2 ^ SequenceMachineLib.valuation ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065365.P7263896479732553066

noncomputable section

/-- A065365: Replace 3^k with 2^k in balanced ternary expansion of n.

Offset 1, canonical program `A065365.P7263896479732553066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065365 (n : ℕ) : ℤ :=
  A065365.P7263896479732553066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065368.P9462335240614552270

`n%3-a(floor(n/3))` with `a(0)=0`
-/

namespace A065368.P9462335240614552270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 3 : ℕ) : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat

end

end A065368.P9462335240614552270

noncomputable section

/-- A065368: Alternating sum of ternary digits in n. Replace 3^k with (-1)^k in ternary expansion of n.

Offset 0, canonical program `A065368.P9462335240614552270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065368 (n : ℕ) : ℤ :=
  A065368.P9462335240614552270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065438.P11183615738954749796

`comp[a(floor(n/10))+n]` with `a(0)=0`
-/

namespace A065438.P11183615738954749796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 10⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A065438.P11183615738954749796

noncomputable section

/-- A065438: Complement of A065039.

Offset 1, canonical program `A065438.P11183615738954749796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A065438 (n : ℕ) : ℤ :=
  (A065438.P11183615738954749796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A065438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065500.P15680724649823238369

`lcm(n, a(n-1)-(n-2))+n-1` with `a(0)=1, a(1)=1`
-/

namespace A065500.P15680724649823238369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Int.lcm (n : ℤ) (a (n - 1) - ((n : ℤ) - 2)) : ℤ) + ((n : ℤ) - 1)

end

end A065500.P15680724649823238369

noncomputable section

/-- A065500: Number of distinct functions from a set with n^n elements to itself that can be defined naturally (in n) by typed lambda-calculus expressions.

Offset 0, canonical program `A065500.P15680724649823238369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A065500 (n : ℕ) : ℤ :=
  A065500.P15680724649823238369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A065500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065502.P12845643096428173296

`lt[lcm(10, n), 6*n]`
-/

namespace A065502.P12845643096428173296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065502.P12845643096428173296

noncomputable section

/-- A065502: Positive numbers divisible by 2 or 5; 1/n not purely periodic after decimal point.

Offset 1, canonical program `A065502.P12845643096428173296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065502 (n : ℕ) : ℤ :=
  (A065502.P12845643096428173296.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065517.P5073572171385677951

`(n+1)/gcd(n+1, ∑{digits}[n+1, #])`
-/

namespace A065517.P5073572171385677951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ)

end

end A065517.P5073572171385677951

noncomputable section

/-- A065517: Numerator of n/(sum of the digits of n).

Offset 1, canonical program `A065517.P5073572171385677951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065517.P5073572171385677951.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065518.P8717308048095452008

`lcm(n+1, ∑{digits}[n+1, #])/(n+1)`
-/

namespace A065518.P8717308048095452008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ) / (n + 1 : ℚ)

end

end A065518.P8717308048095452008

noncomputable section

/-- A065518: Denominator of n/(sum of the digits of n).

Offset 1, canonical program `A065518.P8717308048095452008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065518.P8717308048095452008.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065565.P8726398307398812924

`floor((5/4)^n)`
-/

namespace A065565.P8726398307398812924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 4) ^ n⌋

end

end A065565.P8726398307398812924

noncomputable section

/-- A065565: a(n) = floor((5/4)^n).

Offset 0, canonical program `A065565.P8726398307398812924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. -/
def A065565 (n : ℕ) : ℤ :=
  A065565.P8726398307398812924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. -/
def A065565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065679.P2181468266283762424

`gcd(lcm(2, n)-n, n²)`
-/

namespace A065679.P2181468266283762424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.lcm 2 n : ℤ) - (n : ℤ)) (n ^ 2 : ℤ)

end

end A065679.P2181468266283762424

noncomputable section

/-- A065679: If n is even, a(n) = n^2 else a(n) = n.

Offset 0, canonical program `A065679.P2181468266283762424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065679 (n : ℕ) : ℤ :=
  (A065679.P2181468266283762424.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065744.P10944096515818284023

`∑{digits}[2^n, C(#, 9)]`
-/

namespace A065744.P10944096515818284023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A065744.P10944096515818284023

noncomputable section

/-- A065744: Number of 9's in the decimal expansion of 2^n.

Offset 0, canonical program `A065744.P10944096515818284023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065744 (n : ℕ) : ℤ :=
  (A065744.P10944096515818284023.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A065744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065877.P7795289949086454230

`lt[n, lcm(n, ∑{digits}[n, #])]`
-/

namespace A065877.P7795289949086454230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A065877.P7795289949086454230

noncomputable section

/-- A065877: Non-Niven (or non-Harshad) numbers: numbers which are not a multiple of the sum of their digits.

Offset 1, canonical program `A065877.P7795289949086454230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8462 terms. -/
def A065877 (n : ℕ) : ℤ :=
  (A065877.P7795289949086454230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8462 terms. -/
def A065877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065924.P13741255543626960932

`∩[floor(10^(n/2)), round(sqrt(10)^n)]`
-/

namespace A065924.P13741255543626960932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (10 : ℝ) ^ n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065924.P13741255543626960932

noncomputable section

/-- A065924: Numbers n such that 1/n starts with n, after excluding leading zeros.

Offset 1, canonical program `A065924.P13741255543626960932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A065924 (n : ℕ) : ℤ :=
  (A065924.P13741255543626960932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. -/
def A065924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065949.P13742744115976970007

`90*C(n+3, 6)`
-/

namespace A065949.P13742744115976970007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90 * Nat.choose (n + 3) 6

end

end A065949.P13742744115976970007

noncomputable section

/-- A065949: Bessel polynomial {y_n}'''(0).

Offset 0, canonical program `A065949.P13742744115976970007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065949 (n : ℕ) : ℤ :=
  (A065949.P13742744115976970007.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065967.P9165261899428571397

`∑{p}[n+1, ceil(n/#+n+1)]`
-/

namespace A065967.P9165261899428571397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ) + (n + 1 : ℚ)⌉

end

end A065967.P9165261899428571397

noncomputable section

/-- A065967: a(n) = n * Sum_{primes p dividing n} (1 + 1/p).

Offset 1, canonical program `A065967.P9165261899428571397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065967 (n : ℕ) : ℤ :=
  A065967.P9165261899428571397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065968.P10122842357532038382

`∑{p}[n+1, n-floor(n/#)]`
-/

namespace A065968.P10122842357532038382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - ⌊(n : ℚ) / (p : ℚ)⌋)

end

end A065968.P10122842357532038382

noncomputable section

/-- A065968: a(n) = n * Sum_{primes p dividing n} (1 - 1/p).

Offset 1, canonical program `A065968.P10122842357532038382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065968 (n : ℕ) : ℤ :=
  A065968.P10122842357532038382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065969.P15778986629120031531

`∑{p}[n+1, ((n+1)/#)²+(n+1)²]`
-/

namespace A065969.P15778986629120031531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (((n + 1 : ℚ) / (p : ℚ)) ^ 2 + ((n + 1) ^ 2 : ℚ))

end

end A065969.P15778986629120031531

noncomputable section

/-- A065969: a(n) = n^2 * Sum_{primes p dividing n} (1 + 1/p^2).

Offset 1, canonical program `A065969.P15778986629120031531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065969.P15778986629120031531.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066002.P9776452134976924755

`∑{digits}[6^n, #]`
-/

namespace A066002.P9776452134976924755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066002.P9776452134976924755

noncomputable section

/-- A066002: Sum of digits of 6^n.

Offset 0, canonical program `A066002.P9776452134976924755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A066002 (n : ℕ) : ℤ :=
  (A066002.P9776452134976924755.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A066002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066003.P3015355534772267401

`∑{digits}[7^n, #]`
-/

namespace A066003.P3015355534772267401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066003.P3015355534772267401

noncomputable section

/-- A066003: Sum of digits of 7^n.

Offset 0, canonical program `A066003.P3015355534772267401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A066003 (n : ℕ) : ℤ :=
  (A066003.P3015355534772267401.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A066003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066022.P2529544976254576572

`floor((n+1)*log(n+1)/log(10))+1`
-/

namespace A066022.P2529544976254576572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.log (n + 1 : ℝ) / Real.log (10 : ℝ)⌋ + 1

end

end A066022.P2529544976254576572

noncomputable section

/-- A066022: Number of digits in n^n.

Offset 1, canonical program `A066022.P2529544976254576572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6131 terms. -/
def A066022 (n : ℕ) : ℤ :=
  A066022.P2529544976254576572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6131 terms. -/
def A066022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066023.P17444100916662004751

`floor(sqrt(or(8, (n+1)^6)))`
-/

namespace A066023.P17444100916662004751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.lor 8 ((n + 1) ^ 6))

end

end A066023.P17444100916662004751

noncomputable section

/-- A066023: (a(n)^7+1)/(n^7+1) is the smallest integer > 1.

Offset 1, canonical program `A066023.P17444100916662004751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A066023 (n : ℕ) : ℤ :=
  (A066023.P17444100916662004751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A066023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066043.P5799595598134881763

`(n+1)*gcd(2, ∏{p}[n, #])`
-/

namespace A066043.P5799595598134881763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A066043.P5799595598134881763

noncomputable section

/-- A066043: a(1) = 1; for m > 0, a(2m) = 2m, a(2m+1) = 4m+2.

Offset 1, canonical program `A066043.P5799595598134881763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066043 (n : ℕ) : ℤ :=
  (A066043.P5799595598134881763.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066090.P15207848368937467409

`C(∑{d}[n+1, #], n+1)`
-/

namespace A066090.P15207848368937467409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (n + 1)

end

end A066090.P15207848368937467409

noncomputable section

/-- A066090: a(n) = binomial(sigma(n), n).

Offset 1, canonical program `A066090.P15207848368937467409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A066090 (n : ℕ) : ℤ :=
  (A066090.P15207848368937467409.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A066090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066107.P5376932278260155520

`(n+1)²-gcd(n%2, a(n-1))` with `a(0)=0`
-/

namespace A066107.P5376932278260155520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 2 : ℤ) - (Int.gcd ((n % 2 : ℕ) : ℤ) (a (n - 1)) : ℤ)

end

end A066107.P5376932278260155520

noncomputable section

/-- A066107: a(0) = 0; for n > 0, a(2n+1) = (2n+1)*(2n+3); a(2n) = 2n + 2.

Offset 0, canonical program `A066107.P5376932278260155520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066107 (n : ℕ) : ℤ :=
  A066107.P5376932278260155520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066247.P15227533178821378383

`C(n, ∏{p}[n+1, C(#, n)])`
-/

namespace A066247.P15227533178821378383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p n)

end

end A066247.P15227533178821378383

noncomputable section

/-- A066247: Characteristic function of composite numbers: 1 if n is composite else 0.

Offset 1, canonical program `A066247.P15227533178821378383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066247 (n : ℕ) : ℤ :=
  (A066247.P15227533178821378383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066301.P1821469824054525443

`(a((n+1)/∏{p}[n+1, #]-1)+1)%∏{e}[n+1, #]` with `a(0)=0`
-/

namespace A066301.P1821469824054525443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) - 1)).toNat + 1) % (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A066301.P1821469824054525443

noncomputable section

/-- A066301: a(n) = 0 if n is squarefree, otherwise 1 + a(n/rad(n)) where rad = A007947 (squarefree kernel).

Offset 1, canonical program `A066301.P1821469824054525443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066301 (n : ℕ) : ℤ :=
  (A066301.P1821469824054525443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066308.P4607988552790848228

`∑{digits}[n+1, #]*∏{digits}[n+1, #]`
-/

namespace A066308.P4607988552790848228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

end

end A066308.P4607988552790848228

noncomputable section

/-- A066308: a(n) = (sum of digits of n) * (product of digits of n).

Offset 1, canonical program `A066308.P4607988552790848228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066308 (n : ℕ) : ℤ :=
  (A066308.P4607988552790848228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066310.P16747959355980266329

`lt[n, ∑{digits}[n, #]*∏{digits}[n, #]]`
-/

namespace A066310.P16747959355980266329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum * ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066310.P16747959355980266329

noncomputable section

/-- A066310: Numbers k such that k < (product of digits of k) * (sum of digits of k).

Offset 1, canonical program `A066310.P16747959355980266329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4406 terms. -/
def A066310 (n : ℕ) : ℤ :=
  (A066310.P16747959355980266329.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4406 terms. -/
def A066310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066377.P16005038335694975119

`∑[a(n-1)+gcd(floor(n/3)+1, a(n-1))]` with `a(0)=1`
-/

namespace A066377.P16005038335694975119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + Int.gcd (⌊(n : ℚ) / 3⌋ + 1) (f1 (n - 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066377.P16005038335694975119

noncomputable section

/-- A066377: Number of numbers m <= n such that floor(sqrt(m)) divides m.

Offset 1, canonical program `A066377.P16005038335694975119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066377 (n : ℕ) : ℤ :=
  (A066377.P16005038335694975119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066393.P13838524488355210119

`n*(3-4%gcd(n, a(n-1)))` with `a(0)=1`
-/

namespace A066393.P13838524488355210119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (3 - ((4 % Int.gcd (n : ℤ) (a (n - 1)) : ℕ) : ℤ))

end

end A066393.P13838524488355210119

noncomputable section

/-- A066393: Coordination sequence for (9^3, 3.9^2) net with respect to a vertex of type 9^3.

Offset 0, canonical program `A066393.P13838524488355210119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066393 (n : ℕ) : ℤ :=
  A066393.P13838524488355210119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066429.P16012795310773591166

`(7^(n+1))%((n+1)^7)`
-/

namespace A066429.P16012795310773591166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n + 1) % (n + 1) ^ 7

end

end A066429.P16012795310773591166

noncomputable section

/-- A066429: a(n) = 7^n mod n^7.

Offset 1, canonical program `A066429.P16012795310773591166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A066429 (n : ℕ) : ℤ :=
  (A066429.P16012795310773591166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A066429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066430.P16633168278982870177

`(8^(n+1))%((n+1)^8)`
-/

namespace A066430.P16633168278982870177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (n + 1) % (n + 1) ^ 8

end

end A066430.P16633168278982870177

noncomputable section

/-- A066430: a(n) = 8^n mod n^8.

Offset 1, canonical program `A066430.P16633168278982870177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A066430 (n : ℕ) : ℤ :=
  (A066430.P16633168278982870177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A066430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066431.P7504177309257866580

`(9^(n+1))%((n+1)^9)`
-/

namespace A066431.P7504177309257866580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ (n + 1) % (n + 1) ^ 9

end

end A066431.P7504177309257866580

noncomputable section

/-- A066431: a(n) = 9^n mod n^9.

Offset 1, canonical program `A066431.P7504177309257866580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A066431 (n : ℕ) : ℤ :=
  (A066431.P7504177309257866580.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A066431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066432.P15776913260726694301

`(10^(n+1))%((n+1)^10)`
-/

namespace A066432.P15776913260726694301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (n + 1) % (n + 1) ^ 10

end

end A066432.P15776913260726694301

noncomputable section

/-- A066432: a(n) = 10^n mod n^10.

Offset 1, canonical program `A066432.P15776913260726694301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A066432 (n : ℕ) : ℤ :=
  (A066432.P15776913260726694301.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A066432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066459.P9552131526569894282

`∏{digits}[n, #!]`
-/

namespace A066459.P9552131526569894282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial x).prod

end

end A066459.P9552131526569894282

noncomputable section

/-- A066459: Product of factorials of the digits of n.

Offset 0, canonical program `A066459.P9552131526569894282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066459 (n : ℕ) : ℤ :=
  (A066459.P9552131526569894282.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066481.P9615400115372545545

`round(2*(n/3+1))`
-/

namespace A066481.P9615400115372545545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3 + 1))

end

end A066481.P9615400115372545545

noncomputable section

/-- A066481: Largest anti-divisor of n.

Offset 3, canonical program `A066481.P9615400115372545545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066481 (n : ℕ) : ℤ :=
  A066481.P9615400115372545545.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066490.P4637826063485355079

`∑[C(and(2, n), ∏{e}[n+1, #+1])]`
-/

namespace A066490.P4637826063485355079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 2 n) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066490.P4637826063485355079

noncomputable section

/-- A066490: Number of primes of the form 4m+3 that are <= n.

Offset 1, canonical program `A066490.P4637826063485355079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066490 (n : ℕ) : ℤ :=
  (A066490.P4637826063485355079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066508.P12566484151815834637

`floor(∑[root(n+1, -(n+1))])`
-/

namespace A066508.P12566484151815834637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (-(n + 1 : ℤ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A066508.P12566484151815834637

noncomputable section

/-- A066508: a(n) = floor(Sum_{i=1..n} (1/i)^(1/i)).

Offset 1, canonical program `A066508.P12566484151815834637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. -/
def A066508 (n : ℕ) : ℤ :=
  A066508.P12566484151815834637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. -/
def A066508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066568.P13231785495272772944

`n-∑{digits}[n, #]`
-/

namespace A066568.P13231785495272772944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A066568.P13231785495272772944

noncomputable section

/-- A066568: a(n) = n - sum of digits of n.

Offset 0, canonical program `A066568.P13231785495272772944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066568 (n : ℕ) : ℤ :=
  A066568.P13231785495272772944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066578.P15388858903670533530

`floor((n+1)/∑{digits}[n+1, #])`
-/

namespace A066578.P15388858903670533530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ)⌋

end

end A066578.P15388858903670533530

noncomputable section

/-- A066578: a(n) = floor(n/(sum of digits of n)).

Offset 1, canonical program `A066578.P15388858903670533530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066578 (n : ℕ) : ℤ :=
  A066578.P15388858903670533530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066586.P489362972348598305

`a(n-1)` with `a(0)=2, a(1)=6, a(2)=9, a(3)=11, a(4)=9`
-/

namespace A066586.P489362972348598305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 9, 11, 9] fun n a =>
  a (n - 1)

end

end A066586.P489362972348598305

noncomputable section

/-- A066586: Number of normal subgroups of the group of n X n signed permutations matrices (described in sequence A066051).

Offset 1, canonical program `A066586.P489362972348598305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066586 (n : ℕ) : ℤ :=
  (A066586.P489362972348598305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066607.P13916445278647456569

`(3^(n+1))%Δ[∑[n]²]`
-/

namespace A066607.P13916445278647456569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 ^ (n + 1) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A066607.P13916445278647456569

noncomputable section

/-- A066607: a(n) = 3^n mod n^3.

Offset 1, canonical program `A066607.P13916445278647456569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A066607 (n : ℕ) : ℤ :=
  A066607.P13916445278647456569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A066607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066608.P14280582512013018559

`(4^(n+1))%((n+1)^4)`
-/

namespace A066608.P14280582512013018559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1) % (n + 1) ^ 4

end

end A066608.P14280582512013018559

noncomputable section

/-- A066608: a(n) = 4^n mod n^4.

Offset 1, canonical program `A066608.P14280582512013018559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A066608 (n : ℕ) : ℤ :=
  (A066608.P14280582512013018559.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A066608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066609.P1270555402990679739

`(5^(n+1))%((n+1)^5)`
-/

namespace A066609.P1270555402990679739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1) % (n + 1) ^ 5

end

end A066609.P1270555402990679739

noncomputable section

/-- A066609: a(n) = 5^n mod n^5.

Offset 1, canonical program `A066609.P1270555402990679739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A066609 (n : ℕ) : ℤ :=
  (A066609.P1270555402990679739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A066609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066610.P12730196416903884397

`(6^(n+1))%((n+1)^6)`
-/

namespace A066610.P12730196416903884397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1) % (n + 1) ^ 6

end

end A066610.P12730196416903884397

noncomputable section

/-- A066610: a(n) = 6^n mod n^6.

Offset 1, canonical program `A066610.P12730196416903884397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A066610 (n : ℕ) : ℤ :=
  (A066610.P12730196416903884397.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A066610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066616.P4794885045133405147

`a(n-1)+n%(a(n-1)%(n+1)+n)*a(n-1)` with `a(0)=1`
-/

namespace A066616.P4794885045133405147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n % (a (n - 1) % (n + 1) + n) * a (n - 1)

end

end A066616.P4794885045133405147

noncomputable section

/-- A066616: a(1) = 1; a(n) = n*a(n-1) if n does not divide a(n-1), otherwise a(n) = a(n-1).

Offset 1, canonical program `A066616.P4794885045133405147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A066616 (n : ℕ) : ℤ :=
  (A066616.P4794885045133405147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A066616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066641.P15505875922675025991

`floor(sqrt((n+1)²^sqrt(n+1)))`
-/

namespace A066641.P15505875922675025991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 1) ^ 2 : ℝ) ^ (Real.sqrt (n + 1 : ℝ)))⌋

end

end A066641.P15505875922675025991

noncomputable section

/-- A066641: a(n) = floor(n^sqrt(n)).

Offset 1, canonical program `A066641.P15505875922675025991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A066641 (n : ℕ) : ℤ :=
  A066641.P15505875922675025991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A066641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066665.P10255352463234354248

`∑[C(C(2, ∑{e}[n+1, #]), 2)]+∑[∑[C(2*n+1, ∏{d}[2*n+1, #])]-∑[C(C(2, ∑{e}[n+1, #]), 2)]]`
-/

namespace A066665.P10255352463234354248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (∏ d ∈ Nat.divisors (f5 n), d)

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f7 n), Nat.factorization (f7 n) p)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f6 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A066665.P10255352463234354248

noncomputable section

/-- A066665: a(n) = #{(x,y) | 0<=y<=x<=n and x+y is prime}.

Offset 0, canonical program `A066665.P10255352463234354248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066665 (n : ℕ) : ℤ :=
  A066665.P10255352463234354248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066729.P13452211407217008978

`lcm(∏{d}[n+1, #]/(n+1), ∏{p}[n+1, #])`
-/

namespace A066729.P13452211407217008978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A066729.P13452211407217008978

noncomputable section

/-- A066729: a(n) = Product_{d|n, d

Offset 1, canonical program `A066729.P13452211407217008978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A066729 (n : ℕ) : ℤ :=
  (A066729.P13452211407217008978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A066729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066750.P11837245041491623111

`gcd(n+1, ∑{digits}[n+1, #])`
-/

namespace A066750.P11837245041491623111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A066750.P11837245041491623111

noncomputable section

/-- A066750: Greatest common divisor of n and its digit sum.

Offset 1, canonical program `A066750.P11837245041491623111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066750 (n : ℕ) : ℤ :=
  (A066750.P11837245041491623111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066767.P4691301214717271049

`∑{d}[n+1, #]+2*a(n-1)` with `a(0)=1`
-/

namespace A066767.P4691301214717271049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), d + 2 * a (n - 1)

end

end A066767.P4691301214717271049

noncomputable section

/-- A066767: a(n) = Sum_{k=1..n} sigma(k)*2^(n-k) where sigma(k) = A000203(k) is the sum of divisors of k.

Offset 1, canonical program `A066767.P4691301214717271049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A066767 (n : ℕ) : ℤ :=
  (A066767.P4691301214717271049.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A066767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066778.P6510944497203602289

`∑[floor((3/2)^(n+1))]`
-/

namespace A066778.P6510944497203602289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 : ℚ) / 2) ^ (n + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066778.P6510944497203602289

noncomputable section

/-- A066778: a(n) = Sum_{i=1..n} floor((3/2)^i).

Offset 1, canonical program `A066778.P6510944497203602289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. -/
def A066778 (n : ℕ) : ℤ :=
  A066778.P6510944497203602289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. -/
def A066778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066779.P3857775328897892843

`∑[C(∏{p}[n+1, #], n)]`
-/

namespace A066779.P3857775328897892843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066779.P3857775328897892843

noncomputable section

/-- A066779: Sum of squarefree numbers <= n.

Offset 1, canonical program `A066779.P3857775328897892843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066779 (n : ℕ) : ℤ :=
  (A066779.P3857775328897892843.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066787.P5311909586095374084

`gcd(2^(n+1)+1, (n+1)²+1)`
-/

namespace A066787.P5311909586095374084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ (n + 1) + 1) ((n + 1) ^ 2 + 1)

end

end A066787.P5311909586095374084

noncomputable section

/-- A066787: a(n) = gcd(2^n + 1, n^2 + 1).

Offset 1, canonical program `A066787.P5311909586095374084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066787 (n : ℕ) : ℤ :=
  (A066787.P5311909586095374084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066788.P5788608290378877642

`gcd(n²+2*(n+1), ∏{p}[n+1, #-1])`
-/

namespace A066788.P5788608290378877642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + 2 * (n + 1) : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1))

end

end A066788.P5788608290378877642

noncomputable section

/-- A066788: a(n) = gcd(phi(n), n^2 + 1).

Offset 1, canonical program `A066788.P5788608290378877642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066788 (n : ℕ) : ℤ :=
  (A066788.P5788608290378877642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066804.P8927759749104111052

`∑[∑[∑[8*n-3]+4]]`
-/

namespace A066804.P8927759749104111052
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066804.P8927759749104111052

noncomputable section

/-- A066804: Sum of diagonal elements and those below it for a square matrix of integers, starting with 1.

Offset 1, canonical program `A066804.P8927759749104111052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066804 (n : ℕ) : ℤ :=
  A066804.P8927759749104111052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066809.P13037445779185629992

`∑[∑[n+1]-∑{d}[n+1, (#%(n+1))²]]`
-/

namespace A066809.P13037445779185629992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), (d % (n + 1)) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066809.P13037445779185629992

noncomputable section

/-- A066809: a(n) = sum of modular offsets: mod[n+c,b]-(mod[n,b]+c) for c<=b<=n.

Offset 1, canonical program `A066809.P13037445779185629992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3920 terms. -/
def A066809 (n : ℕ) : ℤ :=
  A066809.P13037445779185629992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3920 terms. -/
def A066809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066827.P11875083984168889025

`gcd(∑[2^n]+2, n%4)`
-/

namespace A066827.P11875083984168889025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j + 2) (n % 4)

end

end A066827.P11875083984168889025

noncomputable section

/-- A066827: a(n) = gcd(2^((n*(n+1)/2)) + 1, 2^n + 1).

Offset 1, canonical program `A066827.P11875083984168889025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066827 (n : ℕ) : ℤ :=
  (A066827.P11875083984168889025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066841.P9103371975686681261

`floor(∏{d}[n+1, ((n+1)/#)^#])`
-/

namespace A066841.P9103371975686681261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ d⌋

end

end A066841.P9103371975686681261

noncomputable section

/-- A066841: a(n) = Product{k|n} k^(n/k); product is over the positive divisors of n.

Offset 1, canonical program `A066841.P9103371975686681261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A066841 (n : ℕ) : ℤ :=
  A066841.P9103371975686681261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A066841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066843.P11609085839140646616

`∏[∏{e}[n, #+1]]`
-/

namespace A066843.P11609085839140646616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066843.P11609085839140646616

noncomputable section

/-- A066843: a(n) = Product_{k=1..n} d(k); d(k) = A000005(k) is the number of positive divisors of k.

Offset 0, canonical program `A066843.P11609085839140646616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A066843 (n : ℕ) : ℤ :=
  (A066843.P11609085839140646616.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A066843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066880.P16409786325335019029

`or(n, lcm(2, a(n-1)))` with `a(0)=2`
-/

namespace A066880.P16409786325335019029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor n (Nat.lcm 2 (a (n - 1)))

end

end A066880.P16409786325335019029

noncomputable section

/-- A066880: Biased numbers: n such that all terms of the sequence f(n), f(f(n)), f(f(f(n))), ..., 1, where f(k) = floor(k/2), are odd.

Offset 1, canonical program `A066880.P16409786325335019029`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A066880 (n : ℕ) : ℤ :=
  (A066880.P16409786325335019029.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 662 terms. -/
def A066880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066922.P17737872667638270886

`gcd(∑{e}[n+1, #-1], ∑{e}[n+1, #])`
-/

namespace A066922.P17737872667638270886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)) ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A066922.P17737872667638270886

noncomputable section

/-- A066922: a(n) = gcd(Omega(n), omega(n)).

Offset 1, canonical program `A066922.P17737872667638270886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066922 (n : ℕ) : ℤ :=
  (A066922.P17737872667638270886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066949.P14089087774726009632

`(a(n-1)+a(n-2)-1)%n+1` with `a(0)=0, a(1)=1`
-/

namespace A066949.P14089087774726009632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod (a (n - 1) + (a (n - 2) - 1)) (n : ℤ) + 1

end

end A066949.P14089087774726009632

noncomputable section

/-- A066949: Take the sum of the previous two terms, subtract n if this sum is greater than n.

Offset 0, canonical program `A066949.P14089087774726009632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066949 (n : ℕ) : ℤ :=
  A066949.P14089087774726009632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066959.P15826289147471869282

`(n+1)*∑{e}[n+1, #]`
-/

namespace A066959.P15826289147471869282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A066959.P15826289147471869282

noncomputable section

/-- A066959: a(n) = bigomega(n^n) where bigomega(x) is the number of prime factors in x (counted with multiplicity).

Offset 1, canonical program `A066959.P15826289147471869282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066959 (n : ℕ) : ℤ :=
  (A066959.P15826289147471869282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066971.P3877498513329019214

`∑{d}[∑{d}[∑{d}[n+1, #], #], #]`
-/

namespace A066971.P3877498513329019214
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A066971.P3877498513329019214

noncomputable section

/-- A066971: a(n) = sigma(sigma(sigma(n))).

Offset 1, canonical program `A066971.P3877498513329019214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066971 (n : ℕ) : ℤ :=
  (A066971.P3877498513329019214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066997.P15947561357529940953

`∑[abs(a(∑[n-1]%n))]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A066997.P15947561357529940953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  f1 (Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066997.P15947561357529940953

noncomputable section

/-- A066997: Survivor number for 2nd-order Josephus problem.

Offset 2, canonical program `A066997.P15947561357529940953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066997 (n : ℕ) : ℤ :=
  (A066997.P15947561357529940953.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067016.P13599036964875947194

`a(n-2)+4` with `a(0)=1, a(1)=4, a(2)=3, a(3)=2, a(4)=7, a(5)=8`
-/

namespace A067016.P13599036964875947194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 2, 7, 8] fun n a =>
  a (n - 2) + 4

end

end A067016.P13599036964875947194

noncomputable section

/-- A067016: Start with a(0)=1, a(1)=4, a(2)=3, a(3)=2; for n>=3, a(n+1) = max_i (a(i)+a(n-i)).

Offset 0, canonical program `A067016.P13599036964875947194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067016 (n : ℕ) : ℤ :=
  (A067016.P13599036964875947194.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067018.P17592362803223810961

`a(n-2)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=2, a(4)=0`
-/

namespace A067018.P17592362803223810961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 2, 0] fun n a =>
  a (n - 2)

end

end A067018.P17592362803223810961

noncomputable section

/-- A067018: Start with a(0)=1, a(1)=4, a(2)=3, a(3)=2; for n>=3, a(n+1) = mex_i (nim-sum a(i)+a(n-i)), where mex means smallest nonnegative missing number.

Offset 0, canonical program `A067018.P17592362803223810961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067018 (n : ℕ) : ℤ :=
  (A067018.P17592362803223810961.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067037.P2022859599819277212

`(n+1)^floor(∑[1/(n+1)])`
-/

namespace A067037.P2022859599819277212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℤ)

end

end A067037.P2022859599819277212

noncomputable section

/-- A067037: a(n) = n^m where m = floor(Sum_{k=1..n} 1/k).

Offset 1, canonical program `A067037.P2022859599819277212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067037 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067037.P2022859599819277212.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067038.P6661436318598996691

`floor((n+1)^∑[1/(n+1)])`
-/

namespace A067038.P6661436318598996691
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌋

end

end A067038.P6661436318598996691

noncomputable section

/-- A067038: a(n) = floor(n^m) where m = Sum_{k=1..n} (1/k).

Offset 1, canonical program `A067038.P6661436318598996691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067038 (n : ℕ) : ℤ :=
  A067038.P6661436318598996691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067053.P8719302951759786561

`floor(∑[1/(n+1)])^(n+1)`
-/

namespace A067053.P8719302951759786561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ (n + 1)

end

end A067053.P8719302951759786561

noncomputable section

/-- A067053: Floor[ Sum_{1..n} 1/i ]^n.

Offset 1, canonical program `A067053.P8719302951759786561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A067053 (n : ℕ) : ℤ :=
  A067053.P8719302951759786561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A067053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067054.P12038456167711417268

`floor(∑[1/(n+1)]^∑[1/(n+1)])`
-/

namespace A067054.P12038456167711417268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f2 j : ℚ) : ℝ)⌋

end

end A067054.P12038456167711417268

noncomputable section

/-- A067054: a(n) = floor(s^s) where s = Sum_{k=1..n} 1/k.

Offset 1, canonical program `A067054.P12038456167711417268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067054 (n : ℕ) : ℤ :=
  A067054.P12038456167711417268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067056.P3376991117383993794

`∑[∑[2*n²]]+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A067056.P3376991117383993794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A067056.P3376991117383993794

noncomputable section

/-- A067056: a(n) = (1)*(2 + 3 + 4 + ... + n) + (1 + 2)*(3 + 4 + 5 + ... + n) + (1 + 2 + 3)*(4 + 5 + 6 + ... + n) + ... + (1 + 2 + 3 + ... + n-1)*n.

Offset 1, canonical program `A067056.P3376991117383993794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067056 (n : ℕ) : ℤ :=
  (A067056.P3376991117383993794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067061.P12545489466336529960

`a(n-2)+a(a(n-2)²%3)` with `a(0)=4, a(1)=1`
-/

namespace A067061.P12545489466336529960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + a (a (n - 2) ^ 2 % 3)

end

end A067061.P12545489466336529960

noncomputable section

/-- A067061: A permutation of the natural numbers.

Offset 1, canonical program `A067061.P12545489466336529960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067061 (n : ℕ) : ℤ :=
  (A067061.P12545489466336529960.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067068.P1628427676556564340

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]-2^(n+1)`
-/

namespace A067068.P1628427676556564340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ (n + 1) : ℤ)

end

end A067068.P1628427676556564340

noncomputable section

/-- A067068: a(n) = n* - 2^n, where n* (A003418) = least common multiple of the numbers [1,...,n].

Offset 1, canonical program `A067068.P1628427676556564340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A067068 (n : ℕ) : ℤ :=
  A067068.P1628427676556564340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A067068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067085.P10487747671815619206

`floor(∑[cos(atan(sqrt(n)))])`
-/

namespace A067085.P10487747671815619206
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arctan (Real.sqrt (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A067085.P10487747671815619206

noncomputable section

/-- A067085: a(n) = floor(Sum_{k=1..n} 1/k^(1/2)).

Offset 1, canonical program `A067085.P10487747671815619206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A067085 (n : ℕ) : ℤ :=
  A067085.P10487747671815619206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A067085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067086.P8938590462435816849

`floor(∑[root(n+1, -3)])`
-/

namespace A067086.P8938590462435816849
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (-3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A067086.P8938590462435816849

noncomputable section

/-- A067086: a(n) = floor(Sum_{k=1..n} 1/k^(1/3)).

Offset 1, canonical program `A067086.P8938590462435816849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1165 terms. -/
def A067086 (n : ℕ) : ℤ :=
  A067086.P8938590462435816849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1165 terms. -/
def A067086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067396.P76496660823402310

`2*eq[2, and(n, -n)%7]+n`
-/

namespace A067396.P76496660823402310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n

end

end A067396.P76496660823402310

noncomputable section

/-- A067396: a(n) is the position of the n-th occurrence of the pair "2,2" in A067395 (the first difference sequence of A067368).

Offset 1, canonical program `A067396.P76496660823402310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067396 (n : ℕ) : ℤ :=
  (A067396.P76496660823402310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067403.P13813099559056693451

`9*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A067403.P13813099559056693451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  9 * a (n - 1)

end

end A067403.P13813099559056693451

noncomputable section

/-- A067403: Third column of triangle A067402.

Offset 0, canonical program `A067403.P13813099559056693451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A067403 (n : ℕ) : ℤ :=
  (A067403.P13813099559056693451.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A067403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067411.P3091536163940359771

`6*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A067411.P3091536163940359771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  6 * a (n - 1)

end

end A067411.P3091536163940359771

noncomputable section

/-- A067411: Third column of triangle A067410 and second column of A067417.

Offset 0, canonical program `A067411.P3091536163940359771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A067411 (n : ℕ) : ℤ :=
  (A067411.P3091536163940359771.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A067411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067412.P17209142355277420575

`8*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A067412.P17209142355277420575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  8 * a (n - 1)

end

end A067412.P17209142355277420575

noncomputable section

/-- A067412: Fourth column of triangle A067410.

Offset 0, canonical program `A067412.P17209142355277420575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A067412 (n : ℕ) : ℤ :=
  (A067412.P17209142355277420575.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A067412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067456.P4645113891199048441

`floor(sqrt(∑{digits}[n, #²]))`
-/

namespace A067456.P4645113891199048441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A067456.P4645113891199048441

noncomputable section

/-- A067456: Floor( sqrt( sum of the decimal digits of n squared)).

Offset 0, canonical program `A067456.P4645113891199048441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067456 (n : ℕ) : ℤ :=
  (A067456.P4645113891199048441.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067589.P983407005055868196

`C(or(2, n), 2)+n²+n`
-/

namespace A067589.P983407005055868196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 2 n) 2 + (n ^ 2 + n)

end

end A067589.P983407005055868196

noncomputable section

/-- A067589: Numbers k such that A067588(k) is an odd number.

Offset 1, canonical program `A067589.P983407005055868196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067589 (n : ℕ) : ℤ :=
  (A067589.P983407005055868196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067602.P15359371507627435769

`(5^n)%(3^n)`
-/

namespace A067602.P15359371507627435769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n % 3 ^ n

end

end A067602.P15359371507627435769

noncomputable section

/-- A067602: 5^n reduced modulo 3^n.

Offset 0, canonical program `A067602.P15359371507627435769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A067602 (n : ℕ) : ℤ :=
  (A067602.P15359371507627435769.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A067602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067634.P9839746598993504444

`10*a(n-1)` with `a(0)=1, a(1)=4, a(2)=13`
-/

namespace A067634.P9839746598993504444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 13] fun n a =>
  10 * a (n - 1)

end

end A067634.P9839746598993504444

noncomputable section

/-- A067634: a(1) = 1; string of digits of a(n)^2 is a substring of the string of digits of a(n+1)^2.

Offset 1, canonical program `A067634.P9839746598993504444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A067634 (n : ℕ) : ℤ :=
  (A067634.P9839746598993504444.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A067634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067666.P12370419235795502873

`∑{p}[n+1, #²*val(n+1, #)]`
-/

namespace A067666.P12370419235795502873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ 2 * SequenceMachineLib.valuation (n + 1) p

end

end A067666.P12370419235795502873

noncomputable section

/-- A067666: Sum of squares of prime factors of n (counted with multiplicity).

Offset 1, canonical program `A067666.P12370419235795502873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067666 (n : ℕ) : ℤ :=
  (A067666.P12370419235795502873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067715.P12844734517266382009

`lt[∑{e}[n+1, #], log(n+1)]+1`
-/

namespace A067715.P12844734517266382009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f3 j) n + 1

end

end A067715.P12844734517266382009

noncomputable section

/-- A067715: Numbers k such that the sum of exponents in the prime factorization of k is < log(k).

Offset 1, canonical program `A067715.P12844734517266382009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9856 terms. -/
def A067715 (n : ℕ) : ℤ :=
  (A067715.P12844734517266382009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9856 terms. -/
def A067715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067873.P12485415058092700063

`lt[3, ∏{e}[1-n², #]]`
-/

namespace A067873.P12485415058092700063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A067873.P12485415058092700063

noncomputable section

/-- A067873: Numbers x satisfying x^2 - D*y^2 = 1 for more than one value of D distinct from x^2 - 1.

Offset 1, canonical program `A067873.P12485415058092700063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A067873 (n : ℕ) : ℤ :=
  (A067873.P12485415058092700063.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A067873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068018.P5680289692596423291

`∑[4*a(n-2)-2]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A068018.P5680289692596423291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  4 * f1 (n - 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068018.P5680289692596423291

noncomputable section

/-- A068018: Number of fixed points in all 132- and 213-avoiding permutations of {1,2,...,n} (these are permutations with runs consisting of consecutive integers).

Offset 0, canonical program `A068018.P5680289692596423291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A068018 (n : ℕ) : ℤ :=
  A068018.P5680289692596423291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A068018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068028.P7650815687401952447

`9-a(n-3)` with `a(0)=3, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A068028.P7650815687401952447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 4, 2] fun n a =>
  9 - a (n - 3)

end

end A068028.P7650815687401952447

noncomputable section

/-- A068028: Decimal expansion of 22/7.

Offset 1, canonical program `A068028.P7650815687401952447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068028 (n : ℕ) : ℤ :=
  A068028.P7650815687401952447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068228.P2780938449886948151

`p?[12*n+1]`
-/

namespace A068228.P2780938449886948151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068228.P2780938449886948151

noncomputable section

/-- A068228: Primes congruent to 1 (mod 12).

Offset 1, canonical program `A068228.P2780938449886948151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068228 (n : ℕ) : ℤ :=
  (A068228.P2780938449886948151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068229.P4621681780880692968

`p?[12*n-5]`
-/

namespace A068229.P4621681780880692968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068229.P4621681780880692968

noncomputable section

/-- A068229: Primes congruent to 7 (mod 12).

Offset 1, canonical program `A068229.P4621681780880692968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068229 (n : ℕ) : ℤ :=
  A068229.P4621681780880692968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068231.P17213326245537033468

`p?[12*n-1]`
-/

namespace A068231.P17213326245537033468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068231.P17213326245537033468

noncomputable section

/-- A068231: Primes congruent to 11 mod 12.

Offset 1, canonical program `A068231.P17213326245537033468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068231 (n : ℕ) : ℤ :=
  A068231.P17213326245537033468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068433.P3631299675756152043

`floor(2^n*log(3))²%2`
-/

namespace A068433.P3631299675756152043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(2 ^ n : ℝ) * Real.log (3 : ℝ)⌋ ^ 2) 2

end

end A068433.P3631299675756152043

noncomputable section

/-- A068433: Expansion of log(3) in base 2.

Offset 1, canonical program `A068433.P3631299675756152043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A068433 (n : ℕ) : ℤ :=
  A068433.P3631299675756152043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A068433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068434.P13581560543357549764

`floor(2^n*log(5))%2`
-/

namespace A068434.P13581560543357549764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ n : ℝ) * Real.log (5 : ℝ)⌋ 2

end

end A068434.P13581560543357549764

noncomputable section

/-- A068434: Expansion of log(5) in base 2.

Offset 1, canonical program `A068434.P13581560543357549764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A068434 (n : ℕ) : ℤ :=
  A068434.P13581560543357549764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A068434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068494.P11271685495716018462

`(n+1)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A068494.P11271685495716018462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A068494.P11271685495716018462

noncomputable section

/-- A068494: a(n) = n mod phi(n).

Offset 1, canonical program `A068494.P11271685495716018462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068494 (n : ℕ) : ℤ :=
  A068494.P11271685495716018462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068511.P1850682731934278667

`∏[∏{d}[∑{p}[n+1, C(#, n)], #]]-2^n`
-/

namespace A068511.P1850682731934278667
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ)

end

end A068511.P1850682731934278667

noncomputable section

/-- A068511: (Product of primes <= n) - 2^(n-1).

Offset 1, canonical program `A068511.P1850682731934278667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A068511 (n : ℕ) : ℤ :=
  A068511.P1850682731934278667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A068511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068548.P254438417810054808

`4^n*∑[2*(n+1)²-1]`
-/

namespace A068548.P254438417810054808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A068548.P254438417810054808

noncomputable section

/-- A068548: Coefficients of (-x^(2n-6)) in Chebyshev polynomial of degree 2n.

Offset 1, canonical program `A068548.P254438417810054808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A068548 (n : ℕ) : ℤ :=
  A068548.P254438417810054808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A068548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068627.P8644752478277452911

`∑[n*(2-gcd(n, xor(3, n)))]`
-/

namespace A068627.P8644752478277452911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - (Nat.gcd n (Nat.xor 3 n) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068627.P8644752478277452911

noncomputable section

/-- A068627: a(0) = 0, a(n) = a(n-1) + n if n does not divide a(n-1). a(n) = a(n-1) - n if n divides a(n-1). a(n) = n if a(n-1) = 0.

Offset 0, canonical program `A068627.P8644752478277452911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068627 (n : ℕ) : ℤ :=
  A068627.P8644752478277452911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068762.P17266874860166852418

`∑[(-1)^n*∑{d}[n+1, #]]`
-/

namespace A068762.P17266874860166852418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068762.P17266874860166852418

noncomputable section

/-- A068762: Alternating sum sigma(1)-sigma(2)+sigma(3)-sigma(4)+...+((-1)^(n+1))*sigma(n).

Offset 1, canonical program `A068762.P17266874860166852418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068762 (n : ℕ) : ℤ :=
  A068762.P17266874860166852418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068824.P8951866495167767291

`(n+1)*(∏{digits}[n+1, floor(#/10)+10]-(n+1))`
-/

namespace A068824.P8951866495167767291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 10⌋ + 10).prod - (n + 1 : ℤ))

end

end A068824.P8951866495167767291

noncomputable section

/-- A068824: a(n) = n*c(n), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068824.P8951866495167767291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068824 (n : ℕ) : ℤ :=
  A068824.P8951866495167767291.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068904.P2272714798214094916

`C(∑{d}[n+1, #], ∏{e}[n+1, #+1])`
-/

namespace A068904.P2272714798214094916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A068904.P2272714798214094916

noncomputable section

/-- A068904: a(n) = binomial(sigma(n),tau(n)), where sigma(n) is the sum and tau(n) the number of divisors of n (A000203, A000005).

Offset 1, canonical program `A068904.P2272714798214094916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A068904 (n : ℕ) : ℤ :=
  (A068904.P2272714798214094916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A068904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068905.P7155855156335079190

`C(∑{d}[n+1, #], ∑{p}[n+1, gcd(n, #)])`
-/

namespace A068905.P7155855156335079190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ d ∈ Nat.divisors (f1 n), d) (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p)

end

end A068905.P7155855156335079190

noncomputable section

/-- A068905: Binomial(sigma(n),omega(n)), where sigma(n) is the sum of divisors of n (A000203) and omega the number of distinct prime factors (A001221).

Offset 1, canonical program `A068905.P7155855156335079190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068905 (n : ℕ) : ℤ :=
  (A068905.P7155855156335079190.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068976.P7287247804472711725

`∑{d}[n+1, gcd(#, (n+1)/#)²]`
-/

namespace A068976.P7287247804472711725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))) ^ 2

end

end A068976.P7287247804472711725

noncomputable section

/-- A068976: a(n) = Sum_{d | n} d/core(d) where core(x) is the smallest number such that x*core(x) is a square.

Offset 1, canonical program `A068976.P7287247804472711725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068976 (n : ℕ) : ℤ :=
  (A068976.P7287247804472711725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068995.P18313009583338607265

`floor(sqrt(10)^(n+2)/9)`
-/

namespace A068995.P18313009583338607265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (10 : ℝ) ^ (n + 2) / 9⌋

end

end A068995.P18313009583338607265

noncomputable section

/-- A068995: Integer parts of the square roots of the schizophrenic numbers (A014824).

Offset 1, canonical program `A068995.P18313009583338607265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A068995 (n : ℕ) : ℤ :=
  A068995.P18313009583338607265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A068995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069013.P9711552447817596826

`floor(a(n-3)+a(n-2)/a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A069013.P9711552447817596826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  ⌊(a (n - 3) : ℚ) + (a (n - 2) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A069013.P9711552447817596826

noncomputable section

/-- A069013: a(1)=a(2)=a(3)=1; for n > 3, a(n) = floor(a(n-3) + a(n-2)/a(n-1)).

Offset 1, canonical program `A069013.P9711552447817596826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069013 (n : ℕ) : ℤ :=
  A069013.P9711552447817596826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069153.P8558030600684974679

`∑{d}[n+1, C(#, 2)]`
-/

namespace A069153.P8558030600684974679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2

end

end A069153.P8558030600684974679

noncomputable section

/-- A069153: a(n) = Sum_{d|n} d*(d-1)/2.

Offset 1, canonical program `A069153.P8558030600684974679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069153 (n : ℕ) : ℤ :=
  (A069153.P8558030600684974679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069201.P12441175603725894320

`∑[∏{e}[n+1, C(2, #²)]]`
-/

namespace A069201.P12441175603725894320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 (Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069201.P12441175603725894320

noncomputable section

/-- A069201: a(n) = Sum_{k=1..n} mu(k)^2 * 2^omega(k) where omega(k) is the number of distinct primes in the factorization of k.

Offset 1, canonical program `A069201.P12441175603725894320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069201 (n : ℕ) : ℤ :=
  (A069201.P12441175603725894320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069202.P16255708417769733214

`(a(n-1)+a(n-2))/gcd(2, a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A069202.P16255708417769733214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) / (Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) : ℚ)

end

end A069202.P16255708417769733214

noncomputable section

/-- A069202: A Collatz-Fibonacci mixture: a(1) = 1, a(2) = 2, a(n+2) = a(n+1)/2+a(n)/2 if a(n+1) and a(n) have the same parity, a(n+2) = a(n+1)+a(n) otherwise.

Offset 1, canonical program `A069202.P16255708417769733214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A069202 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069202.P16255708417769733214.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. -/
def A069202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069203.P15124050852643630807

`(a(n-1)+a(n-2))/gcd(3, a(n-1)+a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A069203.P15124050852643630807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (a (n - 1) + a (n - 2)) / (Int.gcd 3 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) : ℚ)

end

end A069203.P15124050852643630807

noncomputable section

/-- A069203: a(1)=0 a(2)=3 a(n+2)=(a(n+1)+a(n))/3 if (a(n+1)+a(n)==0 (mod 3)); a(n+2)=a(n+1)+a(n) otherwise.

Offset 1, canonical program `A069203.P15124050852643630807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A069203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069203.P15124050852643630807.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1203 terms. -/
def A069203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069205.P17294942075327287708

`∑[∏{e}[n+1, 2^#]]`
-/

namespace A069205.P17294942075327287708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069205.P17294942075327287708

noncomputable section

/-- A069205: a(n) = Sum_{k=1..n} 2^bigomega(k).

Offset 1, canonical program `A069205.P17294942075327287708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069205 (n : ℕ) : ℤ :=
  (A069205.P17294942075327287708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069212.P3742178347837280383

`∑[∏{p}[n+1, 3%#²]]`
-/

namespace A069212.P3742178347837280383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 3 % p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069212.P3742178347837280383

noncomputable section

/-- A069212: a(n) = Sum_{k=1..n} 3^omega(k).

Offset 1, canonical program `A069212.P3742178347837280383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069212 (n : ℕ) : ℤ :=
  (A069212.P3742178347837280383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069227.P3085962389755517761

`(a(n-1)+a(n-2))/gcd(4, a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A069227.P3085962389755517761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) + a (n - 2)) / (Int.gcd 4 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) : ℚ)

end

end A069227.P3085962389755517761

noncomputable section

/-- A069227: a(1)=1, a(2)=2; a(n+2) = (a(n+1) + a(n))/b(n) where b(n) = gcd(a(n+1) + a(n), 4).

Offset 1, canonical program `A069227.P3085962389755517761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7628 terms. -/
def A069227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069227.P3085962389755517761.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7628 terms. -/
def A069227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069228.P2567572768949068268

`(a(n-1)+a(n-2))/gcd(4, a(n-1)+a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A069228.P2567572768949068268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + a (n - 2)) / (Int.gcd 4 (SequenceMachineLib.roundAway (a (n - 1) + a (n - 2))) : ℚ)

end

end A069228.P2567572768949068268

noncomputable section

/-- A069228: a(1)=1, a(2)=4, a(n+2)=(a(n+1)+a(n))/b(n), where b(n)=gcd(a(n+1)+a(n),4).

Offset 1, canonical program `A069228.P2567572768949068268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7641 terms. -/
def A069228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069228.P2567572768949068268.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7641 terms. -/
def A069228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069283.P13755877573305704475

`∑{d}[n, (#%#²)%2]`
-/

namespace A069283.P13755877573305704475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 % 2

end

end A069283.P13755877573305704475

noncomputable section

/-- A069283: a(n) = -1 + number of odd divisors of n.

Offset 0, canonical program `A069283.P13755877573305704475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069283 (n : ℕ) : ℤ :=
  (A069283.P13755877573305704475.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069346.P10393280662014959909

`eq[char[n-∑{e}[n, #]], ∑{e}[n, #]]`
-/

namespace A069346.P10393280662014959909
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f4 j) n

end

end A069346.P10393280662014959909

noncomputable section

/-- A069346: Primes of the form n - Omega(n), where Omega(n) is the number of prime factors of n, A001222(n).

Offset 1, canonical program `A069346.P10393280662014959909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A069346 (n : ℕ) : ℤ :=
  (A069346.P10393280662014959909.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. -/
def A069346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069507.P2736404165348284234

`or(1, lcm(10, a(n-1)))` with `a(0)=4, a(1)=9, a(2)=55`
-/

namespace A069507.P2736404165348284234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 55] fun n a =>
  Nat.lor 1 (Nat.lcm 10 (a (n - 1)))

end

end A069507.P2736404165348284234

noncomputable section

/-- A069507: a(1) = 4; a(n) = smallest palindromic number of the form k*a(n-1) + 1 with k > 1.

Offset 0, canonical program `A069507.P2736404165348284234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A069507 (n : ℕ) : ℤ :=
  (A069507.P2736404165348284234.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A069507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069508.P7334050992793998524

`or(1, lcm(10, a(n-1)))` with `a(0)=6, a(1)=55`
-/

namespace A069508.P7334050992793998524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 55] fun n a =>
  Nat.lor 1 (Nat.lcm 10 (a (n - 1)))

end

end A069508.P7334050992793998524

noncomputable section

/-- A069508: a(1) = 6; a(n) = smallest palindromic number of the form k*a(n-1) + 1 with k > 1.

Offset 0, canonical program `A069508.P7334050992793998524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069508 (n : ℕ) : ℤ :=
  (A069508.P7334050992793998524.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069511.P11986739601024199381

`∑[n+1]%10+10*a(n-1)` with `a(0)=1`
-/

namespace A069511.P11986739601024199381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 10 + 10 * a (n - 1)

end

end A069511.P11986739601024199381

noncomputable section

/-- A069511: Numbers in which starting from most significant digit the n-th digit is obtained by adding n to the (n-1)-st digit (the digit to the left of it) and then ignoring the carry. Alternately the n-th digit starting from the most significant digit is the n-th triangular number mod 10.

Offset 1, canonical program `A069511.P11986739601024199381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069511 (n : ℕ) : ℤ :=
  (A069511.P11986739601024199381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069513.P10236214883623494276

`round(n/∏{e}[n+1, #+n])`
-/

namespace A069513.P10236214883623494276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + n) : ℕ) : ℚ))

end

end A069513.P10236214883623494276

noncomputable section

/-- A069513: Characteristic function of the prime powers p^k, k >= 1.

Offset 1, canonical program `A069513.P10236214883623494276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069513 (n : ℕ) : ℤ :=
  A069513.P10236214883623494276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069517.P15893409822004204744

`∏{p}[n+1, val(#², 2)]`
-/

namespace A069517.P15893409822004204744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p ^ 2) 2

end

end A069517.P15893409822004204744

noncomputable section

/-- A069517: a(n) = (-1)*Sum_{d|n} (moebius(d)*(-1)^d).

Offset 1, canonical program `A069517.P15893409822004204744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069517 (n : ℕ) : ℤ :=
  (A069517.P15893409822004204744.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069553.P6121313328460263912

`(2-∏{e}[n+1, #+1]+n)*(n+1)`
-/

namespace A069553.P6121313328460263912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)) * (n + 1 : ℤ)

end

end A069553.P6121313328460263912

noncomputable section

/-- A069553: Define S(k) to be the sequence of divisors and multiples of k, e.g. S(1) = 1,2,3,4,5... S(2) = 1,2,4,6,8,10,... S(10) = 1,2,5,10,20,30,40,50,...; a(n) = n-th term of the n-th sequence S(n).

Offset 1, canonical program `A069553.P6121313328460263912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069553 (n : ℕ) : ℤ :=
  A069553.P6121313328460263912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069722.P7509180552531274418

`C(2*n, n)*and(-2, 2^n)`
-/

namespace A069722.P7509180552531274418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * Int.land (-2) (2 ^ n : ℤ)

end

end A069722.P7509180552531274418

noncomputable section

/-- A069722: Number of rooted unicursal planar maps with n edges and exactly one vertex of valency 1 (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

Offset 1, canonical program `A069722.P7509180552531274418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A069722 (n : ℕ) : ℤ :=
  A069722.P7509180552531274418.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A069722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069750.P10262859377665895998

`floor(10^n/(a(n-1)+1))+1` with `a(0)=1`
-/

namespace A069750.P10262859377665895998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(10 ^ n : ℚ) / (a (n - 1) + 1 : ℚ)⌋ + 1

end

end A069750.P10262859377665895998

noncomputable section

/-- A069750: a(1)=1; a(n+1) is the smallest integer such that 1/a(n+1) = 0.0...00a(n)xxxxx...

Offset 1, canonical program `A069750.P10262859377665895998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A069750 (n : ℕ) : ℤ :=
  A069750.P10262859377665895998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A069750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069811.P18286164549586486924

`∑[∑{p}[n+1, gcd(n, #)]²]`
-/

namespace A069811.P18286164549586486924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069811.P18286164549586486924

noncomputable section

/-- A069811: a(n) = Sum_{k=1..n} omega(k)^2.

Offset 1, canonical program `A069811.P18286164549586486924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069811 (n : ℕ) : ℤ :=
  (A069811.P18286164549586486924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069812.P9702759879598059061

`∑[∑{e}[n+1, #-1]]`
-/

namespace A069812.P9702759879598059061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069812.P9702759879598059061

noncomputable section

/-- A069812: a(n) = Sum_{k=1..n} (bigomega(k)-omega(k)).

Offset 1, canonical program `A069812.P9702759879598059061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069812 (n : ℕ) : ℤ :=
  A069812.P9702759879598059061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069926.P3137993898605729016

`∑[C(gcd(n-1-2*n, ∑{d}[n+1, #]), n+1)]`
-/

namespace A069926.P3137993898605729016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd ((n : ℤ) - 1 - (2 * n : ℤ)) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P3137993898605729016

noncomputable section

/-- A069926: Number of k, 1<=k<=n, such that k divides sigma(k).

Offset 1, canonical program `A069926.P3137993898605729016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069926 (n : ℕ) : ℤ :=
  (A069926.P3137993898605729016.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069940.P6457464724127474158

`(∑{digits}[n, #²]+∑{digits}[n, #]²)/2`
-/

namespace A069940.P6457464724127474158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum + ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℚ) / 2

end

end A069940.P6457464724127474158

noncomputable section

/-- A069940: (1/2)*((Sum of digits of n)^2 + (Sum of digits^2 of n)).

Offset 0, canonical program `A069940.P6457464724127474158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069940 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069940.P6457464724127474158.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069964.P6060695406399644179

`∑{digits}[n, #]^4-∑{digits}[n, #^4]`
-/

namespace A069964.P6060695406399644179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 4 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 4).sum : ℕ) : ℤ)

end

end A069964.P6060695406399644179

noncomputable section

/-- A069964: a(n) = (sum of digits of n)^4 - (sum of digits^4 of n).

Offset 0, canonical program `A069964.P6060695406399644179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069964 (n : ℕ) : ℤ :=
  A069964.P6060695406399644179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069966.P7796171943559667650

`∑{digits}[n, #]^6-∑{digits}[n, #^6]`
-/

namespace A069966.P7796171943559667650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 6 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 6).sum : ℕ) : ℤ)

end

end A069966.P7796171943559667650

noncomputable section

/-- A069966: (Sum of digits of n)^6 - (sum of digits^6 of n).

Offset 0, canonical program `A069966.P7796171943559667650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069966 (n : ℕ) : ℤ :=
  A069966.P7796171943559667650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069973.P17095827463937448875

`∑{digits}[n, #]^3-∑{digits}[n^3, #]`
-/

namespace A069973.P17095827463937448875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 3 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069973.P17095827463937448875

noncomputable section

/-- A069973: (Sum of digits of n)^3 - (sum of digits of n^3).

Offset 0, canonical program `A069973.P17095827463937448875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069973 (n : ℕ) : ℤ :=
  A069973.P17095827463937448875.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069978.P5279986127364657516

`∑{digits}[n, #]²²-∑{digits}[n^4, #]`
-/

namespace A069978.P5279986127364657516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2) ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069978.P5279986127364657516

noncomputable section

/-- A069978: (Sum of digits of n)^4 - (sum of digits of n^4).

Offset 0, canonical program `A069978.P5279986127364657516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069978 (n : ℕ) : ℤ :=
  A069978.P5279986127364657516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069980.P18289794186360423708

`∑{digits}[n, #]^6-∑{digits}[n^6, #]`
-/

namespace A069980.P18289794186360423708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 6 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069980.P18289794186360423708

noncomputable section

/-- A069980: (Sum of digits of n)^6 - (sum of digits of n^6).

Offset 0, canonical program `A069980.P18289794186360423708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069980 (n : ℕ) : ℤ :=
  A069980.P18289794186360423708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069981.P10448739502675170939

`∑[n-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A069981.P10448739502675170939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A069981.P10448739502675170939

noncomputable section

/-- A069981: Hermite's problem: number of positive integral solutions to x + y + z = n subject to x <= y + z, y <= z + x and z <= x + y.

Offset 0, canonical program `A069981.P10448739502675170939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069981 (n : ℕ) : ℤ :=
  A069981.P10448739502675170939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070232.P12886136296498931947

`2*a(n-1)-char[5]` with `a(0)=4, a(1)=6`
-/

namespace A070232.P12886136296498931947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  2 * a (n - 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A070232.P12886136296498931947

noncomputable section

/-- A070232: a(1) = 4; a(n) = smallest composite number greater than the sum of all previous terms.

Offset 1, canonical program `A070232.P12886136296498931947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A070232 (n : ℕ) : ℤ :=
  A070232.P12886136296498931947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A070232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070280.P4239363578348049834

`∑[∏{digits}[n, #]]+1`
-/

namespace A070280.P4239363578348049834
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070280.P4239363578348049834

noncomputable section

/-- A070280: a(1) = 1; a(n) = a(n-1) + product of the digits of n-1.

Offset 1, canonical program `A070280.P4239363578348049834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070280 (n : ℕ) : ℤ :=
  (A070280.P4239363578348049834.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070303.P13983563299875211642

`p?[round(sqrt(n)+1+n)]`
-/

namespace A070303.P13983563299875211642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + 1 + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070303.P13983563299875211642

noncomputable section

/-- A070303: Primes p such that the equation p^2*x^2==0 (mod p^2+x^2) has no solution.

Offset 1, canonical program `A070303.P13983563299875211642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9565 terms. -/
def A070303 (n : ℕ) : ℤ :=
  A070303.P13983563299875211642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9565 terms. -/
def A070303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070323.P5891167156785921540

`∏[Δ[record[∑{p}[n, #]]]]`
-/

namespace A070323.P5891167156785921540
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070323.P5891167156785921540

noncomputable section

/-- A070323: Let M_n be the n X n matrix m(i,j) = min(prime(i), prime(j)); then a(n) = det(M_n).

Offset 1, canonical program `A070323.P5891167156785921540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A070323 (n : ℕ) : ℤ :=
  A070323.P5891167156785921540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A070323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070335.P7436942229669296470

`(2*a(n-1))%23` with `a(0)=1`
-/

namespace A070335.P7436942229669296470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 23

end

end A070335.P7436942229669296470

noncomputable section

/-- A070335: a(n) = 2^n mod 23.

Offset 0, canonical program `A070335.P7436942229669296470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070335 (n : ℕ) : ℤ :=
  (A070335.P7436942229669296470.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070336.P8263572348407795344

`(2*a(n-1))%25` with `a(0)=1`
-/

namespace A070336.P8263572348407795344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 25

end

end A070336.P8263572348407795344

noncomputable section

/-- A070336: a(n) = 2^n mod 25.

Offset 0, canonical program `A070336.P8263572348407795344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070336 (n : ℕ) : ℤ :=
  (A070336.P8263572348407795344.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070339.P8121117844975006178

`(2^n)%35`
-/

namespace A070339.P8121117844975006178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 35

end

end A070339.P8121117844975006178

noncomputable section

/-- A070339: a(n) = 2^n mod 35.

Offset 0, canonical program `A070339.P8121117844975006178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A070339 (n : ℕ) : ℤ :=
  (A070339.P8121117844975006178.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A070339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070343.P5117570379836927019

`(3*a(n-1))%25` with `a(0)=1`
-/

namespace A070343.P5117570379836927019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 25

end

end A070343.P5117570379836927019

noncomputable section

/-- A070343: a(n) = 3^n mod 25.

Offset 0, canonical program `A070343.P5117570379836927019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070343 (n : ℕ) : ℤ :=
  (A070343.P5117570379836927019.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070344.P14396955364775572908

`(3*a(n-1))%29` with `a(0)=1`
-/

namespace A070344.P14396955364775572908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 29

end

end A070344.P14396955364775572908

noncomputable section

/-- A070344: a(n) = 3^n mod 29.

Offset 0, canonical program `A070344.P14396955364775572908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070344 (n : ℕ) : ℤ :=
  (A070344.P14396955364775572908.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070345.P8119293760701447872

`(3*a(n-1))%35` with `a(0)=1`
-/

namespace A070345.P8119293760701447872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 35

end

end A070345.P8119293760701447872

noncomputable section

/-- A070345: a(n) = 3^n mod 35.

Offset 0, canonical program `A070345.P8119293760701447872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070345 (n : ℕ) : ℤ :=
  (A070345.P8119293760701447872.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070346.P18227684460690909946

`(3*a(n-1))%37` with `a(0)=1`
-/

namespace A070346.P18227684460690909946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 37

end

end A070346.P18227684460690909946

noncomputable section

/-- A070346: a(n) = 3^n mod 37.

Offset 0, canonical program `A070346.P18227684460690909946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070346 (n : ℕ) : ℤ :=
  (A070346.P18227684460690909946.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070350.P10312556106483212686

`(2*a(n-1))%45` with `a(0)=1`
-/

namespace A070350.P10312556106483212686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) % 45

end

end A070350.P10312556106483212686

noncomputable section

/-- A070350: a(n) = 2^n mod 45.

Offset 0, canonical program `A070350.P10312556106483212686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070350 (n : ℕ) : ℤ :=
  (A070350.P10312556106483212686.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070356.P6039888862684420109

`(3*a(n-1))%23` with `a(0)=1`
-/

namespace A070356.P6039888862684420109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 23

end

end A070356.P6039888862684420109

noncomputable section

/-- A070356: a(n) = 3^n mod 23.

Offset 0, canonical program `A070356.P6039888862684420109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070356 (n : ℕ) : ℤ :=
  (A070356.P6039888862684420109.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070363.P9604708627321459469

`(3*a(n-1))%46` with `a(0)=1`
-/

namespace A070363.P9604708627321459469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 46

end

end A070363.P9604708627321459469

noncomputable section

/-- A070363: a(n) = 3^n mod 46.

Offset 0, canonical program `A070363.P9604708627321459469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070363 (n : ℕ) : ℤ :=
  (A070363.P9604708627321459469.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070364.P1917264598728780048

`(3*a(n-1))%47` with `a(0)=1`
-/

namespace A070364.P1917264598728780048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) % 47

end

end A070364.P1917264598728780048

noncomputable section

/-- A070364: a(n) = 3^n mod 47.

Offset 0, canonical program `A070364.P1917264598728780048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070364 (n : ℕ) : ℤ :=
  (A070364.P1917264598728780048.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070387.P3131978225893146651

`(5*a(n-1))%41` with `a(0)=1`
-/

namespace A070387.P3131978225893146651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) % 41

end

end A070387.P3131978225893146651

noncomputable section

/-- A070387: a(n) = 5^n mod 41.

Offset 0, canonical program `A070387.P3131978225893146651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070387 (n : ℕ) : ℤ :=
  (A070387.P3131978225893146651.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070389.P11635098685665586946

`(5*a(n-1))%43` with `a(0)=1`
-/

namespace A070389.P11635098685665586946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) % 43

end

end A070389.P11635098685665586946

noncomputable section

/-- A070389: a(n) = 5^n mod 43.

Offset 0, canonical program `A070389.P11635098685665586946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070389 (n : ℕ) : ℤ :=
  (A070389.P11635098685665586946.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070391.P17545430505623460412

`(5*a(n-1))%46` with `a(0)=1`
-/

namespace A070391.P17545430505623460412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) % 46

end

end A070391.P17545430505623460412

noncomputable section

/-- A070391: a(n) = 5^n mod 46.

Offset 0, canonical program `A070391.P17545430505623460412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070391 (n : ℕ) : ℤ :=
  (A070391.P17545430505623460412.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070396.P7792659240509473402

`(6*a(n-1))%23` with `a(0)=1`
-/

namespace A070396.P7792659240509473402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) % 23

end

end A070396.P7792659240509473402

noncomputable section

/-- A070396: a(n) = 6^n mod 23.

Offset 0, canonical program `A070396.P7792659240509473402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070396 (n : ℕ) : ℤ :=
  (A070396.P7792659240509473402.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070401.P11422309779595177985

`(6*a(n-1))%47` with `a(0)=1`
-/

namespace A070401.P11422309779595177985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) % 47

end

end A070401.P11422309779595177985

noncomputable section

/-- A070401: a(n) = 6^n mod 47.

Offset 0, canonical program `A070401.P11422309779595177985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070401 (n : ℕ) : ℤ :=
  (A070401.P11422309779595177985.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070409.P296099454881216925

`(99*a(n-1))%23` with `a(0)=1`
-/

namespace A070409.P296099454881216925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  99 * a (n - 1) % 23

end

end A070409.P296099454881216925

noncomputable section

/-- A070409: a(n) = 7^n mod 23.

Offset 0, canonical program `A070409.P296099454881216925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070409 (n : ℕ) : ℤ :=
  (A070409.P296099454881216925.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070415.P7018097374851862185

`(7*a(n-1))%31` with `a(0)=1`
-/

namespace A070415.P7018097374851862185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) % 31

end

end A070415.P7018097374851862185

noncomputable section

/-- A070415: a(n) = 7^n mod 31.

Offset 0, canonical program `A070415.P7018097374851862185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070415 (n : ℕ) : ℤ :=
  (A070415.P7018097374851862185.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070424.P12751588888354665045

`(7*a(n-1))%41` with `a(0)=1`
-/

namespace A070424.P12751588888354665045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) % 41

end

end A070424.P12751588888354665045

noncomputable section

/-- A070424: a(n) = 7^n mod 41.

Offset 0, canonical program `A070424.P12751588888354665045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070424 (n : ℕ) : ℤ :=
  (A070424.P12751588888354665045.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070427.P12609492843314836004

`(7*a(n-1))%45` with `a(0)=1`
-/

namespace A070427.P12609492843314836004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) % 45

end

end A070427.P12609492843314836004

noncomputable section

/-- A070427: a(n) = 7^n mod 45.

Offset 0, canonical program `A070427.P12609492843314836004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070427 (n : ℕ) : ℤ :=
  (A070427.P12609492843314836004.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070429.P1262805709070676905

`(7*a(n-1))%47` with `a(0)=1`
-/

namespace A070429.P1262805709070676905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) % 47

end

end A070429.P1262805709070676905

noncomputable section

/-- A070429: a(n) = 7^n mod 47.

Offset 0, canonical program `A070429.P1262805709070676905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070429 (n : ℕ) : ℤ :=
  (A070429.P1262805709070676905.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070476.P252285564294123969

`(n^3)%14`
-/

namespace A070476.P252285564294123969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 14

end

end A070476.P252285564294123969

noncomputable section

/-- A070476: a(n) = n^3 mod 14.

Offset 0, canonical program `A070476.P252285564294123969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070476 (n : ℕ) : ℤ :=
  (A070476.P252285564294123969.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070486.P16996720898468510279

`(n^3)%24`
-/

namespace A070486.P16996720898468510279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 24

end

end A070486.P16996720898468510279

noncomputable section

/-- A070486: a(n) = n^3 mod 24 (or equivalently, n^5 mod 24).

Offset 0, canonical program `A070486.P16996720898468510279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070486 (n : ℕ) : ℤ :=
  (A070486.P16996720898468510279.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070489.P5046241487446303600

`(n^3)%27`
-/

namespace A070489.P5046241487446303600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 27

end

end A070489.P5046241487446303600

noncomputable section

/-- A070489: a(n) = n^3 mod 27.

Offset 0, canonical program `A070489.P5046241487446303600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070489 (n : ℕ) : ℤ :=
  (A070489.P5046241487446303600.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070490.P12150489907437805708

`(n^3)%28`
-/

namespace A070490.P12150489907437805708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 % 28

end

end A070490.P12150489907437805708

noncomputable section

/-- A070490: a(n) = n^3 mod 28.

Offset 0, canonical program `A070490.P12150489907437805708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070490 (n : ℕ) : ℤ :=
  (A070490.P12150489907437805708.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070563.P8191489125462667841

`((n+1)*∑{d}[n+1, #])²%3`
-/

namespace A070563.P8191489125462667841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d)) ^ 2 % 3

end

end A070563.P8191489125462667841

noncomputable section

/-- A070563: a(n) = 0 if 3 divides the Ramanujan number tau(n) (A000594(n)), otherwise 1.

Offset 1, canonical program `A070563.P8191489125462667841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070563 (n : ℕ) : ℤ :=
  (A070563.P8191489125462667841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070564.P9196625145750996743

`∑[∑{d}[n, n*#]²%3]`
-/

namespace A070564.P9196625145750996743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), n * d) ^ 2 % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070564.P9196625145750996743

noncomputable section

/-- A070564: Partial sums of A070563.

Offset 0, canonical program `A070564.P9196625145750996743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070564 (n : ℕ) : ℤ :=
  (A070564.P9196625145750996743.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070565.P8773353703818407228

`n-∏{digits}[n, #]`
-/

namespace A070565.P8773353703818407228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

end

end A070565.P8773353703818407228

noncomputable section

/-- A070565: n - product of digits of n.

Offset 0, canonical program `A070565.P8773353703818407228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070565 (n : ℕ) : ℤ :=
  A070565.P8773353703818407228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070635.P8407493001577331723

`(n+1)%∑{digits}[n+1, #]`
-/

namespace A070635.P8407493001577331723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A070635.P8407493001577331723

noncomputable section

/-- A070635: a(n) = n mod (sum of digits of n).

Offset 1, canonical program `A070635.P8407493001577331723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070635 (n : ℕ) : ℤ :=
  (A070635.P8407493001577331723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063956.P13509344762830228615

`∑{p}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #]`
-/

namespace A063956.P13509344762830228615
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
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A063956.P13509344762830228615

noncomputable section

/-- A063956: Sum of the unitary prime divisors of n.

Offset 1, canonical program `A063956.P13509344762830228615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063956 (n : ℕ) : ℤ :=
  (A063956.P13509344762830228615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066194.P17197319264784136366

`2*a(floor(n/2))-(a(floor(n/2))+n)%2` with `a(0)=1`
-/

namespace A066194.P17197319264784136366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - Int.tmod (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)) 2

end

end A066194.P17197319264784136366

noncomputable section

/-- A066194: A permutation of the integers (a fractal sequence): a(n) = A006068(n-1) + 1.

Offset 1, canonical program `A066194.P17197319264784136366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066194 (n : ℕ) : ℤ :=
  A066194.P17197319264784136366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067368.P1907791272494275587

`eq[2, and(n, -n)%7]`
-/

namespace A067368.P1907791272494275587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A067368.P1907791272494275587

noncomputable section

/-- A067368: a(n) is the smallest positive even integer that cannot be expressed as the product of two or three previous terms (not necessarily distinct).

Offset 1, canonical program `A067368.P1907791272494275587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067368 (n : ℕ) : ℤ :=
  (A067368.P1907791272494275587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069359.P17776763206282082862

`∑{p}[n+1, ceil(n/#)]`
-/

namespace A069359.P17776763206282082862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉

end

end A069359.P17776763206282082862

noncomputable section

/-- A069359: a(n) = n * Sum_{p|n} 1/p where p are primes dividing n.

Offset 1, canonical program `A069359.P17776763206282082862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069359 (n : ℕ) : ℤ :=
  A069359.P17776763206282082862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069359.provenance : SequenceMachineLib.Provenance := .conjectured

