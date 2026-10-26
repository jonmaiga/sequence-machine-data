import SequenceMachineLib
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A140220.P2674750137963100047

`C(n+7, 7)*5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140220.P2674750137963100047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * 5 ^ n

end

end A140220.P2674750137963100047

noncomputable section

/-- A140220: a(n) = binomial(n+7, 7)*5^n.

Offset 0, canonical program `A140220.P2674750137963100047`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*5^n` (program `A140220.P2674750137963100047`, by `A140220.P2674750137963100047.correct`). Lean does not check the parsing of the name. -/
def A140220 (n : ℕ) : ℤ :=
  (A140220.P2674750137963100047.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*5^n` (program `A140220.P2674750137963100047`, by `A140220.P2674750137963100047.correct`). Lean does not check the parsing of the name. -/
def A140220.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140295.P3386220610798486925

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=-2, a(2)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140295.P3386220610798486925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 4] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3)

end

end A140295.P3386220610798486925

noncomputable section

/-- A140295: a(n) = a(n-1) + a(n-2) + 2a(n-3).

Offset 0, canonical program `A140295.P3386220610798486925`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2*a(n-3)` (program `A140295.P3386220610798486925`, by `A140295.P3386220610798486925.correct`). Lean does not check the parsing of the name. -/
def A140295 (n : ℕ) : ℤ :=
  A140295.P3386220610798486925.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2*a(n-3)` (program `A140295.P3386220610798486925`, by `A140295.P3386220610798486925.correct`). Lean does not check the parsing of the name. -/
def A140295.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140322.P13323243155975956851

`4*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=11`
-/

namespace A140322.P13323243155975956851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 11] fun n a =>
  4 * a (n - 1) + a (n - 2) - 4 * a (n - 3)

end

end A140322.P13323243155975956851

noncomputable section

/-- A140322: a(n) = -1/6 + (-1)^n/2 + 2*4^n/3.

Offset 0, canonical program `A140322.P13323243155975956851`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-1/6+(-1)^n/2+2*4^n/3` (program `A140322.P12578970181296655608`, by `A140322.P12578970181296655608.correct`). Lean does not check the parsing of the name. -/
def A140322 (n : ℕ) : ℤ :=
  A140322.P13323243155975956851.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-1/6+(-1)^n/2+2*4^n/3` (program `A140322.P12578970181296655608`, by `A140322.P12578970181296655608.correct`). Lean does not check the parsing of the name. -/
def A140322.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140325.P10332638443376746558

`C(n+8, 8)*2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140325.P10332638443376746558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 * 2 ^ n

end

end A140325.P10332638443376746558

noncomputable section

/-- A140325: a(n) = binomial(n+8,8) * 2^n.

Offset 0, canonical program `A140325.P10332638443376746558`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*2^n` (program `A140325.P10332638443376746558`, by `A140325.P10332638443376746558.correct`). Lean does not check the parsing of the name. -/
def A140325 (n : ℕ) : ℤ :=
  (A140325.P10332638443376746558.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*2^n` (program `A140325.P10332638443376746558`, by `A140325.P10332638443376746558.correct`). Lean does not check the parsing of the name. -/
def A140325.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140343.P6829968733307683035

`4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140343.P6829968733307683035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  4 * a (n - 1) - 7 * a (n - 2) + 6 * a (n - 3) - 3 * a (n - 4)

end

end A140343.P6829968733307683035

noncomputable section

/-- A140343: a(n)=4a(n-1)-7a(n-2)+6a(n-3)-3a(n-4), n>4.

Offset 0, canonical program `A140343.P6829968733307683035`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` (program `A140343.P6829968733307683035`, by `A140343.P6829968733307683035.correct`). Lean does not check the parsing of the name. -/
def A140343 (n : ℕ) : ℤ :=
  A140343.P6829968733307683035.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` (program `A140343.P6829968733307683035`, by `A140343.P6829968733307683035.correct`). Lean does not check the parsing of the name. -/
def A140343.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140345.P11271392789611923456

`a(n-1)²-a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140345.P11271392789611923456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 1) ^ 2 - a (n - 2) - a (n - 3) - a (n - 4)

end

end A140345.P11271392789611923456

noncomputable section

/-- A140345: a(n) = a(n-1)^2 - a(n-2) - a(n-3) - a(n-4), a(1) = a(2) = a(3) = a(4) = 1.

Offset 1, canonical program `A140345.P11271392789611923456`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)-a(n-3)-a(n-4)` (program `A140345.P11271392789611923456`, by `A140345.P11271392789611923456.correct`). Lean does not check the parsing of the name. -/
def A140345 (n : ℕ) : ℤ :=
  A140345.P11271392789611923456.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-2)-a(n-3)-a(n-4)` (program `A140345.P11271392789611923456`, by `A140345.P11271392789611923456.correct`). Lean does not check the parsing of the name. -/
def A140345.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140346.P1704645817214565272

`C(n+8, 8)*5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140346.P1704645817214565272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 * 5 ^ n

end

end A140346.P1704645817214565272

noncomputable section

/-- A140346: a(n) = binomial(n+8, 8)*5^n.

Offset 0, canonical program `A140346.P1704645817214565272`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*5^n` (program `A140346.P1704645817214565272`, by `A140346.P1704645817214565272.correct`). Lean does not check the parsing of the name. -/
def A140346 (n : ℕ) : ℤ :=
  (A140346.P1704645817214565272.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*5^n` (program `A140346.P1704645817214565272`, by `A140346.P1704645817214565272.correct`). Lean does not check the parsing of the name. -/
def A140346.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140354.P15097387036834541861

`C(n+9, 9)*2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140354.P15097387036834541861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 9) 9 * 2 ^ n

end

end A140354.P15097387036834541861

noncomputable section

/-- A140354: a(n) = binomial(n+9,9)*2^n.

Offset 0, canonical program `A140354.P15097387036834541861`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+9, 9)*2^n` (program `A140354.P15097387036834541861`, by `A140354.P15097387036834541861.correct`). Lean does not check the parsing of the name. -/
def A140354 (n : ℕ) : ℤ :=
  (A140354.P15097387036834541861.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+9, 9)*2^n` (program `A140354.P15097387036834541861`, by `A140354.P15097387036834541861.correct`). Lean does not check the parsing of the name. -/
def A140354.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140357.P4194973612045616122

`floor(4*a(n-1)*(n+1-a(n-1))/(n+1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140357.P4194973612045616122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(4 * a (n - 1) * ((n + 1 : ℤ) - a (n - 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A140357.P4194973612045616122

noncomputable section

/-- A140357: a(1)=1; a(n)=floor(4*a(n-1)*(n-a(n-1)) / n) for n > 1.

Offset 1, canonical program `A140357.P4194973612045616122`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*a(n-1)*(n+1-a(n-1))/(n+1))` (program `A140357.P4194973612045616122`, by `A140357.P4194973612045616122.correct`). Lean does not check the parsing of the name. -/
def A140357 (n : ℕ) : ℤ :=
  A140357.P4194973612045616122.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*a(n-1)*(n+1-a(n-1))/(n+1))` (program `A140357.P4194973612045616122`, by `A140357.P4194973612045616122.correct`). Lean does not check the parsing of the name. -/
def A140357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140359.P9830115038105565221

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140359.P9830115038105565221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 6] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A140359.P9830115038105565221

noncomputable section

/-- A140359: a(n) = 2*a(n-1) + a(n-2) - 2*a(n-3), with initial terms 1, 1, 6.

Offset 0, canonical program `A140359.P9830115038105565221`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-2*a(n-3)` (program `A140359.P9830115038105565221`, by `A140359.P9830115038105565221.correct`). Lean does not check the parsing of the name. -/
def A140359 (n : ℕ) : ℤ :=
  A140359.P9830115038105565221.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-2*a(n-3)` (program `A140359.P9830115038105565221`, by `A140359.P9830115038105565221.correct`). Lean does not check the parsing of the name. -/
def A140359.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140402.P8787166367659973012

`ogf((x^4-3x^6+2x^7-x^8+x^9+x^11-x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140402.P8787166367659973012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1, 0, -3, 2, -1, 1, 0, 1, -1] [1, -3, 2, 1, 0, -2, 1, 1, -2, 0, 1, 2, -3, 1] n

end

end A140402.P8787166367659973012

noncomputable section

/-- A140402: Expansion of x^4/((1-x)^2*(1-x^3)) + x^5/((1-x)*(1-x^2)*(1-x^5)).

Offset 0, canonical program `A140402.P8787166367659973012`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4-3x^6+2x^7-x^8+x^9+x^11-x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` (program `A140402.P8787166367659973012`, by `A140402.P8787166367659973012.correct`). Lean does not check the parsing of the name. -/
def A140402 (n : ℕ) : ℤ :=
  A140402.P8787166367659973012.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4-3x^6+2x^7-x^8+x^9+x^11-x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` (program `A140402.P8787166367659973012`, by `A140402.P8787166367659973012.correct`). Lean does not check the parsing of the name. -/
def A140402.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140403.P17714820254939876301

`ogf((8x^4-24x^6+16x^7-8x^8+8x^9+8x^11-8x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140403.P17714820254939876301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 8, 0, -24, 16, -8, 8, 0, 8, -8] [1, -3, 2, 1, 0, -2, 1, 1, -2, 0, 1, 2, -3, 1] n

end

end A140403.P17714820254939876301

noncomputable section

/-- A140403: Expansion of 8*x^4/((1-x)^2*(1-x^3)) + 8*x^5/((1-x)*(1-x^2)*(1-x^5)).

Offset 0, canonical program `A140403.P17714820254939876301`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((8x^4-24x^6+16x^7-8x^8+8x^9+8x^11-8x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` (program `A140403.P17714820254939876301`, by `A140403.P17714820254939876301.correct`). Lean does not check the parsing of the name. -/
def A140403 (n : ℕ) : ℤ :=
  A140403.P17714820254939876301.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((8x^4-24x^6+16x^7-8x^8+8x^9+8x^11-8x^12)/(1-3x+2x^2+x^3-2x^5+x^6+x^7-2x^8+x^10+2x^11-3x^12+x^13))` (program `A140403.P17714820254939876301`, by `A140403.P17714820254939876301.correct`). Lean does not check the parsing of the name. -/
def A140403.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140404.P890106776510930071

`C(n+5, 5)*7^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140404.P890106776510930071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 5 * 7 ^ n

end

end A140404.P890106776510930071

noncomputable section

/-- A140404: a(n) = binomial(n+5, 5)*7^n.

Offset 0, canonical program `A140404.P890106776510930071`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*7^n` (program `A140404.P890106776510930071`, by `A140404.P890106776510930071.correct`). Lean does not check the parsing of the name. -/
def A140404 (n : ℕ) : ℤ :=
  (A140404.P890106776510930071.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+5, 5)*7^n` (program `A140404.P890106776510930071`, by `A140404.P890106776510930071.correct`). Lean does not check the parsing of the name. -/
def A140404.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140405.P7820370224449306693

`C(n+6, 6)*5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140405.P7820370224449306693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 6 * 5 ^ n

end

end A140405.P7820370224449306693

noncomputable section

/-- A140405: a(n) = binomial(n+6, 6)*5^n.

Offset 0, canonical program `A140405.P7820370224449306693`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*5^n` (program `A140405.P7820370224449306693`, by `A140405.P7820370224449306693.correct`). Lean does not check the parsing of the name. -/
def A140405 (n : ℕ) : ℤ :=
  (A140405.P7820370224449306693.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*5^n` (program `A140405.P7820370224449306693`, by `A140405.P7820370224449306693.correct`). Lean does not check the parsing of the name. -/
def A140405.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140406.P13581117013226654960

`C(n+6, 6)*8^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140406.P13581117013226654960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 6) 6 * 8 ^ n

end

end A140406.P13581117013226654960

noncomputable section

/-- A140406: a(n) = binomial(n+6, 6)*8^n.

Offset 0, canonical program `A140406.P13581117013226654960`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*8^n` (program `A140406.P13581117013226654960`, by `A140406.P13581117013226654960.correct`). Lean does not check the parsing of the name. -/
def A140406 (n : ℕ) : ℤ :=
  (A140406.P13581117013226654960.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+6, 6)*8^n` (program `A140406.P13581117013226654960`, by `A140406.P13581117013226654960.correct`). Lean does not check the parsing of the name. -/
def A140406.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A140473.P9934156520546430311

`a(floor(2*n/3))+a(floor(n/3))` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140473.P9934156520546430311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(2 * n : ℚ) / 3⌋.toNat + a ⌊(n : ℚ) / 3⌋.toNat

end

end A140473.P9934156520546430311

noncomputable section

/-- A140473: a(n) = a(floor(2*n/3)) + a(floor(n/3)), a(0) = 0, a(1) = 1.

Offset 0, canonical program `A140473.P9934156520546430311`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(2*n/3))+a(floor(n/3))` (program `A140473.P9934156520546430311`, by `A140473.P9934156520546430311.correct`). Lean does not check the parsing of the name. -/
def A140473 (n : ℕ) : ℤ :=
  (A140473.P9934156520546430311.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(2*n/3))+a(floor(n/3))` (program `A140473.P9934156520546430311`, by `A140473.P9934156520546430311.correct`). Lean does not check the parsing of the name. -/
def A140473.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140477.P16090388377332188450

`C(127, n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140477.P16090388377332188450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 127 n

end

end A140477.P16090388377332188450

noncomputable section

/-- A140477: Binomial(127,n).

Offset 0, canonical program `A140477.P16090388377332188450`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(127, n)` (program `A140477.P16090388377332188450`, by `A140477.P16090388377332188450.correct`). Lean does not check the parsing of the name. -/
def A140477 (n : ℕ) : ℤ :=
  (A140477.P16090388377332188450.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(127, n)` (program `A140477.P16090388377332188450`, by `A140477.P16090388377332188450.correct`). Lean does not check the parsing of the name. -/
def A140477.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140498.P16666208644782225024

`3*a(n-1)-3*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140498.P16666208644782225024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3)

end

end A140498.P16666208644782225024

noncomputable section

/-- A140498: a(n) = 3*a(n-1)-3*a(n-2)+3*a(n-3) with a(0)=1, a(1)=3, a(2)=7.

Offset 0, canonical program `A140498.P16666208644782225024`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+3*a(n-3)` (program `A140498.P16666208644782225024`, by `A140498.P16666208644782225024.correct`). Lean does not check the parsing of the name. -/
def A140498 (n : ℕ) : ℤ :=
  A140498.P16666208644782225024.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-2)+3*a(n-3)` (program `A140498.P16666208644782225024`, by `A140498.P16666208644782225024.correct`). Lean does not check the parsing of the name. -/
def A140498.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140504.P8641820625195625758

`2^n+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140504.P8641820625195625758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 4

end

end A140504.P8641820625195625758

noncomputable section

/-- A140504: a(n) = 2^n + 4.

Offset 0, canonical program `A140504.P8641820625195625758`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4` (program `A140504.P8641820625195625758`, by `A140504.P8641820625195625758.correct`). Lean does not check the parsing of the name. -/
def A140504 (n : ℕ) : ℤ :=
  (A140504.P8641820625195625758.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+4` (program `A140504.P8641820625195625758`, by `A140504.P8641820625195625758.correct`). Lean does not check the parsing of the name. -/
def A140504.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140520.P17921169616378354700

`C(n+9, 9)*5^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140520.P17921169616378354700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 9) 9 * 5 ^ n

end

end A140520.P17921169616378354700

noncomputable section

/-- A140520: a(n) = binomial(n+9, 9)*5^n.

Offset 0, canonical program `A140520.P17921169616378354700`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+9, 9)*5^n` (program `A140520.P17921169616378354700`, by `A140520.P17921169616378354700.correct`). Lean does not check the parsing of the name. -/
def A140520 (n : ℕ) : ℤ :=
  (A140520.P17921169616378354700.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+9, 9)*5^n` (program `A140520.P17921169616378354700`, by `A140520.P17921169616378354700.correct`). Lean does not check the parsing of the name. -/
def A140520.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140529.P9765266150794200361

`6*4^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140529.P9765266150794200361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 4 ^ n : ℤ) - 1

end

end A140529.P9765266150794200361

noncomputable section

/-- A140529: a(n) = 6*4^n - 1.

Offset 0, canonical program `A140529.P9765266150794200361`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n-1` (program `A140529.P9765266150794200361`, by `A140529.P9765266150794200361.correct`). Lean does not check the parsing of the name. -/
def A140529 (n : ℕ) : ℤ :=
  A140529.P9765266150794200361.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n-1` (program `A140529.P9765266150794200361`, by `A140529.P9765266150794200361.correct`). Lean does not check the parsing of the name. -/
def A140529.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140660.P5031545441558427530

`3*4^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140660.P5031545441558427530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 4 ^ n + 1

end

end A140660.P5031545441558427530

noncomputable section

/-- A140660: a(n) = 3*4^n + 1.

Offset 0, canonical program `A140660.P5031545441558427530`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n+1` (program `A140660.P5031545441558427530`, by `A140660.P5031545441558427530.correct`). Lean does not check the parsing of the name. -/
def A140660 (n : ℕ) : ℤ :=
  (A140660.P5031545441558427530.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n+1` (program `A140660.P5031545441558427530`, by `A140660.P5031545441558427530.correct`). Lean does not check the parsing of the name. -/
def A140660.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140672.P2570596255617575964

`3*n+a(n-1)+5` with `a(0)=0`
-/

namespace A140672.P2570596255617575964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * n + a (n - 1) + 5

end

end A140672.P2570596255617575964

noncomputable section

/-- A140672: a(n) = n*(3*n + 13)/2.

Offset 0, canonical program `A140672.P2570596255617575964`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+13)/2` (program `A140672.P11296223393495816278`, by `A140672.P11296223393495816278.correct`). Lean does not check the parsing of the name. -/
def A140672 (n : ℕ) : ℤ :=
  (A140672.P2570596255617575964.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+13)/2` (program `A140672.P11296223393495816278`, by `A140672.P11296223393495816278.correct`). Lean does not check the parsing of the name. -/
def A140672.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140673.P2699349939488236431

`3*n+a(n-1)+6` with `a(0)=0`
-/

namespace A140673.P2699349939488236431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * n + a (n - 1) + 6

end

end A140673.P2699349939488236431

noncomputable section

/-- A140673: a(n) = 3*n*(n + 5)/2.

Offset 0, canonical program `A140673.P2699349939488236431`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+5)/2` (program `A140673.P12569814664775206067`, by `A140673.P12569814664775206067.correct`). Lean does not check the parsing of the name. -/
def A140673 (n : ℕ) : ℤ :=
  (A140673.P2699349939488236431.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+5)/2` (program `A140673.P12569814664775206067`, by `A140673.P12569814664775206067.correct`). Lean does not check the parsing of the name. -/
def A140673.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140674.P14003363985059273217

`3*n+a(n-1)+7` with `a(0)=0`
-/

namespace A140674.P14003363985059273217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * n + a (n - 1) + 7

end

end A140674.P14003363985059273217

noncomputable section

/-- A140674: a(n) = n*(3*n + 17)/2.

Offset 0, canonical program `A140674.P14003363985059273217`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+17)/2` (program `A140674.P12605985595557008555`, by `A140674.P12605985595557008555.correct`). Lean does not check the parsing of the name. -/
def A140674 (n : ℕ) : ℤ :=
  (A140674.P14003363985059273217.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+17)/2` (program `A140674.P12605985595557008555`, by `A140674.P12605985595557008555.correct`). Lean does not check the parsing of the name. -/
def A140674.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140675.P7366285782023610294

`3*n+a(n-1)+8` with `a(0)=0`
-/

namespace A140675.P7366285782023610294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * n + a (n - 1) + 8

end

end A140675.P7366285782023610294

noncomputable section

/-- A140675: a(n) = n*(3*n + 19)/2.

Offset 0, canonical program `A140675.P7366285782023610294`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+19)/2` (program `A140675.P4040629154199818799`, by `A140675.P4040629154199818799.correct`). Lean does not check the parsing of the name. -/
def A140675 (n : ℕ) : ℤ :=
  (A140675.P7366285782023610294.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+19)/2` (program `A140675.P4040629154199818799`, by `A140675.P4040629154199818799.correct`). Lean does not check the parsing of the name. -/
def A140675.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140676.P3650156373276300927

`n*(3*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140676.P3650156373276300927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 4)

end

end A140676.P3650156373276300927

noncomputable section

/-- A140676: a(n) = n*(3*n + 4).

Offset 0, canonical program `A140676.P3650156373276300927`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+4)` (program `A140676.P3650156373276300927`, by `A140676.P3650156373276300927.correct`). Lean does not check the parsing of the name. -/
def A140676 (n : ℕ) : ℤ :=
  (A140676.P3650156373276300927.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+4)` (program `A140676.P3650156373276300927`, by `A140676.P3650156373276300927.correct`). Lean does not check the parsing of the name. -/
def A140676.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140677.P12918494061698475283

`n*(3*n+8)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140677.P12918494061698475283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 8)

end

end A140677.P12918494061698475283

noncomputable section

/-- A140677: a(n) = n*(3*n + 8).

Offset 0, canonical program `A140677.P12918494061698475283`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+8)` (program `A140677.P12918494061698475283`, by `A140677.P12918494061698475283.correct`). Lean does not check the parsing of the name. -/
def A140677 (n : ℕ) : ℤ :=
  (A140677.P12918494061698475283.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+8)` (program `A140677.P12918494061698475283`, by `A140677.P12918494061698475283.correct`). Lean does not check the parsing of the name. -/
def A140677.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140678.P13318772034406866523

`n*(3*n+10)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140678.P13318772034406866523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 10)

end

end A140678.P13318772034406866523

noncomputable section

/-- A140678: a(n) = n*(3*n + 10).

Offset 0, canonical program `A140678.P13318772034406866523`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+10)` (program `A140678.P13318772034406866523`, by `A140678.P13318772034406866523.correct`). Lean does not check the parsing of the name. -/
def A140678 (n : ℕ) : ℤ :=
  (A140678.P13318772034406866523.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+10)` (program `A140678.P13318772034406866523`, by `A140678.P13318772034406866523.correct`). Lean does not check the parsing of the name. -/
def A140678.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140679.P16758500501928630565

`n*(3*n+14)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140679.P16758500501928630565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 14)

end

end A140679.P16758500501928630565

noncomputable section

/-- A140679: a(n) = n*(3*n+14).

Offset 0, canonical program `A140679.P16758500501928630565`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+14)` (program `A140679.P16758500501928630565`, by `A140679.P16758500501928630565.correct`). Lean does not check the parsing of the name. -/
def A140679 (n : ℕ) : ℤ :=
  (A140679.P16758500501928630565.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+14)` (program `A140679.P16758500501928630565`, by `A140679.P16758500501928630565.correct`). Lean does not check the parsing of the name. -/
def A140679.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140680.P11223240500650357628

`n*(3*n+16)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140680.P11223240500650357628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 16)

end

end A140680.P11223240500650357628

noncomputable section

/-- A140680: a(n) = n*(3*n+16).

Offset 0, canonical program `A140680.P11223240500650357628`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+16)` (program `A140680.P11223240500650357628`, by `A140680.P11223240500650357628.correct`). Lean does not check the parsing of the name. -/
def A140680 (n : ℕ) : ℤ :=
  (A140680.P11223240500650357628.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+16)` (program `A140680.P11223240500650357628`, by `A140680.P11223240500650357628.correct`). Lean does not check the parsing of the name. -/
def A140680.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140681.P11404641493444198903

`3*n*(n+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140681.P11404641493444198903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * (n + 6)

end

end A140681.P11404641493444198903

noncomputable section

/-- A140681: a(n) = 3*n*(n+6).

Offset 0, canonical program `A140681.P11404641493444198903`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+6)` (program `A140681.P11404641493444198903`, by `A140681.P11404641493444198903.correct`). Lean does not check the parsing of the name. -/
def A140681 (n : ℕ) : ℤ :=
  (A140681.P11404641493444198903.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+6)` (program `A140681.P11404641493444198903`, by `A140681.P11404641493444198903.correct`). Lean does not check the parsing of the name. -/
def A140681.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140682.P4563190499722621415

`gcd(row(n), col(n))-C(row(n), col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140682.P4563190499722621415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) - (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A140682.P4563190499722621415

noncomputable section

/-- A140682: Triangle T(n,k) = gcd(n,k)-binomial(n,k), 0<=k<=n.

Offset 0, canonical program `A140682.P4563190499722621415`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(row(n), col(n))-C(row(n), col(n))` (program `A140682.P4563190499722621415`, by `A140682.P4563190499722621415.correct`). Lean does not check the parsing of the name. -/
def A140682 (n : ℕ) : ℤ :=
  A140682.P4563190499722621415.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(row(n), col(n))-C(row(n), col(n))` (program `A140682.P4563190499722621415`, by `A140682.P4563190499722621415.correct`). Lean does not check the parsing of the name. -/
def A140682.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140683.P13394674294430359483

`3*(-1)^(n+1)*2^n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140683.P13394674294430359483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-1) ^ (n + 1) * (2 ^ n : ℤ) - 1

end

end A140683.P13394674294430359483

noncomputable section

/-- A140683: a(n) = 3*(-1)^(n+1)*2^n - 1.

Offset 0, canonical program `A140683.P13394674294430359483`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(-1)^(n+1)*2^n-1` (program `A140683.P13394674294430359483`, by `A140683.P13394674294430359483.correct`). Lean does not check the parsing of the name. -/
def A140683 (n : ℕ) : ℤ :=
  A140683.P13394674294430359483.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(-1)^(n+1)*2^n-1` (program `A140683.P13394674294430359483`, by `A140683.P13394674294430359483.correct`). Lean does not check the parsing of the name. -/
def A140683.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140689.P2638629226622628695

`n*(3*n+20)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140689.P2638629226622628695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * n + 20)

end

end A140689.P2638629226622628695

noncomputable section

/-- A140689: a(n) = n*(3*n + 20).

Offset 0, canonical program `A140689.P2638629226622628695`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+20)` (program `A140689.P2638629226622628695`, by `A140689.P2638629226622628695.correct`). Lean does not check the parsing of the name. -/
def A140689 (n : ℕ) : ℤ :=
  (A140689.P2638629226622628695.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3*n+20)` (program `A140689.P2638629226622628695`, by `A140689.P2638629226622628695.correct`). Lean does not check the parsing of the name. -/
def A140689.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140766.P13979768639081427445

`6*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140766.P13979768639081427445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * a (n - 1) - 6 * a (n - 2)

end

end A140766.P13979768639081427445

noncomputable section

/-- A140766: a(n) = 6*a(n-1) - 6*a(n-2).

Offset 1, canonical program `A140766.P13979768639081427445`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-6*a(n-2)` (program `A140766.P13979768639081427445`, by `A140766.P13979768639081427445.correct`). Lean does not check the parsing of the name. -/
def A140766 (n : ℕ) : ℤ :=
  A140766.P13979768639081427445.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-6*a(n-2)` (program `A140766.P13979768639081427445`, by `A140766.P13979768639081427445.correct`). Lean does not check the parsing of the name. -/
def A140766.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140780.P2272194548690573452

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140780.P2272194548690573452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  10 * a (n - 1) - a (n - 2)

end

end A140780.P2272194548690573452

noncomputable section

/-- A140780: a(n) = 10*a(n-1) - a(n-2) for n >= 2 with a(0) = 1 and a(1) = 3.

Offset 0, canonical program `A140780.P2272194548690573452`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A140780.P2272194548690573452`, by `A140780.P2272194548690573452.correct`). Lean does not check the parsing of the name. -/
def A140780 (n : ℕ) : ℤ :=
  A140780.P2272194548690573452.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A140780.P2272194548690573452`, by `A140780.P2272194548690573452.correct`). Lean does not check the parsing of the name. -/
def A140780.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140781.P14503323869913898562

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140781.P14503323869913898562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  10 * a (n - 1) - a (n - 2)

end

end A140781.P14503323869913898562

noncomputable section

/-- A140781: a(n) = 10*a(n-1) - a(n-2).

Offset 0, canonical program `A140781.P14503323869913898562`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A140781.P14503323869913898562`, by `A140781.P14503323869913898562.correct`). Lean does not check the parsing of the name. -/
def A140781 (n : ℕ) : ℤ :=
  A140781.P14503323869913898562.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A140781.P14503323869913898562`, by `A140781.P14503323869913898562.correct`). Lean does not check the parsing of the name. -/
def A140781.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140787.P11595686962298845275

`ogf(1/(1-x-6x^2+4x^3+8x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140787.P11595686962298845275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -6, 4, 8] n

end

end A140787.P11595686962298845275

noncomputable section

/-- A140787: Expansion of 1 / ( (1+x)*(2*x+1)*(-1+2*x)^2 ).

Offset 0, canonical program `A140787.P11595686962298845275`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-6x^2+4x^3+8x^4))` (program `A140787.P11595686962298845275`, by `A140787.P11595686962298845275.correct`). Lean does not check the parsing of the name. -/
def A140787 (n : ℕ) : ℤ :=
  A140787.P11595686962298845275.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-6x^2+4x^3+8x^4))` (program `A140787.P11595686962298845275`, by `A140787.P11595686962298845275.correct`). Lean does not check the parsing of the name. -/
def A140787.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140788.P4402501163805591567

`6*4^n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140788.P4402501163805591567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 4 ^ n + 2

end

end A140788.P4402501163805591567

noncomputable section

/-- A140788: a(n) = 6*4^n + 2.

Offset 0, canonical program `A140788.P4402501163805591567`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n+2` (program `A140788.P4402501163805591567`, by `A140788.P4402501163805591567.correct`). Lean does not check the parsing of the name. -/
def A140788 (n : ℕ) : ℤ :=
  (A140788.P4402501163805591567.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n+2` (program `A140788.P4402501163805591567`, by `A140788.P4402501163805591567.correct`). Lean does not check the parsing of the name. -/
def A140788.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140796.P2297825914097039603

`a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=5, a(2)=14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140796.P2297825914097039603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 14] fun n a =>
  a (n - 1) + 6 * a (n - 2)

end

end A140796.P2297825914097039603

noncomputable section

/-- A140796: a(n)=a(n-1)+6a(n-2), n>2.

Offset 0, canonical program `A140796.P2297825914097039603`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+6*a(n-2)` (program `A140796.P2297825914097039603`, by `A140796.P2297825914097039603.correct`). Lean does not check the parsing of the name. -/
def A140796 (n : ℕ) : ℤ :=
  (A140796.P2297825914097039603.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+6*a(n-2)` (program `A140796.P2297825914097039603`, by `A140796.P2297825914097039603.correct`). Lean does not check the parsing of the name. -/
def A140796.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140801.P8949994983236513660

`a(n-1)+720` with `a(0)=360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140801.P8949994983236513660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [360] fun n a =>
  a (n - 1) + 720

end

end A140801.P8949994983236513660

noncomputable section

/-- A140801: a(0)=360, a(n) = a(n-1) + 720 for n>=1.

Offset 0, canonical program `A140801.P8949994983236513660`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+720` (program `A140801.P8949994983236513660`, by `A140801.P8949994983236513660.correct`). Lean does not check the parsing of the name. -/
def A140801 (n : ℕ) : ℤ :=
  (A140801.P8949994983236513660.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+720` (program `A140801.P8949994983236513660`, by `A140801.P8949994983236513660.correct`). Lean does not check the parsing of the name. -/
def A140801.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140802.P2717950046947541867

`C(n+3, 3)*8^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140802.P2717950046947541867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 * 8 ^ n

end

end A140802.P2717950046947541867

noncomputable section

/-- A140802: a(n) = binomial(n+3, 3)*8^n.

Offset 0, canonical program `A140802.P2717950046947541867`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*8^n` (program `A140802.P2717950046947541867`, by `A140802.P2717950046947541867.correct`). Lean does not check the parsing of the name. -/
def A140802 (n : ℕ) : ℤ :=
  (A140802.P2717950046947541867.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*8^n` (program `A140802.P2717950046947541867`, by `A140802.P2717950046947541867.correct`). Lean does not check the parsing of the name. -/
def A140802.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140806.P10139889940397855815

`ogf((1+x+x^2+x^3+15x^4+15x^5+15x^6+15x^7)/(1+14x^4+x^8))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140806.P10139889940397855815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1, 15, 15, 15, 15] [1, 0, 0, 0, 14, 0, 0, 0, 1] n

end

end A140806.P10139889940397855815

noncomputable section

/-- A140806: Expansion of x *(1+x) *(x^2+1) *(15*x^4+1) / ( (x^4-2*x^3+2*x^2+2*x+1) *(x^4+2*x^3+2*x^2-2*x+1) ).

Offset 1, canonical program `A140806.P10139889940397855815`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^3+15x^4+15x^5+15x^6+15x^7)/(1+14x^4+x^8))` (program `A140806.P10139889940397855815`, by `A140806.P10139889940397855815.correct`). Lean does not check the parsing of the name. -/
def A140806 (n : ℕ) : ℤ :=
  A140806.P10139889940397855815.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^3+15x^4+15x^5+15x^6+15x^7)/(1+14x^4+x^8))` (program `A140806.P10139889940397855815`, by `A140806.P10139889940397855815.correct`). Lean does not check the parsing of the name. -/
def A140806.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140811.P17716776478933671421

`6*n²-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140811.P17716776478933671421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - 1

end

end A140811.P17716776478933671421

noncomputable section

/-- A140811: a(n) = 6*n^2 - 1.

Offset 0, canonical program `A140811.P17716776478933671421`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²-1` (program `A140811.P17716776478933671421`, by `A140811.P17716776478933671421.correct`). Lean does not check the parsing of the name. -/
def A140811 (n : ℕ) : ℤ :=
  A140811.P17716776478933671421.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n²-1` (program `A140811.P17716776478933671421`, by `A140811.P17716776478933671421.correct`). Lean does not check the parsing of the name. -/
def A140811.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140822.P16397713061608607614

`C(row(n), gcd(row(n), col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140822.P16397713061608607614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (Nat.gcd (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n))

end

end A140822.P16397713061608607614

noncomputable section

/-- A140822: Triangle T(n,m) = binomial(n,gcd(n,m)) read by rows, 0<=m<=n.

Offset 0, canonical program `A140822.P16397713061608607614`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), gcd(row(n), col(n)))` (program `A140822.P16397713061608607614`, by `A140822.P16397713061608607614.correct`). Lean does not check the parsing of the name. -/
def A140822 (n : ℕ) : ℤ :=
  (A140822.P16397713061608607614.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), gcd(row(n), col(n)))` (program `A140822.P16397713061608607614`, by `A140822.P16397713061608607614.correct`). Lean does not check the parsing of the name. -/
def A140822.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140824.P7895021052386050256

`ogf((x-x^3)/(1-3x+2x^2-3x^3+x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140824.P7895021052386050256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -3, 2, -3, 1] n

end

end A140824.P7895021052386050256

noncomputable section

/-- A140824: Expansion of (x-x^3)/(1-3*x+2*x^2-3*x^3+x^4).

Offset 0, canonical program `A140824.P7895021052386050256`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-3x+2x^2-3x^3+x^4))` (program `A140824.P7895021052386050256`, by `A140824.P7895021052386050256.correct`). Lean does not check the parsing of the name. -/
def A140824 (n : ℕ) : ℤ :=
  A140824.P7895021052386050256.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-3x+2x^2-3x^3+x^4))` (program `A140824.P7895021052386050256`, by `A140824.P7895021052386050256.correct`). Lean does not check the parsing of the name. -/
def A140824.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140952.P11386251807882845297

`ogf(1/(1-x^2-x^3+x^8+x^9-x^11+x^13-x^15+x^17-x^19-x^20+x^25+x^26-x^28))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140952.P11386251807882845297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -1, 0, 0, 0, 0, 1, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, -1, 0, 0, 0, 0, 1, 1, 0, -1] n

end

end A140952.P11386251807882845297

noncomputable section

/-- A140952: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^5)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A140952.P11386251807882845297`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^8+x^9-x^11+x^13-x^15+x^17-x^19-x^20+x^25+x^26-x^28))` (program `A140952.P11386251807882845297`, by `A140952.P11386251807882845297.correct`). Lean does not check the parsing of the name. -/
def A140952 (n : ℕ) : ℤ :=
  A140952.P11386251807882845297.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^8+x^9-x^11+x^13-x^15+x^17-x^19-x^20+x^25+x^26-x^28))` (program `A140952.P11386251807882845297`, by `A140952.P11386251807882845297.correct`). Lean does not check the parsing of the name. -/
def A140952.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140966.P6798248531226960807

`5-2*a(n-1)` with `a(0)=2`
-/

namespace A140966.P6798248531226960807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 - 2 * a (n - 1)

end

end A140966.P6798248531226960807

noncomputable section

/-- A140966: a(n) = (5 + (-2)^n)/3.

Offset 0, canonical program `A140966.P6798248531226960807`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5+(-2)^n)/3` (program `A140966.P12965105067658252371`, by `A140966.P12965105067658252371.correct`). Lean does not check the parsing of the name. -/
def A140966 (n : ℕ) : ℤ :=
  A140966.P6798248531226960807.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5+(-2)^n)/3` (program `A140966.P12965105067658252371`, by `A140966.P12965105067658252371.correct`). Lean does not check the parsing of the name. -/
def A140966.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141015.P2955004518225902035

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141015.P2955004518225902035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A141015.P2955004518225902035

noncomputable section

/-- A141015: a(0) = 0, a(1) = 1, a(2) = 2; for n > 2, a(n) = a(n-1) + 2*a(n-2) + a(n-3).

Offset 0, canonical program `A141015.P2955004518225902035`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)` (program `A141015.P2955004518225902035`, by `A141015.P2955004518225902035.correct`). Lean does not check the parsing of the name. -/
def A141015 (n : ℕ) : ℤ :=
  (A141015.P2955004518225902035.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)` (program `A141015.P2955004518225902035`, by `A141015.P2955004518225902035.correct`). Lean does not check the parsing of the name. -/
def A141015.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141025.P6773486296332513694

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A141025.P6773486296332513694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + 2 * a (n - 4)

end

end A141025.P6773486296332513694

noncomputable section

/-- A141025: a(n) = (2^(2+n)-(-1)^n)/3 - 2*n.

Offset 0, canonical program `A141025.P6773486296332513694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2+n)-(-1)^n)/3-2*n` (program `A141025.P9308530200859705141`, by `A141025.P9308530200859705141.correct`). Lean does not check the parsing of the name. -/
def A141025 (n : ℕ) : ℤ :=
  A141025.P6773486296332513694.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2+n)-(-1)^n)/3-2*n` (program `A141025.P9308530200859705141`, by `A141025.P9308530200859705141.correct`). Lean does not check the parsing of the name. -/
def A141025.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141032.P8794503586977925027

`16*a(n-1)+4` with `a(0)=0`
-/

namespace A141032.P8794503586977925027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  16 * a (n - 1) + 4

end

end A141032.P8794503586977925027

noncomputable section

/-- A141032: a(n) = 4*(16^n - 1)/15.

Offset 0, canonical program `A141032.P8794503586977925027`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(16^n-1)/15` (program `A141032.P16184064606601983818`, by `A141032.P16184064606601983818.correct`). Lean does not check the parsing of the name. -/
def A141032 (n : ℕ) : ℤ :=
  (A141032.P8794503586977925027.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(16^n-1)/15` (program `A141032.P16184064606601983818`, by `A141032.P16184064606601983818.correct`). Lean does not check the parsing of the name. -/
def A141032.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A141038.P8561844892133511011

`a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141038.P8561844892133511011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  a (n - 2) + a (n - 3)

end

end A141038.P8561844892133511011

noncomputable section

/-- A141038: Padovan-like sequence; a(0)=2, a(1)=1, a(2)=1, a(n) = a(n-2) + a(n-3).

Offset 0, canonical program `A141038.P8561844892133511011`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A141038.P8561844892133511011`, by `A141038.P8561844892133511011.correct`). Lean does not check the parsing of the name. -/
def A141038 (n : ℕ) : ℤ :=
  (A141038.P8561844892133511011.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A141038.P8561844892133511011`, by `A141038.P8561844892133511011.correct`). Lean does not check the parsing of the name. -/
def A141038.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141041.P1206500589209288269

`6*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A141041.P1206500589209288269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * a (n - 1) + 3 * a (n - 2)

end

end A141041.P1206500589209288269

noncomputable section

/-- A141041: a(n) = ((3 + 2*sqrt(3))^n + (3 - 2*sqrt(3))^n)/2.

Offset 0, canonical program `A141041.P1206500589209288269`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((3+2*sqrt(3))^n+(3-2*sqrt(3))^n)/2` (program `A141041.P8450238831429641611`, by `A141041.P8450238831429641611.correct`). Lean does not check the parsing of the name. -/
def A141041 (n : ℕ) : ℤ :=
  (A141041.P1206500589209288269.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((3+2*sqrt(3))^n+(3-2*sqrt(3))^n)/2` (program `A141041.P8450238831429641611`, by `A141041.P8450238831429641611.correct`). Lean does not check the parsing of the name. -/
def A141041.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141046.P17031355750207900223

`4*n^4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141046.P17031355750207900223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 4

end

end A141046.P17031355750207900223

noncomputable section

/-- A141046: a(n) = 4*n^4.

Offset 0, canonical program `A141046.P17031355750207900223`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4` (program `A141046.P17031355750207900223`, by `A141046.P17031355750207900223.correct`). Lean does not check the parsing of the name. -/
def A141046 (n : ℕ) : ℤ :=
  (A141046.P17031355750207900223.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4` (program `A141046.P17031355750207900223`, by `A141046.P17031355750207900223.correct`). Lean does not check the parsing of the name. -/
def A141046.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141054.P6634795415695906281

`C(n+8, 8)*8^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141054.P6634795415695906281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 * 8 ^ n

end

end A141054.P6634795415695906281

noncomputable section

/-- A141054: 8-idempotent numbers: a(n) = binomial(n+8,8)*8^n.

Offset 0, canonical program `A141054.P6634795415695906281`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*8^n` (program `A141054.P6634795415695906281`, by `A141054.P6634795415695906281.correct`). Lean does not check the parsing of the name. -/
def A141054 (n : ℕ) : ℤ :=
  (A141054.P6634795415695906281.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*8^n` (program `A141054.P6634795415695906281`, by `A141054.P6634795415695906281.correct`). Lean does not check the parsing of the name. -/
def A141054.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141060.P19134060271740419

`16*a(n-1)-5` with `a(0)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141060.P19134060271740419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  16 * a (n - 1) - 5

end

end A141060.P19134060271740419

noncomputable section

/-- A141060: Fourth quadrisection of Jacobsthal numbers A001045: a(n)=16a(n-1)-5.

Offset 0, canonical program `A141060.P19134060271740419`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-5` (program `A141060.P19134060271740419`, by `A141060.P19134060271740419.correct`). Lean does not check the parsing of the name. -/
def A141060 (n : ℕ) : ℤ :=
  A141060.P19134060271740419.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-5` (program `A141060.P19134060271740419`, by `A141060.P19134060271740419.correct`). Lean does not check the parsing of the name. -/
def A141060.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141291.P4872413684219490591

`4*a(n-1)+2*n-1` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141291.P4872413684219490591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + (2 * n : ℤ) - 1

end

end A141291.P4872413684219490591

noncomputable section

/-- A141291: a(n) = 4*a(n-1) + 2*n - 1.

Offset 0, canonical program `A141291.P4872413684219490591`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+2*n-1` (program `A141291.P4872413684219490591`, by `A141291.P4872413684219490591.correct`). Lean does not check the parsing of the name. -/
def A141291 (n : ℕ) : ℤ :=
  A141291.P4872413684219490591.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+2*n-1` (program `A141291.P4872413684219490591`, by `A141291.P4872413684219490591.correct`). Lean does not check the parsing of the name. -/
def A141291.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141352.P5536946298510214450

`ogf((1-2x-5x^2-7x^3+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141352.P5536946298510214450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -5, -7, 0, 0, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A141352.P5536946298510214450

noncomputable section

/-- A141352: Expansion of (1-2x-5x^2-7x^3+x^6)/((1-x)(1-x^3)^2).

Offset 0, canonical program `A141352.P5536946298510214450`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-5x^2-7x^3+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` (program `A141352.P5536946298510214450`, by `A141352.P5536946298510214450.correct`). Lean does not check the parsing of the name. -/
def A141352 (n : ℕ) : ℤ :=
  A141352.P5536946298510214450.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-5x^2-7x^3+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` (program `A141352.P5536946298510214450`, by `A141352.P5536946298510214450.correct`). Lean does not check the parsing of the name. -/
def A141352.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141354.P5817696684207853048

`ogf((1-5x-x^2+x^3)/(1-2x+2x^3-x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141354.P5817696684207853048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, -1, 1] [1, -2, 0, 2, -1] n

end

end A141354.P5817696684207853048

noncomputable section

/-- A141354: Expansion of (1-5*x-x^2+x^3)/((1+x)*(1-x)^3).

Offset 0, canonical program `A141354.P5817696684207853048`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x-x^2+x^3)/(1-2x+2x^3-x^4))` (program `A141354.P5817696684207853048`, by `A141354.P5817696684207853048.correct`). Lean does not check the parsing of the name. -/
def A141354 (n : ℕ) : ℤ :=
  A141354.P5817696684207853048.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x-x^2+x^3)/(1-2x+2x^3-x^4))` (program `A141354.P5817696684207853048`, by `A141354.P5817696684207853048.correct`). Lean does not check the parsing of the name. -/
def A141354.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141365.P9658596638970188275

`ogf((1-5x^2-7x^3-2x^4+x^6)/(1-x-2x^3+2x^4+x^6-x^7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141365.P9658596638970188275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -5, -7, -2, 0, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A141365.P9658596638970188275

noncomputable section

/-- A141365: Expansion of (1-5x^2-7x^3-2x^4+x^6)/((1-x)(1-x^3)^2).

Offset 0, canonical program `A141365.P9658596638970188275`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x^2-7x^3-2x^4+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` (program `A141365.P9658596638970188275`, by `A141365.P9658596638970188275.correct`). Lean does not check the parsing of the name. -/
def A141365 (n : ℕ) : ℤ :=
  A141365.P9658596638970188275.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x^2-7x^3-2x^4+x^6)/(1-x-2x^3+2x^4+x^6-x^7))` (program `A141365.P9658596638970188275`, by `A141365.P9658596638970188275.correct`). Lean does not check the parsing of the name. -/
def A141365.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141385.P13418306853926403458

`7*a(n-1)-9*a(n-2)+a(n-3)` with `a(0)=3, a(1)=7, a(2)=31`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141385.P13418306853926403458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 31] fun n a =>
  7 * a (n - 1) - 9 * a (n - 2) + a (n - 3)

end

end A141385.P13418306853926403458

noncomputable section

/-- A141385: a(n) = 7*a(n-1) - 9*a(n-2) + a(n-3) with a(0)=3, a(1)=7, a(2)=31.

Offset 0, canonical program `A141385.P13418306853926403458`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-9*a(n-2)+a(n-3)` (program `A141385.P13418306853926403458`, by `A141385.P13418306853926403458.correct`). Lean does not check the parsing of the name. -/
def A141385 (n : ℕ) : ℤ :=
  A141385.P13418306853926403458.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-9*a(n-2)+a(n-3)` (program `A141385.P13418306853926403458`, by `A141385.P13418306853926403458.correct`). Lean does not check the parsing of the name. -/
def A141385.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141387.P5238259369822402056

`row(n)+2*col(n)*(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141387.P5238259369822402056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) + (2 * SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A141387.P5238259369822402056

noncomputable section

/-- A141387: Triangle read by rows: T(n,m) = n + 2*m*(n - m) (0 <= m <= n).

Offset 0, canonical program `A141387.P5238259369822402056`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+2*col(n)*(row(n)-col(n))` (program `A141387.P5238259369822402056`, by `A141387.P5238259369822402056.correct`). Lean does not check the parsing of the name. -/
def A141387 (n : ℕ) : ℤ :=
  A141387.P5238259369822402056.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+2*col(n)*(row(n)-col(n))` (program `A141387.P5238259369822402056`, by `A141387.P5238259369822402056.correct`). Lean does not check the parsing of the name. -/
def A141387.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141402.P1622332327337828175

`row(n)²+(2*col(n)*(row(n)-col(n)))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141402.P1622332327337828175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n ^ 2 : ℤ) + ((2 * SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) ^ 2

end

end A141402.P1622332327337828175

noncomputable section

/-- A141402: Triangle T(n, k) = n^2 + (2*k*(n-k))^2, read by rows.

Offset 0, canonical program `A141402.P1622332327337828175`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)²+(2*col(n)*(row(n)-col(n)))²` (program `A141402.P1622332327337828175`, by `A141402.P1622332327337828175.correct`). Lean does not check the parsing of the name. -/
def A141402 (n : ℕ) : ℤ :=
  A141402.P1622332327337828175.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)²+(2*col(n)*(row(n)-col(n)))²` (program `A141402.P1622332327337828175`, by `A141402.P1622332327337828175.correct`). Lean does not check the parsing of the name. -/
def A141402.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141407.P16985543083532074927

`C(n+7, 7)*6^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141407.P16985543083532074927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 7) 7 * 6 ^ n

end

end A141407.P16985543083532074927

noncomputable section

/-- A141407: a(n) = binomial(n+7,7)*6^n.

Offset 0, canonical program `A141407.P16985543083532074927`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*6^n` (program `A141407.P16985543083532074927`, by `A141407.P16985543083532074927.correct`). Lean does not check the parsing of the name. -/
def A141407 (n : ℕ) : ℤ :=
  (A141407.P16985543083532074927.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+7, 7)*6^n` (program `A141407.P16985543083532074927`, by `A141407.P16985543083532074927.correct`). Lean does not check the parsing of the name. -/
def A141407.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141418.P4080118135524004049

`C(col(n)+1, 2)+(row(n)-col(n))*(col(n)+1)`
-/

namespace A141418.P4080118135524004049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A141418.P4080118135524004049

noncomputable section

/-- A141418: Triangle read by rows: T(n,k) = k * (2*n - k - 1) / 2, 1 <= k <= n.

Offset 1, canonical program `A141418.P4080118135524004049`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*(2*(row(n)+1)-(col(n)+1)-1)/2` (program `A141418.P16103118710698348226`, by `A141418.P16103118710698348226.correct`). Lean does not check the parsing of the name. -/
def A141418 (n : ℕ) : ℤ :=
  A141418.P4080118135524004049.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*(2*(row(n)+1)-(col(n)+1)-1)/2` (program `A141418.P16103118710698348226`, by `A141418.P16103118710698348226.correct`). Lean does not check the parsing of the name. -/
def A141418.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141429.P3778980955938111992

`(col(n)+2)*(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141429.P3778980955938111992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A141429.P3778980955938111992

noncomputable section

/-- A141429: Triangle T(n, k) = (k+1)*(n-k+1), read by rows.

Offset 1, canonical program `A141429.P3778980955938111992`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+2)*(row(n)+1-col(n))` (program `A141429.P3778980955938111992`, by `A141429.P3778980955938111992.correct`). Lean does not check the parsing of the name. -/
def A141429 (n : ℕ) : ℤ :=
  A141429.P3778980955938111992.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+2)*(row(n)+1-col(n))` (program `A141429.P3778980955938111992`, by `A141429.P3778980955938111992.correct`). Lean does not check the parsing of the name. -/
def A141429.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141431.P12765055757640565081

`col(n)*(3*(row(n)+1)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141431.P12765055757640565081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A141431.P12765055757640565081

noncomputable section

/-- A141431: Triangle T(n,k) = (k-1)*(3*n-k+1), read by rows.

Offset 1, canonical program `A141431.P12765055757640565081`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-col(n))` (program `A141431.P12765055757640565081`, by `A141431.P12765055757640565081.correct`). Lean does not check the parsing of the name. -/
def A141431 (n : ℕ) : ℤ :=
  A141431.P12765055757640565081.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-col(n))` (program `A141431.P12765055757640565081`, by `A141431.P12765055757640565081.correct`). Lean does not check the parsing of the name. -/
def A141431.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141432.P5501236499494687648

`(col(n)+2)*(row(n)-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141432.P5501236499494687648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ))

end

end A141432.P5501236499494687648

noncomputable section

/-- A141432: Triangle T(n,k) = (k+1)*(n-k-1) read by rows.

Offset 1, canonical program `A141432.P5501236499494687648`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+2)*(row(n)-(col(n)+1))` (program `A141432.P5501236499494687648`, by `A141432.P5501236499494687648.correct`). Lean does not check the parsing of the name. -/
def A141432 (n : ℕ) : ℤ :=
  A141432.P5501236499494687648.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+2)*(row(n)-(col(n)+1))` (program `A141432.P5501236499494687648`, by `A141432.P5501236499494687648.correct`). Lean does not check the parsing of the name. -/
def A141432.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141433.P9226178116512622478

`col(n)*(3*(row(n)+1)-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141433.P9226178116512622478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ))

end

end A141433.P9226178116512622478

noncomputable section

/-- A141433: Triangle T(n, k) = (k-1)*(3*n-k), read by rows.

Offset 1, canonical program `A141433.P9226178116512622478`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-(col(n)+1))` (program `A141433.P9226178116512622478`, by `A141433.P9226178116512622478.correct`). Lean does not check the parsing of the name. -/
def A141433 (n : ℕ) : ℤ :=
  A141433.P9226178116512622478.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-(col(n)+1))` (program `A141433.P9226178116512622478`, by `A141433.P9226178116512622478.correct`). Lean does not check the parsing of the name. -/
def A141433.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141434.P10264922123432499048

`col(n)*(3*(row(n)+1)-(col(n)+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141434.P10264922123432499048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) - 1)

end

end A141434.P10264922123432499048

noncomputable section

/-- A141434: Triangle T(n, k) = (k-1)*(3*n-k-1), read by rows.

Offset 1, canonical program `A141434.P10264922123432499048`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-(col(n)+1)-1)` (program `A141434.P10264922123432499048`, by `A141434.P10264922123432499048.correct`). Lean does not check the parsing of the name. -/
def A141434 (n : ℕ) : ℤ :=
  A141434.P10264922123432499048.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*(3*(row(n)+1)-(col(n)+1)-1)` (program `A141434.P10264922123432499048`, by `A141434.P10264922123432499048.correct`). Lean does not check the parsing of the name. -/
def A141434.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141478.P7817831478187282158

`C(n+3, 3)*4^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141478.P7817831478187282158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 * 4 ^ 3

end

end A141478.P7817831478187282158

noncomputable section

/-- A141478: a(n) = binomial(n+2,3)*4^3.

Offset 1, canonical program `A141478.P7817831478187282158`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*4^3` (program `A141478.P7817831478187282158`, by `A141478.P7817831478187282158.correct`). Lean does not check the parsing of the name. -/
def A141478 (n : ℕ) : ℤ :=
  (A141478.P7817831478187282158.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*4^3` (program `A141478.P7817831478187282158`, by `A141478.P7817831478187282158.correct`). Lean does not check the parsing of the name. -/
def A141478.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141480.P8737246659176399538

`C(n+3, 3)*5^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141480.P8737246659176399538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 * 5 ^ 3

end

end A141480.P8737246659176399538

noncomputable section

/-- A141480: a(n) = binomial(n+2,3)*5^3.

Offset 1, canonical program `A141480.P8737246659176399538`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*5^3` (program `A141480.P8737246659176399538`, by `A141480.P8737246659176399538.correct`). Lean does not check the parsing of the name. -/
def A141480 (n : ℕ) : ℤ :=
  (A141480.P8737246659176399538.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*5^3` (program `A141480.P8737246659176399538`, by `A141480.P8737246659176399538.correct`). Lean does not check the parsing of the name. -/
def A141480.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141495.P3765445858878700180

`3*a(n-1)` with `a(0)=1, a(1)=3, a(2)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141495.P3765445858878700180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  3 * a (n - 1)

end

end A141495.P3765445858878700180

noncomputable section

/-- A141495: a(n) = 3*a(n-1) for n>2; a(0)=1, a(1)=3, a(2)=7.

Offset 0, canonical program `A141495.P3765445858878700180`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)` (program `A141495.P3765445858878700180`, by `A141495.P3765445858878700180.correct`). Lean does not check the parsing of the name. -/
def A141495 (n : ℕ) : ℤ :=
  (A141495.P3765445858878700180.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)` (program `A141495.P3765445858878700180`, by `A141495.P3765445858878700180.correct`). Lean does not check the parsing of the name. -/
def A141495.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141496.P5231659193361361864

`a(1)*a(n-1)` with `a(0)=1, a(1)=5, a(2)=11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141496.P5231659193361361864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11] fun n a =>
  a 1 * a (n - 1)

end

end A141496.P5231659193361361864

noncomputable section

/-- A141496: a(0)=1; a(1)=5; a(2)=11; a(n)=a(1)*a(n-1).

Offset 0, canonical program `A141496.P5231659193361361864`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(1)*a(n-1)` (program `A141496.P5231659193361361864`, by `A141496.P5231659193361361864.correct`). Lean does not check the parsing of the name. -/
def A141496 (n : ℕ) : ℤ :=
  (A141496.P5231659193361361864.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(1)*a(n-1)` (program `A141496.P5231659193361361864`, by `A141496.P5231659193361361864.correct`). Lean does not check the parsing of the name. -/
def A141496.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141520.P17596857060299975752

`a(n-1)*a(n-2)+a(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141520.P17596857060299975752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) * a (n - 2) + a (n - 2) * a (n - 3)

end

end A141520.P17596857060299975752

noncomputable section

/-- A141520: a(1) = 0, a(2) = a(3) = 1; a(n) = a(n-1)*a(n-2) + a(n-2)*a(n-3) for n > 3.

Offset 1, canonical program `A141520.P17596857060299975752`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+a(n-2)*a(n-3)` (program `A141520.P17596857060299975752`, by `A141520.P17596857060299975752.correct`). Lean does not check the parsing of the name. -/
def A141520 (n : ℕ) : ℤ :=
  (A141520.P17596857060299975752.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+a(n-2)*a(n-3)` (program `A141520.P17596857060299975752`, by `A141520.P17596857060299975752.correct`). Lean does not check the parsing of the name. -/
def A141520.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141522.P4713986315062293381

`a(n-1)*a(n-2)+a(n-1)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141522.P4713986315062293381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) * a (n - 2) + a (n - 1) * a (n - 3)

end

end A141522.P4713986315062293381

noncomputable section

/-- A141522: a(1) = 0, a(2) = a(3) = 1; a(n) = a(n-1)*a(n-2) + a(n-1)*a(n-3) for n > 3.

Offset 1, canonical program `A141522.P4713986315062293381`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+a(n-1)*a(n-3)` (program `A141522.P4713986315062293381`, by `A141522.P4713986315062293381.correct`). Lean does not check the parsing of the name. -/
def A141522 (n : ℕ) : ℤ :=
  (A141522.P4713986315062293381.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+a(n-1)*a(n-3)` (program `A141522.P4713986315062293381`, by `A141522.P4713986315062293381.correct`). Lean does not check the parsing of the name. -/
def A141522.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141523.P4161493871090751566

`ogf((3-2x-3x^2)/(1-x-x^2-x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141523.P4161493871090751566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -3] [1, -1, -1, -1] n

end

end A141523.P4161493871090751566

noncomputable section

/-- A141523: Expansion of (3-2*x-3*x^2)/(1-x-x^2-x^3).

Offset 0, canonical program `A141523.P4161493871090751566`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-2x-3x^2)/(1-x-x^2-x^3))` (program `A141523.P4161493871090751566`, by `A141523.P4161493871090751566.correct`). Lean does not check the parsing of the name. -/
def A141523 (n : ℕ) : ℤ :=
  A141523.P4161493871090751566.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3-2x-3x^2)/(1-x-x^2-x^3))` (program `A141523.P4161493871090751566`, by `A141523.P4161493871090751566.correct`). Lean does not check the parsing of the name. -/
def A141523.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141527.P17605951991270455314

`ogf((2+x)/(1+x+41x^2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141527.P17605951991270455314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, 1, 41] n

end

end A141527.P17605951991270455314

noncomputable section

/-- A141527: Expansion of x*(2 + x)/(1 + x + 41*x^2).

Offset 1, canonical program `A141527.P17605951991270455314`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x)/(1+x+41x^2))` (program `A141527.P17605951991270455314`, by `A141527.P17605951991270455314.correct`). Lean does not check the parsing of the name. -/
def A141527 (n : ℕ) : ℤ :=
  A141527.P17605951991270455314.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+x)/(1+x+41x^2))` (program `A141527.P17605951991270455314`, by `A141527.P17605951991270455314.correct`). Lean does not check the parsing of the name. -/
def A141527.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141528.P5154365411434288706

`ogf(-x/(1+x+41x^2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141528.P5154365411434288706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 1, 41] n

end

end A141528.P5154365411434288706

noncomputable section

/-- A141528: Expansion of -x/(1 + x + 41*x^2).

Offset 1, canonical program `A141528.P5154365411434288706`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-x/(1+x+41x^2))` (program `A141528.P5154365411434288706`, by `A141528.P5154365411434288706.correct`). Lean does not check the parsing of the name. -/
def A141528 (n : ℕ) : ℤ :=
  A141528.P5154365411434288706.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-x/(1+x+41x^2))` (program `A141528.P5154365411434288706`, by `A141528.P5154365411434288706.correct`). Lean does not check the parsing of the name. -/
def A141528.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141530.P17727032395850956273

`4*n^3-6*n²+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141530.P17727032395850956273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 : ℤ) - (6 * n ^ 2 : ℤ) + 1

end

end A141530.P17727032395850956273

noncomputable section

/-- A141530: a(n) = 4*n^3 - 6*n^2 + 1.

Offset 0, canonical program `A141530.P17727032395850956273`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3-6*n²+1` (program `A141530.P17727032395850956273`, by `A141530.P17727032395850956273.correct`). Lean does not check the parsing of the name. -/
def A141530 (n : ℕ) : ℤ :=
  A141530.P17727032395850956273.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3-6*n²+1` (program `A141530.P17727032395850956273`, by `A141530.P17727032395850956273.correct`). Lean does not check the parsing of the name. -/
def A141530.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141576.P878227437054349943

`a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=-1, a(1)=0, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141576.P878227437054349943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1] fun n a =>
  a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A141576.P878227437054349943

noncomputable section

/-- A141576: a(0)=-1, a(1)=0, a(2)=1, a(n) = a(n-1) - 2*a(n-2) + a(n-3).

Offset 0, canonical program `A141576.P878227437054349943`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)+a(n-3)` (program `A141576.P878227437054349943`, by `A141576.P878227437054349943.correct`). Lean does not check the parsing of the name. -/
def A141576 (n : ℕ) : ℤ :=
  A141576.P878227437054349943.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)+a(n-3)` (program `A141576.P878227437054349943`, by `A141576.P878227437054349943.correct`). Lean does not check the parsing of the name. -/
def A141576.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141577.P11180140923981616516

`a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141577.P11180140923981616516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1, -1] fun n a =>
  a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A141577.P11180140923981616516

noncomputable section

/-- A141577: a(0) = -1; a(1) = 0; a(2) = 1; a(3) = -1; a(n) = a(n-1) - 3*a(n-2) + 3*a(n-3) - a(n-4).

Offset 0, canonical program `A141577.P11180140923981616516`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` (program `A141577.P11180140923981616516`, by `A141577.P11180140923981616516.correct`). Lean does not check the parsing of the name. -/
def A141577 (n : ℕ) : ℤ :=
  A141577.P11180140923981616516.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` (program `A141577.P11180140923981616516`, by `A141577.P11180140923981616516.correct`). Lean does not check the parsing of the name. -/
def A141577.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141596.P17426953477732040037

`4*C(row(n), col(n))²-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141596.P17426953477732040037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 : ℤ) - 3

end

end A141596.P17426953477732040037

noncomputable section

/-- A141596: Triangle T(n,k) = 4*binomial(n,k)^2 - 3, read by rows, 0<=k<=n.

Offset 0, canonical program `A141596.P17426953477732040037`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*C(row(n), col(n))²-3` (program `A141596.P17426953477732040037`, by `A141596.P17426953477732040037.correct`). Lean does not check the parsing of the name. -/
def A141596 (n : ℕ) : ℤ :=
  A141596.P17426953477732040037.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*C(row(n), col(n))²-3` (program `A141596.P17426953477732040037`, by `A141596.P17426953477732040037.correct`). Lean does not check the parsing of the name. -/
def A141596.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141597.P14074862873981650977

`2*C(row(n), col(n))²-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141597.P14074862873981650977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ 2 : ℤ) - 1

end

end A141597.P14074862873981650977

noncomputable section

/-- A141597: Triangle T(n,k) = 2*binomial(n,k)^2 - 1, read by rows, 0<=k<=n.

Offset 0, canonical program `A141597.P14074862873981650977`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(row(n), col(n))²-1` (program `A141597.P14074862873981650977`, by `A141597.P14074862873981650977.correct`). Lean does not check the parsing of the name. -/
def A141597 (n : ℕ) : ℤ :=
  A141597.P14074862873981650977.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(row(n), col(n))²-1` (program `A141597.P14074862873981650977`, by `A141597.P14074862873981650977.correct`). Lean does not check the parsing of the name. -/
def A141597.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141611.P17125091726554682991

`(row(n)-col(n)+1)*(col(n)+1)*C(row(n), col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141611.P17125091726554682991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A141611.P17125091726554682991

noncomputable section

/-- A141611: Triangle read by rows: T(n, k) = (n-k+1)*(k+1)*binomial(n, k).

Offset 0, canonical program `A141611.P17125091726554682991`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(col(n)+1)*C(row(n), col(n))` (program `A141611.P17125091726554682991`, by `A141611.P17125091726554682991.correct`). Lean does not check the parsing of the name. -/
def A141611 (n : ℕ) : ℤ :=
  A141611.P17125091726554682991.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)-col(n)+1)*(col(n)+1)*C(row(n), col(n))` (program `A141611.P17125091726554682991`, by `A141611.P17125091726554682991.correct`). Lean does not check the parsing of the name. -/
def A141611.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141631.P7887751271673767978

`3*(n+1)²-4*(n+1)+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141631.P7887751271673767978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) ^ 2 : ℤ) - (4 * (n + 1) : ℤ) + 3

end

end A141631.P7887751271673767978

noncomputable section

/-- A141631: a(n) = 3*n^2 - 4*n + 3.

Offset 1, canonical program `A141631.P7887751271673767978`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²-4*(n+1)+3` (program `A141631.P7887751271673767978`, by `A141631.P7887751271673767978.correct`). Lean does not check the parsing of the name. -/
def A141631 (n : ℕ) : ℤ :=
  A141631.P7887751271673767978.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+1)²-4*(n+1)+3` (program `A141631.P7887751271673767978`, by `A141631.P7887751271673767978.correct`). Lean does not check the parsing of the name. -/
def A141631.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141662.P887994440463581248

`abs(row(n)-col(n)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141662.P887994440463581248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n ^ 2 : ℤ)|

end

end A141662.P887994440463581248

noncomputable section

/-- A141662: Triangle read by rows, T(n,m) = abs(n - m^2).

Offset 0, canonical program `A141662.P887994440463581248`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(row(n)-col(n)²)` (program `A141662.P887994440463581248`, by `A141662.P887994440463581248.correct`). Lean does not check the parsing of the name. -/
def A141662 (n : ℕ) : ℤ :=
  A141662.P887994440463581248.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(row(n)-col(n)²)` (program `A141662.P887994440463581248`, by `A141662.P887994440463581248.correct`). Lean does not check the parsing of the name. -/
def A141662.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141694.P14688773505282126803

`22*n+12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141694.P14688773505282126803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n + 12

end

end A141694.P14688773505282126803

noncomputable section

/-- A141694: a(n) = 22*n + 12.

Offset 0, canonical program `A141694.P14688773505282126803`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*n+12` (program `A141694.P14688773505282126803`, by `A141694.P14688773505282126803.correct`). Lean does not check the parsing of the name. -/
def A141694 (n : ℕ) : ℤ :=
  (A141694.P14688773505282126803.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*n+12` (program `A141694.P14688773505282126803`, by `A141694.P14688773505282126803.correct`). Lean does not check the parsing of the name. -/
def A141694.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141722.P3395752696005296330

`8*4^n-7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141722.P3395752696005296330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * 4 ^ n : ℤ) - 7

end

end A141722.P3395752696005296330

noncomputable section

/-- A141722: a(n) = 8*4^n - 7.

Offset 0, canonical program `A141722.P3395752696005296330`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*4^n-7` (program `A141722.P3395752696005296330`, by `A141722.P3395752696005296330.correct`). Lean does not check the parsing of the name. -/
def A141722 (n : ℕ) : ℤ :=
  A141722.P3395752696005296330.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*4^n-7` (program `A141722.P3395752696005296330`, by `A141722.P3395752696005296330.correct`). Lean does not check the parsing of the name. -/
def A141722.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141725.P3910336082841405750

`4^(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141725.P3910336082841405750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - 3

end

end A141725.P3910336082841405750

noncomputable section

/-- A141725: a(n) = 4^(n+1) - 3.

Offset 0, canonical program `A141725.P3910336082841405750`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)-3` (program `A141725.P3910336082841405750`, by `A141725.P3910336082841405750.correct`). Lean does not check the parsing of the name. -/
def A141725 (n : ℕ) : ℤ :=
  A141725.P3910336082841405750.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)-3` (program `A141725.P3910336082841405750`, by `A141725.P3910336082841405750.correct`). Lean does not check the parsing of the name. -/
def A141725.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141759.P7052951860497148321

`16*n²+32*n+15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141759.P7052951860497148321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n ^ 2 + 32 * n + 15

end

end A141759.P7052951860497148321

noncomputable section

/-- A141759: a(n) = 16n^2 + 32n + 15.

Offset 0, canonical program `A141759.P7052951860497148321`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n²+32*n+15` (program `A141759.P7052951860497148321`, by `A141759.P7052951860497148321.correct`). Lean does not check the parsing of the name. -/
def A141759 (n : ℕ) : ℤ :=
  (A141759.P7052951860497148321.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n²+32*n+15` (program `A141759.P7052951860497148321`, by `A141759.P7052951860497148321.correct`). Lean does not check the parsing of the name. -/
def A141759.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141844.P514248244883112106

`ogf((1+x+x^2+x^3)/(1-5x+4x^2-x^3+5x^4-4x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141844.P514248244883112106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -5, 4, -1, 5, -4] n

end

end A141844.P514248244883112106

noncomputable section

/-- A141844: Expansion of (1+x)*(1+x^2)/((1-x)^2*(1+x+x^2)*(1-4*x)).

Offset 0, canonical program `A141844.P514248244883112106`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^3)/(1-5x+4x^2-x^3+5x^4-4x^5))` (program `A141844.P514248244883112106`, by `A141844.P514248244883112106.correct`). Lean does not check the parsing of the name. -/
def A141844 (n : ℕ) : ℤ :=
  A141844.P514248244883112106.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2+x^3)/(1-5x+4x^2-x^3+5x^4-4x^5))` (program `A141844.P514248244883112106`, by `A141844.P514248244883112106.correct`). Lean does not check the parsing of the name. -/
def A141844.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142155.P17775820889566757954

`ogf(1/(1+x-x^2-x^4-x^5-x^6-x^7+x^9+x^10))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142155.P17775820889566757954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 1, -1, 0, -1, -1, -1, -1, 0, 1, 1] n

end

end A142155.P17775820889566757954

noncomputable section

/-- A142155: Expansion of x/( 1+x-x^2-x^4-x^5-x^6-x^7+x^9+x^10 ).

Offset 1, canonical program `A142155.P17775820889566757954`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-x^4-x^5-x^6-x^7+x^9+x^10))` (program `A142155.P17775820889566757954`, by `A142155.P17775820889566757954.correct`). Lean does not check the parsing of the name. -/
def A142155 (n : ℕ) : ℤ :=
  A142155.P17775820889566757954.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-x^4-x^5-x^6-x^7+x^9+x^10))` (program `A142155.P17775820889566757954`, by `A142155.P17775820889566757954.correct`). Lean does not check the parsing of the name. -/
def A142155.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142241.P12254409372412646352

`24*n+14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142241.P12254409372412646352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n + 14

end

end A142241.P12254409372412646352

noncomputable section

/-- A142241: a(n) = 24*n + 14.

Offset 0, canonical program `A142241.P12254409372412646352`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n+14` (program `A142241.P12254409372412646352`, by `A142241.P12254409372412646352.correct`). Lean does not check the parsing of the name. -/
def A142241 (n : ℕ) : ℤ :=
  (A142241.P12254409372412646352.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n+14` (program `A142241.P12254409372412646352`, by `A142241.P12254409372412646352.correct`). Lean does not check the parsing of the name. -/
def A142241.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142243.P11247616170850645514

`C(2*row(n), col(n))*C(2*row(n)-2*col(n), row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142243.P11247616170850645514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose ((2 * SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ)).toNat ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A142243.P11247616170850645514

noncomputable section

/-- A142243: Triangle T(n,k) = binomial(2*n,k) *binomial(2*n-2*k,n-k), read by rows; 0<=k<=n.

Offset 0, canonical program `A142243.P11247616170850645514`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*row(n), col(n))*C(2*row(n)-2*col(n), row(n)-col(n))` (program `A142243.P11247616170850645514`, by `A142243.P11247616170850645514.correct`). Lean does not check the parsing of the name. -/
def A142243 (n : ℕ) : ℤ :=
  (A142243.P11247616170850645514.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*row(n), col(n))*C(2*row(n)-2*col(n), row(n)-col(n))` (program `A142243.P11247616170850645514`, by `A142243.P11247616170850645514.correct`). Lean does not check the parsing of the name. -/
def A142243.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142245.P4061105670968989405

`ogf((12x+10x^2)/(1-2x+x^3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142245.P4061105670968989405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12, 10] [1, -2, 0, 1] n

end

end A142245.P4061105670968989405

noncomputable section

/-- A142245: Expansion of 2*x*(6 + 5*x) / ((1 - x)*(1 - x - x^2)).

Offset 0, canonical program `A142245.P4061105670968989405`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((12x+10x^2)/(1-2x+x^3))` (program `A142245.P4061105670968989405`, by `A142245.P4061105670968989405.correct`). Lean does not check the parsing of the name. -/
def A142245 (n : ℕ) : ℤ :=
  A142245.P4061105670968989405.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((12x+10x^2)/(1-2x+x^3))` (program `A142245.P4061105670968989405`, by `A142245.P4061105670968989405.correct`). Lean does not check the parsing of the name. -/
def A142245.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142458.P12317830626064892112

`(3*(row(n)+1)-3*(col(n)+1)+1)*T(n-1,k-1)+(3*(col(n)+1)-2)*T(n-1,k)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142458.P12317830626064892112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((3 * (SequenceMachineLib.triRow n + 1) : ℤ) - (3 * (SequenceMachineLib.triCol n + 1) : ℤ) + 1) * SequenceMachineLib.triUpLeft a n + ((3 * (SequenceMachineLib.triCol n + 1) : ℤ) - 2) * SequenceMachineLib.triUp a n

end

end A142458.P12317830626064892112

noncomputable section

/-- A142458: Triangle T(n,k) read by rows: T(n,k) = 1 if k=1 or k=n, otherwise T(n,k) = (3*n-3*k+1)*T(n-1,k-1) + (3*k-2)*T(n-1,k).

Offset 1, canonical program `A142458.P12317830626064892112`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(row(n)+1)-3*(col(n)+1)+1)*T(n-1,k-1)+(3*(col(n)+1)-2)*T(n-1,k)` (program `A142458.P12317830626064892112`, by `A142458.P12317830626064892112.correct`). Lean does not check the parsing of the name. -/
def A142458 (n : ℕ) : ℤ :=
  A142458.P12317830626064892112.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*(row(n)+1)-3*(col(n)+1)+1)*T(n-1,k-1)+(3*(col(n)+1)-2)*T(n-1,k)` (program `A142458.P12317830626064892112`, by `A142458.P12317830626064892112.correct`). Lean does not check the parsing of the name. -/
def A142458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142459.P17819760329119252682

`(4*(row(n)+1)-4*(col(n)+1)+1)*T(n-1,k-1)+(4*(col(n)+1)-3)*T(n-1,k)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142459.P17819760329119252682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((4 * (SequenceMachineLib.triRow n + 1) : ℤ) - (4 * (SequenceMachineLib.triCol n + 1) : ℤ) + 1) * SequenceMachineLib.triUpLeft a n + ((4 * (SequenceMachineLib.triCol n + 1) : ℤ) - 3) * SequenceMachineLib.triUp a n

end

end A142459.P17819760329119252682

noncomputable section

/-- A142459: Triangle read by rows: T(n,k) = (4n-4k+1) * T(n-1,k-1) + (4k-3) * T(n-1,k).

Offset 1, canonical program `A142459.P17819760329119252682`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(row(n)+1)-4*(col(n)+1)+1)*T(n-1,k-1)+(4*(col(n)+1)-3)*T(n-1,k)` (program `A142459.P17819760329119252682`, by `A142459.P17819760329119252682.correct`). Lean does not check the parsing of the name. -/
def A142459 (n : ℕ) : ℤ :=
  A142459.P17819760329119252682.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(row(n)+1)-4*(col(n)+1)+1)*T(n-1,k-1)+(4*(col(n)+1)-3)*T(n-1,k)` (program `A142459.P17819760329119252682`, by `A142459.P17819760329119252682.correct`). Lean does not check the parsing of the name. -/
def A142459.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A142471.P6742548806369173739

`a(n-1)*a(n-2)+2` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142471.P6742548806369173739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) * a (n - 2) + 2

end

end A142471.P6742548806369173739

noncomputable section

/-- A142471: a(0) = a(1) = 0; thereafter a(n) = a(n-1)*a(n-2) + 2.

Offset 0, canonical program `A142471.P6742548806369173739`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+2` (program `A142471.P6742548806369173739`, by `A142471.P6742548806369173739.correct`). Lean does not check the parsing of the name. -/
def A142471 (n : ℕ) : ℤ :=
  (A142471.P6742548806369173739.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+2` (program `A142471.P6742548806369173739`, by `A142471.P6742548806369173739.correct`). Lean does not check the parsing of the name. -/
def A142471.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142703.P2644830051381020925

`2*n*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142703.P2644830051381020925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * n * (a (n - 1) + a (n - 2))

end

end A142703.P2644830051381020925

noncomputable section

/-- A142703: a(n) = 2*(n-1)*( a(n-1)+a(n-2) ) starting a(1)=a(2)=1.

Offset 1, canonical program `A142703.P2644830051381020925`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(a(n-1)+a(n-2))` (program `A142703.P2644830051381020925`, by `A142703.P2644830051381020925.correct`). Lean does not check the parsing of the name. -/
def A142703 (n : ℕ) : ℤ :=
  (A142703.P2644830051381020925.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(a(n-1)+a(n-2))` (program `A142703.P2644830051381020925`, by `A142703.P2644830051381020925.correct`). Lean does not check the parsing of the name. -/
def A142703.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142714.P7512481430713359841

`a(n-1)*a(n-3)-a(n-2)²` with `a(0)=1, a(1)=2, a(2)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142714.P7512481430713359841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) * a (n - 3) - a (n - 2) ^ 2

end

end A142714.P7512481430713359841

noncomputable section

/-- A142714: a(n) = a(n-1)*a(n-3) - a(n-2)^2, with a(1) = 1, a(2) = 2, a(3) = 3.

Offset 1, canonical program `A142714.P7512481430713359841`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)-a(n-2)²` (program `A142714.P7512481430713359841`, by `A142714.P7512481430713359841.correct`). Lean does not check the parsing of the name. -/
def A142714 (n : ℕ) : ℤ :=
  A142714.P7512481430713359841.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)-a(n-2)²` (program `A142714.P7512481430713359841`, by `A142714.P7512481430713359841.correct`). Lean does not check the parsing of the name. -/
def A142714.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142722.P13239244906936244058

`-(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142722.P13239244906936244058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (-((2 * n : ℤ) - 1)) * a (n - 1) + a (n - 2)

end

end A142722.P13239244906936244058

noncomputable section

/-- A142722: a(0)=a(1)=1 and a(n) = -(2*n-1)*a(n-1) + a(n-2) for n>=2.

Offset 0, canonical program `A142722.P13239244906936244058`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(2*n-1)*a(n-1)+a(n-2)` (program `A142722.P13239244906936244058`, by `A142722.P13239244906936244058.correct`). Lean does not check the parsing of the name. -/
def A142722 (n : ℕ) : ℤ :=
  A142722.P13239244906936244058.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(2*n-1)*a(n-1)+a(n-2)` (program `A142722.P13239244906936244058`, by `A142722.P13239244906936244058.correct`). Lean does not check the parsing of the name. -/
def A142722.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140201.P8450812756532810979

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=4`
-/

namespace A140201.P8450812756532810979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 4] fun n a =>
  a (n - 1) + a (n - 4) - a (n - 5)

end

end A140201.P8450812756532810979

noncomputable section

/-- A140201: Partial sums of A140081.

Offset 0, canonical program `A140201.P8450812756532810979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140201 (n : ℕ) : ℤ :=
  A140201.P8450812756532810979.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140229.P15154534900449768874

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20, a(4)=33`
-/

namespace A140229.P15154534900449768874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 20, 33] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A140229.P15154534900449768874

noncomputable section

/-- A140229: Binomial transform of [1, 3, 3, 1, -2, 3, -4, 5, ...].

Offset 1, canonical program `A140229.P15154534900449768874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140229 (n : ℕ) : ℤ :=
  A140229.P15154534900449768874.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140230.P94800940916380077

`4*a(n-1)-8*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=2, a(3)=-6`
-/

namespace A140230.P94800940916380077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, -6] fun n a =>
  4 * a (n - 1) - 8 * a (n - 2) + 8 * a (n - 3) - 4 * a (n - 4)

end

end A140230.P94800940916380077

noncomputable section

/-- A140230: Binomial transform of [1, 2, -3, -4, 5, 6, -7, -8, 9, 10, ...].

Offset 1, canonical program `A140230.P94800940916380077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140230 (n : ℕ) : ℤ :=
  A140230.P94800940916380077.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140230.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140232.P9943564388041438788

`ceil((n+1)*exp(ϕ))`
-/

namespace A140232.P9943564388041438788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.exp Real.goldenRatio⌉

end

end A140232.P9943564388041438788

noncomputable section

/-- A140232: a(n) = ceiling(n*exp((1+sqrt(5))/2)).

Offset 1, canonical program `A140232.P9943564388041438788`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*exp((1+sqrt(5))/2))` (program `A140232.P46807882409434247`, by `A140232.P46807882409434247.correct`). Lean does not check the parsing of the name. -/
def A140232 (n : ℕ) : ℤ :=
  A140232.P9943564388041438788.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*exp((1+sqrt(5))/2))` (program `A140232.P46807882409434247`, by `A140232.P46807882409434247.correct`). Lean does not check the parsing of the name. -/
def A140232.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140233.P16758134367363942694

`floor((n+1)*exp(ϕ))`
-/

namespace A140233.P16758134367363942694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.exp Real.goldenRatio⌋

end

end A140233.P16758134367363942694

noncomputable section

/-- A140233: a(n) = floor(n*e^((1+sqrt(5))/2)) = floor(n*A139341).

Offset 1, canonical program `A140233.P16758134367363942694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*e^((1+sqrt(5))/2))` (program `A140233.P5654598738813474721`, by `A140233.P5654598738813474721.correct`). Lean does not check the parsing of the name. -/
def A140233 (n : ℕ) : ℤ :=
  A140233.P16758134367363942694.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*e^((1+sqrt(5))/2))` (program `A140233.P5654598738813474721`, by `A140233.P5654598738813474721.correct`). Lean does not check the parsing of the name. -/
def A140233.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140252.P1391156608340645963

`a(n-1)+4*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=7`
-/

namespace A140252.P1391156608340645963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 7] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 4 * a (n - 3)

end

end A140252.P1391156608340645963

noncomputable section

/-- A140252: Inverse binomial transform of A140420.

Offset 0, canonical program `A140252.P1391156608340645963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140252 (n : ℕ) : ℤ :=
  A140252.P1391156608340645963.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140252.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A140276.P17298397352012173531

`floor(180*atan(n)/π)`
-/

namespace A140276.P17298397352012173531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊180 * Real.arctan (n : ℝ) / Real.pi⌋

end

end A140276.P17298397352012173531

noncomputable section

/-- A140276: Floor of the (first-quadrant) angle in degrees whose tangent is n.

Offset 0, canonical program `A140276.P17298397352012173531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140276 (n : ℕ) : ℤ :=
  A140276.P17298397352012173531.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140276.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140277.P6365988790545978647

`round(180*atan(n)/π)`
-/

namespace A140277.P6365988790545978647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (180 * Real.arctan (n : ℝ) / Real.pi)

end

end A140277.P6365988790545978647

noncomputable section

/-- A140277: Rounded (first-quadrant) angle in degrees whose tangent is n.

Offset 0, canonical program `A140277.P6365988790545978647`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140277 (n : ℕ) : ℤ :=
  A140277.P6365988790545978647.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140278.P5145372208652285668

`ceil(180*atan(n)/π)`
-/

namespace A140278.P5145372208652285668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈180 * Real.arctan (n : ℝ) / Real.pi⌉

end

end A140278.P5145372208652285668

noncomputable section

/-- A140278: Ceiling of the (first-quadrant) angle in degrees whose tangent is n.

Offset 0, canonical program `A140278.P5145372208652285668`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140278 (n : ℕ) : ℤ :=
  A140278.P5145372208652285668.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140282.P15039976820010532297

`a(n-3)+9` with `a(0)=0, a(1)=4, a(2)=8`
-/

namespace A140282.P15039976820010532297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 8] fun n a =>
  a (n - 3) + 9

end

end A140282.P15039976820010532297

noncomputable section

/-- A140282: Numbers k such that A000330(k) is multiple of 3.

Offset 0, canonical program `A140282.P15039976820010532297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140282 (n : ℕ) : ℤ :=
  (A140282.P15039976820010532297.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140300.P3961732963358043709

`2^(10*n)`
-/

namespace A140300.P3961732963358043709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (10 * n)

end

end A140300.P3961732963358043709

noncomputable section

/-- A140300: a(n) = 1024^n.

Offset 0, canonical program `A140300.P3961732963358043709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140300 (n : ℕ) : ℤ :=
  (A140300.P3961732963358043709.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140300.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140317.P3341020748688778893

`(n+1)²*ceil(10^n/(n+1)²)`
-/

namespace A140317.P3341020748688778893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * ⌈(10 ^ n : ℚ) / ((n + 1) ^ 2 : ℚ)⌉

end

end A140317.P3341020748688778893

noncomputable section

/-- A140317: Smallest n-digit number divisible by n^2.

Offset 1, canonical program `A140317.P3341020748688778893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140317 (n : ℕ) : ℤ :=
  A140317.P3341020748688778893.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140318.P14291702275352180720

`a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=-1, a(3)=1, a(4)=0, a(5)=-1`
-/

namespace A140318.P14291702275352180720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1, 1, 0, -1] fun n a =>
  a (n - 3) - a (n - 6)

end

end A140318.P14291702275352180720

noncomputable section

/-- A140318: Period 18: repeat 0, 1, -1, 1, 0, -1, 1, -1, 0, 0, -1, 1, -1, 0, 1, -1, 1, 0.

Offset 0, canonical program `A140318.P14291702275352180720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140318 (n : ℕ) : ℤ :=
  A140318.P14291702275352180720.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140320.P9429960293437043341

`3*a(n-1)+2*3^(n-1)-2` with `a(0)=1`
-/

namespace A140320.P9429960293437043341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + 2 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2

end

end A140320.P9429960293437043341

noncomputable section

/-- A140320: a(n) = A137576((3^n-1)/2).

Offset 0, canonical program `A140320.P9429960293437043341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140320 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140320.P9429960293437043341.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140323.P1828472889089173478

`2*4^n-(-1)^n`
-/

namespace A140323.P1828472889089173478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - (-1) ^ n

end

end A140323.P1828472889089173478

noncomputable section

/-- A140323: First differences of A140322.

Offset 1, canonical program `A140323.P1828472889089173478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140323 (n : ℕ) : ℤ :=
  A140323.P1828472889089173478.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140360.P2514951082004527429

`5-2*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A140360.P2514951082004527429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  5 - 2 * a (n - 1)

end

end A140360.P2514951082004527429

noncomputable section

/-- A140360: Inverse binomial transform of A140359.

Offset 0, canonical program `A140360.P2514951082004527429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140360 (n : ℕ) : ℤ :=
  A140360.P2514951082004527429.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140397.P5700944154215610043

`floor(3*ϕ*(n+1))-3*floor(ϕ*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140397.P5700944154215610043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * Real.goldenRatio * (n + 1 : ℝ)⌋ - 3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A140397.P5700944154215610043

noncomputable section

/-- A140397: a(n) = floor(3*phi*n) - 3*floor(phi*n) where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A140397.P5700944154215610043`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*ϕ*(n+1))-3*floor(ϕ*(n+1))` (program `A140397.P5700944154215610043`, by `A140397.P5700944154215610043.correct`). Lean does not check the parsing of the name. -/
def A140397 (n : ℕ) : ℤ :=
  A140397.P5700944154215610043.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*ϕ*(n+1))-3*floor(ϕ*(n+1))` (program `A140397.P5700944154215610043`, by `A140397.P5700944154215610043.correct`). Lean does not check the parsing of the name. -/
def A140397.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140413.P9561030353013920254

`3*a(n-1)+5*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A140413.P9561030353013920254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 9] fun n a =>
  3 * a (n - 1) + 5 * a (n - 2) + a (n - 3)

end

end A140413.P9561030353013920254

noncomputable section

/-- A140413: a(2n) = A000045(6n) + 1, a(2n+1) = A000045(6n+3) - 1.

Offset 0, canonical program `A140413.P9561030353013920254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140413 (n : ℕ) : ℤ :=
  (A140413.P9561030353013920254.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140420.P18259159897176928933

`(3^(n+1)-(-1)^n+2)/4-2^n`
-/

namespace A140420.P18259159897176928933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - (-1) ^ n + 2 : ℚ) / 4 - (2 ^ n : ℚ)

end

end A140420.P18259159897176928933

noncomputable section

/-- A140420: Binomial transform of 0, 1, 1, 7, 7, 31, 31, ..., zero followed by duplicated A083420.

Offset 0, canonical program `A140420.P18259159897176928933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140420 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140420.P18259159897176928933.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140427.P3403898975728933090

`a(n-8)+4` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=2, a(7)=3`
-/

namespace A140427.P3403898975728933090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 1, 2, 3] fun n a =>
  a (n - 8) + 4

end

end A140427.P3403898975728933090

noncomputable section

/-- A140427: Arises in relating doubly-even error-correcting codes, graphs and irreducible representations of N-extended supersymmetry.

Offset 0, canonical program `A140427.P3403898975728933090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140427 (n : ℕ) : ℤ :=
  (A140427.P3403898975728933090.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140430.P2580951712837435612

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=3, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A140430.P2580951712837435612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 4, 1] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A140430.P2580951712837435612

noncomputable section

/-- A140430: Period 6: repeat [3, 2, 4, 1, 2, 0].

Offset 0, canonical program `A140430.P2580951712837435612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140430 (n : ℕ) : ℤ :=
  A140430.P2580951712837435612.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140455.P14623030531198715941

`13*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A140455.P14623030531198715941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  13 * a (n - 1) + a (n - 2)

end

end A140455.P14623030531198715941

noncomputable section

/-- A140455: 13-Fibonacci sequence.

Offset 0, canonical program `A140455.P14623030531198715941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140455 (n : ℕ) : ℤ :=
  (A140455.P14623030531198715941.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140474.P9540924460937566243

`a(n-a(n-1))+a(floor(n/8))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A140474.P9540924460937566243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - a (n - 1)) + a ⌊(n : ℚ) / 8⌋.toNat

end

end A140474.P9540924460937566243

noncomputable section

/-- A140474: Fractional noise-like sequence: a(n)=a(n-a(n-1))+a(Floor[a0*n/b0]): a0

Offset 1, canonical program `A140474.P9540924460937566243`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140474 (n : ℕ) : ℤ :=
  (A140474.P9540924460937566243.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140500.P2683069188128357573

`a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=2, a(4)=-1, a(5)=-1`
-/

namespace A140500.P2683069188128357573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -2, 2, -1, -1] fun n a =>
  a (n - 3) - a (n - 6)

end

end A140500.P2683069188128357573

noncomputable section

/-- A140500: Period 18: repeat [1, 1, -2, 2, -1, -1, 1, -2, 1, -1, -1, 2, -2, 1, 1, -1, 2, -1].

Offset 0, canonical program `A140500.P2683069188128357573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140500 (n : ℕ) : ℤ :=
  A140500.P2683069188128357573.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140503.P9683339242837856805

`(2^col(n)-2^(row(n)+1)*(-1)^(row(n)+1+col(n)))/3`
-/

namespace A140503.P9683339242837856805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ SequenceMachineLib.triCol n : ℤ) - (2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) * (-1) ^ (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n) : ℚ) / 3

end

end A140503.P9683339242837856805

noncomputable section

/-- A140503: Triangle T(d,n) read by rows, the n-th term of the d-th differences of the Jacobsthal sequence A001045.

Offset 1, canonical program `A140503.P9683339242837856805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140503.P9683339242837856805.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140575.P4708489545252374334

`T(n-1,k-1)+T(n-2,k)-T(n-2,k-1)` with `a(0)=0, a(1)=2, a(2)=-1`
-/

namespace A140575.P4708489545252374334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1] fun n a =>
  SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n

end

end A140575.P4708489545252374334

noncomputable section

/-- A140575: Triangle read by rows: the coefficient of [x^k] of the polynomial 1-(x-1)^n in row n and column k, 0<=k

Offset 0, canonical program `A140575.P4708489545252374334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140575 (n : ℕ) : ℤ :=
  A140575.P4708489545252374334.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140590.P18125055836469651376

`2^(n+(-1)^n)+1`
-/

namespace A140590.P18125055836469651376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) + (-1) ^ n : ℤ) + 1

end

end A140590.P18125055836469651376

noncomputable section

/-- A140590: Exchange successive pairs of terms of A000051.

Offset 0, canonical program `A140590.P18125055836469651376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140590 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140590.P18125055836469651376.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140647.P16853427943404148279

`2*(n+4)^(n+1)-(3*(n+2)+1)*(n+3)^n`
-/

namespace A140647.P16853427943404148279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 4) ^ (n + 1) : ℤ) - ((3 * (n + 2) + 1) * (n + 3) ^ n : ℤ)

end

end A140647.P16853427943404148279

noncomputable section

/-- A140647: Number of car parking assignments of n cars in n spaces, if one car does not park.

Offset 2, canonical program `A140647.P16853427943404148279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140647 (n : ℕ) : ℤ :=
  A140647.P16853427943404148279.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140657.P9720185289962678958

`2^n+3*(-1)^n`
-/

namespace A140657.P9720185289962678958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + 3 * (-1) ^ n

end

end A140657.P9720185289962678958

noncomputable section

/-- A140657: Powers of 2 with 3 alternatingly added and subtracted.

Offset 0, canonical program `A140657.P9720185289962678958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140657 (n : ℕ) : ℤ :=
  A140657.P9720185289962678958.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140684.P15414170630249637490

`a(n-10)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=5, a(4)=2, a(5)=9, a(6)=8, a(7)=3, a(8)=4, a(9)=7`
-/

namespace A140684.P15414170630249637490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6, 5, 2, 9, 8, 3, 4, 7] fun n a =>
  a (n - 10)

end

end A140684.P15414170630249637490

noncomputable section

/-- A140684: A037481 mod 10.

Offset 0, canonical program `A140684.P15414170630249637490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140684 (n : ℕ) : ℤ :=
  (A140684.P15414170630249637490.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140710.P3631010311094467060

`n!*n+2*a(n-1)` with `a(0)=1`
-/

namespace A140710.P3631010311094467060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.factorial n * n + 2 * a (n - 1)

end

end A140710.P3631010311094467060

noncomputable section

/-- A140710: Number of maximal initial consecutive columns ending at the same level, summed over all deco polyominoes of height n.

Offset 1, canonical program `A140710.P3631010311094467060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140710 (n : ℕ) : ℤ :=
  (A140710.P3631010311094467060.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140710.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140712.P11615804350479913455

`n!*(C(n, 3)+6*C(n+1, 2))/6`
-/

namespace A140712.P11615804350479913455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * (Nat.choose n 3 + 6 * Nat.choose (n + 1) 2) : ℚ) / 6

end

end A140712.P11615804350479913455

noncomputable section

/-- A140712: Number of white corners in all permutations of {1,2,...,n} (for definition see the Eriksson-Linusson references).

Offset 1, canonical program `A140712.P11615804350479913455`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140712 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140712.P11615804350479913455.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140716.P7695803920838457403

`a(n-2)+24` with `a(0)=7, a(1)=25`
-/

namespace A140716.P7695803920838457403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 25] fun n a =>
  a (n - 2) + 24

end

end A140716.P7695803920838457403

noncomputable section

/-- A140716: Blocky integers, i.e., integers m > 1 such that there is a run of m consecutive integer squares the average of which is a square.

Offset 1, canonical program `A140716.P7695803920838457403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140716 (n : ℕ) : ℤ :=
  (A140716.P7695803920838457403.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140724.P16946109185844193469

`2*a(n-1)-2*a(n-2)+2*a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=7, a(4)=7`
-/

namespace A140724.P16946109185844193469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9, 7, 7] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A140724.P16946109185844193469

noncomputable section

/-- A140724: Period 10: 1, 5, 9, 7, 7, 9, 5, 1, 3, 3 repeated.

Offset 0, canonical program `A140724.P16946109185844193469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140724 (n : ℕ) : ℤ :=
  A140724.P16946109185844193469.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140725.P18046404347268479199

`a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A140725.P18046404347268479199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 1) + 6 * a (n - 2)

end

end A140725.P18046404347268479199

noncomputable section

/-- A140725: Inverse binomial transform of (0 followed by A037481).

Offset 0, canonical program `A140725.P18046404347268479199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140725 (n : ℕ) : ℤ :=
  (A140725.P18046404347268479199.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140730.P4706380302910771094

`5*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A140730.P4706380302910771094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  5 * a (n - 4)

end

end A140730.P4706380302910771094

noncomputable section

/-- A140730: a(4*n)=5^n, a(4*n+1)=2*5^n, a(4*n+2)=3*5^n, a(4*n+3)=4*5^n.

Offset 0, canonical program `A140730.P4706380302910771094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140730 (n : ℕ) : ℤ :=
  (A140730.P4706380302910771094.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140758.P12448805622776760400

`floor(n*π/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140758.P12448805622776760400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi / 2⌋

end

end A140758.P12448805622776760400

noncomputable section

/-- A140758: a(n) = floor(n*Pi/2).

Offset 0, canonical program `A140758.P12448805622776760400`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π/2)` (program `A140758.P12448805622776760400`, by `A140758.P12448805622776760400.correct`). Lean does not check the parsing of the name. -/
def A140758 (n : ℕ) : ℤ :=
  A140758.P12448805622776760400.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π/2)` (program `A140758.P12448805622776760400`, by `A140758.P12448805622776760400.correct`). Lean does not check the parsing of the name. -/
def A140758.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140765.P2071160814300224079

`C(col(n)+2, 3)+(row(n)-col(n))*C(col(n)+2, 2)`
-/

namespace A140765.P2071160814300224079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triCol n + 2) 3 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (Nat.choose (SequenceMachineLib.triCol n + 2) 2 : ℤ)

end

end A140765.P2071160814300224079

noncomputable section

/-- A140765: Array T(n,k) = binomial(k+2, k-1) + n*binomial(k+2, k) read by antidiagonals.

Offset 0, canonical program `A140765.P2071160814300224079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140765 (n : ℕ) : ℤ :=
  A140765.P2071160814300224079.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140805.P2255514845355950488

`C(row(n), col(n))^C(row(n), col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140805.P2255514845355950488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) ^ Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

end

end A140805.P2255514845355950488

noncomputable section

/-- A140805: Triangle T(n, k) read by rows T(n,k) = binomial(n, k)^binomial(n, k).

Offset 1, canonical program `A140805.P2255514845355950488`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))^C(row(n), col(n))` (program `A140805.P2255514845355950488`, by `A140805.P2255514845355950488.correct`). Lean does not check the parsing of the name. -/
def A140805 (n : ℕ) : ℤ :=
  (A140805.P2255514845355950488.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))^C(row(n), col(n))` (program `A140805.P2255514845355950488`, by `A140805.P2255514845355950488.correct`). Lean does not check the parsing of the name. -/
def A140805.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140827.P16115100538548681983

`4*a(n-3)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=7`
-/

namespace A140827.P16115100538548681983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 7] fun n a =>
  4 * a (n - 3) - a (n - 6)

end

end A140827.P16115100538548681983

noncomputable section

/-- A140827: Interleave denominators and numerators of convergents to sqrt(3).

Offset 0, canonical program `A140827.P16115100538548681983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140827 (n : ℕ) : ℤ :=
  A140827.P16115100538548681983.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140833.P3254759350296627235

`3*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=6`
-/

namespace A140833.P3254759350296627235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 6] fun n a =>
  3 * a (n - 2) - a (n - 4)

end

end A140833.P3254759350296627235

noncomputable section

/-- A140833: Sum of Fibonacci numbers between F(-n)....F(n), inclusive.

Offset 0, canonical program `A140833.P3254759350296627235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140833 (n : ℕ) : ℤ :=
  A140833.P3254759350296627235.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140870.P10440958436431510399

`560*n^4-120*n²+3`
-/

namespace A140870.P10440958436431510399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (560 * n ^ 4 : ℤ) - (120 * n ^ 2 : ℤ) + 3

end

end A140870.P10440958436431510399

noncomputable section

/-- A140870: 8*P_4(2n), 8 times the Legendre Polynomial of order 4 at 2n.

Offset 0, canonical program `A140870.P10440958436431510399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140870 (n : ℕ) : ℤ :=
  A140870.P10440958436431510399.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140898.P2087164457580660830

`((1+sqrt(137))^n-(1-sqrt(137))^n)/(2*sqrt(137))`
-/

namespace A140898.P2087164457580660830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (137 : ℝ)) ^ n - (1 - Real.sqrt (137 : ℝ)) ^ n) / (2 * Real.sqrt (137 : ℝ))

end

end A140898.P2087164457580660830

noncomputable section

/-- A140898: Expansion of -x^2/(136*x^2+2*x-1).

Offset 1, canonical program `A140898.P2087164457580660830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140898 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140898.P2087164457580660830.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140898.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140899.P7742577458487525964

`a(n-10)` with `a(0)=7, a(1)=9, a(2)=5, a(3)=1, a(4)=3, a(5)=3, a(6)=1, a(7)=5, a(8)=9, a(9)=7`
-/

namespace A140899.P7742577458487525964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 9, 5, 1, 3, 3, 1, 5, 9, 7] fun n a =>
  a (n - 10)

end

end A140899.P7742577458487525964

noncomputable section

/-- A140899: Period 10: repeat [7, 9, 5, 1, 3, 3, 1, 5, 9, 7].

Offset 0, canonical program `A140899.P7742577458487525964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140899 (n : ℕ) : ℤ :=
  (A140899.P7742577458487525964.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140925.P9071250885550168469

`(n/11+1)/(n+1)*C(n+10, 10)²`
-/

namespace A140925.P9071250885550168469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 11 + 1) / (n + 1 : ℚ) * (Nat.choose (n + 10) 10 ^ 2 : ℚ)

end

end A140925.P9071250885550168469

noncomputable section

/-- A140925: a(n) = binomial(m+n-1,n)^2 - binomial(m+n,n+1)*binomial(m+n-2,n-1) with m=12.

Offset 0, canonical program `A140925.P9071250885550168469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140925.P9071250885550168469.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140944.P3671100440810988530

`(2^col(n)-2^row(n)*(-1)^(row(n)+col(n)))/3`
-/

namespace A140944.P3671100440810988530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ SequenceMachineLib.triCol n : ℤ) - (2 ^ SequenceMachineLib.triRow n : ℤ) * (-1) ^ (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) : ℚ) / 3

end

end A140944.P3671100440810988530

noncomputable section

/-- A140944: Triangle T(n,k) read by rows, the k-th term of the n-th differences of the Jacobsthal sequence A001045.

Offset 0, canonical program `A140944.P3671100440810988530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140944 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A140944.P3671100440810988530.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140961.P4928644946575799125

`8^(n+1)-2*6^(n+1)+5^(n+1)`
-/

namespace A140961.P4928644946575799125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ (n + 1) : ℤ) - (2 * 6 ^ (n + 1) : ℤ) + (5 ^ (n + 1) : ℤ)

end

end A140961.P4928644946575799125

noncomputable section

/-- A140961: Number of 3 X n {0,1}-matrices such that: (a) first and second row have a common 1, (b) second and third row have a common 1.

Offset 1, canonical program `A140961.P4928644946575799125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140961 (n : ℕ) : ℤ :=
  A140961.P4928644946575799125.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140962.P9266240833921034965

`3*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=-1, a(2)=-1`
-/

namespace A140962.P9266240833921034965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, -1] fun n a =>
  3 * a (n - 2) - 2 * a (n - 3)

end

end A140962.P9266240833921034965

noncomputable section

/-- A140962: Negative values of the inverse binomial transform of A045883.

Offset 0, canonical program `A140962.P9266240833921034965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140962 (n : ℕ) : ℤ :=
  A140962.P9266240833921034965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140979.P10152534099308634040

`floor(2*ϕ*floor((n+1)*ϕ))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140979.P10152534099308634040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.goldenRatio⌋ : ℝ)⌋

end

end A140979.P10152534099308634040

noncomputable section

/-- A140979: a(n) = floor(2*phi*floor(n*phi)) where phi = A001622.

Offset 1, canonical program `A140979.P10152534099308634040`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*ϕ*floor((n+1)*ϕ))` (program `A140979.P10152534099308634040`, by `A140979.P10152534099308634040.correct`). Lean does not check the parsing of the name. -/
def A140979 (n : ℕ) : ℤ :=
  A140979.P10152534099308634040.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*ϕ*floor((n+1)*ϕ))` (program `A140979.P10152534099308634040`, by `A140979.P10152534099308634040.correct`). Lean does not check the parsing of the name. -/
def A140979.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140986.P3883868556653385049

`(n-1)*n*(n*(n*(n*(n*((n-11)*n+55)-159)+282)-290)+133)`
-/

namespace A140986.P3883868556653385049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n : ℤ) * ((n : ℤ) * ((n : ℤ) * ((n : ℤ) * ((n : ℤ) * (((n : ℤ) - 11) * (n : ℤ) + 55) - 159) + 282) - 290) + 133)

end

end A140986.P3883868556653385049

noncomputable section

/-- A140986: Number of n-colorings of the cubical graph.

Offset 0, canonical program `A140986.P3883868556653385049`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140986 (n : ℕ) : ℤ :=
  A140986.P3883868556653385049.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141000.P6914305428412330423

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=13, a(5)=16, a(6)=20, a(7)=21, a(8)=24`
-/

namespace A141000.P6914305428412330423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9, 13, 16, 20, 21, 24] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A141000.P6914305428412330423

noncomputable section

/-- A141000: Numbers k for which there is a solution to the Jumping Grasshopper game.

Offset 1, canonical program `A141000.P6914305428412330423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141000 (n : ℕ) : ℤ :=
  A141000.P6914305428412330423.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141012.P16176070027898385136

`13*a(n-1)-12` with `a(0)=0, a(1)=2`
-/

namespace A141012.P16176070027898385136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  13 * a (n - 1) - 12

end

end A141012.P16176070027898385136

noncomputable section

/-- A141012: a(0) = 0, a(n) = 13^(n-1) + 1.

Offset 0, canonical program `A141012.P16176070027898385136`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141012 (n : ℕ) : ℤ :=
  A141012.P16176070027898385136.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141023.P7306414592760344015

`2^n-(3-(-1)^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141023.P7306414592760344015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (3 - (-1) ^ n : ℚ) / 2

end

end A141023.P7306414592760344015

noncomputable section

/-- A141023: a(n) = 2^n - (3-(-1)^n)/2.

Offset 0, canonical program `A141023.P7306414592760344015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141023.P7306414592760344015.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141023.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141052.P11343554682888089748

`(n+3)*a(n-1)+(n+1)!/6` with `a(0)=1, a(1)=4`
-/

namespace A141052.P11343554682888089748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n + 3 : ℚ) * a (n - 1) + (Nat.factorial (n + 1) : ℚ) / 6

end

end A141052.P11343554682888089748

noncomputable section

/-- A141052: Number of runs or rising sequences of length 2 among all permutations of n.

Offset 2, canonical program `A141052.P11343554682888089748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141052 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141052.P11343554682888089748.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141212.P4910256435305541039

`a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=0, a(5)=0`
-/

namespace A141212.P4910256435305541039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 1, 0, 0] fun n a =>
  a (n - 6)

end

end A141212.P4910256435305541039

noncomputable section

/-- A141212: a(n) = 1, if n == {1,3,4} mod 6; otherwise 0.

Offset 1, canonical program `A141212.P4910256435305541039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141212 (n : ℕ) : ℤ :=
  (A141212.P4910256435305541039.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141212.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141222.P17493585866944039732

`(1+3*n+n²)*C(2*n, n)/(n+1)`
-/

namespace A141222.P17493585866944039732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * n + n ^ 2) * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A141222.P17493585866944039732

noncomputable section

/-- A141222: Expansion of -1/(2*x) + (2*x-1)^2/(2*x*(1-4x)^(3/2)).

Offset 0, canonical program `A141222.P17493585866944039732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141222 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141222.P17493585866944039732.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141222.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A141326.P3945186453744683596

`3*(n+1+3*(n+1)^4)`
-/

namespace A141326.P3945186453744683596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1 + 3 * (n + 1) ^ 4)

end

end A141326.P3945186453744683596

noncomputable section

/-- A141326: Subsequence of 'Fermat near misses' which is generated by a simple formula based on the cubic binomial expansion along with formulas for the corresponding terms in the expression, x^3 + y^3 = z^3 + 1.

Offset 1, canonical program `A141326.P3945186453744683596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141326 (n : ℕ) : ℤ :=
  (A141326.P3945186453744683596.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141355.P6880466689288274485

`7*a(n-2)+8*a(n-4)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=11`
-/

namespace A141355.P6880466689288274485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5, 11] fun n a =>
  7 * a (n - 2) + 8 * a (n - 4)

end

end A141355.P6880466689288274485

noncomputable section

/-- A141355: The Jacobsthal sequence, dropping each third term.

Offset 0, canonical program `A141355.P6880466689288274485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141355 (n : ℕ) : ℤ :=
  (A141355.P6880466689288274485.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141384.P1352131853803050141

`8*a(n-1)-16*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=8, a(1)=8, a(2)=32, a(3)=158, a(4)=828`
-/

namespace A141384.P1352131853803050141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 8, 32, 158, 828] fun n a =>
  8 * a (n - 1) - 16 * a (n - 2) + 10 * a (n - 3) - a (n - 4)

end

end A141384.P1352131853803050141

noncomputable section

/-- A141384: Trace of the n-th power of a certain 8X8 adjacency matrix.

Offset 0, canonical program `A141384.P1352131853803050141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141384 (n : ℕ) : ℤ :=
  A141384.P1352131853803050141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141388.P10142659765207412027

`((col(n)+1)*(row(n)+1-(col(n)+1)+1))^3-2^row(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141388.P10142659765207412027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1)) ^ 3 - (2 ^ SequenceMachineLib.triRow n : ℤ)

end

end A141388.P10142659765207412027

noncomputable section

/-- A141388: Triangle T(n, k) = ( k*(n-k+1) )^3 - 2^(n-1), read by rows.

Offset 1, canonical program `A141388.P10142659765207412027`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((col(n)+1)*(row(n)+1-(col(n)+1)+1))^3-2^row(n)` (program `A141388.P10142659765207412027`, by `A141388.P10142659765207412027.correct`). Lean does not check the parsing of the name. -/
def A141388 (n : ℕ) : ℤ :=
  A141388.P10142659765207412027.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((col(n)+1)*(row(n)+1-(col(n)+1)+1))^3-2^row(n)` (program `A141388.P10142659765207412027`, by `A141388.P10142659765207412027.correct`). Lean does not check the parsing of the name. -/
def A141388.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141425.P3429571870497032370

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=7, a(5)=8`
-/

namespace A141425.P3429571870497032370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5, 7, 8] fun n a =>
  a (n - 6)

end

end A141425.P3429571870497032370

noncomputable section

/-- A141425: Period 6: repeat [1, 2, 4, 5, 7, 8].

Offset 1, canonical program `A141425.P3429571870497032370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141425 (n : ℕ) : ℤ :=
  (A141425.P3429571870497032370.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141448.P425453794908494254

`2*a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=13`
-/

namespace A141448.P425453794908494254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 5, 13] fun n a =>
  2 * a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5)

end

end A141448.P425453794908494254

noncomputable section

/-- A141448: Generalized Pell numbers P(n,5,5).

Offset 0, canonical program `A141448.P425453794908494254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141448 (n : ℕ) : ℤ :=
  (A141448.P425453794908494254.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141475.P6482029126327111648

`(4*n+2)^(2*n)`
-/

namespace A141475.P6482029126327111648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 2) ^ (2 * n)

end

end A141475.P6482029126327111648

noncomputable section

/-- A141475: Number of Turing machines with n states following the standard formalism of the busy beaver problem where the head of a Turing machine either moves to the right or to the left, but none once halted.

Offset 0, canonical program `A141475.P6482029126327111648`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141475 (n : ℕ) : ℤ :=
  (A141475.P6482029126327111648.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141499.P9080216035618167659

`6*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=45`
-/

namespace A141499.P9080216035618167659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10, 45] fun n a =>
  6 * a (n - 1) - 8 * a (n - 2)

end

end A141499.P9080216035618167659

noncomputable section

/-- A141499: a(0)=0; a(1)=1; a(n) = triangular number at index 5*2^(n-2)-1.

Offset 0, canonical program `A141499.P9080216035618167659`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141499 (n : ℕ) : ℤ :=
  A141499.P9080216035618167659.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141518.P11748609387850186145

`1+2*n%5`
-/

namespace A141518.P11748609387850186145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * (n % 5)

end

end A141518.P11748609387850186145

noncomputable section

/-- A141518: Period 5: repeat [1, 3, 5, 7, 9].

Offset 0, canonical program `A141518.P11748609387850186145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141518 (n : ℕ) : ℤ :=
  (A141518.P11748609387850186145.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141533.P1968467145533938291

`a(n-1)-a(n-2)+3*a(n-3)+6*a(n-4)` with `a(0)=1, a(1)=-1, a(2)=-2, a(3)=23`
-/

namespace A141533.P1968467145533938291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2, 23] fun n a =>
  a (n - 1) - a (n - 2) + 3 * a (n - 3) + 6 * a (n - 4)

end

end A141533.P1968467145533938291

noncomputable section

/-- A141533: The first subdiagonal of the array of A141425 and its higher order differences.

Offset 1, canonical program `A141533.P1968467145533938291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141533 (n : ℕ) : ℤ :=
  A141533.P1968467145533938291.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141583.P10660450269153239686

`2*a(n-1)+3*a(n-2)+6*a(n-3)-a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=9, a(4)=25, a(5)=81`
-/

namespace A141583.P10660450269153239686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 9, 25, 81] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 6 * a (n - 3) - a (n - 4) - a (n - 6)

end

end A141583.P10660450269153239686

noncomputable section

/-- A141583: Squares of tribonacci numbers A000213.

Offset 0, canonical program `A141583.P10660450269153239686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141583 (n : ℕ) : ℤ :=
  A141583.P10660450269153239686.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141602.P5213315305827981190

`floor(2^(n+1)/((n+1)*log(2)))`
-/

namespace A141602.P5213315305827981190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℝ) / ((n + 1 : ℝ) * Real.log (2 : ℝ))⌋

end

end A141602.P5213315305827981190

noncomputable section

/-- A141602: Integer part of 2^n/log(2^n).

Offset 1, canonical program `A141602.P5213315305827981190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141602 (n : ℕ) : ℤ :=
  A141602.P5213315305827981190.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141602.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141609.P3633984510346701639

`(a(n-1)*a(n-2)+a(n-1)²)/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141609.P3633984510346701639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) * a (n - 2) + a (n - 1) ^ 2) / a (n - 3)

end

end A141609.P3633984510346701639

noncomputable section

/-- A141609: a(n) = (a(n-1)*a(n-2) + a(n-1)^2)/a(n-3), with a(1) = a(2) = a(3) = 1.

Offset 1, canonical program `A141609.P3633984510346701639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141609.P3633984510346701639.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141683.P10897369775575076754

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A141683.P10897369775575076754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A141683.P10897369775575076754

noncomputable section

/-- A141683: a(n) = Sum_{k=1..n} b(k)*a(n - k) for n >= 1, where b(n) = b(n-2) + b(n-3) for n >= 3 with b(0) = 0 and b(1) = b(2) = 1.

Offset 1, canonical program `A141683.P10897369775575076754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141683 (n : ℕ) : ℤ :=
  (A141683.P10897369775575076754.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141683.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141726.P3819973607470046487

`a(n-9)` with `a(0)=8, a(1)=7, a(2)=6, a(3)=5, a(4)=4, a(5)=3, a(6)=2, a(7)=1, a(8)=0`
-/

namespace A141726.P3819973607470046487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 7, 6, 5, 4, 3, 2, 1, 0] fun n a =>
  a (n - 9)

end

end A141726.P3819973607470046487

noncomputable section

/-- A141726: Sawtooth with period length 9: repeat 8, 7, 6, 5, 4, 3, 2, 1, 0.

Offset 1, canonical program `A141726.P3819973607470046487`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141726 (n : ℕ) : ℤ :=
  (A141726.P3819973607470046487.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141752.P6112027645984727575

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`
-/

namespace A141752.P6112027645984727575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 14] fun n a =>
  5 * a (n - 1) - 8 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A141752.P6112027645984727575

noncomputable section

/-- A141752: a(n) = Sum_{k=0..n} ( Fibonacci(2*k-1) + (n-k)*Fibonacci(2*k) ).

Offset 0, canonical program `A141752.P6112027645984727575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141752 (n : ℕ) : ℤ :=
  A141752.P6112027645984727575.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141775.P9075392520975591745

`3*a(n-1)-3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A141775.P9075392520975591745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3)

end

end A141775.P9075392520975591745

noncomputable section

/-- A141775: Binomial transform of (1, 2, 0, 1, 2, 0, 1, 2, 0, ...).

Offset 0, canonical program `A141775.P9075392520975591745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141775 (n : ℕ) : ℤ :=
  A141775.P9075392520975591745.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141783.P10051143223072166873

`1/2*(C(n+12, 12)+C((n+11+(n+13)%2)/2, 6))`
-/

namespace A141783.P10051143223072166873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (Nat.choose (n + 12) 12 + Nat.choose (SequenceMachineLib.roundAway (((n + 11 + (n + 13) % 2 : ℕ) : ℚ) / 2)).toNat 6 : ℚ)

end

end A141783.P10051143223072166873

noncomputable section

/-- A141783: Number of bracelets (turn over necklaces) with n beads: 1 blue, 12 green, and r = n - 13 red.

Offset 13, canonical program `A141783.P10051143223072166873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141783 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141783.P10051143223072166873.a (n - 13))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141827.P13558002811751239954

`(n^3*a(n-1)-1)/(n-1)` with `a(0)=1, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141827.P13558002811751239954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((n ^ 3 : ℚ) * a (n - 1) - 1) / ((n : ℤ) - 1 : ℚ)

end

end A141827.P13558002811751239954

noncomputable section

/-- A141827: a(n) = (n^3*a(n-1) - 1)/(n - 1) for n >= 2, with a(0) = 1, a(1) = 4.

Offset 0, canonical program `A141827.P13558002811751239954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141827 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141827.P13558002811751239954.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141828.P18226711279540050520

`(n^4*a(n-1)-1)/(n-1)` with `a(0)=1, a(1)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141828.P18226711279540050520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((n ^ 4 : ℚ) * a (n - 1) - 1) / ((n : ℤ) - 1 : ℚ)

end

end A141828.P18226711279540050520

noncomputable section

/-- A141828: a(n) = (n^4*a(n-1)-1)/(n-1) for n >= 2, with a(0) = 1, a(1) = 5.

Offset 0, canonical program `A141828.P18226711279540050520`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141828 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141828.P18226711279540050520.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141834.P9336316542663066839

`floor((n+3)!*e)-floor((n+2)!*e)-2*(n+3)+1`
-/

namespace A141834.P9336316542663066839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 3) : ℝ) * Real.exp 1⌋ - ⌊(Nat.factorial (n + 2) : ℝ) * Real.exp 1⌋ - (2 * (n + 3) : ℤ) + 1

end

end A141834.P9336316542663066839

noncomputable section

/-- A141834: Sum of the lengths of the cycles at a vertex of the complete graph K_n.

Offset 3, canonical program `A141834.P9336316542663066839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141834 (n : ℕ) : ℤ :=
  A141834.P9336316542663066839.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141906.P4865742585058893762

`(row(n)*col(n))!/col(n)!^row(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141906.P4865742585058893762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n * SequenceMachineLib.triCol n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) ^ SequenceMachineLib.triRow n : ℚ)

end

end A141906.P4865742585058893762

noncomputable section

/-- A141906: Triangle t(n,m) = (n*m)!/(m!^n) read by rows, 0<=m<=n.

Offset 0, canonical program `A141906.P4865742585058893762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A141906.P4865742585058893762.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141906.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142069.P17671227044963186128

`a(n-9)` with `a(0)=3, a(1)=7, a(2)=2, a(3)=6, a(4)=1, a(5)=5, a(6)=0, a(7)=4, a(8)=8`
-/

namespace A142069.P17671227044963186128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 2, 6, 1, 5, 0, 4, 8] fun n a =>
  a (n - 9)

end

end A142069.P17671227044963186128

noncomputable section

/-- A142069: Period 9: repeat [3, 7, 2, 6, 1, 5, 0, 4, 8].

Offset 0, canonical program `A142069.P17671227044963186128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142069 (n : ℕ) : ℤ :=
  (A142069.P17671227044963186128.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142069.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A142239.P13774150768703777367

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=40`
-/

namespace A142239.P13774150768703777367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9, 40] fun n a =>
  10 * a (n - 2) - a (n - 4)

end

end A142239.P13774150768703777367

noncomputable section

/-- A142239: Denominators of continued fraction convergents to sqrt(3/2).

Offset 0, canonical program `A142239.P13774150768703777367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142239 (n : ℕ) : ℤ :=
  A142239.P13774150768703777367.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142474.P8689998743258440537

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A142474.P8689998743258440537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A142474.P8689998743258440537

noncomputable section

/-- A142474: 1 followed by A141015.

Offset 1, canonical program `A142474.P8689998743258440537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142474 (n : ℕ) : ℤ :=
  (A142474.P8689998743258440537.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142586.P3948802429237657865

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`
-/

namespace A142586.P3948802429237657865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 14] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 2 * a (n - 3)

end

end A142586.P3948802429237657865

noncomputable section

/-- A142586: Binomial transform of A014217.

Offset 0, canonical program `A142586.P3948802429237657865`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142586 (n : ℕ) : ℤ :=
  A142586.P3948802429237657865.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142702.P16333438749252135201

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=5, a(1)=2, a(2)=5`
-/

namespace A142702.P16333438749252135201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2, 5] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 3)

end

end A142702.P16333438749252135201

noncomputable section

/-- A142702: Period 4: repeat [5, 2, 5, 8].

Offset 1, canonical program `A142702.P16333438749252135201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142702 (n : ℕ) : ℤ :=
  A142702.P16333438749252135201.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142702.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142704.P4914782800798988128

`2*n*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A142704.P4914782800798988128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * n * (a (n - 2) + a (n - 3))

end

end A142704.P4914782800798988128

noncomputable section

/-- A142704: A generalized factorial level recursion of a Padovan type: a(n) = b(n)*(a(n-2) + a(n-3)) with b(n) = b(n-1) + k and k=2.

Offset 0, canonical program `A142704.P4914782800798988128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142704 (n : ℕ) : ℤ :=
  (A142704.P4914782800798988128.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142705.P17851004561113384569

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=3, a(2)=2, a(3)=15, a(4)=6, a(5)=35`
-/

namespace A142705.P17851004561113384569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 2, 15, 6, 35] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A142705.P17851004561113384569

noncomputable section

/-- A142705: Numerator of 1/4 - 1/(2n)^2.

Offset 1, canonical program `A142705.P17851004561113384569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142705 (n : ℕ) : ℤ :=
  A142705.P17851004561113384569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142717.P413200054908063630

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=3, a(1)=5, a(2)=15, a(3)=21`
-/

namespace A142717.P413200054908063630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 15, 21] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A142717.P413200054908063630

noncomputable section

/-- A142717: First (leftmost) odd term in the n-th row of triangle A120070.

Offset 1, canonical program `A142717.P413200054908063630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142717 (n : ℕ) : ℤ :=
  A142717.P413200054908063630.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140205.P17537084821769450193

`floor(∑[and(6, n)+3]/4)`
-/

namespace A140205.P17537084821769450193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 6 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A140205.P17537084821769450193

noncomputable section

/-- A140205: Partial sums of A140085.

Offset 0, canonical program `A140205.P17537084821769450193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140205 (n : ℕ) : ℤ :=
  A140205.P17537084821769450193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140210.P18150944992194176443

`∏{d}[n+1, gcd(#, 1-and(3, #))]`
-/

namespace A140210.P18150944992194176443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (1 - (Nat.land 3 d : ℤ))

end

end A140210.P18150944992194176443

noncomputable section

/-- A140210: a(n) = Product_{h == 1 (mod 4) and h|n} h.

Offset 1, canonical program `A140210.P18150944992194176443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140210 (n : ℕ) : ℤ :=
  (A140210.P18150944992194176443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140226.P8310404171085745994

`4-n+a(n-1)+n²` with `a(0)=1, a(1)=4`
-/

namespace A140226.P8310404171085745994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - (n : ℤ) + (a (n - 1) + (n ^ 2 : ℤ))

end

end A140226.P8310404171085745994

noncomputable section

/-- A140226: Binomial transform of [1, 3, 3, 1, 1, -1, 1, -1, 1, ...].

Offset 0, canonical program `A140226.P8310404171085745994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140226 (n : ℕ) : ℤ :=
  A140226.P8310404171085745994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140231.P1273633069445897374

`ceil(exp(ϕ)^(n+1))`
-/

namespace A140231.P1273633069445897374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp Real.goldenRatio ^ (n + 1)⌉

end

end A140231.P1273633069445897374

noncomputable section

/-- A140231: a(n) = ceiling(e^(n*(1+sqrt(5))/2)).

Offset 1, canonical program `A140231.P1273633069445897374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A140231 (n : ℕ) : ℤ :=
  A140231.P1273633069445897374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A140231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140398.P5444328004615797917

`eq[1, ceil(3*n/ϕ)%3]`
-/

namespace A140398.P5444328004615797917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈3 * ((n : ℝ) / Real.goldenRatio)⌉ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140398.P5444328004615797917

noncomputable section

/-- A140398: Numbers n such that A140397(n) = 0.

Offset 1, canonical program `A140398.P5444328004615797917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140398 (n : ℕ) : ℤ :=
  (A140398.P5444328004615797917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140399.P12379699031545914695

`eq[1, floor(3*n/ϕ)%3]`
-/

namespace A140399.P12379699031545914695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊3 * ((n : ℝ) / Real.goldenRatio)⌋ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140399.P12379699031545914695

noncomputable section

/-- A140399: Numbers n such that A140397(n) = 1.

Offset 1, canonical program `A140399.P12379699031545914695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140399 (n : ℕ) : ℤ :=
  (A140399.P12379699031545914695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140400.P10796689973895693877

`eq[2, floor(3*n/ϕ)%3]`
-/

namespace A140400.P10796689973895693877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊3 * ((n : ℝ) / Real.goldenRatio)⌋ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A140400.P10796689973895693877

noncomputable section

/-- A140400: Numbers n such that A140397(n) = 2.

Offset 1, canonical program `A140400.P10796689973895693877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140400 (n : ℕ) : ℤ :=
  (A140400.P10796689973895693877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140407.P14447950768482046044

`(-1)^n+2*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A140407.P14447950768482046044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (-1) ^ n + 2 * a (n - 2)

end

end A140407.P14447950768482046044

noncomputable section

/-- A140407: A000225 interleaved with A000051.

Offset 0, canonical program `A140407.P14447950768482046044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A140407 (n : ℕ) : ℤ :=
  A140407.P14447950768482046044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A140407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140426.P15575720499582213969

`gcd(2, n)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A140426.P15575720499582213969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Nat.gcd 2 n * a (n - 3)

end

end A140426.P15575720499582213969

noncomputable section

/-- A140426: Number of multi-symmetric Steinhaus matrices of size n.

Offset 0, canonical program `A140426.P15575720499582213969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1994 terms. -/
def A140426 (n : ℕ) : ℤ :=
  (A140426.P15575720499582213969.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1994 terms. -/
def A140426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140444.P6783549711144697855

`or(1, p?[14*n+1])`
-/

namespace A140444.P6783549711144697855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A140444.P6783549711144697855

noncomputable section

/-- A140444: Primes congruent to 1 (mod 14).

Offset 1, canonical program `A140444.P6783549711144697855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140444 (n : ℕ) : ℤ :=
  (A140444.P6783549711144697855.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140461.P12283563153703361115

`gcd(floor(acot(n)), p?[2*n+7])`
-/

namespace A140461.P12283563153703361115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A140461.P12283563153703361115

noncomputable section

/-- A140461: Numbers in A008364 but not in A038511.

Offset 1, canonical program `A140461.P12283563153703361115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140461 (n : ℕ) : ℤ :=
  (A140461.P12283563153703361115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140475.P14596842040890734484

`p?[2*n+1]%∑[∑[n+2]]`
-/

namespace A140475.P14596842040890734484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A140475.P14596842040890734484

noncomputable section

/-- A140475: 1 along with primes greater than 3.

Offset 1, canonical program `A140475.P14596842040890734484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140475 (n : ℕ) : ℤ :=
  (A140475.P14596842040890734484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140505.P3081124945350733694

`4*(a(n-2)-(-1)^n)` with `a(0)=2, a(1)=-1`
-/

namespace A140505.P3081124945350733694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -1] fun n a =>
  4 * (a (n - 2) - (-1) ^ n)

end

end A140505.P3081124945350733694

noncomputable section

/-- A140505: Second differences of Jacobsthal sequence A001045, pairs with even and odd indices swapped.

Offset 0, canonical program `A140505.P3081124945350733694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A140505 (n : ℕ) : ℤ :=
  A140505.P3081124945350733694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A140505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140506.P15350674435310691045

`p?[15*n-a(n-1)]` with `a(0)=4`
-/

namespace A140506.P15350674435310691045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  (15 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140506.P15350674435310691045

noncomputable section

/-- A140506: Primes congruent to 11 or 19 mod 30.

Offset 1, canonical program `A140506.P15350674435310691045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140506 (n : ℕ) : ℤ :=
  A140506.P15350674435310691045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140533.P549597835408475886

`p?[a(n-2)+30]` with `a(0)=13, a(1)=17`
-/

namespace A140533.P549597835408475886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13, 17] fun n f1 =>
  f1 (n - 2) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140533.P549597835408475886

noncomputable section

/-- A140533: Primes congruent to 13 or 17 mod 30.

Offset 1, canonical program `A140533.P549597835408475886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140533 (n : ℕ) : ℤ :=
  (A140533.P549597835408475886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140534.P4744227724431225386

`p?[abs(a(n-1)-5*21*n)]` with `a(0)=11`
-/

namespace A140534.P4744227724431225386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  |f1 (n - 1) - (5 * (21 * n) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140534.P4744227724431225386

noncomputable section

/-- A140534: Primes congruent to 11 or 199 mod 210.

Offset 1, canonical program `A140534.P4744227724431225386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A140534 (n : ℕ) : ℤ :=
  A140534.P4744227724431225386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A140534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140537.P2880035962055058606

`p?[35*n-51-n%3]`
-/

namespace A140537.P2880035962055058606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 51 - ((n % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140537.P2880035962055058606

noncomputable section

/-- A140537: Primes congruent to 17 or 193 mod 210.

Offset 1, canonical program `A140537.P2880035962055058606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A140537 (n : ℕ) : ℤ :=
  A140537.P2880035962055058606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A140537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140544.P10410583773126604403

`p?[17*n+2]`
-/

namespace A140544.P10410583773126604403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A140544.P10410583773126604403

noncomputable section

/-- A140544: Primes of form 17*k + 2.

Offset 1, canonical program `A140544.P10410583773126604403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4903 terms. -/
def A140544 (n : ℕ) : ℤ :=
  (A140544.P10410583773126604403.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4903 terms. -/
def A140544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140576.P956512224196501713

`∑[floor(9^(ceil(n/8)-1))]`
-/

namespace A140576.P956512224196501713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(9 : ℚ) ^ (⌈(n : ℚ) / 8⌉ - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140576.P956512224196501713

noncomputable section

/-- A140576: Numbers of the form i*9^j-1 (i=1..8, j >= 0).

Offset 1, canonical program `A140576.P956512224196501713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. -/
def A140576 (n : ℕ) : ℤ :=
  A140576.P956512224196501713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 837 terms. -/
def A140576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140634.P11410370935979141388

`p?[21*n-(5-2*n%5)]`
-/

namespace A140634.P11410370935979141388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n : ℤ) - (5 - ((2 * (n % 5) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140634.P11410370935979141388

noncomputable section

/-- A140634: Primes congruent to 41 or 169 mod 210.

Offset 1, canonical program `A140634.P11410370935979141388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A140634 (n : ℕ) : ℤ :=
  A140634.P11410370935979141388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A140634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140651.P16358109719597669168

`(n+1)*gcd(n+1, ∏{p}[n+1, ceil(n/#)])`
-/

namespace A140651.P16358109719597669168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (n + 1 : ℤ) (∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉)

end

end A140651.P16358109719597669168

noncomputable section

/-- A140651: A140579^(-1) * A000290, the squares starting (1, 4, 9, ...).

Offset 1, canonical program `A140651.P16358109719597669168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140651 (n : ℕ) : ℤ :=
  (A140651.P16358109719597669168.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140652.P9715767635325101215

`∑[2-∏{e}[n+1, #+1]+n]`
-/

namespace A140652.P9715767635325101215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140652.P9715767635325101215

noncomputable section

/-- A140652: Partial sums of A062968.

Offset 1, canonical program `A140652.P9715767635325101215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140652 (n : ℕ) : ℤ :=
  A140652.P9715767635325101215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140685.P7650881621240634550

`-or(-2, ∑{d}[2*n+1, #])`
-/

namespace A140685.P7650881621240634550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-2) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A140685.P7650881621240634550

noncomputable section

/-- A140685: Triangle T(n,k) read by rows: T(n,k) = 1 if n is odd and k=(n-1)/2; T(n,k) = 2 otherwise.

Offset 1, canonical program `A140685.P7650881621240634550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140685 (n : ℕ) : ℤ :=
  A140685.P7650881621240634550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140721.P5878544886541475005

`4*a(n-2)` with `a(0)=1, a(1)=-7`
-/

namespace A140721.P5878544886541475005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -7] fun n a =>
  4 * a (n - 2)

end

end A140721.P5878544886541475005

noncomputable section

/-- A140721: Alternated reading of A000302 and negated A002042.

Offset 0, canonical program `A140721.P5878544886541475005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A140721 (n : ℕ) : ℤ :=
  A140721.P5878544886541475005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A140721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140799.P9378238813652599034

`p?[7*15*n-a(n-1)]` with `a(0)=4`
-/

namespace A140799.P9378238813652599034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  (7 * (15 * n) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140799.P9378238813652599034

noncomputable section

/-- A140799: Primes congruent to 101 or 109 mod 210.

Offset 1, canonical program `A140799.P9378238813652599034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3265 terms. -/
def A140799 (n : ℕ) : ℤ :=
  A140799.P9378238813652599034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3265 terms. -/
def A140799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140830.P13152895047364481512

`p?[abs(a(n-1)-5*21*n)]` with `a(0)=8`
-/

namespace A140830.P13152895047364481512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  |f1 (n - 1) - (5 * (21 * n) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140830.P13152895047364481512

noncomputable section

/-- A140830: Primes congruent to 97 or 113 mod 210.

Offset 1, canonical program `A140830.P13152895047364481512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A140830 (n : ℕ) : ℤ :=
  A140830.P13152895047364481512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A140830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140976.P4894037311562281442

`9-or(1, n%10)`
-/

namespace A140976.P4894037311562281442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (Nat.lor 1 (n % 10) : ℤ)

end

end A140976.P4894037311562281442

noncomputable section

/-- A140976: Period length 10: repeat 8, 8, 6, 6, 4, 4, 2, 2, 0, 0.

Offset 0, canonical program `A140976.P4894037311562281442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140976 (n : ℕ) : ℤ :=
  A140976.P4894037311562281442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141044.P3127190038253494507

`ceil(∏[acot(n)])`
-/

namespace A141044.P3127190038253494507
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A141044.P3127190038253494507

noncomputable section

/-- A141044: Two 2's followed by all 1's.

Offset 0, canonical program `A141044.P3127190038253494507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141044 (n : ℕ) : ℤ :=
  A141044.P3127190038253494507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141123.P3500198032887264477

`p?[or(2, 3*n)]`
-/

namespace A141123.P3500198032887264477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141123.P3500198032887264477

noncomputable section

/-- A141123: Primes of the form -x^2+2*x*y+2*y^2 (as well as of the form 3*x^2+6*x*y+2*y^2).

Offset 1, canonical program `A141123.P3500198032887264477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6514 terms. -/
def A141123 (n : ℕ) : ℤ :=
  (A141123.P3500198032887264477.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6514 terms. -/
def A141123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141125.P3776746434152624400

`-(4*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A141125.P3776746434152624400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  -(4 * a (n - 2))

end

end A141125.P3776746434152624400

noncomputable section

/-- A141125: Hankel transform of a transform of Fibonacci numbers.

Offset 0, canonical program `A141125.P3776746434152624400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A141125 (n : ℕ) : ℤ :=
  A141125.P3776746434152624400.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A141125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141170.P12417277428237352377

`p?[or(4, 6*n)-3]`
-/

namespace A141170.P12417277428237352377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 (6 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141170.P12417277428237352377

noncomputable section

/-- A141170: Primes of the form x^2+4*x*y-2*y^2 (as well as of the form 3*x^2+6*x*y+y^2).

Offset 1, canonical program `A141170.P12417277428237352377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141170 (n : ℕ) : ℤ :=
  A141170.P12417277428237352377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141171.P12338924987220492789

`p?[4*n-gcd(6, n+1)]`
-/

namespace A141171.P12338924987220492789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - (Nat.gcd 6 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141171.P12338924987220492789

noncomputable section

/-- A141171: Primes of the form -x^2+4*x*y+2*y^2 (as well as of the form 5*x^2+8*x*y+2*y^2).

Offset 1, canonical program `A141171.P12338924987220492789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. -/
def A141171 (n : ℕ) : ℤ :=
  A141171.P12338924987220492789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. -/
def A141171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141180.P6880636864397310422

`p?[or(5, 5*n)+10]`
-/

namespace A141180.P6880636864397310422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (5 * n) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141180.P6880636864397310422

noncomputable section

/-- A141180: Primes of the form x^2+6*x*y-y^2 (as well as of the form 6*x^2+8*x*y+y^2).

Offset 1, canonical program `A141180.P6880636864397310422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141180 (n : ℕ) : ℤ :=
  (A141180.P6880636864397310422.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141187.P9156569322079504470

`p?[a(n-1)+12]` with `a(0)=3, a(1)=11`
-/

namespace A141187.P9156569322079504470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141187.P9156569322079504470

noncomputable section

/-- A141187: Primes of the form -x^2+6*x*y+3*y^2 (as well as of the form 8*x^2+12*x*y+3*y^2).

Offset 1, canonical program `A141187.P9156569322079504470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141187 (n : ℕ) : ℤ :=
  (A141187.P9156569322079504470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141194.P3921873644654613885

`p?[4*4*n+7]`
-/

namespace A141194.P3921873644654613885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * n) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141194.P3921873644654613885

noncomputable section

/-- A141194: Primes of the form 16k+7.

Offset 1, canonical program `A141194.P3921873644654613885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9832 terms. -/
def A141194 (n : ℕ) : ℤ :=
  (A141194.P3921873644654613885.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9832 terms. -/
def A141194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141195.P9133799144925653088

`p?[16*n-5]`
-/

namespace A141195.P9133799144925653088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141195.P9133799144925653088

noncomputable section

/-- A141195: Primes of the form 16k+11.

Offset 1, canonical program `A141195.P9133799144925653088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9815 terms. -/
def A141195 (n : ℕ) : ℤ :=
  A141195.P9133799144925653088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9815 terms. -/
def A141195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141196.P13853549410394302553

`p?[16*n-3]`
-/

namespace A141196.P13853549410394302553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141196.P13853549410394302553

noncomputable section

/-- A141196: Primes of the form 16k+13.

Offset 1, canonical program `A141196.P13853549410394302553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9807 terms. -/
def A141196 (n : ℕ) : ℤ :=
  A141196.P13853549410394302553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9807 terms. -/
def A141196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141259.P16509890859027837500

`∑[and(2, (n+1)*∑[n])!]`
-/

namespace A141259.P16509890859027837500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141259.P16509890859027837500

noncomputable section

/-- A141259: a(n) == {0,1,3,4,5,7,9,11} mod 12; n>0.

Offset 1, canonical program `A141259.P16509890859027837500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141259 (n : ℕ) : ℤ :=
  (A141259.P16509890859027837500.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141260.P17744480322454022203

`ceil(sin(gcd(12, 1-n)))`
-/

namespace A141260.P17744480322454022203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (Int.gcd 12 (1 - (n : ℤ)) : ℝ)⌉

end

end A141260.P17744480322454022203

noncomputable section

/-- A141260: a(n) = 1 if n == {0,1,3,4,5,7,9,11} mod 12, otherwise a(n) = 0.

Offset 1, canonical program `A141260.P17744480322454022203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141260 (n : ℕ) : ℤ :=
  A141260.P17744480322454022203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141302.P871097991379866223

`p?[10*n-((n+1)%6)²]`
-/

namespace A141302.P871097991379866223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - ((((n + 1) % 6) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141302.P871097991379866223

noncomputable section

/-- A141302: Primes of the form -x^2+6*x*y+6*y^2 (as well as of the form 11*x^2+18*x*y+6*y^2).

Offset 1, canonical program `A141302.P871097991379866223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9833 terms. -/
def A141302 (n : ℕ) : ℤ :=
  A141302.P871097991379866223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9833 terms. -/
def A141302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141373.P17021326443408811388

`p?[or(4, 12*n)-9]`
-/

namespace A141373.P17021326443408811388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 (12 * n) : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141373.P17021326443408811388

noncomputable section

/-- A141373: Primes of the form 3*x^2+16*y^2. Also primes of the form 4*x^2+4*x*y-5*y^2 (as well as primes the form 4*x^2+12*x*y+3*y^2).

Offset 1, canonical program `A141373.P17021326443408811388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9844 terms. -/
def A141373 (n : ℕ) : ℤ :=
  A141373.P17021326443408811388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9844 terms. -/
def A141373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141413.P8716011503116370157

`floor((-3)^(n-2))`
-/

namespace A141413.P8716011503116370157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(-3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A141413.P8716011503116370157

noncomputable section

/-- A141413: Inverse binomial transform of A140962.

Offset 0, canonical program `A141413.P8716011503116370157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A141413 (n : ℕ) : ℤ :=
  A141413.P8716011503116370157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A141413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141416.P454711086932109045

`a(n-2)+2*a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=2, a(3)=0`
-/

namespace A141416.P454711086932109045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, 2, 0] fun n a =>
  a (n - 2) + 2 * a (n - 4)

end

end A141416.P454711086932109045

noncomputable section

/-- A141416: First differences of A133730.

Offset 0, canonical program `A141416.P454711086932109045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A141416 (n : ℕ) : ℤ :=
  A141416.P454711086932109045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 668 terms. -/
def A141416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141449.P14462973527117574043

`a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=8, a(4)=2, a(5)=5`
-/

namespace A141449.P14462973527117574043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 8, 2, 5] fun n a =>
  a (n - 3)

end

end A141449.P14462973527117574043

noncomputable section

/-- A141449: A005439 mod 9.

Offset 0, canonical program `A141449.P14462973527117574043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A141449 (n : ℕ) : ℤ :=
  (A141449.P14462973527117574043.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A141449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141531.P13433101705866540167

`-(2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A141531.P13433101705866540167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  -(2 * a (n - 1))

end

end A141531.P13433101705866540167

noncomputable section

/-- A141531: Inverse binomial transform of A001651.

Offset 0, canonical program `A141531.P13433101705866540167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A141531 (n : ℕ) : ℤ :=
  A141531.P13433101705866540167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A141531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141534.P9252539419535406305

`∑[∑[∑[a(n-1)+a(n-a(n-2))]]]` with `a(0)=1, a(1)=1`
-/

namespace A141534.P9252539419535406305
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 1) + f3 (n - f3 (n - 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141534.P9252539419535406305

noncomputable section

/-- A141534: Derived from the centered polygonal numbers: start with the first triangular number, then the sum of the first square number and the second triangular number, then the sum of first pentagonal number, the second square number and the third triangular number, and so on and so on...

Offset 1, canonical program `A141534.P9252539419535406305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141534 (n : ℕ) : ℤ :=
  (A141534.P9252539419535406305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141571.P11709835996077577978

`char[1]+char[∑[n%3]]`
-/

namespace A141571.P11709835996077577978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0)

end

end A141571.P11709835996077577978

noncomputable section

/-- A141571: Decimal expansion of 11999/99900.

Offset 0, canonical program `A141571.P11709835996077577978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141571 (n : ℕ) : ℤ :=
  (A141571.P11709835996077577978.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141660.P1723896544787970984

`2*(row(n)-col(n)+1)*T(n-1,k-1)+col(n)*T(n-1,k)` with `a(0)=1`
-/

namespace A141660.P1723896544787970984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUp a n

end

end A141660.P1723896544787970984

noncomputable section

/-- A141660: Triangle read by rows: T(n,k) = 2^k*A123125(n,k).

Offset 1, canonical program `A141660.P1723896544787970984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. -/
def A141660 (n : ℕ) : ℤ :=
  A141660.P1723896544787970984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. -/
def A141660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141685.P16911559907886369781

`2*a(n-2)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A141685.P16911559907886369781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n a =>
  2 * a (n - 2) + (a (n - 1) + a (n - 3))

end

end A141685.P16911559907886369781

noncomputable section

/-- A141685: a(1) = 1, a(n) = Sum_{k=1..n} (k mod 3) * a(n-k) for n >= 2.

Offset 1, canonical program `A141685.P16911559907886369781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A141685 (n : ℕ) : ℤ :=
  (A141685.P16911559907886369781.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. -/
def A141685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141785.P1888123605156918245

`p?[3*ceil(5*n/3)-1]`
-/

namespace A141785.P1888123605156918245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈5 * ((n : ℚ) / 3)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141785.P1888123605156918245

noncomputable section

/-- A141785: Primes of the form -x^2 + 5*x*y + 5*y^2 (as well as of the form 9*x^2 + 15*x*y + 5*y^2).

Offset 1, canonical program `A141785.P1888123605156918245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141785 (n : ℕ) : ℤ :=
  A141785.P1888123605156918245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141850.P2965218855640811810

`p?[11*n+3]`
-/

namespace A141850.P2965218855640811810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141850.P2965218855640811810

noncomputable section

/-- A141850: Primes congruent to 3 mod 11.

Offset 1, canonical program `A141850.P2965218855640811810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7814 terms. -/
def A141850 (n : ℕ) : ℤ :=
  (A141850.P2965218855640811810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7814 terms. -/
def A141850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141858.P15257199900606846374

`p?[13*n+2]`
-/

namespace A141858.P15257199900606846374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141858.P15257199900606846374

noncomputable section

/-- A141858: Primes congruent to 2 mod 13.

Offset 1, canonical program `A141858.P15257199900606846374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6531 terms. -/
def A141858 (n : ℕ) : ℤ :=
  (A141858.P15257199900606846374.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6531 terms. -/
def A141858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141860.P14984370412444025917

`p?[3*5*n+2]`
-/

namespace A141860.P14984370412444025917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (5 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141860.P14984370412444025917

noncomputable section

/-- A141860: Primes congruent to 2 mod 15.

Offset 1, canonical program `A141860.P14984370412444025917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A141860 (n : ℕ) : ℤ :=
  (A141860.P14984370412444025917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9810 terms. -/
def A141860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141869.P7786215418859443788

`p?[19*n+2]`
-/

namespace A141869.P7786215418859443788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141869.P7786215418859443788

noncomputable section

/-- A141869: Primes congruent to 2 mod 19.

Offset 1, canonical program `A141869.P7786215418859443788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. -/
def A141869 (n : ℕ) : ℤ :=
  (A141869.P7786215418859443788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. -/
def A141869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141881.P3987547684413938372

`p?[20*n+1]`
-/

namespace A141881.P3987547684413938372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141881.P3987547684413938372

noncomputable section

/-- A141881: Primes congruent to 1 mod 20.

Offset 1, canonical program `A141881.P3987547684413938372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9758 terms. -/
def A141881 (n : ℕ) : ℤ :=
  (A141881.P3987547684413938372.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9758 terms. -/
def A141881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141882.P11394083926865790889

`p?[4*5*n+7]`
-/

namespace A141882.P11394083926865790889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (5 * n) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141882.P11394083926865790889

noncomputable section

/-- A141882: Primes congruent to 7 mod 20.

Offset 1, canonical program `A141882.P11394083926865790889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9791 terms. -/
def A141882 (n : ℕ) : ℤ :=
  (A141882.P11394083926865790889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9791 terms. -/
def A141882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141883.P15311569765601762904

`p?[4*5*n+9]`
-/

namespace A141883.P15311569765601762904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (5 * n) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141883.P15311569765601762904

noncomputable section

/-- A141883: Primes congruent to 9 mod 20.

Offset 1, canonical program `A141883.P15311569765601762904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9756 terms. -/
def A141883 (n : ℕ) : ℤ :=
  (A141883.P15311569765601762904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9756 terms. -/
def A141883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141884.P14265556492563437523

`p?[4*5*n-9]`
-/

namespace A141884.P14265556492563437523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (5 * n) : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141884.P14265556492563437523

noncomputable section

/-- A141884: Primes congruent to 11 mod 20.

Offset 1, canonical program `A141884.P14265556492563437523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A141884 (n : ℕ) : ℤ :=
  A141884.P14265556492563437523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A141884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141885.P15696442900697318190

`p?[4*5*n-7]`
-/

namespace A141885.P15696442900697318190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (5 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141885.P15696442900697318190

noncomputable section

/-- A141885: Primes congruent to 13 mod 20.

Offset 1, canonical program `A141885.P15696442900697318190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9830 terms. -/
def A141885 (n : ℕ) : ℤ :=
  A141885.P15696442900697318190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9830 terms. -/
def A141885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141886.P7425287249095554016

`p?[4*5*n-3]`
-/

namespace A141886.P7425287249095554016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (5 * n) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141886.P7425287249095554016

noncomputable section

/-- A141886: Primes congruent to 17 mod 20.

Offset 1, canonical program `A141886.P7425287249095554016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9830 terms. -/
def A141886 (n : ℕ) : ℤ :=
  A141886.P7425287249095554016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9830 terms. -/
def A141886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141887.P17708859818427022684

`p?[20*n-1]`
-/

namespace A141887.P17708859818427022684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141887.P17708859818427022684

noncomputable section

/-- A141887: Primes congruent to 19 mod 20.

Offset 1, canonical program `A141887.P17708859818427022684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9837 terms. -/
def A141887 (n : ℕ) : ℤ :=
  A141887.P17708859818427022684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9837 terms. -/
def A141887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141888.P3817205861600530179

`p?[3*7*n+2]`
-/

namespace A141888.P3817205861600530179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (7 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141888.P3817205861600530179

noncomputable section

/-- A141888: Primes congruent to 2 mod 21.

Offset 1, canonical program `A141888.P3817205861600530179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6535 terms. -/
def A141888 (n : ℕ) : ℤ :=
  (A141888.P3817205861600530179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6535 terms. -/
def A141888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141889.P7602993043577355867

`p?[21*n+4]`
-/

namespace A141889.P7602993043577355867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141889.P7602993043577355867

noncomputable section

/-- A141889: Primes congruent to 4 mod 21.

Offset 1, canonical program `A141889.P7602993043577355867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6513 terms. -/
def A141889 (n : ℕ) : ℤ :=
  (A141889.P7602993043577355867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6513 terms. -/
def A141889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141890.P13150421018336180161

`p?[21*n+5]`
-/

namespace A141890.P13150421018336180161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141890.P13150421018336180161

noncomputable section

/-- A141890: Primes congruent to 5 mod 21.

Offset 1, canonical program `A141890.P13150421018336180161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A141890 (n : ℕ) : ℤ :=
  (A141890.P13150421018336180161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A141890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141891.P12868481659488375521

`p?[21*n+8]`
-/

namespace A141891.P12868481659488375521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141891.P12868481659488375521

noncomputable section

/-- A141891: Primes congruent to 8 mod 21.

Offset 1, canonical program `A141891.P12868481659488375521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6533 terms. -/
def A141891 (n : ℕ) : ℤ :=
  (A141891.P12868481659488375521.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6533 terms. -/
def A141891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141892.P17103823867975322355

`p?[a(n-1)+21]` with `a(0)=10`
-/

namespace A141892.P17103823867975322355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141892.P17103823867975322355

noncomputable section

/-- A141892: Primes congruent to 10 mod 21.

Offset 1, canonical program `A141892.P17103823867975322355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A141892 (n : ℕ) : ℤ :=
  (A141892.P17103823867975322355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. -/
def A141892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141893.P16231538642829132842

`p?[a(n-1)+21]` with `a(0)=11`
-/

namespace A141893.P16231538642829132842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141893.P16231538642829132842

noncomputable section

/-- A141893: Primes congruent to 11 mod 21.

Offset 1, canonical program `A141893.P16231538642829132842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6556 terms. -/
def A141893 (n : ℕ) : ℤ :=
  (A141893.P16231538642829132842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6556 terms. -/
def A141893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141894.P2299718702940400355

`p?[21*n-8]`
-/

namespace A141894.P2299718702940400355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141894.P2299718702940400355

noncomputable section

/-- A141894: Primes congruent to 13 mod 21.

Offset 1, canonical program `A141894.P2299718702940400355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6552 terms. -/
def A141894 (n : ℕ) : ℤ :=
  A141894.P2299718702940400355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6552 terms. -/
def A141894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141895.P12734587034082310195

`p?[21*n-5]`
-/

namespace A141895.P12734587034082310195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141895.P12734587034082310195

noncomputable section

/-- A141895: Primes congruent to 16 mod 21.

Offset 1, canonical program `A141895.P12734587034082310195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6530 terms. -/
def A141895 (n : ℕ) : ℤ :=
  A141895.P12734587034082310195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6530 terms. -/
def A141895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141896.P7026197359786006426

`p?[21*n-4]`
-/

namespace A141896.P7026197359786006426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141896.P7026197359786006426

noncomputable section

/-- A141896: Primes congruent to 17 mod 21.

Offset 1, canonical program `A141896.P7026197359786006426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6546 terms. -/
def A141896 (n : ℕ) : ℤ :=
  A141896.P7026197359786006426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6546 terms. -/
def A141896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141897.P351366787263551140

`p?[21*n-2]`
-/

namespace A141897.P351366787263551140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141897.P351366787263551140

noncomputable section

/-- A141897: Primes congruent to 19 mod 21.

Offset 1, canonical program `A141897.P351366787263551140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6547 terms. -/
def A141897 (n : ℕ) : ℤ :=
  A141897.P351366787263551140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6547 terms. -/
def A141897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141898.P13901838028498291444

`p?[21*n-1]`
-/

namespace A141898.P13901838028498291444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (21 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141898.P13901838028498291444

noncomputable section

/-- A141898: Primes congruent to 20 mod 21.

Offset 1, canonical program `A141898.P13901838028498291444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6538 terms. -/
def A141898 (n : ℕ) : ℤ :=
  A141898.P13901838028498291444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6538 terms. -/
def A141898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141909.P13650298499783670270

`p?[23*n+4]`
-/

namespace A141909.P13650298499783670270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141909.P13650298499783670270

noncomputable section

/-- A141909: Primes congruent to 4 mod 23.

Offset 1, canonical program `A141909.P13650298499783670270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3571 terms. -/
def A141909 (n : ℕ) : ℤ :=
  (A141909.P13650298499783670270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3571 terms. -/
def A141909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141910.P16755912875914425086

`p?[23*n+6]`
-/

namespace A141910.P16755912875914425086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141910.P16755912875914425086

noncomputable section

/-- A141910: Primes congruent to 6 mod 23.

Offset 1, canonical program `A141910.P16755912875914425086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A141910 (n : ℕ) : ℤ :=
  (A141910.P16755912875914425086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A141910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141911.P17598538728419590406

`p?[23*n+7]`
-/

namespace A141911.P17598538728419590406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141911.P17598538728419590406

noncomputable section

/-- A141911: Primes congruent to 7 mod 23.

Offset 1, canonical program `A141911.P17598538728419590406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3553 terms. -/
def A141911 (n : ℕ) : ℤ :=
  (A141911.P17598538728419590406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3553 terms. -/
def A141911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141912.P8202784763525436486

`p?[23*n+8]`
-/

namespace A141912.P8202784763525436486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141912.P8202784763525436486

noncomputable section

/-- A141912: Primes congruent to 8 mod 23.

Offset 1, canonical program `A141912.P8202784763525436486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A141912 (n : ℕ) : ℤ :=
  (A141912.P8202784763525436486.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A141912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141913.P700375491561002954

`p?[23*n+9]`
-/

namespace A141913.P700375491561002954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141913.P700375491561002954

noncomputable section

/-- A141913: Primes congruent to 9 mod 23.

Offset 1, canonical program `A141913.P700375491561002954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3548 terms. -/
def A141913 (n : ℕ) : ℤ :=
  (A141913.P700375491561002954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3548 terms. -/
def A141913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141914.P17407399612554836615

`p?[23*n+10]`
-/

namespace A141914.P17407399612554836615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141914.P17407399612554836615

noncomputable section

/-- A141914: Primes congruent to 10 mod 23.

Offset 1, canonical program `A141914.P17407399612554836615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. -/
def A141914 (n : ℕ) : ℤ :=
  (A141914.P17407399612554836615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3566 terms. -/
def A141914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141915.P9236449187066739002

`p?[a(n-1)+23]` with `a(0)=11`
-/

namespace A141915.P9236449187066739002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141915.P9236449187066739002

noncomputable section

/-- A141915: Primes congruent to 11 mod 23.

Offset 1, canonical program `A141915.P9236449187066739002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3570 terms. -/
def A141915 (n : ℕ) : ℤ :=
  (A141915.P9236449187066739002.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3570 terms. -/
def A141915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141916.P14493093726270992137

`p?[23*n-11]`
-/

namespace A141916.P14493093726270992137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141916.P14493093726270992137

noncomputable section

/-- A141916: Primes congruent to 12 mod 23.

Offset 1, canonical program `A141916.P14493093726270992137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3514 terms. -/
def A141916 (n : ℕ) : ℤ :=
  A141916.P14493093726270992137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3514 terms. -/
def A141916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141917.P16896383629659116904

`p?[23*n-10]`
-/

namespace A141917.P16896383629659116904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141917.P16896383629659116904

noncomputable section

/-- A141917: Primes congruent to 13 mod 23.

Offset 1, canonical program `A141917.P16896383629659116904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3589 terms. -/
def A141917 (n : ℕ) : ℤ :=
  A141917.P16896383629659116904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3589 terms. -/
def A141917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141918.P6197340914735044769

`p?[23*n-9]`
-/

namespace A141918.P6197340914735044769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141918.P6197340914735044769

noncomputable section

/-- A141918: Primes congruent to 14 mod 23.

Offset 1, canonical program `A141918.P6197340914735044769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3586 terms. -/
def A141918 (n : ℕ) : ℤ :=
  A141918.P6197340914735044769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3586 terms. -/
def A141918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141919.P13315905829934009233

`p?[23*n-8]`
-/

namespace A141919.P13315905829934009233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141919.P13315905829934009233

noncomputable section

/-- A141919: Primes congruent to 15 mod 23.

Offset 1, canonical program `A141919.P13315905829934009233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A141919 (n : ℕ) : ℤ :=
  A141919.P13315905829934009233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A141919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141920.P15783077897538202799

`p?[23*n-7]`
-/

namespace A141920.P15783077897538202799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141920.P15783077897538202799

noncomputable section

/-- A141920: Primes congruent to 16 mod 23.

Offset 1, canonical program `A141920.P15783077897538202799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3569 terms. -/
def A141920 (n : ℕ) : ℤ :=
  A141920.P15783077897538202799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3569 terms. -/
def A141920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141921.P17964433269071327918

`p?[23*n-6]`
-/

namespace A141921.P17964433269071327918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141921.P17964433269071327918

noncomputable section

/-- A141921: Primes congruent to 17 mod 23.

Offset 1, canonical program `A141921.P17964433269071327918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3583 terms. -/
def A141921 (n : ℕ) : ℤ :=
  A141921.P17964433269071327918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3583 terms. -/
def A141921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141922.P16515618779268983969

`p?[23*n-5]`
-/

namespace A141922.P16515618779268983969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141922.P16515618779268983969

noncomputable section

/-- A141922: Primes congruent to 18 mod 23.

Offset 1, canonical program `A141922.P16515618779268983969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A141922 (n : ℕ) : ℤ :=
  A141922.P16515618779268983969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3552 terms. -/
def A141922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141923.P5867154082732899307

`p?[23*n-4]`
-/

namespace A141923.P5867154082732899307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141923.P5867154082732899307

noncomputable section

/-- A141923: Primes congruent to 19 mod 23.

Offset 1, canonical program `A141923.P5867154082732899307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A141923 (n : ℕ) : ℤ :=
  A141923.P5867154082732899307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. -/
def A141923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141924.P15423694719666383040

`p?[23*n-3]`
-/

namespace A141924.P15423694719666383040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141924.P15423694719666383040

noncomputable section

/-- A141924: Primes congruent to 20 mod 23.

Offset 1, canonical program `A141924.P15423694719666383040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3589 terms. -/
def A141924 (n : ℕ) : ℤ :=
  A141924.P15423694719666383040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3589 terms. -/
def A141924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141925.P17128245883167051271

`p?[23*n-2]`
-/

namespace A141925.P17128245883167051271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141925.P17128245883167051271

noncomputable section

/-- A141925: Primes congruent to 21 mod 23.

Offset 1, canonical program `A141925.P17128245883167051271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3582 terms. -/
def A141925 (n : ℕ) : ℤ :=
  A141925.P17128245883167051271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3582 terms. -/
def A141925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141926.P3370032026993647329

`p?[23*n-1]`
-/

namespace A141926.P3370032026993647329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (23 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141926.P3370032026993647329

noncomputable section

/-- A141926: Primes congruent to 22 mod 23.

Offset 1, canonical program `A141926.P3370032026993647329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3572 terms. -/
def A141926 (n : ℕ) : ℤ :=
  A141926.P3370032026993647329.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3572 terms. -/
def A141926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141927.P3277347252701814424

`p?[25*n+1]`
-/

namespace A141927.P3277347252701814424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141927.P3277347252701814424

noncomputable section

/-- A141927: Primes congruent to 1 mod 25.

Offset 1, canonical program `A141927.P3277347252701814424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3934 terms. -/
def A141927 (n : ℕ) : ℤ :=
  (A141927.P3277347252701814424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3934 terms. -/
def A141927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141931.P8261575237751622424

`p?[25*n+6]`
-/

namespace A141931.P8261575237751622424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141931.P8261575237751622424

noncomputable section

/-- A141931: Primes congruent to 6 mod 25.

Offset 1, canonical program `A141931.P8261575237751622424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3906 terms. -/
def A141931 (n : ℕ) : ℤ :=
  (A141931.P8261575237751622424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3906 terms. -/
def A141931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141932.P17786084984330798446

`p?[25*n+7]`
-/

namespace A141932.P17786084984330798446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141932.P17786084984330798446

noncomputable section

/-- A141932: Primes congruent to 7 mod 25.

Offset 1, canonical program `A141932.P17786084984330798446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3893 terms. -/
def A141932 (n : ℕ) : ℤ :=
  (A141932.P17786084984330798446.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3893 terms. -/
def A141932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141933.P8683045149919439079

`p?[25*n+8]`
-/

namespace A141933.P8683045149919439079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141933.P8683045149919439079

noncomputable section

/-- A141933: Primes congruent to 8 mod 25.

Offset 1, canonical program `A141933.P8683045149919439079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3936 terms. -/
def A141933 (n : ℕ) : ℤ :=
  (A141933.P8683045149919439079.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3936 terms. -/
def A141933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141936.P15384463065993104786

`p?[5*5*n+12]`
-/

namespace A141936.P15384463065993104786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 * n) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141936.P15384463065993104786

noncomputable section

/-- A141936: Primes congruent to 12 mod 25.

Offset 1, canonical program `A141936.P15384463065993104786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3957 terms. -/
def A141936 (n : ℕ) : ℤ :=
  (A141936.P15384463065993104786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3957 terms. -/
def A141936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141937.P14001958662391153384

`p?[5*5*n-12]`
-/

namespace A141937.P14001958662391153384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (5 * n) : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141937.P14001958662391153384

noncomputable section

/-- A141937: Primes congruent to 13 mod 25.

Offset 1, canonical program `A141937.P14001958662391153384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3927 terms. -/
def A141937 (n : ℕ) : ℤ :=
  A141937.P14001958662391153384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3927 terms. -/
def A141937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141939.P16283272955693447126

`p?[50*n-9]`
-/

namespace A141939.P16283272955693447126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (50 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141939.P16283272955693447126

noncomputable section

/-- A141939: Primes congruent to 16 mod 25.

Offset 1, canonical program `A141939.P16283272955693447126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3936 terms. -/
def A141939 (n : ℕ) : ℤ :=
  A141939.P16283272955693447126.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3936 terms. -/
def A141939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141941.P8398962657768228484

`p?[5*5*n-7]`
-/

namespace A141941.P8398962657768228484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (5 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141941.P8398962657768228484

noncomputable section

/-- A141941: Primes congruent to 18 mod 25.

Offset 1, canonical program `A141941.P8398962657768228484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3924 terms. -/
def A141941 (n : ℕ) : ℤ :=
  A141941.P8398962657768228484.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3924 terms. -/
def A141941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141942.P10623980614628892939

`p?[25*n-6]`
-/

namespace A141942.P10623980614628892939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141942.P10623980614628892939

noncomputable section

/-- A141942: Primes congruent to 19 mod 25.

Offset 1, canonical program `A141942.P10623980614628892939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3928 terms. -/
def A141942 (n : ℕ) : ℤ :=
  A141942.P10623980614628892939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3928 terms. -/
def A141942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141946.P10794365736569721315

`p?[25*n-1]`
-/

namespace A141946.P10794365736569721315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141946.P10794365736569721315

noncomputable section

/-- A141946: Primes congruent to 24 mod 25.

Offset 1, canonical program `A141946.P10794365736569721315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3927 terms. -/
def A141946 (n : ℕ) : ℤ :=
  A141946.P10794365736569721315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3927 terms. -/
def A141946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141948.P14091508666294411149

`p?[27*n+1]`
-/

namespace A141948.P14091508666294411149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141948.P14091508666294411149

noncomputable section

/-- A141948: Primes congruent to 1 mod 27.

Offset 1, canonical program `A141948.P14091508666294411149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4353 terms. -/
def A141948 (n : ℕ) : ℤ :=
  (A141948.P14091508666294411149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4353 terms. -/
def A141948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141950.P12713975679317067339

`p?[27*n+4]`
-/

namespace A141950.P12713975679317067339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141950.P12713975679317067339

noncomputable section

/-- A141950: Primes congruent to 4 mod 27.

Offset 1, canonical program `A141950.P12713975679317067339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4365 terms. -/
def A141950 (n : ℕ) : ℤ :=
  (A141950.P12713975679317067339.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4365 terms. -/
def A141950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141951.P2426421903688238257

`p?[27*n+5]`
-/

namespace A141951.P2426421903688238257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141951.P2426421903688238257

noncomputable section

/-- A141951: Primes congruent to 5 mod 27.

Offset 1, canonical program `A141951.P2426421903688238257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4335 terms. -/
def A141951 (n : ℕ) : ℤ :=
  (A141951.P2426421903688238257.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4335 terms. -/
def A141951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141952.P6438771373754275122

`p?[27*n+7]`
-/

namespace A141952.P6438771373754275122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141952.P6438771373754275122

noncomputable section

/-- A141952: Primes congruent to 7 mod 27.

Offset 1, canonical program `A141952.P6438771373754275122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4344 terms. -/
def A141952 (n : ℕ) : ℤ :=
  (A141952.P6438771373754275122.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4344 terms. -/
def A141952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141953.P1594386319472158232

`p?[27*n+8]`
-/

namespace A141953.P1594386319472158232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141953.P1594386319472158232

noncomputable section

/-- A141953: Primes congruent to 8 mod 27.

Offset 1, canonical program `A141953.P1594386319472158232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4342 terms. -/
def A141953 (n : ℕ) : ℤ :=
  (A141953.P1594386319472158232.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4342 terms. -/
def A141953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141954.P18220534221732778019

`p?[27*n+10]`
-/

namespace A141954.P18220534221732778019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141954.P18220534221732778019

noncomputable section

/-- A141954: Primes congruent to 10 mod 27.

Offset 1, canonical program `A141954.P18220534221732778019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. -/
def A141954 (n : ℕ) : ℤ :=
  (A141954.P18220534221732778019.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. -/
def A141954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141955.P16226930735419179402

`p?[27*n+11]`
-/

namespace A141955.P16226930735419179402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141955.P16226930735419179402

noncomputable section

/-- A141955: Primes congruent to 11 mod 27.

Offset 1, canonical program `A141955.P16226930735419179402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4369 terms. -/
def A141955 (n : ℕ) : ℤ :=
  (A141955.P16226930735419179402.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4369 terms. -/
def A141955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141956.P2481953049988150767

`p?[3*9*n+13]`
-/

namespace A141956.P2481953049988150767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (9 * n) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141956.P2481953049988150767

noncomputable section

/-- A141956: Primes congruent to 13 mod 27.

Offset 1, canonical program `A141956.P2481953049988150767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4346 terms. -/
def A141956 (n : ℕ) : ℤ :=
  (A141956.P2481953049988150767.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4346 terms. -/
def A141956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141957.P12027767071780574500

`p?[3*9*n-13]`
-/

namespace A141957.P12027767071780574500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (9 * n) : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141957.P12027767071780574500

noncomputable section

/-- A141957: Primes congruent to 14 mod 27.

Offset 1, canonical program `A141957.P12027767071780574500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4368 terms. -/
def A141957 (n : ℕ) : ℤ :=
  A141957.P12027767071780574500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4368 terms. -/
def A141957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141958.P4946978575266648834

`p?[27*n-11]`
-/

namespace A141958.P4946978575266648834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141958.P4946978575266648834

noncomputable section

/-- A141958: Primes congruent to 16 mod 27.

Offset 1, canonical program `A141958.P4946978575266648834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4360 terms. -/
def A141958 (n : ℕ) : ℤ :=
  A141958.P4946978575266648834.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4360 terms. -/
def A141958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141959.P10885151236091760451

`p?[3*9*n-10]`
-/

namespace A141959.P10885151236091760451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (9 * n) : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141959.P10885151236091760451

noncomputable section

/-- A141959: Primes congruent to 17 mod 27.

Offset 1, canonical program `A141959.P10885151236091760451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4360 terms. -/
def A141959 (n : ℕ) : ℤ :=
  A141959.P10885151236091760451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4360 terms. -/
def A141959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141960.P4162467210023989627

`p?[27*n-8]`
-/

namespace A141960.P4162467210023989627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141960.P4162467210023989627

noncomputable section

/-- A141960: Primes congruent to 19 mod 27.

Offset 1, canonical program `A141960.P4162467210023989627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4336 terms. -/
def A141960 (n : ℕ) : ℤ :=
  A141960.P4162467210023989627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4336 terms. -/
def A141960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141961.P17627897798866787358

`p?[27*n-7]`
-/

namespace A141961.P17627897798866787358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141961.P17627897798866787358

noncomputable section

/-- A141961: Primes congruent to 20 mod 27.

Offset 1, canonical program `A141961.P17627897798866787358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. -/
def A141961 (n : ℕ) : ℤ :=
  A141961.P17627897798866787358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4374 terms. -/
def A141961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141962.P10272407572504658729

`p?[27*n-5]`
-/

namespace A141962.P10272407572504658729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141962.P10272407572504658729

noncomputable section

/-- A141962: Primes congruent to 22 mod 27.

Offset 1, canonical program `A141962.P10272407572504658729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. -/
def A141962 (n : ℕ) : ℤ :=
  A141962.P10272407572504658729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. -/
def A141962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141963.P16602494174771806076

`p?[27*n-4]`
-/

namespace A141963.P16602494174771806076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141963.P16602494174771806076

noncomputable section

/-- A141963: Primes congruent to 23 mod 27.

Offset 1, canonical program `A141963.P16602494174771806076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4365 terms. -/
def A141963 (n : ℕ) : ℤ :=
  A141963.P16602494174771806076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4365 terms. -/
def A141963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141964.P13218050565630564501

`p?[27*n-2]`
-/

namespace A141964.P13218050565630564501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141964.P13218050565630564501

noncomputable section

/-- A141964: Primes congruent to 25 mod 27.

Offset 1, canonical program `A141964.P13218050565630564501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4394 terms. -/
def A141964 (n : ℕ) : ℤ :=
  A141964.P13218050565630564501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4394 terms. -/
def A141964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141965.P1717643765959104100

`p?[27*n-1]`
-/

namespace A141965.P1717643765959104100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (27 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141965.P1717643765959104100

noncomputable section

/-- A141965: Primes congruent to 26 mod 27.

Offset 1, canonical program `A141965.P1717643765959104100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4397 terms. -/
def A141965 (n : ℕ) : ℤ :=
  A141965.P1717643765959104100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4397 terms. -/
def A141965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141968.P7913412016418299999

`p?[28*n+9]`
-/

namespace A141968.P7913412016418299999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141968.P7913412016418299999

noncomputable section

/-- A141968: Primes congruent to 9 mod 28.

Offset 1, canonical program `A141968.P7913412016418299999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6513 terms. -/
def A141968 (n : ℕ) : ℤ :=
  (A141968.P7913412016418299999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6513 terms. -/
def A141968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141969.P10803076773587650740

`p?[28*n+11]`
-/

namespace A141969.P10803076773587650740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141969.P10803076773587650740

noncomputable section

/-- A141969: Primes congruent to 11 mod 28.

Offset 1, canonical program `A141969.P10803076773587650740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6566 terms. -/
def A141969 (n : ℕ) : ℤ :=
  (A141969.P10803076773587650740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6566 terms. -/
def A141969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141971.P2623643138015231424

`p?[a(n-1)+28]` with `a(0)=15`
-/

namespace A141971.P2623643138015231424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141971.P2623643138015231424

noncomputable section

/-- A141971: Primes congruent to 15 mod 28.

Offset 1, canonical program `A141971.P2623643138015231424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. -/
def A141971 (n : ℕ) : ℤ :=
  (A141971.P2623643138015231424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. -/
def A141971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141974.P14247569674163781751

`p?[28*n-5]`
-/

namespace A141974.P14247569674163781751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (28 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141974.P14247569674163781751

noncomputable section

/-- A141974: Primes congruent to 23 mod 28.

Offset 1, canonical program `A141974.P14247569674163781751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6551 terms. -/
def A141974 (n : ℕ) : ℤ :=
  A141974.P14247569674163781751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6551 terms. -/
def A141974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141975.P13716968267536851497

`p?[28*n-3]`
-/

namespace A141975.P13716968267536851497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (28 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141975.P13716968267536851497

noncomputable section

/-- A141975: Primes congruent to 25 mod 28.

Offset 1, canonical program `A141975.P13716968267536851497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6503 terms. -/
def A141975 (n : ℕ) : ℤ :=
  A141975.P13716968267536851497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6503 terms. -/
def A141975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141977.P12366910579437342238

`p?[29*n+1]`
-/

namespace A141977.P12366910579437342238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141977.P12366910579437342238

noncomputable section

/-- A141977: Primes congruent to 1 mod 29.

Offset 1, canonical program `A141977.P12366910579437342238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A141977 (n : ℕ) : ℤ :=
  (A141977.P12366910579437342238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A141977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141979.P10323436861933130034

`p?[29*n+3]`
-/

namespace A141979.P10323436861933130034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141979.P10323436861933130034

noncomputable section

/-- A141979: Primes congruent to 3 mod 29.

Offset 1, canonical program `A141979.P10323436861933130034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2801 terms. -/
def A141979 (n : ℕ) : ℤ :=
  (A141979.P10323436861933130034.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2801 terms. -/
def A141979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141980.P3857999304278642684

`p?[29*n+4]`
-/

namespace A141980.P3857999304278642684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141980.P3857999304278642684

noncomputable section

/-- A141980: Primes congruent to 4 mod 29.

Offset 1, canonical program `A141980.P3857999304278642684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2814 terms. -/
def A141980 (n : ℕ) : ℤ :=
  (A141980.P3857999304278642684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2814 terms. -/
def A141980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141981.P7676313301708460617

`p?[5+29*n]`
-/

namespace A141981.P7676313301708460617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 + 29 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141981.P7676313301708460617

noncomputable section

/-- A141981: Primes congruent to 5 mod 29.

Offset 1, canonical program `A141981.P7676313301708460617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. -/
def A141981 (n : ℕ) : ℤ :=
  (A141981.P7676313301708460617.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2800 terms. -/
def A141981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141982.P16005638060249871987

`p?[29*n+6]`
-/

namespace A141982.P16005638060249871987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141982.P16005638060249871987

noncomputable section

/-- A141982: Primes congruent to 6 mod 29.

Offset 1, canonical program `A141982.P16005638060249871987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. -/
def A141982 (n : ℕ) : ℤ :=
  (A141982.P16005638060249871987.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. -/
def A141982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141983.P10641454952790838751

`p?[29*n+7]`
-/

namespace A141983.P10641454952790838751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141983.P10641454952790838751

noncomputable section

/-- A141983: Primes congruent to 7 mod 29.

Offset 1, canonical program `A141983.P10641454952790838751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2814 terms. -/
def A141983 (n : ℕ) : ℤ :=
  (A141983.P10641454952790838751.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2814 terms. -/
def A141983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141984.P262604887957215991

`p?[29*n+8]`
-/

namespace A141984.P262604887957215991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141984.P262604887957215991

noncomputable section

/-- A141984: Primes congruent to 8 mod 29.

Offset 1, canonical program `A141984.P262604887957215991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A141984 (n : ℕ) : ℤ :=
  (A141984.P262604887957215991.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2782 terms. -/
def A141984.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141985.P5836169948399936421

`p?[29*n+9]`
-/

namespace A141985.P5836169948399936421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141985.P5836169948399936421

noncomputable section

/-- A141985: Primes congruent to 9 mod 29.

Offset 1, canonical program `A141985.P5836169948399936421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2784 terms. -/
def A141985 (n : ℕ) : ℤ :=
  (A141985.P5836169948399936421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2784 terms. -/
def A141985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141986.P1868741360230948704

`p?[29*n+10]`
-/

namespace A141986.P1868741360230948704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141986.P1868741360230948704

noncomputable section

/-- A141986: Primes congruent to 10 mod 29.

Offset 1, canonical program `A141986.P1868741360230948704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2792 terms. -/
def A141986 (n : ℕ) : ℤ :=
  (A141986.P1868741360230948704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2792 terms. -/
def A141986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141987.P10298866433799292081

`p?[29*n+11]`
-/

namespace A141987.P10298866433799292081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141987.P10298866433799292081

noncomputable section

/-- A141987: Primes congruent to 11 mod 29.

Offset 1, canonical program `A141987.P10298866433799292081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2825 terms. -/
def A141987 (n : ℕ) : ℤ :=
  (A141987.P10298866433799292081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2825 terms. -/
def A141987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141988.P358394430967254965

`p?[a(n-1)+29]` with `a(0)=12`
-/

namespace A141988.P358394430967254965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141988.P358394430967254965

noncomputable section

/-- A141988: Primes congruent to 12 mod 29.

Offset 1, canonical program `A141988.P358394430967254965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2807 terms. -/
def A141988 (n : ℕ) : ℤ :=
  (A141988.P358394430967254965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2807 terms. -/
def A141988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141989.P17280600227244085025

`p?[29*n+13]`
-/

namespace A141989.P17280600227244085025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141989.P17280600227244085025

noncomputable section

/-- A141989: Primes congruent to 13 mod 29.

Offset 1, canonical program `A141989.P17280600227244085025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A141989 (n : ℕ) : ℤ :=
  (A141989.P17280600227244085025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A141989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141990.P1843537591823554389

`p?[29*n-15]`
-/

namespace A141990.P1843537591823554389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141990.P1843537591823554389

noncomputable section

/-- A141990: Primes congruent to 14 mod 29.

Offset 1, canonical program `A141990.P1843537591823554389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. -/
def A141990 (n : ℕ) : ℤ :=
  A141990.P1843537591823554389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. -/
def A141990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141991.P17212681223087314287

`p?[a(n-1)+29]` with `a(0)=15`
-/

namespace A141991.P17212681223087314287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141991.P17212681223087314287

noncomputable section

/-- A141991: Primes congruent to 15 mod 29.

Offset 1, canonical program `A141991.P17212681223087314287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2771 terms. -/
def A141991 (n : ℕ) : ℤ :=
  (A141991.P17212681223087314287.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2771 terms. -/
def A141991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141992.P9628899648759679825

`p?[29*n-13]`
-/

namespace A141992.P9628899648759679825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141992.P9628899648759679825

noncomputable section

/-- A141992: Primes congruent to 16 mod 29.

Offset 1, canonical program `A141992.P9628899648759679825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2793 terms. -/
def A141992 (n : ℕ) : ℤ :=
  A141992.P9628899648759679825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2793 terms. -/
def A141992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141993.P500248352914143476

`p?[58*n+17]`
-/

namespace A141993.P500248352914143476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  58 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A141993.P500248352914143476

noncomputable section

/-- A141993: Primes congruent to 17 mod 29.

Offset 1, canonical program `A141993.P500248352914143476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2801 terms. -/
def A141993 (n : ℕ) : ℤ :=
  (A141993.P500248352914143476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2801 terms. -/
def A141993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141994.P10842819423116577708

`p?[29*n-11]`
-/

namespace A141994.P10842819423116577708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141994.P10842819423116577708

noncomputable section

/-- A141994: Primes congruent to 18 mod 29.

Offset 1, canonical program `A141994.P10842819423116577708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2798 terms. -/
def A141994 (n : ℕ) : ℤ :=
  A141994.P10842819423116577708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2798 terms. -/
def A141994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141995.P6291012753824342578

`p?[29*n-10]`
-/

namespace A141995.P6291012753824342578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141995.P6291012753824342578

noncomputable section

/-- A141995: Primes congruent to 19 mod 29.

Offset 1, canonical program `A141995.P6291012753824342578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2820 terms. -/
def A141995 (n : ℕ) : ℤ :=
  A141995.P6291012753824342578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2820 terms. -/
def A141995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141996.P18056026201546484257

`p?[29*n-9]`
-/

namespace A141996.P18056026201546484257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141996.P18056026201546484257

noncomputable section

/-- A141996: Primes congruent to 20 mod 29.

Offset 1, canonical program `A141996.P18056026201546484257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2819 terms. -/
def A141996 (n : ℕ) : ℤ :=
  A141996.P18056026201546484257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2819 terms. -/
def A141996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141997.P6209683941310662624

`p?[29*n-8]`
-/

namespace A141997.P6209683941310662624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141997.P6209683941310662624

noncomputable section

/-- A141997: Primes congruent to 21 mod 29.

Offset 1, canonical program `A141997.P6209683941310662624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2821 terms. -/
def A141997 (n : ℕ) : ℤ :=
  A141997.P6209683941310662624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2821 terms. -/
def A141997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141998.P14469192312741898644

`p?[29*n-7]`
-/

namespace A141998.P14469192312741898644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141998.P14469192312741898644

noncomputable section

/-- A141998: Primes congruent to 22 mod 29.

Offset 1, canonical program `A141998.P14469192312741898644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. -/
def A141998 (n : ℕ) : ℤ :=
  A141998.P14469192312741898644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2826 terms. -/
def A141998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141999.P12192578655231234354

`p?[29*n-6]`
-/

namespace A141999.P12192578655231234354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A141999.P12192578655231234354

noncomputable section

/-- A141999: Primes congruent to 23 mod 29.

Offset 1, canonical program `A141999.P12192578655231234354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. -/
def A141999 (n : ℕ) : ℤ :=
  A141999.P12192578655231234354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2802 terms. -/
def A141999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142000.P15065755748301898321

`p?[29*n-5]`
-/

namespace A142000.P15065755748301898321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142000.P15065755748301898321

noncomputable section

/-- A142000: Primes congruent to 24 mod 29.

Offset 1, canonical program `A142000.P15065755748301898321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2798 terms. -/
def A142000 (n : ℕ) : ℤ :=
  A142000.P15065755748301898321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2798 terms. -/
def A142000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142001.P6642892303876696954

`p?[29*n-4]`
-/

namespace A142001.P6642892303876696954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142001.P6642892303876696954

noncomputable section

/-- A142001: Primes congruent to 25 mod 29.

Offset 1, canonical program `A142001.P6642892303876696954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A142001 (n : ℕ) : ℤ :=
  A142001.P6642892303876696954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. -/
def A142001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142002.P14421223377485261696

`p?[29*n-3]`
-/

namespace A142002.P14421223377485261696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142002.P14421223377485261696

noncomputable section

/-- A142002: Primes congruent to 26 mod 29.

Offset 1, canonical program `A142002.P14421223377485261696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. -/
def A142002 (n : ℕ) : ℤ :=
  A142002.P14421223377485261696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. -/
def A142002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142003.P5906945974808956508

`p?[29*n-2]`
-/

namespace A142003.P5906945974808956508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142003.P5906945974808956508

noncomputable section

/-- A142003: Primes congruent to 27 mod 29.

Offset 1, canonical program `A142003.P5906945974808956508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2823 terms. -/
def A142003 (n : ℕ) : ℤ :=
  A142003.P5906945974808956508.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2823 terms. -/
def A142003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142004.P14454865169866432114

`p?[29*n-1]`
-/

namespace A142004.P14454865169866432114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (29 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142004.P14454865169866432114

noncomputable section

/-- A142004: Primes congruent to 28 mod 29.

Offset 1, canonical program `A142004.P14454865169866432114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2791 terms. -/
def A142004 (n : ℕ) : ℤ :=
  A142004.P14454865169866432114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2791 terms. -/
def A142004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142005.P16017676294522784959

`p?[31*n+1]`
-/

namespace A142005.P16017676294522784959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142005.P16017676294522784959

noncomputable section

/-- A142005: Primes congruent to 1 mod 31.

Offset 1, canonical program `A142005.P16017676294522784959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. -/
def A142005 (n : ℕ) : ℤ :=
  (A142005.P16017676294522784959.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. -/
def A142005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142007.P2747788869624958561

`p?[31*n+3]`
-/

namespace A142007.P2747788869624958561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142007.P2747788869624958561

noncomputable section

/-- A142007: Primes congruent to 3 mod 31.

Offset 1, canonical program `A142007.P2747788869624958561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2629 terms. -/
def A142007 (n : ℕ) : ℤ :=
  (A142007.P2747788869624958561.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2629 terms. -/
def A142007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142008.P2886295417472548207

`p?[31*n+4]`
-/

namespace A142008.P2886295417472548207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142008.P2886295417472548207

noncomputable section

/-- A142008: Primes congruent to 4 mod 31.

Offset 1, canonical program `A142008.P2886295417472548207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2614 terms. -/
def A142008 (n : ℕ) : ℤ :=
  (A142008.P2886295417472548207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2614 terms. -/
def A142008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142009.P17668888222048217800

`p?[62*n+5]`
-/

namespace A142009.P17668888222048217800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  62 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142009.P17668888222048217800

noncomputable section

/-- A142009: Primes congruent to 5 mod 31.

Offset 1, canonical program `A142009.P17668888222048217800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2612 terms. -/
def A142009 (n : ℕ) : ℤ :=
  (A142009.P17668888222048217800.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2612 terms. -/
def A142009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142010.P8383026999669484565

`p?[31*n+6]`
-/

namespace A142010.P8383026999669484565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142010.P8383026999669484565

noncomputable section

/-- A142010: Primes congruent to 6 mod 31.

Offset 1, canonical program `A142010.P8383026999669484565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. -/
def A142010 (n : ℕ) : ℤ :=
  (A142010.P8383026999669484565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. -/
def A142010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142011.P15778736285981160088

`p?[31*n+7]`
-/

namespace A142011.P15778736285981160088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142011.P15778736285981160088

noncomputable section

/-- A142011: Primes congruent to 7 mod 31.

Offset 1, canonical program `A142011.P15778736285981160088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A142011 (n : ℕ) : ℤ :=
  (A142011.P15778736285981160088.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A142011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142012.P7843368770873152612

`p?[31*n+8]`
-/

namespace A142012.P7843368770873152612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142012.P7843368770873152612

noncomputable section

/-- A142012: Primes congruent to 8 mod 31.

Offset 1, canonical program `A142012.P7843368770873152612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2618 terms. -/
def A142012 (n : ℕ) : ℤ :=
  (A142012.P7843368770873152612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2618 terms. -/
def A142012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142013.P18424126282494978244

`p?[31*n+9]`
-/

namespace A142013.P18424126282494978244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142013.P18424126282494978244

noncomputable section

/-- A142013: Primes congruent to 9 mod 31.

Offset 1, canonical program `A142013.P18424126282494978244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2630 terms. -/
def A142013 (n : ℕ) : ℤ :=
  (A142013.P18424126282494978244.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2630 terms. -/
def A142013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142014.P10460385428154183684

`p?[31*n+10]`
-/

namespace A142014.P10460385428154183684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142014.P10460385428154183684

noncomputable section

/-- A142014: Primes congruent to 10 mod 31.

Offset 1, canonical program `A142014.P10460385428154183684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. -/
def A142014 (n : ℕ) : ℤ :=
  (A142014.P10460385428154183684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2606 terms. -/
def A142014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142015.P17645844078819288955

`p?[62*n+11]`
-/

namespace A142015.P17645844078819288955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  62 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142015.P17645844078819288955

noncomputable section

/-- A142015: Primes congruent to 11 mod 31.

Offset 1, canonical program `A142015.P17645844078819288955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2629 terms. -/
def A142015 (n : ℕ) : ℤ :=
  (A142015.P17645844078819288955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2629 terms. -/
def A142015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142016.P7732691917348421130

`p?[31*n+12]`
-/

namespace A142016.P7732691917348421130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142016.P7732691917348421130

noncomputable section

/-- A142016: Primes congruent to 12 mod 31.

Offset 1, canonical program `A142016.P7732691917348421130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A142016 (n : ℕ) : ℤ :=
  (A142016.P7732691917348421130.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A142016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142017.P11625030124948837998

`p?[31*n+13]`
-/

namespace A142017.P11625030124948837998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142017.P11625030124948837998

noncomputable section

/-- A142017: Primes congruent to 13 mod 31.

Offset 1, canonical program `A142017.P11625030124948837998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A142017 (n : ℕ) : ℤ :=
  (A142017.P11625030124948837998.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A142017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142018.P9161494494111257867

`p?[31*n-48]`
-/

namespace A142018.P9161494494111257867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 48

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142018.P9161494494111257867

noncomputable section

/-- A142018: Primes congruent to 14 mod 31.

Offset 1, canonical program `A142018.P9161494494111257867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2597 terms. -/
def A142018 (n : ℕ) : ℤ :=
  A142018.P9161494494111257867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2597 terms. -/
def A142018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142019.P6462402050578494635

`p?[31*n+77]`
-/

namespace A142019.P6462402050578494635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 77

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142019.P6462402050578494635

noncomputable section

/-- A142019: Primes congruent to 15 mod 31.

Offset 1, canonical program `A142019.P6462402050578494635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A142019 (n : ℕ) : ℤ :=
  (A142019.P6462402050578494635.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A142019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142020.P16586427795945706816

`p?[a(n-1)+31]` with `a(0)=16`
-/

namespace A142020.P16586427795945706816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16] fun n f1 =>
  f1 (n - 1) + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142020.P16586427795945706816

noncomputable section

/-- A142020: Primes congruent to 16 mod 31.

Offset 1, canonical program `A142020.P16586427795945706816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2616 terms. -/
def A142020 (n : ℕ) : ℤ :=
  (A142020.P16586427795945706816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2616 terms. -/
def A142020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142021.P15168188517911633826

`p?[31*n+17]`
-/

namespace A142021.P15168188517911633826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142021.P15168188517911633826

noncomputable section

/-- A142021: Primes congruent to 17 mod 31.

Offset 1, canonical program `A142021.P15168188517911633826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A142021 (n : ℕ) : ℤ :=
  (A142021.P15168188517911633826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A142021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142022.P10416321363538169702

`p?[31*n-13]`
-/

namespace A142022.P10416321363538169702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142022.P10416321363538169702

noncomputable section

/-- A142022: Primes congruent to 18 mod 31.

Offset 1, canonical program `A142022.P10416321363538169702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A142022 (n : ℕ) : ℤ :=
  A142022.P10416321363538169702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2596 terms. -/
def A142022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142023.P14274148652728911942

`p?[31*n-12]`
-/

namespace A142023.P14274148652728911942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142023.P14274148652728911942

noncomputable section

/-- A142023: Primes congruent to 19 mod 31.

Offset 1, canonical program `A142023.P14274148652728911942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2612 terms. -/
def A142023 (n : ℕ) : ℤ :=
  A142023.P14274148652728911942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2612 terms. -/
def A142023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142024.P9422991563371637175

`p?[62*n-11]`
-/

namespace A142024.P9422991563371637175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (62 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142024.P9422991563371637175

noncomputable section

/-- A142024: Primes congruent to 20 mod 31.

Offset 1, canonical program `A142024.P9422991563371637175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2631 terms. -/
def A142024 (n : ℕ) : ℤ :=
  A142024.P9422991563371637175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2631 terms. -/
def A142024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142025.P7961048039919575719

`p?[31*n-10]`
-/

namespace A142025.P7961048039919575719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142025.P7961048039919575719

noncomputable section

/-- A142025: Primes congruent to 21 mod 31.

Offset 1, canonical program `A142025.P7961048039919575719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A142025 (n : ℕ) : ℤ :=
  A142025.P7961048039919575719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A142025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142026.P13160825783324097446

`p?[62*n-9]`
-/

namespace A142026.P13160825783324097446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (62 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142026.P13160825783324097446

noncomputable section

/-- A142026: Primes congruent to 22 mod 31.

Offset 1, canonical program `A142026.P13160825783324097446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A142026 (n : ℕ) : ℤ :=
  A142026.P13160825783324097446.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A142026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142027.P1497223335984843028

`p?[31*n-8]`
-/

namespace A142027.P1497223335984843028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142027.P1497223335984843028

noncomputable section

/-- A142027: Primes congruent to 23 mod 31.

Offset 1, canonical program `A142027.P1497223335984843028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A142027 (n : ℕ) : ℤ :=
  A142027.P1497223335984843028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A142027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142028.P1386416701456778253

`p?[31*n-7]`
-/

namespace A142028.P1386416701456778253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142028.P1386416701456778253

noncomputable section

/-- A142028: Primes congruent to 24 mod 31.

Offset 1, canonical program `A142028.P1386416701456778253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A142028 (n : ℕ) : ℤ :=
  A142028.P1386416701456778253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2625 terms. -/
def A142028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142029.P10063750050715036443

`p?[31*n-6]`
-/

namespace A142029.P10063750050715036443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142029.P10063750050715036443

noncomputable section

/-- A142029: Primes congruent to 25 mod 31.

Offset 1, canonical program `A142029.P10063750050715036443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2609 terms. -/
def A142029 (n : ℕ) : ℤ :=
  A142029.P10063750050715036443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2609 terms. -/
def A142029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142030.P5890763793859988796

`p?[62*n-5]`
-/

namespace A142030.P5890763793859988796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (62 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142030.P5890763793859988796

noncomputable section

/-- A142030: Primes congruent to 26 mod 31.

Offset 1, canonical program `A142030.P5890763793859988796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A142030 (n : ℕ) : ℤ :=
  A142030.P5890763793859988796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A142030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142031.P8145539369088862934

`p?[31*n-4]`
-/

namespace A142031.P8145539369088862934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142031.P8145539369088862934

noncomputable section

/-- A142031: Primes congruent to 27 mod 31.

Offset 1, canonical program `A142031.P8145539369088862934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2604 terms. -/
def A142031 (n : ℕ) : ℤ :=
  A142031.P8145539369088862934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2604 terms. -/
def A142031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142032.P10932960151328989973

`p?[31*n-3]`
-/

namespace A142032.P10932960151328989973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142032.P10932960151328989973

noncomputable section

/-- A142032: Primes congruent to 28 mod 31.

Offset 1, canonical program `A142032.P10932960151328989973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. -/
def A142032 (n : ℕ) : ℤ :=
  A142032.P10932960151328989973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2613 terms. -/
def A142032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142033.P5035171021861625087

`p?[31*n-2]`
-/

namespace A142033.P5035171021861625087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142033.P5035171021861625087

noncomputable section

/-- A142033: Primes congruent to 29 mod 31.

Offset 1, canonical program `A142033.P5035171021861625087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. -/
def A142033 (n : ℕ) : ℤ :=
  A142033.P5035171021861625087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2602 terms. -/
def A142033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142034.P16484057784270041110

`p?[31*n-1]`
-/

namespace A142034.P16484057784270041110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (31 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142034.P16484057784270041110

noncomputable section

/-- A142034: Primes congruent to 30 mod 31.

Offset 1, canonical program `A142034.P16484057784270041110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A142034 (n : ℕ) : ℤ :=
  A142034.P16484057784270041110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2645 terms. -/
def A142034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142049.P7957472508449430480

`p?[33*n+1]`
-/

namespace A142049.P7957472508449430480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142049.P7957472508449430480

noncomputable section

/-- A142049: Primes congruent to 1 mod 33.

Offset 1, canonical program `A142049.P7957472508449430480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A142049 (n : ℕ) : ℤ :=
  (A142049.P7957472508449430480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A142049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142050.P14625853988464788971

`p?[33*n+2]`
-/

namespace A142050.P14625853988464788971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142050.P14625853988464788971

noncomputable section

/-- A142050: Primes congruent to 2 mod 33.

Offset 1, canonical program `A142050.P14625853988464788971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3911 terms. -/
def A142050 (n : ℕ) : ℤ :=
  (A142050.P14625853988464788971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3911 terms. -/
def A142050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142051.P11565715162518936311

`p?[33*n+4]`
-/

namespace A142051.P11565715162518936311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142051.P11565715162518936311

noncomputable section

/-- A142051: Primes congruent to 4 mod 33.

Offset 1, canonical program `A142051.P11565715162518936311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3912 terms. -/
def A142051 (n : ℕ) : ℤ :=
  (A142051.P11565715162518936311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3912 terms. -/
def A142051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142052.P14670125918708881788

`p?[3*11*n+5]`
-/

namespace A142052.P14670125918708881788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (11 * n) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142052.P14670125918708881788

noncomputable section

/-- A142052: Primes congruent to 5 mod 33.

Offset 1, canonical program `A142052.P14670125918708881788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3916 terms. -/
def A142052 (n : ℕ) : ℤ :=
  (A142052.P14670125918708881788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3916 terms. -/
def A142052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142053.P13334455639310119624

`p?[33*n+7]`
-/

namespace A142053.P13334455639310119624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142053.P13334455639310119624

noncomputable section

/-- A142053: Primes congruent to 7 mod 33.

Offset 1, canonical program `A142053.P13334455639310119624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3940 terms. -/
def A142053 (n : ℕ) : ℤ :=
  (A142053.P13334455639310119624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3940 terms. -/
def A142053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142054.P11674088080574549015

`p?[33*n+8]`
-/

namespace A142054.P11674088080574549015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142054.P11674088080574549015

noncomputable section

/-- A142054: Primes congruent to 8 mod 33.

Offset 1, canonical program `A142054.P11674088080574549015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3936 terms. -/
def A142054 (n : ℕ) : ℤ :=
  (A142054.P11674088080574549015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3936 terms. -/
def A142054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142055.P2924894407730717356

`p?[10+33*n]`
-/

namespace A142055.P2924894407730717356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 + 33 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142055.P2924894407730717356

noncomputable section

/-- A142055: Primes congruent to 10 mod 33.

Offset 1, canonical program `A142055.P2924894407730717356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3910 terms. -/
def A142055 (n : ℕ) : ℤ :=
  (A142055.P2924894407730717356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3910 terms. -/
def A142055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142056.P13329390542527921275

`p?[33*n+13]`
-/

namespace A142056.P13329390542527921275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142056.P13329390542527921275

noncomputable section

/-- A142056: Primes congruent to 13 mod 33.

Offset 1, canonical program `A142056.P13329390542527921275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3932 terms. -/
def A142056 (n : ℕ) : ℤ :=
  (A142056.P13329390542527921275.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3932 terms. -/
def A142056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142057.P2851651434208903845

`p?[33*n+47]`
-/

namespace A142057.P2851651434208903845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 47

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142057.P2851651434208903845

noncomputable section

/-- A142057: Primes congruent to 14 mod 33.

Offset 1, canonical program `A142057.P2851651434208903845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3883 terms. -/
def A142057 (n : ℕ) : ℤ :=
  (A142057.P2851651434208903845.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3883 terms. -/
def A142057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142058.P17944085755997940685

`p?[33*n+49]`
-/

namespace A142058.P17944085755997940685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142058.P17944085755997940685

noncomputable section

/-- A142058: Primes congruent to 16 mod 33.

Offset 1, canonical program `A142058.P17944085755997940685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. -/
def A142058 (n : ℕ) : ℤ :=
  (A142058.P17944085755997940685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. -/
def A142058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142059.P15032487665649612019

`p?[33*n-49]`
-/

namespace A142059.P15032487665649612019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * n : ℤ) - 49

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142059.P15032487665649612019

noncomputable section

/-- A142059: Primes congruent to 17 mod 33.

Offset 1, canonical program `A142059.P15032487665649612019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3945 terms. -/
def A142059 (n : ℕ) : ℤ :=
  A142059.P15032487665649612019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3945 terms. -/
def A142059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142060.P773736401028258990

`p?[33*n+19]`
-/

namespace A142060.P773736401028258990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142060.P773736401028258990

noncomputable section

/-- A142060: Primes congruent to 19 mod 33.

Offset 1, canonical program `A142060.P773736401028258990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. -/
def A142060 (n : ℕ) : ℤ :=
  (A142060.P773736401028258990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. -/
def A142060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142061.P17231929898932925675

`p?[33*n-13]`
-/

namespace A142061.P17231929898932925675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142061.P17231929898932925675

noncomputable section

/-- A142061: Primes congruent to 20 mod 33.

Offset 1, canonical program `A142061.P17231929898932925675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3935 terms. -/
def A142061 (n : ℕ) : ℤ :=
  A142061.P17231929898932925675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3935 terms. -/
def A142061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142062.P18079343739128686435

`p?[3*11*n-10]`
-/

namespace A142062.P18079343739128686435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (11 * n) : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142062.P18079343739128686435

noncomputable section

/-- A142062: Primes congruent to 23 mod 33.

Offset 1, canonical program `A142062.P18079343739128686435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. -/
def A142062 (n : ℕ) : ℤ :=
  A142062.P18079343739128686435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3949 terms. -/
def A142062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142063.P13615811643452234008

`p?[33*n-8]`
-/

namespace A142063.P13615811643452234008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142063.P13615811643452234008

noncomputable section

/-- A142063: Primes congruent to 25 mod 33.

Offset 1, canonical program `A142063.P13615811643452234008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3930 terms. -/
def A142063 (n : ℕ) : ℤ :=
  A142063.P13615811643452234008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3930 terms. -/
def A142063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142064.P13407911316614423869

`p?[33*n-7]`
-/

namespace A142064.P13407911316614423869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142064.P13407911316614423869

noncomputable section

/-- A142064: Primes congruent to 26 mod 33.

Offset 1, canonical program `A142064.P13407911316614423869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3927 terms. -/
def A142064 (n : ℕ) : ℤ :=
  A142064.P13407911316614423869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3927 terms. -/
def A142064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142065.P7129530371948878668

`p?[33*n-5]`
-/

namespace A142065.P7129530371948878668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142065.P7129530371948878668

noncomputable section

/-- A142065: Primes congruent to 28 mod 33.

Offset 1, canonical program `A142065.P7129530371948878668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3931 terms. -/
def A142065 (n : ℕ) : ℤ :=
  A142065.P7129530371948878668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3931 terms. -/
def A142065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142066.P10225337079812906531

`p?[33*n-4]`
-/

namespace A142066.P10225337079812906531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142066.P10225337079812906531

noncomputable section

/-- A142066: Primes congruent to 29 mod 33.

Offset 1, canonical program `A142066.P10225337079812906531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3934 terms. -/
def A142066 (n : ℕ) : ℤ :=
  A142066.P10225337079812906531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3934 terms. -/
def A142066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142067.P2316696778376834968

`p?[33*n-2]`
-/

namespace A142067.P2316696778376834968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142067.P2316696778376834968

noncomputable section

/-- A142067: Primes congruent to 31 mod 33.

Offset 1, canonical program `A142067.P2316696778376834968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3893 terms. -/
def A142067 (n : ℕ) : ℤ :=
  A142067.P2316696778376834968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3893 terms. -/
def A142067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142068.P12150171660204582869

`p?[33*n-1]`
-/

namespace A142068.P12150171660204582869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (33 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142068.P12150171660204582869

noncomputable section

/-- A142068: Primes congruent to 32 mod 33.

Offset 1, canonical program `A142068.P12150171660204582869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3929 terms. -/
def A142068 (n : ℕ) : ℤ :=
  A142068.P12150171660204582869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3929 terms. -/
def A142068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142071.P1448866075898645574

`(col(n)-1)*T(n-1,k-1)+col(n)*T(n-1,k)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A142071.P1448866075898645574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((SequenceMachineLib.triCol n : ℤ) - 1) * SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triUp a n

end

end A142071.P1448866075898645574

noncomputable section

/-- A142071: Expansion of the exponential generating function 1 - log(1 - x*(exp(z) - 1)), triangle read by rows, T(n,k) for n >= 0 and 0 <= k <= n.

Offset 0, canonical program `A142071.P1448866075898645574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A142071 (n : ℕ) : ℤ :=
  A142071.P1448866075898645574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A142071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142077.P16338474201965277594

`p?[35*n+2]`
-/

namespace A142077.P16338474201965277594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142077.P16338474201965277594

noncomputable section

/-- A142077: Primes congruent to 2 mod 35.

Offset 1, canonical program `A142077.P16338474201965277594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. -/
def A142077 (n : ℕ) : ℤ :=
  (A142077.P16338474201965277594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. -/
def A142077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142078.P18378913914792671546

`p?[35*n+3]`
-/

namespace A142078.P18378913914792671546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142078.P18378913914792671546

noncomputable section

/-- A142078: Primes congruent to 3 mod 35.

Offset 1, canonical program `A142078.P18378913914792671546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3290 terms. -/
def A142078 (n : ℕ) : ℤ :=
  (A142078.P18378913914792671546.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3290 terms. -/
def A142078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142079.P13141199653635146576

`p?[35*n+4]`
-/

namespace A142079.P13141199653635146576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142079.P13141199653635146576

noncomputable section

/-- A142079: Primes congruent to 4 mod 35.

Offset 1, canonical program `A142079.P13141199653635146576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. -/
def A142079 (n : ℕ) : ℤ :=
  (A142079.P13141199653635146576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. -/
def A142079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142080.P15792423998821649615

`p?[35*n+6]`
-/

namespace A142080.P15792423998821649615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142080.P15792423998821649615

noncomputable section

/-- A142080: Primes congruent to 6 mod 35.

Offset 1, canonical program `A142080.P15792423998821649615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A142080 (n : ℕ) : ℤ :=
  (A142080.P15792423998821649615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A142080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142081.P12117061539707555917

`p?[35*n+8]`
-/

namespace A142081.P12117061539707555917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142081.P12117061539707555917

noncomputable section

/-- A142081: Primes congruent to 8 mod 35.

Offset 1, canonical program `A142081.P12117061539707555917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. -/
def A142081 (n : ℕ) : ℤ :=
  (A142081.P12117061539707555917.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. -/
def A142081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142083.P10277068139363312282

`p?[35*n+11]`
-/

namespace A142083.P10277068139363312282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142083.P10277068139363312282

noncomputable section

/-- A142083: Primes congruent to 11 mod 35.

Offset 1, canonical program `A142083.P10277068139363312282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A142083 (n : ℕ) : ℤ :=
  (A142083.P10277068139363312282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A142083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142084.P10505866821454008841

`p?[35*n+12]`
-/

namespace A142084.P10505866821454008841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142084.P10505866821454008841

noncomputable section

/-- A142084: Primes congruent to 12 mod 35.

Offset 1, canonical program `A142084.P10505866821454008841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A142084 (n : ℕ) : ℤ :=
  (A142084.P10505866821454008841.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A142084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142086.P6530813108441564761

`p?[35*n-19]`
-/

namespace A142086.P6530813108441564761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142086.P6530813108441564761

noncomputable section

/-- A142086: Primes congruent to 16 mod 35.

Offset 1, canonical program `A142086.P6530813108441564761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142086 (n : ℕ) : ℤ :=
  A142086.P6530813108441564761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142087.P14344118086552666950

`p?[35*n-18]`
-/

namespace A142087.P14344118086552666950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142087.P14344118086552666950

noncomputable section

/-- A142087: Primes congruent to 17 mod 35.

Offset 1, canonical program `A142087.P14344118086552666950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3263 terms. -/
def A142087 (n : ℕ) : ℤ :=
  A142087.P14344118086552666950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3263 terms. -/
def A142087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142088.P16642203838786314292

`p?[35*n+18]`
-/

namespace A142088.P16642203838786314292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142088.P16642203838786314292

noncomputable section

/-- A142088: Primes congruent to 18 mod 35.

Offset 1, canonical program `A142088.P16642203838786314292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. -/
def A142088 (n : ℕ) : ℤ :=
  (A142088.P16642203838786314292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. -/
def A142088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142090.P301763299342873140

`p?[35*n-13]`
-/

namespace A142090.P301763299342873140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142090.P301763299342873140

noncomputable section

/-- A142090: Primes congruent to 22 mod 35.

Offset 1, canonical program `A142090.P301763299342873140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A142090 (n : ℕ) : ℤ :=
  A142090.P301763299342873140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A142090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142091.P5312883380898051111

`p?[35*n-12]`
-/

namespace A142091.P5312883380898051111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142091.P5312883380898051111

noncomputable section

/-- A142091: Primes congruent to 23 mod 35.

Offset 1, canonical program `A142091.P5312883380898051111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3258 terms. -/
def A142091 (n : ℕ) : ℤ :=
  A142091.P5312883380898051111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3258 terms. -/
def A142091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142092.P5017379542963769773

`p?[35*n-11]`
-/

namespace A142092.P5017379542963769773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142092.P5017379542963769773

noncomputable section

/-- A142092: Primes congruent to 24 mod 35.

Offset 1, canonical program `A142092.P5017379542963769773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3259 terms. -/
def A142092 (n : ℕ) : ℤ :=
  A142092.P5017379542963769773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3259 terms. -/
def A142092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142093.P5613027184552983238

`p?[35*n-9]`
-/

namespace A142093.P5613027184552983238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142093.P5613027184552983238

noncomputable section

/-- A142093: Primes congruent to 26 mod 35.

Offset 1, canonical program `A142093.P5613027184552983238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. -/
def A142093 (n : ℕ) : ℤ :=
  A142093.P5613027184552983238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. -/
def A142093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142094.P13754732341440805904

`p?[35*n-8]`
-/

namespace A142094.P13754732341440805904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142094.P13754732341440805904

noncomputable section

/-- A142094: Primes congruent to 27 mod 35.

Offset 1, canonical program `A142094.P13754732341440805904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A142094 (n : ℕ) : ℤ :=
  A142094.P13754732341440805904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A142094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142096.P10624013665993607037

`p?[35*n-4]`
-/

namespace A142096.P10624013665993607037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142096.P10624013665993607037

noncomputable section

/-- A142096: Primes congruent to 31 mod 35.

Offset 1, canonical program `A142096.P10624013665993607037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3293 terms. -/
def A142096 (n : ℕ) : ℤ :=
  A142096.P10624013665993607037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3293 terms. -/
def A142096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142097.P18409017806951583958

`p?[35*n-3]`
-/

namespace A142097.P18409017806951583958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142097.P18409017806951583958

noncomputable section

/-- A142097: Primes congruent to 32 mod 35.

Offset 1, canonical program `A142097.P18409017806951583958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A142097 (n : ℕ) : ℤ :=
  A142097.P18409017806951583958.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A142097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142098.P10542078899576561010

`p?[35*n-2]`
-/

namespace A142098.P10542078899576561010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142098.P10542078899576561010

noncomputable section

/-- A142098: Primes congruent to 33 mod 35.

Offset 1, canonical program `A142098.P10542078899576561010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A142098 (n : ℕ) : ℤ :=
  A142098.P10542078899576561010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A142098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142099.P7691558053280592165

`p?[35*n-1]`
-/

namespace A142099.P7691558053280592165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (35 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142099.P7691558053280592165

noncomputable section

/-- A142099: Primes congruent to 34 mod 35.

Offset 1, canonical program `A142099.P7691558053280592165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. -/
def A142099 (n : ℕ) : ℤ :=
  A142099.P7691558053280592165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. -/
def A142099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142101.P13528665498652263920

`p?[36*n+5]`
-/

namespace A142101.P13528665498652263920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142101.P13528665498652263920

noncomputable section

/-- A142101: Primes congruent to 5 mod 36.

Offset 1, canonical program `A142101.P13528665498652263920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6531 terms. -/
def A142101 (n : ℕ) : ℤ :=
  (A142101.P13528665498652263920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6531 terms. -/
def A142101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142102.P12293802350160398836

`p?[36*n+7]`
-/

namespace A142102.P12293802350160398836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142102.P12293802350160398836

noncomputable section

/-- A142102: Primes congruent to 7 mod 36.

Offset 1, canonical program `A142102.P12293802350160398836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6549 terms. -/
def A142102 (n : ℕ) : ℤ :=
  (A142102.P12293802350160398836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6549 terms. -/
def A142102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142103.P10005846490017536618

`p?[6*6*n+11]`
-/

namespace A142103.P10005846490017536618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (6 * n) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142103.P10005846490017536618

noncomputable section

/-- A142103: Primes congruent to 11 mod 36.

Offset 1, canonical program `A142103.P10005846490017536618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6547 terms. -/
def A142103 (n : ℕ) : ℤ :=
  (A142103.P10005846490017536618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6547 terms. -/
def A142103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142104.P2589743799997506154

`p?[36*n+13]`
-/

namespace A142104.P2589743799997506154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142104.P2589743799997506154

noncomputable section

/-- A142104: Primes congruent to 13 mod 36.

Offset 1, canonical program `A142104.P2589743799997506154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6526 terms. -/
def A142104 (n : ℕ) : ℤ :=
  (A142104.P2589743799997506154.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6526 terms. -/
def A142104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142105.P18419970149999654724

`p?[36*n+17]`
-/

namespace A142105.P18419970149999654724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142105.P18419970149999654724

noncomputable section

/-- A142105: Primes congruent to 17 mod 36.

Offset 1, canonical program `A142105.P18419970149999654724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A142105 (n : ℕ) : ℤ :=
  (A142105.P18419970149999654724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6529 terms. -/
def A142105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142106.P10105270289269678569

`p?[6*6*n-17]`
-/

namespace A142106.P10105270289269678569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (6 * n) : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142106.P10105270289269678569

noncomputable section

/-- A142106: Primes congruent to 19 mod 36.

Offset 1, canonical program `A142106.P10105270289269678569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A142106 (n : ℕ) : ℤ :=
  A142106.P10105270289269678569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A142106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142107.P12579798865330129615

`p?[6*6*n+23]`
-/

namespace A142107.P12579798865330129615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (6 * n) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142107.P12579798865330129615

noncomputable section

/-- A142107: Primes congruent to 23 mod 36.

Offset 1, canonical program `A142107.P12579798865330129615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6537 terms. -/
def A142107 (n : ℕ) : ℤ :=
  (A142107.P12579798865330129615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6537 terms. -/
def A142107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142108.P2153401802580103333

`p?[6*6*n-11]`
-/

namespace A142108.P2153401802580103333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (6 * n) : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142108.P2153401802580103333

noncomputable section

/-- A142108: Primes congruent to 25 mod 36.

Offset 1, canonical program `A142108.P2153401802580103333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6549 terms. -/
def A142108 (n : ℕ) : ℤ :=
  A142108.P2153401802580103333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6549 terms. -/
def A142108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142109.P4050136104060084803

`p?[6*6*n-7]`
-/

namespace A142109.P4050136104060084803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (6 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142109.P4050136104060084803

noncomputable section

/-- A142109: Primes congruent to 29 mod 36.

Offset 1, canonical program `A142109.P4050136104060084803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6551 terms. -/
def A142109 (n : ℕ) : ℤ :=
  A142109.P4050136104060084803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6551 terms. -/
def A142109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142110.P8631013865567114222

`p?[36*n-5]`
-/

namespace A142110.P8631013865567114222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (36 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142110.P8631013865567114222

noncomputable section

/-- A142110: Primes congruent to 31 mod 36.

Offset 1, canonical program `A142110.P8631013865567114222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6544 terms. -/
def A142110 (n : ℕ) : ℤ :=
  A142110.P8631013865567114222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6544 terms. -/
def A142110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142111.P16602472380021793625

`p?[36*n-1]`
-/

namespace A142111.P16602472380021793625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (36 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142111.P16602472380021793625

noncomputable section

/-- A142111: Primes congruent to 35 mod 36.

Offset 1, canonical program `A142111.P16602472380021793625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6570 terms. -/
def A142111 (n : ℕ) : ℤ :=
  A142111.P16602472380021793625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6570 terms. -/
def A142111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142112.P1921263212343522534

`p?[37*n+2]`
-/

namespace A142112.P1921263212343522534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142112.P1921263212343522534

noncomputable section

/-- A142112: Primes congruent to 2 mod 37.

Offset 1, canonical program `A142112.P1921263212343522534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142112 (n : ℕ) : ℤ :=
  (A142112.P1921263212343522534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142113.P17289297828169023056

`p?[37*(n-3)+4]`
-/

namespace A142113.P17289297828169023056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * ((n : ℤ) - 3) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142113.P17289297828169023056

noncomputable section

/-- A142113: Primes congruent to 4 mod 37.

Offset 1, canonical program `A142113.P17289297828169023056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A142113 (n : ℕ) : ℤ :=
  A142113.P17289297828169023056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A142113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142114.P4486760685611646182

`p?[37*n+5]`
-/

namespace A142114.P4486760685611646182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142114.P4486760685611646182

noncomputable section

/-- A142114: Primes congruent to 5 mod 37.

Offset 1, canonical program `A142114.P4486760685611646182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2157 terms. -/
def A142114 (n : ℕ) : ℤ :=
  (A142114.P4486760685611646182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2157 terms. -/
def A142114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142115.P4611097270426880112

`p?[37*n+6]`
-/

namespace A142115.P4611097270426880112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142115.P4611097270426880112

noncomputable section

/-- A142115: Primes congruent to 6 mod 37.

Offset 1, canonical program `A142115.P4611097270426880112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A142115 (n : ℕ) : ℤ :=
  (A142115.P4611097270426880112.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. -/
def A142115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142116.P5009298204523367086

`p?[37*n+7]`
-/

namespace A142116.P5009298204523367086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142116.P5009298204523367086

noncomputable section

/-- A142116: Primes congruent to 7 mod 37.

Offset 1, canonical program `A142116.P5009298204523367086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. -/
def A142116 (n : ℕ) : ℤ :=
  (A142116.P5009298204523367086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. -/
def A142116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142117.P3270763359279736161

`p?[37*n+8]`
-/

namespace A142117.P3270763359279736161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142117.P3270763359279736161

noncomputable section

/-- A142117: Primes congruent to 8 mod 37.

Offset 1, canonical program `A142117.P3270763359279736161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. -/
def A142117 (n : ℕ) : ℤ :=
  (A142117.P3270763359279736161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. -/
def A142117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142118.P3005814989632638983

`p?[37*n+9]`
-/

namespace A142118.P3005814989632638983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142118.P3005814989632638983

noncomputable section

/-- A142118: Primes congruent to 9 mod 37.

Offset 1, canonical program `A142118.P3005814989632638983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A142118 (n : ℕ) : ℤ :=
  (A142118.P3005814989632638983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A142118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142119.P4007358293938638831

`p?[37*n+10]`
-/

namespace A142119.P4007358293938638831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142119.P4007358293938638831

noncomputable section

/-- A142119: Primes congruent to 10 mod 37.

Offset 1, canonical program `A142119.P4007358293938638831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A142119 (n : ℕ) : ℤ :=
  (A142119.P4007358293938638831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A142119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142120.P13542849916616082003

`p?[74*n+11]`
-/

namespace A142120.P13542849916616082003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  74 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142120.P13542849916616082003

noncomputable section

/-- A142120: Primes congruent to 11 mod 37.

Offset 1, canonical program `A142120.P13542849916616082003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A142120 (n : ℕ) : ℤ :=
  (A142120.P13542849916616082003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A142120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142121.P1153352495093081478

`p?[37*n+12]`
-/

namespace A142121.P1153352495093081478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142121.P1153352495093081478

noncomputable section

/-- A142121: Primes congruent to 12 mod 37.

Offset 1, canonical program `A142121.P1153352495093081478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A142121 (n : ℕ) : ℤ :=
  (A142121.P1153352495093081478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A142121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142122.P16262793009237207886

`p?[37*n+13]`
-/

namespace A142122.P16262793009237207886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142122.P16262793009237207886

noncomputable section

/-- A142122: Primes congruent to 13 mod 37.

Offset 1, canonical program `A142122.P16262793009237207886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. -/
def A142122 (n : ℕ) : ℤ :=
  (A142122.P16262793009237207886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. -/
def A142122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142123.P17491403591963953120

`p?[37*n+14]`
-/

namespace A142123.P17491403591963953120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142123.P17491403591963953120

noncomputable section

/-- A142123: Primes congruent to 14 mod 37.

Offset 1, canonical program `A142123.P17491403591963953120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. -/
def A142123 (n : ℕ) : ℤ :=
  (A142123.P17491403591963953120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. -/
def A142123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142124.P14320464731908662826

`p?[37*n+15]`
-/

namespace A142124.P14320464731908662826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142124.P14320464731908662826

noncomputable section

/-- A142124: Primes congruent to 15 mod 37.

Offset 1, canonical program `A142124.P14320464731908662826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A142124 (n : ℕ) : ℤ :=
  (A142124.P14320464731908662826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A142124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142125.P12634931141477539271

`p?[37*n+16]`
-/

namespace A142125.P12634931141477539271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142125.P12634931141477539271

noncomputable section

/-- A142125: Primes congruent to 16 mod 37.

Offset 1, canonical program `A142125.P12634931141477539271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A142125 (n : ℕ) : ℤ :=
  (A142125.P12634931141477539271.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A142125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142126.P10049760971859399161

`p?[37*n+17]`
-/

namespace A142126.P10049760971859399161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142126.P10049760971859399161

noncomputable section

/-- A142126: Primes congruent to 17 mod 37.

Offset 1, canonical program `A142126.P10049760971859399161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. -/
def A142126 (n : ℕ) : ℤ :=
  (A142126.P10049760971859399161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2206 terms. -/
def A142126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142127.P18163112966649201267

`p?[37*n+18]`
-/

namespace A142127.P18163112966649201267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142127.P18163112966649201267

noncomputable section

/-- A142127: Primes congruent to 18 mod 37.

Offset 1, canonical program `A142127.P18163112966649201267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. -/
def A142127 (n : ℕ) : ℤ :=
  (A142127.P18163112966649201267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. -/
def A142127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142128.P11688080063808048965

`p?[a(n-1)+37]` with `a(0)=19`
-/

namespace A142128.P11688080063808048965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142128.P11688080063808048965

noncomputable section

/-- A142128: Primes congruent to 19 mod 37.

Offset 1, canonical program `A142128.P11688080063808048965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A142128 (n : ℕ) : ℤ :=
  (A142128.P11688080063808048965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A142128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142129.P5453870921160751379

`p?[37*n-17]`
-/

namespace A142129.P5453870921160751379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142129.P5453870921160751379

noncomputable section

/-- A142129: Primes congruent to 20 mod 37.

Offset 1, canonical program `A142129.P5453870921160751379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142129 (n : ℕ) : ℤ :=
  A142129.P5453870921160751379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142130.P14951807227969313191

`p?[37*n-16]`
-/

namespace A142130.P14951807227969313191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142130.P14951807227969313191

noncomputable section

/-- A142130: Primes congruent to 21 mod 37.

Offset 1, canonical program `A142130.P14951807227969313191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2199 terms. -/
def A142130 (n : ℕ) : ℤ :=
  A142130.P14951807227969313191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2199 terms. -/
def A142130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142131.P9998329005519566841

`p?[37*n-15]`
-/

namespace A142131.P9998329005519566841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142131.P9998329005519566841

noncomputable section

/-- A142131: Primes congruent to 22 mod 37.

Offset 1, canonical program `A142131.P9998329005519566841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142131 (n : ℕ) : ℤ :=
  A142131.P9998329005519566841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142132.P2584337457914182453

`p?[37*n-14]`
-/

namespace A142132.P2584337457914182453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142132.P2584337457914182453

noncomputable section

/-- A142132: Primes congruent to 23 mod 37.

Offset 1, canonical program `A142132.P2584337457914182453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A142132 (n : ℕ) : ℤ :=
  A142132.P2584337457914182453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A142132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142133.P3400429704081329010

`p?[37*n-13]`
-/

namespace A142133.P3400429704081329010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142133.P3400429704081329010

noncomputable section

/-- A142133: Primes congruent to 24 mod 37.

Offset 1, canonical program `A142133.P3400429704081329010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A142133 (n : ℕ) : ℤ :=
  A142133.P3400429704081329010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A142133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142134.P4536532517590107191

`p?[37*n-12]`
-/

namespace A142134.P4536532517590107191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142134.P4536532517590107191

noncomputable section

/-- A142134: Primes congruent to 25 mod 37.

Offset 1, canonical program `A142134.P4536532517590107191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A142134 (n : ℕ) : ℤ :=
  A142134.P4536532517590107191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. -/
def A142134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142135.P10852249460790911615

`p?[74*n-11]`
-/

namespace A142135.P10852249460790911615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (74 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142135.P10852249460790911615

noncomputable section

/-- A142135: Primes congruent to 26 mod 37.

Offset 1, canonical program `A142135.P10852249460790911615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A142135 (n : ℕ) : ℤ :=
  A142135.P10852249460790911615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A142135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142136.P1428996079723749002

`p?[37*n-10]`
-/

namespace A142136.P1428996079723749002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142136.P1428996079723749002

noncomputable section

/-- A142136: Primes congruent to 27 mod 37.

Offset 1, canonical program `A142136.P1428996079723749002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2171 terms. -/
def A142136 (n : ℕ) : ℤ :=
  A142136.P1428996079723749002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2171 terms. -/
def A142136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142137.P6420679645146234910

`p?[74*n-9]`
-/

namespace A142137.P6420679645146234910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (74 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142137.P6420679645146234910

noncomputable section

/-- A142137: Primes congruent to 28 mod 37.

Offset 1, canonical program `A142137.P6420679645146234910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142137 (n : ℕ) : ℤ :=
  A142137.P6420679645146234910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142138.P746844966995690464

`p?[37*n-8]`
-/

namespace A142138.P746844966995690464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142138.P746844966995690464

noncomputable section

/-- A142138: Primes congruent to 29 mod 37.

Offset 1, canonical program `A142138.P746844966995690464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A142138 (n : ℕ) : ℤ :=
  A142138.P746844966995690464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A142138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142139.P4780684413859799696

`p?[37*n-7]`
-/

namespace A142139.P4780684413859799696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142139.P4780684413859799696

noncomputable section

/-- A142139: Primes congruent to 30 mod 37.

Offset 1, canonical program `A142139.P4780684413859799696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A142139 (n : ℕ) : ℤ :=
  A142139.P4780684413859799696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A142139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142140.P16729906437606079837

`p?[37*n-6]`
-/

namespace A142140.P16729906437606079837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142140.P16729906437606079837

noncomputable section

/-- A142140: Primes congruent to 31 mod 37.

Offset 1, canonical program `A142140.P16729906437606079837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2162 terms. -/
def A142140 (n : ℕ) : ℤ :=
  A142140.P16729906437606079837.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2162 terms. -/
def A142140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142141.P4814596461968984392

`p?[37*n-5]`
-/

namespace A142141.P4814596461968984392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142141.P4814596461968984392

noncomputable section

/-- A142141: Primes congruent to 32 mod 37.

Offset 1, canonical program `A142141.P4814596461968984392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A142141 (n : ℕ) : ℤ :=
  A142141.P4814596461968984392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A142141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142142.P6164594379237733275

`p?[37*n-4]`
-/

namespace A142142.P6164594379237733275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142142.P6164594379237733275

noncomputable section

/-- A142142: Primes congruent to 33 mod 37.

Offset 1, canonical program `A142142.P6164594379237733275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2158 terms. -/
def A142142 (n : ℕ) : ℤ :=
  A142142.P6164594379237733275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2158 terms. -/
def A142142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142143.P11226821550673919488

`p?[37*n-3]`
-/

namespace A142143.P11226821550673919488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142143.P11226821550673919488

noncomputable section

/-- A142143: Primes congruent to 34 mod 37.

Offset 1, canonical program `A142143.P11226821550673919488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A142143 (n : ℕ) : ℤ :=
  A142143.P11226821550673919488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A142143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142144.P3439492578117216224

`p?[37*n-2]`
-/

namespace A142144.P3439492578117216224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142144.P3439492578117216224

noncomputable section

/-- A142144: Primes congruent to 35 mod 37.

Offset 1, canonical program `A142144.P3439492578117216224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A142144 (n : ℕ) : ℤ :=
  A142144.P3439492578117216224.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A142144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142145.P10006114690202515084

`p?[37*n-1]`
-/

namespace A142145.P10006114690202515084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (37 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142145.P10006114690202515084

noncomputable section

/-- A142145: Primes congruent to 36 mod 37.

Offset 1, canonical program `A142145.P10006114690202515084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A142145 (n : ℕ) : ℤ :=
  A142145.P10006114690202515084.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A142145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142149.P16619398115555029434

`xor(n, n-gcd(n, ∑[n]))`
-/

namespace A142149.P16619398115555029434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A142149.P16619398115555029434

noncomputable section

/-- A142149: a(n) = XOR{k OR (n-k): 0<=k<=n}.

Offset 0, canonical program `A142149.P16619398115555029434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142149 (n : ℕ) : ℤ :=
  A142149.P16619398115555029434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142151.P14339158606082977722

`or(n, and(-(n+2), a(n-1)))` with `a(0)=0`
-/

namespace A142151.P14339158606082977722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) (Int.land (-(n + 2 : ℤ)) (a (n - 1)))

end

end A142151.P14339158606082977722

noncomputable section

/-- A142151: a(n) = OR{k XOR (n-k): 0<=k<=n}.

Offset 0, canonical program `A142151.P14339158606082977722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142151 (n : ℕ) : ℤ :=
  A142151.P14339158606082977722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142159.P13823873694496372423

`p?[39*n+1]`
-/

namespace A142159.P13823873694496372423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142159.P13823873694496372423

noncomputable section

/-- A142159: Primes congruent to 1 mod 39.

Offset 1, canonical program `A142159.P13823873694496372423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. -/
def A142159 (n : ℕ) : ℤ :=
  (A142159.P13823873694496372423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. -/
def A142159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142160.P16505545814807861863

`p?[39*n+2]`
-/

namespace A142160.P16505545814807861863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142160.P16505545814807861863

noncomputable section

/-- A142160: Primes congruent to 2 mod 39.

Offset 1, canonical program `A142160.P16505545814807861863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. -/
def A142160 (n : ℕ) : ℤ :=
  (A142160.P16505545814807861863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. -/
def A142160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142161.P15009882708745755107

`p?[39*n+4]`
-/

namespace A142161.P15009882708745755107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142161.P15009882708745755107

noncomputable section

/-- A142161: Primes congruent to 4 mod 39.

Offset 1, canonical program `A142161.P15009882708745755107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. -/
def A142161 (n : ℕ) : ℤ :=
  (A142161.P15009882708745755107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. -/
def A142161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142162.P17850514868329960176

`p?[39*n+5]`
-/

namespace A142162.P17850514868329960176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142162.P17850514868329960176

noncomputable section

/-- A142162: Primes congruent to 5 mod 39.

Offset 1, canonical program `A142162.P17850514868329960176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. -/
def A142162 (n : ℕ) : ℤ :=
  (A142162.P17850514868329960176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. -/
def A142162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142163.P353492255387975206

`p?[39*n+7]`
-/

namespace A142163.P353492255387975206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142163.P353492255387975206

noncomputable section

/-- A142163: Primes congruent to 7 mod 39.

Offset 1, canonical program `A142163.P353492255387975206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A142163 (n : ℕ) : ℤ :=
  (A142163.P353492255387975206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A142163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142164.P11559206218273394558

`p?[39*n+8]`
-/

namespace A142164.P11559206218273394558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142164.P11559206218273394558

noncomputable section

/-- A142164: Primes congruent to 8 mod 39.

Offset 1, canonical program `A142164.P11559206218273394558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142164 (n : ℕ) : ℤ :=
  (A142164.P11559206218273394558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142165.P3575926549960295279

`p?[39*n+10]`
-/

namespace A142165.P3575926549960295279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142165.P3575926549960295279

noncomputable section

/-- A142165: Primes congruent to 10 mod 39.

Offset 1, canonical program `A142165.P3575926549960295279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3289 terms. -/
def A142165 (n : ℕ) : ℤ :=
  (A142165.P3575926549960295279.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3289 terms. -/
def A142165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142166.P17748124684229174715

`p?[a(n-1)+39]` with `a(0)=11`
-/

namespace A142166.P17748124684229174715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 39

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142166.P17748124684229174715

noncomputable section

/-- A142166: Primes congruent to 11 mod 39.

Offset 1, canonical program `A142166.P17748124684229174715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. -/
def A142166 (n : ℕ) : ℤ :=
  (A142166.P17748124684229174715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. -/
def A142166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142167.P5362429052921519213

`p?[39*n+14]`
-/

namespace A142167.P5362429052921519213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142167.P5362429052921519213

noncomputable section

/-- A142167: Primes congruent to 14 mod 39.

Offset 1, canonical program `A142167.P5362429052921519213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3268 terms. -/
def A142167 (n : ℕ) : ℤ :=
  (A142167.P5362429052921519213.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3268 terms. -/
def A142167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142169.P15279442436490851081

`p?[39*n+17]`
-/

namespace A142169.P15279442436490851081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142169.P15279442436490851081

noncomputable section

/-- A142169: Primes congruent to 17 mod 39.

Offset 1, canonical program `A142169.P15279442436490851081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3254 terms. -/
def A142169 (n : ℕ) : ℤ :=
  (A142169.P15279442436490851081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3254 terms. -/
def A142169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142170.P17066317394588974081

`p?[39*n+19]`
-/

namespace A142170.P17066317394588974081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142170.P17066317394588974081

noncomputable section

/-- A142170: Primes congruent to 19 mod 39.

Offset 1, canonical program `A142170.P17066317394588974081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142170 (n : ℕ) : ℤ :=
  (A142170.P17066317394588974081.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142171.P2901914737085389780

`p?[39*n-19]`
-/

namespace A142171.P2901914737085389780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142171.P2901914737085389780

noncomputable section

/-- A142171: Primes congruent to 20 mod 39.

Offset 1, canonical program `A142171.P2901914737085389780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3262 terms. -/
def A142171 (n : ℕ) : ℤ :=
  A142171.P2901914737085389780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3262 terms. -/
def A142171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142172.P9325815831726527394

`p?[39*n-17]`
-/

namespace A142172.P9325815831726527394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142172.P9325815831726527394

noncomputable section

/-- A142172: Primes congruent to 22 mod 39.

Offset 1, canonical program `A142172.P9325815831726527394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142172 (n : ℕ) : ℤ :=
  A142172.P9325815831726527394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142173.P16811257775198313937

`p?[39*n-16]`
-/

namespace A142173.P16811257775198313937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142173.P16811257775198313937

noncomputable section

/-- A142173: Primes congruent to 23 mod 39.

Offset 1, canonical program `A142173.P16811257775198313937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A142173 (n : ℕ) : ℤ :=
  A142173.P16811257775198313937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. -/
def A142173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142174.P10215529743714880878

`p?[39*n-14]`
-/

namespace A142174.P10215529743714880878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142174.P10215529743714880878

noncomputable section

/-- A142174: Primes congruent to 25 mod 39.

Offset 1, canonical program `A142174.P10215529743714880878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. -/
def A142174 (n : ℕ) : ℤ :=
  A142174.P10215529743714880878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3271 terms. -/
def A142174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142177.P14973679103742064160

`p?[39*n-8]`
-/

namespace A142177.P14973679103742064160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142177.P14973679103742064160

noncomputable section

/-- A142177: Primes congruent to 31 mod 39.

Offset 1, canonical program `A142177.P14973679103742064160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A142177 (n : ℕ) : ℤ :=
  A142177.P14973679103742064160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A142177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142178.P10660009293154848687

`p?[78*n-7]`
-/

namespace A142178.P10660009293154848687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (78 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142178.P10660009293154848687

noncomputable section

/-- A142178: Primes congruent to 32 mod 39.

Offset 1, canonical program `A142178.P10660009293154848687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. -/
def A142178 (n : ℕ) : ℤ :=
  A142178.P10660009293154848687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. -/
def A142178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142179.P15953761654610747245

`p?[39*n-5]`
-/

namespace A142179.P15953761654610747245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142179.P15953761654610747245

noncomputable section

/-- A142179: Primes congruent to 34 mod 39.

Offset 1, canonical program `A142179.P15953761654610747245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3295 terms. -/
def A142179 (n : ℕ) : ℤ :=
  A142179.P15953761654610747245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3295 terms. -/
def A142179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142180.P1182943201805809202

`p?[39*n-4]`
-/

namespace A142180.P1182943201805809202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142180.P1182943201805809202

noncomputable section

/-- A142180: Primes congruent to 35 mod 39.

Offset 1, canonical program `A142180.P1182943201805809202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3286 terms. -/
def A142180 (n : ℕ) : ℤ :=
  A142180.P1182943201805809202.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3286 terms. -/
def A142180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142181.P12862546500836666871

`p?[39*n-2]`
-/

namespace A142181.P12862546500836666871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142181.P12862546500836666871

noncomputable section

/-- A142181: Primes congruent to 37 mod 39.

Offset 1, canonical program `A142181.P12862546500836666871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. -/
def A142181 (n : ℕ) : ℤ :=
  A142181.P12862546500836666871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. -/
def A142181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142182.P6033792183540617985

`p?[39*n-1]`
-/

namespace A142182.P6033792183540617985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (39 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142182.P6033792183540617985

noncomputable section

/-- A142182: Primes congruent to 38 mod 39.

Offset 1, canonical program `A142182.P6033792183540617985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. -/
def A142182 (n : ℕ) : ℤ :=
  A142182.P6033792183540617985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. -/
def A142182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142184.P2814003219085699518

`p?[40*n+3]`
-/

namespace A142184.P2814003219085699518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142184.P2814003219085699518

noncomputable section

/-- A142184: Primes congruent to 3 mod 40.

Offset 1, canonical program `A142184.P2814003219085699518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4924 terms. -/
def A142184 (n : ℕ) : ℤ :=
  (A142184.P2814003219085699518.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4924 terms. -/
def A142184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142187.P9189449944067263993

`p?[40*n+11]`
-/

namespace A142187.P9189449944067263993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142187.P9189449944067263993

noncomputable section

/-- A142187: Primes congruent to 11 mod 40.

Offset 1, canonical program `A142187.P9189449944067263993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4916 terms. -/
def A142187 (n : ℕ) : ℤ :=
  (A142187.P9189449944067263993.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4916 terms. -/
def A142187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142188.P7306125609912037089

`p?[5*8*n+13]`
-/

namespace A142188.P7306125609912037089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (8 * n) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142188.P7306125609912037089

noncomputable section

/-- A142188: Primes congruent to 13 mod 40.

Offset 1, canonical program `A142188.P7306125609912037089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4936 terms. -/
def A142188 (n : ℕ) : ℤ :=
  (A142188.P7306125609912037089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4936 terms. -/
def A142188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142189.P12715870842719578700

`p?[5*8*n-23]`
-/

namespace A142189.P12715870842719578700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (8 * n) : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142189.P12715870842719578700

noncomputable section

/-- A142189: Primes congruent to 17 mod 40.

Offset 1, canonical program `A142189.P12715870842719578700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4929 terms. -/
def A142189 (n : ℕ) : ℤ :=
  A142189.P12715870842719578700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4929 terms. -/
def A142189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142190.P13230639613033854165

`p?[40*n+19]`
-/

namespace A142190.P13230639613033854165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142190.P13230639613033854165

noncomputable section

/-- A142190: Primes congruent to 19 mod 40.

Offset 1, canonical program `A142190.P13230639613033854165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A142190 (n : ℕ) : ℤ :=
  (A142190.P13230639613033854165.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A142190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142191.P13342722853951144925

`p?[40*n+21]`
-/

namespace A142191.P13342722853951144925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142191.P13342722853951144925

noncomputable section

/-- A142191: Primes congruent to 21 mod 40.

Offset 1, canonical program `A142191.P13342722853951144925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4879 terms. -/
def A142191 (n : ℕ) : ℤ :=
  (A142191.P13342722853951144925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4879 terms. -/
def A142191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142193.P14033784844832074451

`p?[40*n-13]`
-/

namespace A142193.P14033784844832074451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142193.P14033784844832074451

noncomputable section

/-- A142193: Primes congruent to 27 mod 40.

Offset 1, canonical program `A142193.P14033784844832074451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4883 terms. -/
def A142193 (n : ℕ) : ℤ :=
  A142193.P14033784844832074451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4883 terms. -/
def A142193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142194.P2163652759226913528

`p?[40*n-11]`
-/

namespace A142194.P2163652759226913528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142194.P2163652759226913528

noncomputable section

/-- A142194: Primes congruent to 29 mod 40.

Offset 1, canonical program `A142194.P2163652759226913528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. -/
def A142194 (n : ℕ) : ℤ :=
  A142194.P2163652759226913528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4906 terms. -/
def A142194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142195.P9314822424547242044

`p?[5*8*n-9]`
-/

namespace A142195.P9314822424547242044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (8 * n) : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142195.P9314822424547242044

noncomputable section

/-- A142195: Primes congruent to 31 mod 40.

Offset 1, canonical program `A142195.P9314822424547242044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4943 terms. -/
def A142195 (n : ℕ) : ℤ :=
  A142195.P9314822424547242044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4943 terms. -/
def A142195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142196.P1243520336392400460

`p?[40*n-7]`
-/

namespace A142196.P1243520336392400460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142196.P1243520336392400460

noncomputable section

/-- A142196: Primes congruent to 33 mod 40.

Offset 1, canonical program `A142196.P1243520336392400460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A142196 (n : ℕ) : ℤ :=
  A142196.P1243520336392400460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A142196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142197.P12169617643097122472

`p?[40*n-3]`
-/

namespace A142197.P12169617643097122472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142197.P12169617643097122472

noncomputable section

/-- A142197: Primes congruent to 37 mod 40.

Offset 1, canonical program `A142197.P12169617643097122472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A142197 (n : ℕ) : ℤ :=
  A142197.P12169617643097122472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4901 terms. -/
def A142197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142198.P1079602201654401913

`p?[40*n-1]`
-/

namespace A142198.P1079602201654401913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (40 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142198.P1079602201654401913

noncomputable section

/-- A142198: Primes congruent to 39 mod 40.

Offset 1, canonical program `A142198.P1079602201654401913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4907 terms. -/
def A142198 (n : ℕ) : ℤ :=
  A142198.P1079602201654401913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4907 terms. -/
def A142198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142199.P6837506524554160366

`p?[41*n+2]`
-/

namespace A142199.P6837506524554160366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142199.P6837506524554160366

noncomputable section

/-- A142199: Primes congruent to 2 mod 41.

Offset 1, canonical program `A142199.P6837506524554160366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1951 terms. -/
def A142199 (n : ℕ) : ℤ :=
  (A142199.P6837506524554160366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1951 terms. -/
def A142199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142200.P17436572599243192909

`p?[41*n+3]`
-/

namespace A142200.P17436572599243192909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142200.P17436572599243192909

noncomputable section

/-- A142200: Primes congruent to 3 mod 41.

Offset 1, canonical program `A142200.P17436572599243192909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. -/
def A142200 (n : ℕ) : ℤ :=
  (A142200.P17436572599243192909.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. -/
def A142200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142201.P1722917492615738082

`p?[41*n+4]`
-/

namespace A142201.P1722917492615738082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142201.P1722917492615738082

noncomputable section

/-- A142201: Primes congruent to 4 mod 41.

Offset 1, canonical program `A142201.P1722917492615738082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1953 terms. -/
def A142201 (n : ℕ) : ℤ :=
  (A142201.P1722917492615738082.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1953 terms. -/
def A142201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142202.P3070907779567306481

`p?[41*n+5]`
-/

namespace A142202.P3070907779567306481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142202.P3070907779567306481

noncomputable section

/-- A142202: Primes congruent to 5 mod 41.

Offset 1, canonical program `A142202.P3070907779567306481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A142202 (n : ℕ) : ℤ :=
  (A142202.P3070907779567306481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A142202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142203.P6531071673318381671

`p?[41*n+6]`
-/

namespace A142203.P6531071673318381671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142203.P6531071673318381671

noncomputable section

/-- A142203: Primes congruent to 6 mod 41.

Offset 1, canonical program `A142203.P6531071673318381671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1957 terms. -/
def A142203 (n : ℕ) : ℤ :=
  (A142203.P6531071673318381671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1957 terms. -/
def A142203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142204.P796493894810743383

`p?[41*n+7]`
-/

namespace A142204.P796493894810743383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142204.P796493894810743383

noncomputable section

/-- A142204: Primes congruent to 7 mod 41.

Offset 1, canonical program `A142204.P796493894810743383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A142204 (n : ℕ) : ℤ :=
  (A142204.P796493894810743383.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. -/
def A142204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142205.P1845860967050143778

`p?[41*n+8]`
-/

namespace A142205.P1845860967050143778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142205.P1845860967050143778

noncomputable section

/-- A142205: Primes congruent to 8 mod 41.

Offset 1, canonical program `A142205.P1845860967050143778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A142205 (n : ℕ) : ℤ :=
  (A142205.P1845860967050143778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A142205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142206.P5977225734274006564

`p?[41*n+9]`
-/

namespace A142206.P5977225734274006564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142206.P5977225734274006564

noncomputable section

/-- A142206: Primes congruent to 9 mod 41.

Offset 1, canonical program `A142206.P5977225734274006564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A142206 (n : ℕ) : ℤ :=
  (A142206.P5977225734274006564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. -/
def A142206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142207.P14197881745197397113

`p?[41*n+10]`
-/

namespace A142207.P14197881745197397113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142207.P14197881745197397113

noncomputable section

/-- A142207: Primes congruent to 10 mod 41.

Offset 1, canonical program `A142207.P14197881745197397113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A142207 (n : ℕ) : ℤ :=
  (A142207.P14197881745197397113.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A142207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142208.P17549706343275110528

`p?[11+82*n]`
-/

namespace A142208.P17549706343275110528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 + 82 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142208.P17549706343275110528

noncomputable section

/-- A142208: Primes congruent to 11 mod 41.

Offset 1, canonical program `A142208.P17549706343275110528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1987 terms. -/
def A142208 (n : ℕ) : ℤ :=
  (A142208.P17549706343275110528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1987 terms. -/
def A142208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142209.P3604403184899965638

`p?[41*n+12]`
-/

namespace A142209.P3604403184899965638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142209.P3604403184899965638

noncomputable section

/-- A142209: Primes congruent to 12 mod 41.

Offset 1, canonical program `A142209.P3604403184899965638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A142209 (n : ℕ) : ℤ :=
  (A142209.P3604403184899965638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A142209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142210.P955060906268993047

`p?[82*n+13]`
-/

namespace A142210.P955060906268993047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  82 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142210.P955060906268993047

noncomputable section

/-- A142210: Primes congruent to 13 mod 41.

Offset 1, canonical program `A142210.P955060906268993047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142210 (n : ℕ) : ℤ :=
  (A142210.P955060906268993047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142211.P13688438854626014357

`p?[41*n+14]`
-/

namespace A142211.P13688438854626014357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142211.P13688438854626014357

noncomputable section

/-- A142211: Primes congruent to 14 mod 41.

Offset 1, canonical program `A142211.P13688438854626014357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. -/
def A142211 (n : ℕ) : ℤ :=
  (A142211.P13688438854626014357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. -/
def A142211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142212.P11257036222134808020

`p?[41*n+15]`
-/

namespace A142212.P11257036222134808020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142212.P11257036222134808020

noncomputable section

/-- A142212: Primes congruent to 15 mod 41.

Offset 1, canonical program `A142212.P11257036222134808020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A142212 (n : ℕ) : ℤ :=
  (A142212.P11257036222134808020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A142212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142213.P31053959180324961

`p?[41*n+16]`
-/

namespace A142213.P31053959180324961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142213.P31053959180324961

noncomputable section

/-- A142213: Primes congruent to 16 mod 41.

Offset 1, canonical program `A142213.P31053959180324961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1953 terms. -/
def A142213 (n : ℕ) : ℤ :=
  (A142213.P31053959180324961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1953 terms. -/
def A142213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142214.P4370632602972241411

`p?[41*n+17]`
-/

namespace A142214.P4370632602972241411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142214.P4370632602972241411

noncomputable section

/-- A142214: Primes congruent to 17 mod 41.

Offset 1, canonical program `A142214.P4370632602972241411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1969 terms. -/
def A142214 (n : ℕ) : ℤ :=
  (A142214.P4370632602972241411.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1969 terms. -/
def A142214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142215.P3221935887299973414

`p?[41*n+18]`
-/

namespace A142215.P3221935887299973414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142215.P3221935887299973414

noncomputable section

/-- A142215: Primes congruent to 18 mod 41.

Offset 1, canonical program `A142215.P3221935887299973414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1947 terms. -/
def A142215 (n : ℕ) : ℤ :=
  (A142215.P3221935887299973414.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1947 terms. -/
def A142215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142216.P15664733973220186143

`p?[a(n-1)+41]` with `a(0)=19`
-/

namespace A142216.P15664733973220186143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142216.P15664733973220186143

noncomputable section

/-- A142216: Primes congruent to 19 mod 41.

Offset 1, canonical program `A142216.P15664733973220186143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A142216 (n : ℕ) : ℤ :=
  (A142216.P15664733973220186143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. -/
def A142216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142217.P13905811482008414745

`p?[41*n+20]`
-/

namespace A142217.P13905811482008414745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142217.P13905811482008414745

noncomputable section

/-- A142217: Primes congruent to 20 mod 41.

Offset 1, canonical program `A142217.P13905811482008414745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142217 (n : ℕ) : ℤ :=
  (A142217.P13905811482008414745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142218.P6225111548831495056

`p?[41*n-20]`
-/

namespace A142218.P6225111548831495056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142218.P6225111548831495056

noncomputable section

/-- A142218: Primes congruent to 21 mod 41.

Offset 1, canonical program `A142218.P6225111548831495056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A142218 (n : ℕ) : ℤ :=
  A142218.P6225111548831495056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A142218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142219.P7248354823462158457

`p?[41*n-19]`
-/

namespace A142219.P7248354823462158457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142219.P7248354823462158457

noncomputable section

/-- A142219: Primes congruent to 22 mod 41.

Offset 1, canonical program `A142219.P7248354823462158457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. -/
def A142219 (n : ℕ) : ℤ :=
  A142219.P7248354823462158457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. -/
def A142219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142220.P16687407604773362095

`p?[41*n-18]`
-/

namespace A142220.P16687407604773362095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142220.P16687407604773362095

noncomputable section

/-- A142220: Primes congruent to 23 mod 41.

Offset 1, canonical program `A142220.P16687407604773362095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A142220 (n : ℕ) : ℤ :=
  A142220.P16687407604773362095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A142220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142221.P9571681019084595322

`p?[41*n-17]`
-/

namespace A142221.P9571681019084595322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142221.P9571681019084595322

noncomputable section

/-- A142221: Primes congruent to 24 mod 41.

Offset 1, canonical program `A142221.P9571681019084595322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. -/
def A142221 (n : ℕ) : ℤ :=
  A142221.P9571681019084595322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. -/
def A142221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142222.P16922046931421411177

`p?[41*n-16]`
-/

namespace A142222.P16922046931421411177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142222.P16922046931421411177

noncomputable section

/-- A142222: Primes congruent to 25 mod 41.

Offset 1, canonical program `A142222.P16922046931421411177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142222 (n : ℕ) : ℤ :=
  A142222.P16922046931421411177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142223.P3621335472898979268

`p?[41*n-15]`
-/

namespace A142223.P3621335472898979268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142223.P3621335472898979268

noncomputable section

/-- A142223: Primes congruent to 26 mod 41.

Offset 1, canonical program `A142223.P3621335472898979268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1968 terms. -/
def A142223 (n : ℕ) : ℤ :=
  A142223.P3621335472898979268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1968 terms. -/
def A142223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142224.P15359484830187203343

`p?[82*n+27]`
-/

namespace A142224.P15359484830187203343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  82 * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142224.P15359484830187203343

noncomputable section

/-- A142224: Primes congruent to 27 mod 41.

Offset 1, canonical program `A142224.P15359484830187203343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. -/
def A142224 (n : ℕ) : ℤ :=
  (A142224.P15359484830187203343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. -/
def A142224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142225.P13519839368476570078

`p?[82*n-13]`
-/

namespace A142225.P13519839368476570078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (82 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142225.P13519839368476570078

noncomputable section

/-- A142225: Primes congruent to 28 mod 41.

Offset 1, canonical program `A142225.P13519839368476570078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1981 terms. -/
def A142225 (n : ℕ) : ℤ :=
  A142225.P13519839368476570078.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1981 terms. -/
def A142225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142226.P17211449638472722708

`p?[41*n-12]`
-/

namespace A142226.P17211449638472722708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142226.P17211449638472722708

noncomputable section

/-- A142226: Primes congruent to 29 mod 41.

Offset 1, canonical program `A142226.P17211449638472722708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. -/
def A142226 (n : ℕ) : ℤ :=
  A142226.P17211449638472722708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. -/
def A142226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142227.P6773654250959170506

`p?[41*n-11]`
-/

namespace A142227.P6773654250959170506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142227.P6773654250959170506

noncomputable section

/-- A142227: Primes congruent to 30 mod 41.

Offset 1, canonical program `A142227.P6773654250959170506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1964 terms. -/
def A142227 (n : ℕ) : ℤ :=
  A142227.P6773654250959170506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1964 terms. -/
def A142227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142228.P4324407765704992455

`p?[41*n-10]`
-/

namespace A142228.P4324407765704992455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142228.P4324407765704992455

noncomputable section

/-- A142228: Primes congruent to 31 mod 41.

Offset 1, canonical program `A142228.P4324407765704992455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. -/
def A142228 (n : ℕ) : ℤ :=
  A142228.P4324407765704992455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. -/
def A142228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142229.P16253765682010389413

`p?[41*n-9]`
-/

namespace A142229.P16253765682010389413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142229.P16253765682010389413

noncomputable section

/-- A142229: Primes congruent to 32 mod 41.

Offset 1, canonical program `A142229.P16253765682010389413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. -/
def A142229 (n : ℕ) : ℤ :=
  A142229.P16253765682010389413.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. -/
def A142229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142230.P11424881739351854975

`p?[41*n-8]`
-/

namespace A142230.P11424881739351854975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142230.P11424881739351854975

noncomputable section

/-- A142230: Primes congruent to 33 mod 41.

Offset 1, canonical program `A142230.P11424881739351854975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. -/
def A142230 (n : ℕ) : ℤ :=
  A142230.P11424881739351854975.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. -/
def A142230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142231.P3277964425327728692

`p?[82*n-7]`
-/

namespace A142231.P3277964425327728692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (82 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142231.P3277964425327728692

noncomputable section

/-- A142231: Primes congruent to 34 mod 41.

Offset 1, canonical program `A142231.P3277964425327728692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142231 (n : ℕ) : ℤ :=
  A142231.P3277964425327728692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142232.P16949354152326269344

`p?[41*n-6]`
-/

namespace A142232.P16949354152326269344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142232.P16949354152326269344

noncomputable section

/-- A142232: Primes congruent to 35 mod 41.

Offset 1, canonical program `A142232.P16949354152326269344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A142232 (n : ℕ) : ℤ :=
  A142232.P16949354152326269344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. -/
def A142232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142233.P1848949060217978561

`p?[41*n-5]`
-/

namespace A142233.P1848949060217978561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142233.P1848949060217978561

noncomputable section

/-- A142233: Primes congruent to 36 mod 41.

Offset 1, canonical program `A142233.P1848949060217978561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142233 (n : ℕ) : ℤ :=
  A142233.P1848949060217978561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142234.P10604605828929398941

`p?[41*n-4]`
-/

namespace A142234.P10604605828929398941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142234.P10604605828929398941

noncomputable section

/-- A142234: Primes congruent to 37 mod 41.

Offset 1, canonical program `A142234.P10604605828929398941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142234 (n : ℕ) : ℤ :=
  A142234.P10604605828929398941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142235.P6343162341857643326

`p?[41*n-3]`
-/

namespace A142235.P6343162341857643326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142235.P6343162341857643326

noncomputable section

/-- A142235: Primes congruent to 38 mod 41.

Offset 1, canonical program `A142235.P6343162341857643326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1954 terms. -/
def A142235 (n : ℕ) : ℤ :=
  A142235.P6343162341857643326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1954 terms. -/
def A142235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142236.P12198417913890289095

`p?[41*n-2]`
-/

namespace A142236.P12198417913890289095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142236.P12198417913890289095

noncomputable section

/-- A142236: Primes congruent to 39 mod 41.

Offset 1, canonical program `A142236.P12198417913890289095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1968 terms. -/
def A142236 (n : ℕ) : ℤ :=
  A142236.P12198417913890289095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1968 terms. -/
def A142236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142237.P5412903853845632496

`p?[41*n-1]`
-/

namespace A142237.P5412903853845632496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (41 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142237.P5412903853845632496

noncomputable section

/-- A142237: Primes congruent to 40 mod 41.

Offset 1, canonical program `A142237.P5412903853845632496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. -/
def A142237 (n : ℕ) : ℤ :=
  A142237.P5412903853845632496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. -/
def A142237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142248.P11630301448832299196

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11, a(4)=17, a(5)=29`
-/

namespace A142248.P11630301448832299196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 11, 17, 29] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 5)

end

end A142248.P11630301448832299196

noncomputable section

/-- A142248: Odd numbers in A138123.

Offset 1, canonical program `A142248.P11630301448832299196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A142248 (n : ℕ) : ℤ :=
  A142248.P11630301448832299196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A142248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142250.P3046706253787374491

`p?[43*n+1]`
-/

namespace A142250.P3046706253787374491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142250.P3046706253787374491

noncomputable section

/-- A142250: Primes congruent to 1 mod 43.

Offset 1, canonical program `A142250.P3046706253787374491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A142250 (n : ℕ) : ℤ :=
  (A142250.P3046706253787374491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A142250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142251.P11557941840240172048

`p?[43*n+2]`
-/

namespace A142251.P11557941840240172048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142251.P11557941840240172048

noncomputable section

/-- A142251: Primes congruent to 2 mod 43.

Offset 1, canonical program `A142251.P11557941840240172048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1878 terms. -/
def A142251 (n : ℕ) : ℤ :=
  (A142251.P11557941840240172048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1878 terms. -/
def A142251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142252.P419772568220512983

`p?[43*n+3]`
-/

namespace A142252.P419772568220512983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142252.P419772568220512983

noncomputable section

/-- A142252: Primes congruent to 3 mod 43.

Offset 1, canonical program `A142252.P419772568220512983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A142252 (n : ℕ) : ℤ :=
  (A142252.P419772568220512983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A142252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142253.P14971636905352207892

`p?[43*n+4]`
-/

namespace A142253.P14971636905352207892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142253.P14971636905352207892

noncomputable section

/-- A142253: Primes congruent to 4 mod 43.

Offset 1, canonical program `A142253.P14971636905352207892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A142253 (n : ℕ) : ℤ :=
  (A142253.P14971636905352207892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A142253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142254.P17548689956248471436

`p?[43*n+5]`
-/

namespace A142254.P17548689956248471436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142254.P17548689956248471436

noncomputable section

/-- A142254: Primes congruent to 5 mod 43.

Offset 1, canonical program `A142254.P17548689956248471436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. -/
def A142254 (n : ℕ) : ℤ :=
  (A142254.P17548689956248471436.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. -/
def A142254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142255.P11477034241356313697

`p?[43*n+6]`
-/

namespace A142255.P11477034241356313697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142255.P11477034241356313697

noncomputable section

/-- A142255: Primes congruent to 6 mod 43.

Offset 1, canonical program `A142255.P11477034241356313697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1852 terms. -/
def A142255 (n : ℕ) : ℤ :=
  (A142255.P11477034241356313697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1852 terms. -/
def A142255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142256.P264774125803354404

`p?[86*n+7]`
-/

namespace A142256.P264774125803354404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  86 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142256.P264774125803354404

noncomputable section

/-- A142256: Primes congruent to 7 mod 43.

Offset 1, canonical program `A142256.P264774125803354404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1854 terms. -/
def A142256 (n : ℕ) : ℤ :=
  (A142256.P264774125803354404.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1854 terms. -/
def A142256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142257.P7285034262301320012

`p?[43*n+8]`
-/

namespace A142257.P7285034262301320012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142257.P7285034262301320012

noncomputable section

/-- A142257: Primes congruent to 8 mod 43.

Offset 1, canonical program `A142257.P7285034262301320012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. -/
def A142257 (n : ℕ) : ℤ :=
  (A142257.P7285034262301320012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. -/
def A142257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142258.P8628573051359229233

`p?[43*n+9]`
-/

namespace A142258.P8628573051359229233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142258.P8628573051359229233

noncomputable section

/-- A142258: Primes congruent to 9 mod 43.

Offset 1, canonical program `A142258.P8628573051359229233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1841 terms. -/
def A142258 (n : ℕ) : ℤ :=
  (A142258.P8628573051359229233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1841 terms. -/
def A142258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142259.P284695560425584678

`p?[43*n+10]`
-/

namespace A142259.P284695560425584678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142259.P284695560425584678

noncomputable section

/-- A142259: Primes congruent to 10 mod 43.

Offset 1, canonical program `A142259.P284695560425584678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1856 terms. -/
def A142259 (n : ℕ) : ℤ :=
  (A142259.P284695560425584678.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1856 terms. -/
def A142259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142260.P3237445093896128342

`p?[11+43*n]`
-/

namespace A142260.P3237445093896128342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 + 43 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142260.P3237445093896128342

noncomputable section

/-- A142260: Primes congruent to 11 mod 43.

Offset 1, canonical program `A142260.P3237445093896128342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1855 terms. -/
def A142260 (n : ℕ) : ℤ :=
  (A142260.P3237445093896128342.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1855 terms. -/
def A142260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142261.P2629177648987338839

`p?[43*n+12]`
-/

namespace A142261.P2629177648987338839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142261.P2629177648987338839

noncomputable section

/-- A142261: Primes congruent to 12 mod 43.

Offset 1, canonical program `A142261.P2629177648987338839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A142261 (n : ℕ) : ℤ :=
  (A142261.P2629177648987338839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A142261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142262.P16814993807808196780

`p?[43*n+13]`
-/

namespace A142262.P16814993807808196780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142262.P16814993807808196780

noncomputable section

/-- A142262: Primes congruent to 13 mod 43.

Offset 1, canonical program `A142262.P16814993807808196780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. -/
def A142262 (n : ℕ) : ℤ :=
  (A142262.P16814993807808196780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. -/
def A142262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142263.P6519544910726459908

`p?[43*n+14]`
-/

namespace A142263.P6519544910726459908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142263.P6519544910726459908

noncomputable section

/-- A142263: Primes congruent to 14 mod 43.

Offset 1, canonical program `A142263.P6519544910726459908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. -/
def A142263 (n : ℕ) : ℤ :=
  (A142263.P6519544910726459908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. -/
def A142263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142264.P15507071663444307816

`p?[43*n+15]`
-/

namespace A142264.P15507071663444307816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142264.P15507071663444307816

noncomputable section

/-- A142264: Primes congruent to 15 mod 43.

Offset 1, canonical program `A142264.P15507071663444307816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1857 terms. -/
def A142264 (n : ℕ) : ℤ :=
  (A142264.P15507071663444307816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1857 terms. -/
def A142264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142265.P12741568292378737804

`p?[43*n+16]`
-/

namespace A142265.P12741568292378737804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142265.P12741568292378737804

noncomputable section

/-- A142265: Primes congruent to 16 mod 43.

Offset 1, canonical program `A142265.P12741568292378737804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1839 terms. -/
def A142265 (n : ℕ) : ℤ :=
  (A142265.P12741568292378737804.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1839 terms. -/
def A142265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142266.P4993458387102465404

`p?[43*n+17]`
-/

namespace A142266.P4993458387102465404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142266.P4993458387102465404

noncomputable section

/-- A142266: Primes congruent to 17 mod 43.

Offset 1, canonical program `A142266.P4993458387102465404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A142266 (n : ℕ) : ℤ :=
  (A142266.P4993458387102465404.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A142266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142267.P3223431257577702686

`p?[43*n+18]`
-/

namespace A142267.P3223431257577702686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142267.P3223431257577702686

noncomputable section

/-- A142267: Primes congruent to 18 mod 43.

Offset 1, canonical program `A142267.P3223431257577702686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. -/
def A142267 (n : ℕ) : ℤ :=
  (A142267.P3223431257577702686.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. -/
def A142267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142268.P18212297061773794963

`p?[43*n+19]`
-/

namespace A142268.P18212297061773794963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142268.P18212297061773794963

noncomputable section

/-- A142268: Primes congruent to 19 mod 43.

Offset 1, canonical program `A142268.P18212297061773794963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. -/
def A142268 (n : ℕ) : ℤ :=
  (A142268.P18212297061773794963.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. -/
def A142268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142269.P5167647981052454786

`p?[43*n+63]`
-/

namespace A142269.P5167647981052454786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 63

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142269.P5167647981052454786

noncomputable section

/-- A142269: Primes congruent to 20 mod 43.

Offset 1, canonical program `A142269.P5167647981052454786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A142269 (n : ℕ) : ℤ :=
  (A142269.P5167647981052454786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. -/
def A142269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142270.P16794312820006790597

`p?[43*n+21]`
-/

namespace A142270.P16794312820006790597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142270.P16794312820006790597

noncomputable section

/-- A142270: Primes congruent to 21 mod 43.

Offset 1, canonical program `A142270.P16794312820006790597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. -/
def A142270 (n : ℕ) : ℤ :=
  (A142270.P16794312820006790597.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. -/
def A142270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142271.P15295842612164848326

`p?[43*n+22]`
-/

namespace A142271.P15295842612164848326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142271.P15295842612164848326

noncomputable section

/-- A142271: Primes congruent to 22 mod 43.

Offset 1, canonical program `A142271.P15295842612164848326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. -/
def A142271 (n : ℕ) : ℤ :=
  (A142271.P15295842612164848326.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. -/
def A142271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142272.P13556938270763829172

`p?[43*n-20]`
-/

namespace A142272.P13556938270763829172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142272.P13556938270763829172

noncomputable section

/-- A142272: Primes congruent to 23 mod 43.

Offset 1, canonical program `A142272.P13556938270763829172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1907 terms. -/
def A142272 (n : ℕ) : ℤ :=
  A142272.P13556938270763829172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1907 terms. -/
def A142272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142273.P2540258636180105551

`p?[43*n-19]`
-/

namespace A142273.P2540258636180105551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142273.P2540258636180105551

noncomputable section

/-- A142273: Primes congruent to 24 mod 43.

Offset 1, canonical program `A142273.P2540258636180105551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A142273 (n : ℕ) : ℤ :=
  A142273.P2540258636180105551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A142273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142274.P12276314700837698252

`p?[43*n-18]`
-/

namespace A142274.P12276314700837698252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142274.P12276314700837698252

noncomputable section

/-- A142274: Primes congruent to 25 mod 43.

Offset 1, canonical program `A142274.P12276314700837698252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A142274 (n : ℕ) : ℤ :=
  A142274.P12276314700837698252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A142274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142275.P8128551976673487399

`p?[86*n-17]`
-/

namespace A142275.P8128551976673487399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (86 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142275.P8128551976673487399

noncomputable section

/-- A142275: Primes congruent to 26 mod 43.

Offset 1, canonical program `A142275.P8128551976673487399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1858 terms. -/
def A142275 (n : ℕ) : ℤ :=
  A142275.P8128551976673487399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1858 terms. -/
def A142275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142276.P4845633353831802166

`p?[43*n-16]`
-/

namespace A142276.P4845633353831802166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142276.P4845633353831802166

noncomputable section

/-- A142276: Primes congruent to 27 mod 43.

Offset 1, canonical program `A142276.P4845633353831802166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. -/
def A142276 (n : ℕ) : ℤ :=
  A142276.P4845633353831802166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. -/
def A142276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142277.P4759217298360384155

`p?[43*n-15]`
-/

namespace A142277.P4759217298360384155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142277.P4759217298360384155

noncomputable section

/-- A142277: Primes congruent to 28 mod 43.

Offset 1, canonical program `A142277.P4759217298360384155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. -/
def A142277 (n : ℕ) : ℤ :=
  A142277.P4759217298360384155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. -/
def A142277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142278.P13179576882864845803

`p?[86*n+29]`
-/

namespace A142278.P13179576882864845803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  86 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142278.P13179576882864845803

noncomputable section

/-- A142278: Primes congruent to 29 mod 43.

Offset 1, canonical program `A142278.P13179576882864845803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1854 terms. -/
def A142278 (n : ℕ) : ℤ :=
  (A142278.P13179576882864845803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1854 terms. -/
def A142278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142279.P11287618654806749709

`p?[43*n-13]`
-/

namespace A142279.P11287618654806749709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142279.P11287618654806749709

noncomputable section

/-- A142279: Primes congruent to 30 mod 43.

Offset 1, canonical program `A142279.P11287618654806749709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A142279 (n : ℕ) : ℤ :=
  A142279.P11287618654806749709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A142279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142280.P4564830932489439284

`p?[43*n-12]`
-/

namespace A142280.P4564830932489439284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142280.P4564830932489439284

noncomputable section

/-- A142280: Primes congruent to 31 mod 43.

Offset 1, canonical program `A142280.P4564830932489439284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1858 terms. -/
def A142280 (n : ℕ) : ℤ :=
  A142280.P4564830932489439284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1858 terms. -/
def A142280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142281.P12265104987179317449

`p?[43*n-11]`
-/

namespace A142281.P12265104987179317449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142281.P12265104987179317449

noncomputable section

/-- A142281: Primes congruent to 32 mod 43.

Offset 1, canonical program `A142281.P12265104987179317449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. -/
def A142281 (n : ℕ) : ℤ :=
  A142281.P12265104987179317449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. -/
def A142281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142282.P1088534415416808543

`p?[43*n-10]`
-/

namespace A142282.P1088534415416808543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142282.P1088534415416808543

noncomputable section

/-- A142282: Primes congruent to 33 mod 43.

Offset 1, canonical program `A142282.P1088534415416808543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1881 terms. -/
def A142282 (n : ℕ) : ℤ :=
  A142282.P1088534415416808543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1881 terms. -/
def A142282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142283.P8153996233396252491

`p?[43*n-9]`
-/

namespace A142283.P8153996233396252491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142283.P8153996233396252491

noncomputable section

/-- A142283: Primes congruent to 34 mod 43.

Offset 1, canonical program `A142283.P8153996233396252491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. -/
def A142283 (n : ℕ) : ℤ :=
  A142283.P8153996233396252491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. -/
def A142283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142284.P2727108731763885567

`p?[43*n-8]`
-/

namespace A142284.P2727108731763885567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142284.P2727108731763885567

noncomputable section

/-- A142284: Primes congruent to 35 mod 43.

Offset 1, canonical program `A142284.P2727108731763885567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1886 terms. -/
def A142284 (n : ℕ) : ℤ :=
  A142284.P2727108731763885567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1886 terms. -/
def A142284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142285.P2831431117663515127

`p?[43*n-7]`
-/

namespace A142285.P2831431117663515127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142285.P2831431117663515127

noncomputable section

/-- A142285: Primes congruent to 36 mod 43.

Offset 1, canonical program `A142285.P2831431117663515127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1882 terms. -/
def A142285 (n : ℕ) : ℤ :=
  A142285.P2831431117663515127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1882 terms. -/
def A142285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142286.P13052994165343232711

`p?[43*n-6]`
-/

namespace A142286.P13052994165343232711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142286.P13052994165343232711

noncomputable section

/-- A142286: Primes congruent to 37 mod 43.

Offset 1, canonical program `A142286.P13052994165343232711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. -/
def A142286 (n : ℕ) : ℤ :=
  A142286.P13052994165343232711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. -/
def A142286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142287.P10298448669598223222

`p?[43*n-5]`
-/

namespace A142287.P10298448669598223222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142287.P10298448669598223222

noncomputable section

/-- A142287: Primes congruent to 38 mod 43.

Offset 1, canonical program `A142287.P10298448669598223222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A142287 (n : ℕ) : ℤ :=
  A142287.P10298448669598223222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A142287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142288.P13849969014959642047

`p?[43*n-4]`
-/

namespace A142288.P13849969014959642047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142288.P13849969014959642047

noncomputable section

/-- A142288: Primes congruent to 39 mod 43.

Offset 1, canonical program `A142288.P13849969014959642047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. -/
def A142288 (n : ℕ) : ℤ :=
  A142288.P13849969014959642047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. -/
def A142288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142289.P4114709481379776997

`p?[43*n-3]`
-/

namespace A142289.P4114709481379776997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142289.P4114709481379776997

noncomputable section

/-- A142289: Primes congruent to 40 mod 43.

Offset 1, canonical program `A142289.P4114709481379776997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A142289 (n : ℕ) : ℤ :=
  A142289.P4114709481379776997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. -/
def A142289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142290.P4566757203383785873

`p?[43*n-2]`
-/

namespace A142290.P4566757203383785873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142290.P4566757203383785873

noncomputable section

/-- A142290: Primes congruent to 41 mod 43.

Offset 1, canonical program `A142290.P4566757203383785873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1878 terms. -/
def A142290 (n : ℕ) : ℤ :=
  A142290.P4566757203383785873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1878 terms. -/
def A142290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142291.P6826586550507312059

`p?[43*n-1]`
-/

namespace A142291.P6826586550507312059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142291.P6826586550507312059

noncomputable section

/-- A142291: Primes congruent to 42 mod 43.

Offset 1, canonical program `A142291.P6826586550507312059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1845 terms. -/
def A142291 (n : ℕ) : ℤ :=
  A142291.P6826586550507312059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1845 terms. -/
def A142291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142292.P6431416426378724437

`p?[44*n+1]`
-/

namespace A142292.P6431416426378724437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142292.P6431416426378724437

noncomputable section

/-- A142292: Primes congruent to 1 mod 44.

Offset 1, canonical program `A142292.P6431416426378724437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3903 terms. -/
def A142292 (n : ℕ) : ℤ :=
  (A142292.P6431416426378724437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3903 terms. -/
def A142292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142293.P969043416426135805

`p?[4*11*n+3]`
-/

namespace A142293.P969043416426135805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (11 * n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142293.P969043416426135805

noncomputable section

/-- A142293: Primes congruent to 3 mod 44.

Offset 1, canonical program `A142293.P969043416426135805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3940 terms. -/
def A142293 (n : ℕ) : ℤ :=
  (A142293.P969043416426135805.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3940 terms. -/
def A142293.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142294.P5475484210722696775

`p?[44*n+5]`
-/

namespace A142294.P5475484210722696775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142294.P5475484210722696775

noncomputable section

/-- A142294: Primes congruent to 5 mod 44.

Offset 1, canonical program `A142294.P5475484210722696775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. -/
def A142294 (n : ℕ) : ℤ :=
  (A142294.P5475484210722696775.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. -/
def A142294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142296.P7549627745790358144

`p?[4*11*n+9]`
-/

namespace A142296.P7549627745790358144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (11 * n) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142296.P7549627745790358144

noncomputable section

/-- A142296: Primes congruent to 9 mod 44.

Offset 1, canonical program `A142296.P7549627745790358144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3875 terms. -/
def A142296 (n : ℕ) : ℤ :=
  (A142296.P7549627745790358144.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3875 terms. -/
def A142296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142297.P4333875725822880942

`p?[44*n-31]`
-/

namespace A142297.P4333875725822880942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (44 * n : ℤ) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142297.P4333875725822880942

noncomputable section

/-- A142297: Primes congruent to 13 mod 44.

Offset 1, canonical program `A142297.P4333875725822880942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3935 terms. -/
def A142297 (n : ℕ) : ℤ :=
  A142297.P4333875725822880942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3935 terms. -/
def A142297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142298.P9666880481197302390

`p?[4*11*n+15]`
-/

namespace A142298.P9666880481197302390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (11 * n) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142298.P9666880481197302390

noncomputable section

/-- A142298: Primes congruent to 15 mod 44.

Offset 1, canonical program `A142298.P9666880481197302390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3908 terms. -/
def A142298 (n : ℕ) : ℤ :=
  (A142298.P9666880481197302390.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3908 terms. -/
def A142298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142299.P6462142585437383439

`p?[44*n+17]`
-/

namespace A142299.P6462142585437383439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142299.P6462142585437383439

noncomputable section

/-- A142299: Primes congruent to 17 mod 44.

Offset 1, canonical program `A142299.P6462142585437383439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A142299 (n : ℕ) : ℤ :=
  (A142299.P6462142585437383439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. -/
def A142299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142300.P9504984252573206551

`p?[a(n-1)+44]` with `a(0)=19`
-/

namespace A142300.P9504984252573206551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [19] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142300.P9504984252573206551

noncomputable section

/-- A142300: Primes congruent to 19 mod 44.

Offset 1, canonical program `A142300.P9504984252573206551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3964 terms. -/
def A142300 (n : ℕ) : ℤ :=
  (A142300.P9504984252573206551.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3964 terms. -/
def A142300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142301.P13322853834450072478

`p?[a(n-1)+44]` with `a(0)=21`
-/

namespace A142301.P13322853834450072478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142301.P13322853834450072478

noncomputable section

/-- A142301: Primes congruent to 21 mod 44.

Offset 1, canonical program `A142301.P13322853834450072478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A142301 (n : ℕ) : ℤ :=
  (A142301.P13322853834450072478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A142301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142302.P941425820295180325

`p?[a(n-1)+44]` with `a(0)=23`
-/

namespace A142302.P941425820295180325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [23] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142302.P941425820295180325

noncomputable section

/-- A142302: Primes congruent to 23 mod 44.

Offset 1, canonical program `A142302.P941425820295180325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. -/
def A142302 (n : ℕ) : ℤ :=
  (A142302.P941425820295180325.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3955 terms. -/
def A142302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142304.P2644614537605367875

`p?[44*n-17]`
-/

namespace A142304.P2644614537605367875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (44 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142304.P2644614537605367875

noncomputable section

/-- A142304: Primes congruent to 27 mod 44.

Offset 1, canonical program `A142304.P2644614537605367875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3916 terms. -/
def A142304 (n : ℕ) : ℤ :=
  A142304.P2644614537605367875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3916 terms. -/
def A142304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142306.P5695032437069678238

`p?[44*n+31]`
-/

namespace A142306.P5695032437069678238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142306.P5695032437069678238

noncomputable section

/-- A142306: Primes congruent to 31 mod 44.

Offset 1, canonical program `A142306.P5695032437069678238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3953 terms. -/
def A142306 (n : ℕ) : ℤ :=
  (A142306.P5695032437069678238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3953 terms. -/
def A142306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142307.P7240851486528345183

`p?[44*n-9]`
-/

namespace A142307.P7240851486528345183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (44 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142307.P7240851486528345183

noncomputable section

/-- A142307: Primes congruent to 35 mod 44.

Offset 1, canonical program `A142307.P7240851486528345183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3907 terms. -/
def A142307 (n : ℕ) : ℤ :=
  A142307.P7240851486528345183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3907 terms. -/
def A142307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142308.P8768982004238066164

`p?[44*n-7]`
-/

namespace A142308.P8768982004238066164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (44 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142308.P8768982004238066164

noncomputable section

/-- A142308: Primes congruent to 37 mod 44.

Offset 1, canonical program `A142308.P8768982004238066164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3931 terms. -/
def A142308 (n : ℕ) : ℤ :=
  A142308.P8768982004238066164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3931 terms. -/
def A142308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142309.P5096015529628759301

`p?[44*n-5]`
-/

namespace A142309.P5096015529628759301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (44 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142309.P5096015529628759301

noncomputable section

/-- A142309: Primes congruent to 39 mod 44.

Offset 1, canonical program `A142309.P5096015529628759301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A142309 (n : ℕ) : ℤ :=
  A142309.P5096015529628759301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A142309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142310.P17788548688774827961

`p?[44*n-3]`
-/

namespace A142310.P17788548688774827961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (44 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142310.P17788548688774827961

noncomputable section

/-- A142310: Primes congruent to 41 mod 44.

Offset 1, canonical program `A142310.P17788548688774827961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A142310 (n : ℕ) : ℤ :=
  A142310.P17788548688774827961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. -/
def A142310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142311.P241498345937656178

`p?[44*n-1]`
-/

namespace A142311.P241498345937656178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (44 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142311.P241498345937656178

noncomputable section

/-- A142311: Primes congruent to 43 mod 44.

Offset 1, canonical program `A142311.P241498345937656178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3922 terms. -/
def A142311 (n : ℕ) : ℤ :=
  A142311.P241498345937656178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3922 terms. -/
def A142311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142312.P14164493053183842634

`p?[45*n+1]`
-/

namespace A142312.P14164493053183842634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142312.P14164493053183842634

noncomputable section

/-- A142312: Primes congruent to 1 mod 45.

Offset 1, canonical program `A142312.P14164493053183842634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. -/
def A142312 (n : ℕ) : ℤ :=
  (A142312.P14164493053183842634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3273 terms. -/
def A142312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142313.P17283951088892303914

`p?[45*n+2]`
-/

namespace A142313.P17283951088892303914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142313.P17283951088892303914

noncomputable section

/-- A142313: Primes congruent to 2 mod 45.

Offset 1, canonical program `A142313.P17283951088892303914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142313 (n : ℕ) : ℤ :=
  (A142313.P17283951088892303914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142314.P6050126753474725159

`p?[45*n+4]`
-/

namespace A142314.P6050126753474725159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142314.P6050126753474725159

noncomputable section

/-- A142314: Primes congruent to 4 mod 45.

Offset 1, canonical program `A142314.P6050126753474725159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. -/
def A142314 (n : ℕ) : ℤ :=
  (A142314.P6050126753474725159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. -/
def A142314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142315.P7476752833073599193

`p?[45*n+7]`
-/

namespace A142315.P7476752833073599193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142315.P7476752833073599193

noncomputable section

/-- A142315: Primes congruent to 7 mod 45.

Offset 1, canonical program `A142315.P7476752833073599193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. -/
def A142315 (n : ℕ) : ℤ :=
  (A142315.P7476752833073599193.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. -/
def A142315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142316.P12716095900696772004

`p?[45*n+8]`
-/

namespace A142316.P12716095900696772004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142316.P12716095900696772004

noncomputable section

/-- A142316: Primes congruent to 8 mod 45.

Offset 1, canonical program `A142316.P12716095900696772004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A142316 (n : ℕ) : ℤ :=
  (A142316.P12716095900696772004.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A142316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142317.P7412645523689734447

`p?[45*n+11]`
-/

namespace A142317.P7412645523689734447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142317.P7412645523689734447

noncomputable section

/-- A142317: Primes congruent to 11 mod 45.

Offset 1, canonical program `A142317.P7412645523689734447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142317 (n : ℕ) : ℤ :=
  (A142317.P7412645523689734447.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A142317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142318.P18123517359371742572

`p?[45*n+13]`
-/

namespace A142318.P18123517359371742572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142318.P18123517359371742572

noncomputable section

/-- A142318: Primes congruent to 13 mod 45.

Offset 1, canonical program `A142318.P18123517359371742572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142318 (n : ℕ) : ℤ :=
  (A142318.P18123517359371742572.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142319.P12550948628733803953

`p?[45*n+14]`
-/

namespace A142319.P12550948628733803953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142319.P12550948628733803953

noncomputable section

/-- A142319: Primes congruent to 14 mod 45.

Offset 1, canonical program `A142319.P12550948628733803953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A142319 (n : ℕ) : ℤ :=
  (A142319.P12550948628733803953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A142319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142320.P9111520421625643267

`p?[45*n+16]`
-/

namespace A142320.P9111520421625643267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142320.P9111520421625643267

noncomputable section

/-- A142320: Primes congruent to 16 mod 45.

Offset 1, canonical program `A142320.P9111520421625643267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. -/
def A142320 (n : ℕ) : ℤ :=
  (A142320.P9111520421625643267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. -/
def A142320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142321.P10996513615225347293

`p?[45*n+17]`
-/

namespace A142321.P10996513615225347293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142321.P10996513615225347293

noncomputable section

/-- A142321: Primes congruent to 17 mod 45.

Offset 1, canonical program `A142321.P10996513615225347293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142321 (n : ℕ) : ℤ :=
  (A142321.P10996513615225347293.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142322.P3484727509360590983

`p?[45*n-26]`
-/

namespace A142322.P3484727509360590983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142322.P3484727509360590983

noncomputable section

/-- A142322: Primes congruent to 19 mod 45.

Offset 1, canonical program `A142322.P3484727509360590983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. -/
def A142322 (n : ℕ) : ℤ :=
  A142322.P3484727509360590983.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. -/
def A142322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142323.P6599792148377430745

`p?[45*n+22]`
-/

namespace A142323.P6599792148377430745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142323.P6599792148377430745

noncomputable section

/-- A142323: Primes congruent to 22 mod 45.

Offset 1, canonical program `A142323.P6599792148377430745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A142323 (n : ℕ) : ℤ :=
  (A142323.P6599792148377430745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A142323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142324.P3883511816270207009

`p?[45*n-22]`
-/

namespace A142324.P3883511816270207009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142324.P3883511816270207009

noncomputable section

/-- A142324: Primes congruent to 23 mod 45.

Offset 1, canonical program `A142324.P3883511816270207009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142324 (n : ℕ) : ℤ :=
  A142324.P3883511816270207009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142325.P16190209765258327535

`p?[45*n+26]`
-/

namespace A142325.P16190209765258327535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45 * n + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142325.P16190209765258327535

noncomputable section

/-- A142325: Primes congruent to 26 mod 45.

Offset 1, canonical program `A142325.P16190209765258327535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142325 (n : ℕ) : ℤ :=
  (A142325.P16190209765258327535.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142326.P18413968442934630755

`p?[45*n-17]`
-/

namespace A142326.P18413968442934630755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142326.P18413968442934630755

noncomputable section

/-- A142326: Primes congruent to 28 mod 45.

Offset 1, canonical program `A142326.P18413968442934630755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3262 terms. -/
def A142326 (n : ℕ) : ℤ :=
  A142326.P18413968442934630755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3262 terms. -/
def A142326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142327.P4584270671583773330

`p?[45*n-16]`
-/

namespace A142327.P4584270671583773330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142327.P4584270671583773330

noncomputable section

/-- A142327: Primes congruent to 29 mod 45.

Offset 1, canonical program `A142327.P4584270671583773330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. -/
def A142327 (n : ℕ) : ℤ :=
  A142327.P4584270671583773330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. -/
def A142327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142328.P14824499500990808311

`p?[90*n+31]`
-/

namespace A142328.P14824499500990808311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  90 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142328.P14824499500990808311

noncomputable section

/-- A142328: Primes congruent to 31 mod 45.

Offset 1, canonical program `A142328.P14824499500990808311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3252 terms. -/
def A142328 (n : ℕ) : ℤ :=
  (A142328.P14824499500990808311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3252 terms. -/
def A142328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142329.P1160488117302926088

`p?[45*n-13]`
-/

namespace A142329.P1160488117302926088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142329.P1160488117302926088

noncomputable section

/-- A142329: Primes congruent to 32 mod 45.

Offset 1, canonical program `A142329.P1160488117302926088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142329 (n : ℕ) : ℤ :=
  A142329.P1160488117302926088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142330.P1189926326019420080

`p?[45*n-11]`
-/

namespace A142330.P1189926326019420080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142330.P1189926326019420080

noncomputable section

/-- A142330: Primes congruent to 34 mod 45.

Offset 1, canonical program `A142330.P1189926326019420080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A142330 (n : ℕ) : ℤ :=
  A142330.P1189926326019420080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A142330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142331.P15071362400208504778

`p?[45*n-8]`
-/

namespace A142331.P15071362400208504778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142331.P15071362400208504778

noncomputable section

/-- A142331: Primes congruent to 37 mod 45.

Offset 1, canonical program `A142331.P15071362400208504778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3284 terms. -/
def A142331 (n : ℕ) : ℤ :=
  A142331.P15071362400208504778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3284 terms. -/
def A142331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142332.P10873769994353950579

`p?[45*n-7]`
-/

namespace A142332.P10873769994353950579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142332.P10873769994353950579

noncomputable section

/-- A142332: Primes congruent to 38 mod 45.

Offset 1, canonical program `A142332.P10873769994353950579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3303 terms. -/
def A142332 (n : ℕ) : ℤ :=
  A142332.P10873769994353950579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3303 terms. -/
def A142332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142333.P7726727833732103365

`p?[45*n-4]`
-/

namespace A142333.P7726727833732103365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142333.P7726727833732103365

noncomputable section

/-- A142333: Primes congruent to 41 mod 45.

Offset 1, canonical program `A142333.P7726727833732103365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. -/
def A142333 (n : ℕ) : ℤ :=
  A142333.P7726727833732103365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. -/
def A142333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142334.P14791503635872050758

`p?[45*n-2]`
-/

namespace A142334.P14791503635872050758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142334.P14791503635872050758

noncomputable section

/-- A142334: Primes congruent to 43 mod 45.

Offset 1, canonical program `A142334.P14791503635872050758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. -/
def A142334 (n : ℕ) : ℤ :=
  A142334.P14791503635872050758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3282 terms. -/
def A142334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142335.P11028733541637049095

`p?[45*n-1]`
-/

namespace A142335.P11028733541637049095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (45 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142335.P11028733541637049095

noncomputable section

/-- A142335: Primes congruent to 44 mod 45.

Offset 1, canonical program `A142335.P11028733541637049095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142335 (n : ℕ) : ℤ :=
  A142335.P11028733541637049095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142355.P15778158199979336971

`p?[47*n+2]`
-/

namespace A142355.P15778158199979336971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142355.P15778158199979336971

noncomputable section

/-- A142355: Primes congruent to 2 mod 47.

Offset 1, canonical program `A142355.P15778158199979336971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A142355 (n : ℕ) : ℤ :=
  (A142355.P15778158199979336971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A142355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142356.P12702020935622007177

`p?[47*n+4]`
-/

namespace A142356.P12702020935622007177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142356.P12702020935622007177

noncomputable section

/-- A142356: Primes congruent to 4 mod 47.

Offset 1, canonical program `A142356.P12702020935622007177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A142356 (n : ℕ) : ℤ :=
  (A142356.P12702020935622007177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A142356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142357.P17076880945785824031

`p?[47*n+6]`
-/

namespace A142357.P17076880945785824031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142357.P17076880945785824031

noncomputable section

/-- A142357: Primes congruent to 6 mod 47.

Offset 1, canonical program `A142357.P17076880945785824031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1700 terms. -/
def A142357 (n : ℕ) : ℤ :=
  (A142357.P17076880945785824031.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1700 terms. -/
def A142357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142358.P8955062867562280245

`p?[47*n+7]`
-/

namespace A142358.P8955062867562280245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142358.P8955062867562280245

noncomputable section

/-- A142358: Primes congruent to 7 mod 47.

Offset 1, canonical program `A142358.P8955062867562280245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1700 terms. -/
def A142358 (n : ℕ) : ℤ :=
  (A142358.P8955062867562280245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1700 terms. -/
def A142358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142359.P10481489079351972437

`p?[47*n+8]`
-/

namespace A142359.P10481489079351972437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142359.P10481489079351972437

noncomputable section

/-- A142359: Primes congruent to 8 mod 47.

Offset 1, canonical program `A142359.P10481489079351972437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A142359 (n : ℕ) : ℤ :=
  (A142359.P10481489079351972437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A142359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142360.P14805223479057948877

`p?[47*n+9]`
-/

namespace A142360.P14805223479057948877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142360.P14805223479057948877

noncomputable section

/-- A142360: Primes congruent to 9 mod 47.

Offset 1, canonical program `A142360.P14805223479057948877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A142360 (n : ℕ) : ℤ :=
  (A142360.P14805223479057948877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A142360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142361.P13826215273931227432

`p?[47*n+10]`
-/

namespace A142361.P13826215273931227432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142361.P13826215273931227432

noncomputable section

/-- A142361: Primes congruent to 10 mod 47.

Offset 1, canonical program `A142361.P13826215273931227432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A142361 (n : ℕ) : ℤ :=
  (A142361.P13826215273931227432.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A142361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142362.P13177743375997532641

`p?[11+47*n]`
-/

namespace A142362.P13177743375997532641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 + 47 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142362.P13177743375997532641

noncomputable section

/-- A142362: Primes congruent to 11 mod 47.

Offset 1, canonical program `A142362.P13177743375997532641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1727 terms. -/
def A142362 (n : ℕ) : ℤ :=
  (A142362.P13177743375997532641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1727 terms. -/
def A142362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142363.P12607683732152399389

`p?[47*n+12]`
-/

namespace A142363.P12607683732152399389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142363.P12607683732152399389

noncomputable section

/-- A142363: Primes congruent to 12 mod 47.

Offset 1, canonical program `A142363.P12607683732152399389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. -/
def A142363 (n : ℕ) : ℤ :=
  (A142363.P12607683732152399389.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. -/
def A142363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142364.P10932836593473637332

`p?[47*n+13]`
-/

namespace A142364.P10932836593473637332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142364.P10932836593473637332

noncomputable section

/-- A142364: Primes congruent to 13 mod 47.

Offset 1, canonical program `A142364.P10932836593473637332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A142364 (n : ℕ) : ℤ :=
  (A142364.P10932836593473637332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1680 terms. -/
def A142364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142365.P4519385043105044102

`p?[47*n-33]`
-/

namespace A142365.P4519385043105044102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142365.P4519385043105044102

noncomputable section

/-- A142365: Primes congruent to 14 mod 47.

Offset 1, canonical program `A142365.P4519385043105044102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. -/
def A142365 (n : ℕ) : ℤ :=
  A142365.P4519385043105044102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. -/
def A142365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142366.P735969868907015625

`p?[47*n+15]`
-/

namespace A142366.P735969868907015625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142366.P735969868907015625

noncomputable section

/-- A142366: Primes congruent to 15 mod 47.

Offset 1, canonical program `A142366.P735969868907015625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1718 terms. -/
def A142366 (n : ℕ) : ℤ :=
  (A142366.P735969868907015625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1718 terms. -/
def A142366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142367.P17124882875609087229

`p?[47*n-31]`
-/

namespace A142367.P17124882875609087229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142367.P17124882875609087229

noncomputable section

/-- A142367: Primes congruent to 16 mod 47.

Offset 1, canonical program `A142367.P17124882875609087229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A142367 (n : ℕ) : ℤ :=
  A142367.P17124882875609087229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A142367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142368.P17642259357547429494

`p?[47*n+17]`
-/

namespace A142368.P17642259357547429494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142368.P17642259357547429494

noncomputable section

/-- A142368: Primes congruent to 17 mod 47.

Offset 1, canonical program `A142368.P17642259357547429494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. -/
def A142368 (n : ℕ) : ℤ :=
  (A142368.P17642259357547429494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. -/
def A142368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142369.P2473731333366495914

`p?[47*n+18]`
-/

namespace A142369.P2473731333366495914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142369.P2473731333366495914

noncomputable section

/-- A142369: Primes congruent to 18 mod 47.

Offset 1, canonical program `A142369.P2473731333366495914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1686 terms. -/
def A142369 (n : ℕ) : ℤ :=
  (A142369.P2473731333366495914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1686 terms. -/
def A142369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142370.P9402227055383927916

`p?[47*n+19]`
-/

namespace A142370.P9402227055383927916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142370.P9402227055383927916

noncomputable section

/-- A142370: Primes congruent to 19 mod 47.

Offset 1, canonical program `A142370.P9402227055383927916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. -/
def A142370 (n : ℕ) : ℤ :=
  (A142370.P9402227055383927916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. -/
def A142370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142371.P3074159514887902529

`p?[47*n+20]`
-/

namespace A142371.P3074159514887902529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142371.P3074159514887902529

noncomputable section

/-- A142371: Primes congruent to 20 mod 47.

Offset 1, canonical program `A142371.P3074159514887902529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1714 terms. -/
def A142371 (n : ℕ) : ℤ :=
  (A142371.P3074159514887902529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1714 terms. -/
def A142371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142372.P1169779385598995932

`p?[47*n+21]`
-/

namespace A142372.P1169779385598995932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142372.P1169779385598995932

noncomputable section

/-- A142372: Primes congruent to 21 mod 47.

Offset 1, canonical program `A142372.P1169779385598995932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1675 terms. -/
def A142372 (n : ℕ) : ℤ :=
  (A142372.P1169779385598995932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1675 terms. -/
def A142372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142373.P5843553424164270790

`p?[47*n+22]`
-/

namespace A142373.P5843553424164270790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142373.P5843553424164270790

noncomputable section

/-- A142373: Primes congruent to 22 mod 47.

Offset 1, canonical program `A142373.P5843553424164270790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. -/
def A142373 (n : ℕ) : ℤ :=
  (A142373.P5843553424164270790.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1701 terms. -/
def A142373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142374.P10160663467144381370

`p?[47*n-24]`
-/

namespace A142374.P10160663467144381370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142374.P10160663467144381370

noncomputable section

/-- A142374: Primes congruent to 23 mod 47.

Offset 1, canonical program `A142374.P10160663467144381370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A142374 (n : ℕ) : ℤ :=
  A142374.P10160663467144381370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A142374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142375.P4003145315948319740

`p?[47*n+24]`
-/

namespace A142375.P4003145315948319740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142375.P4003145315948319740

noncomputable section

/-- A142375: Primes congruent to 24 mod 47.

Offset 1, canonical program `A142375.P4003145315948319740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1704 terms. -/
def A142375 (n : ℕ) : ℤ :=
  (A142375.P4003145315948319740.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1704 terms. -/
def A142375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142376.P6797894476532796369

`p?[47*n-22]`
-/

namespace A142376.P6797894476532796369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142376.P6797894476532796369

noncomputable section

/-- A142376: Primes congruent to 25 mod 47.

Offset 1, canonical program `A142376.P6797894476532796369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. -/
def A142376 (n : ℕ) : ℤ :=
  A142376.P6797894476532796369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. -/
def A142376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142377.P12606999402120422051

`p?[47*n-21]`
-/

namespace A142377.P12606999402120422051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142377.P12606999402120422051

noncomputable section

/-- A142377: Primes congruent to 26 mod 47.

Offset 1, canonical program `A142377.P12606999402120422051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. -/
def A142377 (n : ℕ) : ℤ :=
  A142377.P12606999402120422051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1716 terms. -/
def A142377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142378.P325881904583641626

`p?[47*n+27]`
-/

namespace A142378.P325881904583641626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142378.P325881904583641626

noncomputable section

/-- A142378: Primes congruent to 27 mod 47.

Offset 1, canonical program `A142378.P325881904583641626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. -/
def A142378 (n : ℕ) : ℤ :=
  (A142378.P325881904583641626.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. -/
def A142378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142379.P4192917569701328443

`p?[47*n-19]`
-/

namespace A142379.P4192917569701328443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142379.P4192917569701328443

noncomputable section

/-- A142379: Primes congruent to 28 mod 47.

Offset 1, canonical program `A142379.P4192917569701328443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A142379 (n : ℕ) : ℤ :=
  A142379.P4192917569701328443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A142379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142380.P13151873305960099680

`p?[47*n-18]`
-/

namespace A142380.P13151873305960099680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142380.P13151873305960099680

noncomputable section

/-- A142380: Primes congruent to 29 mod 47.

Offset 1, canonical program `A142380.P13151873305960099680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1721 terms. -/
def A142380 (n : ℕ) : ℤ :=
  A142380.P13151873305960099680.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1721 terms. -/
def A142380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142381.P18133789118264969557

`p?[47*n-64]`
-/

namespace A142381.P18133789118264969557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 64

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142381.P18133789118264969557

noncomputable section

/-- A142381: Primes congruent to 30 mod 47.

Offset 1, canonical program `A142381.P18133789118264969557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. -/
def A142381 (n : ℕ) : ℤ :=
  A142381.P18133789118264969557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. -/
def A142381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142382.P9930877696019130693

`p?[47*n+31]`
-/

namespace A142382.P9930877696019130693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142382.P9930877696019130693

noncomputable section

/-- A142382: Primes congruent to 31 mod 47.

Offset 1, canonical program `A142382.P9930877696019130693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. -/
def A142382 (n : ℕ) : ℤ :=
  (A142382.P9930877696019130693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. -/
def A142382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142383.P10376334562524176700

`p?[47*n-15]`
-/

namespace A142383.P10376334562524176700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142383.P10376334562524176700

noncomputable section

/-- A142383: Primes congruent to 32 mod 47.

Offset 1, canonical program `A142383.P10376334562524176700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. -/
def A142383 (n : ℕ) : ℤ :=
  A142383.P10376334562524176700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. -/
def A142383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142384.P5270389051962731911

`p?[47*n+33]`
-/

namespace A142384.P5270389051962731911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47 * n + 33

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142384.P5270389051962731911

noncomputable section

/-- A142384: Primes congruent to 33 mod 47.

Offset 1, canonical program `A142384.P5270389051962731911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A142384 (n : ℕ) : ℤ :=
  (A142384.P5270389051962731911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1724 terms. -/
def A142384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142385.P9294846718590855022

`p?[47*n-13]`
-/

namespace A142385.P9294846718590855022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142385.P9294846718590855022

noncomputable section

/-- A142385: Primes congruent to 34 mod 47.

Offset 1, canonical program `A142385.P9294846718590855022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A142385 (n : ℕ) : ℤ :=
  A142385.P9294846718590855022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. -/
def A142385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142386.P1052990782215385682

`p?[47*n-12]`
-/

namespace A142386.P1052990782215385682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142386.P1052990782215385682

noncomputable section

/-- A142386: Primes congruent to 35 mod 47.

Offset 1, canonical program `A142386.P1052990782215385682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A142386 (n : ℕ) : ℤ :=
  A142386.P1052990782215385682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A142386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142387.P16442262103069469868

`p?[47*n-11]`
-/

namespace A142387.P16442262103069469868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142387.P16442262103069469868

noncomputable section

/-- A142387: Primes congruent to 36 mod 47.

Offset 1, canonical program `A142387.P16442262103069469868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1674 terms. -/
def A142387 (n : ℕ) : ℤ :=
  A142387.P16442262103069469868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1674 terms. -/
def A142387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142388.P7511379802884212700

`or(1, p?[47*n-10])`
-/

namespace A142388.P7511379802884212700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142388.P7511379802884212700

noncomputable section

/-- A142388: Primes congruent to 37 mod 47.

Offset 1, canonical program `A142388.P7511379802884212700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1713 terms. -/
def A142388 (n : ℕ) : ℤ :=
  A142388.P7511379802884212700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1713 terms. -/
def A142388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142389.P6617584334484456022

`p?[47*n-9]`
-/

namespace A142389.P6617584334484456022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142389.P6617584334484456022

noncomputable section

/-- A142389: Primes congruent to 38 mod 47.

Offset 1, canonical program `A142389.P6617584334484456022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A142389 (n : ℕ) : ℤ :=
  A142389.P6617584334484456022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1707 terms. -/
def A142389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142390.P556182768649480966

`p?[47*n-8]`
-/

namespace A142390.P556182768649480966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142390.P556182768649480966

noncomputable section

/-- A142390: Primes congruent to 39 mod 47.

Offset 1, canonical program `A142390.P556182768649480966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. -/
def A142390 (n : ℕ) : ℤ :=
  A142390.P556182768649480966.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1722 terms. -/
def A142390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142391.P6690089389627483051

`p?[47*n-7]`
-/

namespace A142391.P6690089389627483051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142391.P6690089389627483051

noncomputable section

/-- A142391: Primes congruent to 40 mod 47.

Offset 1, canonical program `A142391.P6690089389627483051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. -/
def A142391 (n : ℕ) : ℤ :=
  A142391.P6690089389627483051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1692 terms. -/
def A142391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142392.P15313587033907760608

`p?[47*n-6]`
-/

namespace A142392.P15313587033907760608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142392.P15313587033907760608

noncomputable section

/-- A142392: Primes congruent to 41 mod 47.

Offset 1, canonical program `A142392.P15313587033907760608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A142392 (n : ℕ) : ℤ :=
  A142392.P15313587033907760608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A142392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142393.P585495198988390091

`p?[47*n-5]`
-/

namespace A142393.P585495198988390091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142393.P585495198988390091

noncomputable section

/-- A142393: Primes congruent to 42 mod 47.

Offset 1, canonical program `A142393.P585495198988390091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A142393 (n : ℕ) : ℤ :=
  A142393.P585495198988390091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A142393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142394.P11567026280531860457

`p?[47*n-4]`
-/

namespace A142394.P11567026280531860457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142394.P11567026280531860457

noncomputable section

/-- A142394: Primes congruent to 43 mod 47.

Offset 1, canonical program `A142394.P11567026280531860457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A142394 (n : ℕ) : ℤ :=
  A142394.P11567026280531860457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A142394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142395.P343959778373377213

`p?[47*n-3]`
-/

namespace A142395.P343959778373377213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142395.P343959778373377213

noncomputable section

/-- A142395: Primes congruent to 44 mod 47.

Offset 1, canonical program `A142395.P343959778373377213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A142395 (n : ℕ) : ℤ :=
  A142395.P343959778373377213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1710 terms. -/
def A142395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142396.P5085327593745097292

`p?[47*n-2]`
-/

namespace A142396.P5085327593745097292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142396.P5085327593745097292

noncomputable section

/-- A142396: Primes congruent to 45 mod 47.

Offset 1, canonical program `A142396.P5085327593745097292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A142396 (n : ℕ) : ℤ :=
  A142396.P5085327593745097292.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A142396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142397.P11675747106029405364

`p?[47*n-1]`
-/

namespace A142397.P11675747106029405364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (47 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142397.P11675747106029405364

noncomputable section

/-- A142397: Primes congruent to 46 mod 47.

Offset 1, canonical program `A142397.P11675747106029405364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A142397 (n : ℕ) : ℤ :=
  A142397.P11675747106029405364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A142397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142401.P13989162071299428488

`p?[48*n+11]`
-/

namespace A142401.P13989162071299428488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142401.P13989162071299428488

noncomputable section

/-- A142401: Primes congruent to 11 mod 48.

Offset 1, canonical program `A142401.P13989162071299428488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. -/
def A142401 (n : ℕ) : ℤ :=
  (A142401.P13989162071299428488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4909 terms. -/
def A142401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142402.P18041103152548127886

`p?[6*8*n-35]`
-/

namespace A142402.P18041103152548127886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (8 * n) : ℤ) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142402.P18041103152548127886

noncomputable section

/-- A142402: Primes congruent to 13 mod 48.

Offset 1, canonical program `A142402.P18041103152548127886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4922 terms. -/
def A142402 (n : ℕ) : ℤ :=
  A142402.P18041103152548127886.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4922 terms. -/
def A142402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142403.P12333573160411279363

`p?[48*n+17]`
-/

namespace A142403.P12333573160411279363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142403.P12333573160411279363

noncomputable section

/-- A142403: Primes congruent to 17 mod 48.

Offset 1, canonical program `A142403.P12333573160411279363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4917 terms. -/
def A142403 (n : ℕ) : ℤ :=
  (A142403.P12333573160411279363.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4917 terms. -/
def A142403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142404.P3151570573728460328

`p?[48*n+19]`
-/

namespace A142404.P3151570573728460328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  48 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142404.P3151570573728460328

noncomputable section

/-- A142404: Primes congruent to 19 mod 48.

Offset 1, canonical program `A142404.P3151570573728460328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4937 terms. -/
def A142404 (n : ℕ) : ℤ :=
  (A142404.P3151570573728460328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4937 terms. -/
def A142404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142409.P9791940095608550228

`p?[6*8*n+35]`
-/

namespace A142409.P9791940095608550228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (8 * n) + 35

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142409.P9791940095608550228

noncomputable section

/-- A142409: Primes congruent to 35 mod 48.

Offset 1, canonical program `A142409.P9791940095608550228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4900 terms. -/
def A142409 (n : ℕ) : ℤ :=
  (A142409.P9791940095608550228.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4900 terms. -/
def A142409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142410.P15658897944720024963

`p?[6*8*n-11]`
-/

namespace A142410.P15658897944720024963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (8 * n) : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142410.P15658897944720024963

noncomputable section

/-- A142410: Primes congruent to 37 mod 48.

Offset 1, canonical program `A142410.P15658897944720024963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4910 terms. -/
def A142410 (n : ℕ) : ℤ :=
  A142410.P15658897944720024963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4910 terms. -/
def A142410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142411.P17941227972138577087

`p?[48*n-7]`
-/

namespace A142411.P17941227972138577087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (48 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142411.P17941227972138577087

noncomputable section

/-- A142411: Primes congruent to 41 mod 48.

Offset 1, canonical program `A142411.P17941227972138577087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4903 terms. -/
def A142411 (n : ℕ) : ℤ :=
  A142411.P17941227972138577087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4903 terms. -/
def A142411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142414.P4960954613449093379

`p?[49*n+1]`
-/

namespace A142414.P4960954613449093379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142414.P4960954613449093379

noncomputable section

/-- A142414: Primes congruent to 1 mod 49.

Offset 1, canonical program `A142414.P4960954613449093379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1855 terms. -/
def A142414 (n : ℕ) : ℤ :=
  (A142414.P4960954613449093379.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1855 terms. -/
def A142414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142415.P2169116940538813865

`p?[49*n+2]`
-/

namespace A142415.P2169116940538813865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142415.P2169116940538813865

noncomputable section

/-- A142415: Primes congruent to 2 mod 49.

Offset 1, canonical program `A142415.P2169116940538813865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. -/
def A142415 (n : ℕ) : ℤ :=
  (A142415.P2169116940538813865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1902 terms. -/
def A142415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142416.P5754371465448936547

`p?[49*n+3]`
-/

namespace A142416.P5754371465448936547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142416.P5754371465448936547

noncomputable section

/-- A142416: Primes congruent to 3 mod 49.

Offset 1, canonical program `A142416.P5754371465448936547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. -/
def A142416 (n : ℕ) : ℤ :=
  (A142416.P5754371465448936547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. -/
def A142416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142417.P4842907493679080872

`p?[49*n+4]`
-/

namespace A142417.P4842907493679080872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142417.P4842907493679080872

noncomputable section

/-- A142417: Primes congruent to 4 mod 49.

Offset 1, canonical program `A142417.P4842907493679080872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1850 terms. -/
def A142417 (n : ℕ) : ℤ :=
  (A142417.P4842907493679080872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1850 terms. -/
def A142417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142418.P5100325192273801817

`p?[49*n+5]`
-/

namespace A142418.P5100325192273801817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142418.P5100325192273801817

noncomputable section

/-- A142418: Primes congruent to 5 mod 49.

Offset 1, canonical program `A142418.P5100325192273801817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A142418 (n : ℕ) : ℤ :=
  (A142418.P5100325192273801817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A142418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142419.P776283272500742932

`p?[49*n+6]`
-/

namespace A142419.P776283272500742932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142419.P776283272500742932

noncomputable section

/-- A142419: Primes congruent to 6 mod 49.

Offset 1, canonical program `A142419.P776283272500742932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A142419 (n : ℕ) : ℤ :=
  (A142419.P776283272500742932.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. -/
def A142419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142420.P1512918209034119506

`p?[49*n+8]`
-/

namespace A142420.P1512918209034119506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142420.P1512918209034119506

noncomputable section

/-- A142420: Primes congruent to 8 mod 49.

Offset 1, canonical program `A142420.P1512918209034119506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1859 terms. -/
def A142420 (n : ℕ) : ℤ :=
  (A142420.P1512918209034119506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1859 terms. -/
def A142420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142421.P115937325329005773

`p?[98*n+9]`
-/

namespace A142421.P115937325329005773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142421.P115937325329005773

noncomputable section

/-- A142421: Primes congruent to 9 mod 49.

Offset 1, canonical program `A142421.P115937325329005773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1848 terms. -/
def A142421 (n : ℕ) : ℤ :=
  (A142421.P115937325329005773.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1848 terms. -/
def A142421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142422.P15421781261087999992

`p?[49*n+10]`
-/

namespace A142422.P15421781261087999992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142422.P15421781261087999992

noncomputable section

/-- A142422: Primes congruent to 10 mod 49.

Offset 1, canonical program `A142422.P15421781261087999992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A142422 (n : ℕ) : ℤ :=
  (A142422.P15421781261087999992.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A142422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142423.P3925050904865258140

`p?[49*n+11]`
-/

namespace A142423.P3925050904865258140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142423.P3925050904865258140

noncomputable section

/-- A142423: Primes congruent to 11 mod 49.

Offset 1, canonical program `A142423.P3925050904865258140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A142423 (n : ℕ) : ℤ :=
  (A142423.P3925050904865258140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A142423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142424.P17597334879441742239

`p?[49*n+12]`
-/

namespace A142424.P17597334879441742239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142424.P17597334879441742239

noncomputable section

/-- A142424: Primes congruent to 12 mod 49.

Offset 1, canonical program `A142424.P17597334879441742239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A142424 (n : ℕ) : ℤ :=
  (A142424.P17597334879441742239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. -/
def A142424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142425.P10894764248669936739

`p?[49*n+13]`
-/

namespace A142425.P10894764248669936739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142425.P10894764248669936739

noncomputable section

/-- A142425: Primes congruent to 13 mod 49.

Offset 1, canonical program `A142425.P10894764248669936739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1888 terms. -/
def A142425 (n : ℕ) : ℤ :=
  (A142425.P10894764248669936739.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1888 terms. -/
def A142425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142426.P3751954481335393160

`p?[49*n+15]`
-/

namespace A142426.P3751954481335393160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142426.P3751954481335393160

noncomputable section

/-- A142426: Primes congruent to 15 mod 49.

Offset 1, canonical program `A142426.P3751954481335393160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A142426 (n : ℕ) : ℤ :=
  (A142426.P3751954481335393160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A142426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142427.P5704172479571554384

`p?[49*n+16]`
-/

namespace A142427.P5704172479571554384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142427.P5704172479571554384

noncomputable section

/-- A142427: Primes congruent to 16 mod 49.

Offset 1, canonical program `A142427.P5704172479571554384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. -/
def A142427 (n : ℕ) : ℤ :=
  (A142427.P5704172479571554384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. -/
def A142427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142428.P11246402185100572239

`p?[49*n+17]`
-/

namespace A142428.P11246402185100572239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142428.P11246402185100572239

noncomputable section

/-- A142428: Primes congruent to 17 mod 49.

Offset 1, canonical program `A142428.P11246402185100572239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1886 terms. -/
def A142428 (n : ℕ) : ℤ :=
  (A142428.P11246402185100572239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1886 terms. -/
def A142428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142429.P13259812496142464532

`p?[49*n+18]`
-/

namespace A142429.P13259812496142464532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142429.P13259812496142464532

noncomputable section

/-- A142429: Primes congruent to 18 mod 49.

Offset 1, canonical program `A142429.P13259812496142464532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A142429 (n : ℕ) : ℤ :=
  (A142429.P13259812496142464532.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A142429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142430.P1326271075177512410

`p?[49*n+19]`
-/

namespace A142430.P1326271075177512410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142430.P1326271075177512410

noncomputable section

/-- A142430: Primes congruent to 19 mod 49.

Offset 1, canonical program `A142430.P1326271075177512410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1865 terms. -/
def A142430 (n : ℕ) : ℤ :=
  (A142430.P1326271075177512410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1865 terms. -/
def A142430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142431.P7787216754401770038

`p?[49*n+20]`
-/

namespace A142431.P7787216754401770038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142431.P7787216754401770038

noncomputable section

/-- A142431: Primes congruent to 20 mod 49.

Offset 1, canonical program `A142431.P7787216754401770038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1844 terms. -/
def A142431 (n : ℕ) : ℤ :=
  (A142431.P7787216754401770038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1844 terms. -/
def A142431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142432.P13033102776452484171

`p?[49*n+22]`
-/

namespace A142432.P13033102776452484171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142432.P13033102776452484171

noncomputable section

/-- A142432: Primes congruent to 22 mod 49.

Offset 1, canonical program `A142432.P13033102776452484171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A142432 (n : ℕ) : ℤ :=
  (A142432.P13033102776452484171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A142432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142433.P13028862557884119428

`p?[98*n+23]`
-/

namespace A142433.P13028862557884119428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142433.P13028862557884119428

noncomputable section

/-- A142433: Primes congruent to 23 mod 49.

Offset 1, canonical program `A142433.P13028862557884119428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A142433 (n : ℕ) : ℤ :=
  (A142433.P13028862557884119428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. -/
def A142433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142434.P3630912060890464926

`p?[49*n+24]`
-/

namespace A142434.P3630912060890464926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142434.P3630912060890464926

noncomputable section

/-- A142434: Primes congruent to 24 mod 49.

Offset 1, canonical program `A142434.P3630912060890464926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1865 terms. -/
def A142434 (n : ℕ) : ℤ :=
  (A142434.P3630912060890464926.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1865 terms. -/
def A142434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142435.P11952639995427579839

`p?[49*n-24]`
-/

namespace A142435.P11952639995427579839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142435.P11952639995427579839

noncomputable section

/-- A142435: Primes congruent to 25 mod 49.

Offset 1, canonical program `A142435.P11952639995427579839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. -/
def A142435 (n : ℕ) : ℤ :=
  A142435.P11952639995427579839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. -/
def A142435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142436.P9981599043368276042

`p?[49*n-23]`
-/

namespace A142436.P9981599043368276042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142436.P9981599043368276042

noncomputable section

/-- A142436: Primes congruent to 26 mod 49.

Offset 1, canonical program `A142436.P9981599043368276042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A142436 (n : ℕ) : ℤ :=
  A142436.P9981599043368276042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. -/
def A142436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142437.P9659196933488218483

`p?[49*n-22]`
-/

namespace A142437.P9659196933488218483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142437.P9659196933488218483

noncomputable section

/-- A142437: Primes congruent to 27 mod 49.

Offset 1, canonical program `A142437.P9659196933488218483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. -/
def A142437 (n : ℕ) : ℤ :=
  A142437.P9659196933488218483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. -/
def A142437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142438.P10021709092188192094

`p?[49*n+29]`
-/

namespace A142438.P10021709092188192094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142438.P10021709092188192094

noncomputable section

/-- A142438: Primes congruent to 29 mod 49.

Offset 1, canonical program `A142438.P10021709092188192094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A142438 (n : ℕ) : ℤ :=
  (A142438.P10021709092188192094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A142438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142439.P10517324320887491304

`p?[49*n-19]`
-/

namespace A142439.P10517324320887491304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142439.P10517324320887491304

noncomputable section

/-- A142439: Primes congruent to 30 mod 49.

Offset 1, canonical program `A142439.P10517324320887491304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A142439 (n : ℕ) : ℤ :=
  A142439.P10517324320887491304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. -/
def A142439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142440.P830069249170132830

`p?[49*n-18]`
-/

namespace A142440.P830069249170132830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142440.P830069249170132830

noncomputable section

/-- A142440: Primes congruent to 31 mod 49.

Offset 1, canonical program `A142440.P830069249170132830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A142440 (n : ℕ) : ℤ :=
  A142440.P830069249170132830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A142440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142441.P9075176759521242998

`p?[49*n-17]`
-/

namespace A142441.P9075176759521242998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142441.P9075176759521242998

noncomputable section

/-- A142441: Primes congruent to 32 mod 49.

Offset 1, canonical program `A142441.P9075176759521242998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A142441 (n : ℕ) : ℤ :=
  A142441.P9075176759521242998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A142441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142442.P5986405944583897844

`p?[49*n-16]`
-/

namespace A142442.P5986405944583897844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142442.P5986405944583897844

noncomputable section

/-- A142442: Primes congruent to 33 mod 49.

Offset 1, canonical program `A142442.P5986405944583897844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. -/
def A142442 (n : ℕ) : ℤ :=
  A142442.P5986405944583897844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. -/
def A142442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142443.P13821965067619815590

`p?[49*n-15]`
-/

namespace A142443.P13821965067619815590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142443.P13821965067619815590

noncomputable section

/-- A142443: Primes congruent to 34 mod 49.

Offset 1, canonical program `A142443.P13821965067619815590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A142443 (n : ℕ) : ℤ :=
  A142443.P13821965067619815590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1847 terms. -/
def A142443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142444.P12046304224913857930

`p?[49*n-13]`
-/

namespace A142444.P12046304224913857930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142444.P12046304224913857930

noncomputable section

/-- A142444: Primes congruent to 36 mod 49.

Offset 1, canonical program `A142444.P12046304224913857930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. -/
def A142444 (n : ℕ) : ℤ :=
  A142444.P12046304224913857930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1862 terms. -/
def A142444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142445.P12832947425063422088

`p?[49*n-12]`
-/

namespace A142445.P12832947425063422088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142445.P12832947425063422088

noncomputable section

/-- A142445: Primes congruent to 37 mod 49.

Offset 1, canonical program `A142445.P12832947425063422088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. -/
def A142445 (n : ℕ) : ℤ :=
  A142445.P12832947425063422088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. -/
def A142445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142446.P15401058239902955193

`p?[49*n-11]`
-/

namespace A142446.P15401058239902955193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142446.P15401058239902955193

noncomputable section

/-- A142446: Primes congruent to 38 mod 49.

Offset 1, canonical program `A142446.P15401058239902955193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1859 terms. -/
def A142446 (n : ℕ) : ℤ :=
  A142446.P15401058239902955193.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1859 terms. -/
def A142446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142447.P11000626731989421513

`p?[49*n-10]`
-/

namespace A142447.P11000626731989421513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142447.P11000626731989421513

noncomputable section

/-- A142447: Primes congruent to 39 mod 49.

Offset 1, canonical program `A142447.P11000626731989421513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. -/
def A142447 (n : ℕ) : ℤ :=
  A142447.P11000626731989421513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. -/
def A142447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142448.P17036428714241313504

`p?[98*n-9]`
-/

namespace A142448.P17036428714241313504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (98 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142448.P17036428714241313504

noncomputable section

/-- A142448: Primes congruent to 40 mod 49.

Offset 1, canonical program `A142448.P17036428714241313504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A142448 (n : ℕ) : ℤ :=
  A142448.P17036428714241313504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1901 terms. -/
def A142448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142449.P15985166372383252766

`p?[49*n-8]`
-/

namespace A142449.P15985166372383252766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142449.P15985166372383252766

noncomputable section

/-- A142449: Primes congruent to 41 mod 49.

Offset 1, canonical program `A142449.P15985166372383252766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A142449 (n : ℕ) : ℤ :=
  A142449.P15985166372383252766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1875 terms. -/
def A142449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142450.P14669569743645078518

`p?[49*n-6]`
-/

namespace A142450.P14669569743645078518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142450.P14669569743645078518

noncomputable section

/-- A142450: Primes congruent to 43 mod 49.

Offset 1, canonical program `A142450.P14669569743645078518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. -/
def A142450 (n : ℕ) : ℤ :=
  A142450.P14669569743645078518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. -/
def A142450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142451.P16375668238435380372

`p?[49*n-5]`
-/

namespace A142451.P16375668238435380372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142451.P16375668238435380372

noncomputable section

/-- A142451: Primes congruent to 44 mod 49.

Offset 1, canonical program `A142451.P16375668238435380372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1871 terms. -/
def A142451 (n : ℕ) : ℤ :=
  A142451.P16375668238435380372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1871 terms. -/
def A142451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142452.P16353487928396230098

`p?[49*n-4]`
-/

namespace A142452.P16353487928396230098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142452.P16353487928396230098

noncomputable section

/-- A142452: Primes congruent to 45 mod 49.

Offset 1, canonical program `A142452.P16353487928396230098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A142452 (n : ℕ) : ℤ :=
  A142452.P16353487928396230098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. -/
def A142452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142453.P2282337085259382380

`p?[49*n-3]`
-/

namespace A142453.P2282337085259382380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142453.P2282337085259382380

noncomputable section

/-- A142453: Primes congruent to 46 mod 49.

Offset 1, canonical program `A142453.P2282337085259382380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1852 terms. -/
def A142453 (n : ℕ) : ℤ :=
  A142453.P2282337085259382380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1852 terms. -/
def A142453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142454.P15248753937072255215

`p?[49*n-2]`
-/

namespace A142454.P15248753937072255215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142454.P15248753937072255215

noncomputable section

/-- A142454: Primes congruent to 47 mod 49.

Offset 1, canonical program `A142454.P15248753937072255215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1845 terms. -/
def A142454 (n : ℕ) : ℤ :=
  A142454.P15248753937072255215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1845 terms. -/
def A142454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142455.P9568799611182206456

`p?[49*n-1]`
-/

namespace A142455.P9568799611182206456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (49 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142455.P9568799611182206456

noncomputable section

/-- A142455: Primes congruent to 48 mod 49.

Offset 1, canonical program `A142455.P9568799611182206456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A142455 (n : ℕ) : ℤ :=
  A142455.P9568799611182206456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. -/
def A142455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142460.P11106081468751152963

`(5*row(n)-5*col(n)+1)*T(n-1,k-1)+(5*col(n)-4)*T(n-1,k)+5*T(n-1,k)` with `a(0)=1`
-/

namespace A142460.P11106081468751152963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 * SequenceMachineLib.triRow n : ℤ) - (5 * SequenceMachineLib.triCol n : ℤ) + 1) * SequenceMachineLib.triUpLeft a n + ((5 * SequenceMachineLib.triCol n : ℤ) - 4) * SequenceMachineLib.triUp a n + 5 * SequenceMachineLib.triUp a n

end

end A142460.P11106081468751152963

noncomputable section

/-- A142460: Triangle read by rows: T(n,k) (1<=k<=n) given by T(n, 1) = T(n,n) = 1, otherwise T(n, k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = 5.

Offset 1, canonical program `A142460.P11106081468751152963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1398 terms. -/
def A142460 (n : ℕ) : ℤ :=
  A142460.P11106081468751152963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1398 terms. -/
def A142460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142461.P18360697246162468095

`(6*row(n)-6*col(n)+1)*T(n-1,k-1)+(6*col(n)-5)*T(n-1,k)+6*T(n-1,k)` with `a(0)=1`
-/

namespace A142461.P18360697246162468095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((6 * SequenceMachineLib.triRow n : ℤ) - (6 * SequenceMachineLib.triCol n : ℤ) + 1) * SequenceMachineLib.triUpLeft a n + ((6 * SequenceMachineLib.triCol n : ℤ) - 5) * SequenceMachineLib.triUp a n + 6 * SequenceMachineLib.triUp a n

end

end A142461.P18360697246162468095

noncomputable section

/-- A142461: Triangle read by rows: T(n,k) (1 <= k <= n) given by T(n, 1) = T(n,n) = 1, otherwise T(n, k) = (m*n-m*k+1)*T(n-1,k-1) + (m*k-m+1)*T(n-1,k), where m = 6.

Offset 1, canonical program `A142461.P18360697246162468095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A142461 (n : ℕ) : ℤ :=
  A142461.P18360697246162468095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A142461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142464.P18179716683046878993

`a(n-1)` with `a(0)=3, a(1)=6, a(2)=1`
-/

namespace A142464.P18179716683046878993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 1] fun n a =>
  a (n - 1)

end

end A142464.P18179716683046878993

noncomputable section

/-- A142464: Decimal expansion of 13/36.

Offset 0, canonical program `A142464.P18179716683046878993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142464 (n : ℕ) : ℤ :=
  (A142464.P18179716683046878993.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142476.P16180172496305768413

`p?[51*n+1]`
-/

namespace A142476.P16180172496305768413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142476.P16180172496305768413

noncomputable section

/-- A142476: Primes congruent to 1 mod 51.

Offset 1, canonical program `A142476.P16180172496305768413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2427 terms. -/
def A142476 (n : ℕ) : ℤ :=
  (A142476.P16180172496305768413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2427 terms. -/
def A142476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142477.P16501934418740501259

`p?[51*n+2]`
-/

namespace A142477.P16501934418740501259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142477.P16501934418740501259

noncomputable section

/-- A142477: Primes congruent to 2 mod 51.

Offset 1, canonical program `A142477.P16501934418740501259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A142477 (n : ℕ) : ℤ :=
  (A142477.P16501934418740501259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A142477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142479.P9040338625487133999

`p?[51*n+5]`
-/

namespace A142479.P9040338625487133999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142479.P9040338625487133999

noncomputable section

/-- A142479: Primes congruent to 5 mod 51.

Offset 1, canonical program `A142479.P9040338625487133999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A142479 (n : ℕ) : ℤ :=
  (A142479.P9040338625487133999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A142479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142480.P5226708681425799937

`p?[51*n+7]`
-/

namespace A142480.P5226708681425799937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142480.P5226708681425799937

noncomputable section

/-- A142480: Primes congruent to 7 mod 51.

Offset 1, canonical program `A142480.P5226708681425799937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A142480 (n : ℕ) : ℤ :=
  (A142480.P5226708681425799937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A142480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142481.P4873203718547970786

`p?[51*n+8]`
-/

namespace A142481.P4873203718547970786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142481.P4873203718547970786

noncomputable section

/-- A142481: Primes congruent to 8 mod 51.

Offset 1, canonical program `A142481.P4873203718547970786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A142481 (n : ℕ) : ℤ :=
  (A142481.P4873203718547970786.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A142481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142482.P9448669777898470811

`p?[51*n+10]`
-/

namespace A142482.P9448669777898470811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142482.P9448669777898470811

noncomputable section

/-- A142482: Primes congruent to 10 mod 51.

Offset 1, canonical program `A142482.P9448669777898470811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A142482 (n : ℕ) : ℤ :=
  (A142482.P9448669777898470811.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A142482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142483.P5445031079991533009

`p?[51*n+11]`
-/

namespace A142483.P5445031079991533009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142483.P5445031079991533009

noncomputable section

/-- A142483: Primes congruent to 11 mod 51.

Offset 1, canonical program `A142483.P5445031079991533009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A142483 (n : ℕ) : ℤ :=
  (A142483.P5445031079991533009.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2479 terms. -/
def A142483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142484.P6216944653823223941

`p?[51*n+13]`
-/

namespace A142484.P6216944653823223941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142484.P6216944653823223941

noncomputable section

/-- A142484: Primes congruent to 13 mod 51.

Offset 1, canonical program `A142484.P6216944653823223941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A142484 (n : ℕ) : ℤ :=
  (A142484.P6216944653823223941.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2431 terms. -/
def A142484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142486.P4779644728905971772

`p?[51*n+16]`
-/

namespace A142486.P4779644728905971772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142486.P4779644728905971772

noncomputable section

/-- A142486: Primes congruent to 16 mod 51.

Offset 1, canonical program `A142486.P4779644728905971772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. -/
def A142486 (n : ℕ) : ℤ :=
  (A142486.P4779644728905971772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2434 terms. -/
def A142486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142487.P12567645392230628047

`p?[51*n+19]`
-/

namespace A142487.P12567645392230628047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142487.P12567645392230628047

noncomputable section

/-- A142487: Primes congruent to 19 mod 51.

Offset 1, canonical program `A142487.P12567645392230628047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A142487 (n : ℕ) : ℤ :=
  (A142487.P12567645392230628047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2446 terms. -/
def A142487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142488.P5347374661696826231

`p?[51*n+20]`
-/

namespace A142488.P5347374661696826231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142488.P5347374661696826231

noncomputable section

/-- A142488: Primes congruent to 20 mod 51.

Offset 1, canonical program `A142488.P5347374661696826231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A142488 (n : ℕ) : ℤ :=
  (A142488.P5347374661696826231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A142488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142489.P7445239063544031094

`p?[51*n+22]`
-/

namespace A142489.P7445239063544031094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142489.P7445239063544031094

noncomputable section

/-- A142489: Primes congruent to 22 mod 51.

Offset 1, canonical program `A142489.P7445239063544031094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A142489 (n : ℕ) : ℤ :=
  (A142489.P7445239063544031094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A142489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142490.P13538752229405891440

`p?[51*n+23]`
-/

namespace A142490.P13538752229405891440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142490.P13538752229405891440

noncomputable section

/-- A142490: Primes congruent to 23 mod 51.

Offset 1, canonical program `A142490.P13538752229405891440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A142490 (n : ℕ) : ℤ :=
  (A142490.P13538752229405891440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A142490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142491.P9692789456208390047

`p?[51*n+25]`
-/

namespace A142491.P9692789456208390047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  51 * n + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142491.P9692789456208390047

noncomputable section

/-- A142491: Primes congruent to 25 mod 51.

Offset 1, canonical program `A142491.P9692789456208390047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A142491 (n : ℕ) : ℤ :=
  (A142491.P9692789456208390047.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A142491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142492.P9048498068907421437

`p?[51*n-25]`
-/

namespace A142492.P9048498068907421437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142492.P9048498068907421437

noncomputable section

/-- A142492: Primes congruent to 26 mod 51.

Offset 1, canonical program `A142492.P9048498068907421437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A142492 (n : ℕ) : ℤ :=
  A142492.P9048498068907421437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A142492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142493.P4438798063706308318

`p?[51*n-23]`
-/

namespace A142493.P4438798063706308318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142493.P4438798063706308318

noncomputable section

/-- A142493: Primes congruent to 28 mod 51.

Offset 1, canonical program `A142493.P4438798063706308318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. -/
def A142493 (n : ℕ) : ℤ :=
  A142493.P4438798063706308318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2426 terms. -/
def A142493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142494.P9913982677588388870

`p?[51*n-22]`
-/

namespace A142494.P9913982677588388870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142494.P9913982677588388870

noncomputable section

/-- A142494: Primes congruent to 29 mod 51.

Offset 1, canonical program `A142494.P9913982677588388870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A142494 (n : ℕ) : ℤ :=
  A142494.P9913982677588388870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A142494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142496.P11677570639286626683

`p?[51*n-19]`
-/

namespace A142496.P11677570639286626683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142496.P11677570639286626683

noncomputable section

/-- A142496: Primes congruent to 32 mod 51.

Offset 1, canonical program `A142496.P11677570639286626683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A142496 (n : ℕ) : ℤ :=
  A142496.P11677570639286626683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A142496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142497.P13727909841269271743

`p?[51*n-16]`
-/

namespace A142497.P13727909841269271743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142497.P13727909841269271743

noncomputable section

/-- A142497: Primes congruent to 35 mod 51.

Offset 1, canonical program `A142497.P13727909841269271743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A142497 (n : ℕ) : ℤ :=
  A142497.P13727909841269271743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A142497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142498.P11279174544589885965

`p?[3*17*n+37]`
-/

namespace A142498.P11279174544589885965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (17 * n) + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142498.P11279174544589885965

noncomputable section

/-- A142498: Primes congruent to 37 mod 51.

Offset 1, canonical program `A142498.P11279174544589885965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A142498 (n : ℕ) : ℤ :=
  (A142498.P11279174544589885965.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A142498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142500.P7476568207579945483

`p?[51*n-11]`
-/

namespace A142500.P7476568207579945483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142500.P7476568207579945483

noncomputable section

/-- A142500: Primes congruent to 40 mod 51.

Offset 1, canonical program `A142500.P7476568207579945483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. -/
def A142500 (n : ℕ) : ℤ :=
  A142500.P7476568207579945483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. -/
def A142500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142501.P7513274774437985626

`p?[51*n-10]`
-/

namespace A142501.P7513274774437985626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142501.P7513274774437985626

noncomputable section

/-- A142501: Primes congruent to 41 mod 51.

Offset 1, canonical program `A142501.P7513274774437985626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A142501 (n : ℕ) : ℤ :=
  A142501.P7513274774437985626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2452 terms. -/
def A142501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142502.P2963416091824763281

`p?[51*n-8]`
-/

namespace A142502.P2963416091824763281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142502.P2963416091824763281

noncomputable section

/-- A142502: Primes congruent to 43 mod 51.

Offset 1, canonical program `A142502.P2963416091824763281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A142502 (n : ℕ) : ℤ :=
  A142502.P2963416091824763281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A142502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142503.P714404954567768703

`p?[51*n-7]`
-/

namespace A142503.P714404954567768703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142503.P714404954567768703

noncomputable section

/-- A142503: Primes congruent to 44 mod 51.

Offset 1, canonical program `A142503.P714404954567768703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A142503 (n : ℕ) : ℤ :=
  A142503.P714404954567768703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A142503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142504.P16442748406109015156

`p?[51*n-5]`
-/

namespace A142504.P16442748406109015156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142504.P16442748406109015156

noncomputable section

/-- A142504: Primes congruent to 46 mod 51.

Offset 1, canonical program `A142504.P16442748406109015156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A142504 (n : ℕ) : ℤ :=
  A142504.P16442748406109015156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A142504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142505.P12520781874869629303

`p?[51*n-4]`
-/

namespace A142505.P12520781874869629303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142505.P12520781874869629303

noncomputable section

/-- A142505: Primes congruent to 47 mod 51.

Offset 1, canonical program `A142505.P12520781874869629303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A142505 (n : ℕ) : ℤ :=
  A142505.P12520781874869629303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A142505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142506.P5353581045395565899

`p?[51*n-2]`
-/

namespace A142506.P5353581045395565899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142506.P5353581045395565899

noncomputable section

/-- A142506: Primes congruent to 49 mod 51.

Offset 1, canonical program `A142506.P5353581045395565899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A142506 (n : ℕ) : ℤ :=
  A142506.P5353581045395565899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2466 terms. -/
def A142506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142507.P7060105591973240231

`p?[51*n-1]`
-/

namespace A142507.P7060105591973240231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (51 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142507.P7060105591973240231

noncomputable section

/-- A142507: Primes congruent to 50 mod 51.

Offset 1, canonical program `A142507.P7060105591973240231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A142507 (n : ℕ) : ℤ :=
  A142507.P7060105591973240231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A142507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142508.P10837616515559294826

`p?[52*n+1]`
-/

namespace A142508.P10837616515559294826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142508.P10837616515559294826

noncomputable section

/-- A142508: Primes congruent to 1 mod 52.

Offset 1, canonical program `A142508.P10837616515559294826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A142508 (n : ℕ) : ℤ :=
  (A142508.P10837616515559294826.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3248 terms. -/
def A142508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142510.P15793601626251418668

`p?[52*n+5]`
-/

namespace A142510.P15793601626251418668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142510.P15793601626251418668

noncomputable section

/-- A142510: Primes congruent to 5 mod 52.

Offset 1, canonical program `A142510.P15793601626251418668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A142510 (n : ℕ) : ℤ :=
  (A142510.P15793601626251418668.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3267 terms. -/
def A142510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142511.P4190831569276020721

`p?[52*n+7]`
-/

namespace A142511.P4190831569276020721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142511.P4190831569276020721

noncomputable section

/-- A142511: Primes congruent to 7 mod 52.

Offset 1, canonical program `A142511.P4190831569276020721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. -/
def A142511 (n : ℕ) : ℤ :=
  (A142511.P4190831569276020721.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3261 terms. -/
def A142511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142512.P8180680481272329230

`p?[52*n+9]`
-/

namespace A142512.P8180680481272329230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142512.P8180680481272329230

noncomputable section

/-- A142512: Primes congruent to 9 mod 52.

Offset 1, canonical program `A142512.P8180680481272329230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. -/
def A142512 (n : ℕ) : ℤ :=
  (A142512.P8180680481272329230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. -/
def A142512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142513.P12294925522220628780

`p?[52*n+11]`
-/

namespace A142513.P12294925522220628780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142513.P12294925522220628780

noncomputable section

/-- A142513: Primes congruent to 11 mod 52.

Offset 1, canonical program `A142513.P12294925522220628780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3284 terms. -/
def A142513 (n : ℕ) : ℤ :=
  (A142513.P12294925522220628780.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3284 terms. -/
def A142513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142514.P336309929502532069

`p?[52*n+15]`
-/

namespace A142514.P336309929502532069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142514.P336309929502532069

noncomputable section

/-- A142514: Primes congruent to 15 mod 52.

Offset 1, canonical program `A142514.P336309929502532069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142514 (n : ℕ) : ℤ :=
  (A142514.P336309929502532069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142516.P4987968122826076168

`p?[52*n-33]`
-/

namespace A142516.P4987968122826076168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 33

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142516.P4987968122826076168

noncomputable section

/-- A142516: Primes congruent to 19 mod 52.

Offset 1, canonical program `A142516.P4987968122826076168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3294 terms. -/
def A142516 (n : ℕ) : ℤ :=
  A142516.P4987968122826076168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3294 terms. -/
def A142516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142518.P4932496381653817914

`p?[4*13*n+23]`
-/

namespace A142518.P4932496381653817914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (13 * n) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142518.P4932496381653817914

noncomputable section

/-- A142518: Primes congruent to 23 mod 52.

Offset 1, canonical program `A142518.P4932496381653817914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A142518 (n : ℕ) : ℤ :=
  (A142518.P4932496381653817914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A142518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142519.P13521085752232109429

`p?[a(n-1)+52]` with `a(0)=25`
-/

namespace A142519.P13521085752232109429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [25] fun n f1 =>
  f1 (n - 1) + 52

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142519.P13521085752232109429

noncomputable section

/-- A142519: Primes congruent to 25 mod 52.

Offset 1, canonical program `A142519.P13521085752232109429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3253 terms. -/
def A142519 (n : ℕ) : ℤ :=
  (A142519.P13521085752232109429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3253 terms. -/
def A142519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142520.P15613139593981992254

`p?[a(n-1)+52]` with `a(0)=27`
-/

namespace A142520.P15613139593981992254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [27] fun n f1 =>
  f1 (n - 1) + 52

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142520.P15613139593981992254

noncomputable section

/-- A142520: Primes congruent to 27 mod 52.

Offset 1, canonical program `A142520.P15613139593981992254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3291 terms. -/
def A142520 (n : ℕ) : ℤ :=
  (A142520.P15613139593981992254.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3291 terms. -/
def A142520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142522.P11018006263627097626

`p?[52*n-21]`
-/

namespace A142522.P11018006263627097626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142522.P11018006263627097626

noncomputable section

/-- A142522: Primes congruent to 31 mod 52.

Offset 1, canonical program `A142522.P11018006263627097626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. -/
def A142522 (n : ℕ) : ℤ :=
  A142522.P11018006263627097626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. -/
def A142522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142523.P2913508382872282978

`p?[52*n+33]`
-/

namespace A142523.P2913508382872282978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52 * n + 33

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142523.P2913508382872282978

noncomputable section

/-- A142523: Primes congruent to 33 mod 52.

Offset 1, canonical program `A142523.P2913508382872282978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A142523 (n : ℕ) : ℤ :=
  (A142523.P2913508382872282978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A142523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142524.P6988949787904789520

`p?[52*n-17]`
-/

namespace A142524.P6988949787904789520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142524.P6988949787904789520

noncomputable section

/-- A142524: Primes congruent to 35 mod 52.

Offset 1, canonical program `A142524.P6988949787904789520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. -/
def A142524 (n : ℕ) : ℤ :=
  A142524.P6988949787904789520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3288 terms. -/
def A142524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142525.P15563797761922430760

`p?[52*n-15]`
-/

namespace A142525.P15563797761922430760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142525.P15563797761922430760

noncomputable section

/-- A142525: Primes congruent to 37 mod 52.

Offset 1, canonical program `A142525.P15563797761922430760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3249 terms. -/
def A142525 (n : ℕ) : ℤ :=
  A142525.P15563797761922430760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3249 terms. -/
def A142525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142526.P4135253918980577179

`p?[2*26*n-11]`
-/

namespace A142526.P4135253918980577179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (26 * n) : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142526.P4135253918980577179

noncomputable section

/-- A142526: Primes congruent to 41 mod 52.

Offset 1, canonical program `A142526.P4135253918980577179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3258 terms. -/
def A142526 (n : ℕ) : ℤ :=
  A142526.P4135253918980577179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3258 terms. -/
def A142526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142527.P5267497133949724872

`p?[52*n-9]`
-/

namespace A142527.P5267497133949724872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142527.P5267497133949724872

noncomputable section

/-- A142527: Primes congruent to 43 mod 52.

Offset 1, canonical program `A142527.P5267497133949724872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142527 (n : ℕ) : ℤ :=
  A142527.P5267497133949724872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142528.P8263013899178342337

`p?[52*n-7]`
-/

namespace A142528.P8263013899178342337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142528.P8263013899178342337

noncomputable section

/-- A142528: Primes congruent to 45 mod 52.

Offset 1, canonical program `A142528.P8263013899178342337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. -/
def A142528 (n : ℕ) : ℤ :=
  A142528.P8263013899178342337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. -/
def A142528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142529.P6649407907332709917

`p?[52*n-5]`
-/

namespace A142529.P6649407907332709917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142529.P6649407907332709917

noncomputable section

/-- A142529: Primes congruent to 47 mod 52.

Offset 1, canonical program `A142529.P6649407907332709917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142529 (n : ℕ) : ℤ :=
  A142529.P6649407907332709917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142530.P11059090855863787082

`p?[52*n-3]`
-/

namespace A142530.P11059090855863787082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142530.P11059090855863787082

noncomputable section

/-- A142530: Primes congruent to 49 mod 52.

Offset 1, canonical program `A142530.P11059090855863787082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A142530 (n : ℕ) : ℤ :=
  A142530.P11059090855863787082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3277 terms. -/
def A142530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142531.P10237233937896600726

`p?[52*n-1]`
-/

namespace A142531.P10237233937896600726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (52 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142531.P10237233937896600726

noncomputable section

/-- A142531: Primes congruent to 51 mod 52.

Offset 1, canonical program `A142531.P10237233937896600726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3292 terms. -/
def A142531 (n : ℕ) : ℤ :=
  A142531.P10237233937896600726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3292 terms. -/
def A142531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142532.P13946379631833110420

`p?[53*n+2]`
-/

namespace A142532.P13946379631833110420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142532.P13946379631833110420

noncomputable section

/-- A142532: Primes congruent to 2 mod 53.

Offset 1, canonical program `A142532.P13946379631833110420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A142532 (n : ℕ) : ℤ :=
  (A142532.P13946379631833110420.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A142532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142533.P16568516609180451398

`p?[53*n+3]`
-/

namespace A142533.P16568516609180451398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142533.P16568516609180451398

noncomputable section

/-- A142533: Primes congruent to 3 mod 53.

Offset 1, canonical program `A142533.P16568516609180451398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1509 terms. -/
def A142533 (n : ℕ) : ℤ :=
  (A142533.P16568516609180451398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1509 terms. -/
def A142533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142534.P10082379553316276253

`p?[53*n+4]`
-/

namespace A142534.P10082379553316276253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142534.P10082379553316276253

noncomputable section

/-- A142534: Primes congruent to 4 mod 53.

Offset 1, canonical program `A142534.P10082379553316276253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A142534 (n : ℕ) : ℤ :=
  (A142534.P10082379553316276253.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A142534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142535.P11369600720982195924

`p?[53*n+5]`
-/

namespace A142535.P11369600720982195924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142535.P11369600720982195924

noncomputable section

/-- A142535: Primes congruent to 5 mod 53.

Offset 1, canonical program `A142535.P11369600720982195924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. -/
def A142535 (n : ℕ) : ℤ :=
  (A142535.P11369600720982195924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. -/
def A142535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142536.P6532909762030871676

`p?[53*n+6]`
-/

namespace A142536.P6532909762030871676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142536.P6532909762030871676

noncomputable section

/-- A142536: Primes congruent to 6 mod 53.

Offset 1, canonical program `A142536.P6532909762030871676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142536 (n : ℕ) : ℤ :=
  (A142536.P6532909762030871676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142537.P10942053936895890549

`p?[53*n+7]`
-/

namespace A142537.P10942053936895890549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142537.P10942053936895890549

noncomputable section

/-- A142537: Primes congruent to 7 mod 53.

Offset 1, canonical program `A142537.P10942053936895890549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1516 terms. -/
def A142537 (n : ℕ) : ℤ :=
  (A142537.P10942053936895890549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1516 terms. -/
def A142537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142538.P10793442619171687906

`p?[53*n+8]`
-/

namespace A142538.P10793442619171687906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142538.P10793442619171687906

noncomputable section

/-- A142538: Primes congruent to 8 mod 53.

Offset 1, canonical program `A142538.P10793442619171687906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A142538 (n : ℕ) : ℤ :=
  (A142538.P10793442619171687906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A142538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142539.P11762698342472285005

`p?[53*n+9]`
-/

namespace A142539.P11762698342472285005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142539.P11762698342472285005

noncomputable section

/-- A142539: Primes congruent to 9 mod 53.

Offset 1, canonical program `A142539.P11762698342472285005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. -/
def A142539 (n : ℕ) : ℤ :=
  (A142539.P11762698342472285005.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. -/
def A142539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142540.P2217964675190997392

`p?[53*n+10]`
-/

namespace A142540.P2217964675190997392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142540.P2217964675190997392

noncomputable section

/-- A142540: Primes congruent to 10 mod 53.

Offset 1, canonical program `A142540.P2217964675190997392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. -/
def A142540 (n : ℕ) : ℤ :=
  (A142540.P2217964675190997392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. -/
def A142540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142541.P7515019460399577004

`p?[53*n+11]`
-/

namespace A142541.P7515019460399577004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142541.P7515019460399577004

noncomputable section

/-- A142541: Primes congruent to 11 mod 53.

Offset 1, canonical program `A142541.P7515019460399577004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142541 (n : ℕ) : ℤ :=
  (A142541.P7515019460399577004.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142542.P533235712252162130

`p?[53*n+12]`
-/

namespace A142542.P533235712252162130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142542.P533235712252162130

noncomputable section

/-- A142542: Primes congruent to 12 mod 53.

Offset 1, canonical program `A142542.P533235712252162130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A142542 (n : ℕ) : ℤ :=
  (A142542.P533235712252162130.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A142542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142543.P13721539067979919973

`p?[53*n+13]`
-/

namespace A142543.P13721539067979919973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142543.P13721539067979919973

noncomputable section

/-- A142543: Primes congruent to 13 mod 53.

Offset 1, canonical program `A142543.P13721539067979919973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1498 terms. -/
def A142543 (n : ℕ) : ℤ :=
  (A142543.P13721539067979919973.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1498 terms. -/
def A142543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142544.P2515203654304685136

`p?[53*n+14]`
-/

namespace A142544.P2515203654304685136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142544.P2515203654304685136

noncomputable section

/-- A142544: Primes congruent to 14 mod 53.

Offset 1, canonical program `A142544.P2515203654304685136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1516 terms. -/
def A142544 (n : ℕ) : ℤ :=
  (A142544.P2515203654304685136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1516 terms. -/
def A142544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142545.P10300672822079420733

`p?[53*n+15]`
-/

namespace A142545.P10300672822079420733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142545.P10300672822079420733

noncomputable section

/-- A142545: Primes congruent to 15 mod 53.

Offset 1, canonical program `A142545.P10300672822079420733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. -/
def A142545 (n : ℕ) : ℤ :=
  (A142545.P10300672822079420733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. -/
def A142545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142546.P18148107209974160927

`p?[53*n+16]`
-/

namespace A142546.P18148107209974160927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142546.P18148107209974160927

noncomputable section

/-- A142546: Primes congruent to 16 mod 53.

Offset 1, canonical program `A142546.P18148107209974160927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1490 terms. -/
def A142546 (n : ℕ) : ℤ :=
  (A142546.P18148107209974160927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1490 terms. -/
def A142546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142547.P9271317736826490547

`p?[53*n+17]`
-/

namespace A142547.P9271317736826490547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142547.P9271317736826490547

noncomputable section

/-- A142547: Primes congruent to 17 mod 53.

Offset 1, canonical program `A142547.P9271317736826490547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1531 terms. -/
def A142547 (n : ℕ) : ℤ :=
  (A142547.P9271317736826490547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1531 terms. -/
def A142547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142548.P13639296875527498970

`p?[53*n+18]`
-/

namespace A142548.P13639296875527498970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142548.P13639296875527498970

noncomputable section

/-- A142548: Primes congruent to 18 mod 53.

Offset 1, canonical program `A142548.P13639296875527498970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1522 terms. -/
def A142548 (n : ℕ) : ℤ :=
  (A142548.P13639296875527498970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1522 terms. -/
def A142548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142549.P8502377864127700655

`p?[53*n+19]`
-/

namespace A142549.P8502377864127700655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142549.P8502377864127700655

noncomputable section

/-- A142549: Primes congruent to 19 mod 53.

Offset 1, canonical program `A142549.P8502377864127700655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A142549 (n : ℕ) : ℤ :=
  (A142549.P8502377864127700655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A142549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142550.P14879884511883009788

`p?[53*n+20]`
-/

namespace A142550.P14879884511883009788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142550.P14879884511883009788

noncomputable section

/-- A142550: Primes congruent to 20 mod 53.

Offset 1, canonical program `A142550.P14879884511883009788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A142550 (n : ℕ) : ℤ :=
  (A142550.P14879884511883009788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1515 terms. -/
def A142550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142551.P57321066052564490

`p?[53*n+21]`
-/

namespace A142551.P57321066052564490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142551.P57321066052564490

noncomputable section

/-- A142551: Primes congruent to 21 mod 53.

Offset 1, canonical program `A142551.P57321066052564490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1495 terms. -/
def A142551 (n : ℕ) : ℤ :=
  (A142551.P57321066052564490.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1495 terms. -/
def A142551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142552.P10742857382744305642

`p?[53*n-31]`
-/

namespace A142552.P10742857382744305642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142552.P10742857382744305642

noncomputable section

/-- A142552: Primes congruent to 22 mod 53.

Offset 1, canonical program `A142552.P10742857382744305642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. -/
def A142552 (n : ℕ) : ℤ :=
  A142552.P10742857382744305642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. -/
def A142552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142553.P16008129457823151344

`p?[53*n+23]`
-/

namespace A142553.P16008129457823151344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142553.P16008129457823151344

noncomputable section

/-- A142553: Primes congruent to 23 mod 53.

Offset 1, canonical program `A142553.P16008129457823151344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1510 terms. -/
def A142553 (n : ℕ) : ℤ :=
  (A142553.P16008129457823151344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1510 terms. -/
def A142553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142554.P5046670377294890160

`p?[a(n-1)+53]` with `a(0)=24`
-/

namespace A142554.P5046670377294890160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [24] fun n f1 =>
  f1 (n - 1) + 53

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142554.P5046670377294890160

noncomputable section

/-- A142554: Primes congruent to 24 mod 53.

Offset 1, canonical program `A142554.P5046670377294890160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A142554 (n : ℕ) : ℤ :=
  (A142554.P5046670377294890160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1496 terms. -/
def A142554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142555.P4054102190725040796

`p?[53*n-28]`
-/

namespace A142555.P4054102190725040796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142555.P4054102190725040796

noncomputable section

/-- A142555: Primes congruent to 25 mod 53.

Offset 1, canonical program `A142555.P4054102190725040796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. -/
def A142555 (n : ℕ) : ℤ :=
  A142555.P4054102190725040796.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1521 terms. -/
def A142555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142556.P7315416885756247894

`p?[53*n+26]`
-/

namespace A142556.P7315416885756247894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142556.P7315416885756247894

noncomputable section

/-- A142556: Primes congruent to 26 mod 53.

Offset 1, canonical program `A142556.P7315416885756247894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A142556 (n : ℕ) : ℤ :=
  (A142556.P7315416885756247894.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A142556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142557.P17053330527406815909

`p?[53*n-26]`
-/

namespace A142557.P17053330527406815909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142557.P17053330527406815909

noncomputable section

/-- A142557: Primes congruent to 27 mod 53.

Offset 1, canonical program `A142557.P17053330527406815909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1533 terms. -/
def A142557 (n : ℕ) : ℤ :=
  A142557.P17053330527406815909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1533 terms. -/
def A142557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142558.P15611946228353489870

`p?[53*n+28]`
-/

namespace A142558.P15611946228353489870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142558.P15611946228353489870

noncomputable section

/-- A142558: Primes congruent to 28 mod 53.

Offset 1, canonical program `A142558.P15611946228353489870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A142558 (n : ℕ) : ℤ :=
  (A142558.P15611946228353489870.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A142558.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142559.P8067734731705167456

`p?[53*n-24]`
-/

namespace A142559.P8067734731705167456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142559.P8067734731705167456

noncomputable section

/-- A142559: Primes congruent to 29 mod 53.

Offset 1, canonical program `A142559.P8067734731705167456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A142559 (n : ℕ) : ℤ :=
  A142559.P8067734731705167456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. -/
def A142559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142560.P2547294110501529911

`p?[53*n-23]`
-/

namespace A142560.P2547294110501529911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142560.P2547294110501529911

noncomputable section

/-- A142560: Primes congruent to 30 mod 53.

Offset 1, canonical program `A142560.P2547294110501529911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. -/
def A142560 (n : ℕ) : ℤ :=
  A142560.P2547294110501529911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. -/
def A142560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142561.P5495587934823750673

`p?[53*n+31]`
-/

namespace A142561.P5495587934823750673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142561.P5495587934823750673

noncomputable section

/-- A142561: Primes congruent to 31 mod 53.

Offset 1, canonical program `A142561.P5495587934823750673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1528 terms. -/
def A142561 (n : ℕ) : ℤ :=
  (A142561.P5495587934823750673.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1528 terms. -/
def A142561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142562.P3809062214029627843

`p?[53*n-21]`
-/

namespace A142562.P3809062214029627843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142562.P3809062214029627843

noncomputable section

/-- A142562: Primes congruent to 32 mod 53.

Offset 1, canonical program `A142562.P3809062214029627843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1510 terms. -/
def A142562 (n : ℕ) : ℤ :=
  A142562.P3809062214029627843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1510 terms. -/
def A142562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142563.P12359353660996850255

`p?[53*n-20]`
-/

namespace A142563.P12359353660996850255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142563.P12359353660996850255

noncomputable section

/-- A142563: Primes congruent to 33 mod 53.

Offset 1, canonical program `A142563.P12359353660996850255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. -/
def A142563 (n : ℕ) : ℤ :=
  A142563.P12359353660996850255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. -/
def A142563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142564.P501766830947275686

`p?[53*n-19]`
-/

namespace A142564.P501766830947275686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142564.P501766830947275686

noncomputable section

/-- A142564: Primes congruent to 34 mod 53.

Offset 1, canonical program `A142564.P501766830947275686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142564 (n : ℕ) : ℤ :=
  A142564.P501766830947275686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142565.P15807843790863738585

`p?[53*n-18]`
-/

namespace A142565.P15807843790863738585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142565.P15807843790863738585

noncomputable section

/-- A142565: Primes congruent to 35 mod 53.

Offset 1, canonical program `A142565.P15807843790863738585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1517 terms. -/
def A142565 (n : ℕ) : ℤ :=
  A142565.P15807843790863738585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1517 terms. -/
def A142565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142566.P5463133517147334273

`p?[53*n-17]`
-/

namespace A142566.P5463133517147334273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142566.P5463133517147334273

noncomputable section

/-- A142566: Primes congruent to 36 mod 53.

Offset 1, canonical program `A142566.P5463133517147334273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A142566 (n : ℕ) : ℤ :=
  A142566.P5463133517147334273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1505 terms. -/
def A142566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142567.P9068125809523552776

`p?[53*n-16]`
-/

namespace A142567.P9068125809523552776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142567.P9068125809523552776

noncomputable section

/-- A142567: Primes congruent to 37 mod 53.

Offset 1, canonical program `A142567.P9068125809523552776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A142567 (n : ℕ) : ℤ :=
  A142567.P9068125809523552776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A142567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142568.P6146946396043828447

`p?[53*n-15]`
-/

namespace A142568.P6146946396043828447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142568.P6146946396043828447

noncomputable section

/-- A142568: Primes congruent to 38 mod 53.

Offset 1, canonical program `A142568.P6146946396043828447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1502 terms. -/
def A142568 (n : ℕ) : ℤ :=
  A142568.P6146946396043828447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1502 terms. -/
def A142568.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142569.P2898584343019619820

`p?[a(n-1)+53]` with `a(0)=39`
-/

namespace A142569.P2898584343019619820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [39] fun n f1 =>
  f1 (n - 1) + 53

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142569.P2898584343019619820

noncomputable section

/-- A142569: Primes congruent to 39 mod 53.

Offset 1, canonical program `A142569.P2898584343019619820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. -/
def A142569 (n : ℕ) : ℤ :=
  (A142569.P2898584343019619820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. -/
def A142569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142570.P6421627408665633642

`p?[53*n-13]`
-/

namespace A142570.P6421627408665633642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142570.P6421627408665633642

noncomputable section

/-- A142570: Primes congruent to 40 mod 53.

Offset 1, canonical program `A142570.P6421627408665633642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. -/
def A142570 (n : ℕ) : ℤ :=
  A142570.P6421627408665633642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1518 terms. -/
def A142570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142571.P10702951705278210587

`p?[53*n-12]`
-/

namespace A142571.P10702951705278210587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142571.P10702951705278210587

noncomputable section

/-- A142571: Primes congruent to 41 mod 53.

Offset 1, canonical program `A142571.P10702951705278210587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A142571 (n : ℕ) : ℤ :=
  A142571.P10702951705278210587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1508 terms. -/
def A142571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142572.P13859309934733515950

`p?[53*n-11]`
-/

namespace A142572.P13859309934733515950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142572.P13859309934733515950

noncomputable section

/-- A142572: Primes congruent to 42 mod 53.

Offset 1, canonical program `A142572.P13859309934733515950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. -/
def A142572 (n : ℕ) : ℤ :=
  A142572.P13859309934733515950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1503 terms. -/
def A142572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142573.P10774366854094148211

`p?[53*n-10]`
-/

namespace A142573.P10774366854094148211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142573.P10774366854094148211

noncomputable section

/-- A142573: Primes congruent to 43 mod 53.

Offset 1, canonical program `A142573.P10774366854094148211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A142573 (n : ℕ) : ℤ :=
  A142573.P10774366854094148211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1525 terms. -/
def A142573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142574.P11859166775549771955

`p?[53*n-9]`
-/

namespace A142574.P11859166775549771955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142574.P11859166775549771955

noncomputable section

/-- A142574: Primes congruent to 44 mod 53.

Offset 1, canonical program `A142574.P11859166775549771955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1495 terms. -/
def A142574 (n : ℕ) : ℤ :=
  A142574.P11859166775549771955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1495 terms. -/
def A142574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142575.P6606832954996549449

`p?[53*n-8]`
-/

namespace A142575.P6606832954996549449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142575.P6606832954996549449

noncomputable section

/-- A142575: Primes congruent to 45 mod 53.

Offset 1, canonical program `A142575.P6606832954996549449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142575 (n : ℕ) : ℤ :=
  A142575.P6606832954996549449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142576.P13179964568967412309

`p?[53*n-7]`
-/

namespace A142576.P13179964568967412309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142576.P13179964568967412309

noncomputable section

/-- A142576: Primes congruent to 46 mod 53.

Offset 1, canonical program `A142576.P13179964568967412309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A142576 (n : ℕ) : ℤ :=
  A142576.P13179964568967412309.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. -/
def A142576.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142577.P15722763317461293928

`p?[53*n-6]`
-/

namespace A142577.P15722763317461293928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142577.P15722763317461293928

noncomputable section

/-- A142577: Primes congruent to 47 mod 53.

Offset 1, canonical program `A142577.P15722763317461293928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1497 terms. -/
def A142577 (n : ℕ) : ℤ :=
  A142577.P15722763317461293928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1497 terms. -/
def A142577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142578.P15952431760153792585

`p?[53*n-5]`
-/

namespace A142578.P15952431760153792585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142578.P15952431760153792585

noncomputable section

/-- A142578: Primes congruent to 48 mod 53.

Offset 1, canonical program `A142578.P15952431760153792585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. -/
def A142578 (n : ℕ) : ℤ :=
  A142578.P15952431760153792585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1512 terms. -/
def A142578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142579.P9845563896040826654

`p?[53*n-4]`
-/

namespace A142579.P9845563896040826654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142579.P9845563896040826654

noncomputable section

/-- A142579: Primes congruent to 49 mod 53.

Offset 1, canonical program `A142579.P9845563896040826654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142579 (n : ℕ) : ℤ :=
  A142579.P9845563896040826654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1513 terms. -/
def A142579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142580.P12216637443681934440

`p?[53*n-3]`
-/

namespace A142580.P12216637443681934440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142580.P12216637443681934440

noncomputable section

/-- A142580: Primes congruent to 50 mod 53.

Offset 1, canonical program `A142580.P12216637443681934440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. -/
def A142580 (n : ℕ) : ℤ :=
  A142580.P12216637443681934440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1519 terms. -/
def A142580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142581.P17450910249963365285

`p?[53*n-2]`
-/

namespace A142581.P17450910249963365285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142581.P17450910249963365285

noncomputable section

/-- A142581: Primes congruent to 51 mod 53.

Offset 1, canonical program `A142581.P17450910249963365285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. -/
def A142581 (n : ℕ) : ℤ :=
  A142581.P17450910249963365285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1499 terms. -/
def A142581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142582.P1423104978536918347

`p?[53*n-1]`
-/

namespace A142582.P1423104978536918347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (53 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142582.P1423104978536918347

noncomputable section

/-- A142582: Primes congruent to 52 mod 53.

Offset 1, canonical program `A142582.P1423104978536918347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1529 terms. -/
def A142582 (n : ℕ) : ℤ :=
  A142582.P1423104978536918347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1529 terms. -/
def A142582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142601.P14347276317672329331

`p?[55*n+1]`
-/

namespace A142601.P14347276317672329331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142601.P14347276317672329331

noncomputable section

/-- A142601: Primes congruent to 1 mod 55.

Offset 1, canonical program `A142601.P14347276317672329331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1981 terms. -/
def A142601 (n : ℕ) : ℤ :=
  (A142601.P14347276317672329331.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1981 terms. -/
def A142601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142602.P9632824450538674895

`p?[55*n+2]`
-/

namespace A142602.P9632824450538674895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142602.P9632824450538674895

noncomputable section

/-- A142602: Primes congruent to 2 mod 55.

Offset 1, canonical program `A142602.P9632824450538674895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A142602 (n : ℕ) : ℤ :=
  (A142602.P9632824450538674895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. -/
def A142602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142603.P15400574297739745150

`p?[55*n+3]`
-/

namespace A142603.P15400574297739745150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142603.P15400574297739745150

noncomputable section

/-- A142603: Primes congruent to 3 mod 55.

Offset 1, canonical program `A142603.P15400574297739745150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1947 terms. -/
def A142603 (n : ℕ) : ℤ :=
  (A142603.P15400574297739745150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1947 terms. -/
def A142603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142604.P10312759616562587423

`p?[55*n+4]`
-/

namespace A142604.P10312759616562587423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142604.P10312759616562587423

noncomputable section

/-- A142604: Primes congruent to 4 mod 55.

Offset 1, canonical program `A142604.P10312759616562587423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1959 terms. -/
def A142604 (n : ℕ) : ℤ :=
  (A142604.P10312759616562587423.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1959 terms. -/
def A142604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142605.P14474619260616680583

`p?[55*n+6]`
-/

namespace A142605.P14474619260616680583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142605.P14474619260616680583

noncomputable section

/-- A142605: Primes congruent to 6 mod 55.

Offset 1, canonical program `A142605.P14474619260616680583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. -/
def A142605 (n : ℕ) : ℤ :=
  (A142605.P14474619260616680583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. -/
def A142605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142606.P5324791763290130179

`p?[55*n+7]`
-/

namespace A142606.P5324791763290130179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142606.P5324791763290130179

noncomputable section

/-- A142606: Primes congruent to 7 mod 55.

Offset 1, canonical program `A142606.P5324791763290130179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A142606 (n : ℕ) : ℤ :=
  (A142606.P5324791763290130179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A142606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142607.P3273710044152484761

`p?[55*n+8]`
-/

namespace A142607.P3273710044152484761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142607.P3273710044152484761

noncomputable section

/-- A142607: Primes congruent to 8 mod 55.

Offset 1, canonical program `A142607.P3273710044152484761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1981 terms. -/
def A142607 (n : ℕ) : ℤ :=
  (A142607.P3273710044152484761.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1981 terms. -/
def A142607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142608.P8500415441779693116

`p?[55*n+9]`
-/

namespace A142608.P8500415441779693116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142608.P8500415441779693116

noncomputable section

/-- A142608: Primes congruent to 9 mod 55.

Offset 1, canonical program `A142608.P8500415441779693116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1926 terms. -/
def A142608 (n : ℕ) : ℤ :=
  (A142608.P8500415441779693116.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1926 terms. -/
def A142608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142609.P4764206604558976134

`p?[55*n+12]`
-/

namespace A142609.P4764206604558976134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142609.P4764206604558976134

noncomputable section

/-- A142609: Primes congruent to 12 mod 55.

Offset 1, canonical program `A142609.P4764206604558976134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142609 (n : ℕ) : ℤ :=
  (A142609.P4764206604558976134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142610.P16078764661679279939

`p?[55*n+13]`
-/

namespace A142610.P16078764661679279939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142610.P16078764661679279939

noncomputable section

/-- A142610: Primes congruent to 13 mod 55.

Offset 1, canonical program `A142610.P16078764661679279939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. -/
def A142610 (n : ℕ) : ℤ :=
  (A142610.P16078764661679279939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1949 terms. -/
def A142610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142611.P9448012928994269939

`p?[55*n+14]`
-/

namespace A142611.P9448012928994269939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142611.P9448012928994269939

noncomputable section

/-- A142611: Primes congruent to 14 mod 55.

Offset 1, canonical program `A142611.P9448012928994269939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142611 (n : ℕ) : ℤ :=
  (A142611.P9448012928994269939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142612.P5287405968485272277

`p?[55*n+16]`
-/

namespace A142612.P5287405968485272277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142612.P5287405968485272277

noncomputable section

/-- A142612: Primes congruent to 16 mod 55.

Offset 1, canonical program `A142612.P5287405968485272277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A142612 (n : ℕ) : ℤ :=
  (A142612.P5287405968485272277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A142612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142613.P16260679123717454408

`p?[55*n+17]`
-/

namespace A142613.P16260679123717454408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142613.P16260679123717454408

noncomputable section

/-- A142613: Primes congruent to 17 mod 55.

Offset 1, canonical program `A142613.P16260679123717454408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A142613 (n : ℕ) : ℤ :=
  (A142613.P16260679123717454408.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A142613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142614.P6871385850968373089

`p?[55*n+18]`
-/

namespace A142614.P6871385850968373089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142614.P6871385850968373089

noncomputable section

/-- A142614: Primes congruent to 18 mod 55.

Offset 1, canonical program `A142614.P6871385850968373089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A142614 (n : ℕ) : ℤ :=
  (A142614.P6871385850968373089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A142614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142615.P770309144791721542

`p?[55*n+19]`
-/

namespace A142615.P770309144791721542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142615.P770309144791721542

noncomputable section

/-- A142615: Primes congruent to 19 mod 55.

Offset 1, canonical program `A142615.P770309144791721542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1957 terms. -/
def A142615 (n : ℕ) : ℤ :=
  (A142615.P770309144791721542.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1957 terms. -/
def A142615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142616.P12502283512490019217

`p?[55*n+21]`
-/

namespace A142616.P12502283512490019217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142616.P12502283512490019217

noncomputable section

/-- A142616: Primes congruent to 21 mod 55.

Offset 1, canonical program `A142616.P12502283512490019217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142616 (n : ℕ) : ℤ :=
  (A142616.P12502283512490019217.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142617.P10156748784242094338

`p?[55*n+23]`
-/

namespace A142617.P10156748784242094338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142617.P10156748784242094338

noncomputable section

/-- A142617: Primes congruent to 23 mod 55.

Offset 1, canonical program `A142617.P10156748784242094338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142617 (n : ℕ) : ℤ :=
  (A142617.P10156748784242094338.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142618.P11106628559668565554

`p?[55*n+24]`
-/

namespace A142618.P11106628559668565554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142618.P11106628559668565554

noncomputable section

/-- A142618: Primes congruent to 24 mod 55.

Offset 1, canonical program `A142618.P11106628559668565554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. -/
def A142618 (n : ℕ) : ℤ :=
  (A142618.P11106628559668565554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. -/
def A142618.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142619.P6183626941469914321

`p?[55*n-29]`
-/

namespace A142619.P6183626941469914321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142619.P6183626941469914321

noncomputable section

/-- A142619: Primes congruent to 26 mod 55.

Offset 1, canonical program `A142619.P6183626941469914321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A142619 (n : ℕ) : ℤ :=
  A142619.P6183626941469914321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A142619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142620.P6649263307082028531

`p?[55*n+27]`
-/

namespace A142620.P6649263307082028531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142620.P6649263307082028531

noncomputable section

/-- A142620: Primes congruent to 27 mod 55.

Offset 1, canonical program `A142620.P6649263307082028531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A142620 (n : ℕ) : ℤ :=
  (A142620.P6649263307082028531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A142620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142621.P16346792372459401382

`p?[55*n-27]`
-/

namespace A142621.P16346792372459401382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142621.P16346792372459401382

noncomputable section

/-- A142621: Primes congruent to 28 mod 55.

Offset 1, canonical program `A142621.P16346792372459401382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142621 (n : ℕ) : ℤ :=
  A142621.P16346792372459401382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142622.P14556394373860376462

`p?[55*n+29]`
-/

namespace A142622.P14556394373860376462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  55 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142622.P14556394373860376462

noncomputable section

/-- A142622: Primes congruent to 29 mod 55.

Offset 1, canonical program `A142622.P14556394373860376462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1990 terms. -/
def A142622 (n : ℕ) : ℤ :=
  (A142622.P14556394373860376462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1990 terms. -/
def A142622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142623.P3635120260693577370

`p?[55*n-24]`
-/

namespace A142623.P3635120260693577370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142623.P3635120260693577370

noncomputable section

/-- A142623: Primes congruent to 31 mod 55.

Offset 1, canonical program `A142623.P3635120260693577370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142623 (n : ℕ) : ℤ :=
  A142623.P3635120260693577370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142624.P3293549727661493354

`p?[55*n-23]`
-/

namespace A142624.P3293549727661493354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142624.P3293549727661493354

noncomputable section

/-- A142624: Primes congruent to 32 mod 55.

Offset 1, canonical program `A142624.P3293549727661493354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. -/
def A142624 (n : ℕ) : ℤ :=
  A142624.P3293549727661493354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. -/
def A142624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142625.P3933760359178982259

`p?[55*n-21]`
-/

namespace A142625.P3933760359178982259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142625.P3933760359178982259

noncomputable section

/-- A142625: Primes congruent to 34 mod 55.

Offset 1, canonical program `A142625.P3933760359178982259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1957 terms. -/
def A142625 (n : ℕ) : ℤ :=
  A142625.P3933760359178982259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1957 terms. -/
def A142625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142626.P12338167101848309519

`p?[55*n-19]`
-/

namespace A142626.P12338167101848309519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142626.P12338167101848309519

noncomputable section

/-- A142626: Primes congruent to 36 mod 55.

Offset 1, canonical program `A142626.P12338167101848309519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A142626 (n : ℕ) : ℤ :=
  A142626.P12338167101848309519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. -/
def A142626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142627.P16396962242143704151

`p?[55*n-18]`
-/

namespace A142627.P16396962242143704151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142627.P16396962242143704151

noncomputable section

/-- A142627: Primes congruent to 37 mod 55.

Offset 1, canonical program `A142627.P16396962242143704151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1941 terms. -/
def A142627 (n : ℕ) : ℤ :=
  A142627.P16396962242143704151.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1941 terms. -/
def A142627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142628.P7316729457022828387

`p?[55*n-17]`
-/

namespace A142628.P7316729457022828387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142628.P7316729457022828387

noncomputable section

/-- A142628: Primes congruent to 38 mod 55.

Offset 1, canonical program `A142628.P7316729457022828387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A142628 (n : ℕ) : ℤ :=
  A142628.P7316729457022828387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. -/
def A142628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142629.P3504410832996168144

`p?[55*n-16]`
-/

namespace A142629.P3504410832996168144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142629.P3504410832996168144

noncomputable section

/-- A142629: Primes congruent to 39 mod 55.

Offset 1, canonical program `A142629.P3504410832996168144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1971 terms. -/
def A142629 (n : ℕ) : ℤ :=
  A142629.P3504410832996168144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1971 terms. -/
def A142629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142630.P8484613795103572701

`p?[55*n-14]`
-/

namespace A142630.P8484613795103572701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142630.P8484613795103572701

noncomputable section

/-- A142630: Primes congruent to 41 mod 55.

Offset 1, canonical program `A142630.P8484613795103572701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1973 terms. -/
def A142630 (n : ℕ) : ℤ :=
  A142630.P8484613795103572701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1973 terms. -/
def A142630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142631.P17460670216815725676

`p?[55*n-13]`
-/

namespace A142631.P17460670216815725676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142631.P17460670216815725676

noncomputable section

/-- A142631: Primes congruent to 42 mod 55.

Offset 1, canonical program `A142631.P17460670216815725676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142631 (n : ℕ) : ℤ :=
  A142631.P17460670216815725676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. -/
def A142631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142632.P14212778815987626315

`p?[55*n-12]`
-/

namespace A142632.P14212778815987626315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142632.P14212778815987626315

noncomputable section

/-- A142632: Primes congruent to 43 mod 55.

Offset 1, canonical program `A142632.P14212778815987626315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A142632 (n : ℕ) : ℤ :=
  A142632.P14212778815987626315.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. -/
def A142632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142633.P13475206179899460435

`p?[55*n-9]`
-/

namespace A142633.P13475206179899460435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142633.P13475206179899460435

noncomputable section

/-- A142633: Primes congruent to 46 mod 55.

Offset 1, canonical program `A142633.P13475206179899460435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. -/
def A142633 (n : ℕ) : ℤ :=
  A142633.P13475206179899460435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. -/
def A142633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142634.P12582050764533160321

`p?[55*n-8]`
-/

namespace A142634.P12582050764533160321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142634.P12582050764533160321

noncomputable section

/-- A142634: Primes congruent to 47 mod 55.

Offset 1, canonical program `A142634.P12582050764533160321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142634 (n : ℕ) : ℤ :=
  A142634.P12582050764533160321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. -/
def A142634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142635.P8314393995369655209

`p?[55*n-7]`
-/

namespace A142635.P8314393995369655209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142635.P8314393995369655209

noncomputable section

/-- A142635: Primes congruent to 48 mod 55.

Offset 1, canonical program `A142635.P8314393995369655209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A142635 (n : ℕ) : ℤ :=
  A142635.P8314393995369655209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1974 terms. -/
def A142635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142636.P11399722570002845283

`p?[55*n-6]`
-/

namespace A142636.P11399722570002845283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142636.P11399722570002845283

noncomputable section

/-- A142636: Primes congruent to 49 mod 55.

Offset 1, canonical program `A142636.P11399722570002845283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1971 terms. -/
def A142636 (n : ℕ) : ℤ :=
  A142636.P11399722570002845283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1971 terms. -/
def A142636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142637.P7459249331053449661

`p?[55*n-4]`
-/

namespace A142637.P7459249331053449661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142637.P7459249331053449661

noncomputable section

/-- A142637: Primes congruent to 51 mod 55.

Offset 1, canonical program `A142637.P7459249331053449661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. -/
def A142637 (n : ℕ) : ℤ :=
  A142637.P7459249331053449661.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. -/
def A142637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142638.P10791277501584669273

`p?[55*n-3]`
-/

namespace A142638.P10791277501584669273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142638.P10791277501584669273

noncomputable section

/-- A142638: Primes congruent to 52 mod 55.

Offset 1, canonical program `A142638.P10791277501584669273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142638 (n : ℕ) : ℤ :=
  A142638.P10791277501584669273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. -/
def A142638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142639.P1842716947885299063

`p?[55*n-2]`
-/

namespace A142639.P1842716947885299063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142639.P1842716947885299063

noncomputable section

/-- A142639: Primes congruent to 53 mod 55.

Offset 1, canonical program `A142639.P1842716947885299063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A142639 (n : ℕ) : ℤ :=
  A142639.P1842716947885299063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1982 terms. -/
def A142639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142640.P4253277242487749916

`p?[55*n-1]`
-/

namespace A142640.P4253277242487749916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (55 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142640.P4253277242487749916

noncomputable section

/-- A142640: Primes congruent to 54 mod 55.

Offset 1, canonical program `A142640.P4253277242487749916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. -/
def A142640 (n : ℕ) : ℤ :=
  A142640.P4253277242487749916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. -/
def A142640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142641.P14499863429612109377

`p?[56*n+1]`
-/

namespace A142641.P14499863429612109377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142641.P14499863429612109377

noncomputable section

/-- A142641: Primes congruent to 1 mod 56.

Offset 1, canonical program `A142641.P14499863429612109377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. -/
def A142641 (n : ℕ) : ℤ :=
  (A142641.P14499863429612109377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3244 terms. -/
def A142641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142642.P10277425919260139066

`p?[56*n+3]`
-/

namespace A142642.P10277425919260139066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142642.P10277425919260139066

noncomputable section

/-- A142642: Primes congruent to 3 mod 56.

Offset 1, canonical program `A142642.P10277425919260139066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. -/
def A142642 (n : ℕ) : ℤ :=
  (A142642.P10277425919260139066.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3260 terms. -/
def A142642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142643.P5680424526248210039

`p?[56*n+5]`
-/

namespace A142643.P5680424526248210039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142643.P5680424526248210039

noncomputable section

/-- A142643: Primes congruent to 5 mod 56.

Offset 1, canonical program `A142643.P5680424526248210039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. -/
def A142643 (n : ℕ) : ℤ :=
  (A142643.P5680424526248210039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3278 terms. -/
def A142643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142644.P15028343553440600438

`p?[56*n+9]`
-/

namespace A142644.P15028343553440600438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142644.P15028343553440600438

noncomputable section

/-- A142644: Primes congruent to 9 mod 56.

Offset 1, canonical program `A142644.P15028343553440600438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. -/
def A142644 (n : ℕ) : ℤ :=
  (A142644.P15028343553440600438.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. -/
def A142644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142645.P5071803339077684332

`p?[56*n+11]`
-/

namespace A142645.P5071803339077684332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142645.P5071803339077684332

noncomputable section

/-- A142645: Primes congruent to 11 mod 56.

Offset 1, canonical program `A142645.P5071803339077684332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3294 terms. -/
def A142645 (n : ℕ) : ℤ :=
  (A142645.P5071803339077684332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3294 terms. -/
def A142645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142646.P12979519044240396534

`p?[56*n+13]`
-/

namespace A142646.P12979519044240396534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142646.P12979519044240396534

noncomputable section

/-- A142646: Primes congruent to 13 mod 56.

Offset 1, canonical program `A142646.P12979519044240396534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142646 (n : ℕ) : ℤ :=
  (A142646.P12979519044240396534.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142647.P15341668097493183356

`p?[56*n+15]`
-/

namespace A142647.P15341668097493183356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142647.P15341668097493183356

noncomputable section

/-- A142647: Primes congruent to 15 mod 56.

Offset 1, canonical program `A142647.P15341668097493183356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142647 (n : ℕ) : ℤ :=
  (A142647.P15341668097493183356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142648.P4221404238813975576

`p?[56*n-39]`
-/

namespace A142648.P4221404238813975576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 39

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142648.P4221404238813975576

noncomputable section

/-- A142648: Primes congruent to 17 mod 56.

Offset 1, canonical program `A142648.P4221404238813975576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3286 terms. -/
def A142648 (n : ℕ) : ℤ :=
  A142648.P4221404238813975576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3286 terms. -/
def A142648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142649.P7234577891940818395

`p?[56*n+19]`
-/

namespace A142649.P7234577891940818395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142649.P7234577891940818395

noncomputable section

/-- A142649: Primes congruent to 19 mod 56.

Offset 1, canonical program `A142649.P7234577891940818395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A142649 (n : ℕ) : ℤ :=
  (A142649.P7234577891940818395.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3281 terms. -/
def A142649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142650.P10701174261417167167

`p?[56*n+23]`
-/

namespace A142650.P10701174261417167167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142650.P10701174261417167167

noncomputable section

/-- A142650: Primes congruent to 23 mod 56.

Offset 1, canonical program `A142650.P10701174261417167167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A142650 (n : ℕ) : ℤ :=
  (A142650.P10701174261417167167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. -/
def A142650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142651.P14651372177585332128

`p?[56*n-31]`
-/

namespace A142651.P14651372177585332128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142651.P14651372177585332128

noncomputable section

/-- A142651: Primes congruent to 25 mod 56.

Offset 1, canonical program `A142651.P14651372177585332128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3229 terms. -/
def A142651 (n : ℕ) : ℤ :=
  A142651.P14651372177585332128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3229 terms. -/
def A142651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142652.P1679165705992840716

`p?[7*8*n+27]`
-/

namespace A142652.P1679165705992840716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (8 * n) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142652.P1679165705992840716

noncomputable section

/-- A142652: Primes congruent to 27 mod 56.

Offset 1, canonical program `A142652.P1679165705992840716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142652 (n : ℕ) : ℤ :=
  (A142652.P1679165705992840716.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142653.P17835773131863720932

`p?[7*8*n-27]`
-/

namespace A142653.P17835773131863720932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * (8 * n) : ℤ) - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142653.P17835773131863720932

noncomputable section

/-- A142653: Primes congruent to 29 mod 56.

Offset 1, canonical program `A142653.P17835773131863720932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3265 terms. -/
def A142653 (n : ℕ) : ℤ :=
  A142653.P17835773131863720932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3265 terms. -/
def A142653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142654.P2454511119657902511

`p?[abs(25-56*n)]`
-/

namespace A142654.P2454511119657902511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |25 - (56 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142654.P2454511119657902511

noncomputable section

/-- A142654: Primes congruent to 31 mod 56.

Offset 1, canonical program `A142654.P2454511119657902511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3289 terms. -/
def A142654 (n : ℕ) : ℤ :=
  A142654.P2454511119657902511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3289 terms. -/
def A142654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142655.P10005235464697280214

`p?[56*n+89]`
-/

namespace A142655.P10005235464697280214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 89

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142655.P10005235464697280214

noncomputable section

/-- A142655: Primes congruent to 33 mod 56.

Offset 1, canonical program `A142655.P10005235464697280214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142655 (n : ℕ) : ℤ :=
  (A142655.P10005235464697280214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3266 terms. -/
def A142655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142656.P17904840674767143491

`p?[56*n-19]`
-/

namespace A142656.P17904840674767143491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142656.P17904840674767143491

noncomputable section

/-- A142656: Primes congruent to 37 mod 56.

Offset 1, canonical program `A142656.P17904840674767143491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A142656 (n : ℕ) : ℤ :=
  A142656.P17904840674767143491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A142656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142657.P1023764406508125918

`p?[56*n+39]`
-/

namespace A142657.P1023764406508125918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56 * n + 39

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142657.P1023764406508125918

noncomputable section

/-- A142657: Primes congruent to 39 mod 56.

Offset 1, canonical program `A142657.P1023764406508125918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142657 (n : ℕ) : ℤ :=
  (A142657.P1023764406508125918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3272 terms. -/
def A142657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142658.P6825828313435678284

`p?[56*n-15]`
-/

namespace A142658.P6825828313435678284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142658.P6825828313435678284

noncomputable section

/-- A142658: Primes congruent to 41 mod 56.

Offset 1, canonical program `A142658.P6825828313435678284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142658 (n : ℕ) : ℤ :=
  A142658.P6825828313435678284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142659.P9757230682004974696

`p?[56*n-13]`
-/

namespace A142659.P9757230682004974696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142659.P9757230682004974696

noncomputable section

/-- A142659: Primes congruent to 43 mod 56.

Offset 1, canonical program `A142659.P9757230682004974696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3284 terms. -/
def A142659 (n : ℕ) : ℤ :=
  A142659.P9757230682004974696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3284 terms. -/
def A142659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142660.P15413522584948336905

`p?[56*n-11]`
-/

namespace A142660.P15413522584948336905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142660.P15413522584948336905

noncomputable section

/-- A142660: Primes congruent to 45 mod 56.

Offset 1, canonical program `A142660.P15413522584948336905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142660 (n : ℕ) : ℤ :=
  A142660.P15413522584948336905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. -/
def A142660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142661.P9427666565187802115

`p?[56*n-9]`
-/

namespace A142661.P9427666565187802115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142661.P9427666565187802115

noncomputable section

/-- A142661: Primes congruent to 47 mod 56.

Offset 1, canonical program `A142661.P9427666565187802115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142661 (n : ℕ) : ℤ :=
  A142661.P9427666565187802115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3280 terms. -/
def A142661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142662.P7329424961933491705

`p?[56*n-5]`
-/

namespace A142662.P7329424961933491705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142662.P7329424961933491705

noncomputable section

/-- A142662: Primes congruent to 51 mod 56.

Offset 1, canonical program `A142662.P7329424961933491705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A142662 (n : ℕ) : ℤ :=
  A142662.P7329424961933491705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A142662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142663.P3548312958607287641

`p?[56*n-3]`
-/

namespace A142663.P3548312958607287641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142663.P3548312958607287641

noncomputable section

/-- A142663: Primes congruent to 53 mod 56.

Offset 1, canonical program `A142663.P3548312958607287641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. -/
def A142663 (n : ℕ) : ℤ :=
  A142663.P3548312958607287641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. -/
def A142663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142664.P10332297124576628954

`p?[56*n-1]`
-/

namespace A142664.P10332297124576628954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (56 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142664.P10332297124576628954

noncomputable section

/-- A142664: Primes congruent to 55 mod 56.

Offset 1, canonical program `A142664.P10332297124576628954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. -/
def A142664 (n : ℕ) : ℤ :=
  A142664.P10332297124576628954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3274 terms. -/
def A142664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142665.P2011715876833513867

`p?[57*n+1]`
-/

namespace A142665.P2011715876833513867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142665.P2011715876833513867

noncomputable section

/-- A142665: Primes congruent to 1 mod 57.

Offset 1, canonical program `A142665.P2011715876833513867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2163 terms. -/
def A142665 (n : ℕ) : ℤ :=
  (A142665.P2011715876833513867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2163 terms. -/
def A142665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142666.P15732508278091446280

`p?[3*19*n+2]`
-/

namespace A142666.P15732508278091446280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (19 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142666.P15732508278091446280

noncomputable section

/-- A142666: Primes congruent to 2 mod 57.

Offset 1, canonical program `A142666.P15732508278091446280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A142666 (n : ℕ) : ℤ :=
  (A142666.P15732508278091446280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A142666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142667.P11421250028738427801

`p?[57*n+4]`
-/

namespace A142667.P11421250028738427801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142667.P11421250028738427801

noncomputable section

/-- A142667: Primes congruent to 4 mod 57.

Offset 1, canonical program `A142667.P11421250028738427801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A142667 (n : ℕ) : ℤ :=
  (A142667.P11421250028738427801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A142667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142668.P4978142268576543543

`p?[57*n+5]`
-/

namespace A142668.P4978142268576543543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142668.P4978142268576543543

noncomputable section

/-- A142668: Primes congruent to 5 mod 57.

Offset 1, canonical program `A142668.P4978142268576543543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2192 terms. -/
def A142668 (n : ℕ) : ℤ :=
  (A142668.P4978142268576543543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2192 terms. -/
def A142668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142669.P16110018626709843434

`p?[57*n+7]`
-/

namespace A142669.P16110018626709843434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142669.P16110018626709843434

noncomputable section

/-- A142669: Primes congruent to 7 mod 57.

Offset 1, canonical program `A142669.P16110018626709843434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142669 (n : ℕ) : ℤ :=
  (A142669.P16110018626709843434.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142670.P157178037678356003

`p?[57*n+8]`
-/

namespace A142670.P157178037678356003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142670.P157178037678356003

noncomputable section

/-- A142670: Primes congruent to 8 mod 57.

Offset 1, canonical program `A142670.P157178037678356003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2183 terms. -/
def A142670 (n : ℕ) : ℤ :=
  (A142670.P157178037678356003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2183 terms. -/
def A142670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142671.P18209446901248337541

`p?[57*n+10]`
-/

namespace A142671.P18209446901248337541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142671.P18209446901248337541

noncomputable section

/-- A142671: Primes congruent to 10 mod 57.

Offset 1, canonical program `A142671.P18209446901248337541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. -/
def A142671 (n : ℕ) : ℤ :=
  (A142671.P18209446901248337541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. -/
def A142671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142672.P8449670467683063956

`p?[57*n+11]`
-/

namespace A142672.P8449670467683063956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142672.P8449670467683063956

noncomputable section

/-- A142672: Primes congruent to 11 mod 57.

Offset 1, canonical program `A142672.P8449670467683063956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A142672 (n : ℕ) : ℤ :=
  (A142672.P8449670467683063956.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A142672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142673.P985649265488508712

`p?[57*n+13]`
-/

namespace A142673.P985649265488508712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142673.P985649265488508712

noncomputable section

/-- A142673: Primes congruent to 13 mod 57.

Offset 1, canonical program `A142673.P985649265488508712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A142673 (n : ℕ) : ℤ :=
  (A142673.P985649265488508712.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A142673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142674.P12029234767476920423

`p?[57*n-43]`
-/

namespace A142674.P12029234767476920423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142674.P12029234767476920423

noncomputable section

/-- A142674: Primes congruent to 14 mod 57.

Offset 1, canonical program `A142674.P12029234767476920423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A142674 (n : ℕ) : ℤ :=
  A142674.P12029234767476920423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A142674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142675.P2535215039015274571

`p?[57*n+16]`
-/

namespace A142675.P2535215039015274571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142675.P2535215039015274571

noncomputable section

/-- A142675: Primes congruent to 16 mod 57.

Offset 1, canonical program `A142675.P2535215039015274571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2162 terms. -/
def A142675 (n : ℕ) : ℤ :=
  (A142675.P2535215039015274571.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2162 terms. -/
def A142675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142676.P9545973546308218541

`p?[57*n+17]`
-/

namespace A142676.P9545973546308218541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142676.P9545973546308218541

noncomputable section

/-- A142676: Primes congruent to 17 mod 57.

Offset 1, canonical program `A142676.P9545973546308218541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142676 (n : ℕ) : ℤ :=
  (A142676.P9545973546308218541.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142677.P12740904497977760515

`p?[57*n+20]`
-/

namespace A142677.P12740904497977760515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142677.P12740904497977760515

noncomputable section

/-- A142677: Primes congruent to 20 mod 57.

Offset 1, canonical program `A142677.P12740904497977760515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2166 terms. -/
def A142677 (n : ℕ) : ℤ :=
  (A142677.P12740904497977760515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2166 terms. -/
def A142677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142678.P9463500038074292831

`p?[57*n+22]`
-/

namespace A142678.P9463500038074292831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142678.P9463500038074292831

noncomputable section

/-- A142678: Primes congruent to 22 mod 57.

Offset 1, canonical program `A142678.P9463500038074292831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A142678 (n : ℕ) : ℤ :=
  (A142678.P9463500038074292831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A142678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142679.P8933469794442793001

`p?[57*n+23]`
-/

namespace A142679.P8933469794442793001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142679.P8933469794442793001

noncomputable section

/-- A142679: Primes congruent to 23 mod 57.

Offset 1, canonical program `A142679.P8933469794442793001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. -/
def A142679 (n : ℕ) : ℤ :=
  (A142679.P8933469794442793001.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. -/
def A142679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142680.P1921357263205162532

`p?[57*n-32]`
-/

namespace A142680.P1921357263205162532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142680.P1921357263205162532

noncomputable section

/-- A142680: Primes congruent to 25 mod 57.

Offset 1, canonical program `A142680.P1921357263205162532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142680 (n : ℕ) : ℤ :=
  A142680.P1921357263205162532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142681.P4735848263783689997

`p?[57*n+26]`
-/

namespace A142681.P4735848263783689997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142681.P4735848263783689997

noncomputable section

/-- A142681: Primes congruent to 26 mod 57.

Offset 1, canonical program `A142681.P4735848263783689997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A142681 (n : ℕ) : ℤ :=
  (A142681.P4735848263783689997.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. -/
def A142681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142682.P4839364780217697499

`p?[57*n+28]`
-/

namespace A142682.P4839364780217697499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142682.P4839364780217697499

noncomputable section

/-- A142682: Primes congruent to 28 mod 57.

Offset 1, canonical program `A142682.P4839364780217697499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142682 (n : ℕ) : ℤ :=
  (A142682.P4839364780217697499.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142683.P15566235144471865706

`p?[57*n-28]`
-/

namespace A142683.P15566235144471865706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142683.P15566235144471865706

noncomputable section

/-- A142683: Primes congruent to 29 mod 57.

Offset 1, canonical program `A142683.P15566235144471865706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142683 (n : ℕ) : ℤ :=
  A142683.P15566235144471865706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142684.P8228825428107784833

`p?[57*n-26]`
-/

namespace A142684.P8228825428107784833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142684.P8228825428107784833

noncomputable section

/-- A142684: Primes congruent to 31 mod 57.

Offset 1, canonical program `A142684.P8228825428107784833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142684 (n : ℕ) : ℤ :=
  A142684.P8228825428107784833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142685.P212580317074424412

`p?[57*n+32]`
-/

namespace A142685.P212580317074424412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142685.P212580317074424412

noncomputable section

/-- A142685: Primes congruent to 32 mod 57.

Offset 1, canonical program `A142685.P212580317074424412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A142685 (n : ℕ) : ℤ :=
  (A142685.P212580317074424412.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A142685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142686.P8975665842912879093

`p?[57*n-23]`
-/

namespace A142686.P8975665842912879093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142686.P8975665842912879093

noncomputable section

/-- A142686: Primes congruent to 34 mod 57.

Offset 1, canonical program `A142686.P8975665842912879093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142686 (n : ℕ) : ℤ :=
  A142686.P8975665842912879093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142687.P15712614632618859326

`p?[57*n-22]`
-/

namespace A142687.P15712614632618859326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142687.P15712614632618859326

noncomputable section

/-- A142687: Primes congruent to 35 mod 57.

Offset 1, canonical program `A142687.P15712614632618859326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A142687 (n : ℕ) : ℤ :=
  A142687.P15712614632618859326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. -/
def A142687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142688.P15943723344001570520

`p?[57*n-20]`
-/

namespace A142688.P15943723344001570520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142688.P15943723344001570520

noncomputable section

/-- A142688: Primes congruent to 37 mod 57.

Offset 1, canonical program `A142688.P15943723344001570520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A142688 (n : ℕ) : ℤ :=
  A142688.P15943723344001570520.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A142688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142689.P17214230915832276991

`p?[57*n-17]`
-/

namespace A142689.P17214230915832276991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142689.P17214230915832276991

noncomputable section

/-- A142689: Primes congruent to 40 mod 57.

Offset 1, canonical program `A142689.P17214230915832276991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A142689 (n : ℕ) : ℤ :=
  A142689.P17214230915832276991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A142689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142690.P7679015735807136683

`p?[57*n-16]`
-/

namespace A142690.P7679015735807136683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142690.P7679015735807136683

noncomputable section

/-- A142690: Primes congruent to 41 mod 57.

Offset 1, canonical program `A142690.P7679015735807136683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A142690 (n : ℕ) : ℤ :=
  A142690.P7679015735807136683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A142690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142691.P16847048040857768330

`p?[57*n+43]`
-/

namespace A142691.P16847048040857768330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57 * n + 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142691.P16847048040857768330

noncomputable section

/-- A142691: Primes congruent to 43 mod 57.

Offset 1, canonical program `A142691.P16847048040857768330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. -/
def A142691 (n : ℕ) : ℤ :=
  (A142691.P16847048040857768330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. -/
def A142691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142692.P4190453748411724649

`p?[57*n-13]`
-/

namespace A142692.P4190453748411724649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142692.P4190453748411724649

noncomputable section

/-- A142692: Primes congruent to 44 mod 57.

Offset 1, canonical program `A142692.P4190453748411724649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. -/
def A142692 (n : ℕ) : ℤ :=
  A142692.P4190453748411724649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. -/
def A142692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142693.P8028051101697863563

`p?[57*n-11]`
-/

namespace A142693.P8028051101697863563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142693.P8028051101697863563

noncomputable section

/-- A142693: Primes congruent to 46 mod 57.

Offset 1, canonical program `A142693.P8028051101697863563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142693 (n : ℕ) : ℤ :=
  A142693.P8028051101697863563.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142694.P7023260184287984352

`p?[57*n-10]`
-/

namespace A142694.P7023260184287984352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142694.P7023260184287984352

noncomputable section

/-- A142694: Primes congruent to 47 mod 57.

Offset 1, canonical program `A142694.P7023260184287984352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A142694 (n : ℕ) : ℤ :=
  A142694.P7023260184287984352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A142694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142695.P6021648361004792336

`p?[57*n-8]`
-/

namespace A142695.P6021648361004792336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142695.P6021648361004792336

noncomputable section

/-- A142695: Primes congruent to 49 mod 57.

Offset 1, canonical program `A142695.P6021648361004792336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2155 terms. -/
def A142695 (n : ℕ) : ℤ :=
  A142695.P6021648361004792336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2155 terms. -/
def A142695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142696.P663818117787293416

`p?[57*n-7]`
-/

namespace A142696.P663818117787293416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142696.P663818117787293416

noncomputable section

/-- A142696: Primes congruent to 50 mod 57.

Offset 1, canonical program `A142696.P663818117787293416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A142696 (n : ℕ) : ℤ :=
  A142696.P663818117787293416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2179 terms. -/
def A142696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142697.P2752560957868014492

`p?[57*n-5]`
-/

namespace A142697.P2752560957868014492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142697.P2752560957868014492

noncomputable section

/-- A142697: Primes congruent to 52 mod 57.

Offset 1, canonical program `A142697.P2752560957868014492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A142697 (n : ℕ) : ℤ :=
  A142697.P2752560957868014492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A142697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142698.P6519255041443735741

`p?[57*n-4]`
-/

namespace A142698.P6519255041443735741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142698.P6519255041443735741

noncomputable section

/-- A142698: Primes congruent to 53 mod 57.

Offset 1, canonical program `A142698.P6519255041443735741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. -/
def A142698 (n : ℕ) : ℤ :=
  A142698.P6519255041443735741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. -/
def A142698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142699.P13980201635636189815

`p?[57*n-2]`
-/

namespace A142699.P13980201635636189815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142699.P13980201635636189815

noncomputable section

/-- A142699: Primes congruent to 55 mod 57.

Offset 1, canonical program `A142699.P13980201635636189815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A142699 (n : ℕ) : ℤ :=
  A142699.P13980201635636189815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A142699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142700.P12380709953204433673

`p?[57*n-1]`
-/

namespace A142700.P12380709953204433673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (57 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142700.P12380709953204433673

noncomputable section

/-- A142700: Primes congruent to 56 mod 57.

Offset 1, canonical program `A142700.P12380709953204433673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142700 (n : ℕ) : ℤ :=
  A142700.P12380709953204433673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142729.P4999326252629130332

`p?[59*n+2]`
-/

namespace A142729.P4999326252629130332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142729.P4999326252629130332

noncomputable section

/-- A142729: Primes congruent to 2 mod 59.

Offset 1, canonical program `A142729.P4999326252629130332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1371 terms. -/
def A142729 (n : ℕ) : ℤ :=
  (A142729.P4999326252629130332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1371 terms. -/
def A142729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142730.P2012576673298323486

`p?[59*n+3]`
-/

namespace A142730.P2012576673298323486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142730.P2012576673298323486

noncomputable section

/-- A142730: Primes congruent to 3 mod 59.

Offset 1, canonical program `A142730.P2012576673298323486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1353 terms. -/
def A142730 (n : ℕ) : ℤ :=
  (A142730.P2012576673298323486.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1353 terms. -/
def A142730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142731.P15418768050750891547

`p?[59*n+4]`
-/

namespace A142731.P15418768050750891547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142731.P15418768050750891547

noncomputable section

/-- A142731: Primes congruent to 4 mod 59.

Offset 1, canonical program `A142731.P15418768050750891547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142731 (n : ℕ) : ℤ :=
  (A142731.P15418768050750891547.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142732.P14396978986747985854

`p?[59*n+5]`
-/

namespace A142732.P14396978986747985854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142732.P14396978986747985854

noncomputable section

/-- A142732: Primes congruent to 5 mod 59.

Offset 1, canonical program `A142732.P14396978986747985854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142732 (n : ℕ) : ℤ :=
  (A142732.P14396978986747985854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142733.P9486175445827060876

`p?[59*n+6]`
-/

namespace A142733.P9486175445827060876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142733.P9486175445827060876

noncomputable section

/-- A142733: Primes congruent to 6 mod 59.

Offset 1, canonical program `A142733.P9486175445827060876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A142733 (n : ℕ) : ℤ :=
  (A142733.P9486175445827060876.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A142733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142734.P12788562841240082690

`p?[59*n+7]`
-/

namespace A142734.P12788562841240082690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142734.P12788562841240082690

noncomputable section

/-- A142734: Primes congruent to 7 mod 59.

Offset 1, canonical program `A142734.P12788562841240082690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1339 terms. -/
def A142734 (n : ℕ) : ℤ :=
  (A142734.P12788562841240082690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1339 terms. -/
def A142734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142735.P17921475589984968636

`p?[59*n+8]`
-/

namespace A142735.P17921475589984968636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142735.P17921475589984968636

noncomputable section

/-- A142735: Primes congruent to 8 mod 59.

Offset 1, canonical program `A142735.P17921475589984968636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A142735 (n : ℕ) : ℤ :=
  (A142735.P17921475589984968636.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A142735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142736.P12260663460807830888

`p?[59*n+9]`
-/

namespace A142736.P12260663460807830888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142736.P12260663460807830888

noncomputable section

/-- A142736: Primes congruent to 9 mod 59.

Offset 1, canonical program `A142736.P12260663460807830888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A142736 (n : ℕ) : ℤ :=
  (A142736.P12260663460807830888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A142736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142737.P1306565779540768433

`p?[59*n+10]`
-/

namespace A142737.P1306565779540768433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142737.P1306565779540768433

noncomputable section

/-- A142737: Primes congruent to 10 mod 59.

Offset 1, canonical program `A142737.P1306565779540768433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A142737 (n : ℕ) : ℤ :=
  (A142737.P1306565779540768433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A142737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142738.P9246638459395651207

`p?[59*n+11]`
-/

namespace A142738.P9246638459395651207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142738.P9246638459395651207

noncomputable section

/-- A142738: Primes congruent to 11 mod 59.

Offset 1, canonical program `A142738.P9246638459395651207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1330 terms. -/
def A142738 (n : ℕ) : ℤ :=
  (A142738.P9246638459395651207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1330 terms. -/
def A142738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142739.P18290606999874669249

`p?[59*n+12]`
-/

namespace A142739.P18290606999874669249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142739.P18290606999874669249

noncomputable section

/-- A142739: Primes congruent to 12 mod 59.

Offset 1, canonical program `A142739.P18290606999874669249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1378 terms. -/
def A142739 (n : ℕ) : ℤ :=
  (A142739.P18290606999874669249.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1378 terms. -/
def A142739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142740.P5608827552903211760

`p?[59*n+13]`
-/

namespace A142740.P5608827552903211760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142740.P5608827552903211760

noncomputable section

/-- A142740: Primes congruent to 13 mod 59.

Offset 1, canonical program `A142740.P5608827552903211760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1348 terms. -/
def A142740 (n : ℕ) : ℤ :=
  (A142740.P5608827552903211760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1348 terms. -/
def A142740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142741.P12670144625039199040

`p?[59*n+14]`
-/

namespace A142741.P12670144625039199040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142741.P12670144625039199040

noncomputable section

/-- A142741: Primes congruent to 14 mod 59.

Offset 1, canonical program `A142741.P12670144625039199040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1349 terms. -/
def A142741 (n : ℕ) : ℤ :=
  (A142741.P12670144625039199040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1349 terms. -/
def A142741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142742.P13352521078894166401

`p?[59*n+15]`
-/

namespace A142742.P13352521078894166401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142742.P13352521078894166401

noncomputable section

/-- A142742: Primes congruent to 15 mod 59.

Offset 1, canonical program `A142742.P13352521078894166401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1323 terms. -/
def A142742 (n : ℕ) : ℤ :=
  (A142742.P13352521078894166401.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1323 terms. -/
def A142742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142743.P874674141680888733

`p?[59*n+16]`
-/

namespace A142743.P874674141680888733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142743.P874674141680888733

noncomputable section

/-- A142743: Primes congruent to 16 mod 59.

Offset 1, canonical program `A142743.P874674141680888733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A142743 (n : ℕ) : ℤ :=
  (A142743.P874674141680888733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A142743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142744.P16905080705357753281

`p?[59*n-42]`
-/

namespace A142744.P16905080705357753281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142744.P16905080705357753281

noncomputable section

/-- A142744: Primes congruent to 17 mod 59.

Offset 1, canonical program `A142744.P16905080705357753281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A142744 (n : ℕ) : ℤ :=
  A142744.P16905080705357753281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. -/
def A142744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142745.P700629788023279192

`p?[59*n+18]`
-/

namespace A142745.P700629788023279192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142745.P700629788023279192

noncomputable section

/-- A142745: Primes congruent to 18 mod 59.

Offset 1, canonical program `A142745.P700629788023279192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A142745 (n : ℕ) : ℤ :=
  (A142745.P700629788023279192.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. -/
def A142745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142746.P12554973249002192024

`p?[59*n+19]`
-/

namespace A142746.P12554973249002192024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142746.P12554973249002192024

noncomputable section

/-- A142746: Primes congruent to 19 mod 59.

Offset 1, canonical program `A142746.P12554973249002192024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1341 terms. -/
def A142746 (n : ℕ) : ℤ :=
  (A142746.P12554973249002192024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1341 terms. -/
def A142746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142747.P10055237668845761381

`p?[59*n+20]`
-/

namespace A142747.P10055237668845761381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142747.P10055237668845761381

noncomputable section

/-- A142747: Primes congruent to 20 mod 59.

Offset 1, canonical program `A142747.P10055237668845761381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1337 terms. -/
def A142747 (n : ℕ) : ℤ :=
  (A142747.P10055237668845761381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1337 terms. -/
def A142747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142748.P8158062766394975784

`p?[59*n+21]`
-/

namespace A142748.P8158062766394975784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142748.P8158062766394975784

noncomputable section

/-- A142748: Primes congruent to 21 mod 59.

Offset 1, canonical program `A142748.P8158062766394975784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1351 terms. -/
def A142748 (n : ℕ) : ℤ :=
  (A142748.P8158062766394975784.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1351 terms. -/
def A142748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142749.P11019905987343841115

`p?[59*n+22]`
-/

namespace A142749.P11019905987343841115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142749.P11019905987343841115

noncomputable section

/-- A142749: Primes congruent to 22 mod 59.

Offset 1, canonical program `A142749.P11019905987343841115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142749 (n : ℕ) : ℤ :=
  (A142749.P11019905987343841115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142750.P3306253928389468557

`p?[59*n+23]`
-/

namespace A142750.P3306253928389468557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142750.P3306253928389468557

noncomputable section

/-- A142750: Primes congruent to 23 mod 59.

Offset 1, canonical program `A142750.P3306253928389468557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1353 terms. -/
def A142750 (n : ℕ) : ℤ :=
  (A142750.P3306253928389468557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1353 terms. -/
def A142750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142751.P15092696060650891724

`p?[59*n+24]`
-/

namespace A142751.P15092696060650891724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142751.P15092696060650891724

noncomputable section

/-- A142751: Primes congruent to 24 mod 59.

Offset 1, canonical program `A142751.P15092696060650891724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1338 terms. -/
def A142751 (n : ℕ) : ℤ :=
  (A142751.P15092696060650891724.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1338 terms. -/
def A142751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142752.P1738315188731270159

`p?[59*n+25]`
-/

namespace A142752.P1738315188731270159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142752.P1738315188731270159

noncomputable section

/-- A142752: Primes congruent to 25 mod 59.

Offset 1, canonical program `A142752.P1738315188731270159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1363 terms. -/
def A142752 (n : ℕ) : ℤ :=
  (A142752.P1738315188731270159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1363 terms. -/
def A142752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142753.P2539922441208332439

`p?[59*n+26]`
-/

namespace A142753.P2539922441208332439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142753.P2539922441208332439

noncomputable section

/-- A142753: Primes congruent to 26 mod 59.

Offset 1, canonical program `A142753.P2539922441208332439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A142753 (n : ℕ) : ℤ :=
  (A142753.P2539922441208332439.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A142753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142754.P5901441355332948607

`p?[59*n-32]`
-/

namespace A142754.P5901441355332948607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142754.P5901441355332948607

noncomputable section

/-- A142754: Primes congruent to 27 mod 59.

Offset 1, canonical program `A142754.P5901441355332948607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A142754 (n : ℕ) : ℤ :=
  A142754.P5901441355332948607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A142754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142755.P14456745287928612606

`p?[59*n+28]`
-/

namespace A142755.P14456745287928612606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142755.P14456745287928612606

noncomputable section

/-- A142755: Primes congruent to 28 mod 59.

Offset 1, canonical program `A142755.P14456745287928612606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. -/
def A142755 (n : ℕ) : ℤ :=
  (A142755.P14456745287928612606.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. -/
def A142755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142756.P13651941834180047484

`p?[59*n+29]`
-/

namespace A142756.P13651941834180047484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142756.P13651941834180047484

noncomputable section

/-- A142756: Primes congruent to 29 mod 59.

Offset 1, canonical program `A142756.P13651941834180047484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A142756 (n : ℕ) : ℤ :=
  (A142756.P13651941834180047484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A142756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142757.P8841851707877434006

`p?[59*n-29]`
-/

namespace A142757.P8841851707877434006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142757.P8841851707877434006

noncomputable section

/-- A142757: Primes congruent to 30 mod 59.

Offset 1, canonical program `A142757.P8841851707877434006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A142757 (n : ℕ) : ℤ :=
  A142757.P8841851707877434006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A142757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142758.P2388600102352783493

`p?[59*n-28]`
-/

namespace A142758.P2388600102352783493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 28

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142758.P2388600102352783493

noncomputable section

/-- A142758: Primes congruent to 31 mod 59.

Offset 1, canonical program `A142758.P2388600102352783493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1351 terms. -/
def A142758 (n : ℕ) : ℤ :=
  A142758.P2388600102352783493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1351 terms. -/
def A142758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142759.P14858021140169783255

`p?[59*n+32]`
-/

namespace A142759.P14858021140169783255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142759.P14858021140169783255

noncomputable section

/-- A142759: Primes congruent to 32 mod 59.

Offset 1, canonical program `A142759.P14858021140169783255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142759 (n : ℕ) : ℤ :=
  (A142759.P14858021140169783255.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142760.P3684195330162948718

`p?[59*n-26]`
-/

namespace A142760.P3684195330162948718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142760.P3684195330162948718

noncomputable section

/-- A142760: Primes congruent to 33 mod 59.

Offset 1, canonical program `A142760.P3684195330162948718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1367 terms. -/
def A142760 (n : ℕ) : ℤ :=
  A142760.P3684195330162948718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1367 terms. -/
def A142760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142761.P7285316017810830557

`p?[59*n-25]`
-/

namespace A142761.P7285316017810830557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142761.P7285316017810830557

noncomputable section

/-- A142761: Primes congruent to 34 mod 59.

Offset 1, canonical program `A142761.P7285316017810830557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1337 terms. -/
def A142761 (n : ℕ) : ℤ :=
  A142761.P7285316017810830557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1337 terms. -/
def A142761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142762.P10577382081517463489

`p?[59*n-24]`
-/

namespace A142762.P10577382081517463489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142762.P10577382081517463489

noncomputable section

/-- A142762: Primes congruent to 35 mod 59.

Offset 1, canonical program `A142762.P10577382081517463489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A142762 (n : ℕ) : ℤ :=
  A142762.P10577382081517463489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A142762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142763.P10451423582178210377

`p?[59*n-23]`
-/

namespace A142763.P10451423582178210377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142763.P10451423582178210377

noncomputable section

/-- A142763: Primes congruent to 36 mod 59.

Offset 1, canonical program `A142763.P10451423582178210377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A142763 (n : ℕ) : ℤ :=
  A142763.P10451423582178210377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1356 terms. -/
def A142763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142764.P607253970076106302

`p?[59*n-22]`
-/

namespace A142764.P607253970076106302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142764.P607253970076106302

noncomputable section

/-- A142764: Primes congruent to 37 mod 59.

Offset 1, canonical program `A142764.P607253970076106302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A142764 (n : ℕ) : ℤ :=
  A142764.P607253970076106302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1372 terms. -/
def A142764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142765.P15446213454933447653

`p?[59*n-21]`
-/

namespace A142765.P15446213454933447653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142765.P15446213454933447653

noncomputable section

/-- A142765: Primes congruent to 38 mod 59.

Offset 1, canonical program `A142765.P15446213454933447653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A142765 (n : ℕ) : ℤ :=
  A142765.P15446213454933447653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A142765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142766.P15834970343129611408

`p?[59*n-20]`
-/

namespace A142766.P15834970343129611408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142766.P15834970343129611408

noncomputable section

/-- A142766: Primes congruent to 39 mod 59.

Offset 1, canonical program `A142766.P15834970343129611408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A142766 (n : ℕ) : ℤ :=
  A142766.P15834970343129611408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. -/
def A142766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142767.P10349622226339058301

`p?[59*n-19]`
-/

namespace A142767.P10349622226339058301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142767.P10349622226339058301

noncomputable section

/-- A142767: Primes congruent to 40 mod 59.

Offset 1, canonical program `A142767.P10349622226339058301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A142767 (n : ℕ) : ℤ :=
  A142767.P10349622226339058301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1373 terms. -/
def A142767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142768.P16711511557012601460

`p?[59*n-18]`
-/

namespace A142768.P16711511557012601460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142768.P16711511557012601460

noncomputable section

/-- A142768: Primes congruent to 41 mod 59.

Offset 1, canonical program `A142768.P16711511557012601460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142768 (n : ℕ) : ℤ :=
  A142768.P16711511557012601460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142769.P13463393631795004344

`p?[59*n+42]`
-/

namespace A142769.P13463393631795004344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59 * n + 42

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142769.P13463393631795004344

noncomputable section

/-- A142769: Primes congruent to 42 mod 59.

Offset 1, canonical program `A142769.P13463393631795004344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1349 terms. -/
def A142769 (n : ℕ) : ℤ :=
  (A142769.P13463393631795004344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1349 terms. -/
def A142769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142770.P2893549591978601174

`p?[59*n-16]`
-/

namespace A142770.P2893549591978601174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142770.P2893549591978601174

noncomputable section

/-- A142770: Primes congruent to 43 mod 59.

Offset 1, canonical program `A142770.P2893549591978601174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A142770 (n : ℕ) : ℤ :=
  A142770.P2893549591978601174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A142770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142771.P10920528627363896590

`p?[59*n-15]`
-/

namespace A142771.P10920528627363896590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142771.P10920528627363896590

noncomputable section

/-- A142771: Primes congruent to 44 mod 59.

Offset 1, canonical program `A142771.P10920528627363896590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A142771 (n : ℕ) : ℤ :=
  A142771.P10920528627363896590.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. -/
def A142771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142772.P9868224480306720378

`p?[59*n-14]`
-/

namespace A142772.P9868224480306720378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142772.P9868224480306720378

noncomputable section

/-- A142772: Primes congruent to 45 mod 59.

Offset 1, canonical program `A142772.P9868224480306720378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A142772 (n : ℕ) : ℤ :=
  A142772.P9868224480306720378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1340 terms. -/
def A142772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142773.P11628579780795049656

`p?[59*n-13]`
-/

namespace A142773.P11628579780795049656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142773.P11628579780795049656

noncomputable section

/-- A142773: Primes congruent to 46 mod 59.

Offset 1, canonical program `A142773.P11628579780795049656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A142773 (n : ℕ) : ℤ :=
  A142773.P11628579780795049656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A142773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142774.P7361394003584978862

`p?[59*n-12]`
-/

namespace A142774.P7361394003584978862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142774.P7361394003584978862

noncomputable section

/-- A142774: Primes congruent to 47 mod 59.

Offset 1, canonical program `A142774.P7361394003584978862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1351 terms. -/
def A142774 (n : ℕ) : ℤ :=
  A142774.P7361394003584978862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1351 terms. -/
def A142774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142775.P8725221765347327823

`p?[59*n-11]`
-/

namespace A142775.P8725221765347327823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142775.P8725221765347327823

noncomputable section

/-- A142775: Primes congruent to 48 mod 59.

Offset 1, canonical program `A142775.P8725221765347327823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142775 (n : ℕ) : ℤ :=
  A142775.P8725221765347327823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1358 terms. -/
def A142775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142776.P14603351713955366249

`p?[59*n-10]`
-/

namespace A142776.P14603351713955366249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142776.P14603351713955366249

noncomputable section

/-- A142776: Primes congruent to 49 mod 59.

Offset 1, canonical program `A142776.P14603351713955366249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A142776 (n : ℕ) : ℤ :=
  A142776.P14603351713955366249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A142776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142777.P16332100524234957493

`p?[59*n-9]`
-/

namespace A142777.P16332100524234957493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142777.P16332100524234957493

noncomputable section

/-- A142777: Primes congruent to 50 mod 59.

Offset 1, canonical program `A142777.P16332100524234957493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1365 terms. -/
def A142777 (n : ℕ) : ℤ :=
  A142777.P16332100524234957493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1365 terms. -/
def A142777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142778.P17241945090735646841

`p?[59*n-8]`
-/

namespace A142778.P17241945090735646841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142778.P17241945090735646841

noncomputable section

/-- A142778: Primes congruent to 51 mod 59.

Offset 1, canonical program `A142778.P17241945090735646841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1354 terms. -/
def A142778 (n : ℕ) : ℤ :=
  A142778.P17241945090735646841.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1354 terms. -/
def A142778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142779.P18302781696670615743

`p?[59*n-7]`
-/

namespace A142779.P18302781696670615743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142779.P18302781696670615743

noncomputable section

/-- A142779: Primes congruent to 52 mod 59.

Offset 1, canonical program `A142779.P18302781696670615743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1370 terms. -/
def A142779 (n : ℕ) : ℤ :=
  A142779.P18302781696670615743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1370 terms. -/
def A142779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142780.P6926582499104683057

`p?[59*n-6]`
-/

namespace A142780.P6926582499104683057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142780.P6926582499104683057

noncomputable section

/-- A142780: Primes congruent to 53 mod 59.

Offset 1, canonical program `A142780.P6926582499104683057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A142780 (n : ℕ) : ℤ :=
  A142780.P6926582499104683057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1344 terms. -/
def A142780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142781.P6171479548940273087

`p?[59*n-5]`
-/

namespace A142781.P6171479548940273087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142781.P6171479548940273087

noncomputable section

/-- A142781: Primes congruent to 54 mod 59.

Offset 1, canonical program `A142781.P6171479548940273087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1341 terms. -/
def A142781 (n : ℕ) : ℤ :=
  A142781.P6171479548940273087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1341 terms. -/
def A142781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142782.P16047853702145488896

`p?[59*n-4]`
-/

namespace A142782.P16047853702145488896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142782.P16047853702145488896

noncomputable section

/-- A142782: Primes congruent to 55 mod 59.

Offset 1, canonical program `A142782.P16047853702145488896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A142782 (n : ℕ) : ℤ :=
  A142782.P16047853702145488896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1357 terms. -/
def A142782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142783.P5673115641976607910

`p?[59*n-3]`
-/

namespace A142783.P5673115641976607910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142783.P5673115641976607910

noncomputable section

/-- A142783: Primes congruent to 56 mod 59.

Offset 1, canonical program `A142783.P5673115641976607910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A142783 (n : ℕ) : ℤ :=
  A142783.P5673115641976607910.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. -/
def A142783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142784.P12270483330170810183

`p?[59*n-2]`
-/

namespace A142784.P12270483330170810183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142784.P12270483330170810183

noncomputable section

/-- A142784: Primes congruent to 57 mod 59.

Offset 1, canonical program `A142784.P12270483330170810183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. -/
def A142784 (n : ℕ) : ℤ :=
  A142784.P12270483330170810183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1366 terms. -/
def A142784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142785.P5407688993661693736

`p?[59*n-1]`
-/

namespace A142785.P5407688993661693736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (59 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142785.P5407688993661693736

noncomputable section

/-- A142785: Primes congruent to 58 mod 59.

Offset 1, canonical program `A142785.P5407688993661693736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1342 terms. -/
def A142785 (n : ℕ) : ℤ :=
  A142785.P5407688993661693736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1342 terms. -/
def A142785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142786.P8917819512405611258

`p?[60*n+7]`
-/

namespace A142786.P8917819512405611258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142786.P8917819512405611258

noncomputable section

/-- A142786: Primes congruent to 7 mod 60.

Offset 1, canonical program `A142786.P8917819512405611258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4899 terms. -/
def A142786 (n : ℕ) : ℤ :=
  (A142786.P8917819512405611258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4899 terms. -/
def A142786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142787.P6426569186505720714

`p?[6*10*n+13]`
-/

namespace A142787.P6426569186505720714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (10 * n) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142787.P6426569186505720714

noncomputable section

/-- A142787: Primes congruent to 13 mod 60.

Offset 1, canonical program `A142787.P6426569186505720714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. -/
def A142787 (n : ℕ) : ℤ :=
  (A142787.P6426569186505720714.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4919 terms. -/
def A142787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142788.P514723230058095459

`p?[60*n+17]`
-/

namespace A142788.P514723230058095459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142788.P514723230058095459

noncomputable section

/-- A142788: Primes congruent to 17 mod 60.

Offset 1, canonical program `A142788.P514723230058095459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4917 terms. -/
def A142788 (n : ℕ) : ℤ :=
  (A142788.P514723230058095459.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4917 terms. -/
def A142788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142790.P13001401062835289333

`p?[6*10*n+23]`
-/

namespace A142790.P13001401062835289333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (10 * n) + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142790.P13001401062835289333

noncomputable section

/-- A142790: Primes congruent to 23 mod 60.

Offset 1, canonical program `A142790.P13001401062835289333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4929 terms. -/
def A142790 (n : ℕ) : ℤ :=
  (A142790.P13001401062835289333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4929 terms. -/
def A142790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142792.P14666130820681181085

`p?[6*10*n-29]`
-/

namespace A142792.P14666130820681181085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (10 * n) : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142792.P14666130820681181085

noncomputable section

/-- A142792: Primes congruent to 31 mod 60.

Offset 1, canonical program `A142792.P14666130820681181085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4943 terms. -/
def A142792 (n : ℕ) : ℤ :=
  A142792.P14666130820681181085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4943 terms. -/
def A142792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142793.P13372255078100288540

`p?[60*n+37]`
-/

namespace A142793.P13372255078100288540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * n + 37

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142793.P13372255078100288540

noncomputable section

/-- A142793: Primes congruent to 37 mod 60.

Offset 1, canonical program `A142793.P13372255078100288540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A142793 (n : ℕ) : ℤ :=
  (A142793.P13372255078100288540.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4913 terms. -/
def A142793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142795.P12443052717380745165

`p?[or(2, 15*n-2)]`
-/

namespace A142795.P12443052717380745165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((15 * n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142795.P12443052717380745165

noncomputable section

/-- A142795: Primes congruent to 43 mod 60.

Offset 1, canonical program `A142795.P12443052717380745165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. -/
def A142795 (n : ℕ) : ℤ :=
  A142795.P12443052717380745165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. -/
def A142795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142796.P14078358238342330265

`p?[a(n-1)+60]` with `a(0)=47`
-/

namespace A142796.P14078358238342330265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [47] fun n f1 =>
  f1 (n - 1) + 60

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142796.P14078358238342330265

noncomputable section

/-- A142796: Primes congruent to 47 mod 60.

Offset 1, canonical program `A142796.P14078358238342330265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4892 terms. -/
def A142796 (n : ℕ) : ℤ :=
  (A142796.P14078358238342330265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4892 terms. -/
def A142796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142797.P10393761466021008869

`p?[60*n-11]`
-/

namespace A142797.P10393761466021008869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (60 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142797.P10393761466021008869

noncomputable section

/-- A142797: Primes congruent to 49 mod 60.

Offset 1, canonical program `A142797.P10393761466021008869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4868 terms. -/
def A142797 (n : ℕ) : ℤ :=
  A142797.P10393761466021008869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4868 terms. -/
def A142797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142798.P441370703986699577

`p?[60*n-7]`
-/

namespace A142798.P441370703986699577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (60 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142798.P441370703986699577

noncomputable section

/-- A142798: Primes congruent to 53 mod 60.

Offset 1, canonical program `A142798.P441370703986699577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4911 terms. -/
def A142798 (n : ℕ) : ℤ :=
  A142798.P441370703986699577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4911 terms. -/
def A142798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142799.P6366927618958974393

`p?[60*n-1]`
-/

namespace A142799.P6366927618958974393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (60 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142799.P6366927618958974393

noncomputable section

/-- A142799: Primes congruent to 59 mod 60.

Offset 1, canonical program `A142799.P6366927618958974393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4917 terms. -/
def A142799 (n : ℕ) : ℤ :=
  A142799.P6366927618958974393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4917 terms. -/
def A142799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142800.P9102499254012989498

`p?[61*n+2]`
-/

namespace A142800.P9102499254012989498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142800.P9102499254012989498

noncomputable section

/-- A142800: Primes congruent to 2 mod 61.

Offset 1, canonical program `A142800.P9102499254012989498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A142800 (n : ℕ) : ℤ :=
  (A142800.P9102499254012989498.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A142800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142801.P17512731339889488162

`p?[61*n+3]`
-/

namespace A142801.P17512731339889488162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142801.P17512731339889488162

noncomputable section

/-- A142801: Primes congruent to 3 mod 61.

Offset 1, canonical program `A142801.P17512731339889488162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. -/
def A142801 (n : ℕ) : ℤ :=
  (A142801.P17512731339889488162.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. -/
def A142801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142802.P925025068234265492

`p?[61*n+4]`
-/

namespace A142802.P925025068234265492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142802.P925025068234265492

noncomputable section

/-- A142802: Primes congruent to 4 mod 61.

Offset 1, canonical program `A142802.P925025068234265492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A142802 (n : ℕ) : ℤ :=
  (A142802.P925025068234265492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A142802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142803.P16037689655801771418

`p?[61*n+5]`
-/

namespace A142803.P16037689655801771418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142803.P16037689655801771418

noncomputable section

/-- A142803: Primes congruent to 5 mod 61.

Offset 1, canonical program `A142803.P16037689655801771418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A142803 (n : ℕ) : ℤ :=
  (A142803.P16037689655801771418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A142803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142804.P14932335239259171558

`p?[61*n+6]`
-/

namespace A142804.P14932335239259171558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142804.P14932335239259171558

noncomputable section

/-- A142804: Primes congruent to 6 mod 61.

Offset 1, canonical program `A142804.P14932335239259171558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. -/
def A142804 (n : ℕ) : ℤ :=
  (A142804.P14932335239259171558.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. -/
def A142804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142805.P7916996523121626458

`p?[61*n+7]`
-/

namespace A142805.P7916996523121626458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142805.P7916996523121626458

noncomputable section

/-- A142805: Primes congruent to 7 mod 61.

Offset 1, canonical program `A142805.P7916996523121626458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. -/
def A142805 (n : ℕ) : ℤ :=
  (A142805.P7916996523121626458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. -/
def A142805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142806.P17008932734811522984

`p?[61*n+8]`
-/

namespace A142806.P17008932734811522984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142806.P17008932734811522984

noncomputable section

/-- A142806: Primes congruent to 8 mod 61.

Offset 1, canonical program `A142806.P17008932734811522984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1321 terms. -/
def A142806 (n : ℕ) : ℤ :=
  (A142806.P17008932734811522984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1321 terms. -/
def A142806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142807.P3249392603131882975

`p?[61*n+9]`
-/

namespace A142807.P3249392603131882975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142807.P3249392603131882975

noncomputable section

/-- A142807: Primes congruent to 9 mod 61.

Offset 1, canonical program `A142807.P3249392603131882975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A142807 (n : ℕ) : ℤ :=
  (A142807.P3249392603131882975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A142807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142808.P11157494017108577309

`p?[61*n+10]`
-/

namespace A142808.P11157494017108577309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142808.P11157494017108577309

noncomputable section

/-- A142808: Primes congruent to 10 mod 61.

Offset 1, canonical program `A142808.P11157494017108577309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. -/
def A142808 (n : ℕ) : ℤ :=
  (A142808.P11157494017108577309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. -/
def A142808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142809.P10013660271663785681

`p?[61*n+11]`
-/

namespace A142809.P10013660271663785681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142809.P10013660271663785681

noncomputable section

/-- A142809: Primes congruent to 11 mod 61.

Offset 1, canonical program `A142809.P10013660271663785681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A142809 (n : ℕ) : ℤ :=
  (A142809.P10013660271663785681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A142809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142810.P4981445707121693173

`p?[61*n+12]`
-/

namespace A142810.P4981445707121693173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142810.P4981445707121693173

noncomputable section

/-- A142810: Primes congruent to 12 mod 61.

Offset 1, canonical program `A142810.P4981445707121693173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. -/
def A142810 (n : ℕ) : ℤ :=
  (A142810.P4981445707121693173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. -/
def A142810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142811.P10089377442052219553

`p?[61*n+13]`
-/

namespace A142811.P10089377442052219553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142811.P10089377442052219553

noncomputable section

/-- A142811: Primes congruent to 13 mod 61.

Offset 1, canonical program `A142811.P10089377442052219553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A142811 (n : ℕ) : ℤ :=
  (A142811.P10089377442052219553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A142811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142812.P4748277480661010641

`p?[61*n+14]`
-/

namespace A142812.P4748277480661010641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142812.P4748277480661010641

noncomputable section

/-- A142812: Primes congruent to 14 mod 61.

Offset 1, canonical program `A142812.P4748277480661010641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. -/
def A142812 (n : ℕ) : ℤ :=
  (A142812.P4748277480661010641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. -/
def A142812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142813.P3118689322364856327

`p?[61*n+15]`
-/

namespace A142813.P3118689322364856327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142813.P3118689322364856327

noncomputable section

/-- A142813: Primes congruent to 15 mod 61.

Offset 1, canonical program `A142813.P3118689322364856327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A142813 (n : ℕ) : ℤ :=
  (A142813.P3118689322364856327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. -/
def A142813.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142814.P8653414959725100491

`p?[61*n+16]`
-/

namespace A142814.P8653414959725100491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142814.P8653414959725100491

noncomputable section

/-- A142814: Primes congruent to 16 mod 61.

Offset 1, canonical program `A142814.P8653414959725100491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A142814 (n : ℕ) : ℤ :=
  (A142814.P8653414959725100491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. -/
def A142814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142815.P15485703844262481352

`p?[61*n+17]`
-/

namespace A142815.P15485703844262481352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142815.P15485703844262481352

noncomputable section

/-- A142815: Primes congruent to 17 mod 61.

Offset 1, canonical program `A142815.P15485703844262481352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A142815 (n : ℕ) : ℤ :=
  (A142815.P15485703844262481352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1306 terms. -/
def A142815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142816.P1837982766238215271

`p?[61*n+18]`
-/

namespace A142816.P1837982766238215271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142816.P1837982766238215271

noncomputable section

/-- A142816: Primes congruent to 18 mod 61.

Offset 1, canonical program `A142816.P1837982766238215271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. -/
def A142816 (n : ℕ) : ℤ :=
  (A142816.P1837982766238215271.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. -/
def A142816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142817.P10524498803158292204

`p?[61*n+19]`
-/

namespace A142817.P10524498803158292204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142817.P10524498803158292204

noncomputable section

/-- A142817: Primes congruent to 19 mod 61.

Offset 1, canonical program `A142817.P10524498803158292204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A142817 (n : ℕ) : ℤ :=
  (A142817.P10524498803158292204.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1296 terms. -/
def A142817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142818.P17172144998852855688

`p?[61*n+20]`
-/

namespace A142818.P17172144998852855688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142818.P17172144998852855688

noncomputable section

/-- A142818: Primes congruent to 20 mod 61.

Offset 1, canonical program `A142818.P17172144998852855688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A142818 (n : ℕ) : ℤ :=
  (A142818.P17172144998852855688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A142818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142819.P2383881570244080223

`p?[61*n+21]`
-/

namespace A142819.P2383881570244080223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 21

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142819.P2383881570244080223

noncomputable section

/-- A142819: Primes congruent to 21 mod 61.

Offset 1, canonical program `A142819.P2383881570244080223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. -/
def A142819 (n : ℕ) : ℤ :=
  (A142819.P2383881570244080223.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1320 terms. -/
def A142819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142820.P8547957382570766057

`p?[61*n+22]`
-/

namespace A142820.P8547957382570766057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142820.P8547957382570766057

noncomputable section

/-- A142820: Primes congruent to 22 mod 61.

Offset 1, canonical program `A142820.P8547957382570766057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. -/
def A142820 (n : ℕ) : ℤ :=
  (A142820.P8547957382570766057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1315 terms. -/
def A142820.provenance : SequenceMachineLib.Provenance := .conjectured

