import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A018215.P2890906494214168874

`n*4^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A018215.P2890906494214168874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ n

end

end A018215.P2890906494214168874

noncomputable section

/-- A018215: a(n) = n*4^n.

Offset 0, canonical program `A018215.P2890906494214168874`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*4^n` (program `A018215.P2890906494214168874`, by `A018215.P2890906494214168874.correct`). Lean does not check the parsing of the name. -/
def A018215 (n : ℕ) : ℤ :=
  (A018215.P2890906494214168874.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*4^n` (program `A018215.P2890906494214168874`, by `A018215.P2890906494214168874.correct`). Lean does not check the parsing of the name. -/
def A018215.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A018224.P18167034357064134174

`C(n, floor(n/2))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A018224.P18167034357064134174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ⌊(n : ℚ) / 2⌋.toNat ^ 2

end

end A018224.P18167034357064134174

noncomputable section

/-- A018224: a(n) = binomial(n, floor(n/2))^2 = A001405(n)^2.

Offset 0, canonical program `A018224.P18167034357064134174`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))²` (program `A018224.P18167034357064134174`, by `A018224.P18167034357064134174.correct`). Lean does not check the parsing of the name. -/
def A018224 (n : ℕ) : ℤ :=
  (A018224.P18167034357064134174.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, floor(n/2))²` (program `A018224.P18167034357064134174`, by `A018224.P18167034357064134174.correct`). Lean does not check the parsing of the name. -/
def A018224.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A018913.P2691531204528918259

`9*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A018913.P2691531204528918259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  9 * a (n - 1) - a (n - 2)

end

end A018913.P2691531204528918259

noncomputable section

/-- A018913: a(n) = 9*a(n - 1) - a(n - 2) for n>1, a(0)=0, a(1)=1.

Offset 0, canonical program `A018913.P2691531204528918259`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-a(n-2)` (program `A018913.P2691531204528918259`, by `A018913.P2691531204528918259.correct`). Lean does not check the parsing of the name. -/
def A018913 (n : ℕ) : ℤ :=
  A018913.P2691531204528918259.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-a(n-2)` (program `A018913.P2691531204528918259`, by `A018913.P2691531204528918259.correct`). Lean does not check the parsing of the name. -/
def A018913.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A018914.P12491829555803972000

`floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A018914.P12491829555803972000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018914.P12491829555803972000

noncomputable section

/-- A018914: Pisot sequence T(2,5), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A018914.P12491829555803972000`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A018914.P12491829555803972000`, by `A018914.P12491829555803972000.correct`). Lean does not check the parsing of the name. -/
def A018914 (n : ℕ) : ℤ :=
  A018914.P12491829555803972000.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A018914.P12491829555803972000`, by `A018914.P12491829555803972000.correct`). Lean does not check the parsing of the name. -/
def A018914.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A018920.P9688928498901660249

`floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A018920.P9688928498901660249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018920.P9688928498901660249

noncomputable section

/-- A018920: Pisot sequence T(3,10), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A018920.P9688928498901660249`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A018920.P9688928498901660249`, by `A018920.P9688928498901660249.correct`). Lean does not check the parsing of the name. -/
def A018920 (n : ℕ) : ℤ :=
  A018920.P9688928498901660249.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A018920.P9688928498901660249`, by `A018920.P9688928498901660249.correct`). Lean does not check the parsing of the name. -/
def A018920.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019476.P16597330554726626127

`5*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=10, a(2)=51`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019476.P16597330554726626127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10, 51] fun n a =>
  5 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A019476.P16597330554726626127

noncomputable section

/-- A019476: a(n) = 5*a(n-1) + a(n-2) - 2*a(n-3).

Offset 0, canonical program `A019476.P16597330554726626127`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)-2*a(n-3)` (program `A019476.P16597330554726626127`, by `A019476.P16597330554726626127.correct`). Lean does not check the parsing of the name. -/
def A019476 (n : ℕ) : ℤ :=
  A019476.P16597330554726626127.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)-2*a(n-3)` (program `A019476.P16597330554726626127`, by `A019476.P16597330554726626127.correct`). Lean does not check the parsing of the name. -/
def A019476.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019481.P15282223044704217942

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=12, a(2)=37`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019481.P15282223044704217942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 12, 37] fun n a =>
  3 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A019481.P15282223044704217942

noncomputable section

/-- A019481: a(n) = 3*a(n-1) + a(n-2) - 2*a(n-3) (agrees with A019480 for n <= 19 only).

Offset 0, canonical program `A019481.P15282223044704217942`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)-2*a(n-3)` (program `A019481.P15282223044704217942`, by `A019481.P15282223044704217942.correct`). Lean does not check the parsing of the name. -/
def A019481 (n : ℕ) : ℤ :=
  A019481.P15282223044704217942.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)-2*a(n-3)` (program `A019481.P15282223044704217942`, by `A019481.P15282223044704217942.correct`). Lean does not check the parsing of the name. -/
def A019481.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019485.P444702835424916875

`2*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=2, a(1)=5, a(2)=12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019485.P444702835424916875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 3 * a (n - 3)

end

end A019485.P444702835424916875

noncomputable section

/-- A019485: a(n) = 2*a(n-1) + 2*a(n-2) - 3*a(n-3), with a(0) = 2, a(1) = 5, a(2) = 12.

Offset 0, canonical program `A019485.P444702835424916875`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-3*a(n-3)` (program `A019485.P444702835424916875`, by `A019485.P444702835424916875.correct`). Lean does not check the parsing of the name. -/
def A019485 (n : ℕ) : ℤ :=
  A019485.P444702835424916875.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-3*a(n-3)` (program `A019485.P444702835424916875`, by `A019485.P444702835424916875.correct`). Lean does not check the parsing of the name. -/
def A019485.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019486.P6125796287811547698

`2*a(n-1)+a(n-2)-a(n-4)-a(n-5)-a(n-6)-a(n-7)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=28, a(4)=65, a(5)=150, a(6)=346`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019486.P6125796287811547698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12, 28, 65, 150, 346] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) - a (n - 6) - a (n - 7)

end

end A019486.P6125796287811547698

noncomputable section

/-- A019486: a(n) = 2*a(n-1) + a(n-2) - a(n-4) - a(n-5) - a(n-6) - a(n-7).

Offset 0, canonical program `A019486.P6125796287811547698`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-a(n-4)-a(n-5)-a(n-6)-a(n-7)` (program `A019486.P6125796287811547698`, by `A019486.P6125796287811547698.correct`). Lean does not check the parsing of the name. -/
def A019486 (n : ℕ) : ℤ :=
  A019486.P6125796287811547698.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-a(n-4)-a(n-5)-a(n-6)-a(n-7)` (program `A019486.P6125796287811547698`, by `A019486.P6125796287811547698.correct`). Lean does not check the parsing of the name. -/
def A019486.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019487.P1855462513713278321

`3*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=6, a(2)=17, a(3)=48`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019487.P1855462513713278321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 17, 48] fun n a =>
  3 * a (n - 1) - a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A019487.P1855462513713278321

noncomputable section

/-- A019487: a(n) = 3*a(n-1) - a(n-2) + 2*a(n-3) - 2*a(n-4).

Offset 0, canonical program `A019487.P1855462513713278321`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` (program `A019487.P1855462513713278321`, by `A019487.P1855462513713278321.correct`). Lean does not check the parsing of the name. -/
def A019487 (n : ℕ) : ℤ :=
  A019487.P1855462513713278321.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` (program `A019487.P1855462513713278321`, by `A019487.P1855462513713278321.correct`). Lean does not check the parsing of the name. -/
def A019487.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019492.P142361007779468196

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019492.P142361007779468196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A019492.P142361007779468196

noncomputable section

/-- A019492: Pisot sequence T(4,9), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A019492.P142361007779468196`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A019492.P142361007779468196`, by `A019492.P142361007779468196.correct`). Lean does not check the parsing of the name. -/
def A019492 (n : ℕ) : ℤ :=
  A019492.P142361007779468196.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A019492.P142361007779468196`, by `A019492.P142361007779468196.correct`). Lean does not check the parsing of the name. -/
def A019492.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019493.P4442239572549353638

`3*a(n-1)-4*a(n-3)+a(n-6)` with `a(0)=4, a(1)=9, a(2)=20, a(3)=44, a(4)=96, a(5)=209`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019493.P4442239572549353638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9, 20, 44, 96, 209] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3) + a (n - 6)

end

end A019493.P4442239572549353638

noncomputable section

/-- A019493: a(n) = 3*a(n-1) - 4*a(n-3) + a(n-6).

Offset 0, canonical program `A019493.P4442239572549353638`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-3)+a(n-6)` (program `A019493.P4442239572549353638`, by `A019493.P4442239572549353638.correct`). Lean does not check the parsing of the name. -/
def A019493 (n : ℕ) : ℤ :=
  A019493.P4442239572549353638.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-3)+a(n-6)` (program `A019493.P4442239572549353638`, by `A019493.P4442239572549353638.correct`). Lean does not check the parsing of the name. -/
def A019493.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019496.P12320799894350101071

`3*a(n-1)-3*a(n-3)+2*a(n-4)` with `a(0)=4, a(1)=11, a(2)=30, a(3)=81`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019496.P12320799894350101071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 11, 30, 81] fun n a =>
  3 * a (n - 1) - 3 * a (n - 3) + 2 * a (n - 4)

end

end A019496.P12320799894350101071

noncomputable section

/-- A019496: a(n) = 3*a(n-1) - 3*a(n-3) + 2*a(n-4), with a(0)=4, a(1)=11.

Offset 0, canonical program `A019496.P12320799894350101071`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-3)+2*a(n-4)` (program `A019496.P12320799894350101071`, by `A019496.P12320799894350101071.correct`). Lean does not check the parsing of the name. -/
def A019496 (n : ℕ) : ℤ :=
  A019496.P12320799894350101071.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-3)+2*a(n-4)` (program `A019496.P12320799894350101071`, by `A019496.P12320799894350101071.correct`). Lean does not check the parsing of the name. -/
def A019496.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019510.P11679685294636175852

`gcd(C(n+4, n+1)+C(n+5, n+2), C(n+6, n+3))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019510.P11679685294636175852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (n + 4) (n + 1) + Nat.choose (n + 5) (n + 2)) (Nat.choose (n + 6) (n + 3))

end

end A019510.P11679685294636175852

noncomputable section

/-- A019510: a(n) = gcd( binomial(n+3, n) + binomial(n+4, n+1), binomial(n+5, n+2) ).

Offset 1, canonical program `A019510.P11679685294636175852`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(C(n+4, n+1)+C(n+5, n+2), C(n+6, n+3))` (program `A019510.P11679685294636175852`, by `A019510.P11679685294636175852.correct`). Lean does not check the parsing of the name. -/
def A019510 (n : ℕ) : ℤ :=
  (A019510.P11679685294636175852.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(C(n+4, n+1)+C(n+5, n+2), C(n+6, n+3))` (program `A019510.P11679685294636175852`, by `A019510.P11679685294636175852.correct`). Lean does not check the parsing of the name. -/
def A019510.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A019514.P10224047116372289714

`n!^3+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019514.P10224047116372289714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 3 + 1

end

end A019514.P10224047116372289714

noncomputable section

/-- A019514: a(n) = (n!)^3 + 1.

Offset 0, canonical program `A019514.P10224047116372289714`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^3+1` (program `A019514.P10224047116372289714`, by `A019514.P10224047116372289714.correct`). Lean does not check the parsing of the name. -/
def A019514 (n : ℕ) : ℤ :=
  (A019514.P10224047116372289714.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^3+1` (program `A019514.P10224047116372289714`, by `A019514.P10224047116372289714.correct`). Lean does not check the parsing of the name. -/
def A019514.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020514.P519319118444468730

`1^n+2^n+4^n+8^n+16^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020514.P519319118444468730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 ^ n + 2 ^ n + 4 ^ n + 8 ^ n + 16 ^ n

end

end A020514.P519319118444468730

noncomputable section

/-- A020514: a(n) = 1^n + 2^n + 4^n + 8^n + 16^n.

Offset 0, canonical program `A020514.P519319118444468730`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+4^n+8^n+16^n` (program `A020514.P519319118444468730`, by `A020514.P519319118444468730.correct`). Lean does not check the parsing of the name. -/
def A020514 (n : ℕ) : ℤ :=
  (A020514.P519319118444468730.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+2^n+4^n+8^n+16^n` (program `A020514.P519319118444468730`, by `A020514.P519319118444468730.correct`). Lean does not check the parsing of the name. -/
def A020514.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020515.P9986950794544563724

`4^n-2^n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020515.P9986950794544563724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (2 ^ n : ℤ) + 1

end

end A020515.P9986950794544563724

noncomputable section

/-- A020515: a(n) = 4^n - 2^n + 1.

Offset 0, canonical program `A020515.P9986950794544563724`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2^n+1` (program `A020515.P9986950794544563724`, by `A020515.P9986950794544563724.correct`). Lean does not check the parsing of the name. -/
def A020515 (n : ℕ) : ℤ :=
  A020515.P9986950794544563724.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2^n+1` (program `A020515.P9986950794544563724`, by `A020515.P9986950794544563724.correct`). Lean does not check the parsing of the name. -/
def A020515.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020522.P10227953348410881457

`4^n-2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020522.P10227953348410881457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (2 ^ n : ℤ)

end

end A020522.P10227953348410881457

noncomputable section

/-- A020522: a(n) = 4^n - 2^n.

Offset 0, canonical program `A020522.P10227953348410881457`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2^n` (program `A020522.P10227953348410881457`, by `A020522.P10227953348410881457.correct`). Lean does not check the parsing of the name. -/
def A020522 (n : ℕ) : ℤ :=
  A020522.P10227953348410881457.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2^n` (program `A020522.P10227953348410881457`, by `A020522.P10227953348410881457.correct`). Lean does not check the parsing of the name. -/
def A020522.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020530.P10262763273957748371

`8^n+2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020530.P10262763273957748371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n + 2 ^ (n + 1)

end

end A020530.P10262763273957748371

noncomputable section

/-- A020530: a(n) = 8^n + 2^(n+1).

Offset 0, canonical program `A020530.P10262763273957748371`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+2^(n+1)` (program `A020530.P10262763273957748371`, by `A020530.P10262763273957748371.correct`). Lean does not check the parsing of the name. -/
def A020530 (n : ℕ) : ℤ :=
  (A020530.P10262763273957748371.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n+2^(n+1)` (program `A020530.P10262763273957748371`, by `A020530.P10262763273957748371.correct`). Lean does not check the parsing of the name. -/
def A020530.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020537.P3829650220652913801

`4*8^n-3*2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020537.P3829650220652913801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 8 ^ n : ℤ) - (3 * 2 ^ n : ℤ)

end

end A020537.P3829650220652913801

noncomputable section

/-- A020537: a(n) = 4*8^n - 3*2^n.

Offset 0, canonical program `A020537.P3829650220652913801`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*8^n-3*2^n` (program `A020537.P3829650220652913801`, by `A020537.P3829650220652913801.correct`). Lean does not check the parsing of the name. -/
def A020537 (n : ℕ) : ℤ :=
  A020537.P3829650220652913801.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*8^n-3*2^n` (program `A020537.P3829650220652913801`, by `A020537.P3829650220652913801.correct`). Lean does not check the parsing of the name. -/
def A020537.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020540.P2284246446562575547

`8^(n+1)-2^(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020540.P2284246446562575547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ (n + 1) : ℤ) - (2 ^ (n + 2) : ℤ)

end

end A020540.P2284246446562575547

noncomputable section

/-- A020540: a(n) = 8^(n+1) - 2^(n+2).

Offset 0, canonical program `A020540.P2284246446562575547`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(n+1)-2^(n+2)` (program `A020540.P2284246446562575547`, by `A020540.P2284246446562575547.correct`). Lean does not check the parsing of the name. -/
def A020540 (n : ℕ) : ℤ :=
  A020540.P2284246446562575547.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(n+1)-2^(n+2)` (program `A020540.P2284246446562575547`, by `A020540.P2284246446562575547.correct`). Lean does not check the parsing of the name. -/
def A020540.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020549.P16028107715467819987

`n!²+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020549.P16028107715467819987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 2 + 1

end

end A020549.P16028107715467819987

noncomputable section

/-- A020549: a(n) = (n!)^2 + 1.

Offset 0, canonical program `A020549.P16028107715467819987`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+1` (program `A020549.P16028107715467819987`, by `A020549.P16028107715467819987.correct`). Lean does not check the parsing of the name. -/
def A020549 (n : ℕ) : ℤ :=
  (A020549.P16028107715467819987.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+1` (program `A020549.P16028107715467819987`, by `A020549.P16028107715467819987.correct`). Lean does not check the parsing of the name. -/
def A020549.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020698.P10314354358028169608

`5*a(n-1)-2*a(n-2)` with `a(0)=2, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020698.P10314354358028169608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2)

end

end A020698.P10314354358028169608

noncomputable section

/-- A020698: a(n) = 5*a(n-1) - 2*a(n-2), with a(0)=2, a(1)=9.

Offset 0, canonical program `A020698.P10314354358028169608`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2*a(n-2)` (program `A020698.P10314354358028169608`, by `A020698.P10314354358028169608.correct`). Lean does not check the parsing of the name. -/
def A020698 (n : ℕ) : ℤ :=
  A020698.P10314354358028169608.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)-2*a(n-2)` (program `A020698.P10314354358028169608`, by `A020698.P10314354358028169608.correct`). Lean does not check the parsing of the name. -/
def A020698.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020699.P17645551240165368470

`ogf((1-3x)/(1-5x))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020699.P17645551240165368470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -5] n

end

end A020699.P17645551240165368470

noncomputable section

/-- A020699: Expansion of (1-3*x)/(1-5*x).

Offset 0, canonical program `A020699.P17645551240165368470`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-5x))` (program `A020699.P17645551240165368470`, by `A020699.P17645551240165368470.correct`). Lean does not check the parsing of the name. -/
def A020699 (n : ℕ) : ℤ :=
  A020699.P17645551240165368470.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-5x))` (program `A020699.P17645551240165368470`, by `A020699.P17645551240165368470.correct`). Lean does not check the parsing of the name. -/
def A020699.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020702.P10212015119864039078

`ogf((1+x^10)/(1-x-x^2+x^4+x^7-x^9-x^10+x^11))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020702.P10212015119864039078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1] [1, -1, -1, 0, 1, 0, 0, 1, 0, -1, -1, 1] n

end

end A020702.P10212015119864039078

noncomputable section

/-- A020702: Expansion of (1+x^10)/((1-x)*(1-x^2)*(1-x^3)*(1-x^5)).

Offset 0, canonical program `A020702.P10212015119864039078`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^10)/(1-x-x^2+x^4+x^7-x^9-x^10+x^11))` (program `A020702.P10212015119864039078`, by `A020702.P10212015119864039078.correct`). Lean does not check the parsing of the name. -/
def A020702 (n : ℕ) : ℤ :=
  A020702.P10212015119864039078.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^10)/(1-x-x^2+x^4+x^7-x^9-x^10+x^11))` (program `A020702.P10212015119864039078`, by `A020702.P10212015119864039078.correct`). Lean does not check the parsing of the name. -/
def A020702.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020705.P1213730512334166827

`n+4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020705.P1213730512334166827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

end

end A020705.P1213730512334166827

noncomputable section

/-- A020705: a(n) = n + 4.

Offset 0, canonical program `A020705.P1213730512334166827`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+4` (program `A020705.P1213730512334166827`, by `A020705.P1213730512334166827.correct`). Lean does not check the parsing of the name. -/
def A020705 (n : ℕ) : ℤ :=
  (A020705.P1213730512334166827.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+4` (program `A020705.P1213730512334166827`, by `A020705.P1213730512334166827.correct`). Lean does not check the parsing of the name. -/
def A020705.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020710.P12161966585787702209

`n+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020710.P12161966585787702209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

end

end A020710.P12161966585787702209

noncomputable section

/-- A020710: a(n) = n + 5.

Offset 0, canonical program `A020710.P12161966585787702209`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+5` (program `A020710.P12161966585787702209`, by `A020710.P12161966585787702209.correct`). Lean does not check the parsing of the name. -/
def A020710 (n : ℕ) : ℤ :=
  (A020710.P12161966585787702209.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+5` (program `A020710.P12161966585787702209`, by `A020710.P12161966585787702209.correct`). Lean does not check the parsing of the name. -/
def A020710.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020714.P4672987561035728998

`5*2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020714.P4672987561035728998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 2 ^ n

end

end A020714.P4672987561035728998

noncomputable section

/-- A020714: a(n) = 5 * 2^n.

Offset 0, canonical program `A020714.P4672987561035728998`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n` (program `A020714.P4672987561035728998`, by `A020714.P4672987561035728998.correct`). Lean does not check the parsing of the name. -/
def A020714 (n : ℕ) : ℤ :=
  (A020714.P4672987561035728998.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n` (program `A020714.P4672987561035728998`, by `A020714.P4672987561035728998.correct`). Lean does not check the parsing of the name. -/
def A020714.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020715.P16829433482326866133

`n+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020715.P16829433482326866133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

end

end A020715.P16829433482326866133

noncomputable section

/-- A020715: a(n) = n + 6.

Offset 0, canonical program `A020715.P16829433482326866133`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+6` (program `A020715.P16829433482326866133`, by `A020715.P16829433482326866133.correct`). Lean does not check the parsing of the name. -/
def A020715 (n : ℕ) : ℤ :=
  (A020715.P16829433482326866133.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+6` (program `A020715.P16829433482326866133`, by `A020715.P16829433482326866133.correct`). Lean does not check the parsing of the name. -/
def A020715.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020719.P8384566430789263348

`n+7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020719.P8384566430789263348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

end

end A020719.P8384566430789263348

noncomputable section

/-- A020719: a(n) = n + 7.

Offset 0, canonical program `A020719.P8384566430789263348`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+7` (program `A020719.P8384566430789263348`, by `A020719.P8384566430789263348.correct`). Lean does not check the parsing of the name. -/
def A020719 (n : ℕ) : ℤ :=
  (A020719.P8384566430789263348.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+7` (program `A020719.P8384566430789263348`, by `A020719.P8384566430789263348.correct`). Lean does not check the parsing of the name. -/
def A020719.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020722.P14657161902176379145

`n+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020722.P14657161902176379145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

end

end A020722.P14657161902176379145

noncomputable section

/-- A020722: a(n) = n + 8.

Offset 0, canonical program `A020722.P14657161902176379145`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+8` (program `A020722.P14657161902176379145`, by `A020722.P14657161902176379145.correct`). Lean does not check the parsing of the name. -/
def A020722 (n : ℕ) : ℤ :=
  (A020722.P14657161902176379145.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+8` (program `A020722.P14657161902176379145`, by `A020722.P14657161902176379145.correct`). Lean does not check the parsing of the name. -/
def A020722.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020723.P8213579202739937003

`n+9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020723.P8213579202739937003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

end

end A020723.P8213579202739937003

noncomputable section

/-- A020723: a(n) = n + 9.

Offset 0, canonical program `A020723.P8213579202739937003`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+9` (program `A020723.P8213579202739937003`, by `A020723.P8213579202739937003.correct`). Lean does not check the parsing of the name. -/
def A020723 (n : ℕ) : ℤ :=
  (A020723.P8213579202739937003.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+9` (program `A020723.P8213579202739937003`, by `A020723.P8213579202739937003.correct`). Lean does not check the parsing of the name. -/
def A020723.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020725.P9662279067013051637

`n+2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020725.P9662279067013051637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

end

end A020725.P9662279067013051637

noncomputable section

/-- A020725: Integers >= 2. a(n) = n+1.

Offset 1, canonical program `A020725.P9662279067013051637`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2` (program `A020725.P9662279067013051637`, by `A020725.P9662279067013051637.correct`). Lean does not check the parsing of the name. -/
def A020725 (n : ℕ) : ℤ :=
  (A020725.P9662279067013051637.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2` (program `A020725.P9662279067013051637`, by `A020725.P9662279067013051637.correct`). Lean does not check the parsing of the name. -/
def A020725.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020728.P2388405646125877140

`floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020728.P2388405646125877140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020728.P2388405646125877140

noncomputable section

/-- A020728: Pisot sequence T(2,9), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020728.P2388405646125877140`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020728.P2388405646125877140`, by `A020728.P2388405646125877140.correct`). Lean does not check the parsing of the name. -/
def A020728 (n : ℕ) : ℤ :=
  A020728.P2388405646125877140.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020728.P2388405646125877140`, by `A020728.P2388405646125877140.correct`). Lean does not check the parsing of the name. -/
def A020728.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020739.P2210282862978748125

`2*n+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020739.P2210282862978748125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 6

end

end A020739.P2210282862978748125

noncomputable section

/-- A020739: a(n) = 2*n + 6.

Offset 0, canonical program `A020739.P2210282862978748125`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+6` (program `A020739.P2210282862978748125`, by `A020739.P2210282862978748125.correct`). Lean does not check the parsing of the name. -/
def A020739 (n : ℕ) : ℤ :=
  (A020739.P2210282862978748125.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+6` (program `A020739.P2210282862978748125`, by `A020739.P2210282862978748125.correct`). Lean does not check the parsing of the name. -/
def A020739.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020741.P7083773386000161267

`floor(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020741.P7083773386000161267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020741.P7083773386000161267

noncomputable section

/-- A020741: Pisot sequence T(6,10), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020741.P7083773386000161267`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020741.P7083773386000161267`, by `A020741.P7083773386000161267.correct`). Lean does not check the parsing of the name. -/
def A020741 (n : ℕ) : ℤ :=
  A020741.P7083773386000161267.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020741.P7083773386000161267`, by `A020741.P7083773386000161267.correct`). Lean does not check the parsing of the name. -/
def A020741.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020746.P3267636864207743615

`floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020746.P3267636864207743615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020746.P3267636864207743615

noncomputable section

/-- A020746: Pisot sequence T(3,7), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020746.P3267636864207743615`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020746.P3267636864207743615`, by `A020746.P3267636864207743615.correct`). Lean does not check the parsing of the name. -/
def A020746 (n : ℕ) : ℤ :=
  A020746.P3267636864207743615.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020746.P3267636864207743615`, by `A020746.P3267636864207743615.correct`). Lean does not check the parsing of the name. -/
def A020746.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020747.P13619479992395700009

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020747.P13619479992395700009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020747.P13619479992395700009

noncomputable section

/-- A020747: Pisot sequence T(4,6), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020747.P13619479992395700009`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020747.P13619479992395700009`, by `A020747.P13619479992395700009.correct`). Lean does not check the parsing of the name. -/
def A020747 (n : ℕ) : ℤ :=
  A020747.P13619479992395700009.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020747.P13619479992395700009`, by `A020747.P13619479992395700009.correct`). Lean does not check the parsing of the name. -/
def A020747.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020748.P17577383561434926385

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020748.P17577383561434926385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020748.P17577383561434926385

noncomputable section

/-- A020748: Pisot sequence T(4,10), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020748.P17577383561434926385`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020748.P17577383561434926385`, by `A020748.P17577383561434926385.correct`). Lean does not check the parsing of the name. -/
def A020748 (n : ℕ) : ℤ :=
  A020748.P17577383561434926385.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020748.P17577383561434926385`, by `A020748.P17577383561434926385.correct`). Lean does not check the parsing of the name. -/
def A020748.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020749.P15602634352803308487

`floor(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020749.P15602634352803308487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020749.P15602634352803308487

noncomputable section

/-- A020749: Pisot sequence T(5,8), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020749.P15602634352803308487`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020749.P15602634352803308487`, by `A020749.P15602634352803308487.correct`). Lean does not check the parsing of the name. -/
def A020749 (n : ℕ) : ℤ :=
  A020749.P15602634352803308487.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020749.P15602634352803308487`, by `A020749.P15602634352803308487.correct`). Lean does not check the parsing of the name. -/
def A020749.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020750.P12478890006466846672

`floor(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020750.P12478890006466846672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020750.P12478890006466846672

noncomputable section

/-- A020750: Pisot sequence T(5,9), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020750.P12478890006466846672`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020750.P12478890006466846672`, by `A020750.P12478890006466846672.correct`). Lean does not check the parsing of the name. -/
def A020750 (n : ℕ) : ℤ :=
  A020750.P12478890006466846672.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020750.P12478890006466846672`, by `A020750.P12478890006466846672.correct`). Lean does not check the parsing of the name. -/
def A020750.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020751.P11420457804151927364

`floor(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020751.P11420457804151927364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020751.P11420457804151927364

noncomputable section

/-- A020751: Pisot sequence T(6,9), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020751.P11420457804151927364`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020751.P11420457804151927364`, by `A020751.P11420457804151927364.correct`). Lean does not check the parsing of the name. -/
def A020751 (n : ℕ) : ℤ :=
  A020751.P11420457804151927364.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020751.P11420457804151927364`, by `A020751.P11420457804151927364.correct`). Lean does not check the parsing of the name. -/
def A020751.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020752.P1222112083137363267

`floor(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020752.P1222112083137363267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020752.P1222112083137363267

noncomputable section

/-- A020752: Pisot sequence T(7,10), a(n) = floor(a(n-1)^2/a(n-2)).

Offset 0, canonical program `A020752.P1222112083137363267`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020752.P1222112083137363267`, by `A020752.P1222112083137363267.correct`). Lean does not check the parsing of the name. -/
def A020752 (n : ℕ) : ℤ :=
  A020752.P1222112083137363267.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A020752.P1222112083137363267`, by `A020752.P1222112083137363267.correct`). Lean does not check the parsing of the name. -/
def A020752.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020992.P12214307085020414331

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=2, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020992.P12214307085020414331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3)

end

end A020992.P12214307085020414331

noncomputable section

/-- A020992: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = 0, a(1) = 2, a(2) = 1.

Offset 0, canonical program `A020992.P12214307085020414331`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A020992.P12214307085020414331`, by `A020992.P12214307085020414331.correct`). Lean does not check the parsing of the name. -/
def A020992 (n : ℕ) : ℤ :=
  (A020992.P12214307085020414331.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A020992.P12214307085020414331`, by `A020992.P12214307085020414331.correct`). Lean does not check the parsing of the name. -/
def A020992.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021014.P7829936620406155580

`a(n-1)+a(n-2)-a(n-4)+a(n-5)` with `a(0)=7, a(1)=11, a(2)=17, a(3)=26, a(4)=40`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A021014.P7829936620406155580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 11, 17, 26, 40] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) + a (n - 5)

end

end A021014.P7829936620406155580

noncomputable section

/-- A021014: a(n)=a(n-1)+a(n-2)-a(n-4)+a(n-5).

Offset 0, canonical program `A021014.P7829936620406155580`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-4)+a(n-5)` (program `A021014.P7829936620406155580`, by `A021014.P7829936620406155580.correct`). Lean does not check the parsing of the name. -/
def A021014 (n : ℕ) : ℤ :=
  A021014.P7829936620406155580.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-4)+a(n-5)` (program `A021014.P7829936620406155580`, by `A021014.P7829936620406155580.correct`). Lean does not check the parsing of the name. -/
def A021014.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021024.P4854971225598141455

`ogf(1/(1-11x+41x^2-61x^3+30x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A021024.P4854971225598141455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -11, 41, -61, 30] n

end

end A021024.P4854971225598141455

noncomputable section

/-- A021024: Expansion of g.f. 1/((1-x)*(1-2*x)*(1-3*x)*(1-5*x)).

Offset 0, canonical program `A021024.P4854971225598141455`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-11x+41x^2-61x^3+30x^4))` (program `A021024.P4854971225598141455`, by `A021024.P4854971225598141455.correct`). Lean does not check the parsing of the name. -/
def A021024 (n : ℕ) : ℤ :=
  A021024.P4854971225598141455.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-11x+41x^2-61x^3+30x^4))` (program `A021024.P4854971225598141455`, by `A021024.P4854971225598141455.correct`). Lean does not check the parsing of the name. -/
def A021024.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021029.P17291718932762861534

`ogf(1/(1-12x+47x^2-72x^3+36x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A021029.P17291718932762861534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 47, -72, 36] n

end

end A021029.P17291718932762861534

noncomputable section

/-- A021029: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-6*x)).

Offset 0, canonical program `A021029.P17291718932762861534`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-12x+47x^2-72x^3+36x^4))` (program `A021029.P17291718932762861534`, by `A021029.P17291718932762861534.correct`). Lean does not check the parsing of the name. -/
def A021029 (n : ℕ) : ℤ :=
  A021029.P17291718932762861534.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-12x+47x^2-72x^3+36x^4))` (program `A021029.P17291718932762861534`, by `A021029.P17291718932762861534.correct`). Lean does not check the parsing of the name. -/
def A021029.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021034.P13080570341910062862

`ogf(1/(1-13x+53x^2-83x^3+42x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A021034.P13080570341910062862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -13, 53, -83, 42] n

end

end A021034.P13080570341910062862

noncomputable section

/-- A021034: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-7*x)).

Offset 0, canonical program `A021034.P13080570341910062862`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-13x+53x^2-83x^3+42x^4))` (program `A021034.P13080570341910062862`, by `A021034.P13080570341910062862.correct`). Lean does not check the parsing of the name. -/
def A021034 (n : ℕ) : ℤ :=
  A021034.P13080570341910062862.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-13x+53x^2-83x^3+42x^4))` (program `A021034.P13080570341910062862`, by `A021034.P13080570341910062862.correct`). Lean does not check the parsing of the name. -/
def A021034.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021044.P7725288055420087983

`ogf(1/(1-14x+59x^2-94x^3+48x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A021044.P7725288055420087983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -14, 59, -94, 48] n

end

end A021044.P7725288055420087983

noncomputable section

/-- A021044: Expansion of g.f. 1/((1 - x)*(1 - 2*x)*(1 - 3*x)*(1 - 8*x)).

Offset 0, canonical program `A021044.P7725288055420087983`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-14x+59x^2-94x^3+48x^4))` (program `A021044.P7725288055420087983`, by `A021044.P7725288055420087983.correct`). Lean does not check the parsing of the name. -/
def A021044 (n : ℕ) : ℤ :=
  A021044.P7725288055420087983.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-14x+59x^2-94x^3+48x^4))` (program `A021044.P7725288055420087983`, by `A021044.P7725288055420087983.correct`). Lean does not check the parsing of the name. -/
def A021044.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021074.P7040385720536305455

`ogf(1/(1-12x+49x^2-78x^3+40x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A021074.P7040385720536305455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 49, -78, 40] n

end

end A021074.P7040385720536305455

noncomputable section

/-- A021074: Expansion of 1/((1-x)(1-2x)(1-4x)(1-5x)).

Offset 0, canonical program `A021074.P7040385720536305455`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-12x+49x^2-78x^3+40x^4))` (program `A021074.P7040385720536305455`, by `A021074.P7040385720536305455.correct`). Lean does not check the parsing of the name. -/
def A021074 (n : ℕ) : ℤ :=
  A021074.P7040385720536305455.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-12x+49x^2-78x^3+40x^4))` (program `A021074.P7040385720536305455`, by `A021074.P7040385720536305455.correct`). Lean does not check the parsing of the name. -/
def A021074.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021076.P3940765071836404375

`ogf(1/(1-13x+56x^2-92x^3+48x^4))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A021076.P3940765071836404375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -13, 56, -92, 48] n

end

end A021076.P3940765071836404375

noncomputable section

/-- A021076: Expansion of 1/((1-x)(1-2x)(1-4x)(1-6x)).

Offset 0, canonical program `A021076.P3940765071836404375`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-13x+56x^2-92x^3+48x^4))` (program `A021076.P3940765071836404375`, by `A021076.P3940765071836404375.correct`). Lean does not check the parsing of the name. -/
def A021076 (n : ℕ) : ℤ :=
  A021076.P3940765071836404375.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-13x+56x^2-92x^3+48x^4))` (program `A021076.P3940765071836404375`, by `A021076.P3940765071836404375.correct`). Lean does not check the parsing of the name. -/
def A021076.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022015.P2923771901867051745

`2*a(n-1)+3*a(n-2)+2*a(n-3)+3*a(n-4)` with `a(0)=2, a(1)=6, a(2)=19, a(3)=61`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022015.P2923771901867051745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 19, 61] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 2 * a (n - 3) + 3 * a (n - 4)

end

end A022015.P2923771901867051745

noncomputable section

/-- A022015: a(n)=2a(n-1)+3a(n-2)+2a(n-3)+3a(n-4).

Offset 0, canonical program `A022015.P2923771901867051745`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)+2*a(n-3)+3*a(n-4)` (program `A022015.P2923771901867051745`, by `A022015.P2923771901867051745.correct`). Lean does not check the parsing of the name. -/
def A022015 (n : ℕ) : ℤ :=
  (A022015.P2923771901867051745.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)+2*a(n-3)+3*a(n-4)` (program `A022015.P2923771901867051745`, by `A022015.P2923771901867051745.correct`). Lean does not check the parsing of the name. -/
def A022015.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022308.P3901341239502445022

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022308.P3901341239502445022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022308.P3901341239502445022

noncomputable section

/-- A022308: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=3.

Offset 0, canonical program `A022308.P3901341239502445022`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022308.P3901341239502445022`, by `A022308.P3901341239502445022.correct`). Lean does not check the parsing of the name. -/
def A022308 (n : ℕ) : ℤ :=
  (A022308.P3901341239502445022.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022308.P3901341239502445022`, by `A022308.P3901341239502445022.correct`). Lean does not check the parsing of the name. -/
def A022308.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022309.P16069793036239963023

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022309.P16069793036239963023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022309.P16069793036239963023

noncomputable section

/-- A022309: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=4.

Offset 0, canonical program `A022309.P16069793036239963023`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022309.P16069793036239963023`, by `A022309.P16069793036239963023.correct`). Lean does not check the parsing of the name. -/
def A022309 (n : ℕ) : ℤ :=
  (A022309.P16069793036239963023.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022309.P16069793036239963023`, by `A022309.P16069793036239963023.correct`). Lean does not check the parsing of the name. -/
def A022309.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022310.P13553319970620797841

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022310.P13553319970620797841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022310.P13553319970620797841

noncomputable section

/-- A022310: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=5.

Offset 0, canonical program `A022310.P13553319970620797841`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022310.P13553319970620797841`, by `A022310.P13553319970620797841.correct`). Lean does not check the parsing of the name. -/
def A022310 (n : ℕ) : ℤ :=
  (A022310.P13553319970620797841.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022310.P13553319970620797841`, by `A022310.P13553319970620797841.correct`). Lean does not check the parsing of the name. -/
def A022310.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022311.P4986877223740060268

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022311.P4986877223740060268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022311.P4986877223740060268

noncomputable section

/-- A022311: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=1.

Offset 0, canonical program `A022311.P4986877223740060268`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022311.P4986877223740060268`, by `A022311.P4986877223740060268.correct`). Lean does not check the parsing of the name. -/
def A022311 (n : ℕ) : ℤ :=
  (A022311.P4986877223740060268.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022311.P4986877223740060268`, by `A022311.P4986877223740060268.correct`). Lean does not check the parsing of the name. -/
def A022311.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022312.P1500921371825493792

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022312.P1500921371825493792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022312.P1500921371825493792

noncomputable section

/-- A022312: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=7.

Offset 0, canonical program `A022312.P1500921371825493792`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022312.P1500921371825493792`, by `A022312.P1500921371825493792.correct`). Lean does not check the parsing of the name. -/
def A022312 (n : ℕ) : ℤ :=
  (A022312.P1500921371825493792.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022312.P1500921371825493792`, by `A022312.P1500921371825493792.correct`). Lean does not check the parsing of the name. -/
def A022312.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022313.P12092447351323080129

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022313.P12092447351323080129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022313.P12092447351323080129

noncomputable section

/-- A022313: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 8.

Offset 0, canonical program `A022313.P12092447351323080129`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022313.P12092447351323080129`, by `A022313.P12092447351323080129.correct`). Lean does not check the parsing of the name. -/
def A022313 (n : ℕ) : ℤ :=
  (A022313.P12092447351323080129.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022313.P12092447351323080129`, by `A022313.P12092447351323080129.correct`). Lean does not check the parsing of the name. -/
def A022313.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022314.P8932687997811607329

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022314.P8932687997811607329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022314.P8932687997811607329

noncomputable section

/-- A022314: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0, a(1) = 9.

Offset 0, canonical program `A022314.P8932687997811607329`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022314.P8932687997811607329`, by `A022314.P8932687997811607329.correct`). Lean does not check the parsing of the name. -/
def A022314 (n : ℕ) : ℤ :=
  (A022314.P8932687997811607329.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022314.P8932687997811607329`, by `A022314.P8932687997811607329.correct`). Lean does not check the parsing of the name. -/
def A022314.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022315.P9896936764632029265

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022315.P9896936764632029265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022315.P9896936764632029265

noncomputable section

/-- A022315: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 10.

Offset 0, canonical program `A022315.P9896936764632029265`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022315.P9896936764632029265`, by `A022315.P9896936764632029265.correct`). Lean does not check the parsing of the name. -/
def A022315 (n : ℕ) : ℤ :=
  (A022315.P9896936764632029265.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022315.P9896936764632029265`, by `A022315.P9896936764632029265.correct`). Lean does not check the parsing of the name. -/
def A022315.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022316.P4271483872393700105

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022316.P4271483872393700105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022316.P4271483872393700105

noncomputable section

/-- A022316: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 11.

Offset 0, canonical program `A022316.P4271483872393700105`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022316.P4271483872393700105`, by `A022316.P4271483872393700105.correct`). Lean does not check the parsing of the name. -/
def A022316 (n : ℕ) : ℤ :=
  (A022316.P4271483872393700105.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022316.P4271483872393700105`, by `A022316.P4271483872393700105.correct`). Lean does not check the parsing of the name. -/
def A022316.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022317.P6413238066853371383

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022317.P6413238066853371383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022317.P6413238066853371383

noncomputable section

/-- A022317: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 12.

Offset 0, canonical program `A022317.P6413238066853371383`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022317.P6413238066853371383`, by `A022317.P6413238066853371383.correct`). Lean does not check the parsing of the name. -/
def A022317 (n : ℕ) : ℤ :=
  (A022317.P6413238066853371383.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022317.P6413238066853371383`, by `A022317.P6413238066853371383.correct`). Lean does not check the parsing of the name. -/
def A022317.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022318.P6062539651723230646

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022318.P6062539651723230646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022318.P6062539651723230646

noncomputable section

/-- A022318: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 4.

Offset 0, canonical program `A022318.P6062539651723230646`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022318.P6062539651723230646`, by `A022318.P6062539651723230646.correct`). Lean does not check the parsing of the name. -/
def A022318 (n : ℕ) : ℤ :=
  (A022318.P6062539651723230646.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022318.P6062539651723230646`, by `A022318.P6062539651723230646.correct`). Lean does not check the parsing of the name. -/
def A022318.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022319.P18148402883930728064

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022319.P18148402883930728064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022319.P18148402883930728064

noncomputable section

/-- A022319: a(n) = a(n-1) + a(n-2) + 1 for n > 1, a(0)=1, a(1)=5.

Offset 0, canonical program `A022319.P18148402883930728064`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022319.P18148402883930728064`, by `A022319.P18148402883930728064.correct`). Lean does not check the parsing of the name. -/
def A022319 (n : ℕ) : ℤ :=
  (A022319.P18148402883930728064.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022319.P18148402883930728064`, by `A022319.P18148402883930728064.correct`). Lean does not check the parsing of the name. -/
def A022319.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022320.P2754928452966867062

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022320.P2754928452966867062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022320.P2754928452966867062

noncomputable section

/-- A022320: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 6.

Offset 0, canonical program `A022320.P2754928452966867062`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022320.P2754928452966867062`, by `A022320.P2754928452966867062.correct`). Lean does not check the parsing of the name. -/
def A022320 (n : ℕ) : ℤ :=
  (A022320.P2754928452966867062.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022320.P2754928452966867062`, by `A022320.P2754928452966867062.correct`). Lean does not check the parsing of the name. -/
def A022320.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022321.P3224986903594311997

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022321.P3224986903594311997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022321.P3224986903594311997

noncomputable section

/-- A022321: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 7.

Offset 0, canonical program `A022321.P3224986903594311997`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022321.P3224986903594311997`, by `A022321.P3224986903594311997.correct`). Lean does not check the parsing of the name. -/
def A022321 (n : ℕ) : ℤ :=
  (A022321.P3224986903594311997.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022321.P3224986903594311997`, by `A022321.P3224986903594311997.correct`). Lean does not check the parsing of the name. -/
def A022321.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022322.P2432436242261697931

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022322.P2432436242261697931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022322.P2432436242261697931

noncomputable section

/-- A022322: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 8.

Offset 0, canonical program `A022322.P2432436242261697931`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022322.P2432436242261697931`, by `A022322.P2432436242261697931.correct`). Lean does not check the parsing of the name. -/
def A022322 (n : ℕ) : ℤ :=
  (A022322.P2432436242261697931.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022322.P2432436242261697931`, by `A022322.P2432436242261697931.correct`). Lean does not check the parsing of the name. -/
def A022322.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022323.P3020774008995765008

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022323.P3020774008995765008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022323.P3020774008995765008

noncomputable section

/-- A022323: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 9.

Offset 0, canonical program `A022323.P3020774008995765008`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022323.P3020774008995765008`, by `A022323.P3020774008995765008.correct`). Lean does not check the parsing of the name. -/
def A022323 (n : ℕ) : ℤ :=
  (A022323.P3020774008995765008.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022323.P3020774008995765008`, by `A022323.P3020774008995765008.correct`). Lean does not check the parsing of the name. -/
def A022323.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022324.P639653739763280728

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022324.P639653739763280728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022324.P639653739763280728

noncomputable section

/-- A022324: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 10.

Offset 0, canonical program `A022324.P639653739763280728`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022324.P639653739763280728`, by `A022324.P639653739763280728.correct`). Lean does not check the parsing of the name. -/
def A022324 (n : ℕ) : ℤ :=
  (A022324.P639653739763280728.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022324.P639653739763280728`, by `A022324.P639653739763280728.correct`). Lean does not check the parsing of the name. -/
def A022324.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022325.P10321987485812121805

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022325.P10321987485812121805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022325.P10321987485812121805

noncomputable section

/-- A022325: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 11.

Offset 0, canonical program `A022325.P10321987485812121805`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022325.P10321987485812121805`, by `A022325.P10321987485812121805.correct`). Lean does not check the parsing of the name. -/
def A022325 (n : ℕ) : ℤ :=
  (A022325.P10321987485812121805.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022325.P10321987485812121805`, by `A022325.P10321987485812121805.correct`). Lean does not check the parsing of the name. -/
def A022325.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022326.P8690091732479165083

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022326.P8690091732479165083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022326.P8690091732479165083

noncomputable section

/-- A022326: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 12.

Offset 0, canonical program `A022326.P8690091732479165083`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022326.P8690091732479165083`, by `A022326.P8690091732479165083.correct`). Lean does not check the parsing of the name. -/
def A022326 (n : ℕ) : ℤ :=
  (A022326.P8690091732479165083.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022326.P8690091732479165083`, by `A022326.P8690091732479165083.correct`). Lean does not check the parsing of the name. -/
def A022326.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022403.P9976567656786197575

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022403.P9976567656786197575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022403.P9976567656786197575

noncomputable section

/-- A022403: a(0)=a(1)=3; thereafter a(n) = a(n-1) + a(n-2) + 1.

Offset 0, canonical program `A022403.P9976567656786197575`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022403.P9976567656786197575`, by `A022403.P9976567656786197575.correct`). Lean does not check the parsing of the name. -/
def A022403 (n : ℕ) : ℤ :=
  (A022403.P9976567656786197575.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022403.P9976567656786197575`, by `A022403.P9976567656786197575.correct`). Lean does not check the parsing of the name. -/
def A022403.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022405.P14569938769363155526

`a(n-1)*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022405.P14569938769363155526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) * a (n - 2) - a (n - 3)

end

end A022405.P14569938769363155526

noncomputable section

/-- A022405: a(n) = a(n-1)*a(n-2) - a(n-3), with a(1) = 0, a(2) = 1, a(3) = 2.

Offset 1, canonical program `A022405.P14569938769363155526`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-a(n-3)` (program `A022405.P14569938769363155526`, by `A022405.P14569938769363155526.correct`). Lean does not check the parsing of the name. -/
def A022405 (n : ℕ) : ℤ :=
  A022405.P14569938769363155526.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-a(n-3)` (program `A022405.P14569938769363155526`, by `A022405.P14569938769363155526.correct`). Lean does not check the parsing of the name. -/
def A022405.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022406.P2105456868625626518

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022406.P2105456868625626518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022406.P2105456868625626518

noncomputable section

/-- A022406: a(0)=3, a(1)=7; thereafter a(n) = a(n-1) + a(n-2) + 1.

Offset 0, canonical program `A022406.P2105456868625626518`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022406.P2105456868625626518`, by `A022406.P2105456868625626518.correct`). Lean does not check the parsing of the name. -/
def A022406 (n : ℕ) : ℤ :=
  (A022406.P2105456868625626518.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022406.P2105456868625626518`, by `A022406.P2105456868625626518.correct`). Lean does not check the parsing of the name. -/
def A022406.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022407.P866170686072896612

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022407.P866170686072896612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022407.P866170686072896612

noncomputable section

/-- A022407: a(n) = a(n-1) + a(n-2) + 1, with a(0)=3, a(1)=8.

Offset 0, canonical program `A022407.P866170686072896612`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022407.P866170686072896612`, by `A022407.P866170686072896612.correct`). Lean does not check the parsing of the name. -/
def A022407 (n : ℕ) : ℤ :=
  (A022407.P866170686072896612.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022407.P866170686072896612`, by `A022407.P866170686072896612.correct`). Lean does not check the parsing of the name. -/
def A022407.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022408.P18395182556693668952

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022408.P18395182556693668952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022408.P18395182556693668952

noncomputable section

/-- A022408: a(n) = a(n-1) + a(n-2) + 1, with a(0)=3, a(1)=9.

Offset 0, canonical program `A022408.P18395182556693668952`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022408.P18395182556693668952`, by `A022408.P18395182556693668952.correct`). Lean does not check the parsing of the name. -/
def A022408 (n : ℕ) : ℤ :=
  (A022408.P18395182556693668952.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022408.P18395182556693668952`, by `A022408.P18395182556693668952.correct`). Lean does not check the parsing of the name. -/
def A022408.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022409.P5224055492790679979

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022409.P5224055492790679979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022409.P5224055492790679979

noncomputable section

/-- A022409: a(n) = a(n-1) + a(n-2) + 1, with a(0)=3, a(1)=10.

Offset 0, canonical program `A022409.P5224055492790679979`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022409.P5224055492790679979`, by `A022409.P5224055492790679979.correct`). Lean does not check the parsing of the name. -/
def A022409 (n : ℕ) : ℤ :=
  (A022409.P5224055492790679979.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022409.P5224055492790679979`, by `A022409.P5224055492790679979.correct`). Lean does not check the parsing of the name. -/
def A022409.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022410.P1272345190762470195

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022410.P1272345190762470195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022410.P1272345190762470195

noncomputable section

/-- A022410: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=3, a(1)=11.

Offset 0, canonical program `A022410.P1272345190762470195`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022410.P1272345190762470195`, by `A022410.P1272345190762470195.correct`). Lean does not check the parsing of the name. -/
def A022410 (n : ℕ) : ℤ :=
  (A022410.P1272345190762470195.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022410.P1272345190762470195`, by `A022410.P1272345190762470195.correct`). Lean does not check the parsing of the name. -/
def A022410.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022411.P11753458006192866545

`a(n-1)+a(n-2)+1` with `a(0)=3, a(1)=12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022411.P11753458006192866545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 12] fun n a =>
  a (n - 1) + a (n - 2) + 1

end

end A022411.P11753458006192866545

noncomputable section

/-- A022411: a(n) = a(n-1) + a(n-2) + 1, with a(0)=3, a(1)=12.

Offset 0, canonical program `A022411.P11753458006192866545`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022411.P11753458006192866545`, by `A022411.P11753458006192866545.correct`). Lean does not check the parsing of the name. -/
def A022411 (n : ℕ) : ℤ :=
  (A022411.P11753458006192866545.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022411.P11753458006192866545`, by `A022411.P11753458006192866545.correct`). Lean does not check the parsing of the name. -/
def A022411.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022521.P13355079520677844041

`(n+1)^5-n^5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022521.P13355079520677844041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℤ) - (n ^ 5 : ℤ)

end

end A022521.P13355079520677844041

noncomputable section

/-- A022521: a(n) = (n+1)^5 - n^5.

Offset 0, canonical program `A022521.P13355079520677844041`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^5-n^5` (program `A022521.P13355079520677844041`, by `A022521.P13355079520677844041.correct`). Lean does not check the parsing of the name. -/
def A022521 (n : ℕ) : ℤ :=
  A022521.P13355079520677844041.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^5-n^5` (program `A022521.P13355079520677844041`, by `A022521.P13355079520677844041.correct`). Lean does not check the parsing of the name. -/
def A022521.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022522.P16854360949907572851

`(n+1)^6-n^6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022522.P16854360949907572851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 : ℤ) - (n ^ 6 : ℤ)

end

end A022522.P16854360949907572851

noncomputable section

/-- A022522: Nexus numbers (n+1)^6 - n^6.

Offset 0, canonical program `A022522.P16854360949907572851`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^6-n^6` (program `A022522.P16854360949907572851`, by `A022522.P16854360949907572851.correct`). Lean does not check the parsing of the name. -/
def A022522 (n : ℕ) : ℤ :=
  A022522.P16854360949907572851.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^6-n^6` (program `A022522.P16854360949907572851`, by `A022522.P16854360949907572851.correct`). Lean does not check the parsing of the name. -/
def A022522.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022523.P11966938056709641489

`(n+1)^7-n^7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022523.P11966938056709641489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 7 : ℤ) - (n ^ 7 : ℤ)

end

end A022523.P11966938056709641489

noncomputable section

/-- A022523: Nexus numbers (n + 1)^7 - n^7.

Offset 0, canonical program `A022523.P11966938056709641489`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^7-n^7` (program `A022523.P11966938056709641489`, by `A022523.P11966938056709641489.correct`). Lean does not check the parsing of the name. -/
def A022523 (n : ℕ) : ℤ :=
  A022523.P11966938056709641489.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^7-n^7` (program `A022523.P11966938056709641489`, by `A022523.P11966938056709641489.correct`). Lean does not check the parsing of the name. -/
def A022523.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022524.P15595221110547193685

`(n+1)^8-n^8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022524.P15595221110547193685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 8 : ℤ) - (n ^ 8 : ℤ)

end

end A022524.P15595221110547193685

noncomputable section

/-- A022524: Nexus numbers (n+1)^8 - n^8.

Offset 0, canonical program `A022524.P15595221110547193685`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^8-n^8` (program `A022524.P15595221110547193685`, by `A022524.P15595221110547193685.correct`). Lean does not check the parsing of the name. -/
def A022524 (n : ℕ) : ℤ :=
  A022524.P15595221110547193685.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^8-n^8` (program `A022524.P15595221110547193685`, by `A022524.P15595221110547193685.correct`). Lean does not check the parsing of the name. -/
def A022524.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022525.P5997612634053303952

`(n+1)^9-n^9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022525.P5997612634053303952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 9 : ℤ) - (n ^ 9 : ℤ)

end

end A022525.P5997612634053303952

noncomputable section

/-- A022525: Nexus numbers (n+1)^9-n^9.

Offset 0, canonical program `A022525.P5997612634053303952`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^9-n^9` (program `A022525.P5997612634053303952`, by `A022525.P5997612634053303952.correct`). Lean does not check the parsing of the name. -/
def A022525 (n : ℕ) : ℤ :=
  A022525.P5997612634053303952.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^9-n^9` (program `A022525.P5997612634053303952`, by `A022525.P5997612634053303952.correct`). Lean does not check the parsing of the name. -/
def A022525.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022526.P1518772193900878853

`(n+1)^10-n^10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022526.P1518772193900878853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 10 : ℤ) - (n ^ 10 : ℤ)

end

end A022526.P1518772193900878853

noncomputable section

/-- A022526: Nexus numbers (n+1)^10-n^10.

Offset 0, canonical program `A022526.P1518772193900878853`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^10-n^10` (program `A022526.P1518772193900878853`, by `A022526.P1518772193900878853.correct`). Lean does not check the parsing of the name. -/
def A022526 (n : ℕ) : ℤ :=
  A022526.P1518772193900878853.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^10-n^10` (program `A022526.P1518772193900878853`, by `A022526.P1518772193900878853.correct`). Lean does not check the parsing of the name. -/
def A022526.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022527.P9583627414785900158

`(n+1)^11-n^11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022527.P9583627414785900158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 11 : ℤ) - (n ^ 11 : ℤ)

end

end A022527.P9583627414785900158

noncomputable section

/-- A022527: Nexus numbers: a(n) = (n+1)^11 - n^11.

Offset 0, canonical program `A022527.P9583627414785900158`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^11-n^11` (program `A022527.P9583627414785900158`, by `A022527.P9583627414785900158.correct`). Lean does not check the parsing of the name. -/
def A022527 (n : ℕ) : ℤ :=
  A022527.P9583627414785900158.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^11-n^11` (program `A022527.P9583627414785900158`, by `A022527.P9583627414785900158.correct`). Lean does not check the parsing of the name. -/
def A022527.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022528.P4461529081945797583

`(n+1)^12-n^12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022528.P4461529081945797583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 12 : ℤ) - (n ^ 12 : ℤ)

end

end A022528.P4461529081945797583

noncomputable section

/-- A022528: Nexus numbers (n+1)^12-n^12.

Offset 0, canonical program `A022528.P4461529081945797583`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^12-n^12` (program `A022528.P4461529081945797583`, by `A022528.P4461529081945797583.correct`). Lean does not check the parsing of the name. -/
def A022528 (n : ℕ) : ℤ :=
  A022528.P4461529081945797583.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^12-n^12` (program `A022528.P4461529081945797583`, by `A022528.P4461529081945797583.correct`). Lean does not check the parsing of the name. -/
def A022528.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022529.P10549321149274081095

`(n+1)^13-n^13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022529.P10549321149274081095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 13 : ℤ) - (n ^ 13 : ℤ)

end

end A022529.P10549321149274081095

noncomputable section

/-- A022529: Nexus numbers (n+1)^13-n^13.

Offset 0, canonical program `A022529.P10549321149274081095`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^13-n^13` (program `A022529.P10549321149274081095`, by `A022529.P10549321149274081095.correct`). Lean does not check the parsing of the name. -/
def A022529 (n : ℕ) : ℤ :=
  A022529.P10549321149274081095.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^13-n^13` (program `A022529.P10549321149274081095`, by `A022529.P10549321149274081095.correct`). Lean does not check the parsing of the name. -/
def A022529.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022530.P13217486023430926947

`(n+1)^14-n^14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022530.P13217486023430926947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 14 : ℤ) - (n ^ 14 : ℤ)

end

end A022530.P13217486023430926947

noncomputable section

/-- A022530: Nexus numbers (n+1)^14 - n^14.

Offset 0, canonical program `A022530.P13217486023430926947`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^14-n^14` (program `A022530.P13217486023430926947`, by `A022530.P13217486023430926947.correct`). Lean does not check the parsing of the name. -/
def A022530 (n : ℕ) : ℤ :=
  A022530.P13217486023430926947.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^14-n^14` (program `A022530.P13217486023430926947`, by `A022530.P13217486023430926947.correct`). Lean does not check the parsing of the name. -/
def A022530.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022531.P825161268953040184

`(n+1)^15-n^15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022531.P825161268953040184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 15 : ℤ) - (n ^ 15 : ℤ)

end

end A022531.P825161268953040184

noncomputable section

/-- A022531: Nexus numbers (n+1)^15 - n^15.

Offset 0, canonical program `A022531.P825161268953040184`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^15-n^15` (program `A022531.P825161268953040184`, by `A022531.P825161268953040184.correct`). Lean does not check the parsing of the name. -/
def A022531 (n : ℕ) : ℤ :=
  A022531.P825161268953040184.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^15-n^15` (program `A022531.P825161268953040184`, by `A022531.P825161268953040184.correct`). Lean does not check the parsing of the name. -/
def A022531.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022532.P9517477861749076244

`(n+1)^16-n^16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022532.P9517477861749076244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 16 : ℤ) - (n ^ 16 : ℤ)

end

end A022532.P9517477861749076244

noncomputable section

/-- A022532: Nexus numbers (n+1)^16-n^16.

Offset 0, canonical program `A022532.P9517477861749076244`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^16-n^16` (program `A022532.P9517477861749076244`, by `A022532.P9517477861749076244.correct`). Lean does not check the parsing of the name. -/
def A022532 (n : ℕ) : ℤ :=
  A022532.P9517477861749076244.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^16-n^16` (program `A022532.P9517477861749076244`, by `A022532.P9517477861749076244.correct`). Lean does not check the parsing of the name. -/
def A022532.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022533.P8027129521990764214

`(n+1)^17-n^17`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022533.P8027129521990764214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 17 : ℤ) - (n ^ 17 : ℤ)

end

end A022533.P8027129521990764214

noncomputable section

/-- A022533: Nexus numbers (n+1)^17 - n^17.

Offset 0, canonical program `A022533.P8027129521990764214`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^17-n^17` (program `A022533.P8027129521990764214`, by `A022533.P8027129521990764214.correct`). Lean does not check the parsing of the name. -/
def A022533 (n : ℕ) : ℤ :=
  A022533.P8027129521990764214.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^17-n^17` (program `A022533.P8027129521990764214`, by `A022533.P8027129521990764214.correct`). Lean does not check the parsing of the name. -/
def A022533.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022534.P5405851921227039614

`(n+1)^18-n^18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022534.P5405851921227039614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 18 : ℤ) - (n ^ 18 : ℤ)

end

end A022534.P5405851921227039614

noncomputable section

/-- A022534: Nexus numbers (n+1)^18 - n^18.

Offset 0, canonical program `A022534.P5405851921227039614`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^18-n^18` (program `A022534.P5405851921227039614`, by `A022534.P5405851921227039614.correct`). Lean does not check the parsing of the name. -/
def A022534 (n : ℕ) : ℤ :=
  A022534.P5405851921227039614.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^18-n^18` (program `A022534.P5405851921227039614`, by `A022534.P5405851921227039614.correct`). Lean does not check the parsing of the name. -/
def A022534.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022535.P4173703526108306890

`(n+1)^19-n^19`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022535.P4173703526108306890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 19 : ℤ) - (n ^ 19 : ℤ)

end

end A022535.P4173703526108306890

noncomputable section

/-- A022535: Nexus numbers (n+1)^19 - n^19.

Offset 0, canonical program `A022535.P4173703526108306890`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^19-n^19` (program `A022535.P4173703526108306890`, by `A022535.P4173703526108306890.correct`). Lean does not check the parsing of the name. -/
def A022535 (n : ℕ) : ℤ :=
  A022535.P4173703526108306890.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^19-n^19` (program `A022535.P4173703526108306890`, by `A022535.P4173703526108306890.correct`). Lean does not check the parsing of the name. -/
def A022535.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022536.P8227938143739572640

`(n+1)^20-n^20`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022536.P8227938143739572640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 20 : ℤ) - (n ^ 20 : ℤ)

end

end A022536.P8227938143739572640

noncomputable section

/-- A022536: Nexus numbers (n+1)^20 - n^20.

Offset 0, canonical program `A022536.P8227938143739572640`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^20-n^20` (program `A022536.P8227938143739572640`, by `A022536.P8227938143739572640.correct`). Lean does not check the parsing of the name. -/
def A022536 (n : ℕ) : ℤ :=
  A022536.P8227938143739572640.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^20-n^20` (program `A022536.P8227938143739572640`, by `A022536.P8227938143739572640.correct`). Lean does not check the parsing of the name. -/
def A022536.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022537.P8412497485381094574

`(n+1)^21-n^21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022537.P8412497485381094574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 21 : ℤ) - (n ^ 21 : ℤ)

end

end A022537.P8412497485381094574

noncomputable section

/-- A022537: Nexus numbers (n+1)^21 - n^21.

Offset 0, canonical program `A022537.P8412497485381094574`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^21-n^21` (program `A022537.P8412497485381094574`, by `A022537.P8412497485381094574.correct`). Lean does not check the parsing of the name. -/
def A022537 (n : ℕ) : ℤ :=
  A022537.P8412497485381094574.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^21-n^21` (program `A022537.P8412497485381094574`, by `A022537.P8412497485381094574.correct`). Lean does not check the parsing of the name. -/
def A022537.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022538.P18178718390867436209

`(n+1)^22-n^22`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022538.P18178718390867436209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 22 : ℤ) - (n ^ 22 : ℤ)

end

end A022538.P18178718390867436209

noncomputable section

/-- A022538: Nexus numbers (n+1)^22 - n^22.

Offset 0, canonical program `A022538.P18178718390867436209`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^22-n^22` (program `A022538.P18178718390867436209`, by `A022538.P18178718390867436209.correct`). Lean does not check the parsing of the name. -/
def A022538 (n : ℕ) : ℤ :=
  A022538.P18178718390867436209.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^22-n^22` (program `A022538.P18178718390867436209`, by `A022538.P18178718390867436209.correct`). Lean does not check the parsing of the name. -/
def A022538.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022958.P1044776346471009207

`2-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022958.P1044776346471009207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

end

end A022958.P1044776346471009207

noncomputable section

/-- A022958: a(n) = 2 - n.

Offset 0, canonical program `A022958.P1044776346471009207`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2-n` (program `A022958.P1044776346471009207`, by `A022958.P1044776346471009207.correct`). Lean does not check the parsing of the name. -/
def A022958 (n : ℕ) : ℤ :=
  A022958.P1044776346471009207.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2-n` (program `A022958.P1044776346471009207`, by `A022958.P1044776346471009207.correct`). Lean does not check the parsing of the name. -/
def A022958.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022959.P11065877920924967018

`3-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022959.P11065877920924967018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

end

end A022959.P11065877920924967018

noncomputable section

/-- A022959: a(n) = 3-n.

Offset 0, canonical program `A022959.P11065877920924967018`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3-n` (program `A022959.P11065877920924967018`, by `A022959.P11065877920924967018.correct`). Lean does not check the parsing of the name. -/
def A022959 (n : ℕ) : ℤ :=
  A022959.P11065877920924967018.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3-n` (program `A022959.P11065877920924967018`, by `A022959.P11065877920924967018.correct`). Lean does not check the parsing of the name. -/
def A022959.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022960.P7847487172736351835

`4-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022960.P7847487172736351835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (n : ℤ)

end

end A022960.P7847487172736351835

noncomputable section

/-- A022960: a(n) = 4-n.

Offset 0, canonical program `A022960.P7847487172736351835`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4-n` (program `A022960.P7847487172736351835`, by `A022960.P7847487172736351835.correct`). Lean does not check the parsing of the name. -/
def A022960 (n : ℕ) : ℤ :=
  A022960.P7847487172736351835.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4-n` (program `A022960.P7847487172736351835`, by `A022960.P7847487172736351835.correct`). Lean does not check the parsing of the name. -/
def A022960.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022961.P17065016578754778583

`5-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022961.P17065016578754778583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (n : ℤ)

end

end A022961.P17065016578754778583

noncomputable section

/-- A022961: a(n) = 5-n.

Offset 0, canonical program `A022961.P17065016578754778583`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5-n` (program `A022961.P17065016578754778583`, by `A022961.P17065016578754778583.correct`). Lean does not check the parsing of the name. -/
def A022961 (n : ℕ) : ℤ :=
  A022961.P17065016578754778583.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5-n` (program `A022961.P17065016578754778583`, by `A022961.P17065016578754778583.correct`). Lean does not check the parsing of the name. -/
def A022961.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022962.P4172630476285874916

`6-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022962.P4172630476285874916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (n : ℤ)

end

end A022962.P4172630476285874916

noncomputable section

/-- A022962: a(n) = 6-n.

Offset 0, canonical program `A022962.P4172630476285874916`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6-n` (program `A022962.P4172630476285874916`, by `A022962.P4172630476285874916.correct`). Lean does not check the parsing of the name. -/
def A022962 (n : ℕ) : ℤ :=
  A022962.P4172630476285874916.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6-n` (program `A022962.P4172630476285874916`, by `A022962.P4172630476285874916.correct`). Lean does not check the parsing of the name. -/
def A022962.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022963.P13387572160202953513

`7-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022963.P13387572160202953513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - (n : ℤ)

end

end A022963.P13387572160202953513

noncomputable section

/-- A022963: a(n) = 7-n.

Offset 0, canonical program `A022963.P13387572160202953513`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7-n` (program `A022963.P13387572160202953513`, by `A022963.P13387572160202953513.correct`). Lean does not check the parsing of the name. -/
def A022963 (n : ℕ) : ℤ :=
  A022963.P13387572160202953513.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7-n` (program `A022963.P13387572160202953513`, by `A022963.P13387572160202953513.correct`). Lean does not check the parsing of the name. -/
def A022963.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022964.P10926556689608304372

`8-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022964.P10926556689608304372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - (n : ℤ)

end

end A022964.P10926556689608304372

noncomputable section

/-- A022964: a(n) = 8-n.

Offset 0, canonical program `A022964.P10926556689608304372`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8-n` (program `A022964.P10926556689608304372`, by `A022964.P10926556689608304372.correct`). Lean does not check the parsing of the name. -/
def A022964 (n : ℕ) : ℤ :=
  A022964.P10926556689608304372.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8-n` (program `A022964.P10926556689608304372`, by `A022964.P10926556689608304372.correct`). Lean does not check the parsing of the name. -/
def A022964.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022965.P10341752570683700963

`9-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022965.P10341752570683700963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (n : ℤ)

end

end A022965.P10341752570683700963

noncomputable section

/-- A022965: a(n) = 9-n.

Offset 0, canonical program `A022965.P10341752570683700963`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9-n` (program `A022965.P10341752570683700963`, by `A022965.P10341752570683700963.correct`). Lean does not check the parsing of the name. -/
def A022965 (n : ℕ) : ℤ :=
  A022965.P10341752570683700963.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9-n` (program `A022965.P10341752570683700963`, by `A022965.P10341752570683700963.correct`). Lean does not check the parsing of the name. -/
def A022965.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022966.P4427188668348917034

`10-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022966.P4427188668348917034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - (n : ℤ)

end

end A022966.P4427188668348917034

noncomputable section

/-- A022966: a(n) = 10-n.

Offset 0, canonical program `A022966.P4427188668348917034`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10-n` (program `A022966.P4427188668348917034`, by `A022966.P4427188668348917034.correct`). Lean does not check the parsing of the name. -/
def A022966 (n : ℕ) : ℤ :=
  A022966.P4427188668348917034.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10-n` (program `A022966.P4427188668348917034`, by `A022966.P4427188668348917034.correct`). Lean does not check the parsing of the name. -/
def A022966.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022967.P103826889751989676

`11-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022967.P103826889751989676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - (n : ℤ)

end

end A022967.P103826889751989676

noncomputable section

/-- A022967: a(n) = 11-n.

Offset 0, canonical program `A022967.P103826889751989676`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11-n` (program `A022967.P103826889751989676`, by `A022967.P103826889751989676.correct`). Lean does not check the parsing of the name. -/
def A022967 (n : ℕ) : ℤ :=
  A022967.P103826889751989676.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11-n` (program `A022967.P103826889751989676`, by `A022967.P103826889751989676.correct`). Lean does not check the parsing of the name. -/
def A022967.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022968.P12481636955399392468

`12-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022968.P12481636955399392468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - (n : ℤ)

end

end A022968.P12481636955399392468

noncomputable section

/-- A022968: a(n) = 12-n.

Offset 0, canonical program `A022968.P12481636955399392468`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12-n` (program `A022968.P12481636955399392468`, by `A022968.P12481636955399392468.correct`). Lean does not check the parsing of the name. -/
def A022968 (n : ℕ) : ℤ :=
  A022968.P12481636955399392468.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12-n` (program `A022968.P12481636955399392468`, by `A022968.P12481636955399392468.correct`). Lean does not check the parsing of the name. -/
def A022968.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022969.P11976671692879548942

`13-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022969.P11976671692879548942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - (n : ℤ)

end

end A022969.P11976671692879548942

noncomputable section

/-- A022969: a(n) = 13-n.

Offset 0, canonical program `A022969.P11976671692879548942`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13-n` (program `A022969.P11976671692879548942`, by `A022969.P11976671692879548942.correct`). Lean does not check the parsing of the name. -/
def A022969 (n : ℕ) : ℤ :=
  A022969.P11976671692879548942.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13-n` (program `A022969.P11976671692879548942`, by `A022969.P11976671692879548942.correct`). Lean does not check the parsing of the name. -/
def A022969.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022970.P14686319457213141712

`14-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022970.P14686319457213141712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 - (n : ℤ)

end

end A022970.P14686319457213141712

noncomputable section

/-- A022970: a(n) = 14-n.

Offset 0, canonical program `A022970.P14686319457213141712`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14-n` (program `A022970.P14686319457213141712`, by `A022970.P14686319457213141712.correct`). Lean does not check the parsing of the name. -/
def A022970 (n : ℕ) : ℤ :=
  A022970.P14686319457213141712.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14-n` (program `A022970.P14686319457213141712`, by `A022970.P14686319457213141712.correct`). Lean does not check the parsing of the name. -/
def A022970.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022971.P312173633140377465

`15-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022971.P312173633140377465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 - (n : ℤ)

end

end A022971.P312173633140377465

noncomputable section

/-- A022971: a(n) = 15-n.

Offset 0, canonical program `A022971.P312173633140377465`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15-n` (program `A022971.P312173633140377465`, by `A022971.P312173633140377465.correct`). Lean does not check the parsing of the name. -/
def A022971 (n : ℕ) : ℤ :=
  A022971.P312173633140377465.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15-n` (program `A022971.P312173633140377465`, by `A022971.P312173633140377465.correct`). Lean does not check the parsing of the name. -/
def A022971.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022972.P17304298854066651627

`16-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022972.P17304298854066651627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 - (n : ℤ)

end

end A022972.P17304298854066651627

noncomputable section

/-- A022972: a(n) = 16-n.

Offset 0, canonical program `A022972.P17304298854066651627`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16-n` (program `A022972.P17304298854066651627`, by `A022972.P17304298854066651627.correct`). Lean does not check the parsing of the name. -/
def A022972 (n : ℕ) : ℤ :=
  A022972.P17304298854066651627.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16-n` (program `A022972.P17304298854066651627`, by `A022972.P17304298854066651627.correct`). Lean does not check the parsing of the name. -/
def A022972.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022973.P177688902324720155

`17-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022973.P177688902324720155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 - (n : ℤ)

end

end A022973.P177688902324720155

noncomputable section

/-- A022973: a(n) = 17-n.

Offset 0, canonical program `A022973.P177688902324720155`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17-n` (program `A022973.P177688902324720155`, by `A022973.P177688902324720155.correct`). Lean does not check the parsing of the name. -/
def A022973 (n : ℕ) : ℤ :=
  A022973.P177688902324720155.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17-n` (program `A022973.P177688902324720155`, by `A022973.P177688902324720155.correct`). Lean does not check the parsing of the name. -/
def A022973.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022974.P14645839109965910227

`18-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022974.P14645839109965910227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 - (n : ℤ)

end

end A022974.P14645839109965910227

noncomputable section

/-- A022974: a(n) = 18-n.

Offset 0, canonical program `A022974.P14645839109965910227`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18-n` (program `A022974.P14645839109965910227`, by `A022974.P14645839109965910227.correct`). Lean does not check the parsing of the name. -/
def A022974 (n : ℕ) : ℤ :=
  A022974.P14645839109965910227.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18-n` (program `A022974.P14645839109965910227`, by `A022974.P14645839109965910227.correct`). Lean does not check the parsing of the name. -/
def A022974.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022975.P12161615463166693099

`19-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022975.P12161615463166693099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 - (n : ℤ)

end

end A022975.P12161615463166693099

noncomputable section

/-- A022975: a(n) = 19 - n.

Offset 0, canonical program `A022975.P12161615463166693099`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19-n` (program `A022975.P12161615463166693099`, by `A022975.P12161615463166693099.correct`). Lean does not check the parsing of the name. -/
def A022975 (n : ℕ) : ℤ :=
  A022975.P12161615463166693099.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19-n` (program `A022975.P12161615463166693099`, by `A022975.P12161615463166693099.correct`). Lean does not check the parsing of the name. -/
def A022975.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022976.P2620393510104819087

`20-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022976.P2620393510104819087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - (n : ℤ)

end

end A022976.P2620393510104819087

noncomputable section

/-- A022976: a(n) = 20-n.

Offset 0, canonical program `A022976.P2620393510104819087`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20-n` (program `A022976.P2620393510104819087`, by `A022976.P2620393510104819087.correct`). Lean does not check the parsing of the name. -/
def A022976 (n : ℕ) : ℤ :=
  A022976.P2620393510104819087.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20-n` (program `A022976.P2620393510104819087`, by `A022976.P2620393510104819087.correct`). Lean does not check the parsing of the name. -/
def A022976.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022977.P2585556289305778050

`21-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022977.P2585556289305778050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 - (n : ℤ)

end

end A022977.P2585556289305778050

noncomputable section

/-- A022977: a(n) = 21-n.

Offset 0, canonical program `A022977.P2585556289305778050`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21-n` (program `A022977.P2585556289305778050`, by `A022977.P2585556289305778050.correct`). Lean does not check the parsing of the name. -/
def A022977 (n : ℕ) : ℤ :=
  A022977.P2585556289305778050.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21-n` (program `A022977.P2585556289305778050`, by `A022977.P2585556289305778050.correct`). Lean does not check the parsing of the name. -/
def A022977.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022978.P7798956966995509176

`22-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022978.P7798956966995509176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 - (n : ℤ)

end

end A022978.P7798956966995509176

noncomputable section

/-- A022978: a(n) = 22-n.

Offset 0, canonical program `A022978.P7798956966995509176`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22-n` (program `A022978.P7798956966995509176`, by `A022978.P7798956966995509176.correct`). Lean does not check the parsing of the name. -/
def A022978 (n : ℕ) : ℤ :=
  A022978.P7798956966995509176.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22-n` (program `A022978.P7798956966995509176`, by `A022978.P7798956966995509176.correct`). Lean does not check the parsing of the name. -/
def A022978.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022979.P15520270600372878675

`23-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022979.P15520270600372878675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 - (n : ℤ)

end

end A022979.P15520270600372878675

noncomputable section

/-- A022979: a(n) = 23-n.

Offset 0, canonical program `A022979.P15520270600372878675`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23-n` (program `A022979.P15520270600372878675`, by `A022979.P15520270600372878675.correct`). Lean does not check the parsing of the name. -/
def A022979 (n : ℕ) : ℤ :=
  A022979.P15520270600372878675.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23-n` (program `A022979.P15520270600372878675`, by `A022979.P15520270600372878675.correct`). Lean does not check the parsing of the name. -/
def A022979.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022980.P15382154699226623714

`24-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022980.P15382154699226623714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 - (n : ℤ)

end

end A022980.P15382154699226623714

noncomputable section

/-- A022980: a(n) = 24-n.

Offset 0, canonical program `A022980.P15382154699226623714`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24-n` (program `A022980.P15382154699226623714`, by `A022980.P15382154699226623714.correct`). Lean does not check the parsing of the name. -/
def A022980 (n : ℕ) : ℤ :=
  A022980.P15382154699226623714.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24-n` (program `A022980.P15382154699226623714`, by `A022980.P15382154699226623714.correct`). Lean does not check the parsing of the name. -/
def A022980.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022981.P17733187533992011680

`25-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022981.P17733187533992011680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 - (n : ℤ)

end

end A022981.P17733187533992011680

noncomputable section

/-- A022981: a(n) = 25-n.

Offset 0, canonical program `A022981.P17733187533992011680`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25-n` (program `A022981.P17733187533992011680`, by `A022981.P17733187533992011680.correct`). Lean does not check the parsing of the name. -/
def A022981 (n : ℕ) : ℤ :=
  A022981.P17733187533992011680.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25-n` (program `A022981.P17733187533992011680`, by `A022981.P17733187533992011680.correct`). Lean does not check the parsing of the name. -/
def A022981.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022982.P1531564633473124981

`26-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022982.P1531564633473124981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 - (n : ℤ)

end

end A022982.P1531564633473124981

noncomputable section

/-- A022982: a(n) = 26-n.

Offset 0, canonical program `A022982.P1531564633473124981`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26-n` (program `A022982.P1531564633473124981`, by `A022982.P1531564633473124981.correct`). Lean does not check the parsing of the name. -/
def A022982 (n : ℕ) : ℤ :=
  A022982.P1531564633473124981.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26-n` (program `A022982.P1531564633473124981`, by `A022982.P1531564633473124981.correct`). Lean does not check the parsing of the name. -/
def A022982.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022983.P15058296267657843813

`27-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022983.P15058296267657843813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 - (n : ℤ)

end

end A022983.P15058296267657843813

noncomputable section

/-- A022983: a(n) = 27 - n.

Offset 0, canonical program `A022983.P15058296267657843813`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27-n` (program `A022983.P15058296267657843813`, by `A022983.P15058296267657843813.correct`). Lean does not check the parsing of the name. -/
def A022983 (n : ℕ) : ℤ :=
  A022983.P15058296267657843813.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27-n` (program `A022983.P15058296267657843813`, by `A022983.P15058296267657843813.correct`). Lean does not check the parsing of the name. -/
def A022983.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022984.P17646649472400696378

`28-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022984.P17646649472400696378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 - (n : ℤ)

end

end A022984.P17646649472400696378

noncomputable section

/-- A022984: a(n) = 28-n.

Offset 0, canonical program `A022984.P17646649472400696378`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28-n` (program `A022984.P17646649472400696378`, by `A022984.P17646649472400696378.correct`). Lean does not check the parsing of the name. -/
def A022984 (n : ℕ) : ℤ :=
  A022984.P17646649472400696378.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `28-n` (program `A022984.P17646649472400696378`, by `A022984.P17646649472400696378.correct`). Lean does not check the parsing of the name. -/
def A022984.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022985.P609474672756334250

`29-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022985.P609474672756334250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  29 - (n : ℤ)

end

end A022985.P609474672756334250

noncomputable section

/-- A022985: a(n) = 29 - n.

Offset 0, canonical program `A022985.P609474672756334250`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `29-n` (program `A022985.P609474672756334250`, by `A022985.P609474672756334250.correct`). Lean does not check the parsing of the name. -/
def A022985 (n : ℕ) : ℤ :=
  A022985.P609474672756334250.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `29-n` (program `A022985.P609474672756334250`, by `A022985.P609474672756334250.correct`). Lean does not check the parsing of the name. -/
def A022985.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022986.P8007786646049885011

`30-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022986.P8007786646049885011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 - (n : ℤ)

end

end A022986.P8007786646049885011

noncomputable section

/-- A022986: a(n) = 30 - n.

Offset 0, canonical program `A022986.P8007786646049885011`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30-n` (program `A022986.P8007786646049885011`, by `A022986.P8007786646049885011.correct`). Lean does not check the parsing of the name. -/
def A022986 (n : ℕ) : ℤ :=
  A022986.P8007786646049885011.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30-n` (program `A022986.P8007786646049885011`, by `A022986.P8007786646049885011.correct`). Lean does not check the parsing of the name. -/
def A022986.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022987.P1163793926473358850

`31-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022987.P1163793926473358850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 - (n : ℤ)

end

end A022987.P1163793926473358850

noncomputable section

/-- A022987: a(n) = 31 - n.

Offset 0, canonical program `A022987.P1163793926473358850`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31-n` (program `A022987.P1163793926473358850`, by `A022987.P1163793926473358850.correct`). Lean does not check the parsing of the name. -/
def A022987 (n : ℕ) : ℤ :=
  A022987.P1163793926473358850.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `31-n` (program `A022987.P1163793926473358850`, by `A022987.P1163793926473358850.correct`). Lean does not check the parsing of the name. -/
def A022987.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022988.P17335558389887086909

`32-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022988.P17335558389887086909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 - (n : ℤ)

end

end A022988.P17335558389887086909

noncomputable section

/-- A022988: a(n) = 32 - n.

Offset 0, canonical program `A022988.P17335558389887086909`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32-n` (program `A022988.P17335558389887086909`, by `A022988.P17335558389887086909.correct`). Lean does not check the parsing of the name. -/
def A022988 (n : ℕ) : ℤ :=
  A022988.P17335558389887086909.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32-n` (program `A022988.P17335558389887086909`, by `A022988.P17335558389887086909.correct`). Lean does not check the parsing of the name. -/
def A022988.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022989.P12512196170675786554

`33-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022989.P12512196170675786554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  33 - (n : ℤ)

end

end A022989.P12512196170675786554

noncomputable section

/-- A022989: a(n) = 33-n.

Offset 0, canonical program `A022989.P12512196170675786554`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `33-n` (program `A022989.P12512196170675786554`, by `A022989.P12512196170675786554.correct`). Lean does not check the parsing of the name. -/
def A022989 (n : ℕ) : ℤ :=
  A022989.P12512196170675786554.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `33-n` (program `A022989.P12512196170675786554`, by `A022989.P12512196170675786554.correct`). Lean does not check the parsing of the name. -/
def A022989.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022990.P17459458215123580339

`34-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022990.P17459458215123580339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  34 - (n : ℤ)

end

end A022990.P17459458215123580339

noncomputable section

/-- A022990: a(n) = 34-n.

Offset 0, canonical program `A022990.P17459458215123580339`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `34-n` (program `A022990.P17459458215123580339`, by `A022990.P17459458215123580339.correct`). Lean does not check the parsing of the name. -/
def A022990 (n : ℕ) : ℤ :=
  A022990.P17459458215123580339.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `34-n` (program `A022990.P17459458215123580339`, by `A022990.P17459458215123580339.correct`). Lean does not check the parsing of the name. -/
def A022990.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022991.P11863100576752474424

`35-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022991.P11863100576752474424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 - (n : ℤ)

end

end A022991.P11863100576752474424

noncomputable section

/-- A022991: a(n) = 35-n.

Offset 0, canonical program `A022991.P11863100576752474424`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `35-n` (program `A022991.P11863100576752474424`, by `A022991.P11863100576752474424.correct`). Lean does not check the parsing of the name. -/
def A022991 (n : ℕ) : ℤ :=
  A022991.P11863100576752474424.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `35-n` (program `A022991.P11863100576752474424`, by `A022991.P11863100576752474424.correct`). Lean does not check the parsing of the name. -/
def A022991.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022992.P15571307519045723919

`36-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022992.P15571307519045723919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 - (n : ℤ)

end

end A022992.P15571307519045723919

noncomputable section

/-- A022992: a(n) = 36-n.

Offset 0, canonical program `A022992.P15571307519045723919`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36-n` (program `A022992.P15571307519045723919`, by `A022992.P15571307519045723919.correct`). Lean does not check the parsing of the name. -/
def A022992 (n : ℕ) : ℤ :=
  A022992.P15571307519045723919.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36-n` (program `A022992.P15571307519045723919`, by `A022992.P15571307519045723919.correct`). Lean does not check the parsing of the name. -/
def A022992.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022993.P158035326040483607

`37-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022993.P158035326040483607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 - (n : ℤ)

end

end A022993.P158035326040483607

noncomputable section

/-- A022993: a(n) = 37 - n.

Offset 0, canonical program `A022993.P158035326040483607`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `37-n` (program `A022993.P158035326040483607`, by `A022993.P158035326040483607.correct`). Lean does not check the parsing of the name. -/
def A022993 (n : ℕ) : ℤ :=
  A022993.P158035326040483607.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `37-n` (program `A022993.P158035326040483607`, by `A022993.P158035326040483607.correct`). Lean does not check the parsing of the name. -/
def A022993.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022994.P3454668366728232382

`38-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022994.P3454668366728232382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  38 - (n : ℤ)

end

end A022994.P3454668366728232382

noncomputable section

/-- A022994: a(n) = 38 - n.

Offset 0, canonical program `A022994.P3454668366728232382`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `38-n` (program `A022994.P3454668366728232382`, by `A022994.P3454668366728232382.correct`). Lean does not check the parsing of the name. -/
def A022994 (n : ℕ) : ℤ :=
  A022994.P3454668366728232382.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `38-n` (program `A022994.P3454668366728232382`, by `A022994.P3454668366728232382.correct`). Lean does not check the parsing of the name. -/
def A022994.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022995.P11361645364339375436

`39-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022995.P11361645364339375436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  39 - (n : ℤ)

end

end A022995.P11361645364339375436

noncomputable section

/-- A022995: a(n) = 39 - n.

Offset 0, canonical program `A022995.P11361645364339375436`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `39-n` (program `A022995.P11361645364339375436`, by `A022995.P11361645364339375436.correct`). Lean does not check the parsing of the name. -/
def A022995 (n : ℕ) : ℤ :=
  A022995.P11361645364339375436.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `39-n` (program `A022995.P11361645364339375436`, by `A022995.P11361645364339375436.correct`). Lean does not check the parsing of the name. -/
def A022995.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022996.P10288891930018905135

`40-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022996.P10288891930018905135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 - (n : ℤ)

end

end A022996.P10288891930018905135

noncomputable section

/-- A022996: a(n) = 40-n.

Offset 0, canonical program `A022996.P10288891930018905135`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40-n` (program `A022996.P10288891930018905135`, by `A022996.P10288891930018905135.correct`). Lean does not check the parsing of the name. -/
def A022996 (n : ℕ) : ℤ :=
  A022996.P10288891930018905135.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40-n` (program `A022996.P10288891930018905135`, by `A022996.P10288891930018905135.correct`). Lean does not check the parsing of the name. -/
def A022996.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023038.P17061182639878964216

`12*a(n-1)-a(n-2)` with `a(0)=1, a(1)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023038.P17061182639878964216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  12 * a (n - 1) - a (n - 2)

end

end A023038.P17061182639878964216

noncomputable section

/-- A023038: a(n) = 12*a(n-1) - a(n-2).

Offset 0, canonical program `A023038.P17061182639878964216`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-a(n-2)` (program `A023038.P17061182639878964216`, by `A023038.P17061182639878964216.correct`). Lean does not check the parsing of the name. -/
def A023038 (n : ℕ) : ℤ :=
  A023038.P17061182639878964216.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-a(n-2)` (program `A023038.P17061182639878964216`, by `A023038.P17061182639878964216.correct`). Lean does not check the parsing of the name. -/
def A023038.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023039.P14731286994540858419

`18*a(n-1)-a(n-2)` with `a(0)=1, a(1)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023039.P14731286994540858419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  18 * a (n - 1) - a (n - 2)

end

end A023039.P14731286994540858419

noncomputable section

/-- A023039: a(n) = 18*a(n-1) - a(n-2), with a(0) = 1 and a(1) = 9.

Offset 0, canonical program `A023039.P14731286994540858419`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-a(n-2)` (program `A023039.P14731286994540858419`, by `A023039.P14731286994540858419.correct`). Lean does not check the parsing of the name. -/
def A023039 (n : ℕ) : ℤ :=
  A023039.P14731286994540858419.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-a(n-2)` (program `A023039.P14731286994540858419`, by `A023039.P14731286994540858419.correct`). Lean does not check the parsing of the name. -/
def A023039.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023424.P3701380126245831961

`ogf((1+2x+3x^2+4x^3+5x^4)/(1-x-x^2-x^3-x^4-x^5))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023424.P3701380126245831961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 4, 5] [1, -1, -1, -1, -1, -1] n

end

end A023424.P3701380126245831961

noncomputable section

/-- A023424: Expansion of (1+2*x+3*x^2+4*x^3+5*x^4)/(1-x-x^2-x^3-x^4-x^5).

Offset 0, canonical program `A023424.P3701380126245831961`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+4x^3+5x^4)/(1-x-x^2-x^3-x^4-x^5))` (program `A023424.P3701380126245831961`, by `A023424.P3701380126245831961.correct`). Lean does not check the parsing of the name. -/
def A023424 (n : ℕ) : ℤ :=
  A023424.P3701380126245831961.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+4x^3+5x^4)/(1-x-x^2-x^3-x^4-x^5))` (program `A023424.P3701380126245831961`, by `A023424.P3701380126245831961.correct`). Lean does not check the parsing of the name. -/
def A023424.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023434.P18426791889283594592

`a(n-1)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023434.P18426791889283594592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4)

end

end A023434.P18426791889283594592

noncomputable section

/-- A023434: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-4).

Offset 0, canonical program `A023434.P18426791889283594592`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-4)` (program `A023434.P18426791889283594592`, by `A023434.P18426791889283594592.correct`). Lean does not check the parsing of the name. -/
def A023434 (n : ℕ) : ℤ :=
  A023434.P18426791889283594592.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-4)` (program `A023434.P18426791889283594592`, by `A023434.P18426791889283594592.correct`). Lean does not check the parsing of the name. -/
def A023434.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023435.P4887292357183999623

`a(n-1)+a(n-2)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023435.P4887292357183999623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 5)

end

end A023435.P4887292357183999623

noncomputable section

/-- A023435: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-5).

Offset 0, canonical program `A023435.P4887292357183999623`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-5)` (program `A023435.P4887292357183999623`, by `A023435.P4887292357183999623.correct`). Lean does not check the parsing of the name. -/
def A023435 (n : ℕ) : ℤ :=
  A023435.P4887292357183999623.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-5)` (program `A023435.P4887292357183999623`, by `A023435.P4887292357183999623.correct`). Lean does not check the parsing of the name. -/
def A023435.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023436.P10401392782001071075

`a(n-1)+a(n-2)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023436.P10401392782001071075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3, 5] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 6)

end

end A023436.P10401392782001071075

noncomputable section

/-- A023436: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-6).

Offset 0, canonical program `A023436.P10401392782001071075`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-6)` (program `A023436.P10401392782001071075`, by `A023436.P10401392782001071075.correct`). Lean does not check the parsing of the name. -/
def A023436 (n : ℕ) : ℤ :=
  A023436.P10401392782001071075.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-6)` (program `A023436.P10401392782001071075`, by `A023436.P10401392782001071075.correct`). Lean does not check the parsing of the name. -/
def A023436.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023437.P4556688272748515696

`a(n-1)+a(n-2)-a(n-7)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023437.P4556688272748515696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3, 5, 8] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 7)

end

end A023437.P4556688272748515696

noncomputable section

/-- A023437: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-7).

Offset 0, canonical program `A023437.P4556688272748515696`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-7)` (program `A023437.P4556688272748515696`, by `A023437.P4556688272748515696.correct`). Lean does not check the parsing of the name. -/
def A023437 (n : ℕ) : ℤ :=
  A023437.P4556688272748515696.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-7)` (program `A023437.P4556688272748515696`, by `A023437.P4556688272748515696.correct`). Lean does not check the parsing of the name. -/
def A023437.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023438.P12004482492767892343

`a(n-1)+a(n-2)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023438.P12004482492767892343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3, 5, 8, 13] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 8)

end

end A023438.P12004482492767892343

noncomputable section

/-- A023438: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-8).

Offset 0, canonical program `A023438.P12004482492767892343`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-8)` (program `A023438.P12004482492767892343`, by `A023438.P12004482492767892343.correct`). Lean does not check the parsing of the name. -/
def A023438 (n : ℕ) : ℤ :=
  A023438.P12004482492767892343.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-8)` (program `A023438.P12004482492767892343`, by `A023438.P12004482492767892343.correct`). Lean does not check the parsing of the name. -/
def A023438.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023439.P17073879449613270126

`a(n-1)+a(n-2)-a(n-9)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=13, a(8)=21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023439.P17073879449613270126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3, 5, 8, 13, 21] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 9)

end

end A023439.P17073879449613270126

noncomputable section

/-- A023439: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-9).

Offset 0, canonical program `A023439.P17073879449613270126`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-9)` (program `A023439.P17073879449613270126`, by `A023439.P17073879449613270126.correct`). Lean does not check the parsing of the name. -/
def A023439 (n : ℕ) : ℤ :=
  A023439.P17073879449613270126.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-9)` (program `A023439.P17073879449613270126`, by `A023439.P17073879449613270126.correct`). Lean does not check the parsing of the name. -/
def A023439.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023440.P7238407367384374586

`a(n-1)+a(n-2)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8, a(7)=13, a(8)=21, a(9)=34`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023440.P7238407367384374586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 10)

end

end A023440.P7238407367384374586

noncomputable section

/-- A023440: Dying rabbits: a(n) = a(n-1) + a(n-2) - a(n-10).

Offset 0, canonical program `A023440.P7238407367384374586`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-10)` (program `A023440.P7238407367384374586`, by `A023440.P7238407367384374586.correct`). Lean does not check the parsing of the name. -/
def A023440 (n : ℕ) : ℤ :=
  A023440.P7238407367384374586.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-10)` (program `A023440.P7238407367384374586`, by `A023440.P7238407367384374586.correct`). Lean does not check the parsing of the name. -/
def A023440.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023443.P2966051066474347068

`n-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023443.P2966051066474347068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

end

end A023443.P2966051066474347068

noncomputable section

/-- A023443: a(n) = n - 1.

Offset 0, canonical program `A023443.P2966051066474347068`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-1` (program `A023443.P2966051066474347068`, by `A023443.P2966051066474347068.correct`). Lean does not check the parsing of the name. -/
def A023443 (n : ℕ) : ℤ :=
  A023443.P2966051066474347068.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-1` (program `A023443.P2966051066474347068`, by `A023443.P2966051066474347068.correct`). Lean does not check the parsing of the name. -/
def A023443.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023444.P8712163668128210297

`n-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023444.P8712163668128210297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

end

end A023444.P8712163668128210297

noncomputable section

/-- A023444: a(n) = n-2.

Offset 0, canonical program `A023444.P8712163668128210297`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-2` (program `A023444.P8712163668128210297`, by `A023444.P8712163668128210297.correct`). Lean does not check the parsing of the name. -/
def A023444 (n : ℕ) : ℤ :=
  A023444.P8712163668128210297.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-2` (program `A023444.P8712163668128210297`, by `A023444.P8712163668128210297.correct`). Lean does not check the parsing of the name. -/
def A023444.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023445.P17030645253662401943

`n-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023445.P17030645253662401943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

end

end A023445.P17030645253662401943

noncomputable section

/-- A023445: a(n) = n-3.

Offset 0, canonical program `A023445.P17030645253662401943`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-3` (program `A023445.P17030645253662401943`, by `A023445.P17030645253662401943.correct`). Lean does not check the parsing of the name. -/
def A023445 (n : ℕ) : ℤ :=
  A023445.P17030645253662401943.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-3` (program `A023445.P17030645253662401943`, by `A023445.P17030645253662401943.correct`). Lean does not check the parsing of the name. -/
def A023445.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023446.P16124919383851026186

`n-4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023446.P16124919383851026186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4

end

end A023446.P16124919383851026186

noncomputable section

/-- A023446: a(n) = n-4.

Offset 0, canonical program `A023446.P16124919383851026186`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-4` (program `A023446.P16124919383851026186`, by `A023446.P16124919383851026186.correct`). Lean does not check the parsing of the name. -/
def A023446 (n : ℕ) : ℤ :=
  A023446.P16124919383851026186.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-4` (program `A023446.P16124919383851026186`, by `A023446.P16124919383851026186.correct`). Lean does not check the parsing of the name. -/
def A023446.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023447.P1511845102663344607

`n-5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023447.P1511845102663344607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

end

end A023447.P1511845102663344607

noncomputable section

/-- A023447: a(n) = n-5.

Offset 0, canonical program `A023447.P1511845102663344607`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-5` (program `A023447.P1511845102663344607`, by `A023447.P1511845102663344607.correct`). Lean does not check the parsing of the name. -/
def A023447 (n : ℕ) : ℤ :=
  A023447.P1511845102663344607.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-5` (program `A023447.P1511845102663344607`, by `A023447.P1511845102663344607.correct`). Lean does not check the parsing of the name. -/
def A023447.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023448.P4394137644875426517

`n-6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023448.P4394137644875426517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6

end

end A023448.P4394137644875426517

noncomputable section

/-- A023448: a(n) = n-6.

Offset 0, canonical program `A023448.P4394137644875426517`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-6` (program `A023448.P4394137644875426517`, by `A023448.P4394137644875426517.correct`). Lean does not check the parsing of the name. -/
def A023448 (n : ℕ) : ℤ :=
  A023448.P4394137644875426517.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-6` (program `A023448.P4394137644875426517`, by `A023448.P4394137644875426517.correct`). Lean does not check the parsing of the name. -/
def A023448.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023449.P632329531483881473

`n-7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023449.P632329531483881473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 7

end

end A023449.P632329531483881473

noncomputable section

/-- A023449: a(n) = n-7.

Offset 0, canonical program `A023449.P632329531483881473`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-7` (program `A023449.P632329531483881473`, by `A023449.P632329531483881473.correct`). Lean does not check the parsing of the name. -/
def A023449 (n : ℕ) : ℤ :=
  A023449.P632329531483881473.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-7` (program `A023449.P632329531483881473`, by `A023449.P632329531483881473.correct`). Lean does not check the parsing of the name. -/
def A023449.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023450.P2225491518700593129

`n-8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023450.P2225491518700593129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 8

end

end A023450.P2225491518700593129

noncomputable section

/-- A023450: a(n) = n-8.

Offset 0, canonical program `A023450.P2225491518700593129`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-8` (program `A023450.P2225491518700593129`, by `A023450.P2225491518700593129.correct`). Lean does not check the parsing of the name. -/
def A023450 (n : ℕ) : ℤ :=
  A023450.P2225491518700593129.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-8` (program `A023450.P2225491518700593129`, by `A023450.P2225491518700593129.correct`). Lean does not check the parsing of the name. -/
def A023450.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023451.P10918551651332973129

`n-9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023451.P10918551651332973129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9

end

end A023451.P10918551651332973129

noncomputable section

/-- A023451: a(n) = n-9.

Offset 0, canonical program `A023451.P10918551651332973129`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-9` (program `A023451.P10918551651332973129`, by `A023451.P10918551651332973129.correct`). Lean does not check the parsing of the name. -/
def A023451 (n : ℕ) : ℤ :=
  A023451.P10918551651332973129.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-9` (program `A023451.P10918551651332973129`, by `A023451.P10918551651332973129.correct`). Lean does not check the parsing of the name. -/
def A023451.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023452.P3824057514643465905

`n-10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023452.P3824057514643465905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 10

end

end A023452.P3824057514643465905

noncomputable section

/-- A023452: a(n) = n-10.

Offset 0, canonical program `A023452.P3824057514643465905`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-10` (program `A023452.P3824057514643465905`, by `A023452.P3824057514643465905.correct`). Lean does not check the parsing of the name. -/
def A023452 (n : ℕ) : ℤ :=
  A023452.P3824057514643465905.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-10` (program `A023452.P3824057514643465905`, by `A023452.P3824057514643465905.correct`). Lean does not check the parsing of the name. -/
def A023452.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023453.P6399622911449397509

`n-11`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023453.P6399622911449397509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 11

end

end A023453.P6399622911449397509

noncomputable section

/-- A023453: a(n) = n-11.

Offset 0, canonical program `A023453.P6399622911449397509`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-11` (program `A023453.P6399622911449397509`, by `A023453.P6399622911449397509.correct`). Lean does not check the parsing of the name. -/
def A023453 (n : ℕ) : ℤ :=
  A023453.P6399622911449397509.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-11` (program `A023453.P6399622911449397509`, by `A023453.P6399622911449397509.correct`). Lean does not check the parsing of the name. -/
def A023453.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023454.P17847968958104591799

`n-12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023454.P17847968958104591799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 12

end

end A023454.P17847968958104591799

noncomputable section

/-- A023454: a(n) = n - 12.

Offset 0, canonical program `A023454.P17847968958104591799`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-12` (program `A023454.P17847968958104591799`, by `A023454.P17847968958104591799.correct`). Lean does not check the parsing of the name. -/
def A023454 (n : ℕ) : ℤ :=
  A023454.P17847968958104591799.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-12` (program `A023454.P17847968958104591799`, by `A023454.P17847968958104591799.correct`). Lean does not check the parsing of the name. -/
def A023454.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023455.P8476404562613874856

`n-13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023455.P8476404562613874856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 13

end

end A023455.P8476404562613874856

noncomputable section

/-- A023455: a(n) = n - 13.

Offset 0, canonical program `A023455.P8476404562613874856`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-13` (program `A023455.P8476404562613874856`, by `A023455.P8476404562613874856.correct`). Lean does not check the parsing of the name. -/
def A023455 (n : ℕ) : ℤ :=
  A023455.P8476404562613874856.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-13` (program `A023455.P8476404562613874856`, by `A023455.P8476404562613874856.correct`). Lean does not check the parsing of the name. -/
def A023455.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023456.P222171751024684870

`n-14`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023456.P222171751024684870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 14

end

end A023456.P222171751024684870

noncomputable section

/-- A023456: a(n) = n - 14.

Offset 0, canonical program `A023456.P222171751024684870`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-14` (program `A023456.P222171751024684870`, by `A023456.P222171751024684870.correct`). Lean does not check the parsing of the name. -/
def A023456 (n : ℕ) : ℤ :=
  A023456.P222171751024684870.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-14` (program `A023456.P222171751024684870`, by `A023456.P222171751024684870.correct`). Lean does not check the parsing of the name. -/
def A023456.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023457.P863186941795494776

`n-15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023457.P863186941795494776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 15

end

end A023457.P863186941795494776

noncomputable section

/-- A023457: a(n) = n-15.

Offset 0, canonical program `A023457.P863186941795494776`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-15` (program `A023457.P863186941795494776`, by `A023457.P863186941795494776.correct`). Lean does not check the parsing of the name. -/
def A023457 (n : ℕ) : ℤ :=
  A023457.P863186941795494776.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-15` (program `A023457.P863186941795494776`, by `A023457.P863186941795494776.correct`). Lean does not check the parsing of the name. -/
def A023457.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023458.P2390337497007185691

`n-16`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023458.P2390337497007185691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 16

end

end A023458.P2390337497007185691

noncomputable section

/-- A023458: a(n) = n-16.

Offset 0, canonical program `A023458.P2390337497007185691`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-16` (program `A023458.P2390337497007185691`, by `A023458.P2390337497007185691.correct`). Lean does not check the parsing of the name. -/
def A023458 (n : ℕ) : ℤ :=
  A023458.P2390337497007185691.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-16` (program `A023458.P2390337497007185691`, by `A023458.P2390337497007185691.correct`). Lean does not check the parsing of the name. -/
def A023458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023459.P3467275396401403854

`n-17`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023459.P3467275396401403854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 17

end

end A023459.P3467275396401403854

noncomputable section

/-- A023459: a(n) = n-17.

Offset 0, canonical program `A023459.P3467275396401403854`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-17` (program `A023459.P3467275396401403854`, by `A023459.P3467275396401403854.correct`). Lean does not check the parsing of the name. -/
def A023459 (n : ℕ) : ℤ :=
  A023459.P3467275396401403854.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-17` (program `A023459.P3467275396401403854`, by `A023459.P3467275396401403854.correct`). Lean does not check the parsing of the name. -/
def A023459.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023460.P6081665032794811057

`n-18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023460.P6081665032794811057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 18

end

end A023460.P6081665032794811057

noncomputable section

/-- A023460: a(n) = n-18.

Offset 0, canonical program `A023460.P6081665032794811057`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-18` (program `A023460.P6081665032794811057`, by `A023460.P6081665032794811057.correct`). Lean does not check the parsing of the name. -/
def A023460 (n : ℕ) : ℤ :=
  A023460.P6081665032794811057.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-18` (program `A023460.P6081665032794811057`, by `A023460.P6081665032794811057.correct`). Lean does not check the parsing of the name. -/
def A023460.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023461.P1701024439936542546

`n-19`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023461.P1701024439936542546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 19

end

end A023461.P1701024439936542546

noncomputable section

/-- A023461: a(n) = n-19.

Offset 0, canonical program `A023461.P1701024439936542546`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-19` (program `A023461.P1701024439936542546`, by `A023461.P1701024439936542546.correct`). Lean does not check the parsing of the name. -/
def A023461 (n : ℕ) : ℤ :=
  A023461.P1701024439936542546.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-19` (program `A023461.P1701024439936542546`, by `A023461.P1701024439936542546.correct`). Lean does not check the parsing of the name. -/
def A023461.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023462.P15873733340913758828

`n-20`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023462.P15873733340913758828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 20

end

end A023462.P15873733340913758828

noncomputable section

/-- A023462: a(n) = n-20.

Offset 0, canonical program `A023462.P15873733340913758828`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-20` (program `A023462.P15873733340913758828`, by `A023462.P15873733340913758828.correct`). Lean does not check the parsing of the name. -/
def A023462 (n : ℕ) : ℤ :=
  A023462.P15873733340913758828.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-20` (program `A023462.P15873733340913758828`, by `A023462.P15873733340913758828.correct`). Lean does not check the parsing of the name. -/
def A023462.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023463.P13340327421806470167

`n-21`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023463.P13340327421806470167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 21

end

end A023463.P13340327421806470167

noncomputable section

/-- A023463: a(n) = n-21.

Offset 0, canonical program `A023463.P13340327421806470167`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-21` (program `A023463.P13340327421806470167`, by `A023463.P13340327421806470167.correct`). Lean does not check the parsing of the name. -/
def A023463 (n : ℕ) : ℤ :=
  A023463.P13340327421806470167.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-21` (program `A023463.P13340327421806470167`, by `A023463.P13340327421806470167.correct`). Lean does not check the parsing of the name. -/
def A023463.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023464.P13346798337513209447

`n-22`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023464.P13346798337513209447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 22

end

end A023464.P13346798337513209447

noncomputable section

/-- A023464: a(n) = n-22.

Offset 0, canonical program `A023464.P13346798337513209447`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-22` (program `A023464.P13346798337513209447`, by `A023464.P13346798337513209447.correct`). Lean does not check the parsing of the name. -/
def A023464 (n : ℕ) : ℤ :=
  A023464.P13346798337513209447.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-22` (program `A023464.P13346798337513209447`, by `A023464.P13346798337513209447.correct`). Lean does not check the parsing of the name. -/
def A023464.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023465.P15573522710299522326

`n-23`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023465.P15573522710299522326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 23

end

end A023465.P15573522710299522326

noncomputable section

/-- A023465: a(n) = n-23.

Offset 0, canonical program `A023465.P15573522710299522326`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-23` (program `A023465.P15573522710299522326`, by `A023465.P15573522710299522326.correct`). Lean does not check the parsing of the name. -/
def A023465 (n : ℕ) : ℤ :=
  A023465.P15573522710299522326.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-23` (program `A023465.P15573522710299522326`, by `A023465.P15573522710299522326.correct`). Lean does not check the parsing of the name. -/
def A023465.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023466.P15635143131224760971

`n-24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023466.P15635143131224760971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 24

end

end A023466.P15635143131224760971

noncomputable section

/-- A023466: a(n) = n - 24.

Offset 0, canonical program `A023466.P15635143131224760971`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-24` (program `A023466.P15635143131224760971`, by `A023466.P15635143131224760971.correct`). Lean does not check the parsing of the name. -/
def A023466 (n : ℕ) : ℤ :=
  A023466.P15635143131224760971.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-24` (program `A023466.P15635143131224760971`, by `A023466.P15635143131224760971.correct`). Lean does not check the parsing of the name. -/
def A023466.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023467.P16378063099040043376

`n-25`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023467.P16378063099040043376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 25

end

end A023467.P16378063099040043376

noncomputable section

/-- A023467: a(n) = n-25.

Offset 0, canonical program `A023467.P16378063099040043376`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-25` (program `A023467.P16378063099040043376`, by `A023467.P16378063099040043376.correct`). Lean does not check the parsing of the name. -/
def A023467 (n : ℕ) : ℤ :=
  A023467.P16378063099040043376.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-25` (program `A023467.P16378063099040043376`, by `A023467.P16378063099040043376.correct`). Lean does not check the parsing of the name. -/
def A023467.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023468.P6083773450565060551

`n-26`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023468.P6083773450565060551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 26

end

end A023468.P6083773450565060551

noncomputable section

/-- A023468: a(n) = n-26.

Offset 0, canonical program `A023468.P6083773450565060551`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-26` (program `A023468.P6083773450565060551`, by `A023468.P6083773450565060551.correct`). Lean does not check the parsing of the name. -/
def A023468 (n : ℕ) : ℤ :=
  A023468.P6083773450565060551.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-26` (program `A023468.P6083773450565060551`, by `A023468.P6083773450565060551.correct`). Lean does not check the parsing of the name. -/
def A023468.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023469.P16623533803023051570

`n-27`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023469.P16623533803023051570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 27

end

end A023469.P16623533803023051570

noncomputable section

/-- A023469: a(n) = n-27.

Offset 0, canonical program `A023469.P16623533803023051570`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-27` (program `A023469.P16623533803023051570`, by `A023469.P16623533803023051570.correct`). Lean does not check the parsing of the name. -/
def A023469 (n : ℕ) : ℤ :=
  A023469.P16623533803023051570.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-27` (program `A023469.P16623533803023051570`, by `A023469.P16623533803023051570.correct`). Lean does not check the parsing of the name. -/
def A023469.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023470.P6056020075891729902

`n-28`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023470.P6056020075891729902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 28

end

end A023470.P6056020075891729902

noncomputable section

/-- A023470: a(n) = n-28.

Offset 0, canonical program `A023470.P6056020075891729902`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-28` (program `A023470.P6056020075891729902`, by `A023470.P6056020075891729902.correct`). Lean does not check the parsing of the name. -/
def A023470 (n : ℕ) : ℤ :=
  A023470.P6056020075891729902.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-28` (program `A023470.P6056020075891729902`, by `A023470.P6056020075891729902.correct`). Lean does not check the parsing of the name. -/
def A023470.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023471.P9970346476799130473

`n-29`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023471.P9970346476799130473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 29

end

end A023471.P9970346476799130473

noncomputable section

/-- A023471: a(n) = n-29.

Offset 0, canonical program `A023471.P9970346476799130473`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-29` (program `A023471.P9970346476799130473`, by `A023471.P9970346476799130473.correct`). Lean does not check the parsing of the name. -/
def A023471 (n : ℕ) : ℤ :=
  A023471.P9970346476799130473.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-29` (program `A023471.P9970346476799130473`, by `A023471.P9970346476799130473.correct`). Lean does not check the parsing of the name. -/
def A023471.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023472.P7905059235647750017

`n-30`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023472.P7905059235647750017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 30

end

end A023472.P7905059235647750017

noncomputable section

/-- A023472: a(n) = n - 30.

Offset 0, canonical program `A023472.P7905059235647750017`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-30` (program `A023472.P7905059235647750017`, by `A023472.P7905059235647750017.correct`). Lean does not check the parsing of the name. -/
def A023472 (n : ℕ) : ℤ :=
  A023472.P7905059235647750017.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-30` (program `A023472.P7905059235647750017`, by `A023472.P7905059235647750017.correct`). Lean does not check the parsing of the name. -/
def A023472.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023473.P5324242782236802804

`n-31`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023473.P5324242782236802804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 31

end

end A023473.P5324242782236802804

noncomputable section

/-- A023473: a(n) = n-31.

Offset 0, canonical program `A023473.P5324242782236802804`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-31` (program `A023473.P5324242782236802804`, by `A023473.P5324242782236802804.correct`). Lean does not check the parsing of the name. -/
def A023473 (n : ℕ) : ℤ :=
  A023473.P5324242782236802804.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-31` (program `A023473.P5324242782236802804`, by `A023473.P5324242782236802804.correct`). Lean does not check the parsing of the name. -/
def A023473.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023474.P12853618900781979249

`n-32`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023474.P12853618900781979249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 32

end

end A023474.P12853618900781979249

noncomputable section

/-- A023474: a(n) = n-32.

Offset 0, canonical program `A023474.P12853618900781979249`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-32` (program `A023474.P12853618900781979249`, by `A023474.P12853618900781979249.correct`). Lean does not check the parsing of the name. -/
def A023474 (n : ℕ) : ℤ :=
  A023474.P12853618900781979249.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-32` (program `A023474.P12853618900781979249`, by `A023474.P12853618900781979249.correct`). Lean does not check the parsing of the name. -/
def A023474.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023475.P7363115203595806616

`n-33`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023475.P7363115203595806616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 33

end

end A023475.P7363115203595806616

noncomputable section

/-- A023475: a(n) = n-33.

Offset 0, canonical program `A023475.P7363115203595806616`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-33` (program `A023475.P7363115203595806616`, by `A023475.P7363115203595806616.correct`). Lean does not check the parsing of the name. -/
def A023475 (n : ℕ) : ℤ :=
  A023475.P7363115203595806616.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-33` (program `A023475.P7363115203595806616`, by `A023475.P7363115203595806616.correct`). Lean does not check the parsing of the name. -/
def A023475.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023476.P1868753708794674298

`n-34`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023476.P1868753708794674298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 34

end

end A023476.P1868753708794674298

noncomputable section

/-- A023476: a(n) = n-34.

Offset 0, canonical program `A023476.P1868753708794674298`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-34` (program `A023476.P1868753708794674298`, by `A023476.P1868753708794674298.correct`). Lean does not check the parsing of the name. -/
def A023476 (n : ℕ) : ℤ :=
  A023476.P1868753708794674298.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-34` (program `A023476.P1868753708794674298`, by `A023476.P1868753708794674298.correct`). Lean does not check the parsing of the name. -/
def A023476.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023477.P11107403362716646898

`n-35`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023477.P11107403362716646898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 35

end

end A023477.P11107403362716646898

noncomputable section

/-- A023477: a(n) = n-35.

Offset 0, canonical program `A023477.P11107403362716646898`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-35` (program `A023477.P11107403362716646898`, by `A023477.P11107403362716646898.correct`). Lean does not check the parsing of the name. -/
def A023477 (n : ℕ) : ℤ :=
  A023477.P11107403362716646898.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-35` (program `A023477.P11107403362716646898`, by `A023477.P11107403362716646898.correct`). Lean does not check the parsing of the name. -/
def A023477.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023478.P13335276018786921324

`n-36`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023478.P13335276018786921324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 36

end

end A023478.P13335276018786921324

noncomputable section

/-- A023478: a(n) = n-36.

Offset 0, canonical program `A023478.P13335276018786921324`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-36` (program `A023478.P13335276018786921324`, by `A023478.P13335276018786921324.correct`). Lean does not check the parsing of the name. -/
def A023478 (n : ℕ) : ℤ :=
  A023478.P13335276018786921324.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-36` (program `A023478.P13335276018786921324`, by `A023478.P13335276018786921324.correct`). Lean does not check the parsing of the name. -/
def A023478.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023479.P6128352249614289451

`n-37`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023479.P6128352249614289451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 37

end

end A023479.P6128352249614289451

noncomputable section

/-- A023479: a(n) = n-37.

Offset 0, canonical program `A023479.P6128352249614289451`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-37` (program `A023479.P6128352249614289451`, by `A023479.P6128352249614289451.correct`). Lean does not check the parsing of the name. -/
def A023479 (n : ℕ) : ℤ :=
  A023479.P6128352249614289451.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-37` (program `A023479.P6128352249614289451`, by `A023479.P6128352249614289451.correct`). Lean does not check the parsing of the name. -/
def A023479.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023480.P15874114386161469736

`n-38`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023480.P15874114386161469736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 38

end

end A023480.P15874114386161469736

noncomputable section

/-- A023480: a(n) = n-38.

Offset 0, canonical program `A023480.P15874114386161469736`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-38` (program `A023480.P15874114386161469736`, by `A023480.P15874114386161469736.correct`). Lean does not check the parsing of the name. -/
def A023480 (n : ℕ) : ℤ :=
  A023480.P15874114386161469736.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-38` (program `A023480.P15874114386161469736`, by `A023480.P15874114386161469736.correct`). Lean does not check the parsing of the name. -/
def A023480.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023481.P8149254853506171742

`n-39`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023481.P8149254853506171742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 39

end

end A023481.P8149254853506171742

noncomputable section

/-- A023481: a(n) = n-39.

Offset 0, canonical program `A023481.P8149254853506171742`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-39` (program `A023481.P8149254853506171742`, by `A023481.P8149254853506171742.correct`). Lean does not check the parsing of the name. -/
def A023481 (n : ℕ) : ℤ :=
  A023481.P8149254853506171742.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-39` (program `A023481.P8149254853506171742`, by `A023481.P8149254853506171742.correct`). Lean does not check the parsing of the name. -/
def A023481.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023482.P907986368205919176

`n-40`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A023482.P907986368205919176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 40

end

end A023482.P907986368205919176

noncomputable section

/-- A023482: a(n) = n-40.

Offset 0, canonical program `A023482.P907986368205919176`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-40` (program `A023482.P907986368205919176`, by `A023482.P907986368205919176.correct`). Lean does not check the parsing of the name. -/
def A023482 (n : ℕ) : ℤ :=
  A023482.P907986368205919176.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-40` (program `A023482.P907986368205919176`, by `A023482.P907986368205919176.correct`). Lean does not check the parsing of the name. -/
def A023482.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A017949.P14583680733829456344

`floor(sqrt(15^n))`
-/

namespace A017949.P14583680733829456344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (15 ^ n)

end

end A017949.P14583680733829456344

noncomputable section

/-- A017949: Powers of sqrt(15) rounded down.

Offset 0, canonical program `A017949.P14583680733829456344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017949 (n : ℕ) : ℤ :=
  (A017949.P14583680733829456344.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017951.P4743721663244329506

`ceil(sqrt(15^n))`
-/

namespace A017951.P4743721663244329506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (15 ^ n : ℝ)⌉

end

end A017951.P4743721663244329506

noncomputable section

/-- A017951: Powers of sqrt(15) rounded up.

Offset 0, canonical program `A017951.P4743721663244329506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017951 (n : ℕ) : ℤ :=
  A017951.P4743721663244329506.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017952.P15788919180846246640

`16*a(n-1)-60*a(n-2)+3^n` with `a(0)=1, a(1)=19`
-/

namespace A017952.P15788919180846246640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  16 * a (n - 1) - 60 * a (n - 2) + (3 ^ n : ℤ)

end

end A017952.P15788919180846246640

noncomputable section

/-- A017952: Expansion of 1/((1-3x)*(1-6x)*(1-10x)).

Offset 0, canonical program `A017952.P15788919180846246640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017952 (n : ℕ) : ℤ :=
  A017952.P15788919180846246640.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017952.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017953.P7732588772335147797

`17*a(n-1)-66*a(n-2)+3^n` with `a(0)=1, a(1)=20`
-/

namespace A017953.P7732588772335147797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  17 * a (n - 1) - 66 * a (n - 2) + (3 ^ n : ℤ)

end

end A017953.P7732588772335147797

noncomputable section

/-- A017953: Expansion of 1/((1-3x)*(1-6x)*(1-11x)).

Offset 0, canonical program `A017953.P7732588772335147797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017953 (n : ℕ) : ℤ :=
  A017953.P7732588772335147797.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017954.P3533787156802275984

`18*a(n-1)-72*a(n-2)+3^n` with `a(0)=1, a(1)=21`
-/

namespace A017954.P3533787156802275984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  18 * a (n - 1) - 72 * a (n - 2) + (3 ^ n : ℤ)

end

end A017954.P3533787156802275984

noncomputable section

/-- A017954: Expansion of 1/((1-3x)*(1-6x)*(1-12x)).

Offset 0, canonical program `A017954.P3533787156802275984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017954 (n : ℕ) : ℤ :=
  A017954.P3533787156802275984.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017955.P9984987457799614466

`floor(sqrt(17^n))`
-/

namespace A017955.P9984987457799614466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (17 ^ n)

end

end A017955.P9984987457799614466

noncomputable section

/-- A017955: Powers of sqrt(17) rounded down.

Offset 0, canonical program `A017955.P9984987457799614466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017955 (n : ℕ) : ℤ :=
  (A017955.P9984987457799614466.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017957.P5148408155058597547

`ceil(sqrt(17^n))`
-/

namespace A017957.P5148408155058597547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (17 ^ n : ℝ)⌉

end

end A017957.P5148408155058597547

noncomputable section

/-- A017957: Powers of sqrt(17) rounded up.

Offset 0, canonical program `A017957.P5148408155058597547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017957 (n : ℕ) : ℤ :=
  A017957.P5148408155058597547.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017958.P2527308695026847057

`floor(sqrt(18^n))`
-/

namespace A017958.P2527308695026847057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (18 ^ n)

end

end A017958.P2527308695026847057

noncomputable section

/-- A017958: Powers of sqrt(18) rounded down.

Offset 0, canonical program `A017958.P2527308695026847057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017958 (n : ℕ) : ℤ :=
  (A017958.P2527308695026847057.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017960.P17529597812179164494

`ceil(sqrt(18^n))`
-/

namespace A017960.P17529597812179164494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (18 ^ n : ℝ)⌉

end

end A017960.P17529597812179164494

noncomputable section

/-- A017960: Powers of sqrt(18) rounded up.

Offset 0, canonical program `A017960.P17529597812179164494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017960 (n : ℕ) : ℤ :=
  A017960.P17529597812179164494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017961.P10892891714077674605

`floor(sqrt(19^n))`
-/

namespace A017961.P10892891714077674605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (19 ^ n)

end

end A017961.P10892891714077674605

noncomputable section

/-- A017961: Powers of sqrt(19) rounded down.

Offset 0, canonical program `A017961.P10892891714077674605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017961 (n : ℕ) : ℤ :=
  (A017961.P10892891714077674605.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017963.P8816144771398755226

`ceil(sqrt(19^n))`
-/

namespace A017963.P8816144771398755226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (19 ^ n : ℝ)⌉

end

end A017963.P8816144771398755226

noncomputable section

/-- A017963: Powers of sqrt(19) rounded up.

Offset 0, canonical program `A017963.P8816144771398755226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017963 (n : ℕ) : ℤ :=
  A017963.P8816144771398755226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017964.P8214688072289645585

`floor(sqrt(20^n))`
-/

namespace A017964.P8214688072289645585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (20 ^ n)

end

end A017964.P8214688072289645585

noncomputable section

/-- A017964: Powers of sqrt(20) rounded down.

Offset 0, canonical program `A017964.P8214688072289645585`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017964 (n : ℕ) : ℤ :=
  (A017964.P8214688072289645585.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017966.P140310431696499413

`ceil(sqrt(20^n))`
-/

namespace A017966.P140310431696499413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (20 ^ n : ℝ)⌉

end

end A017966.P140310431696499413

noncomputable section

/-- A017966: Powers of sqrt(20) rounded up.

Offset 0, canonical program `A017966.P140310431696499413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017966 (n : ℕ) : ℤ :=
  A017966.P140310431696499413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017967.P17121751743321943625

`floor(sqrt(21^n))`
-/

namespace A017967.P17121751743321943625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (21 ^ n)

end

end A017967.P17121751743321943625

noncomputable section

/-- A017967: Powers of sqrt(21) rounded down.

Offset 0, canonical program `A017967.P17121751743321943625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017967 (n : ℕ) : ℤ :=
  (A017967.P17121751743321943625.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017969.P7362430290746515714

`ceil(sqrt(21^n))`
-/

namespace A017969.P7362430290746515714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (21 ^ n : ℝ)⌉

end

end A017969.P7362430290746515714

noncomputable section

/-- A017969: Powers of sqrt(21) rounded up.

Offset 0, canonical program `A017969.P7362430290746515714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017969 (n : ℕ) : ℤ :=
  A017969.P7362430290746515714.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017970.P2286175100179775483

`floor(sqrt(22^n))`
-/

namespace A017970.P2286175100179775483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (22 ^ n)

end

end A017970.P2286175100179775483

noncomputable section

/-- A017970: Powers of sqrt(22) rounded down.

Offset 0, canonical program `A017970.P2286175100179775483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017970 (n : ℕ) : ℤ :=
  (A017970.P2286175100179775483.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017972.P17522841527677559939

`ceil(sqrt(22^n))`
-/

namespace A017972.P17522841527677559939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (22 ^ n : ℝ)⌉

end

end A017972.P17522841527677559939

noncomputable section

/-- A017972: Powers of sqrt(22) rounded up.

Offset 0, canonical program `A017972.P17522841527677559939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017972 (n : ℕ) : ℤ :=
  A017972.P17522841527677559939.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017973.P5626673355597780268

`floor(sqrt(23^n))`
-/

namespace A017973.P5626673355597780268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (23 ^ n)

end

end A017973.P5626673355597780268

noncomputable section

/-- A017973: Powers of sqrt(23) rounded down.

Offset 0, canonical program `A017973.P5626673355597780268`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017973 (n : ℕ) : ℤ :=
  (A017973.P5626673355597780268.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017975.P14785410818165074267

`ceil(sqrt(23^n))`
-/

namespace A017975.P14785410818165074267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (23 ^ n : ℝ)⌉

end

end A017975.P14785410818165074267

noncomputable section

/-- A017975: Powers of sqrt(23) rounded up.

Offset 0, canonical program `A017975.P14785410818165074267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017975 (n : ℕ) : ℤ :=
  A017975.P14785410818165074267.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017975.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017976.P14997319104183218160

`floor(sqrt(24^n))`
-/

namespace A017976.P14997319104183218160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (24 ^ n)

end

end A017976.P14997319104183218160

noncomputable section

/-- A017976: Powers of sqrt(24) rounded down.

Offset 0, canonical program `A017976.P14997319104183218160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017976 (n : ℕ) : ℤ :=
  (A017976.P14997319104183218160.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017978.P7810504544621147641

`ceil(sqrt(24^n))`
-/

namespace A017978.P7810504544621147641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (24 ^ n : ℝ)⌉

end

end A017978.P7810504544621147641

noncomputable section

/-- A017978: Powers of sqrt(24) rounded up.

Offset 0, canonical program `A017978.P7810504544621147641`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017978 (n : ℕ) : ℤ :=
  A017978.P7810504544621147641.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017997.P9953440653974165169

`15*a(n-1)-56*a(n-2)+3^n` with `a(0)=1, a(1)=18`
-/

namespace A017997.P9953440653974165169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  15 * a (n - 1) - 56 * a (n - 2) + (3 ^ n : ℤ)

end

end A017997.P9953440653974165169

noncomputable section

/-- A017997: Expansion of 1/((1-3x)*(1-7x)*(1-8x)).

Offset 0, canonical program `A017997.P9953440653974165169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017997 (n : ℕ) : ℤ :=
  A017997.P9953440653974165169.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017997.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017998.P9021511614960488624

`16*a(n-1)-63*a(n-2)+3^n` with `a(0)=1, a(1)=19`
-/

namespace A017998.P9021511614960488624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  16 * a (n - 1) - 63 * a (n - 2) + (3 ^ n : ℤ)

end

end A017998.P9021511614960488624

noncomputable section

/-- A017998: Expansion of 1/((1-3x)*(1-7x)*(1-9x)).

Offset 0, canonical program `A017998.P9021511614960488624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017998 (n : ℕ) : ℤ :=
  A017998.P9021511614960488624.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017999.P12480200348350311107

`17*a(n-1)-70*a(n-2)+3^n` with `a(0)=1, a(1)=20`
-/

namespace A017999.P12480200348350311107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  17 * a (n - 1) - 70 * a (n - 2) + (3 ^ n : ℤ)

end

end A017999.P12480200348350311107

noncomputable section

/-- A017999: Expansion of 1/((1-3x)*(1-7x)*(1-10x)).

Offset 0, canonical program `A017999.P12480200348350311107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017999 (n : ℕ) : ℤ :=
  A017999.P12480200348350311107.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A017999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018054.P5032301371897729527

`18*a(n-1)-77*a(n-2)+3^n` with `a(0)=1, a(1)=21`
-/

namespace A018054.P5032301371897729527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  18 * a (n - 1) - 77 * a (n - 2) + (3 ^ n : ℤ)

end

end A018054.P5032301371897729527

noncomputable section

/-- A018054: Expansion of 1/((1-3*x)*(1-7*x)*(1-11*x)).

Offset 0, canonical program `A018054.P5032301371897729527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018054 (n : ℕ) : ℤ :=
  A018054.P5032301371897729527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018055.P15742584883694483210

`19*a(n-1)-84*a(n-2)+3^n` with `a(0)=1, a(1)=22`
-/

namespace A018055.P15742584883694483210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  19 * a (n - 1) - 84 * a (n - 2) + (3 ^ n : ℤ)

end

end A018055.P15742584883694483210

noncomputable section

/-- A018055: Expansion of 1/((1-3*x)*(1-7*x)*(1-12*x)).

Offset 0, canonical program `A018055.P15742584883694483210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018055 (n : ℕ) : ℤ :=
  A018055.P15742584883694483210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018056.P10299247954942043490

`17*a(n-1)-72*a(n-2)+3^n` with `a(0)=1, a(1)=20`
-/

namespace A018056.P10299247954942043490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + (3 ^ n : ℤ)

end

end A018056.P10299247954942043490

noncomputable section

/-- A018056: Expansion of g.f. 1/((1-3*x)*(1-8*x)*(1-9*x)).

Offset 0, canonical program `A018056.P10299247954942043490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018056 (n : ℕ) : ℤ :=
  A018056.P10299247954942043490.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018068.P1534183736500244742

`ceil(8^(n/4))`
-/

namespace A018068.P1534183736500244742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(8 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

end

end A018068.P1534183736500244742

noncomputable section

/-- A018068: Powers of fourth root of 8 rounded up.

Offset 0, canonical program `A018068.P1534183736500244742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018068 (n : ℕ) : ℤ :=
  A018068.P1534183736500244742.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018069.P7359042238384290821

`18*a(n-1)-80*a(n-2)+3^n` with `a(0)=1, a(1)=21`
-/

namespace A018069.P7359042238384290821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  18 * a (n - 1) - 80 * a (n - 2) + (3 ^ n : ℤ)

end

end A018069.P7359042238384290821

noncomputable section

/-- A018069: Expansion of 1/((1-3*x)*(1-8*x)*(1-10*x)).

Offset 0, canonical program `A018069.P7359042238384290821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018069 (n : ℕ) : ℤ :=
  A018069.P7359042238384290821.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018070.P10301211138478499902

`19*a(n-1)-88*a(n-2)+3^n` with `a(0)=1, a(1)=22`
-/

namespace A018070.P10301211138478499902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  19 * a (n - 1) - 88 * a (n - 2) + (3 ^ n : ℤ)

end

end A018070.P10301211138478499902

noncomputable section

/-- A018070: Expansion of 1/((1-3*x)*(1-8*x)*(1-11*x)).

Offset 0, canonical program `A018070.P10301211138478499902`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018070 (n : ℕ) : ℤ :=
  A018070.P10301211138478499902.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018071.P15916146401560535248

`20*a(n-1)-96*a(n-2)+3^n` with `a(0)=1, a(1)=23`
-/

namespace A018071.P15916146401560535248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  20 * a (n - 1) - 96 * a (n - 2) + (3 ^ n : ℤ)

end

end A018071.P15916146401560535248

noncomputable section

/-- A018071: Expansion of 1/((1-3x)(1-8x)(1-12x)).

Offset 0, canonical program `A018071.P15916146401560535248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018071 (n : ℕ) : ℤ :=
  A018071.P15916146401560535248.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018078.P5495665511050030366

`floor(12^(n/4))`
-/

namespace A018078.P5495665511050030366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(12 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018078.P5495665511050030366

noncomputable section

/-- A018078: Powers of fourth root of 12 rounded down.

Offset 0, canonical program `A018078.P5495665511050030366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018078 (n : ℕ) : ℤ :=
  A018078.P5495665511050030366.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018090.P12180470080737213326

`19*a(n-1)-90*a(n-2)+3^n` with `a(0)=1, a(1)=22`
-/

namespace A018090.P12180470080737213326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (3 ^ n : ℤ)

end

end A018090.P12180470080737213326

noncomputable section

/-- A018090: Expansion of 1/((1-3*x)*(1-9*x)*(1-10*x)).

Offset 0, canonical program `A018090.P12180470080737213326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018090 (n : ℕ) : ℤ :=
  A018090.P12180470080737213326.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018090.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018091.P3203867766343799681

`20*a(n-1)-99*a(n-2)+3^n` with `a(0)=1, a(1)=23`
-/

namespace A018091.P3203867766343799681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (3 ^ n : ℤ)

end

end A018091.P3203867766343799681

noncomputable section

/-- A018091: Expansion of 1/((1-3*x)*(1-9*x)*(1-11*x)).

Offset 0, canonical program `A018091.P3203867766343799681`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018091 (n : ℕ) : ℤ :=
  A018091.P3203867766343799681.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018092.P16612837315512449844

`24*a(n-1)-171*a(n-2)+324*a(n-3)` with `a(0)=1, a(1)=24, a(2)=405`
-/

namespace A018092.P16612837315512449844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 405] fun n a =>
  24 * a (n - 1) - 171 * a (n - 2) + 324 * a (n - 3)

end

end A018092.P16612837315512449844

noncomputable section

/-- A018092: Expansion of 1/((1-3*x)*(1-9*x)*(1-12*x)).

Offset 0, canonical program `A018092.P16612837315512449844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018092 (n : ℕ) : ℤ :=
  A018092.P16612837315512449844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018092.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018105.P8639596987832583942

`floor(21^(n/4))`
-/

namespace A018105.P8639596987832583942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(21 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018105.P8639596987832583942

noncomputable section

/-- A018105: Powers of fourth root of 21 rounded down.

Offset 0, canonical program `A018105.P8639596987832583942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018105 (n : ℕ) : ℤ :=
  A018105.P8639596987832583942.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018206.P817187132340259467

`21*a(n-1)-110*a(n-2)+3^n` with `a(0)=1, a(1)=24`
-/

namespace A018206.P817187132340259467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (3 ^ n : ℤ)

end

end A018206.P817187132340259467

noncomputable section

/-- A018206: Expansion of 1/((1-3x)(1-10x)(1-11x)).

Offset 0, canonical program `A018206.P817187132340259467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018206 (n : ℕ) : ℤ :=
  A018206.P817187132340259467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018206.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018207.P305387378946507906

`22*a(n-1)-120*a(n-2)+3^n` with `a(0)=1, a(1)=25`
-/

namespace A018207.P305387378946507906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (3 ^ n : ℤ)

end

end A018207.P305387378946507906

noncomputable section

/-- A018207: Expansion of 1/((1-3x)(1-10x)(1-12x)).

Offset 0, canonical program `A018207.P305387378946507906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018207 (n : ℕ) : ℤ :=
  A018207.P305387378946507906.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018207.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018208.P8733047461524398637

`23*a(n-1)-132*a(n-2)+3^n` with `a(0)=1, a(1)=26`
-/

namespace A018208.P8733047461524398637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (3 ^ n : ℤ)

end

end A018208.P8733047461524398637

noncomputable section

/-- A018208: Expansion of 1/((1-3x)(1-11x)(1-12x)).

Offset 0, canonical program `A018208.P8733047461524398637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018208 (n : ℕ) : ℤ :=
  A018208.P8733047461524398637.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018209.P16802658112795123416

`12*a(n-1)-35*a(n-2)+4^n` with `a(0)=1, a(1)=16`
-/

namespace A018209.P16802658112795123416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16] fun n a =>
  12 * a (n - 1) - 35 * a (n - 2) + (4 ^ n : ℤ)

end

end A018209.P16802658112795123416

noncomputable section

/-- A018209: Expansion of 1/((1-4x)(1-5x)(1-7x)).

Offset 0, canonical program `A018209.P16802658112795123416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018209 (n : ℕ) : ℤ :=
  A018209.P16802658112795123416.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018217.P2488107999870231857

`2*(n+1)*(4^n-C(2*n+1, n))`
-/

namespace A018217.P2488107999870231857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * ((4 ^ n : ℤ) - (Nat.choose (2 * n + 1) n : ℤ))

end

end A018217.P2488107999870231857

noncomputable section

/-- A018217: a(n) = Sum_{j=0..n-1} C(j)*(n-j)*4^(n-j), C = Catalan numbers.

Offset 0, canonical program `A018217.P2488107999870231857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018217 (n : ℕ) : ℤ :=
  A018217.P2488107999870231857.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018218.P7836336077931377100

`(n+1)*(4^n-C(2*n+1, n))/2`
-/

namespace A018218.P7836336077931377100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((4 ^ n : ℤ) - (Nat.choose (2 * n + 1) n : ℤ)) : ℚ) / 2

end

end A018218.P7836336077931377100

noncomputable section

/-- A018218: Sum(C(j)*(n-j)*4^(n-j-1),j=0..n-1), C = Catalan numbers.

Offset 0, canonical program `A018218.P7836336077931377100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018218 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A018218.P7836336077931377100.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018218.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018227.P18393074303411481755

`a(n-1)+(2*(n+1)+3+(-1)^(n+1))²/8` with `a(0)=2`
-/

namespace A018227.P18393074303411481755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (((2 * (n + 1) + 3 : ℤ) + (-1) ^ (n + 1)) ^ 2 : ℚ) / 8

end

end A018227.P18393074303411481755

noncomputable section

/-- A018227: Magic numbers: atoms with full shells containing any of these numbers of electrons are considered electronically stable.

Offset 1, canonical program `A018227.P18393074303411481755`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A018227.P18393074303411481755.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018227.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018240.P9196912849373277085

`floor((2^n+2^floor(n/2)+1)/3)`
-/

namespace A018240.P9196912849373277085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + 1) / 3⌋

end

end A018240.P9196912849373277085

noncomputable section

/-- A018240: Number of rational knots (or two-bridge knots) with n crossings (up to mirroring).

Offset 3, canonical program `A018240.P9196912849373277085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018240 (n : ℕ) : ℤ :=
  A018240.P9196912849373277085.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018250.P5959116852881608587

`17*a(n-1)-92*a(n-2)+160*a(n-3)` with `a(0)=1, a(1)=17, a(2)=197`
-/

namespace A018250.P5959116852881608587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17, 197] fun n a =>
  17 * a (n - 1) - 92 * a (n - 2) + 160 * a (n - 3)

end

end A018250.P5959116852881608587

noncomputable section

/-- A018250: Expansion of 1/((1-4x)(1-5x)(1-8x)).

Offset 0, canonical program `A018250.P5959116852881608587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018250 (n : ℕ) : ℤ :=
  A018250.P5959116852881608587.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018487.P11970063717555995275

`2^(n-5)*(32-floor((n+1)/6))`
-/

namespace A018487.P11970063717555995275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 5 : ℤ) * (32 - ⌊(n + 1 : ℚ) / 6⌋ : ℚ)

end

end A018487.P11970063717555995275

noncomputable section

/-- A018487: Divisors of 496.

Offset 1, canonical program `A018487.P11970063717555995275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018487 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A018487.P11970063717555995275.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018819.P3593375773759220258

`a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1`
-/

namespace A018819.P3593375773759220258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A018819.P3593375773759220258

noncomputable section

/-- A018819: Binary partition function: number of partitions of n into powers of 2.

Offset 0, canonical program `A018819.P3593375773759220258`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018819 (n : ℕ) : ℤ :=
  (A018819.P3593375773759220258.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018838.P11226184692269148407

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=2, a(4)=4, a(5)=4, a(6)=4`
-/

namespace A018838.P11226184692269148407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 2, 4, 4, 4] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A018838.P11226184692269148407

noncomputable section

/-- A018838: Minimum number of steps for a knight to reach (n,n) on an infinite chessboard.

Offset 0, canonical program `A018838.P11226184692269148407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018838 (n : ℕ) : ℤ :=
  A018838.P11226184692269148407.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018886.P10016611591934568643

`2^(n+1)*floor((3/2)^(n+1))-1`
-/

namespace A018886.P10016611591934568643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * ⌊((3 : ℚ) / 2) ^ (n + 1)⌋ - 1

end

end A018886.P10016611591934568643

noncomputable section

/-- A018886: Waring's problem: least positive integer requiring maximum number of terms when expressed as a sum of positive n-th powers.

Offset 1, canonical program `A018886.P10016611591934568643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018886 (n : ℕ) : ℤ :=
  A018886.P10016611591934568643.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018886.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018896.P10692014710542095976

`(a(n-1)*a(n-7)+a(n-4)²)/a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A018896.P10692014710542095976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 1] fun n a =>
  (a (n - 1) * a (n - 7) + a (n - 4) ^ 2) / a (n - 8)

end

end A018896.P10692014710542095976

noncomputable section

/-- A018896: a(n) = ( a(n-1)*a(n-7) + a(n-4)^2 ) / a(n-8); a(0) = ... = a(7) = 1.

Offset 0, canonical program `A018896.P10692014710542095976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A018896.P10692014710542095976.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018903.P17493620103304522199

`6*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A018903.P17493620103304522199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * a (n - 1) - 4 * a (n - 2)

end

end A018903.P17493620103304522199

noncomputable section

/-- A018903: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(1,5).

Offset 0, canonical program `A018903.P17493620103304522199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018903 (n : ℕ) : ℤ :=
  A018903.P17493620103304522199.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018903.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018904.P14658239581481791556

`7*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A018904.P14658239581481791556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  7 * a (n - 1) - 5 * a (n - 2)

end

end A018904.P14658239581481791556

noncomputable section

/-- A018904: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(1,6).

Offset 0, canonical program `A018904.P14658239581481791556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018904 (n : ℕ) : ℤ :=
  A018904.P14658239581481791556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018907.P8741823358117644135

`1+floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A018907.P8741823358117644135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  1 + ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018907.P8741823358117644135

noncomputable section

/-- A018907: Define the sequence S(a_0,a_1) by a_{n+2} is the least integer such that a_{n+2}/a_{n+1} > a_{n+1}/a_n for n >= 0. This is S(2,7).

Offset 0, canonical program `A018907.P8741823358117644135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018907 (n : ℕ) : ℤ :=
  A018907.P8741823358117644135.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018908.P7228138761740664973

`1+floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A018908.P7228138761740664973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  1 + ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018908.P7228138761740664973

noncomputable section

/-- A018908: Define sequence S(a_0,a_1) by a_{n+2} is least integer such that a_{n+2}/a_{n+1}>a_{n+1}/a_n for n >= 0. This is S(3,4).

Offset 0, canonical program `A018908.P7228138761740664973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018908 (n : ℕ) : ℤ :=
  A018908.P7228138761740664973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018909.P1927574934073751296

`1+floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=6`
-/

namespace A018909.P1927574934073751296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  1 + ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018909.P1927574934073751296

noncomputable section

/-- A018909: Define the sequence S(a_0,a_1) by a_{n+2} is the least integer such that a_{n+2}/a_{n+1}>a_{n+1}/a_n for n >= 0. This is S(3,6).

Offset 0, canonical program `A018909.P1927574934073751296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018909 (n : ℕ) : ℤ :=
  A018909.P1927574934073751296.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018910.P6801859677616987351

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=5, a(2)=7`
-/

namespace A018910.P6801859677616987351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 7] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A018910.P6801859677616987351

noncomputable section

/-- A018910: Pisot sequence L(4,5).

Offset 0, canonical program `A018910.P6801859677616987351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018910 (n : ℕ) : ℤ :=
  A018910.P6801859677616987351.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018911.P2659993065472359965

`14*a(n-1)-45*a(n-2)+4^n` with `a(0)=1, a(1)=18`
-/

namespace A018911.P2659993065472359965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  14 * a (n - 1) - 45 * a (n - 2) + (4 ^ n : ℤ)

end

end A018911.P2659993065472359965

noncomputable section

/-- A018911: Expansion of 1/((1-4x)(1-5x)(1-9x)).

Offset 0, canonical program `A018911.P2659993065472359965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018911 (n : ℕ) : ℤ :=
  A018911.P2659993065472359965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018912.P3402712426235349924

`15*a(n-1)-50*a(n-2)+4^n` with `a(0)=1, a(1)=19`
-/

namespace A018912.P3402712426235349924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  15 * a (n - 1) - 50 * a (n - 2) + (4 ^ n : ℤ)

end

end A018912.P3402712426235349924

noncomputable section

/-- A018912: Expansion of 1/((1-4x)(1-5x)(1-10x)).

Offset 0, canonical program `A018912.P3402712426235349924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018912 (n : ℕ) : ℤ :=
  A018912.P3402712426235349924.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018915.P18291154071917566273

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=2, a(1)=6`
-/

namespace A018915.P18291154071917566273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018915.P18291154071917566273

noncomputable section

/-- A018915: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(2,6).

Offset 0, canonical program `A018915.P18291154071917566273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018915 (n : ℕ) : ℤ :=
  A018915.P18291154071917566273.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018916.P15228623675390035031

`4*a(n-1)-2*a(n-3)` with `a(0)=2, a(1)=8, a(2)=31`
-/

namespace A018916.P15228623675390035031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8, 31] fun n a =>
  4 * a (n - 1) - 2 * a (n - 3)

end

end A018916.P15228623675390035031

noncomputable section

/-- A018916: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(2,8).

Offset 0, canonical program `A018916.P15228623675390035031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018916 (n : ℕ) : ℤ :=
  A018916.P15228623675390035031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018917.P12509437242239400346

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=5`
-/

namespace A018917.P12509437242239400346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018917.P12509437242239400346

noncomputable section

/-- A018917: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(3,5).

Offset 0, canonical program `A018917.P12509437242239400346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018917 (n : ℕ) : ℤ :=
  A018917.P12509437242239400346.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018918.P16763505147382979294

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=6`
-/

namespace A018918.P16763505147382979294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018918.P16763505147382979294

noncomputable section

/-- A018918: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(3,6).

Offset 0, canonical program `A018918.P16763505147382979294`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018918 (n : ℕ) : ℤ :=
  A018918.P16763505147382979294.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018919.P15004182511986428332

`3*a(n-1)-a(n-3)` with `a(0)=3, a(1)=9, a(2)=26`
-/

namespace A018919.P15004182511986428332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 26] fun n a =>
  3 * a (n - 1) - a (n - 3)

end

end A018919.P15004182511986428332

noncomputable section

/-- A018919: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(3,9).

Offset 0, canonical program `A018919.P15004182511986428332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018919 (n : ℕ) : ℤ :=
  A018919.P15004182511986428332.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018921.P14332424406212899557

`2*a(n-1)-a(n-4)` with `a(0)=4, a(1)=8, a(2)=15, a(3)=28`
-/

namespace A018921.P14332424406212899557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 15, 28] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A018921.P14332424406212899557

noncomputable section

/-- A018921: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(4,8).

Offset 0, canonical program `A018921.P14332424406212899557`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018921 (n : ℕ) : ℤ :=
  A018921.P14332424406212899557.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018922.P3352321963138477390

`2*a(n-1)-a(n-5)` with `a(0)=8, a(1)=16, a(2)=31, a(3)=60, a(4)=116`
-/

namespace A018922.P3352321963138477390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 16, 31, 60, 116] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A018922.P3352321963138477390

noncomputable section

/-- A018922: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(8,16).

Offset 0, canonical program `A018922.P3352321963138477390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018922 (n : ℕ) : ℤ :=
  A018922.P3352321963138477390.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018923.P13571307820344530374

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=16, a(1)=32`
-/

namespace A018923.P13571307820344530374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 32] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018923.P13571307820344530374

noncomputable section

/-- A018923: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(16,32).

Offset 0, canonical program `A018923.P13571307820344530374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018923 (n : ℕ) : ℤ :=
  A018923.P13571307820344530374.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A018923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019040.P12728111244470191218

`16*a(n-1)-55*a(n-2)+4^n` with `a(0)=1, a(1)=20`
-/

namespace A019040.P12728111244470191218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  16 * a (n - 1) - 55 * a (n - 2) + (4 ^ n : ℤ)

end

end A019040.P12728111244470191218

noncomputable section

/-- A019040: Expansion of 1/((1-4*x)*(1-5*x)*(1-11*x)).

Offset 0, canonical program `A019040.P12728111244470191218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019040 (n : ℕ) : ℤ :=
  A019040.P12728111244470191218.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019041.P8124077272208493528

`17*a(n-1)-60*a(n-2)+4^n` with `a(0)=1, a(1)=21`
-/

namespace A019041.P8124077272208493528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  17 * a (n - 1) - 60 * a (n - 2) + (4 ^ n : ℤ)

end

end A019041.P8124077272208493528

noncomputable section

/-- A019041: Expansion of 1/((1-4x)(1-5x)(1-12x)).

Offset 0, canonical program `A019041.P8124077272208493528`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019041 (n : ℕ) : ℤ :=
  A019041.P8124077272208493528.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019274.P14139806031149399444

`a(n-1)+a(n-2)+2` with `a(0)=0, a(1)=0`
-/

namespace A019274.P14139806031149399444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + a (n - 2) + 2

end

end A019274.P14139806031149399444

noncomputable section

/-- A019274: Number of recursive calls needed to compute the n-th Fibonacci number F(n), starting with F(1) = F(2) = 1.

Offset 1, canonical program `A019274.P14139806031149399444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019274 (n : ℕ) : ℤ :=
  (A019274.P14139806031149399444.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019274.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019298.P3510953320221201697

`floor((n²+1)*(2*n+3)/8)`
-/

namespace A019298.P3510953320221201697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 1) * (2 * n + 3) : ℚ) / 8⌋

end

end A019298.P3510953320221201697

noncomputable section

/-- A019298: Number of balls in pyramid with base either a regular hexagon or a hexagon with alternate sides differing by 1 (balls in hexagonal pyramid of height n taken from hexagonal close-packing).

Offset 0, canonical program `A019298.P3510953320221201697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019298 (n : ℕ) : ℤ :=
  A019298.P3510953320221201697.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019298.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019310.P10295192754378413312

`2*a(n-1)+(-1)^(n+1)*a(ceil((n+1)/2)-1)` with `a(0)=0, a(1)=2`
-/

namespace A019310.P10295192754378413312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * a (n - 1) + (-1) ^ (n + 1) * a (⌈(n + 1 : ℚ) / 2⌉ - 1).toNat

end

end A019310.P10295192754378413312

noncomputable section

/-- A019310: Number of words of length n (n >= 1) over a two-letter alphabet having a minimal period of size n-1.

Offset 1, canonical program `A019310.P10295192754378413312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019310 (n : ℕ) : ℤ :=
  A019310.P10295192754378413312.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019316.P3695255342503388554

`13*a(n-1)-42*a(n-2)+4^n` with `a(0)=1, a(1)=17`
-/

namespace A019316.P3695255342503388554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 17] fun n a =>
  13 * a (n - 1) - 42 * a (n - 2) + (4 ^ n : ℤ)

end

end A019316.P3695255342503388554

noncomputable section

/-- A019316: Expansion of 1/((1-4x)(1-6x)(1-7x)).

Offset 0, canonical program `A019316.P3695255342503388554`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019316 (n : ℕ) : ℤ :=
  A019316.P3695255342503388554.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019333.P16700433820639439913

`2*4^n-9*6^n+8*8^n`
-/

namespace A019333.P16700433820639439913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - (9 * 6 ^ n : ℤ) + (8 * 8 ^ n : ℤ)

end

end A019333.P16700433820639439913

noncomputable section

/-- A019333: Expansion of g.f. 1/((1-4*x)*(1-6*x)*(1-8*x)).

Offset 0, canonical program `A019333.P16700433820639439913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019333 (n : ℕ) : ℤ :=
  A019333.P16700433820639439913.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019333.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019425.P4664560728438288772

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1, a(5)=8`
-/

namespace A019425.P4664560728438288772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4, 1, 8] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019425.P4664560728438288772

noncomputable section

/-- A019425: Continued fraction for tan(1/2).

Offset 0, canonical program `A019425.P4664560728438288772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019425 (n : ℕ) : ℤ :=
  A019425.P4664560728438288772.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019425.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019426.P5184335410156883328

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=7, a(4)=1, a(5)=13`
-/

namespace A019426.P5184335410156883328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 7, 1, 13] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019426.P5184335410156883328

noncomputable section

/-- A019426: Continued fraction for tan(1/3).

Offset 0, canonical program `A019426.P5184335410156883328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019426 (n : ℕ) : ℤ :=
  A019426.P5184335410156883328.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019427.P2752156077458550682

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=10, a(4)=1, a(5)=18`
-/

namespace A019427.P2752156077458550682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1, 10, 1, 18] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019427.P2752156077458550682

noncomputable section

/-- A019427: Continued fraction for tan(1/4).

Offset 0, canonical program `A019427.P2752156077458550682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019427 (n : ℕ) : ℤ :=
  A019427.P2752156077458550682.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019428.P1633961522026332630

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=13, a(4)=1, a(5)=23`
-/

namespace A019428.P1633961522026332630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1, 13, 1, 23] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019428.P1633961522026332630

noncomputable section

/-- A019428: Continued fraction for tan(1/5).

Offset 0, canonical program `A019428.P1633961522026332630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019428 (n : ℕ) : ℤ :=
  A019428.P1633961522026332630.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019430.P9990763983225501317

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=1, a(3)=19, a(4)=1, a(5)=33`
-/

namespace A019430.P9990763983225501317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 1, 19, 1, 33] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019430.P9990763983225501317

noncomputable section

/-- A019430: Continued fraction for tan(1/7).

Offset 0, canonical program `A019430.P9990763983225501317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019430 (n : ℕ) : ℤ :=
  A019430.P9990763983225501317.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019431.P14463002170413750271

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=7, a(2)=1, a(3)=22, a(4)=1, a(5)=38`
-/

namespace A019431.P14463002170413750271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 1, 22, 1, 38] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019431.P14463002170413750271

noncomputable section

/-- A019431: Continued fraction for tan(1/8).

Offset 0, canonical program `A019431.P14463002170413750271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019431 (n : ℕ) : ℤ :=
  A019431.P14463002170413750271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019431.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019432.P8971734438423640413

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=8, a(2)=1, a(3)=25, a(4)=1, a(5)=43`
-/

namespace A019432.P8971734438423640413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 1, 25, 1, 43] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019432.P8971734438423640413

noncomputable section

/-- A019432: Continued fraction for tan(1/9).

Offset 0, canonical program `A019432.P8971734438423640413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019432 (n : ℕ) : ℤ :=
  A019432.P8971734438423640413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019432.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019433.P13550741640831212000

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=9, a(2)=1, a(3)=28, a(4)=1, a(5)=48`
-/

namespace A019433.P13550741640831212000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9, 1, 28, 1, 48] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019433.P13550741640831212000

noncomputable section

/-- A019433: Continued fraction for tan(1/10).

Offset 0, canonical program `A019433.P13550741640831212000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019433 (n : ℕ) : ℤ :=
  A019433.P13550741640831212000.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019443.P17161750368594420472

`15*a(n-1)-54*a(n-2)+4^n` with `a(0)=1, a(1)=19`
-/

namespace A019443.P17161750368594420472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  15 * a (n - 1) - 54 * a (n - 2) + (4 ^ n : ℤ)

end

end A019443.P17161750368594420472

noncomputable section

/-- A019443: Expansion of 1/((1-4x)(1-6x)(1-9x)).

Offset 0, canonical program `A019443.P17161750368594420472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019443 (n : ℕ) : ℤ :=
  A019443.P17161750368594420472.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019475.P17355648572048684120

`1+floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=10`
-/

namespace A019475.P17355648572048684120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  1 + ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A019475.P17355648572048684120

noncomputable section

/-- A019475: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(2,10).

Offset 0, canonical program `A019475.P17355648572048684120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019475 (n : ℕ) : ℤ :=
  A019475.P17355648572048684120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019477.P3621584223660582927

`floor(a(n-1)²/a(n-2))+1` with `a(0)=3, a(1)=15`
-/

namespace A019477.P3621584223660582927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A019477.P3621584223660582927

noncomputable section

/-- A019477: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(3,15) (agrees with A019478 only for n <= 23).

Offset 0, canonical program `A019477.P3621584223660582927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019477 (n : ℕ) : ℤ :=
  A019477.P3621584223660582927.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019479.P2755745668724281318

`3*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=8, a(2)=17, a(3)=37`
-/

namespace A019479.P2755745668724281318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 17, 37] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + a (n - 3) - a (n - 4)

end

end A019479.P2755745668724281318

noncomputable section

/-- A019479: Define the sequence S(a_0,a_1) by a_{n+2} is the least integer such that a_{n+2}/a_{n+1}>a_{n+1}/a_n for n >= 0. This is S(4,8).

Offset 0, canonical program `A019479.P2755745668724281318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019479 (n : ℕ) : ℤ :=
  A019479.P2755745668724281318.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019482.P4818091064306123814

`floor(a(n-1)²/a(n-2))+1` with `a(0)=4, a(1)=28`
-/

namespace A019482.P4818091064306123814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 28] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A019482.P4818091064306123814

noncomputable section

/-- A019482: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(4,28).

Offset 0, canonical program `A019482.P4818091064306123814`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019482 (n : ℕ) : ℤ :=
  A019482.P4818091064306123814.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019483.P4190400103270749138

`16*a(n-1)-60*a(n-2)+4^n` with `a(0)=1, a(1)=20`
-/

namespace A019483.P4190400103270749138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  16 * a (n - 1) - 60 * a (n - 2) + (4 ^ n : ℤ)

end

end A019483.P4190400103270749138

noncomputable section

/-- A019483: Expansion of 1/((1-4x)(1-6x)(1-10x)).

Offset 0, canonical program `A019483.P4190400103270749138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019483 (n : ℕ) : ℤ :=
  A019483.P4190400103270749138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019488.P1714252224409862174

`17*a(n-1)-66*a(n-2)+4^n` with `a(0)=1, a(1)=21`
-/

namespace A019488.P1714252224409862174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  17 * a (n - 1) - 66 * a (n - 2) + (4 ^ n : ℤ)

end

end A019488.P1714252224409862174

noncomputable section

/-- A019488: Expansion of 1/((1-4*x)*(1-6*x)*(1-11*x)).

Offset 0, canonical program `A019488.P1714252224409862174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019488 (n : ℕ) : ℤ :=
  A019488.P1714252224409862174.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019489.P12508437616240158820

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=7`
-/

namespace A019489.P12508437616240158820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A019489.P12508437616240158820

noncomputable section

/-- A019489: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(3,7).

Offset 0, canonical program `A019489.P12508437616240158820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019489 (n : ℕ) : ℤ :=
  A019489.P12508437616240158820.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019490.P9194274155059536206

`4^n-3*6^n+3*12^n`
-/

namespace A019490.P9194274155059536206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - (3 * 6 ^ n : ℤ) + (3 * 12 ^ n : ℤ)

end

end A019490.P9194274155059536206

noncomputable section

/-- A019490: Expansion of 1/((1-4*x)*(1-6*x)*(1-12*x)).

Offset 0, canonical program `A019490.P9194274155059536206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019490 (n : ℕ) : ℤ :=
  A019490.P9194274155059536206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019494.P14862368479946508397

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=10`
-/

namespace A019494.P14862368479946508397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A019494.P14862368479946508397

noncomputable section

/-- A019494: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(4,10).

Offset 0, canonical program `A019494.P14862368479946508397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019494 (n : ℕ) : ℤ :=
  A019494.P14862368479946508397.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019495.P9862166719143210799

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=11`
-/

namespace A019495.P9862166719143210799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 11] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A019495.P9862166719143210799

noncomputable section

/-- A019495: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(4,11).

Offset 0, canonical program `A019495.P9862166719143210799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019495 (n : ℕ) : ℤ :=
  A019495.P9862166719143210799.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019512.P1583111463133559292

`15*a(n-1)-56*a(n-2)+4^n` with `a(0)=1, a(1)=19`
-/

namespace A019512.P1583111463133559292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  15 * a (n - 1) - 56 * a (n - 2) + (4 ^ n : ℤ)

end

end A019512.P1583111463133559292

noncomputable section

/-- A019512: Expansion of 1/((1-4*x)*(1-7*x)*(1-8*x)).

Offset 0, canonical program `A019512.P1583111463133559292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019512 (n : ℕ) : ℤ :=
  A019512.P1583111463133559292.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019525.P346191500954382354

`2*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A019525.P346191500954382354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 3 * a (n - 3)

end

end A019525.P346191500954382354

noncomputable section

/-- A019525: Poincaré series [or Poincare series] for depths of roots in a certain root system.

Offset 1, canonical program `A019525.P346191500954382354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019525 (n : ℕ) : ℤ :=
  A019525.P346191500954382354.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019526.P16934594003973705152

`2*a(n-1)-a(n-5)` with `a(0)=4, a(1)=5, a(2)=8, a(3)=13, a(4)=24`
-/

namespace A019526.P16934594003973705152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5, 8, 13, 24] fun n a =>
  2 * a (n - 1) - a (n - 5)

end

end A019526.P16934594003973705152

noncomputable section

/-- A019526: Poincaré series [or Poincare series] for depths of roots in a certain root system.

Offset 1, canonical program `A019526.P16934594003973705152`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019526 (n : ℕ) : ℤ :=
  A019526.P16934594003973705152.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019527.P2824217214792039722

`a(n-1)+a(n-3)-2` with `a(0)=4, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A019527.P2824217214792039722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 5, 6] fun n a =>
  a (n - 1) + a (n - 3) - 2

end

end A019527.P2824217214792039722

noncomputable section

/-- A019527: Poincaré series [or Poincare series] for depths of roots in a certain root system.

Offset 1, canonical program `A019527.P2824217214792039722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019527 (n : ℕ) : ℤ :=
  A019527.P2824217214792039722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019557.P403049892568768982

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=12, a(2)=30`
-/

namespace A019557.P403049892568768982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 30] fun n a =>
  2 * a (n - 1) - a (n - 2)

end

end A019557.P403049892568768982

noncomputable section

/-- A019557: Coordination sequence for G_2 lattice.

Offset 0, canonical program `A019557.P403049892568768982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019557 (n : ℕ) : ℤ :=
  A019557.P403049892568768982.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019557.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019559.P9089828507763916493

`4*floor((n+5)/5)+2*floor((n+3)/5)-6*floor(n/5)`
-/

namespace A019559.P9089828507763916493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊(n + 5 : ℚ) / 5⌋ + 2 * ⌊(n + 3 : ℚ) / 5⌋ - 6 * ⌊(n : ℚ) / 5⌋

end

end A019559.P9089828507763916493

noncomputable section

/-- A019559: Period 5: repeat [4, 4, 6, 6, 6].

Offset 0, canonical program `A019559.P9089828507763916493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019559 (n : ℕ) : ℤ :=
  A019559.P9089828507763916493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019559.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019582.P8715587689350565725

`n*(n-1)^3/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019582.P8715587689350565725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) ^ 3 : ℚ) / 2

end

end A019582.P8715587689350565725

noncomputable section

/-- A019582: a(n) = n*(n - 1)^3/2.

Offset 0, canonical program `A019582.P8715587689350565725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019582.P8715587689350565725.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019583.P1899492925356292807

`n*(n-1)^4/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019583.P1899492925356292807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) ^ 4 : ℚ) / 2

end

end A019583.P1899492925356292807

noncomputable section

/-- A019583: a(n) = n*(n-1)^4/2.

Offset 0, canonical program `A019583.P1899492925356292807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019583 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019583.P1899492925356292807.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019584.P16996877092108699856

`n²*(n-1)^3/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A019584.P16996877092108699856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n : ℤ) - 1) ^ 3 : ℚ) / 4

end

end A019584.P16996877092108699856

noncomputable section

/-- A019584: a(n) = n^2*(n-1)^3/4.

Offset 0, canonical program `A019584.P16996877092108699856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019584 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019584.P16996877092108699856.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019613.P13903313505101760533

`16*a(n-1)-63*a(n-2)+4^n` with `a(0)=1, a(1)=20`
-/

namespace A019613.P13903313505101760533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  16 * a (n - 1) - 63 * a (n - 2) + (4 ^ n : ℤ)

end

end A019613.P13903313505101760533

noncomputable section

/-- A019613: Expansion of 1/((1-4*x)*(1-7*x)*(1-9*x)).

Offset 0, canonical program `A019613.P13903313505101760533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019613 (n : ℕ) : ℤ :=
  A019613.P13903313505101760533.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019618.P16205834622629129256

`17*a(n-1)-70*a(n-2)+4^n` with `a(0)=1, a(1)=21`
-/

namespace A019618.P16205834622629129256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  17 * a (n - 1) - 70 * a (n - 2) + (4 ^ n : ℤ)

end

end A019618.P16205834622629129256

noncomputable section

/-- A019618: Expansion of 1/((1-4*x)*(1-7*x)*(1-10*x)).

Offset 0, canonical program `A019618.P16205834622629129256`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019618 (n : ℕ) : ℤ :=
  A019618.P16205834622629129256.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019623.P16051018784221998972

`18*a(n-1)-77*a(n-2)+4^n` with `a(0)=1, a(1)=22`
-/

namespace A019623.P16051018784221998972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  18 * a (n - 1) - 77 * a (n - 2) + (4 ^ n : ℤ)

end

end A019623.P16051018784221998972

noncomputable section

/-- A019623: Expansion of 1/((1-4*x)*(1-7*x)*(1-11*x)).

Offset 0, canonical program `A019623.P16051018784221998972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019623 (n : ℕ) : ℤ :=
  A019623.P16051018784221998972.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019623.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019628.P2074264496398320172

`19*a(n-1)-84*a(n-2)+4^n` with `a(0)=1, a(1)=23`
-/

namespace A019628.P2074264496398320172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  19 * a (n - 1) - 84 * a (n - 2) + (4 ^ n : ℤ)

end

end A019628.P2074264496398320172

noncomputable section

/-- A019628: Expansion of 1/((1-4*x)*(1-7*x)*(1-12*x)).

Offset 0, canonical program `A019628.P2074264496398320172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019628 (n : ℕ) : ℤ :=
  A019628.P2074264496398320172.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019664.P15122626023031465653

`17*a(n-1)-72*a(n-2)+4^n` with `a(0)=1, a(1)=21`
-/

namespace A019664.P15122626023031465653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + (4 ^ n : ℤ)

end

end A019664.P15122626023031465653

noncomputable section

/-- A019664: Expansion of 1/((1-4x)(1-8x)(1-9x)).

Offset 0, canonical program `A019664.P15122626023031465653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019664 (n : ℕ) : ℤ :=
  A019664.P15122626023031465653.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019671.P12193430180649729118

`18*a(n-1)-80*a(n-2)+4^n` with `a(0)=1, a(1)=22`
-/

namespace A019671.P12193430180649729118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  18 * a (n - 1) - 80 * a (n - 2) + (4 ^ n : ℤ)

end

end A019671.P12193430180649729118

noncomputable section

/-- A019671: Expansion of 1/((1-4x)(1-8x)(1-10x)).

Offset 0, canonical program `A019671.P12193430180649729118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019671 (n : ℕ) : ℤ :=
  A019671.P12193430180649729118.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019671.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019672.P9743396269094188032

`19*a(n-1)-88*a(n-2)+4^n` with `a(0)=1, a(1)=23`
-/

namespace A019672.P9743396269094188032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  19 * a (n - 1) - 88 * a (n - 2) + (4 ^ n : ℤ)

end

end A019672.P9743396269094188032

noncomputable section

/-- A019672: Expansion of 1/((1-4x)(1-8x)(1-11x)).

Offset 0, canonical program `A019672.P9743396269094188032`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019672 (n : ℕ) : ℤ :=
  A019672.P9743396269094188032.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019677.P16679642819922517696

`24*a(n-1)-176*a(n-2)+384*a(n-3)` with `a(0)=1, a(1)=24, a(2)=400`
-/

namespace A019677.P16679642819922517696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 400] fun n a =>
  24 * a (n - 1) - 176 * a (n - 2) + 384 * a (n - 3)

end

end A019677.P16679642819922517696

noncomputable section

/-- A019677: Expansion of 1/((1-4x)(1-8x)(1-12x)).

Offset 0, canonical program `A019677.P16679642819922517696`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019677 (n : ℕ) : ℤ :=
  A019677.P16679642819922517696.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019682.P3324349732116862997

`19*a(n-1)-90*a(n-2)+4^n` with `a(0)=1, a(1)=23`
-/

namespace A019682.P3324349732116862997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (4 ^ n : ℤ)

end

end A019682.P3324349732116862997

noncomputable section

/-- A019682: Expansion of 1/((1-4*x)*(1-9*x)*(1-10*x)).

Offset 0, canonical program `A019682.P3324349732116862997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019682 (n : ℕ) : ℤ :=
  A019682.P3324349732116862997.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019687.P17922009008950822254

`20*a(n-1)-99*a(n-2)+4^n` with `a(0)=1, a(1)=24`
-/

namespace A019687.P17922009008950822254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (4 ^ n : ℤ)

end

end A019687.P17922009008950822254

noncomputable section

/-- A019687: Expansion of 1/((1-4x)(1-9x)(1-11x)).

Offset 0, canonical program `A019687.P17922009008950822254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019687 (n : ℕ) : ℤ :=
  A019687.P17922009008950822254.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019722.P8122024978519327586

`2*4^n/5-3^(2*n+3)/5+12^n*6`
-/

namespace A019722.P8122024978519327586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℚ) / 5 - (3 ^ (2 * n + 3) : ℚ) / 5 + (12 ^ n * 6 : ℚ)

end

end A019722.P8122024978519327586

noncomputable section

/-- A019722: Expansion of 1/((1-4x)(1-9x)(1-12x)).

Offset 0, canonical program `A019722.P8122024978519327586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019722 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A019722.P8122024978519327586.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019742.P18012483491542826860

`21*a(n-1)-110*a(n-2)+4^n` with `a(0)=1, a(1)=25`
-/

namespace A019742.P18012483491542826860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (4 ^ n : ℤ)

end

end A019742.P18012483491542826860

noncomputable section

/-- A019742: Expansion of 1/((1-4x)(1-10x)(1-11x)).

Offset 0, canonical program `A019742.P18012483491542826860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019742 (n : ℕ) : ℤ :=
  A019742.P18012483491542826860.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019747.P16580310711333616400

`22*a(n-1)-120*a(n-2)+4^n` with `a(0)=1, a(1)=26`
-/

namespace A019747.P16580310711333616400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (4 ^ n : ℤ)

end

end A019747.P16580310711333616400

noncomputable section

/-- A019747: Expansion of 1/((1-4x)(1-10x)(1-12x)).

Offset 0, canonical program `A019747.P16580310711333616400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019747 (n : ℕ) : ℤ :=
  A019747.P16580310711333616400.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019747.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019752.P3421644334659185664

`23*a(n-1)-132*a(n-2)+4^n` with `a(0)=1, a(1)=27`
-/

namespace A019752.P3421644334659185664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (4 ^ n : ℤ)

end

end A019752.P3421644334659185664

noncomputable section

/-- A019752: G.f.: 1/((1-4x)(1-11x)(1-12x)).

Offset 0, canonical program `A019752.P3421644334659185664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019752 (n : ℕ) : ℤ :=
  A019752.P3421644334659185664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019757.P410345754025394370

`13*a(n-1)-42*a(n-2)+5^n` with `a(0)=1, a(1)=18`
-/

namespace A019757.P410345754025394370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18] fun n a =>
  13 * a (n - 1) - 42 * a (n - 2) + (5 ^ n : ℤ)

end

end A019757.P410345754025394370

noncomputable section

/-- A019757: Expansion of 1/((1-5*x)(1-6*x)(1-7*x)).

Offset 0, canonical program `A019757.P410345754025394370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019757 (n : ℕ) : ℤ :=
  A019757.P410345754025394370.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019783.P1391654858361693251

`14*a(n-1)-48*a(n-2)+5^n` with `a(0)=1, a(1)=19`
-/

namespace A019783.P1391654858361693251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 19] fun n a =>
  14 * a (n - 1) - 48 * a (n - 2) + (5 ^ n : ℤ)

end

end A019783.P1391654858361693251

noncomputable section

/-- A019783: Expansion of 1/((1-5*x)*(1-6*x)*(1-8*x)).

Offset 0, canonical program `A019783.P1391654858361693251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019783 (n : ℕ) : ℤ :=
  A019783.P1391654858361693251.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019793.P10745697896409494973

`15*a(n-1)-54*a(n-2)+5^n` with `a(0)=1, a(1)=20`
-/

namespace A019793.P10745697896409494973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  15 * a (n - 1) - 54 * a (n - 2) + (5 ^ n : ℤ)

end

end A019793.P10745697896409494973

noncomputable section

/-- A019793: Expansion of 1/((1-5x)(1-6x)(1-9x)).

Offset 0, canonical program `A019793.P10745697896409494973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019793 (n : ℕ) : ℤ :=
  A019793.P10745697896409494973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019793.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019839.P13373449803310149527

`5*5^n-9*6^n+5*10^n`
-/

namespace A019839.P13373449803310149527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * 5 ^ n : ℤ) - (9 * 6 ^ n : ℤ) + (5 * 10 ^ n : ℤ)

end

end A019839.P13373449803310149527

noncomputable section

/-- A019839: Expansion of 1/((1-5x)(1-6x)(1-10x)).

Offset 0, canonical program `A019839.P13373449803310149527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019839 (n : ℕ) : ℤ :=
  A019839.P13373449803310149527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019854.P2247731442989983321

`17*a(n-1)-66*a(n-2)+5^n` with `a(0)=1, a(1)=22`
-/

namespace A019854.P2247731442989983321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  17 * a (n - 1) - 66 * a (n - 2) + (5 ^ n : ℤ)

end

end A019854.P2247731442989983321

noncomputable section

/-- A019854: Expansion of 1/((1-5x)(1-6x)(1-11x)).

Offset 0, canonical program `A019854.P2247731442989983321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019854 (n : ℕ) : ℤ :=
  A019854.P2247731442989983321.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019869.P1250964608027387155

`18*a(n-1)-72*a(n-2)+5^n` with `a(0)=1, a(1)=23`
-/

namespace A019869.P1250964608027387155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  18 * a (n - 1) - 72 * a (n - 2) + (5 ^ n : ℤ)

end

end A019869.P1250964608027387155

noncomputable section

/-- A019869: Expansion of 1/((1-5*x)*(1-6*x)*(1-12*x)).

Offset 0, canonical program `A019869.P1250964608027387155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019869 (n : ℕ) : ℤ :=
  A019869.P1250964608027387155.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019869.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019928.P13040171382313327413

`15*a(n-1)-56*a(n-2)+5^n` with `a(0)=1, a(1)=20`
-/

namespace A019928.P13040171382313327413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  15 * a (n - 1) - 56 * a (n - 2) + (5 ^ n : ℤ)

end

end A019928.P13040171382313327413

noncomputable section

/-- A019928: Expansion of 1/((1-5x)(1-7x)(1-8x)).

Offset 0, canonical program `A019928.P13040171382313327413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019928 (n : ℕ) : ℤ :=
  A019928.P13040171382313327413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019943.P14829080063701238804

`16*a(n-1)-63*a(n-2)+5^n` with `a(0)=1, a(1)=21`
-/

namespace A019943.P14829080063701238804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21] fun n a =>
  16 * a (n - 1) - 63 * a (n - 2) + (5 ^ n : ℤ)

end

end A019943.P14829080063701238804

noncomputable section

/-- A019943: Expansion of 1/((1-5*x)*(1-7*x)*(1-9*x)).

Offset 0, canonical program `A019943.P14829080063701238804`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019943 (n : ℕ) : ℤ :=
  A019943.P14829080063701238804.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A019958.P5129313094110022891

`17*a(n-1)-70*a(n-2)+5^n` with `a(0)=1, a(1)=22`
-/

namespace A019958.P5129313094110022891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  17 * a (n - 1) - 70 * a (n - 2) + (5 ^ n : ℤ)

end

end A019958.P5129313094110022891

noncomputable section

/-- A019958: Expansion of 1/((1-5*x)*(1-7*x)*(1-10*x)).

Offset 0, canonical program `A019958.P5129313094110022891`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019958 (n : ℕ) : ℤ :=
  A019958.P5129313094110022891.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A019958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020000.P14070388581886057387

`18*a(n-1)-77*a(n-2)+5^n` with `a(0)=1, a(1)=23`
-/

namespace A020000.P14070388581886057387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  18 * a (n - 1) - 77 * a (n - 2) + (5 ^ n : ℤ)

end

end A020000.P14070388581886057387

noncomputable section

/-- A020000: Expansion of 1/((1-5*x)*(1-7*x)*(1-11*x)).

Offset 0, canonical program `A020000.P14070388581886057387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020000 (n : ℕ) : ℤ :=
  A020000.P14070388581886057387.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020330.P7025260452739219137

`n+1+2*(n+1)*2^floor(log2(n+1))`
-/

namespace A020330.P7025260452739219137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + 2 * (n + 1) * 2 ^ Nat.log 2 (n + 1)

end

end A020330.P7025260452739219137

noncomputable section

/-- A020330: Numbers whose base-2 representation is the juxtaposition of two identical strings.

Offset 1, canonical program `A020330.P7025260452739219137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020330 (n : ℕ) : ℤ :=
  (A020330.P7025260452739219137.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020330.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020341.P15744807086686120631

`19*a(n-1)-84*a(n-2)+5^n` with `a(0)=1, a(1)=24`
-/

namespace A020341.P15744807086686120631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  19 * a (n - 1) - 84 * a (n - 2) + (5 ^ n : ℤ)

end

end A020341.P15744807086686120631

noncomputable section

/-- A020341: Expansion of 1/((1-5x)(1-7x)(1-12x)).

Offset 0, canonical program `A020341.P15744807086686120631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020341 (n : ℕ) : ℤ :=
  A020341.P15744807086686120631.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020343.P17103005101680755248

`17*a(n-1)-72*a(n-2)+5^n` with `a(0)=1, a(1)=22`
-/

namespace A020343.P17103005101680755248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + (5 ^ n : ℤ)

end

end A020343.P17103005101680755248

noncomputable section

/-- A020343: Expansion of 1/((1-5x)(1-8x)(1-9x)).

Offset 0, canonical program `A020343.P17103005101680755248`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020343 (n : ℕ) : ℤ :=
  A020343.P17103005101680755248.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020346.P12811642035565518265

`5^(n+1)/3-32*8^n/3+10^(n+1)`
-/

namespace A020346.P12811642035565518265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℚ) / 3 - (32 * 8 ^ n : ℚ) / 3 + (10 ^ (n + 1) : ℚ)

end

end A020346.P12811642035565518265

noncomputable section

/-- A020346: Expansion of 1/((1-5x)(1-8x)(1-10x)).

Offset 0, canonical program `A020346.P12811642035565518265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020346 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020346.P12811642035565518265.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020346.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020447.P10318033105309083517

`19*a(n-1)-88*a(n-2)+5^n` with `a(0)=1, a(1)=24`
-/

namespace A020447.P10318033105309083517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  19 * a (n - 1) - 88 * a (n - 2) + (5 ^ n : ℤ)

end

end A020447.P10318033105309083517

noncomputable section

/-- A020447: Expansion of 1/((1-5*x) * (1-8*x) * (1-11*x)).

Offset 0, canonical program `A020447.P10318033105309083517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020447 (n : ℕ) : ℤ :=
  A020447.P10318033105309083517.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020448.P17408917405240233687

`20*a(n-1)-96*a(n-2)+5^n` with `a(0)=1, a(1)=25`
-/

namespace A020448.P17408917405240233687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  20 * a (n - 1) - 96 * a (n - 2) + (5 ^ n : ℤ)

end

end A020448.P17408917405240233687

noncomputable section

/-- A020448: Expansion of 1/((1-5x)(1-8x)(1-12x)).

Offset 0, canonical program `A020448.P17408917405240233687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020448 (n : ℕ) : ℤ :=
  A020448.P17408917405240233687.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020494.P6571133285840443077

`19*a(n-1)-90*a(n-2)+5^n` with `a(0)=1, a(1)=24`
-/

namespace A020494.P6571133285840443077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (5 ^ n : ℤ)

end

end A020494.P6571133285840443077

noncomputable section

/-- A020494: Expansion of 1/((1-5x)(1-9x)(1-10x)).

Offset 0, canonical program `A020494.P6571133285840443077`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020494 (n : ℕ) : ℤ :=
  A020494.P6571133285840443077.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020499.P5824353386130562467

`20*a(n-1)-99*a(n-2)+5^n` with `a(0)=1, a(1)=25`
-/

namespace A020499.P5824353386130562467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (5 ^ n : ℤ)

end

end A020499.P5824353386130562467

noncomputable section

/-- A020499: Expansion of 1/((1-5x)(1-9x)(1-11x)).

Offset 0, canonical program `A020499.P5824353386130562467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020499 (n : ℕ) : ℤ :=
  A020499.P5824353386130562467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020517.P5044514784341682407

`1+8^n+64^n`
-/

namespace A020517.P5044514784341682407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 8 ^ n + 64 ^ n

end

end A020517.P5044514784341682407

noncomputable section

/-- A020517: 9th cyclotomic polynomial evaluated at powers of 2.

Offset 0, canonical program `A020517.P5044514784341682407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020517 (n : ℕ) : ℤ :=
  (A020517.P5044514784341682407.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020518.P5655041485655133344

`1-2^n+4^n-8^n+16^n`
-/

namespace A020518.P5655041485655133344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 ^ n : ℤ) + (4 ^ n : ℤ) - (8 ^ n : ℤ) + (16 ^ n : ℤ)

end

end A020518.P5655041485655133344

noncomputable section

/-- A020518: 10th cyclotomic polynomial evaluated at powers of 2.

Offset 0, canonical program `A020518.P5655041485655133344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020518 (n : ℕ) : ℤ :=
  A020518.P5655041485655133344.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020518.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020520.P6546243196613924140

`1-4^n+16^n`
-/

namespace A020520.P6546243196613924140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (4 ^ n : ℤ) + (16 ^ n : ℤ)

end

end A020520.P6546243196613924140

noncomputable section

/-- A020520: 12th cyclotomic polynomial evaluated at powers of 2.

Offset 0, canonical program `A020520.P6546243196613924140`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020520 (n : ℕ) : ℤ :=
  A020520.P6546243196613924140.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020520.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020523.P3680637236288114178

`4*8^n-6*4^n+1`
-/

namespace A020523.P3680637236288114178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * 8 ^ n : ℤ) - (6 * 4 ^ n : ℤ) + 1

end

end A020523.P3680637236288114178

noncomputable section

/-- A020523: a(n) = 3rd Euler polynomial evaluated at 2^n and multiplied by 4.

Offset 0, canonical program `A020523.P3680637236288114178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020523 (n : ℕ) : ℤ :=
  A020523.P3680637236288114178.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020524.P7251791875949894759

`2^n-2^(1+3*n)+16^n`
-/

namespace A020524.P7251791875949894759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 ^ (1 + 3 * n) : ℤ) + (16 ^ n : ℤ)

end

end A020524.P7251791875949894759

noncomputable section

/-- A020524: a(n) = 4th Euler polynomial evaluated at 2^n.

Offset 0, canonical program `A020524.P7251791875949894759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020524 (n : ℕ) : ℤ :=
  A020524.P7251791875949894759.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020527.P17983622019166158158

`6*(4^n-2^n)+1`
-/

namespace A020527.P17983622019166158158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((4 ^ n : ℤ) - (2 ^ n : ℤ)) + 1

end

end A020527.P17983622019166158158

noncomputable section

/-- A020527: 2nd Bernoulli polynomial evaluated at powers of 2 (multiplied by 6).

Offset 0, canonical program `A020527.P17983622019166158158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020527 (n : ℕ) : ℤ :=
  A020527.P17983622019166158158.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020528.P11800271604530171402

`6*8^n-9*4^n+3*2^n`
-/

namespace A020528.P11800271604530171402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 8 ^ n : ℤ) - (9 * 4 ^ n : ℤ) + (3 * 2 ^ n : ℤ)

end

end A020528.P11800271604530171402

noncomputable section

/-- A020528: 3rd Bernoulli polynomial evaluated at powers of 2 (multiplied by 6).

Offset 0, canonical program `A020528.P11800271604530171402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020528 (n : ℕ) : ℤ :=
  A020528.P11800271604530171402.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020529.P1265996327337367783

`30*16^n-60*8^n+30*4^n-1`
-/

namespace A020529.P1265996327337367783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (30 * 16 ^ n : ℤ) - (60 * 8 ^ n : ℤ) + (30 * 4 ^ n : ℤ) - 1

end

end A020529.P1265996327337367783

noncomputable section

/-- A020529: 4th Bernoulli polynomial evaluated at powers of 2 (multiplied by 30).

Offset 0, canonical program `A020529.P1265996327337367783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020529 (n : ℕ) : ℤ :=
  A020529.P1265996327337367783.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020531.P10485678505940793675

`1+3*4^n+16^n`
-/

namespace A020531.P10485678505940793675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * 4 ^ n + 16 ^ n

end

end A020531.P10485678505940793675

noncomputable section

/-- A020531: a(n) = 5th Fibonacci polynomial evaluated at 2^n.

Offset 0, canonical program `A020531.P10485678505940793675`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020531 (n : ℕ) : ℤ :=
  (A020531.P10485678505940793675.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020532.P2861734121257254508

`2^n*(3+4^(1+n)+16^n)`
-/

namespace A020532.P2861734121257254508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (3 + 4 ^ (1 + n) + 16 ^ n)

end

end A020532.P2861734121257254508

noncomputable section

/-- A020532: a(n) = 6th Fibonacci polynomial evaluated at 2^n.

Offset 0, canonical program `A020532.P2861734121257254508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020532 (n : ℕ) : ℤ :=
  (A020532.P2861734121257254508.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020533.P9555811036588071828

`1+3*2^(1+2*n)+5*16^n+64^n`
-/

namespace A020533.P9555811036588071828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 * 2 ^ (1 + 2 * n) + 5 * 16 ^ n + 64 ^ n

end

end A020533.P9555811036588071828

noncomputable section

/-- A020533: a(n) = 7th Fibonacci polynomial evaluated at 2^n.

Offset 0, canonical program `A020533.P9555811036588071828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020533 (n : ℕ) : ℤ :=
  (A020533.P9555811036588071828.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020538.P17649233711124835802

`1-2^(3+2*n)+2^(3+4*n)`
-/

namespace A020538.P17649233711124835802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 ^ (3 + 2 * n) : ℤ) + (2 ^ (3 + 4 * n) : ℤ)

end

end A020538.P17649233711124835802

noncomputable section

/-- A020538: a(n) = 4th Chebyshev polynomial (first kind) evaluated at 2^n.

Offset 0, canonical program `A020538.P17649233711124835802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020538 (n : ℕ) : ℤ :=
  A020538.P17649233711124835802.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020538.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020539.P13495235315856166313

`2^n*(5-5*4^(1+n)+16^(1+n))`
-/

namespace A020539.P13495235315856166313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (5 - (5 * 4 ^ (1 + n) : ℤ) + (16 ^ (1 + n) : ℤ))

end

end A020539.P13495235315856166313

noncomputable section

/-- A020539: a(n) = 5th Chebyshev polynomial (first kind) evaluated at 2^n.

Offset 0, canonical program `A020539.P13495235315856166313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020539 (n : ℕ) : ℤ :=
  A020539.P13495235315856166313.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020541.P3790213956886285013

`16^(n+1)-3*4^(n+1)+1`
-/

namespace A020541.P3790213956886285013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ (n + 1) : ℤ) - (3 * 4 ^ (n + 1) : ℤ) + 1

end

end A020541.P3790213956886285013

noncomputable section

/-- A020541: a(n) = 4th Chebyshev polynomial (second kind) evaluated at 2^n.

Offset 0, canonical program `A020541.P3790213956886285013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020541 (n : ℕ) : ℤ :=
  A020541.P3790213956886285013.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020542.P12432770559341870108

`2^(1+n)*(3-4^(2+n)+16^(1+n))`
-/

namespace A020542.P12432770559341870108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (1 + n) : ℤ) * (3 - (4 ^ (2 + n) : ℤ) + (16 ^ (1 + n) : ℤ))

end

end A020542.P12432770559341870108

noncomputable section

/-- A020542: a(n) = 5th Chebyshev polynomial (second kind) evaluated at 2^n.

Offset 0, canonical program `A020542.P12432770559341870108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020542 (n : ℕ) : ℤ :=
  A020542.P12432770559341870108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020543.P5649233965623340607

`2*n!-1`
-/

namespace A020543.P5649233965623340607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - 1

end

end A020543.P5649233965623340607

noncomputable section

/-- A020543: a(0) = 1, a(1) = 1, a(n+1) = (n+1)*a(n) + n.

Offset 0, canonical program `A020543.P5649233965623340607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020543 (n : ℕ) : ℤ :=
  A020543.P5649233965623340607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020544.P8179931965877407542

`6*n!²-6*n!+1`
-/

namespace A020544.P8179931965877407542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.factorial n ^ 2 : ℤ) - (6 * Nat.factorial n : ℤ) + 1

end

end A020544.P8179931965877407542

noncomputable section

/-- A020544: Second Bernoulli polynomial evaluated at x=n! (multiplied by 6).

Offset 0, canonical program `A020544.P8179931965877407542`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020544 (n : ℕ) : ℤ :=
  A020544.P8179931965877407542.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020547.P17789962853661916017

`n!²-n!`
-/

namespace A020547.P17789962853661916017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℤ) - (Nat.factorial n : ℤ)

end

end A020547.P17789962853661916017

noncomputable section

/-- A020547: 2nd Euler polynomial x^2 - x evaluated at x=n!.

Offset 0, canonical program `A020547.P17789962853661916017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020547 (n : ℕ) : ℤ :=
  A020547.P17789962853661916017.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020548.P4109064308919072940

`4*n!^3-6*n!²+1`
-/

namespace A020548.P4109064308919072940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.factorial n ^ 3 : ℤ) - (6 * Nat.factorial n ^ 2 : ℤ) + 1

end

end A020548.P4109064308919072940

noncomputable section

/-- A020548: 3rd Euler polynomial evaluated at x=n! (multiplied by 4).

Offset 0, canonical program `A020548.P4109064308919072940`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020548 (n : ℕ) : ℤ :=
  A020548.P4109064308919072940.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020550.P655277780954376329

`n!^3+2*n!`
-/

namespace A020550.P655277780954376329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 3 + 2 * Nat.factorial n

end

end A020550.P655277780954376329

noncomputable section

/-- A020550: 4th Fibonacci polynomial evaluated at x=n!.

Offset 0, canonical program `A020550.P655277780954376329`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020550 (n : ℕ) : ℤ :=
  (A020550.P655277780954376329.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020551.P4979892754791003685

`n!^4+3*n!²+1`
-/

namespace A020551.P4979892754791003685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 4 + 3 * Nat.factorial n ^ 2 + 1

end

end A020551.P4979892754791003685

noncomputable section

/-- A020551: 5th Fibonacci polynomial evaluated at x = n!.

Offset 0, canonical program `A020551.P4979892754791003685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020551 (n : ℕ) : ℤ :=
  (A020551.P4979892754791003685.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020553.P3254767557005418301

`n!^6+5*n!^4+6*n!²+1`
-/

namespace A020553.P3254767557005418301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 6 + 5 * Nat.factorial n ^ 4 + 6 * Nat.factorial n ^ 2 + 1

end

end A020553.P3254767557005418301

noncomputable section

/-- A020553: 7th Fibonacci polynomial evaluated at x=n!.

Offset 0, canonical program `A020553.P3254767557005418301`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020553 (n : ℕ) : ℤ :=
  (A020553.P3254767557005418301.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020566.P13204495895774021951

`21*a(n-1)-108*a(n-2)+5^n` with `a(0)=1, a(1)=26`
-/

namespace A020566.P13204495895774021951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  21 * a (n - 1) - 108 * a (n - 2) + (5 ^ n : ℤ)

end

end A020566.P13204495895774021951

noncomputable section

/-- A020566: Expansion of 1/((1-5x)(1-9x)(1-12x)).

Offset 0, canonical program `A020566.P13204495895774021951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020566 (n : ℕ) : ℤ :=
  A020566.P13204495895774021951.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020566.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020567.P6501847014104547194

`21*a(n-1)-110*a(n-2)+5^n` with `a(0)=1, a(1)=26`
-/

namespace A020567.P6501847014104547194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (5 ^ n : ℤ)

end

end A020567.P6501847014104547194

noncomputable section

/-- A020567: Expansion of 1/((1-5x)(1-10x)(1-11x)).

Offset 0, canonical program `A020567.P6501847014104547194`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020567 (n : ℕ) : ℤ :=
  A020567.P6501847014104547194.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020568.P10162587093945698888

`5*5^n/7-10*10^n+72*12^n/7`
-/

namespace A020568.P10162587093945698888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 5 ^ n : ℚ) / 7 - (10 * 10 ^ n : ℚ) + (72 * 12 ^ n : ℚ) / 7

end

end A020568.P10162587093945698888

noncomputable section

/-- A020568: G.f.: 1/((1-5x)(1-10x)(1-12x)).

Offset 0, canonical program `A020568.P10162587093945698888`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020568 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020568.P10162587093945698888.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020569.P1728628854526897939

`23*a(n-1)-132*a(n-2)+5^n` with `a(0)=1, a(1)=28`
-/

namespace A020569.P1728628854526897939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (5 ^ n : ℤ)

end

end A020569.P1728628854526897939

noncomputable section

/-- A020569: Expansion of g.f. 1/((1 - 5*x)*(1 - 11*x)*(1 - 12*x)).

Offset 0, canonical program `A020569.P1728628854526897939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020569 (n : ℕ) : ℤ :=
  A020569.P1728628854526897939.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020570.P5851975197806407532

`18*6^n-49*7^n+32*8^n`
-/

namespace A020570.P5851975197806407532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * 6 ^ n : ℤ) - (49 * 7 ^ n : ℤ) + (32 * 8 ^ n : ℤ)

end

end A020570.P5851975197806407532

noncomputable section

/-- A020570: Expansion of g.f. 1/((1-6*x)*(1-7*x)*(1-8*x)).

Offset 0, canonical program `A020570.P5851975197806407532`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020570 (n : ℕ) : ℤ :=
  A020570.P5851975197806407532.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020570.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020571.P17881902036686307012

`16*a(n-1)-63*a(n-2)+6^n` with `a(0)=1, a(1)=22`
-/

namespace A020571.P17881902036686307012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 22] fun n a =>
  16 * a (n - 1) - 63 * a (n - 2) + (6 ^ n : ℤ)

end

end A020571.P17881902036686307012

noncomputable section

/-- A020571: Expansion of g.f. 1/((1-6*x)*(1-7*x)*(1-9*x)).

Offset 0, canonical program `A020571.P17881902036686307012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020571 (n : ℕ) : ℤ :=
  A020571.P17881902036686307012.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020571.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020572.P5519520982728177341

`17*a(n-1)-70*a(n-2)+6^n` with `a(0)=1, a(1)=23`
-/

namespace A020572.P5519520982728177341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  17 * a (n - 1) - 70 * a (n - 2) + (6 ^ n : ℤ)

end

end A020572.P5519520982728177341

noncomputable section

/-- A020572: Expansion of g.f. 1/((1 - 6*x)*(1 - 7*x)*(1 - 10*x)).

Offset 0, canonical program `A020572.P5519520982728177341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020572 (n : ℕ) : ℤ :=
  A020572.P5519520982728177341.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020572.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020573.P10640518270766356853

`18*a(n-1)-77*a(n-2)+6^n` with `a(0)=1, a(1)=24`
-/

namespace A020573.P10640518270766356853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  18 * a (n - 1) - 77 * a (n - 2) + (6 ^ n : ℤ)

end

end A020573.P10640518270766356853

noncomputable section

/-- A020573: Expansion of g.f. 1/((1 - 6*x)*(1 - 7*x)*(1 - 11*x)).

Offset 0, canonical program `A020573.P10640518270766356853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020573 (n : ℕ) : ℤ :=
  A020573.P10640518270766356853.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020577.P6963321155888085192

`19*a(n-1)-84*a(n-2)+6^n` with `a(0)=1, a(1)=25`
-/

namespace A020577.P6963321155888085192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  19 * a (n - 1) - 84 * a (n - 2) + (6 ^ n : ℤ)

end

end A020577.P6963321155888085192

noncomputable section

/-- A020577: Expansion of g.f. 1/((1 - 6*x)*(1 - 7*x)*(1 - 12*x)).

Offset 0, canonical program `A020577.P6963321155888085192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020577 (n : ℕ) : ℤ :=
  A020577.P6963321155888085192.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020579.P9265256622820816698

`6*6^n-32*8^n+27*9^n`
-/

namespace A020579.P9265256622820816698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 6 ^ n : ℤ) - (32 * 8 ^ n : ℤ) + (27 * 9 ^ n : ℤ)

end

end A020579.P9265256622820816698

noncomputable section

/-- A020579: Expansion of g.f. 1/((1-6*x)*(1-8*x)*(1-9*x)).

Offset 0, canonical program `A020579.P9265256622820816698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020579 (n : ℕ) : ℤ :=
  A020579.P9265256622820816698.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020584.P16534110715559295701

`18*a(n-1)-80*a(n-2)+6^n` with `a(0)=1, a(1)=24`
-/

namespace A020584.P16534110715559295701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  18 * a (n - 1) - 80 * a (n - 2) + (6 ^ n : ℤ)

end

end A020584.P16534110715559295701

noncomputable section

/-- A020584: Expansion of 1/((1-6*x)*(1-8*x)*(1-10*x)).

Offset 0, canonical program `A020584.P16534110715559295701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020584 (n : ℕ) : ℤ :=
  A020584.P16534110715559295701.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020593.P334373299160643859

`19*a(n-1)-88*a(n-2)+6^n` with `a(0)=1, a(1)=25`
-/

namespace A020593.P334373299160643859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  19 * a (n - 1) - 88 * a (n - 2) + (6 ^ n : ℤ)

end

end A020593.P334373299160643859

noncomputable section

/-- A020593: Expansion of g.f. 1/((1 - 6*x)*(1 - 8*x)*(1 - 11*x)).

Offset 0, canonical program `A020593.P334373299160643859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020593 (n : ℕ) : ℤ :=
  A020593.P334373299160643859.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020594.P4174227778734511821

`20*a(n-1)-96*a(n-2)+6^n` with `a(0)=1, a(1)=26`
-/

namespace A020594.P4174227778734511821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  20 * a (n - 1) - 96 * a (n - 2) + (6 ^ n : ℤ)

end

end A020594.P4174227778734511821

noncomputable section

/-- A020594: Expansion of 1/((1-6x)(1-8x)(1-12x)).

Offset 0, canonical program `A020594.P4174227778734511821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020594 (n : ℕ) : ℤ :=
  A020594.P4174227778734511821.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020594.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020595.P15450382402170572631

`19*a(n-1)-90*a(n-2)+6^n` with `a(0)=1, a(1)=25`
-/

namespace A020595.P15450382402170572631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (6 ^ n : ℤ)

end

end A020595.P15450382402170572631

noncomputable section

/-- A020595: Expansion of g.f. 1/((1-6*x)*(1-9*x)*(1-10*x)).

Offset 0, canonical program `A020595.P15450382402170572631`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020595 (n : ℕ) : ℤ :=
  A020595.P15450382402170572631.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020606.P13174332042543247827

`20*a(n-1)-99*a(n-2)+6^n` with `a(0)=1, a(1)=26`
-/

namespace A020606.P13174332042543247827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (6 ^ n : ℤ)

end

end A020606.P13174332042543247827

noncomputable section

/-- A020606: Expansion of g.f. 1/((1-6*x)*(1-9*x)*(1-11*x)).

Offset 0, canonical program `A020606.P13174332042543247827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020606 (n : ℕ) : ℤ :=
  A020606.P13174332042543247827.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020695.P5292720263086745780

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A020695.P5292720263086745780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + a (n - 2)

end

end A020695.P5292720263086745780

noncomputable section

/-- A020695: Pisot sequence E(2,3).

Offset 0, canonical program `A020695.P5292720263086745780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020695 (n : ℕ) : ℤ :=
  (A020695.P5292720263086745780.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020695.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020701.P3023773977330208485

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=5`
-/

namespace A020701.P3023773977330208485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 1) + a (n - 2)

end

end A020701.P3023773977330208485

noncomputable section

/-- A020701: Pisot sequences E(3,5), P(3,5).

Offset 0, canonical program `A020701.P3023773977330208485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020701 (n : ℕ) : ℤ :=
  (A020701.P3023773977330208485.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020703.P16958220774647362096

`2*(floor(sqrt(n))+1)*floor(sqrt(n))-(n+1)+2`
-/

namespace A020703.P16958220774647362096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (Nat.sqrt n + 1) * Nat.sqrt n : ℤ) - (n + 1 : ℤ) + 2

end

end A020703.P16958220774647362096

noncomputable section

/-- A020703: Take the sequence of natural numbers (A000027) and reverse successive subsequences of lengths 1,3,5,7,...

Offset 1, canonical program `A020703.P16958220774647362096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020703 (n : ℕ) : ℤ :=
  A020703.P16958220774647362096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020703.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020704.P5788304712383585593

`3*a(n-1)+a(n-2)` with `a(0)=3, a(1)=10`
-/

namespace A020704.P5788304712383585593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n a =>
  3 * a (n - 1) + a (n - 2)

end

end A020704.P5788304712383585593

noncomputable section

/-- A020704: Pisot sequences E(3,10), P(3,10).

Offset 0, canonical program `A020704.P5788304712383585593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020704 (n : ℕ) : ℤ :=
  (A020704.P5788304712383585593.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020707.P16024998955381595964

`2^(n+2)`
-/

namespace A020707.P16024998955381595964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2)

end

end A020707.P16024998955381595964

noncomputable section

/-- A020707: Pisot sequences E(4,8), L(4,8), P(4,8), T(4,8).

Offset 0, canonical program `A020707.P16024998955381595964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020707 (n : ℕ) : ℤ :=
  (A020707.P16024998955381595964.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020707.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020708.P5612718762055709544

`2*a(n-1)+a(n-3)` with `a(0)=4, a(1)=9, a(2)=20`
-/

namespace A020708.P5612718762055709544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 20] fun n a =>
  2 * a (n - 1) + a (n - 3)

end

end A020708.P5612718762055709544

noncomputable section

/-- A020708: Pisot sequences E(4,9), P(4,9).

Offset 0, canonical program `A020708.P5612718762055709544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020708 (n : ℕ) : ℤ :=
  (A020708.P5612718762055709544.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020708.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020709.P7784751046474523820

`3*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=4, a(1)=10, a(2)=25`
-/

namespace A020709.P7784751046474523820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 25] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3)

end

end A020709.P7784751046474523820

noncomputable section

/-- A020709: Pisot sequence E(4,10).

Offset 0, canonical program `A020709.P7784751046474523820`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020709 (n : ℕ) : ℤ :=
  A020709.P7784751046474523820.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020709.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020711.P16790827519031027951

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=5, a(1)=7, a(2)=10, a(3)=14`
-/

namespace A020711.P16790827519031027951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7, 10, 14] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A020711.P16790827519031027951

noncomputable section

/-- A020711: Pisot sequences E(5,7), P(5,7).

Offset 0, canonical program `A020711.P16790827519031027951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020711 (n : ℕ) : ℤ :=
  A020711.P16790827519031027951.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020712.P17792486667251270204

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=8`
-/

namespace A020712.P17792486667251270204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n a =>
  a (n - 1) + a (n - 2)

end

end A020712.P17792486667251270204

noncomputable section

/-- A020712: Pisot sequences E(5,8), P(5,8).

Offset 0, canonical program `A020712.P17792486667251270204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020712 (n : ℕ) : ℤ :=
  (A020712.P17792486667251270204.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020713.P9821176582521597793

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=5, a(1)=9, a(2)=16`
-/

namespace A020713.P9821176582521597793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 9, 16] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3)

end

end A020713.P9821176582521597793

noncomputable section

/-- A020713: Pisot sequences E(5,9), P(5,9).

Offset 0, canonical program `A020713.P9821176582521597793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020713 (n : ℕ) : ℤ :=
  A020713.P9821176582521597793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020716.P2897504729932051013

`a(n-2)+a(n-3)+1` with `a(0)=6, a(1)=8, a(2)=11`
-/

namespace A020716.P2897504729932051013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 8, 11] fun n a =>
  a (n - 2) + a (n - 3) + 1

end

end A020716.P2897504729932051013

noncomputable section

/-- A020716: Pisot sequences E(6,8), P(6,8).

Offset 0, canonical program `A020716.P2897504729932051013`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020716 (n : ℕ) : ℤ :=
  (A020716.P2897504729932051013.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020718.P14910920242116792938

`2*a(n-1)-a(n-3)+a(n-5)-a(n-6)` with `a(0)=6, a(1)=10, a(2)=17, a(3)=29, a(4)=49, a(5)=83`
-/

namespace A020718.P14910920242116792938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 10, 17, 29, 49, 83] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 5) - a (n - 6)

end

end A020718.P14910920242116792938

noncomputable section

/-- A020718: Pisot sequences E(6,10), P(6,10).

Offset 0, canonical program `A020718.P14910920242116792938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020718 (n : ℕ) : ℤ :=
  A020718.P14910920242116792938.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020720.P1303832423754234733

`a(n-2)+a(n-3)` with `a(0)=7, a(1)=9, a(2)=12`
-/

namespace A020720.P1303832423754234733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 9, 12] fun n a =>
  a (n - 2) + a (n - 3)

end

end A020720.P1303832423754234733

noncomputable section

/-- A020720: Pisot sequences E(7,9), P(7,9).

Offset 0, canonical program `A020720.P1303832423754234733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020720 (n : ℕ) : ℤ :=
  (A020720.P1303832423754234733.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020724.P17328035291899800215

`27*a(n-1)-234*a(n-2)+648*a(n-3)` with `a(0)=1, a(1)=27, a(2)=495`
-/

namespace A020724.P17328035291899800215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27, 495] fun n a =>
  27 * a (n - 1) - 234 * a (n - 2) + 648 * a (n - 3)

end

end A020724.P17328035291899800215

noncomputable section

/-- A020724: G.f.: 1/((1-6*x)*(1-9*x)*(1-12*x)).

Offset 0, canonical program `A020724.P17328035291899800215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020724 (n : ℕ) : ℤ :=
  A020724.P17328035291899800215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020724.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020726.P7924632122679561024

`21*a(n-1)-110*a(n-2)+6^n` with `a(0)=1, a(1)=27`
-/

namespace A020726.P7924632122679561024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (6 ^ n : ℤ)

end

end A020726.P7924632122679561024

noncomputable section

/-- A020726: Expansion of g.f. 1/((1-6*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A020726.P7924632122679561024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020726 (n : ℕ) : ℤ :=
  A020726.P7924632122679561024.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020727.P3582853984017643501

`floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=7`
-/

namespace A020727.P3582853984017643501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A020727.P3582853984017643501

noncomputable section

/-- A020727: Pisot sequence P(2,7): a(0)=2, a(1)=7, thereafter a(n+1) is the nearest integer to a(n)^2/a(n-1).

Offset 0, canonical program `A020727.P3582853984017643501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020727 (n : ℕ) : ℤ :=
  A020727.P3582853984017643501.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020729.P10295770726716872561

`2*5^n`
-/

namespace A020729.P10295770726716872561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 5 ^ n

end

end A020729.P10295770726716872561

noncomputable section

/-- A020729: Pisot sequences E(2,10), L(2,10), P(2,10), T(2,10).

Offset 0, canonical program `A020729.P10295770726716872561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020729 (n : ℕ) : ℤ :=
  (A020729.P10295770726716872561.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020730.P10599569837805996672

`ceil(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=7`
-/

namespace A020730.P10599569837805996672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A020730.P10599569837805996672

noncomputable section

/-- A020730: Pisot sequences L(3,7) or S(3,7).

Offset 0, canonical program `A020730.P10599569837805996672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020730 (n : ℕ) : ℤ :=
  A020730.P10599569837805996672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020732.P12035922063334694078

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=7, a(2)=12`
-/

namespace A020732.P12035922063334694078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 7, 12] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A020732.P12035922063334694078

noncomputable section

/-- A020732: Pisot sequence T(4,7).

Offset 0, canonical program `A020732.P12035922063334694078`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020732 (n : ℕ) : ℤ :=
  A020732.P12035922063334694078.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020734.P1979828143967526815

`ceil(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=10`
-/

namespace A020734.P1979828143967526815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A020734.P1979828143967526815

noncomputable section

/-- A020734: Pisot sequence L(4,10).

Offset 0, canonical program `A020734.P1979828143967526815`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020734 (n : ℕ) : ℤ :=
  A020734.P1979828143967526815.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020734.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020735.P10040868782378236279

`2*(n+1)+3`
-/

namespace A020735.P10040868782378236279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) + 3

end

end A020735.P10040868782378236279

noncomputable section

/-- A020735: Odd numbers >= 5.

Offset 1, canonical program `A020735.P10040868782378236279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020735 (n : ℕ) : ℤ :=
  (A020735.P10040868782378236279.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020736.P7035951364839008100

`3*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=5, a(1)=8, a(2)=13, a(3)=22`
-/

namespace A020736.P7035951364839008100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8, 13, 22] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A020736.P7035951364839008100

noncomputable section

/-- A020736: Pisot sequence L(5,8).

Offset 0, canonical program `A020736.P7035951364839008100`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020736 (n : ℕ) : ℤ :=
  A020736.P7035951364839008100.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020737.P8756672290686718691

`2^(n+2)+1`
-/

namespace A020737.P8756672290686718691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 2) + 1

end

end A020737.P8756672290686718691

noncomputable section

/-- A020737: Pisot sequence L(5,9).

Offset 0, canonical program `A020737.P8756672290686718691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020737 (n : ℕ) : ℤ :=
  (A020737.P8756672290686718691.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020737.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020742.P7099883194858047647

`2*n+7`
-/

namespace A020742.P7099883194858047647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

end

end A020742.P7099883194858047647

noncomputable section

/-- A020742: Pisot sequence T(7,9).

Offset 0, canonical program `A020742.P7099883194858047647`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020742 (n : ℕ) : ℤ :=
  (A020742.P7099883194858047647.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020744.P3278150809387574168

`2*n+8`
-/

namespace A020744.P3278150809387574168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 8

end

end A020744.P3278150809387574168

noncomputable section

/-- A020744: Pisot sequences P(8,10), T(8,10).

Offset 0, canonical program `A020744.P3278150809387574168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020744 (n : ℕ) : ℤ :=
  (A020744.P3278150809387574168.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020745.P15050310323805390845

`2*a(n-1)-a(n-2)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=5, a(2)=8, a(3)=12`
-/

namespace A020745.P15050310323805390845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 8, 12] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4)

end

end A020745.P15050310323805390845

noncomputable section

/-- A020745: Pisot sequence T(3,5).

Offset 0, canonical program `A020745.P15050310323805390845`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020745 (n : ℕ) : ℤ :=
  A020745.P15050310323805390845.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020758.P6609999227024381139

`22*a(n-1)-120*a(n-2)+6^n` with `a(0)=1, a(1)=28`
-/

namespace A020758.P6609999227024381139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (6 ^ n : ℤ)

end

end A020758.P6609999227024381139

noncomputable section

/-- A020758: Expansion of 1/((1-6x)(1-10x)(1-12x)).

Offset 0, canonical program `A020758.P6609999227024381139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020758 (n : ℕ) : ℤ :=
  A020758.P6609999227024381139.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020761.P16580574069512288400

`5*floor(1/(n+1))`
-/

namespace A020761.P16580574069512288400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ⌊1 / (n + 1 : ℚ)⌋

end

end A020761.P16580574069512288400

noncomputable section

/-- A020761: Decimal expansion of 1/2.

Offset 0, canonical program `A020761.P16580574069512288400`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020761 (n : ℕ) : ℤ :=
  A020761.P16580574069512288400.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020766.P4637189600475075368

`23*a(n-1)-132*a(n-2)+6^n` with `a(0)=1, a(1)=29`
-/

namespace A020766.P4637189600475075368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (6 ^ n : ℤ)

end

end A020766.P4637189600475075368

noncomputable section

/-- A020766: Expansion of g.f. 1/((1-6*x)*(1-11*x)*(1-12*x)).

Offset 0, canonical program `A020766.P4637189600475075368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020766 (n : ℕ) : ℤ :=
  A020766.P4637189600475075368.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020782.P16579208368992855544

`17*a(n-1)-72*a(n-2)+7^n` with `a(0)=1, a(1)=24`
-/

namespace A020782.P16579208368992855544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24] fun n a =>
  17 * a (n - 1) - 72 * a (n - 2) + (7 ^ n : ℤ)

end

end A020782.P16579208368992855544

noncomputable section

/-- A020782: Expansion of g.f. 1/((1-7*x)*(1-8*x)*(1-9*x)).

Offset 0, canonical program `A020782.P16579208368992855544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020782 (n : ℕ) : ℤ :=
  A020782.P16579208368992855544.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020806.P16271889994640298

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=2, a(3)=8`
-/

namespace A020806.P16271889994640298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 2, 8] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A020806.P16271889994640298

noncomputable section

/-- A020806: Decimal expansion of 1/7.

Offset 0, canonical program `A020806.P16271889994640298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020806 (n : ℕ) : ℤ :=
  A020806.P16271889994640298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020838.P7298276804429078712

`18*a(n-1)-80*a(n-2)+7^n` with `a(0)=1, a(1)=25`
-/

namespace A020838.P7298276804429078712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 25] fun n a =>
  18 * a (n - 1) - 80 * a (n - 2) + (7 ^ n : ℤ)

end

end A020838.P7298276804429078712

noncomputable section

/-- A020838: Expansion of 1/((1-7x)(1-8x)(1-10x)).

Offset 0, canonical program `A020838.P7298276804429078712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020838 (n : ℕ) : ℤ :=
  A020838.P7298276804429078712.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020873.P5294214750322063011

`2^n+n²-n+1`
-/

namespace A020873.P5294214750322063011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + n ^ 2 : ℤ) - (n : ℤ) + 1

end

end A020873.P5294214750322063011

noncomputable section

/-- A020873: a(n) is number of cycles in Moebius ladder M_n.

Offset 0, canonical program `A020873.P5294214750322063011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020873 (n : ℕ) : ℤ :=
  A020873.P5294214750322063011.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020874.P2297157166849985116

`10*n*2^n-n^3-5*n²-11*n`
-/

namespace A020874.P2297157166849985116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n * 2 ^ n : ℤ) - (n ^ 3 : ℤ) - (5 * n ^ 2 : ℤ) - (11 * n : ℤ)

end

end A020874.P2297157166849985116

noncomputable section

/-- A020874: Number of paths in Moebius ladder M_n.

Offset 0, canonical program `A020874.P2297157166849985116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020874 (n : ℕ) : ℤ :=
  A020874.P2297157166849985116.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020874.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020876.P14077743003153328435

`5*a(n-1)-5*a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A020876.P14077743003153328435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2)

end

end A020876.P14077743003153328435

noncomputable section

/-- A020876: a(n) = ((5+sqrt(5))/2)^n + ((5-sqrt(5))/2)^n.

Offset 0, canonical program `A020876.P14077743003153328435`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020876 (n : ℕ) : ℤ :=
  A020876.P14077743003153328435.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020877.P8157097664321090601

`2*a(n-1)+4*a(n-2)-a(n-4)` with `a(0)=10, a(1)=34, a(2)=106, a(3)=344`
-/

namespace A020877.P8157097664321090601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 34, 106, 344] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - a (n - 4)

end

end A020877.P8157097664321090601

noncomputable section

/-- A020877: Number of matchings in Moebius ladder M_n.

Offset 2, canonical program `A020877.P8157097664321090601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020877 (n : ℕ) : ℤ :=
  A020877.P8157097664321090601.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020877.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020914.P14614132090025046928

`1+floor(n*log2(3))`
-/

namespace A020914.P14614132090025046928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

end

end A020914.P14614132090025046928

noncomputable section

/-- A020914: Number of digits in the base-2 representation of 3^n.

Offset 0, canonical program `A020914.P14614132090025046928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020914 (n : ℕ) : ℤ :=
  A020914.P14614132090025046928.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020915.P489464718778045910

`1+floor(n*log(2)/log(3))`
-/

namespace A020915.P489464718778045910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(n : ℝ) * Real.log (2 : ℝ) / Real.log (3 : ℝ)⌋

end

end A020915.P489464718778045910

noncomputable section

/-- A020915: Number of digits in base-3 representation of 2^n.

Offset 0, canonical program `A020915.P489464718778045910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020915 (n : ℕ) : ℤ :=
  A020915.P489464718778045910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020918.P2108208579407617575

`C(2*n+6, n+3)*C(n+3, 3)/20`
-/

namespace A020918.P2108208579407617575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 6) (n + 3) * Nat.choose (n + 3) 3 : ℚ) / 20

end

end A020918.P2108208579407617575

noncomputable section

/-- A020918: Expansion of 1/(1-4*x)^(7/2).

Offset 0, canonical program `A020918.P2108208579407617575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020918 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020918.P2108208579407617575.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020922.P2919906005093826801

`C(n+5, 5)*C(2*n+10, n+5)/252`
-/

namespace A020922.P2919906005093826801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 5 * Nat.choose (2 * n + 10) (n + 5) : ℚ) / 252

end

end A020922.P2919906005093826801

noncomputable section

/-- A020922: Expansion of 1/(1-4*x)^(11/2).

Offset 0, canonical program `A020922.P2919906005093826801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020922 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020922.P2919906005093826801.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020924.P14750914322817755946

`C(n+6, n)*C(2*n+12, n+6)/924`
-/

namespace A020924.P14750914322817755946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) n * Nat.choose (2 * n + 12) (n + 6) : ℚ) / 924

end

end A020924.P14750914322817755946

noncomputable section

/-- A020924: Expansion of 1/(1-4*x)^(13/2).

Offset 0, canonical program `A020924.P14750914322817755946`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020924 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020924.P14750914322817755946.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020955.P9159869727305971171

`n^(2^n-n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A020955.P9159869727305971171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ ((2 ^ n : ℤ) - (n : ℤ) - 1 : ℤ)

end

end A020955.P9159869727305971171

noncomputable section

/-- A020955: a(n) = n^(2^n - n - 1).

Offset 0, canonical program `A020955.P9159869727305971171`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020955 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020955.P9159869727305971171.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020968.P17331879652675560125

`19*a(n-1)-88*a(n-2)+7^n` with `a(0)=1, a(1)=26`
-/

namespace A020968.P17331879652675560125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  19 * a (n - 1) - 88 * a (n - 2) + (7 ^ n : ℤ)

end

end A020968.P17331879652675560125

noncomputable section

/-- A020968: Expansion of 1/((1-7*x)*(1-8*x)*(1-11*x)).

Offset 0, canonical program `A020968.P17331879652675560125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020968 (n : ℕ) : ℤ :=
  A020968.P17331879652675560125.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020969.P6867530979372783503

`20*a(n-1)-96*a(n-2)+7^n` with `a(0)=1, a(1)=27`
-/

namespace A020969.P6867530979372783503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  20 * a (n - 1) - 96 * a (n - 2) + (7 ^ n : ℤ)

end

end A020969.P6867530979372783503

noncomputable section

/-- A020969: Expansion of 1/((1-7*x)*(1-8*x)*(1-12*x)).

Offset 0, canonical program `A020969.P6867530979372783503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020969 (n : ℕ) : ℤ :=
  A020969.P6867530979372783503.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020970.P4796079477506276464

`19*a(n-1)-90*a(n-2)+7^n` with `a(0)=1, a(1)=26`
-/

namespace A020970.P4796079477506276464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 26] fun n a =>
  19 * a (n - 1) - 90 * a (n - 2) + (7 ^ n : ℤ)

end

end A020970.P4796079477506276464

noncomputable section

/-- A020970: Expansion of 1/((1-7*x)*(1-9*x)*(1-10*x)).

Offset 0, canonical program `A020970.P4796079477506276464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020970 (n : ℕ) : ℤ :=
  A020970.P4796079477506276464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020971.P14010666985743969821

`20*a(n-1)-99*a(n-2)+7^n` with `a(0)=1, a(1)=27`
-/

namespace A020971.P14010666985743969821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (7 ^ n : ℤ)

end

end A020971.P14010666985743969821

noncomputable section

/-- A020971: Expansion of 1/((1-7*x)*(1-9*x)*(1-11*x)).

Offset 0, canonical program `A020971.P14010666985743969821`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020971 (n : ℕ) : ℤ :=
  A020971.P14010666985743969821.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020971.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020972.P12529446559979123082

`21*a(n-1)-108*a(n-2)+7^n` with `a(0)=1, a(1)=28`
-/

namespace A020972.P12529446559979123082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  21 * a (n - 1) - 108 * a (n - 2) + (7 ^ n : ℤ)

end

end A020972.P12529446559979123082

noncomputable section

/-- A020972: Expansion of 1/((1-7*x)*(1-9*x)*(1-12*x)).

Offset 0, canonical program `A020972.P12529446559979123082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020972 (n : ℕ) : ℤ :=
  A020972.P12529446559979123082.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020972.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020973.P17385915781681893038

`21*a(n-1)-110*a(n-2)+7^n` with `a(0)=1, a(1)=28`
-/

namespace A020973.P17385915781681893038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (7 ^ n : ℤ)

end

end A020973.P17385915781681893038

noncomputable section

/-- A020973: Expansion of 1/((1-7*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A020973.P17385915781681893038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020973 (n : ℕ) : ℤ :=
  A020973.P17385915781681893038.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020974.P4256072696377922440

`22*a(n-1)-120*a(n-2)+7^n` with `a(0)=1, a(1)=29`
-/

namespace A020974.P4256072696377922440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (7 ^ n : ℤ)

end

end A020974.P4256072696377922440

noncomputable section

/-- A020974: Expansion of 1/((1-7*x)*(1-10*x)*(1-12*x)).

Offset 0, canonical program `A020974.P4256072696377922440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020974 (n : ℕ) : ℤ :=
  A020974.P4256072696377922440.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020975.P10553929017463583623

`23*a(n-1)-132*a(n-2)+7^n` with `a(0)=1, a(1)=30`
-/

namespace A020975.P10553929017463583623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (7 ^ n : ℤ)

end

end A020975.P10553929017463583623

noncomputable section

/-- A020975: Expansion of 1/((1-7*x)*(1-11*x)*(1-12*x)).

Offset 0, canonical program `A020975.P10553929017463583623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020975 (n : ℕ) : ℤ :=
  A020975.P10553929017463583623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020975.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020976.P14501595777380205033

`2^(2+3*(n+1))+2^(n+1)*5^(2+n)-9^(2+n)`
-/

namespace A020976.P14501595777380205033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 + 3 * (n + 1)) + 2 ^ (n + 1) * 5 ^ (2 + n) : ℤ) - (9 ^ (2 + n) : ℤ)

end

end A020976.P14501595777380205033

noncomputable section

/-- A020976: Expansion of 1/((1-8*x)*(1-9*x)*(1-10*x)).

Offset 0, canonical program `A020976.P14501595777380205033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020976 (n : ℕ) : ℤ :=
  A020976.P14501595777380205033.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020977.P1069178003751340139

`20*a(n-1)-99*a(n-2)+8^n` with `a(0)=1, a(1)=28`
-/

namespace A020977.P1069178003751340139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 28] fun n a =>
  20 * a (n - 1) - 99 * a (n - 2) + (8 ^ n : ℤ)

end

end A020977.P1069178003751340139

noncomputable section

/-- A020977: Expansion of 1/((1-8*x)*(1-9*x)*(1-11*x)).

Offset 0, canonical program `A020977.P1069178003751340139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020977 (n : ℕ) : ℤ :=
  A020977.P1069178003751340139.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020978.P17391881791514292453

`21*a(n-1)-108*a(n-2)+8^n` with `a(0)=1, a(1)=29`
-/

namespace A020978.P17391881791514292453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  21 * a (n - 1) - 108 * a (n - 2) + (8 ^ n : ℤ)

end

end A020978.P17391881791514292453

noncomputable section

/-- A020978: Expansion of 1/((1-8*x)*(1-9*x)*(1-12*x)).

Offset 0, canonical program `A020978.P17391881791514292453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020978 (n : ℕ) : ℤ :=
  A020978.P17391881791514292453.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020979.P5564430262261042235

`21*a(n-1)-110*a(n-2)+8^n` with `a(0)=1, a(1)=29`
-/

namespace A020979.P5564430262261042235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (8 ^ n : ℤ)

end

end A020979.P5564430262261042235

noncomputable section

/-- A020979: Expansion of 1/((1-8*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A020979.P5564430262261042235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020979 (n : ℕ) : ℤ :=
  A020979.P5564430262261042235.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020979.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020980.P11367559677175431910

`22*a(n-1)-120*a(n-2)+8^n` with `a(0)=1, a(1)=30`
-/

namespace A020980.P11367559677175431910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (8 ^ n : ℤ)

end

end A020980.P11367559677175431910

noncomputable section

/-- A020980: Expansion of 1/((1-8*x)*(1-10*x)*(1-12*x)).

Offset 0, canonical program `A020980.P11367559677175431910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020980 (n : ℕ) : ℤ :=
  A020980.P11367559677175431910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020980.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020981.P8843607520513158784

`16*8^n/3-121*11^n/3+36*12^n`
-/

namespace A020981.P8843607520513158784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * 8 ^ n : ℚ) / 3 - (121 * 11 ^ n : ℚ) / 3 + (36 * 12 ^ n : ℚ)

end

end A020981.P8843607520513158784

noncomputable section

/-- A020981: Expansion of 1/((1-8*x)*(1-11*x)*(1-12*x)).

Offset 0, canonical program `A020981.P8843607520513158784`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020981 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020981.P8843607520513158784.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020982.P8931510276343075646

`21*a(n-1)-110*a(n-2)+9^n` with `a(0)=1, a(1)=30`
-/

namespace A020982.P8931510276343075646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  21 * a (n - 1) - 110 * a (n - 2) + (9 ^ n : ℤ)

end

end A020982.P8931510276343075646

noncomputable section

/-- A020982: Expansion of 1/((1-9*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A020982.P8931510276343075646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020982 (n : ℕ) : ℤ :=
  A020982.P8931510276343075646.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020983.P1877655808977654242

`22*a(n-1)-120*a(n-2)+9^n` with `a(0)=1, a(1)=31`
-/

namespace A020983.P1877655808977654242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31] fun n a =>
  22 * a (n - 1) - 120 * a (n - 2) + (9 ^ n : ℤ)

end

end A020983.P1877655808977654242

noncomputable section

/-- A020983: Expansion of 1/((1-9*x)*(1-10*x)*(1-12*x)).

Offset 0, canonical program `A020983.P1877655808977654242`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020983 (n : ℕ) : ℤ :=
  A020983.P1877655808977654242.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020984.P12662628521158913731

`4*12^(n+1)-11^(n+2)/2+3*9^(n+1)/2`
-/

namespace A020984.P12662628521158913731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * 12 ^ (n + 1) : ℚ) - (11 ^ (n + 2) : ℚ) / 2 + (3 * 9 ^ (n + 1) : ℚ) / 2

end

end A020984.P12662628521158913731

noncomputable section

/-- A020984: Expansion of 1/((1-9*x)*(1-11*x)*(1-12*x)).

Offset 0, canonical program `A020984.P12662628521158913731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020984 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020984.P12662628521158913731.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A020988.P12877403195261082283

`4*a(n-1)+2` with `a(0)=0`
-/

namespace A020988.P12877403195261082283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  4 * a (n - 1) + 2

end

end A020988.P12877403195261082283

noncomputable section

/-- A020988: a(n) = (2/3)*(4^n-1).

Offset 0, canonical program `A020988.P12877403195261082283`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2/3*(4^n-1)` (program `A020988.P5492244997853886263`, by `A020988.P5492244997853886263.correct`). Lean does not check the parsing of the name. -/
def A020988 (n : ℕ) : ℤ :=
  (A020988.P12877403195261082283.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2/3*(4^n-1)` (program `A020988.P5492244997853886263`, by `A020988.P5492244997853886263.correct`). Lean does not check the parsing of the name. -/
def A020988.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A020989.P9732876431631059566

`4*a(n-1)+2` with `a(0)=1`
-/

namespace A020989.P9732876431631059566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + 2

end

end A020989.P9732876431631059566

noncomputable section

/-- A020989: a(n) = (5*4^n - 2)/3.

Offset 0, canonical program `A020989.P9732876431631059566`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*4^n-2)/3` (program `A020989.P9628038901833114454`, by `A020989.P9628038901833114454.correct`). Lean does not check the parsing of the name. -/
def A020989 (n : ℕ) : ℤ :=
  (A020989.P9732876431631059566.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*4^n-2)/3` (program `A020989.P9628038901833114454`, by `A020989.P9628038901833114454.correct`). Lean does not check the parsing of the name. -/
def A020989.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A021001.P7278233910353599413

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=2, a(1)=9`
-/

namespace A021001.P7278233910353599413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A021001.P7278233910353599413

noncomputable section

/-- A021001: Pisot sequence P(2,9).

Offset 0, canonical program `A021001.P7278233910353599413`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021001 (n : ℕ) : ℤ :=
  A021001.P7278233910353599413.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021003.P2414005126365503063

`(n^5+n)/2`
-/

namespace A021003.P2414005126365503063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 + n : ℚ) / 2

end

end A021003.P2414005126365503063

noncomputable section

/-- A021003: a(n) = (n/2)*(n^4 + 1).

Offset 0, canonical program `A021003.P2414005126365503063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021003 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021003.P2414005126365503063.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021003.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021004.P4773974474404737794

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=4, a(1)=10`
-/

namespace A021004.P4773974474404737794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A021004.P4773974474404737794

noncomputable section

/-- A021004: Pisot sequence P(4,10).

Offset 0, canonical program `A021004.P4773974474404737794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021004 (n : ℕ) : ℤ :=
  A021004.P4773974474404737794.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021006.P11131082373719806823

`sqrt(3)/24*((1+sqrt(3))^(n+4)-(1-sqrt(3))^(n+4))`
-/

namespace A021006.P11131082373719806823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) / 24 * ((1 + Real.sqrt (3 : ℝ)) ^ (n + 4) - (1 - Real.sqrt (3 : ℝ)) ^ (n + 4))

end

end A021006.P11131082373719806823

noncomputable section

/-- A021006: Pisot sequence P(4,11), a(0)=4, a(1)=11, a(n+1) is the nearest integer to a(n)^2/a(n-1). Evidently satisfies a(n) = 2*a(n-1)+2*a(n-2).

Offset 0, canonical program `A021006.P11131082373719806823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021006 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021006.P11131082373719806823.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021008.P12860446418669897852

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=5, a(1)=11`
-/

namespace A021008.P12860446418669897852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 11] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A021008.P12860446418669897852

noncomputable section

/-- A021008: Pisot sequence P(5,11), a(0)=5, a(1)=11, a(n+1) is the nearest integer to a(n)^2/a(n-1).

Offset 0, canonical program `A021008.P12860446418669897852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021008 (n : ℕ) : ℤ :=
  A021008.P12860446418669897852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021011.P8464783257696250127

`ceil(a(n-1)²/a(n-2)-1/2)` with `a(0)=6, a(1)=11`
-/

namespace A021011.P8464783257696250127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 11] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ) - (1 : ℚ) / 2⌉

end

end A021011.P8464783257696250127

noncomputable section

/-- A021011: Pisot sequence P(6,11), a(0)=6, a(1)=11, a(n+1) is the nearest integer to a(n)^2/a(n-1).

Offset 0, canonical program `A021011.P8464783257696250127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021011 (n : ℕ) : ℤ :=
  A021011.P8464783257696250127.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021011.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021017.P14365785595710610474

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=7, a(2)=6, a(3)=9`
-/

namespace A021017.P14365785595710610474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 6, 9] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021017.P14365785595710610474

noncomputable section

/-- A021017: Decimal expansion of 1/13.

Offset 0, canonical program `A021017.P14365785595710610474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021017 (n : ℕ) : ℤ :=
  A021017.P14365785595710610474.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021021.P2603919770948470769

`23*a(n-1)-132*a(n-2)+10^n` with `a(0)=1, a(1)=33`
-/

namespace A021021.P2603919770948470769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 33] fun n a =>
  23 * a (n - 1) - 132 * a (n - 2) + (10 ^ n : ℤ)

end

end A021021.P2603919770948470769

noncomputable section

/-- A021021: Expansion of 1/((1-10x)(1-11x)(1-12x)).

Offset 0, canonical program `A021021.P2603919770948470769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021021 (n : ℕ) : ℤ :=
  A021021.P2603919770948470769.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021021.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021030.P8140569591613765795

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=8, a(3)=4, a(4)=6`
-/

namespace A021030.P8140569591613765795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 8, 4, 6] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021030.P8140569591613765795

noncomputable section

/-- A021030: Decimal expansion of 1/26.

Offset 0, canonical program `A021030.P8140569591613765795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021030 (n : ℕ) : ℤ :=
  A021030.P8140569591613765795.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021030.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021031.P4237084574186444953

`a(n-3)` with `a(0)=0, a(1)=3, a(2)=7`
-/

namespace A021031.P4237084574186444953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 7] fun n a =>
  a (n - 3)

end

end A021031.P4237084574186444953

noncomputable section

/-- A021031: Decimal expansion of 1/27.

Offset 0, canonical program `A021031.P4237084574186444953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021031 (n : ℕ) : ℤ :=
  (A021031.P4237084574186444953.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021048.P13702195736777519758

`243/112*9^n-9/4*3^n+8/7*2^n-1/16`
-/

namespace A021048.P13702195736777519758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (243 : ℚ) / 112 * (9 ^ n : ℚ) - (9 : ℚ) / 4 * (3 ^ n : ℚ) + (8 : ℚ) / 7 * (2 ^ n : ℚ) - (1 : ℚ) / 16

end

end A021048.P13702195736777519758

noncomputable section

/-- A021048: Expansion of 1/((1-x)*(1-2x)*(1-3x)*(1-9x)).

Offset 0, canonical program `A021048.P13702195736777519758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021048 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021048.P13702195736777519758.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021054.P16558678026524851529

`(11^(n+3)-45*3^(n+3)+80*2^(n+3)-36)/720`
-/

namespace A021054.P16558678026524851529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (45 * 3 ^ (n + 3) : ℤ) + (80 * 2 ^ (n + 3) : ℤ) - 36 : ℚ) / 720

end

end A021054.P16558678026524851529

noncomputable section

/-- A021054: Expansion of 1/((1-x)(1-2x)(1-3x)(1-11x)).

Offset 0, canonical program `A021054.P16558678026524851529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021054 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021054.P16558678026524851529.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021064.P1880806552713618153

`(12^(n+3)-55*3^(n+3)+99*2^(n+3)-45)/990`
-/

namespace A021064.P1880806552713618153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (55 * 3 ^ (n + 3) : ℤ) + (99 * 2 ^ (n + 3) : ℤ) - 45 : ℚ) / 990

end

end A021064.P1880806552713618153

noncomputable section

/-- A021064: Expansion of 1/((1-x)*(1-2*x)*(1-3*x)*(1-12*x)).

Offset 0, canonical program `A021064.P1880806552713618153`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021064 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021064.P1880806552713618153.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021067.P13822626970905147540

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A021067.P13822626970905147540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A021067.P13822626970905147540

noncomputable section

/-- A021067: Decimal expansion of 1/63.

Offset 0, canonical program `A021067.P13822626970905147540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021067 (n : ℕ) : ℤ :=
  A021067.P13822626970905147540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021081.P1255992837692532354

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9`
-/

namespace A021081.P1255992837692532354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 9] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021081.P1255992837692532354

noncomputable section

/-- A021081: Decimal expansion of 1/77.

Offset 0, canonical program `A021081.P1255992837692532354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021081 (n : ℕ) : ℤ :=
  A021081.P1255992837692532354.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021081.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021084.P12276329249881174431

`(3*9^(n+3)-28*4^(n+3)+60*2^(n+3)-35)/840`
-/

namespace A021084.P12276329249881174431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 3) : ℤ) - (28 * 4 ^ (n + 3) : ℤ) + (60 * 2 ^ (n + 3) : ℤ) - 35 : ℚ) / 840

end

end A021084.P12276329249881174431

noncomputable section

/-- A021084: Expansion of 1/((1-x)(1-2x)(1-4x)(1-9x)).

Offset 0, canonical program `A021084.P12276329249881174431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021084 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021084.P12276329249881174431.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021085.P7432067649626125754

`a(n-9)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=9`
-/

namespace A021085.P7432067649626125754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7, 9] fun n a =>
  a (n - 9)

end

end A021085.P7432067649626125754

noncomputable section

/-- A021085: Decimal expansion of 1/81.

Offset 0, canonical program `A021085.P7432067649626125754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021085 (n : ℕ) : ℤ :=
  (A021085.P7432067649626125754.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021105.P7927055981486351382

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=9`
-/

namespace A021105.P7927055981486351382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 9] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 3)

end

end A021105.P7927055981486351382

noncomputable section

/-- A021105: Decimal expansion of 1/101.

Offset 0, canonical program `A021105.P7927055981486351382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021105 (n : ℕ) : ℤ :=
  A021105.P7927055981486351382.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021114.P5974715316266371263

`(3*6^(n+3)-5^(n+4)+5*2^(n+3)-3)/60`
-/

namespace A021114.P5974715316266371263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 6 ^ (n + 3) : ℤ) - (5 ^ (n + 4) : ℤ) + (5 * 2 ^ (n + 3) : ℤ) - 3 : ℚ) / 60

end

end A021114.P5974715316266371263

noncomputable section

/-- A021114: Expansion of 1/((1-x)*(1-2x)*(1-5x)*(1-6x)).

Offset 0, canonical program `A021114.P5974715316266371263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021114.P5974715316266371263.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021124.P506079275577940139

`(2*7^(n+3)-5^(n+4)+2^(n+6)-5)/120`
-/

namespace A021124.P506079275577940139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 7 ^ (n + 3) : ℤ) - (5 ^ (n + 4) : ℤ) + (2 ^ (n + 6) : ℤ) - 5 : ℚ) / 120

end

end A021124.P506079275577940139

noncomputable section

/-- A021124: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-7*x)).

Offset 0, canonical program `A021124.P506079275577940139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021124 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021124.P506079275577940139.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021129.P7121800306219978886

`(2*8^(n+3)-7*5^(n+3)+14*2^(n+3)-9)/252`
-/

namespace A021129.P7121800306219978886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 8 ^ (n + 3) : ℤ) - (7 * 5 ^ (n + 3) : ℤ) + (14 * 2 ^ (n + 3) : ℤ) - 9 : ℚ) / 252

end

end A021129.P7121800306219978886

noncomputable section

/-- A021129: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-8*x)).

Offset 0, canonical program `A021129.P7121800306219978886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021129 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021129.P7121800306219978886.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021134.P7229365067704280566

`(3*9^(n+3)-14*5^(n+3)+32*2^(n+3)-21)/672`
-/

namespace A021134.P7229365067704280566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 3) : ℤ) - (14 * 5 ^ (n + 3) : ℤ) + (32 * 2 ^ (n + 3) : ℤ) - 21 : ℚ) / 672

end

end A021134.P7229365067704280566

noncomputable section

/-- A021134: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-9*x)).

Offset 0, canonical program `A021134.P7229365067704280566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021134.P7229365067704280566.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021144.P14419249874044689641

`(10^(n+3)-6*5^(n+3)+15*2^(n+3)-10)/360`
-/

namespace A021144.P14419249874044689641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (6 * 5 ^ (n + 3) : ℤ) + (15 * 2 ^ (n + 3) : ℤ) - 10 : ℚ) / 360

end

end A021144.P14419249874044689641

noncomputable section

/-- A021144: Expansion of 1/((1-x)*(1-2*x)*(1-5*x)*(1-10*x)).

Offset 0, canonical program `A021144.P14419249874044689641`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021144.P14419249874044689641.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021147.P224464834440034346

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=9`
-/

namespace A021147.P224464834440034346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 6, 9] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021147.P224464834440034346

noncomputable section

/-- A021147: Decimal expansion of 1/143.

Offset 0, canonical program `A021147.P224464834440034346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021147 (n : ℕ) : ℤ :=
  A021147.P224464834440034346.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021150.P603292364300416278

`a(n-1)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=8, a(4)=4, a(5)=9`
-/

namespace A021150.P603292364300416278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 6, 8, 4, 9] fun n a =>
  a (n - 1) - a (n - 4) + a (n - 5)

end

end A021150.P603292364300416278

noncomputable section

/-- A021150: Decimal expansion of 1/146.

Offset 0, canonical program `A021150.P603292364300416278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021150 (n : ℕ) : ℤ :=
  A021150.P603292364300416278.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021160.P10357539094273175482

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=4, a(4)=1`
-/

namespace A021160.P10357539094273175482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 6, 4, 1] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A021160.P10357539094273175482

noncomputable section

/-- A021160: Decimal expansion of 1/156.

Offset 0, canonical program `A021160.P10357539094273175482`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021160 (n : ℕ) : ℤ :=
  A021160.P10357539094273175482.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021160.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021174.P4835487723145802356

`(2*7^(n+3)-3*6^(n+3)+3*2^(n+3)-2)/60`
-/

namespace A021174.P4835487723145802356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 7 ^ (n + 3) : ℤ) - (3 * 6 ^ (n + 3) : ℤ) + (3 * 2 ^ (n + 3) : ℤ) - 2 : ℚ) / 60

end

end A021174.P4835487723145802356

noncomputable section

/-- A021174: Expansion of 1/((1-x)(1-2x)(1-6x)(1-7x)).

Offset 0, canonical program `A021174.P4835487723145802356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021174 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021174.P4835487723145802356.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021174.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021179.P9640181905789644497

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=7, a(4)=1, a(5)=4`
-/

namespace A021179.P9640181905789644497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5, 7, 1, 4] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021179.P9640181905789644497

noncomputable section

/-- A021179: Decimal expansion of 1/175.

Offset 0, canonical program `A021179.P9640181905789644497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021179 (n : ℕ) : ℤ :=
  A021179.P9640181905789644497.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021179.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021184.P12059021720679907245

`(10*8^(n+3)-21*6^(n+3)+35*2^(n+3)-24)/840`
-/

namespace A021184.P12059021720679907245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 8 ^ (n + 3) : ℤ) - (21 * 6 ^ (n + 3) : ℤ) + (35 * 2 ^ (n + 3) : ℤ) - 24 : ℚ) / 840

end

end A021184.P12059021720679907245

noncomputable section

/-- A021184: Expansion of 1/((1-x)*(1-2*x)*(1-6*x)*(1-8*x)).

Offset 0, canonical program `A021184.P12059021720679907245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021184 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021184.P12059021720679907245.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021194.P11212070926629959612

`(5*9^(n+3)-14*6^(n+3)+30*2^(n+3)-21)/840`
-/

namespace A021194.P11212070926629959612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 9 ^ (n + 3) : ℤ) - (14 * 6 ^ (n + 3) : ℤ) + (30 * 2 ^ (n + 3) : ℤ) - 21 : ℚ) / 840

end

end A021194.P11212070926629959612

noncomputable section

/-- A021194: Expansion of 1/((1-x)*(1-2*x)*(1-6*x)*(1-9*x)).

Offset 0, canonical program `A021194.P11212070926629959612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021194 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021194.P11212070926629959612.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021204.P17498099115027273037

`(2*11^(n+3)-9*6^(n+3)+25*2^(n+3)-18)/900`
-/

namespace A021204.P17498099115027273037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 11 ^ (n + 3) : ℤ) - (9 * 6 ^ (n + 3) : ℤ) + (25 * 2 ^ (n + 3) : ℤ) - 18 : ℚ) / 900

end

end A021204.P17498099115027273037

noncomputable section

/-- A021204: Expansion of 1/((1-x)(1-2x)(1-6x)(1-11x)).

Offset 0, canonical program `A021204.P17498099115027273037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021204 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021204.P17498099115027273037.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021213.P6185107031889423764

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=7, a(4)=8, a(5)=4, a(6)=6, a(7)=8, a(8)=8, a(9)=9`
-/

namespace A021213.P6185107031889423764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4, 7, 8, 4, 6, 8, 8, 9] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A021213.P6185107031889423764

noncomputable section

/-- A021213: Decimal expansion of 1/209.

Offset 0, canonical program `A021213.P6185107031889423764`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021213 (n : ℕ) : ℤ :=
  A021213.P6185107031889423764.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021224.P12365229876356953142

`(5*8^(n+3)-7^(n+4)+7*2^(n+3)-5)/210`
-/

namespace A021224.P12365229876356953142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 8 ^ (n + 3) : ℤ) - (7 ^ (n + 4) : ℤ) + (7 * 2 ^ (n + 3) : ℤ) - 5 : ℚ) / 210

end

end A021224.P12365229876356953142

noncomputable section

/-- A021224: Expansion of 1/((1-x)*(1-2*x)*(1-7*x)*(1-8*x)).

Offset 0, canonical program `A021224.P12365229876356953142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021224 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021224.P12365229876356953142.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021244.P18440990483470382662

`(11^(n+3)-3*7^(n+3)+8*2^(n+3)-6)/360`
-/

namespace A021244.P18440990483470382662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (3 * 7 ^ (n + 3) : ℤ) + (8 * 2 ^ (n + 3) : ℤ) - 6 : ℚ) / 360

end

end A021244.P18440990483470382662

noncomputable section

/-- A021244: Expansion of 1/((1-x)*(1-2*x)*(1-7*x)*(1-11*x)).

Offset 0, canonical program `A021244.P18440990483470382662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021244 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021244.P18440990483470382662.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021244.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021264.P14888156326320306814

`(3*9^(n+3)-4*8^(n+3)+2^(n+5)-3)/168`
-/

namespace A021264.P14888156326320306814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 3) : ℤ) - (4 * 8 ^ (n + 3) : ℤ) + (2 ^ (n + 5) : ℤ) - 3 : ℚ) / 168

end

end A021264.P14888156326320306814

noncomputable section

/-- A021264: Expansion of 1/((1-x)(1-2x)(1-8x)(1-9x)).

Offset 0, canonical program `A021264.P14888156326320306814`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021264 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021264.P14888156326320306814.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021284.P3492496486647517625

`(7*10^(n+3)-9^(n+4)+9*2^(n+3)-7)/504`
-/

namespace A021284.P3492496486647517625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 10 ^ (n + 3) : ℤ) - (9 ^ (n + 4) : ℤ) + (9 * 2 ^ (n + 3) : ℤ) - 7 : ℚ) / 504

end

end A021284.P3492496486647517625

noncomputable section

/-- A021284: Expansion of 1/((1-x)(1-2x)(1-9x)(1-10x)).

Offset 0, canonical program `A021284.P3492496486647517625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021284 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021284.P3492496486647517625.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021284.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021296.P17815933618706449

`a(n-1)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4, a(4)=2, a(5)=4, a(6)=6`
-/

namespace A021296.P17815933618706449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 4, 2, 4, 6] fun n a =>
  a (n - 1) - a (n - 4) + a (n - 5)

end

end A021296.P17815933618706449

noncomputable section

/-- A021296: Decimal expansion of 1/292.

Offset 0, canonical program `A021296.P17815933618706449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021296 (n : ℕ) : ℤ :=
  A021296.P17815933618706449.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021307.P12999588162684123115

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A021307.P12999588162684123115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 3)

end

end A021307.P12999588162684123115

noncomputable section

/-- A021307: Decimal expansion of 1/303.

Offset 0, canonical program `A021307.P12999588162684123115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021307 (n : ℕ) : ℤ :=
  A021307.P12999588162684123115.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021312.P6038390416270078623

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=2, a(4)=4, a(5)=6`
-/

namespace A021312.P6038390416270078623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 2, 4, 6] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021312.P6038390416270078623

noncomputable section

/-- A021312: Decimal expansion of 1/308.

Offset 0, canonical program `A021312.P6038390416270078623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021312 (n : ℕ) : ℤ :=
  A021312.P6038390416270078623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021314.P17222481556316649399

`(8*11^(n+3)-10^(n+4)+5*2^(n+4)-8)/720`
-/

namespace A021314.P17222481556316649399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 11 ^ (n + 3) : ℤ) - (10 ^ (n + 4) : ℤ) + (5 * 2 ^ (n + 4) : ℤ) - 8 : ℚ) / 720

end

end A021314.P17222481556316649399

noncomputable section

/-- A021314: Expansion of 1/((1-x)*(1-2*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A021314.P17222481556316649399`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021314.P17222481556316649399.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021316.P3986677502212046447

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=2, a(4)=0, a(5)=5, a(6)=1, a(7)=2`
-/

namespace A021316.P3986677502212046447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 2, 0, 5, 1, 2] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4) + a (n - 5)

end

end A021316.P3986677502212046447

noncomputable section

/-- A021316: Decimal expansion of 1/312.

Offset 0, canonical program `A021316.P3986677502212046447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021316 (n : ℕ) : ℤ :=
  A021316.P3986677502212046447.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021319.P9177280253071944467

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=1, a(4)=7`
-/

namespace A021319.P9177280253071944467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 1, 7] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021319.P9177280253071944467

noncomputable section

/-- A021319: Decimal expansion of 1/315.

Offset 0, canonical program `A021319.P9177280253071944467`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021319 (n : ℕ) : ℤ :=
  A021319.P9177280253071944467.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021329.P6679805031005277885

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=0, a(4)=7, a(5)=6`
-/

namespace A021329.P6679805031005277885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 0, 7, 6] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021329.P6679805031005277885

noncomputable section

/-- A021329: Decimal expansion of 1/325.

Offset 0, canonical program `A021329.P6679805031005277885`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021329 (n : ℕ) : ℤ :=
  A021329.P6679805031005277885.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021334.P11930434218737657758

`(9*12^(n+3)-11^(n+4)+11*2^(n+3)-9)/990`
-/

namespace A021334.P11930434218737657758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 12 ^ (n + 3) : ℤ) - (11 ^ (n + 4) : ℤ) + (11 * 2 ^ (n + 3) : ℤ) - 9 : ℚ) / 990

end

end A021334.P11930434218737657758

noncomputable section

/-- A021334: Expansion of 1/((1-x)(1-2x)(1-11x)(1-12x)).

Offset 0, canonical program `A021334.P11930434218737657758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021334 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021334.P11930434218737657758.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021337.P9515870575987216114

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A021337.P9515870575987216114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  a (n - 3)

end

end A021337.P9515870575987216114

noncomputable section

/-- A021337: Decimal expansion of 1/333.

Offset 0, canonical program `A021337.P9515870575987216114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021337 (n : ℕ) : ℤ :=
  (A021337.P9515870575987216114.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021344.P2741892672048182968

`13*a(n-1)-59*a(n-2)+107*a(n-3)-60*a(n-4)` with `a(0)=1, a(1)=13, a(2)=110, a(3)=770`
-/

namespace A021344.P2741892672048182968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 110, 770] fun n a =>
  13 * a (n - 1) - 59 * a (n - 2) + 107 * a (n - 3) - 60 * a (n - 4)

end

end A021344.P2741892672048182968

noncomputable section

/-- A021344: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-5*x)).

Offset 0, canonical program `A021344.P2741892672048182968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021344 (n : ℕ) : ℤ :=
  A021344.P2741892672048182968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021354.P14877849323683355384

`14*a(n-1)-67*a(n-2)+126*a(n-3)-72*a(n-4)` with `a(0)=1, a(1)=14, a(2)=129, a(3)=994`
-/

namespace A021354.P14877849323683355384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14, 129, 994] fun n a =>
  14 * a (n - 1) - 67 * a (n - 2) + 126 * a (n - 3) - 72 * a (n - 4)

end

end A021354.P14877849323683355384

noncomputable section

/-- A021354: Expansion of 1/((1-x)(1-3x)(1-4x)(1-6x)).

Offset 0, canonical program `A021354.P14877849323683355384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021354 (n : ℕ) : ℤ :=
  A021354.P14877849323683355384.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021364.P6123824158283261816

`(7^(n+3)-2*4^(n+4)+3^(n+5)-2)/72`
-/

namespace A021364.P6123824158283261816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 3) : ℤ) - (2 * 4 ^ (n + 4) : ℤ) + (3 ^ (n + 5) : ℤ) - 2 : ℚ) / 72

end

end A021364.P6123824158283261816

noncomputable section

/-- A021364: Expansion of 1/((1-x)*(1-3*x)*(1-4*x)*(1-7*x)).

Offset 0, canonical program `A021364.P6123824158283261816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021364 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021364.P6123824158283261816.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021368.P2847095819462443622

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=7, a(4)=4, a(5)=7`
-/

namespace A021368.P2847095819462443622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 7, 4, 7] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021368.P2847095819462443622

noncomputable section

/-- A021368: Decimal expansion of 1/364.

Offset 0, canonical program `A021368.P2847095819462443622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021368 (n : ℕ) : ℤ :=
  A021368.P2847095819462443622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021384.P6289636504534353529

`(10^(n+3)-21*4^(n+3)+27*3^(n+3)-7)/378`
-/

namespace A021384.P6289636504534353529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (21 * 4 ^ (n + 3) : ℤ) + (27 * 3 ^ (n + 3) : ℤ) - 7 : ℚ) / 378

end

end A021384.P6289636504534353529

noncomputable section

/-- A021384: Expansion of 1/((1-x)(1-3x)(1-4x)(1-10x)).

Offset 0, canonical program `A021384.P6289636504534353529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021384 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021384.P6289636504534353529.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021403.P11807217327430040666

`a(n-1)-a(n-9)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5, a(4)=0, a(5)=6, a(6)=2, a(7)=6, a(8)=5, a(9)=6`
-/

namespace A021403.P11807217327430040666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 5, 0, 6, 2, 6, 5, 6] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 10)

end

end A021403.P11807217327430040666

noncomputable section

/-- A021403: Decimal expansion of 1/399.

Offset 0, canonical program `A021403.P11807217327430040666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021403 (n : ℕ) : ℤ :=
  A021403.P11807217327430040666.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021403.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021404.P10921507713033116698

`(144*12^n-176*4^n+99*3^n-1)/66`
-/

namespace A021404.P10921507713033116698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((144 * 12 ^ n : ℤ) - (176 * 4 ^ n : ℤ) + (99 * 3 ^ n : ℤ) - 1 : ℚ) / 66

end

end A021404.P10921507713033116698

noncomputable section

/-- A021404: Expansion of 1/((1-x)*(1-3x)*(1-4x)*(1-12x)).

Offset 0, canonical program `A021404.P10921507713033116698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021404.P10921507713033116698.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021404.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021408.P10141694295047754286

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4, a(4)=7, a(5)=5, a(6)=2, a(7)=4`
-/

namespace A021408.P10141694295047754286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 4, 7, 5, 2, 4] fun n a =>
  a (n - 4)

end

end A021408.P10141694295047754286

noncomputable section

/-- A021408: Decimal expansion of 1/404.

Offset 0, canonical program `A021408.P10141694295047754286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021408 (n : ℕ) : ℤ :=
  (A021408.P10141694295047754286.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021408.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021414.P9257354443817733627

`(8*6^(n+3)-15*5^(n+3)+10*3^(n+3)-3)/120`
-/

namespace A021414.P9257354443817733627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 6 ^ (n + 3) : ℤ) - (15 * 5 ^ (n + 3) : ℤ) + (10 * 3 ^ (n + 3) : ℤ) - 3 : ℚ) / 120

end

end A021414.P9257354443817733627

noncomputable section

/-- A021414: Expansion of 1/((1-x)(1-3x)(1-5x)(1-6x)).

Offset 0, canonical program `A021414.P9257354443817733627`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021414 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021414.P9257354443817733627.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021420.P17602692373178697445

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4, a(4)=0, a(5)=3, a(6)=8, a(7)=4, a(8)=6`
-/

namespace A021420.P17602692373178697445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 4, 0, 3, 8, 4, 6] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021420.P17602692373178697445

noncomputable section

/-- A021420: Decimal expansion of 1/416.

Offset 0, canonical program `A021420.P17602692373178697445`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021420 (n : ℕ) : ℤ :=
  A021420.P17602692373178697445.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021434.P9916888968984811589

`(8^(n+4)-7*5^(n+4)+14*3^(n+4)-15)/840`
-/

namespace A021434.P9916888968984811589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 4) : ℤ) - (7 * 5 ^ (n + 4) : ℤ) + (14 * 3 ^ (n + 4) : ℤ) - 15 : ℚ) / 840

end

end A021434.P9916888968984811589

noncomputable section

/-- A021434: Expansion of 1/((1-x)(1-3x)(1-5x)(1-8x)).

Offset 0, canonical program `A021434.P9916888968984811589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021434 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021434.P9916888968984811589.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021454.P7649168580883639555

`(3*9^(n+2)-2*5^(n+3)+8*3^(n+2)-1)/64`
-/

namespace A021454.P7649168580883639555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 2) : ℤ) - (2 * 5 ^ (n + 3) : ℤ) + (8 * 3 ^ (n + 2) : ℤ) - 1 : ℚ) / 64

end

end A021454.P7649168580883639555

noncomputable section

/-- A021454: Expansion of 1/((1-x)(1-3x)(1-5x)(1-9x)).

Offset 0, canonical program `A021454.P7649168580883639555`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021454.P7649168580883639555.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021466.P16567478159043571720

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=6`
-/

namespace A021466.P16567478159043571720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 1, 6] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021466.P16567478159043571720

noncomputable section

/-- A021466: Decimal expansion of 1/462.

Offset 0, canonical program `A021466.P16567478159043571720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021466 (n : ℕ) : ℤ :=
  A021466.P16567478159043571720.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021466.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021474.P10247681984688898676

`(11^(n+3)-10*5^(n+3)+15*3^(n+3)-6)/480`
-/

namespace A021474.P10247681984688898676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 ^ (n + 3) : ℤ) - (10 * 5 ^ (n + 3) : ℤ) + (15 * 3 ^ (n + 3) : ℤ) - 6 : ℚ) / 480

end

end A021474.P10247681984688898676

noncomputable section

/-- A021474: Expansion of 1/((1-x)(1-3x)(1-5x)(1-11x)).

Offset 0, canonical program `A021474.P10247681984688898676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021474.P10247681984688898676.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021482.P15172944435135842843

`a(n-7)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=9, a(5)=2, a(6)=0, a(7)=5`
-/

namespace A021482.P15172944435135842843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 0, 9, 2, 0, 5] fun n a =>
  a (n - 7)

end

end A021482.P15172944435135842843

noncomputable section

/-- A021482: Decimal expansion of 1/478.

Offset 0, canonical program `A021482.P15172944435135842843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021482 (n : ℕ) : ℤ :=
  (A021482.P15172944435135842843.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021485.P11290872009575663822

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=7`
-/

namespace A021485.P11290872009575663822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 0, 7] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4) + a (n - 5)

end

end A021485.P11290872009575663822

noncomputable section

/-- A021485: Decimal expansion of 1/481.

Offset 0, canonical program `A021485.P11290872009575663822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021485 (n : ℕ) : ℤ :=
  A021485.P11290872009575663822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021494.P1676618742672963756

`(5*7^(n+3)-8*6^(n+3)+5*3^(n+3)-2)/120`
-/

namespace A021494.P1676618742672963756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 7 ^ (n + 3) : ℤ) - (8 * 6 ^ (n + 3) : ℤ) + (5 * 3 ^ (n + 3) : ℤ) - 2 : ℚ) / 120

end

end A021494.P1676618742672963756

noncomputable section

/-- A021494: Expansion of 1/((1-x)(1-3x)(1-6x)(1-7x)).

Offset 0, canonical program `A021494.P1676618742672963756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021494 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021494.P1676618742672963756.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021496.P12985417915601624047

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=0, a(4)=3, a(5)=2, a(6)=5`
-/

namespace A021496.P12985417915601624047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 0, 3, 2, 5] fun n a =>
  a (n - 5)

end

end A021496.P12985417915601624047

noncomputable section

/-- A021496: Decimal expansion of 1/492.

Offset 0, canonical program `A021496.P12985417915601624047`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021496 (n : ℕ) : ℤ :=
  (A021496.P12985417915601624047.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021503.P7873642768490043489

`(3*8^(n+3)-7*6^(n+3)+7*3^(n+3)-3)/210`
-/

namespace A021503.P7873642768490043489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 8 ^ (n + 3) : ℤ) - (7 * 6 ^ (n + 3) : ℤ) + (7 * 3 ^ (n + 3) : ℤ) - 3 : ℚ) / 210

end

end A021503.P7873642768490043489

noncomputable section

/-- A021503: Expansion of 1/((1-x)(1-3x)(1-6x)(1-8x)).

Offset 0, canonical program `A021503.P7873642768490043489`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021503.P7873642768490043489.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021504.P16014013981475747488

`(5*9^(n+3)-16*6^(n+3)+20*3^(n+3)-9)/720`
-/

namespace A021504.P16014013981475747488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 9 ^ (n + 3) : ℤ) - (16 * 6 ^ (n + 3) : ℤ) + (20 * 3 ^ (n + 3) : ℤ) - 9 : ℚ) / 720

end

end A021504.P16014013981475747488

noncomputable section

/-- A021504: Expansion of 1/((1-x)(1-3x)(1-6x)(1-9x)).

Offset 0, canonical program `A021504.P16014013981475747488`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021504.P16014013981475747488.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021508.P14764571106096136458

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9, a(4)=8, a(5)=4`
-/

namespace A021508.P14764571106096136458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 9, 8, 4] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A021508.P14764571106096136458

noncomputable section

/-- A021508: Decimal expansion of 1/504.

Offset 0, canonical program `A021508.P14764571106096136458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021508 (n : ℕ) : ℤ :=
  A021508.P14764571106096136458.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021509.P18286176894673684441

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9`
-/

namespace A021509.P18286176894673684441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 9] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 3)

end

end A021509.P18286176894673684441

noncomputable section

/-- A021509: Decimal expansion of 1/505.

Offset 0, canonical program `A021509.P18286176894673684441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021509 (n : ℕ) : ℤ :=
  A021509.P18286176894673684441.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021524.P9411390622290237392

`17*a(n-1)-66*a(n-2)+(3^(n+1)-1)/2` with `a(0)=1, a(1)=21`
-/

namespace A021524.P9411390622290237392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 21] fun n a =>
  17 * a (n - 1) - 66 * a (n - 2) + ((3 ^ (n + 1) : ℤ) - 1 : ℚ) / 2

end

end A021524.P9411390622290237392

noncomputable section

/-- A021524: Expansion of 1/((1-x)*(1-3*x)*(1-6*x)*(1-11*x)).

Offset 0, canonical program `A021524.P9411390622290237392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021524 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021524.P9411390622290237392.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021544.P2615228815301530893

`(3*8^(n+4)-5*7^(n+4)+7*3^(n+4)-10)/840`
-/

namespace A021544.P2615228815301530893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 8 ^ (n + 4) : ℤ) - (5 * 7 ^ (n + 4) : ℤ) + (7 * 3 ^ (n + 4) : ℤ) - 10 : ℚ) / 840

end

end A021544.P2615228815301530893

noncomputable section

/-- A021544: Expansion of g.f. 1/((1 - x)*(1 - 3*x)*(1 - 7*x)*(1 - 8*x)).

Offset 0, canonical program `A021544.P2615228815301530893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021544 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021544.P2615228815301530893.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021576.P8825799687737856853

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=4, a(5)=8`
-/

namespace A021576.P8825799687737856853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 7, 4, 8] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021576.P8825799687737856853

noncomputable section

/-- A021576: Decimal expansion of 1/572.

Offset 0, canonical program `A021576.P8825799687737856853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021576 (n : ℕ) : ℤ :=
  A021576.P8825799687737856853.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021594.P3829379311749281716

`(9^(n+3)-2*7^(n+3)+2*3^(n+3)-1)/96`
-/

namespace A021594.P3829379311749281716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (2 * 7 ^ (n + 3) : ℤ) + (2 * 3 ^ (n + 3) : ℤ) - 1 : ℚ) / 96

end

end A021594.P3829379311749281716

noncomputable section

/-- A021594: Expansion of 1/((1-x)(1-3x)(1-7x)(1-9x)).

Offset 0, canonical program `A021594.P3829379311749281716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021594 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021594.P3829379311749281716.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021594.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021664.P1079443363074872645

`3^(n+3)/80-1/140+11^(n+3)/240-8^(n+3)/105`
-/

namespace A021664.P1079443363074872645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 3) : ℚ) / 80 - (1 : ℚ) / 140 + (11 ^ (n + 3) : ℚ) / 240 - (8 ^ (n + 3) : ℚ) / 105

end

end A021664.P1079443363074872645

noncomputable section

/-- A021664: Expansion of 1/((1-x)(1-3x)(1-8x)(1-11x)).

Offset 0, canonical program `A021664.P1079443363074872645`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021664 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021664.P1079443363074872645.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021664.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021719.P7797407013895791144

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=9`
-/

namespace A021719.P7797407013895791144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 9] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021719.P7797407013895791144

noncomputable section

/-- A021719: Decimal expansion of 1/715.

Offset 0, canonical program `A021719.P7797407013895791144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021719 (n : ℕ) : ℤ :=
  A021719.P7797407013895791144.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021721.P15997870293131377468

`a(n-7)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=9, a(5)=4, a(6)=7`
-/

namespace A021721.P15997870293131377468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3, 9, 4, 7] fun n a =>
  a (n - 7)

end

end A021721.P15997870293131377468

noncomputable section

/-- A021721: Decimal expansion of 1/717.

Offset 0, canonical program `A021721.P15997870293131377468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021721 (n : ℕ) : ℤ :=
  (A021721.P15997870293131377468.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021732.P5221239379569253357

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=7, a(5)=3, a(6)=6`
-/

namespace A021732.P5221239379569253357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 7, 3, 6] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A021732.P5221239379569253357

noncomputable section

/-- A021732: Decimal expansion of 1/728.

Offset 0, canonical program `A021732.P5221239379569253357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021732 (n : ℕ) : ℤ :=
  A021732.P5221239379569253357.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021732.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021742.P1308492028247060121

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=5, a(5)=5`
-/

namespace A021742.P1308492028247060121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 3, 5, 5] fun n a =>
  a (n - 5)

end

end A021742.P1308492028247060121

noncomputable section

/-- A021742: Decimal expansion of 1/738.

Offset 0, canonical program `A021742.P1308492028247060121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021742 (n : ℕ) : ℤ :=
  (A021742.P1308492028247060121.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021742.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021744.P13910749194315842015

`(6^(n+4)-3*5^(n+4)+10*4^(n+3)-1)/60`
-/

namespace A021744.P13910749194315842015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ (n + 4) : ℤ) - (3 * 5 ^ (n + 4) : ℤ) + (10 * 4 ^ (n + 3) : ℤ) - 1 : ℚ) / 60

end

end A021744.P13910749194315842015

noncomputable section

/-- A021744: Expansion of 1/((1-x)(1-4x)(1-5x)(1-6x)).

Offset 0, canonical program `A021744.P13910749194315842015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021744 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021744.P13910749194315842015.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021754.P7869242235409666796

`(2*7^(n+3)-9*5^(n+3)+8*4^(n+3)-1)/72`
-/

namespace A021754.P7869242235409666796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 7 ^ (n + 3) : ℤ) - (9 * 5 ^ (n + 3) : ℤ) + (8 * 4 ^ (n + 3) : ℤ) - 1 : ℚ) / 72

end

end A021754.P7869242235409666796

noncomputable section

/-- A021754: Expansion of 1/((1-x)(1-4x)(1-5x)(1-7x)).

Offset 0, canonical program `A021754.P7869242235409666796`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021754 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021754.P7869242235409666796.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021760.P12831850512159757607

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=2, a(5)=2, a(6)=7`
-/

namespace A021760.P12831850512159757607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 2, 2, 7] fun n a =>
  a (n - 1) - a (n - 2) + a (n - 3) - a (n - 4) + a (n - 5)

end

end A021760.P12831850512159757607

noncomputable section

/-- A021760: Decimal expansion of 1/756.

Offset 0, canonical program `A021760.P12831850512159757607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021760 (n : ℕ) : ℤ :=
  A021760.P12831850512159757607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021772.P5454749926472165431

`(3*9^(n+3)-30*5^(n+3)+32*4^(n+3)-5)/480`
-/

namespace A021772.P5454749926472165431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 3) : ℤ) - (30 * 5 ^ (n + 3) : ℤ) + (32 * 4 ^ (n + 3) : ℤ) - 5 : ℚ) / 480

end

end A021772.P5454749926472165431

noncomputable section

/-- A021772: Expansion of 1/((1-x)(1-4x)(1-5x)(1-9x)).

Offset 0, canonical program `A021772.P5454749926472165431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021772 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021772.P5454749926472165431.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021817.P11668190947245385376

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A021817.P11668190947245385376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 3] fun n a =>
  a (n - 5)

end

end A021817.P11668190947245385376

noncomputable section

/-- A021817: Decimal expansion of 1/813.

Offset 0, canonical program `A021817.P11668190947245385376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021817 (n : ℕ) : ℤ :=
  (A021817.P11668190947245385376.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021817.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021823.P10784668450767047098

`2-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A021823.P10784668450767047098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  2 - a (n - 3)

end

end A021823.P10784668450767047098

noncomputable section

/-- A021823: Decimal expansion of 1/819.

Offset 0, canonical program `A021823.P10784668450767047098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021823 (n : ℕ) : ℤ :=
  A021823.P10784668450767047098.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021824.P12247089824460013579

`(9^(n+3)-4*6^(n+3)+4^(n+4)-1)/120`
-/

namespace A021824.P12247089824460013579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 3) : ℤ) - (4 * 6 ^ (n + 3) : ℤ) + (4 ^ (n + 4) : ℤ) - 1 : ℚ) / 120

end

end A021824.P12247089824460013579

noncomputable section

/-- A021824: Expansion of 1/((1-x)(1-4x)(1-6x)(1-9x)).

Offset 0, canonical program `A021824.P12247089824460013579`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021824 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021824.P12247089824460013579.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021854.P14533442744147001354

`(9*8^(n+3)-14*7^(n+3)+7*4^(n+3)-2)/252`
-/

namespace A021854.P14533442744147001354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * 8 ^ (n + 3) : ℤ) - (14 * 7 ^ (n + 3) : ℤ) + (7 * 4 ^ (n + 3) : ℤ) - 2 : ℚ) / 252

end

end A021854.P14533442744147001354

noncomputable section

/-- A021854: Expansion of 1/((1-x)(1-4x)(1-7x)(1-8x)).

Offset 0, canonical program `A021854.P14533442744147001354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021854.P14533442744147001354.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021864.P8337930843828013956

`(9^(n+4)-20*7^(n+3)+4^(n+5)-5)/720`
-/

namespace A021864.P8337930843828013956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ (n + 4) : ℤ) - (20 * 7 ^ (n + 3) : ℤ) + (4 ^ (n + 5) : ℤ) - 5 : ℚ) / 720

end

end A021864.P8337930843828013956

noncomputable section

/-- A021864: Expansion of 1/((1-x)(1-4x)(1-7x)(1-9x)).

Offset 0, canonical program `A021864.P8337930843828013956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021864 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021864.P8337930843828013956.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021874.P9918002553194003290

`(10^(n+3)-3*7^(n+3)+3*4^(n+3)-1)/162`
-/

namespace A021874.P9918002553194003290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 3) : ℤ) - (3 * 7 ^ (n + 3) : ℤ) + (3 * 4 ^ (n + 3) : ℤ) - 1 : ℚ) / 162

end

end A021874.P9918002553194003290

noncomputable section

/-- A021874: Expansion of 1/((1-x) * (1-4*x) * (1-7*x) * (1-10*x)).

Offset 0, canonical program `A021874.P9918002553194003290`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021874 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021874.P9918002553194003290.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021874.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021880.P10973159702413613238

`a(n-1)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4, a(5)=1, a(6)=5`
-/

namespace A021880.P10973159702413613238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 4, 1, 5] fun n a =>
  a (n - 1) - a (n - 4) + a (n - 5)

end

end A021880.P10973159702413613238

noncomputable section

/-- A021880: Decimal expansion of 1/876.

Offset 0, canonical program `A021880.P10973159702413613238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021880 (n : ℕ) : ℤ :=
  A021880.P10973159702413613238.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021880.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021904.P11080168878951395664

`(21*9^(n+3)-30*8^(n+3)+14*4^(n+3)-5)/840`
-/

namespace A021904.P11080168878951395664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 9 ^ (n + 3) : ℤ) - (30 * 8 ^ (n + 3) : ℤ) + (14 * 4 ^ (n + 3) : ℤ) - 5 : ℚ) / 840

end

end A021904.P11080168878951395664

noncomputable section

/-- A021904: Expansion of 1/((1-x)(1-4x)(1-8x)(1-9x)).

Offset 0, canonical program `A021904.P11080168878951395664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A021904.P11080168878951395664.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021913.P3902253882929539198

`floor(n%4/2)`
-/

namespace A021913.P3902253882929539198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 4 : ℕ) : ℚ) / 2⌋

end

end A021913.P3902253882929539198

noncomputable section

/-- A021913: Period 4: repeat [0, 0, 1, 1].

Offset 0, canonical program `A021913.P3902253882929539198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021913 (n : ℕ) : ℤ :=
  A021913.P3902253882929539198.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A021979.P13417165036691263870

`2*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A021979.P13417165036691263870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 2] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A021979.P13417165036691263870

noncomputable section

/-- A021979: Decimal expansion of 1/975.

Offset 0, canonical program `A021979.P13417165036691263870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021979 (n : ℕ) : ℤ :=
  A021979.P13417165036691263870.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A021979.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022003.P2606958226585023825

`floor((n+1)/3)-floor(n/3)`
-/

namespace A022003.P2606958226585023825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 3⌋ - ⌊(n : ℚ) / 3⌋

end

end A022003.P2606958226585023825

noncomputable section

/-- A022003: Decimal expansion of 1/999.

Offset 0, canonical program `A022003.P2606958226585023825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022003 (n : ℕ) : ℤ :=
  A022003.P2606958226585023825.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022003.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022018.P6958257251310051863

`8*a(n-1)+a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=16, a(2)=129`
-/

namespace A022018.P6958257251310051863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 16, 129] fun n a =>
  8 * a (n - 1) + a (n - 2) - 4 * a (n - 3)

end

end A022018.P6958257251310051863

noncomputable section

/-- A022018: Define the sequence UD(a(0),a(1)) by a(n) is the least integer such that a(n)/a(n-1) > a(n-1)/a(n-2)+1 for even n >= 2 and such that a(n)/a(n-1) > a(n-1)/a(n-2) for odd n>=2. This is UD(2,16).

Offset 0, canonical program `A022018.P6958257251310051863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022018 (n : ℕ) : ℤ :=
  A022018.P6958257251310051863.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022022.P10393089970228619304

`floor(a(n-1)²/a(n-2))+1` with `a(0)=5, a(1)=45`
-/

namespace A022022.P10393089970228619304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 45] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A022022.P10393089970228619304

noncomputable section

/-- A022022: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(5,45).

Offset 0, canonical program `A022022.P10393089970228619304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022022 (n : ℕ) : ℤ :=
  A022022.P10393089970228619304.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022024.P1635951240151897908

`floor(a(n-1)²/a(n-2))+1` with `a(0)=6, a(1)=66`
-/

namespace A022024.P1635951240151897908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 66] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A022024.P1635951240151897908

noncomputable section

/-- A022024: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(6,66).

Offset 0, canonical program `A022024.P1635951240151897908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022024 (n : ℕ) : ℤ :=
  A022024.P1635951240151897908.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022024.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022025.P11905350820021708050

`1+floor(a(n-1)²/a(n-2))` with `a(0)=6, a(1)=102`
-/

namespace A022025.P11905350820021708050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 102] fun n a =>
  1 + ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022025.P11905350820021708050

noncomputable section

/-- A022025: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(6,102).

Offset 0, canonical program `A022025.P11905350820021708050`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022025 (n : ℕ) : ℤ :=
  A022025.P11905350820021708050.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022033.P13917457032251147298

`(10*7^(n+3)-24*6^(n+3)+15*5^(n+3)-1)/120`
-/

namespace A022033.P13917457032251147298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 7 ^ (n + 3) : ℤ) - (24 * 6 ^ (n + 3) : ℤ) + (15 * 5 ^ (n + 3) : ℤ) - 1 : ℚ) / 120

end

end A022033.P13917457032251147298

noncomputable section

/-- A022033: Expansion of 1/((1-x)(1-5x)(1-6x)(1-7x)).

Offset 0, canonical program `A022033.P13917457032251147298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022033 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022033.P13917457032251147298.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022033.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022034.P14468903691370572712

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=6, a(1)=31`
-/

namespace A022034.P14468903691370572712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 31] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022034.P14468903691370572712

noncomputable section

/-- A022034: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(6,31).

Offset 0, canonical program `A022034.P14468903691370572712`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022034 (n : ℕ) : ℤ :=
  A022034.P14468903691370572712.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022035.P2336562622855540167

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=6, a(1)=37`
-/

namespace A022035.P2336562622855540167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 37] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022035.P2336562622855540167

noncomputable section

/-- A022035: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(6,37).

Offset 0, canonical program `A022035.P2336562622855540167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022035 (n : ℕ) : ℤ :=
  A022035.P2336562622855540167.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022036.P14718652148872808596

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=7, a(1)=43`
-/

namespace A022036.P14718652148872808596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 43] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022036.P14718652148872808596

noncomputable section

/-- A022036: Define the sequence T(a_0,a_1) by a_{n+2} is the greatest integer such that a_{n+2}/a_{n+1}= 0. This is T(7,43).

Offset 0, canonical program `A022036.P14718652148872808596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022036 (n : ℕ) : ℤ :=
  A022036.P14718652148872808596.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022036.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022037.P4263471199535925473

`floor(a(n-1)²/a(n-2))` with `a(0)=7, a(1)=50`
-/

namespace A022037.P4263471199535925473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 50] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022037.P4263471199535925473

noncomputable section

/-- A022037: Define the sequence T(a(0), a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(7,50).

Offset 0, canonical program `A022037.P4263471199535925473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022037 (n : ℕ) : ℤ :=
  A022037.P4263471199535925473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022038.P11441735502848458594

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=8, a(1)=57`
-/

namespace A022038.P11441735502848458594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 57] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022038.P11441735502848458594

noncomputable section

/-- A022038: Define the sequence T(a_0,a_1) by a_{n+2} is the greatest integer such that a_{n+2}/a_{n+1}= 0. This is T(8,57).

Offset 0, canonical program `A022038.P11441735502848458594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022038 (n : ℕ) : ℤ :=
  A022038.P11441735502848458594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022039.P11868856921427177860

`floor(a(n-1)²/a(n-2))` with `a(0)=8, a(1)=65`
-/

namespace A022039.P11868856921427177860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 65] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A022039.P11868856921427177860

noncomputable section

/-- A022039: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(8,65).

Offset 0, canonical program `A022039.P11868856921427177860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022039 (n : ℕ) : ℤ :=
  A022039.P11868856921427177860.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022040.P15837520231692142198

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=16, a(1)=36`
-/

namespace A022040.P15837520231692142198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 36] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A022040.P15837520231692142198

noncomputable section

/-- A022040: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(16,36).

Offset 0, canonical program `A022040.P15837520231692142198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022040 (n : ℕ) : ℤ :=
  A022040.P15837520231692142198.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022095.P17672997871501638119

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A022095.P17672997871501638119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022095.P17672997871501638119

noncomputable section

/-- A022095: Fibonacci sequence beginning 1, 5.

Offset 0, canonical program `A022095.P17672997871501638119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022095 (n : ℕ) : ℤ :=
  (A022095.P17672997871501638119.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022096.P12625714347536251379

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A022096.P12625714347536251379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022096.P12625714347536251379

noncomputable section

/-- A022096: Fibonacci sequence beginning 1, 6.

Offset 0, canonical program `A022096.P12625714347536251379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022096 (n : ℕ) : ℤ :=
  (A022096.P12625714347536251379.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022096.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022097.P3484395744453812616

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A022097.P3484395744453812616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022097.P3484395744453812616

noncomputable section

/-- A022097: Fibonacci sequence beginning 1, 7.

Offset 0, canonical program `A022097.P3484395744453812616`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022097 (n : ℕ) : ℤ :=
  (A022097.P3484395744453812616.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022098.P1510917254586767225

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A022098.P1510917254586767225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022098.P1510917254586767225

noncomputable section

/-- A022098: Fibonacci sequence beginning 1, 8.

Offset 0, canonical program `A022098.P1510917254586767225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022098 (n : ℕ) : ℤ :=
  (A022098.P1510917254586767225.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022099.P12234569651380880048

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A022099.P12234569651380880048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022099.P12234569651380880048

noncomputable section

/-- A022099: Fibonacci sequence beginning 1, 9.

Offset 0, canonical program `A022099.P12234569651380880048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022099 (n : ℕ) : ℤ :=
  (A022099.P12234569651380880048.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022099.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022100.P15671973216480644968

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A022100.P15671973216480644968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022100.P15671973216480644968

noncomputable section

/-- A022100: Fibonacci sequence beginning 1, 10.

Offset 0, canonical program `A022100.P15671973216480644968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022100 (n : ℕ) : ℤ :=
  (A022100.P15671973216480644968.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022101.P15823990390624724794

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A022101.P15823990390624724794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022101.P15823990390624724794

noncomputable section

/-- A022101: Fibonacci sequence beginning 1, 11.

Offset 0, canonical program `A022101.P15823990390624724794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022101 (n : ℕ) : ℤ :=
  (A022101.P15823990390624724794.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022102.P13140924519174479458

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A022102.P13140924519174479458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022102.P13140924519174479458

noncomputable section

/-- A022102: Fibonacci sequence beginning 1, 12.

Offset 0, canonical program `A022102.P13140924519174479458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022102 (n : ℕ) : ℤ :=
  (A022102.P13140924519174479458.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022103.P11139306393898818098

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=13`
-/

namespace A022103.P11139306393898818098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022103.P11139306393898818098

noncomputable section

/-- A022103: Fibonacci sequence beginning 1, 13.

Offset 0, canonical program `A022103.P11139306393898818098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022103 (n : ℕ) : ℤ :=
  (A022103.P11139306393898818098.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022103.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022104.P4204111084182463687

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=14`
-/

namespace A022104.P4204111084182463687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022104.P4204111084182463687

noncomputable section

/-- A022104: Fibonacci sequence beginning 1, 14.

Offset 0, canonical program `A022104.P4204111084182463687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022104 (n : ℕ) : ℤ :=
  (A022104.P4204111084182463687.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022105.P6847273964616847296

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=15`
-/

namespace A022105.P6847273964616847296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022105.P6847273964616847296

noncomputable section

/-- A022105: Fibonacci sequence beginning 1, 15.

Offset 0, canonical program `A022105.P6847273964616847296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022105 (n : ℕ) : ℤ :=
  (A022105.P6847273964616847296.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022106.P14518379427665981254

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=16`
-/

namespace A022106.P14518379427665981254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022106.P14518379427665981254

noncomputable section

/-- A022106: Fibonacci sequence beginning 1, 16.

Offset 0, canonical program `A022106.P14518379427665981254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022106 (n : ℕ) : ℤ :=
  (A022106.P14518379427665981254.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022107.P10338226301340057203

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=17`
-/

namespace A022107.P10338226301340057203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022107.P10338226301340057203

noncomputable section

/-- A022107: Fibonacci sequence beginning 1, 17.

Offset 0, canonical program `A022107.P10338226301340057203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022107 (n : ℕ) : ℤ :=
  (A022107.P10338226301340057203.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022107.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022108.P5371419221732561044

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=18`
-/

namespace A022108.P5371419221732561044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022108.P5371419221732561044

noncomputable section

/-- A022108: Fibonacci sequence beginning 1, 18.

Offset 0, canonical program `A022108.P5371419221732561044`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022108 (n : ℕ) : ℤ :=
  (A022108.P5371419221732561044.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022109.P11700321204358946792

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=19`
-/

namespace A022109.P11700321204358946792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022109.P11700321204358946792

noncomputable section

/-- A022109: Fibonacci sequence beginning 1, 19.

Offset 0, canonical program `A022109.P11700321204358946792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022109 (n : ℕ) : ℤ :=
  (A022109.P11700321204358946792.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022109.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022110.P154848386883198209

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=20`
-/

namespace A022110.P154848386883198209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022110.P154848386883198209

noncomputable section

/-- A022110: Fibonacci sequence beginning 1, 20.

Offset 0, canonical program `A022110.P154848386883198209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022110 (n : ℕ) : ℤ :=
  (A022110.P154848386883198209.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022111.P160649705718932570

`256*8^n/21-108*6^n/5+125*5^n/12-1/140`
-/

namespace A022111.P160649705718932570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (256 * 8 ^ n : ℚ) / 21 - (108 * 6 ^ n : ℚ) / 5 + (125 * 5 ^ n : ℚ) / 12 - (1 : ℚ) / 140

end

end A022111.P160649705718932570

noncomputable section

/-- A022111: Expansion of 1/((1-x)*(1-5x)*(1-6x)*(1-8x)).

Offset 0, canonical program `A022111.P160649705718932570`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022111 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022111.P160649705718932570.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022112.P1023022218861032666

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=6`
-/

namespace A022112.P1023022218861032666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 6] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022112.P1023022218861032666

noncomputable section

/-- A022112: Fibonacci sequence beginning 2, 6.

Offset 0, canonical program `A022112.P1023022218861032666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022112 (n : ℕ) : ℤ :=
  (A022112.P1023022218861032666.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022113.P17723061418092029972

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=7`
-/

namespace A022113.P17723061418092029972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022113.P17723061418092029972

noncomputable section

/-- A022113: Fibonacci sequence beginning 2, 7.

Offset 0, canonical program `A022113.P17723061418092029972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022113 (n : ℕ) : ℤ :=
  (A022113.P17723061418092029972.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022113.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022117.P18148123015461175005

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=15`
-/

namespace A022117.P18148123015461175005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 15] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022117.P18148123015461175005

noncomputable section

/-- A022117: Fibonacci sequence beginning 2, 15.

Offset 0, canonical program `A022117.P18148123015461175005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022117 (n : ℕ) : ℤ :=
  (A022117.P18148123015461175005.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022117.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022122.P15218543973315576389

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=10`
-/

namespace A022122.P15218543973315576389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022122.P15218543973315576389

noncomputable section

/-- A022122: Fibonacci sequence beginning 3, 10.

Offset 0, canonical program `A022122.P15218543973315576389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022122 (n : ℕ) : ℤ :=
  (A022122.P15218543973315576389.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022123.P7541909490258741472

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=11`
-/

namespace A022123.P7541909490258741472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 11] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022123.P7541909490258741472

noncomputable section

/-- A022123: Fibonacci sequence beginning 3, 11.

Offset 0, canonical program `A022123.P7541909490258741472`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022123 (n : ℕ) : ℤ :=
  (A022123.P7541909490258741472.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022125.P18225723885497896601

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=14`
-/

namespace A022125.P18225723885497896601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 14] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022125.P18225723885497896601

noncomputable section

/-- A022125: Fibonacci sequence beginning 3, 14.

Offset 0, canonical program `A022125.P18225723885497896601`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022125 (n : ℕ) : ℤ :=
  (A022125.P18225723885497896601.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022126.P11266637359630518003

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=16`
-/

namespace A022126.P11266637359630518003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 16] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022126.P11266637359630518003

noncomputable section

/-- A022126: Fibonacci sequence beginning 3, 16.

Offset 0, canonical program `A022126.P11266637359630518003`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022126 (n : ℕ) : ℤ :=
  (A022126.P11266637359630518003.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022127.P4966419772073184828

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=17`
-/

namespace A022127.P4966419772073184828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 17] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022127.P4966419772073184828

noncomputable section

/-- A022127: Fibonacci sequence beginning 3, 17.

Offset 0, canonical program `A022127.P4966419772073184828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022127 (n : ℕ) : ℤ :=
  (A022127.P4966419772073184828.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022127.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022138.P2384255640127107707

`a(n-2)+a(n-1)` with `a(0)=5, a(1)=13`
-/

namespace A022138.P2384255640127107707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 13] fun n a =>
  a (n - 2) + a (n - 1)

end

end A022138.P2384255640127107707

noncomputable section

/-- A022138: Fibonacci sequence beginning 5, 13.

Offset 0, canonical program `A022138.P2384255640127107707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022138 (n : ℕ) : ℤ :=
  (A022138.P2384255640127107707.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022139.P10445061238919215588

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=14`
-/

namespace A022139.P10445061238919215588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 14] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022139.P10445061238919215588

noncomputable section

/-- A022139: Fibonacci sequence beginning 5, 14.

Offset 0, canonical program `A022139.P10445061238919215588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022139 (n : ℕ) : ℤ :=
  (A022139.P10445061238919215588.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022142.P11501202867791212846

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=18`
-/

namespace A022142.P11501202867791212846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 18] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022142.P11501202867791212846

noncomputable section

/-- A022142: Fibonacci sequence beginning 5, 18.

Offset 0, canonical program `A022142.P11501202867791212846`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022142 (n : ℕ) : ℤ :=
  (A022142.P11501202867791212846.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022145.P2919200708106353379

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=18, a(2)=74, a(3)=170`
-/

namespace A022145.P2919200708106353379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 74, 170] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A022145.P2919200708106353379

noncomputable section

/-- A022145: Coordination sequence for root lattice B_3.

Offset 0, canonical program `A022145.P2919200708106353379`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022145 (n : ℕ) : ℤ :=
  A022145.P2919200708106353379.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022145.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022158.P404310566085904441

`floor(sqrt(3)*floor(sqrt(3)*(n+1)))`
-/

namespace A022158.P404310566085904441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (⌊Real.sqrt (3 : ℝ) * (n + 1 : ℝ)⌋ : ℝ)⌋

end

end A022158.P404310566085904441

noncomputable section

/-- A022158: First column of spectral array W(sqrt(3)).

Offset 1, canonical program `A022158.P404310566085904441`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022158 (n : ℕ) : ℤ :=
  A022158.P404310566085904441.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022160.P17824232901376242762

`floor((e-1)*floor((e-1)*(n+1)))`
-/

namespace A022160.P17824232901376242762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp 1 - 1) * (⌊(Real.exp 1 - 1) * (n + 1 : ℝ)⌋ : ℝ)⌋

end

end A022160.P17824232901376242762

noncomputable section

/-- A022160: First column of spectral array W(e-1).

Offset 1, canonical program `A022160.P17824232901376242762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022160 (n : ℕ) : ℤ :=
  A022160.P17824232901376242762.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022160.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022162.P5261504720250728708

`floor(sqrt(3/2)*floor(sqrt(3/2)*(n+1)))`
-/

namespace A022162.P5261504720250728708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((3 : ℚ) / 2 : ℝ) * (⌊Real.sqrt ((3 : ℚ) / 2 : ℝ) * (n + 1 : ℝ)⌋ : ℝ)⌋

end

end A022162.P5261504720250728708

noncomputable section

/-- A022162: First column of spectral array W(sqrt(3/2)).

Offset 1, canonical program `A022162.P5261504720250728708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022162 (n : ℕ) : ℤ :=
  A022162.P5261504720250728708.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022164.P15144166102490566825

`floor((sqrt(5)-1)*floor((sqrt(5)-1)*(n+1)))`
-/

namespace A022164.P15144166102490566825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (5 : ℝ) - 1) * (⌊(Real.sqrt (5 : ℝ) - 1) * (n + 1 : ℝ)⌋ : ℝ)⌋

end

end A022164.P15144166102490566825

noncomputable section

/-- A022164: First column of spectral array W(sqrt(5)-1).

Offset 1, canonical program `A022164.P15144166102490566825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022164 (n : ℕ) : ℤ :=
  A022164.P15144166102490566825.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022231.P17502034876521126123

`(7^(n+1)-1)*(7^(n+2)-1)/288`
-/

namespace A022231.P17502034876521126123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((7 ^ (n + 1) : ℤ) - 1) * ((7 ^ (n + 2) : ℤ) - 1) : ℚ) / 288

end

end A022231.P17502034876521126123

noncomputable section

/-- A022231: Gaussian binomial coefficients [ n,2 ] for q = 7.

Offset 2, canonical program `A022231.P17502034876521126123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022231.P17502034876521126123.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022264.P2699644023608496467

`7*n+a(n-1)-4` with `a(0)=0`
-/

namespace A022264.P2699644023608496467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) + a (n - 1) - 4

end

end A022264.P2699644023608496467

noncomputable section

/-- A022264: a(n) = n*(7*n - 1)/2.

Offset 0, canonical program `A022264.P2699644023608496467`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-1)/2` (program `A022264.P2444227580264785769`, by `A022264.P2444227580264785769.correct`). Lean does not check the parsing of the name. -/
def A022264 (n : ℕ) : ℤ :=
  A022264.P2699644023608496467.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-1)/2` (program `A022264.P2444227580264785769`, by `A022264.P2444227580264785769.correct`). Lean does not check the parsing of the name. -/
def A022264.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022265.P16574911985288338222

`7*n+a(n-1)-3` with `a(0)=0`
-/

namespace A022265.P16574911985288338222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (7 * n : ℤ) + a (n - 1) - 3

end

end A022265.P16574911985288338222

noncomputable section

/-- A022265: a(n) = n*(7*n + 1)/2.

Offset 0, canonical program `A022265.P16574911985288338222`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n+1)/2` (program `A022265.P1507790066662011827`, by `A022265.P1507790066662011827.correct`). Lean does not check the parsing of the name. -/
def A022265 (n : ℕ) : ℤ :=
  A022265.P16574911985288338222.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n+1)/2` (program `A022265.P1507790066662011827`, by `A022265.P1507790066662011827.correct`). Lean does not check the parsing of the name. -/
def A022265.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022266.P7379945511447748601

`9*n+a(n-1)-5` with `a(0)=0`
-/

namespace A022266.P7379945511447748601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) + a (n - 1) - 5

end

end A022266.P7379945511447748601

noncomputable section

/-- A022266: a(n) = n*(9*n - 1)/2.

Offset 0, canonical program `A022266.P7379945511447748601`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-1)/2` (program `A022266.P15142665201138217865`, by `A022266.P15142665201138217865.correct`). Lean does not check the parsing of the name. -/
def A022266 (n : ℕ) : ℤ :=
  A022266.P7379945511447748601.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n-1)/2` (program `A022266.P15142665201138217865`, by `A022266.P15142665201138217865.correct`). Lean does not check the parsing of the name. -/
def A022266.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022267.P13664173545083149253

`9*n+a(n-1)-4` with `a(0)=0`
-/

namespace A022267.P13664173545083149253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) + a (n - 1) - 4

end

end A022267.P13664173545083149253

noncomputable section

/-- A022267: a(n) = n*(9*n + 1)/2.

Offset 0, canonical program `A022267.P13664173545083149253`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n+1)/2` (program `A022267.P16926893697860587047`, by `A022267.P16926893697860587047.correct`). Lean does not check the parsing of the name. -/
def A022267 (n : ℕ) : ℤ :=
  A022267.P13664173545083149253.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n+1)/2` (program `A022267.P16926893697860587047`, by `A022267.P16926893697860587047.correct`). Lean does not check the parsing of the name. -/
def A022267.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022268.P10958892736804617201

`11*n+a(n-1)-6` with `a(0)=0`
-/

namespace A022268.P10958892736804617201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (11 * n : ℤ) + a (n - 1) - 6

end

end A022268.P10958892736804617201

noncomputable section

/-- A022268: a(n) = n*(11*n - 1)/2.

Offset 0, canonical program `A022268.P10958892736804617201`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-1)/2` (program `A022268.P7631669911160276569`, by `A022268.P7631669911160276569.correct`). Lean does not check the parsing of the name. -/
def A022268 (n : ℕ) : ℤ :=
  A022268.P10958892736804617201.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n-1)/2` (program `A022268.P7631669911160276569`, by `A022268.P7631669911160276569.correct`). Lean does not check the parsing of the name. -/
def A022268.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022269.P5798965338642264025

`11*n+a(n-1)-5` with `a(0)=0`
-/

namespace A022269.P5798965338642264025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (11 * n : ℤ) + a (n - 1) - 5

end

end A022269.P5798965338642264025

noncomputable section

/-- A022269: a(n) = n*(11*n+1)/2.

Offset 0, canonical program `A022269.P5798965338642264025`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n+1)/2` (program `A022269.P3896963725451025286`, by `A022269.P3896963725451025286.correct`). Lean does not check the parsing of the name. -/
def A022269 (n : ℕ) : ℤ :=
  A022269.P5798965338642264025.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(11*n+1)/2` (program `A022269.P3896963725451025286`, by `A022269.P3896963725451025286.correct`). Lean does not check the parsing of the name. -/
def A022269.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022270.P2547502979335075585

`13*n+a(n-1)-7` with `a(0)=0`
-/

namespace A022270.P2547502979335075585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (13 * n : ℤ) + a (n - 1) - 7

end

end A022270.P2547502979335075585

noncomputable section

/-- A022270: a(n) = n*(13*n - 1)/2.

Offset 0, canonical program `A022270.P2547502979335075585`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n-1)/2` (program `A022270.P120090510297821205`, by `A022270.P120090510297821205.correct`). Lean does not check the parsing of the name. -/
def A022270 (n : ℕ) : ℤ :=
  A022270.P2547502979335075585.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n-1)/2` (program `A022270.P120090510297821205`, by `A022270.P120090510297821205.correct`). Lean does not check the parsing of the name. -/
def A022270.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022271.P11082766484875666443

`13*n+a(n-1)-6` with `a(0)=0`
-/

namespace A022271.P11082766484875666443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (13 * n : ℤ) + a (n - 1) - 6

end

end A022271.P11082766484875666443

noncomputable section

/-- A022271: a(n) = n*(13*n + 1)/2.

Offset 0, canonical program `A022271.P11082766484875666443`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n+1)/2` (program `A022271.P2736542733463840870`, by `A022271.P2736542733463840870.correct`). Lean does not check the parsing of the name. -/
def A022271 (n : ℕ) : ℤ :=
  A022271.P11082766484875666443.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(13*n+1)/2` (program `A022271.P2736542733463840870`, by `A022271.P2736542733463840870.correct`). Lean does not check the parsing of the name. -/
def A022271.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022272.P12488576985694989628

`15*n+a(n-1)-8` with `a(0)=0`
-/

namespace A022272.P12488576985694989628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (15 * n : ℤ) + a (n - 1) - 8

end

end A022272.P12488576985694989628

noncomputable section

/-- A022272: a(n) = n*(15*n - 1)/2.

Offset 0, canonical program `A022272.P12488576985694989628`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n-1)/2` (program `A022272.P17313903302214821050`, by `A022272.P17313903302214821050.correct`). Lean does not check the parsing of the name. -/
def A022272 (n : ℕ) : ℤ :=
  A022272.P12488576985694989628.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n-1)/2` (program `A022272.P17313903302214821050`, by `A022272.P17313903302214821050.correct`). Lean does not check the parsing of the name. -/
def A022272.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022273.P2071249530846667850

`15*n+a(n-1)-7` with `a(0)=0`
-/

namespace A022273.P2071249530846667850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (15 * n : ℤ) + a (n - 1) - 7

end

end A022273.P2071249530846667850

noncomputable section

/-- A022273: a(n) = n*(15*n + 1)/2.

Offset 0, canonical program `A022273.P2071249530846667850`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n+1)/2` (program `A022273.P9643017466232025378`, by `A022273.P9643017466232025378.correct`). Lean does not check the parsing of the name. -/
def A022273 (n : ℕ) : ℤ :=
  A022273.P2071249530846667850.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(15*n+1)/2` (program `A022273.P9643017466232025378`, by `A022273.P9643017466232025378.correct`). Lean does not check the parsing of the name. -/
def A022273.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022274.P1294137991941262979

`17*n+a(n-1)-9` with `a(0)=0`
-/

namespace A022274.P1294137991941262979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (17 * n : ℤ) + a (n - 1) - 9

end

end A022274.P1294137991941262979

noncomputable section

/-- A022274: a(n) = n*(17*n - 1)/2.

Offset 0, canonical program `A022274.P1294137991941262979`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n-1)/2` (program `A022274.P2279061651033547081`, by `A022274.P2279061651033547081.correct`). Lean does not check the parsing of the name. -/
def A022274 (n : ℕ) : ℤ :=
  A022274.P1294137991941262979.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n-1)/2` (program `A022274.P2279061651033547081`, by `A022274.P2279061651033547081.correct`). Lean does not check the parsing of the name. -/
def A022274.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022275.P3271719630850696146

`17*n+a(n-1)-8` with `a(0)=0`
-/

namespace A022275.P3271719630850696146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (17 * n : ℤ) + a (n - 1) - 8

end

end A022275.P3271719630850696146

noncomputable section

/-- A022275: a(n) = n*(17*n + 1)/2.

Offset 0, canonical program `A022275.P3271719630850696146`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n+1)/2` (program `A022275.P3857002840533671146`, by `A022275.P3857002840533671146.correct`). Lean does not check the parsing of the name. -/
def A022275 (n : ℕ) : ℤ :=
  A022275.P3271719630850696146.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(17*n+1)/2` (program `A022275.P3857002840533671146`, by `A022275.P3857002840533671146.correct`). Lean does not check the parsing of the name. -/
def A022275.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022276.P2397352583262610903

`19*n+a(n-1)-10` with `a(0)=0`
-/

namespace A022276.P2397352583262610903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (19 * n : ℤ) + a (n - 1) - 10

end

end A022276.P2397352583262610903

noncomputable section

/-- A022276: a(n) = n*(19*n - 1)/2.

Offset 0, canonical program `A022276.P2397352583262610903`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n-1)/2` (program `A022276.P18055709504843208503`, by `A022276.P18055709504843208503.correct`). Lean does not check the parsing of the name. -/
def A022276 (n : ℕ) : ℤ :=
  A022276.P2397352583262610903.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n-1)/2` (program `A022276.P18055709504843208503`, by `A022276.P18055709504843208503.correct`). Lean does not check the parsing of the name. -/
def A022276.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022277.P4963988917551077895

`19*n+a(n-1)-9` with `a(0)=0`
-/

namespace A022277.P4963988917551077895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (19 * n : ℤ) + a (n - 1) - 9

end

end A022277.P4963988917551077895

noncomputable section

/-- A022277: a(n) = n*(19*n + 1)/2.

Offset 0, canonical program `A022277.P4963988917551077895`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n+1)/2` (program `A022277.P3737477083866034393`, by `A022277.P3737477083866034393.correct`). Lean does not check the parsing of the name. -/
def A022277 (n : ℕ) : ℤ :=
  A022277.P4963988917551077895.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(19*n+1)/2` (program `A022277.P3737477083866034393`, by `A022277.P3737477083866034393.correct`). Lean does not check the parsing of the name. -/
def A022277.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022278.P8990971648851060191

`21*n+a(n-1)-11` with `a(0)=0`
-/

namespace A022278.P8990971648851060191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (21 * n : ℤ) + a (n - 1) - 11

end

end A022278.P8990971648851060191

noncomputable section

/-- A022278: a(n) = n*(21*n-1)/2.

Offset 0, canonical program `A022278.P8990971648851060191`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n-1)/2` (program `A022278.P17778157747449237191`, by `A022278.P17778157747449237191.correct`). Lean does not check the parsing of the name. -/
def A022278 (n : ℕ) : ℤ :=
  A022278.P8990971648851060191.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n-1)/2` (program `A022278.P17778157747449237191`, by `A022278.P17778157747449237191.correct`). Lean does not check the parsing of the name. -/
def A022278.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022279.P6909010909644651453

`21*n+a(n-1)-10` with `a(0)=0`
-/

namespace A022279.P6909010909644651453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (21 * n : ℤ) + a (n - 1) - 10

end

end A022279.P6909010909644651453

noncomputable section

/-- A022279: a(n) = n*(21*n + 1)/2.

Offset 0, canonical program `A022279.P6909010909644651453`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n+1)/2` (program `A022279.P13433673048192519757`, by `A022279.P13433673048192519757.correct`). Lean does not check the parsing of the name. -/
def A022279 (n : ℕ) : ℤ :=
  A022279.P6909010909644651453.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(21*n+1)/2` (program `A022279.P13433673048192519757`, by `A022279.P13433673048192519757.correct`). Lean does not check the parsing of the name. -/
def A022279.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022280.P3236419375464080213

`23*n+a(n-1)-12` with `a(0)=0`
-/

namespace A022280.P3236419375464080213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (23 * n : ℤ) + a (n - 1) - 12

end

end A022280.P3236419375464080213

noncomputable section

/-- A022280: a(n) = n*(23*n - 1)/2.

Offset 0, canonical program `A022280.P3236419375464080213`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(23*n-1)/2` (program `A022280.P1370197309672196721`, by `A022280.P1370197309672196721.correct`). Lean does not check the parsing of the name. -/
def A022280 (n : ℕ) : ℤ :=
  A022280.P3236419375464080213.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(23*n-1)/2` (program `A022280.P1370197309672196721`, by `A022280.P1370197309672196721.correct`). Lean does not check the parsing of the name. -/
def A022280.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022281.P7341575850234213743

`23*n+a(n-1)-11` with `a(0)=0`
-/

namespace A022281.P7341575850234213743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (23 * n : ℤ) + a (n - 1) - 11

end

end A022281.P7341575850234213743

noncomputable section

/-- A022281: a(n) = n*(23*n + 1)/2.

Offset 0, canonical program `A022281.P7341575850234213743`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(23*n+1)/2` (program `A022281.P4168727921484237583`, by `A022281.P4168727921484237583.correct`). Lean does not check the parsing of the name. -/
def A022281 (n : ℕ) : ℤ :=
  A022281.P7341575850234213743.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(23*n+1)/2` (program `A022281.P4168727921484237583`, by `A022281.P4168727921484237583.correct`). Lean does not check the parsing of the name. -/
def A022281.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022282.P2071212844594503722

`25*n+a(n-1)-13` with `a(0)=0`
-/

namespace A022282.P2071212844594503722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (25 * n : ℤ) + a (n - 1) - 13

end

end A022282.P2071212844594503722

noncomputable section

/-- A022282: a(n) = n*(25*n - 1)/2.

Offset 0, canonical program `A022282.P2071212844594503722`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(25*n-1)/2` (program `A022282.P3057263557412375344`, by `A022282.P3057263557412375344.correct`). Lean does not check the parsing of the name. -/
def A022282 (n : ℕ) : ℤ :=
  A022282.P2071212844594503722.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(25*n-1)/2` (program `A022282.P3057263557412375344`, by `A022282.P3057263557412375344.correct`). Lean does not check the parsing of the name. -/
def A022282.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022283.P13514460400141905996

`a(n-1)+25*n-12` with `a(0)=0`
-/

namespace A022283.P13514460400141905996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (25 * n : ℤ) - 12

end

end A022283.P13514460400141905996

noncomputable section

/-- A022283: a(n) = n*(25*n + 1)/2.

Offset 0, canonical program `A022283.P13514460400141905996`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(25*n+1)/2` (program `A022283.P11422991688035960726`, by `A022283.P11422991688035960726.correct`). Lean does not check the parsing of the name. -/
def A022283 (n : ℕ) : ℤ :=
  A022283.P13514460400141905996.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(25*n+1)/2` (program `A022283.P11422991688035960726`, by `A022283.P11422991688035960726.correct`). Lean does not check the parsing of the name. -/
def A022283.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022284.P5848921645264670450

`a(n-1)+27*n-14` with `a(0)=0`
-/

namespace A022284.P5848921645264670450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (27 * n : ℤ) - 14

end

end A022284.P5848921645264670450

noncomputable section

/-- A022284: a(n) = n*(27*n - 1)/2.

Offset 0, canonical program `A022284.P5848921645264670450`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(27*n-1)/2` (program `A022284.P200623792041465354`, by `A022284.P200623792041465354.correct`). Lean does not check the parsing of the name. -/
def A022284 (n : ℕ) : ℤ :=
  A022284.P5848921645264670450.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(27*n-1)/2` (program `A022284.P200623792041465354`, by `A022284.P200623792041465354.correct`). Lean does not check the parsing of the name. -/
def A022284.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022285.P14339001223144028744

`a(n-1)+27*n-13` with `a(0)=0`
-/

namespace A022285.P14339001223144028744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (27 * n : ℤ) - 13

end

end A022285.P14339001223144028744

noncomputable section

/-- A022285: a(n) = n*(27*n + 1)/2.

Offset 0, canonical program `A022285.P14339001223144028744`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(27*n+1)/2` (program `A022285.P12328792017841170149`, by `A022285.P12328792017841170149.correct`). Lean does not check the parsing of the name. -/
def A022285 (n : ℕ) : ℤ :=
  A022285.P14339001223144028744.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(27*n+1)/2` (program `A022285.P12328792017841170149`, by `A022285.P12328792017841170149.correct`). Lean does not check the parsing of the name. -/
def A022285.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022286.P13810764852926588905

`29*n+a(n-1)-15` with `a(0)=0`
-/

namespace A022286.P13810764852926588905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (29 * n : ℤ) + a (n - 1) - 15

end

end A022286.P13810764852926588905

noncomputable section

/-- A022286: a(n) = n*(29*n - 1)/2.

Offset 0, canonical program `A022286.P13810764852926588905`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(29*n-1)/2` (program `A022286.P1875822301550364981`, by `A022286.P1875822301550364981.correct`). Lean does not check the parsing of the name. -/
def A022286 (n : ℕ) : ℤ :=
  A022286.P13810764852926588905.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(29*n-1)/2` (program `A022286.P1875822301550364981`, by `A022286.P1875822301550364981.correct`). Lean does not check the parsing of the name. -/
def A022286.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022287.P13536557937169718289

`29*n+a(n-1)-14` with `a(0)=0`
-/

namespace A022287.P13536557937169718289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (29 * n : ℤ) + a (n - 1) - 14

end

end A022287.P13536557937169718289

noncomputable section

/-- A022287: a(n) = n*(29*n + 1)/2.

Offset 0, canonical program `A022287.P13536557937169718289`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(29*n+1)/2` (program `A022287.P5542879897073286136`, by `A022287.P5542879897073286136.correct`). Lean does not check the parsing of the name. -/
def A022287 (n : ℕ) : ℤ :=
  A022287.P13536557937169718289.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(29*n+1)/2` (program `A022287.P5542879897073286136`, by `A022287.P5542879897073286136.correct`). Lean does not check the parsing of the name. -/
def A022287.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022288.P13295920499512593523

`31*n+a(n-1)-16` with `a(0)=0`
-/

namespace A022288.P13295920499512593523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (31 * n : ℤ) + a (n - 1) - 16

end

end A022288.P13295920499512593523

noncomputable section

/-- A022288: a(n) = n*(31*n-1)/2.

Offset 0, canonical program `A022288.P13295920499512593523`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(31*n-1)/2` (program `A022288.P5282505221814007540`, by `A022288.P5282505221814007540.correct`). Lean does not check the parsing of the name. -/
def A022288 (n : ℕ) : ℤ :=
  A022288.P13295920499512593523.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(31*n-1)/2` (program `A022288.P5282505221814007540`, by `A022288.P5282505221814007540.correct`). Lean does not check the parsing of the name. -/
def A022288.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022289.P6025374686438642448

`31*n+a(n-1)-15` with `a(0)=0`
-/

namespace A022289.P6025374686438642448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (31 * n : ℤ) + a (n - 1) - 15

end

end A022289.P6025374686438642448

noncomputable section

/-- A022289: a(n) = n*(31*n + 1)/2.

Offset 0, canonical program `A022289.P6025374686438642448`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(31*n+1)/2` (program `A022289.P9576105718924798539`, by `A022289.P9576105718924798539.correct`). Lean does not check the parsing of the name. -/
def A022289 (n : ℕ) : ℤ :=
  A022289.P6025374686438642448.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(31*n+1)/2` (program `A022289.P9576105718924798539`, by `A022289.P9576105718924798539.correct`). Lean does not check the parsing of the name. -/
def A022289.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022291.P468708583788065104

`(5*9^(n+3)-32*6^(n+3)+30*5^(n+3)-3)/480`
-/

namespace A022291.P468708583788065104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 9 ^ (n + 3) : ℤ) - (32 * 6 ^ (n + 3) : ℤ) + (30 * 5 ^ (n + 3) : ℤ) - 3 : ℚ) / 480

end

end A022291.P468708583788065104

noncomputable section

/-- A022291: Expansion of 1/((1-x)*(1-5*x)*(1-6*x)*(1-9*x)).

Offset 0, canonical program `A022291.P468708583788065104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022291.P468708583788065104.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022342.P1190268710273068250

`floor((n+1)*ϕ)-1`
-/

namespace A022342.P1190268710273068250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.goldenRatio⌋ - 1

end

end A022342.P1190268710273068250

noncomputable section

/-- A022342: Integers with "even" Zeckendorf expansions (do not end with ... + F_2 = ... + 1) (the Fibonacci-even numbers); also, apart from first term, a(n) = Fibonacci successor to n-1.

Offset 1, canonical program `A022342.P1190268710273068250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022342 (n : ℕ) : ℤ :=
  A022342.P1190268710273068250.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022343.P17149137804363743511

`16*a(n-1)-60*a(n-2)+(5^(n+1)-1)/4` with `a(0)=1, a(1)=22`
-/

namespace A022343.P17149137804363743511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 22] fun n a =>
  16 * a (n - 1) - 60 * a (n - 2) + ((5 ^ (n + 1) : ℤ) - 1 : ℚ) / 4

end

end A022343.P17149137804363743511

noncomputable section

/-- A022343: Expansion of 1/((1-x)*(1-5*x)*(1-6*x)*(1-10*x)).

Offset 0, canonical program `A022343.P17149137804363743511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022343 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022343.P17149137804363743511.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022344.P199507899361829070

`floor((n+1)*(1+sqrt(5))/2)²-n*floor((n+1)*(1+sqrt(5))/2)-n²`
-/

namespace A022344.P199507899361829070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((1 + Real.sqrt (5 : ℝ)) / 2)⌋ ^ 2 - (n : ℤ) * ⌊(n + 1 : ℝ) * (1 + Real.sqrt (5 : ℝ)) / 2⌋ - (n ^ 2 : ℤ)

end

end A022344.P199507899361829070

noncomputable section

/-- A022344: Allan Wechsler's "J determinant" sequence.

Offset 0, canonical program `A022344.P199507899361829070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022344 (n : ℕ) : ℤ :=
  A022344.P199507899361829070.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022355.P14565443088035483899

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=21`
-/

namespace A022355.P14565443088035483899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 21] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022355.P14565443088035483899

noncomputable section

/-- A022355: Fibonacci sequence beginning 0, 21.

Offset 0, canonical program `A022355.P14565443088035483899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022355 (n : ℕ) : ℤ :=
  (A022355.P14565443088035483899.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022363.P16931110873472012171

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=29`
-/

namespace A022363.P16931110873472012171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 29] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022363.P16931110873472012171

noncomputable section

/-- A022363: Fibonacci sequence beginning 0, 29.

Offset 0, canonical program `A022363.P16931110873472012171`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022363 (n : ℕ) : ℤ :=
  (A022363.P16931110873472012171.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022374.P6234822389245945786

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=24`
-/

namespace A022374.P6234822389245945786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 24] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022374.P6234822389245945786

noncomputable section

/-- A022374: Fibonacci sequence beginning 2, 24.

Offset 0, canonical program `A022374.P6234822389245945786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022374 (n : ℕ) : ℤ :=
  (A022374.P6234822389245945786.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022380.P2823883853444346529

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=12`
-/

namespace A022380.P2823883853444346529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 12] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022380.P2823883853444346529

noncomputable section

/-- A022380: Fibonacci sequence beginning 3, 12.

Offset 0, canonical program `A022380.P2823883853444346529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022380 (n : ℕ) : ℤ :=
  (A022380.P2823883853444346529.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022382.P12422491102401618957

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=10`
-/

namespace A022382.P12422491102401618957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 10] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022382.P12422491102401618957

noncomputable section

/-- A022382: Fibonacci sequence beginning 4, 10.

Offset 0, canonical program `A022382.P12422491102401618957`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022382 (n : ℕ) : ℤ :=
  (A022382.P12422491102401618957.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022382.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022383.P14382020885396006128

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=14`
-/

namespace A022383.P14382020885396006128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 14] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022383.P14382020885396006128

noncomputable section

/-- A022383: Fibonacci sequence beginning 4, 14.

Offset 0, canonical program `A022383.P14382020885396006128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022383 (n : ℕ) : ℤ :=
  (A022383.P14382020885396006128.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022383.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022384.P8904920412054153105

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=18`
-/

namespace A022384.P8904920412054153105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 18] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022384.P8904920412054153105

noncomputable section

/-- A022384: Fibonacci sequence beginning 4, 18.

Offset 0, canonical program `A022384.P8904920412054153105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022384 (n : ℕ) : ℤ :=
  (A022384.P8904920412054153105.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022391.P1878165112353722524

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=21`
-/

namespace A022391.P1878165112353722524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022391.P1878165112353722524

noncomputable section

/-- A022391: Fibonacci sequence beginning 1, 21.

Offset 0, canonical program `A022391.P1878165112353722524`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022391 (n : ℕ) : ℤ :=
  (A022391.P1878165112353722524.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022392.P8408287489202402408

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=22`
-/

namespace A022392.P8408287489202402408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 22] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022392.P8408287489202402408

noncomputable section

/-- A022392: Fibonacci sequence beginning 1, 22.

Offset 0, canonical program `A022392.P8408287489202402408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022392 (n : ℕ) : ℤ :=
  (A022392.P8408287489202402408.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022393.P4373198726378991798

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=23`
-/

namespace A022393.P4373198726378991798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 23] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022393.P4373198726378991798

noncomputable section

/-- A022393: Fibonacci sequence beginning 1, 23.

Offset 0, canonical program `A022393.P4373198726378991798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022393 (n : ℕ) : ℤ :=
  (A022393.P4373198726378991798.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022393.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022402.P1318547867331901762

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=32`
-/

namespace A022402.P1318547867331901762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 32] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022402.P1318547867331901762

noncomputable section

/-- A022402: Fibonacci sequence beginning 1, 32.

Offset 0, canonical program `A022402.P1318547867331901762`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022402 (n : ℕ) : ℤ :=
  (A022402.P1318547867331901762.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022402.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022412.P5591446245294432790

`17*a(n-1)-66*a(n-2)+(5^(n+1)-1)/4` with `a(0)=1, a(1)=23`
-/

namespace A022412.P5591446245294432790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 23] fun n a =>
  17 * a (n - 1) - 66 * a (n - 2) + ((5 ^ (n + 1) : ℤ) - 1 : ℚ) / 4

end

end A022412.P5591446245294432790

noncomputable section

/-- A022412: Expansion of 1/((1-x)(1-5x)(1-6x)(1-11x)).

Offset 0, canonical program `A022412.P5591446245294432790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022412.P5591446245294432790.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022448.P12265505972134009480

`125*5^n/28-36*6^n/5+288*12^n/77-1/220`
-/

namespace A022448.P12265505972134009480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (125 * 5 ^ n : ℚ) / 28 - (36 * 6 ^ n : ℚ) / 5 + (288 * 12 ^ n : ℚ) / 77 - (1 : ℚ) / 220

end

end A022448.P12265505972134009480

noncomputable section

/-- A022448: Expansion of 1/((1-x)*(1-5*x)*(1-6*x)*(1-12*x)).

Offset 0, canonical program `A022448.P12265505972134009480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022448.P12265505972134009480.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022452.P9067295663875747397

`15*a(n-1)-56*a(n-2)+(5^(n+1)-1)/4` with `a(0)=1, a(1)=21`
-/

namespace A022452.P9067295663875747397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 21] fun n a =>
  15 * a (n - 1) - 56 * a (n - 2) + ((5 ^ (n + 1) : ℤ) - 1 : ℚ) / 4

end

end A022452.P9067295663875747397

noncomputable section

/-- A022452: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-8*x)).

Offset 0, canonical program `A022452.P9067295663875747397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022452 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022452.P9067295663875747397.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022453.P15431314009138290437

`(3*9^(n+3)-8*7^(n+3)+6*5^(n+3)-1)/192`
-/

namespace A022453.P15431314009138290437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 9 ^ (n + 3) : ℤ) - (8 * 7 ^ (n + 3) : ℤ) + (6 * 5 ^ (n + 3) : ℤ) - 1 : ℚ) / 192

end

end A022453.P15431314009138290437

noncomputable section

/-- A022453: Expansion of 1/((1-x)*(1-5*x)*(1-7*x)*(1-9*x)).

Offset 0, canonical program `A022453.P15431314009138290437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022453 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022453.P15431314009138290437.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022469.P12581564236107395008

`(21*9^(n+3)-32*8^(n+3)+14*5^(n+3)-3)/672`
-/

namespace A022469.P12581564236107395008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((21 * 9 ^ (n + 3) : ℤ) - (32 * 8 ^ (n + 3) : ℤ) + (14 * 5 ^ (n + 3) : ℤ) - 3 : ℚ) / 672

end

end A022469.P12581564236107395008

noncomputable section

/-- A022469: Expansion of 1/((1-x)*(1-5*x)*(1-8*x)*(1-9*x)).

Offset 0, canonical program `A022469.P12581564236107395008`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022469 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022469.P12581564236107395008.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022554.P13549060750151666021

`floor(sqrt(n))*(n-1/6*(2*floor(sqrt(n))+5)*(floor(sqrt(n))-1))`
-/

namespace A022554.P13549060750151666021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℚ) * ((n : ℚ) - (1 : ℚ) / 6 * (2 * Nat.sqrt n + 5 : ℚ) * ((Nat.sqrt n : ℤ) - 1 : ℚ))

end

end A022554.P13549060750151666021

noncomputable section

/-- A022554: a(n) = Sum_{k=0..n} floor(sqrt(k)).

Offset 0, canonical program `A022554.P13549060750151666021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022554 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022554.P13549060750151666021.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022725.P12976959514950321266

`(3*12^(n+3)-11*8^(n+3)+11*5^(n+3)-3)/924`
-/

namespace A022725.P12976959514950321266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 12 ^ (n + 3) : ℤ) - (11 * 8 ^ (n + 3) : ℤ) + (11 * 5 ^ (n + 3) : ℤ) - 3 : ℚ) / 924

end

end A022725.P12976959514950321266

noncomputable section

/-- A022725: Expansion of 1/((1-x)*(1-5*x)*(1-8*x)*(1-12*x)).

Offset 0, canonical program `A022725.P12976959514950321266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022725.P12976959514950321266.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022804.P17679794649677306097

`2*(n+1+floor((n+1)*sqrt(2)))`
-/

namespace A022804.P17679794649677306097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) + ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋)

end

end A022804.P17679794649677306097

noncomputable section

/-- A022804: a(n) = B(n) + c(n) where B(n) is Beatty sequence [ n*sqrt(2) ] and c is the complement of B.

Offset 1, canonical program `A022804.P17679794649677306097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022804 (n : ℕ) : ℤ :=
  A022804.P17679794649677306097.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022815.P8897978214143747185

`(n+1)*(n+2)*((n+1)²+13*(n+1)-2)/24`
-/

namespace A022815.P8897978214143747185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * (((n + 1) ^ 2 + 13 * (n + 1) : ℤ) - 2) : ℚ) / 24

end

end A022815.P8897978214143747185

noncomputable section

/-- A022815: Number of terms in 5th derivative of a function composed with itself n times.

Offset 1, canonical program `A022815.P8897978214143747185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022815 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022815.P8897978214143747185.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022815.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022816.P3067772476029755589

`(n+1)*(n+2)*((n+1)^3+24*(n+1)²+81*(n+1)-46)/120`
-/

namespace A022816.P3067772476029755589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * (((n + 1) ^ 3 + 24 * (n + 1) ^ 2 + 81 * (n + 1) : ℤ) - 46) : ℚ) / 120

end

end A022816.P3067772476029755589

noncomputable section

/-- A022816: Number of terms in 6th derivative of a function composed with itself n times.

Offset 1, canonical program `A022816.P3067772476029755589`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022816 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022816.P3067772476029755589.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022817.P15564343047622524491

`(n+1)/720*((n+1)^5+39*(n+1)^4+355*(n+1)^3+645*(n+1)²-356*(n+1)+36)`
-/

namespace A022817.P15564343047622524491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 720 * (((n + 1) ^ 5 + 39 * (n + 1) ^ 4 + 355 * (n + 1) ^ 3 + 645 * (n + 1) ^ 2 : ℤ) - (356 * (n + 1) : ℤ) + 36 : ℚ)

end

end A022817.P15564343047622524491

noncomputable section

/-- A022817: Number of terms in 7th derivative of a function composed with itself n times.

Offset 1, canonical program `A022817.P15564343047622524491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022817 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022817.P15564343047622524491.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022817.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022838.P2955185450675945792

`floor((n+1)*sqrt(3))`
-/

namespace A022838.P2955185450675945792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A022838.P2955185450675945792

noncomputable section

/-- A022838: Beatty sequence for sqrt(3); complement of A054406.

Offset 1, canonical program `A022838.P2955185450675945792`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022838 (n : ℕ) : ℤ :=
  A022838.P2955185450675945792.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022839.P1029373569643495419

`floor((n+1)*sqrt(5))`
-/

namespace A022839.P1029373569643495419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋

end

end A022839.P1029373569643495419

noncomputable section

/-- A022839: Beatty sequence for sqrt(5).

Offset 1, canonical program `A022839.P1029373569643495419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022839 (n : ℕ) : ℤ :=
  A022839.P1029373569643495419.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022840.P11758101207044855511

`floor((n+1)*sqrt(6))`
-/

namespace A022840.P11758101207044855511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (6 : ℝ)⌋

end

end A022840.P11758101207044855511

noncomputable section

/-- A022840: Beatty sequence for sqrt(6).

Offset 1, canonical program `A022840.P11758101207044855511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022840 (n : ℕ) : ℤ :=
  A022840.P11758101207044855511.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022841.P8250153921630201829

`floor((n+1)*sqrt(7))`
-/

namespace A022841.P8250153921630201829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (7 : ℝ)⌋

end

end A022841.P8250153921630201829

noncomputable section

/-- A022841: Beatty sequence for sqrt(7).

Offset 1, canonical program `A022841.P8250153921630201829`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022841 (n : ℕ) : ℤ :=
  A022841.P8250153921630201829.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022842.P237865862575158338

`floor((n+1)*sqrt(8))`
-/

namespace A022842.P237865862575158338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋

end

end A022842.P237865862575158338

noncomputable section

/-- A022842: Beatty sequence for sqrt(8).

Offset 1, canonical program `A022842.P237865862575158338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022842 (n : ℕ) : ℤ :=
  A022842.P237865862575158338.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022842.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022843.P5357273111751487291

`floor(n*e)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022843.P5357273111751487291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.exp 1⌋

end

end A022843.P5357273111751487291

noncomputable section

/-- A022843: Beatty sequence for e: a(n) = floor(n*e).

Offset 0, canonical program `A022843.P5357273111751487291`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*e)` (program `A022843.P5357273111751487291`, by `A022843.P5357273111751487291.correct`). Lean does not check the parsing of the name. -/
def A022843 (n : ℕ) : ℤ :=
  A022843.P5357273111751487291.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*e)` (program `A022843.P5357273111751487291`, by `A022843.P5357273111751487291.correct`). Lean does not check the parsing of the name. -/
def A022843.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022844.P11976428228251050705

`floor(n*π)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A022844.P11976428228251050705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi⌋

end

end A022844.P11976428228251050705

noncomputable section

/-- A022844: a(n) = floor(n*Pi).

Offset 0, canonical program `A022844.P11976428228251050705`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π)` (program `A022844.P11976428228251050705`, by `A022844.P11976428228251050705.correct`). Lean does not check the parsing of the name. -/
def A022844 (n : ℕ) : ℤ :=
  A022844.P11976428228251050705.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π)` (program `A022844.P11976428228251050705`, by `A022844.P11976428228251050705.correct`). Lean does not check the parsing of the name. -/
def A022844.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A022846.P4153130235843517023

`round(n*sqrt(2))`
-/

namespace A022846.P4153130235843517023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

end

end A022846.P4153130235843517023

noncomputable section

/-- A022846: Nearest integer to n*sqrt(2).

Offset 0, canonical program `A022846.P4153130235843517023`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022846 (n : ℕ) : ℤ :=
  A022846.P4153130235843517023.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022846.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022847.P11285214133989731691

`round(n*sqrt(3))`
-/

namespace A022847.P11285214133989731691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (3 : ℝ))

end

end A022847.P11285214133989731691

noncomputable section

/-- A022847: Integer nearest n*sqrt(3).

Offset 0, canonical program `A022847.P11285214133989731691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022847 (n : ℕ) : ℤ :=
  A022847.P11285214133989731691.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022847.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022848.P15493033915175451795

`round(n*sqrt(5))`
-/

namespace A022848.P15493033915175451795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (5 : ℝ))

end

end A022848.P15493033915175451795

noncomputable section

/-- A022848: Integer nearest nx, where x = sqrt(5).

Offset 0, canonical program `A022848.P15493033915175451795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022848 (n : ℕ) : ℤ :=
  A022848.P15493033915175451795.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022848.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022849.P678832229338653592

`round(n*sqrt(6))`
-/

namespace A022849.P678832229338653592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (6 : ℝ))

end

end A022849.P678832229338653592

noncomputable section

/-- A022849: Integer nearest nx, where x = sqrt(6).

Offset 0, canonical program `A022849.P678832229338653592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022849 (n : ℕ) : ℤ :=
  A022849.P678832229338653592.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022850.P6150190637847981062

`round(n*sqrt(7))`
-/

namespace A022850.P6150190637847981062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (7 : ℝ))

end

end A022850.P6150190637847981062

noncomputable section

/-- A022850: Integer nearest n*x, where x = sqrt(7).

Offset 0, canonical program `A022850.P6150190637847981062`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022850 (n : ℕ) : ℤ :=
  A022850.P6150190637847981062.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022850.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022851.P2368145316521066211

`round(n*sqrt(8))`
-/

namespace A022851.P2368145316521066211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (8 : ℝ))

end

end A022851.P2368145316521066211

noncomputable section

/-- A022851: a(n) = integer nearest n*x, where x = sqrt(8).

Offset 0, canonical program `A022851.P2368145316521066211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022851 (n : ℕ) : ℤ :=
  A022851.P2368145316521066211.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022851.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022852.P4440263258004053212

`round(n*e)`
-/

namespace A022852.P4440263258004053212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.exp 1)

end

end A022852.P4440263258004053212

noncomputable section

/-- A022852: Integer nearest n * e, where e is the natural log base.

Offset 0, canonical program `A022852.P4440263258004053212`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022852 (n : ℕ) : ℤ :=
  A022852.P4440263258004053212.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022852.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022853.P734346419560010823

`round(n*π)`
-/

namespace A022853.P734346419560010823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.pi)

end

end A022853.P734346419560010823

noncomputable section

/-- A022853: a(n) = integer nearest n*Pi.

Offset 0, canonical program `A022853.P734346419560010823`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022853 (n : ℕ) : ℤ :=
  A022853.P734346419560010823.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022856.P16262898334384934073

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`
-/

namespace A022856.P16262898334384934073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 5] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A022856.P16262898334384934073

noncomputable section

/-- A022856: a(n) = n-2 + Sum_{i = 1..n-2} (a(i+1) mod a(i)) for n >= 3 with a(1) = a(2) = 1.

Offset 1, canonical program `A022856.P16262898334384934073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022856 (n : ℕ) : ℤ :=
  A022856.P16262898334384934073.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022921.P464049656730584454

`floor((n+1)*log2(3))-floor(n*log2(3))`
-/

namespace A022921.P464049656730584454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.logb 2 (3 : ℝ)⌋ - ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋

end

end A022921.P464049656730584454

noncomputable section

/-- A022921: Number of integers m such that 3^n < 2^m < 3^(n+1).

Offset 0, canonical program `A022921.P464049656730584454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022921 (n : ℕ) : ℤ :=
  A022921.P464049656730584454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022998.P12220843300282308948

`n*(1+(n+1)%2)`
-/

namespace A022998.P12220843300282308948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (1 + (n + 1) % 2)

end

end A022998.P12220843300282308948

noncomputable section

/-- A022998: If n is odd then n, otherwise 2n.

Offset 0, canonical program `A022998.P12220843300282308948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022998 (n : ℕ) : ℤ :=
  (A022998.P12220843300282308948.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022998.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023000.P211291010459174643

`7*a(n-1)+1` with `a(0)=0`
-/

namespace A023000.P211291010459174643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  7 * a (n - 1) + 1

end

end A023000.P211291010459174643

noncomputable section

/-- A023000: a(n) = (7^n - 1)/6.

Offset 0, canonical program `A023000.P211291010459174643`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n-1)/6` (program `A023000.P9587155750024764488`, by `A023000.P9587155750024764488.correct`). Lean does not check the parsing of the name. -/
def A023000 (n : ℕ) : ℤ :=
  (A023000.P211291010459174643.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n-1)/6` (program `A023000.P9587155750024764488`, by `A023000.P9587155750024764488.correct`). Lean does not check the parsing of the name. -/
def A023000.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023001.P9482498461707251472

`8*a(n-1)+1` with `a(0)=0`
-/

namespace A023001.P9482498461707251472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  8 * a (n - 1) + 1

end

end A023001.P9482498461707251472

noncomputable section

/-- A023001: a(n) = (8^n - 1)/7.

Offset 0, canonical program `A023001.P9482498461707251472`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n-1)/7` (program `A023001.P7433515000217407841`, by `A023001.P7433515000217407841.correct`). Lean does not check the parsing of the name. -/
def A023001 (n : ℕ) : ℤ :=
  (A023001.P9482498461707251472.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(8^n-1)/7` (program `A023001.P7433515000217407841`, by `A023001.P7433515000217407841.correct`). Lean does not check the parsing of the name. -/
def A023001.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A023105.P12963983014904113391

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A023105.P12963983014904113391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A023105.P12963983014904113391

noncomputable section

/-- A023105: Number of distinct quadratic residues mod 2^n.

Offset 0, canonical program `A023105.P12963983014904113391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023105 (n : ℕ) : ℤ :=
  A023105.P12963983014904113391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023532.P12646681522116481213

`1-floor((sqrt(9+8*n)-1)/2)+floor((sqrt(1+8*n)-1)/2)`
-/

namespace A023532.P12646681522116481213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊(Real.sqrt (9 + 8 * n : ℝ) - 1) / 2⌋ + ⌊(Real.sqrt (1 + 8 * n : ℝ) - 1) / 2⌋

end

end A023532.P12646681522116481213

noncomputable section

/-- A023532: a(n) = 0 if n is of the form m*(m+3)/2, otherwise 1.

Offset 0, canonical program `A023532.P12646681522116481213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023532 (n : ℕ) : ℤ :=
  A023532.P12646681522116481213.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023537.P8353153649515717979

`a(n-1)+a(n-2)+3*(n+1)-2` with `a(0)=1, a(1)=5`
-/

namespace A023537.P8353153649515717979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 2) + (3 * (n + 1) : ℤ) - 2

end

end A023537.P8353153649515717979

noncomputable section

/-- A023537: a(n) = Lucas(n+4) - (3*n+7).

Offset 1, canonical program `A023537.P8353153649515717979`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023537 (n : ℕ) : ℤ :=
  A023537.P8353153649515717979.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023540.P4005493772628957832

`(8*11^(n+3)-15*9^(n+3)+10*5^(n+3)-3)/960`
-/

namespace A023540.P4005493772628957832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * 11 ^ (n + 3) : ℤ) - (15 * 9 ^ (n + 3) : ℤ) + (10 * 5 ^ (n + 3) : ℤ) - 3 : ℚ) / 960

end

end A023540.P4005493772628957832

noncomputable section

/-- A023540: Expansion of 1/((1-x)(1-5x)(1-9x)(1-11x)).

Offset 0, canonical program `A023540.P4005493772628957832`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023540 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023540.P4005493772628957832.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023545.P13939464609245961382

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=6, a(1)=17, a(2)=34, a(3)=58`
-/

namespace A023545.P13939464609245961382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 17, 34, 58] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A023545.P13939464609245961382

noncomputable section

/-- A023545: Convolution of natural numbers >= 2 and natural numbers >= 3.

Offset 1, canonical program `A023545.P13939464609245961382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023545 (n : ℕ) : ℤ :=
  A023545.P13939464609245961382.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023550.P1624742474377192388

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=7, a(2)=16, a(3)=32`
-/

namespace A023550.P1624742474377192388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 7, 16, 32] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A023550.P1624742474377192388

noncomputable section

/-- A023550: Convolution of natural numbers >= 2 and (F(2), F(3), F(4), ...).

Offset 1, canonical program `A023550.P1624742474377192388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023550 (n : ℕ) : ℤ :=
  A023550.P1624742474377192388.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023551.P7348704678177345546

`(n+1)*((n+1)²+15*(n+1)+38)/6`
-/

namespace A023551.P7348704678177345546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 2 + 15 * (n + 1) + 38) : ℚ) / 6

end

end A023551.P7348704678177345546

noncomputable section

/-- A023551: Self-convolution of natural numbers >= 3.

Offset 1, canonical program `A023551.P7348704678177345546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023551 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023551.P7348704678177345546.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023552.P4902198737061693691

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=3, a(1)=7, a(2)=15, a(3)=28`
-/

namespace A023552.P4902198737061693691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 15, 28] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A023552.P4902198737061693691

noncomputable section

/-- A023552: Convolution of natural numbers >= 3 and Fibonacci numbers.

Offset 1, canonical program `A023552.P4902198737061693691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023552 (n : ℕ) : ℤ :=
  A023552.P4902198737061693691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023552.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023553.P11388446626321300416

`a(n-1)+a(n-2)+3*(n+1)+4` with `a(0)=3, a(1)=13`
-/

namespace A023553.P11388446626321300416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 13] fun n a =>
  a (n - 1) + a (n - 2) + 3 * (n + 1) + 4

end

end A023553.P11388446626321300416

noncomputable section

/-- A023553: Convolution of integers >= 3 and Lucas numbers.

Offset 1, canonical program `A023553.P11388446626321300416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023553 (n : ℕ) : ℤ :=
  (A023553.P11388446626321300416.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023554.P9354063548383964204

`a(n-1)+a(n-2)+2*(n+1)+3` with `a(0)=3, a(1)=10`
-/

namespace A023554.P9354063548383964204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n a =>
  a (n - 1) + a (n - 2) + 2 * (n + 1) + 3

end

end A023554.P9354063548383964204

noncomputable section

/-- A023554: Convolution of natural numbers >= 3 and (Fib(2), Fib(3), Fib(4), ...).

Offset 1, canonical program `A023554.P9354063548383964204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023554 (n : ℕ) : ℤ :=
  (A023554.P9354063548383964204.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023554.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023620.P10602615773165496403

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=41`
-/

namespace A023620.P10602615773165496403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 18, 41] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - a (n - 3) + a (n - 4)

end

end A023620.P10602615773165496403

noncomputable section

/-- A023620: Convolution of Lucas numbers and odd numbers.

Offset 1, canonical program `A023620.P10602615773165496403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023620 (n : ℕ) : ℤ :=
  A023620.P10602615773165496403.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023620.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023717.P4302381330862949890

`4*a(floor(n/3))+n-3*floor(n/3)` with `a(0)=0`
-/

namespace A023717.P4302381330862949890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * a ⌊(n : ℚ) / 3⌋.toNat + (n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋

end

end A023717.P4302381330862949890

noncomputable section

/-- A023717: Numbers with no 3's in base-4 expansion.

Offset 0, canonical program `A023717.P4302381330862949890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023717 (n : ℕ) : ℤ :=
  A023717.P4302381330862949890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023813.P10934357083677290797

`n^((n²+n)/2)`
-/

namespace A023813.P10934357083677290797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((n ^ 2 + n : ℚ) / 2 : ℝ)

end

end A023813.P10934357083677290797

noncomputable section

/-- A023813: a(n) = n^(n*(n+1)/2).

Offset 0, canonical program `A023813.P10934357083677290797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023813 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023813.P10934357083677290797.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023855.P13192670889613281281

`(4*(n+1)^3+15*(n+1)²+14*(n+1)+3-3*(n+2)²*(-1)^(n+1))/48`
-/

namespace A023855.P13192670889613281281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) ^ 3 + 15 * (n + 1) ^ 2 + 14 * (n + 1) + 3 : ℤ) - (3 * (n + 2) ^ 2 : ℤ) * (-1) ^ (n + 1) : ℚ) / 48

end

end A023855.P13192670889613281281

noncomputable section

/-- A023855: a(n) = 1*(n) + 2*(n-1) + 3*(n-2) + ... + (n+1-k)*k, where k = floor((n+1)/2).

Offset 1, canonical program `A023855.P13192670889613281281`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023855 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023855.P13192670889613281281.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023856.P15128792986930131944

`(n+3)*(4*(n+1)²+13*(n+1)+6-3*(n+3)*(-1)^(n+1))/48`
-/

namespace A023856.P15128792986930131944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * ((4 * (n + 1) ^ 2 + 13 * (n + 1) + 6 : ℤ) - (3 * (n + 3) : ℤ) * (-1) ^ (n + 1)) : ℚ) / 48

end

end A023856.P15128792986930131944

noncomputable section

/-- A023856: a(n) = 1*(n+1-1) + 2*(n+1-2) + ... + k*(n+1-k), where k = floor((n+1)/2).

Offset 1, canonical program `A023856.P15128792986930131944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023856 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023856.P15128792986930131944.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023946.P16323304720977640166

`(6*11^(n+3)-8*10^(n+3)+3*5^(n+3)-1)/360`
-/

namespace A023946.P16323304720977640166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * 11 ^ (n + 3) : ℤ) - (8 * 10 ^ (n + 3) : ℤ) + (3 * 5 ^ (n + 3) : ℤ) - 1 : ℚ) / 360

end

end A023946.P16323304720977640166

noncomputable section

/-- A023946: Expansion of g.f. 1/((1-x)*(1-5*x)*(1-10*x)*(1-11*x)).

Offset 0, canonical program `A023946.P16323304720977640166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023946 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023946.P16323304720977640166.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023946.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023949.P9445738726956557329

`(30*8^(n+3)-10*7^(n+4)+7*6^(n+4)-2)/420`
-/

namespace A023949.P9445738726956557329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((30 * 8 ^ (n + 3) : ℤ) - (10 * 7 ^ (n + 4) : ℤ) + (7 * 6 ^ (n + 4) : ℤ) - 2 : ℚ) / 420

end

end A023949.P9445738726956557329

noncomputable section

/-- A023949: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-8*x)).

Offset 0, canonical program `A023949.P9445738726956557329`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023949 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023949.P9445738726956557329.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023950.P8212537277220015283

`(5*9^(n+3)-20*7^(n+3)+16*6^(n+3)-1)/240`
-/

namespace A023950.P8212537277220015283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 9 ^ (n + 3) : ℤ) - (20 * 7 ^ (n + 3) : ℤ) + (16 * 6 ^ (n + 3) : ℤ) - 1 : ℚ) / 240

end

end A023950.P8212537277220015283

noncomputable section

/-- A023950: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-9*x)).

Offset 0, canonical program `A023950.P8212537277220015283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023950 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023950.P8212537277220015283.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023951.P8914464575206347545

`(5*10^(n+3)-30*7^(n+3)+27*6^(n+3)-2)/540`
-/

namespace A023951.P8914464575206347545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 10 ^ (n + 3) : ℤ) - (30 * 7 ^ (n + 3) : ℤ) + (27 * 6 ^ (n + 3) : ℤ) - 2 : ℚ) / 540

end

end A023951.P8914464575206347545

noncomputable section

/-- A023951: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-10*x)).

Offset 0, canonical program `A023951.P8914464575206347545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023951 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023951.P8914464575206347545.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023952.P16022783491513010235

`(3*11^(n+3)-25*7^(n+3)+24*6^(n+3)-2)/600`
-/

namespace A023952.P16022783491513010235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 11 ^ (n + 3) : ℤ) - (25 * 7 ^ (n + 3) : ℤ) + (24 * 6 ^ (n + 3) : ℤ) - 2 : ℚ) / 600

end

end A023952.P16022783491513010235

noncomputable section

/-- A023952: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-11*x)).

Offset 0, canonical program `A023952.P16022783491513010235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023952 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023952.P16022783491513010235.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023952.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023953.P1971083279702146500

`(12^(n+3)-11*7^(n+3)+11*6^(n+3)-1)/330`
-/

namespace A023953.P1971083279702146500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 ^ (n + 3) : ℤ) - (11 * 7 ^ (n + 3) : ℤ) + (11 * 6 ^ (n + 3) : ℤ) - 1 : ℚ) / 330

end

end A023953.P1971083279702146500

noncomputable section

/-- A023953: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-7*x)*(1-12*x)).

Offset 0, canonical program `A023953.P1971083279702146500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023953.P1971083279702146500.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023954.P7113502984045671773

`(35*9^(n+3)-60*8^(n+3)+28*6^(n+3)-3)/840`
-/

namespace A023954.P7113502984045671773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((35 * 9 ^ (n + 3) : ℤ) - (60 * 8 ^ (n + 3) : ℤ) + (28 * 6 ^ (n + 3) : ℤ) - 3 : ℚ) / 840

end

end A023954.P7113502984045671773

noncomputable section

/-- A023954: Expansion of g.f. 1/((1-x)*(1-6*x)*(1-8*x)*(1-9*x)).

Offset 0, canonical program `A023954.P7113502984045671773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023954 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023954.P7113502984045671773.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A017950.P15998525358839181329

`round(sqrt(15)^n)`
-/

namespace A017950.P15998525358839181329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (15 : ℝ) ^ n)

end

end A017950.P15998525358839181329

noncomputable section

/-- A017950: Powers of sqrt(15) rounded to nearest integer.

Offset 0, canonical program `A017950.P15998525358839181329`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A017950 (n : ℕ) : ℤ :=
  A017950.P15998525358839181329.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A017950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017956.P6177832784213659451

`round(sqrt(17)^n)`
-/

namespace A017956.P6177832784213659451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (17 : ℝ) ^ n)

end

end A017956.P6177832784213659451

noncomputable section

/-- A017956: Powers of sqrt(17) rounded to nearest integer.

Offset 0, canonical program `A017956.P6177832784213659451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A017956 (n : ℕ) : ℤ :=
  A017956.P6177832784213659451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A017956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017959.P15740402028586738101

`round(sqrt(18)^n)`
-/

namespace A017959.P15740402028586738101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (18 : ℝ) ^ n)

end

end A017959.P15740402028586738101

noncomputable section

/-- A017959: Powers of sqrt(18) rounded to nearest integer.

Offset 0, canonical program `A017959.P15740402028586738101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A017959 (n : ℕ) : ℤ :=
  A017959.P15740402028586738101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A017959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017962.P18158187199415792782

`round(sqrt(19)^n)`
-/

namespace A017962.P18158187199415792782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (19 : ℝ) ^ n)

end

end A017962.P18158187199415792782

noncomputable section

/-- A017962: Powers of sqrt(19) rounded to nearest integer.

Offset 0, canonical program `A017962.P18158187199415792782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A017962 (n : ℕ) : ℤ :=
  A017962.P18158187199415792782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. -/
def A017962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017965.P577559006634562251

`round(sqrt(20)^n)`
-/

namespace A017965.P577559006634562251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (20 : ℝ) ^ n)

end

end A017965.P577559006634562251

noncomputable section

/-- A017965: Powers of sqrt(20) rounded to nearest integer.

Offset 0, canonical program `A017965.P577559006634562251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A017965 (n : ℕ) : ℤ :=
  A017965.P577559006634562251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A017965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017968.P3313262516108285858

`round(sqrt(21)^n)`
-/

namespace A017968.P3313262516108285858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (21 : ℝ) ^ n)

end

end A017968.P3313262516108285858

noncomputable section

/-- A017968: Powers of sqrt(21) rounded to nearest integer.

Offset 0, canonical program `A017968.P3313262516108285858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A017968 (n : ℕ) : ℤ :=
  A017968.P3313262516108285858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A017968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017971.P4030443112695631511

`round(sqrt(22)^n)`
-/

namespace A017971.P4030443112695631511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (22 : ℝ) ^ n)

end

end A017971.P4030443112695631511

noncomputable section

/-- A017971: Powers of sqrt(22) rounded to nearest integer.

Offset 0, canonical program `A017971.P4030443112695631511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A017971 (n : ℕ) : ℤ :=
  A017971.P4030443112695631511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. -/
def A017971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017974.P17644686889605105599

`round(sqrt(23)^n)`
-/

namespace A017974.P17644686889605105599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (23 : ℝ) ^ n)

end

end A017974.P17644686889605105599

noncomputable section

/-- A017974: Powers of sqrt(23) rounded to nearest integer.

Offset 0, canonical program `A017974.P17644686889605105599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A017974 (n : ℕ) : ℤ :=
  A017974.P17644686889605105599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A017974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017977.P6768353009805850750

`round(sqrt(24)^n)`
-/

namespace A017977.P6768353009805850750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (24 : ℝ) ^ n)

end

end A017977.P6768353009805850750

noncomputable section

/-- A017977: Powers of sqrt(24) rounded to nearest integer.

Offset 0, canonical program `A017977.P6768353009805850750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A017977 (n : ℕ) : ℤ :=
  A017977.P6768353009805850750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A017977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017981.P5662669907479920218

`ceil(root(2, 3)^n)`
-/

namespace A017981.P5662669907479920218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 : ℝ) ^ (1 / (3 : ℝ))) ^ n⌉

end

end A017981.P5662669907479920218

noncomputable section

/-- A017981: Powers of cube root of 2 rounded up.

Offset 0, canonical program `A017981.P5662669907479920218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A017981 (n : ℕ) : ℤ :=
  A017981.P5662669907479920218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A017981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017982.P15637322331268037130

`floor(3^(n/3))`
-/

namespace A017982.P15637322331268037130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A017982.P15637322331268037130

noncomputable section

/-- A017982: Powers of cube root of 3 rounded down.

Offset 0, canonical program `A017982.P15637322331268037130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A017982 (n : ℕ) : ℤ :=
  A017982.P15637322331268037130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A017982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017983.P1771809161547523124

`round(3^(n/3))`
-/

namespace A017983.P1771809161547523124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A017983.P1771809161547523124

noncomputable section

/-- A017983: Powers of cube root of 3 rounded to nearest integer.

Offset 0, canonical program `A017983.P1771809161547523124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A017983 (n : ℕ) : ℤ :=
  A017983.P1771809161547523124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A017983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017986.P4285738452838893498

`round(4^(n/3))`
-/

namespace A017986.P4285738452838893498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A017986.P4285738452838893498

noncomputable section

/-- A017986: Powers of cube root of 4 rounded to nearest integer.

Offset 0, canonical program `A017986.P4285738452838893498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017986 (n : ℕ) : ℤ :=
  A017986.P4285738452838893498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. -/
def A017986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017988.P3597403592851603370

`floor(sqrt(5^(2*n/3)))`
-/

namespace A017988.P3597403592851603370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((5 : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ))⌋

end

end A017988.P3597403592851603370

noncomputable section

/-- A017988: Powers of cube root of 5 rounded down.

Offset 0, canonical program `A017988.P3597403592851603370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A017988 (n : ℕ) : ℤ :=
  A017988.P3597403592851603370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A017988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017989.P13177169515701887306

`round(sqrt(5^(2*n/3)))`
-/

namespace A017989.P13177169515701887306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((5 : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ)))

end

end A017989.P13177169515701887306

noncomputable section

/-- A017989: Powers of cube root of 5 rounded to nearest integer.

Offset 0, canonical program `A017989.P13177169515701887306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A017989 (n : ℕ) : ℤ :=
  A017989.P13177169515701887306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A017989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017991.P6982630282778706373

`floor(sqrt(6^(2*n/3)))`
-/

namespace A017991.P6982630282778706373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((6 : ℝ) ^ ((2 * n : ℚ) / 3 : ℝ))⌋

end

end A017991.P6982630282778706373

noncomputable section

/-- A017991: Powers of cube root of 6 rounded down.

Offset 0, canonical program `A017991.P6982630282778706373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A017991 (n : ℕ) : ℤ :=
  A017991.P6982630282778706373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A017991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017992.P7080197699977789945

`round(6^(n/3))`
-/

namespace A017992.P7080197699977789945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A017992.P7080197699977789945

noncomputable section

/-- A017992: Powers of cube root of 6 rounded to nearest integer.

Offset 0, canonical program `A017992.P7080197699977789945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. -/
def A017992 (n : ℕ) : ℤ :=
  A017992.P7080197699977789945.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 386 terms. -/
def A017992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017994.P5264065172002727403

`floor(7^(n/3))`
-/

namespace A017994.P5264065172002727403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A017994.P5264065172002727403

noncomputable section

/-- A017994: Powers of cube root of 7 rounded down.

Offset 0, canonical program `A017994.P5264065172002727403`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017994 (n : ℕ) : ℤ :=
  A017994.P5264065172002727403.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017995.P10481796493008747646

`round(7^(n/3))`
-/

namespace A017995.P10481796493008747646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A017995.P10481796493008747646

noncomputable section

/-- A017995: Powers of cube root of 7 rounded to nearest integer.

Offset 0, canonical program `A017995.P10481796493008747646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017995 (n : ℕ) : ℤ :=
  A017995.P10481796493008747646.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018003.P8392069369485400393

`floor(10^(n/3))`
-/

namespace A018003.P8392069369485400393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018003.P8392069369485400393

noncomputable section

/-- A018003: Powers of cube root of 10 rounded down.

Offset 0, canonical program `A018003.P8392069369485400393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A018003 (n : ℕ) : ℤ :=
  A018003.P8392069369485400393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A018003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018004.P16559126696998755901

`round(10^(n/3))`
-/

namespace A018004.P16559126696998755901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018004.P16559126696998755901

noncomputable section

/-- A018004: Powers of cube root of 10 rounded to nearest integer.

Offset 0, canonical program `A018004.P16559126696998755901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A018004 (n : ℕ) : ℤ :=
  A018004.P16559126696998755901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A018004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018006.P12550283863343103991

`floor(11^(n/3))`
-/

namespace A018006.P12550283863343103991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018006.P12550283863343103991

noncomputable section

/-- A018006: Powers of cube root of 11 rounded down.

Offset 0, canonical program `A018006.P12550283863343103991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A018006 (n : ℕ) : ℤ :=
  A018006.P12550283863343103991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A018006.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018007.P16703951481824979667

`round(11^(n/3))`
-/

namespace A018007.P16703951481824979667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018007.P16703951481824979667

noncomputable section

/-- A018007: Powers of cube root of 11 rounded to nearest integer.

Offset 0, canonical program `A018007.P16703951481824979667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A018007 (n : ℕ) : ℤ :=
  A018007.P16703951481824979667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A018007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018010.P3177161722198752500

`round(12^(n/3))`
-/

namespace A018010.P3177161722198752500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((12 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018010.P3177161722198752500

noncomputable section

/-- A018010: Powers of cube root of 12 rounded to nearest integer.

Offset 0, canonical program `A018010.P3177161722198752500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A018010 (n : ℕ) : ℤ :=
  A018010.P3177161722198752500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 278 terms. -/
def A018010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018013.P10968953885026456035

`round(13^(n/3))`
-/

namespace A018013.P10968953885026456035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((13 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018013.P10968953885026456035

noncomputable section

/-- A018013: Powers of cube root of 13 rounded to nearest integer.

Offset 0, canonical program `A018013.P10968953885026456035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A018013 (n : ℕ) : ℤ :=
  A018013.P10968953885026456035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 270 terms. -/
def A018013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018015.P13557129458488737064

`floor(14^(n/3))`
-/

namespace A018015.P13557129458488737064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(14 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018015.P13557129458488737064

noncomputable section

/-- A018015: Powers of cube root of 14 rounded down.

Offset 0, canonical program `A018015.P13557129458488737064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A018015 (n : ℕ) : ℤ :=
  A018015.P13557129458488737064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A018015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018016.P16812204082695019236

`round(14^(n/3))`
-/

namespace A018016.P16812204082695019236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((14 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018016.P16812204082695019236

noncomputable section

/-- A018016: Powers of cube root of 14 rounded to nearest integer.

Offset 0, canonical program `A018016.P16812204082695019236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A018016 (n : ℕ) : ℤ :=
  A018016.P16812204082695019236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A018016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018018.P6699755399368029623

`floor(15^(n/3))`
-/

namespace A018018.P6699755399368029623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(15 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018018.P6699755399368029623

noncomputable section

/-- A018018: Powers of cube root of 15 rounded down.

Offset 0, canonical program `A018018.P6699755399368029623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A018018 (n : ℕ) : ℤ :=
  A018018.P6699755399368029623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A018018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018019.P8371660953020754817

`round(15^(n/3))`
-/

namespace A018019.P8371660953020754817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((15 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018019.P8371660953020754817

noncomputable section

/-- A018019: Powers of cube root of 15 rounded to nearest integer.

Offset 0, canonical program `A018019.P8371660953020754817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A018019 (n : ℕ) : ℤ :=
  A018019.P8371660953020754817.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. -/
def A018019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018024.P14954635159169993979

`floor(17^(n/3))`
-/

namespace A018024.P14954635159169993979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018024.P14954635159169993979

noncomputable section

/-- A018024: Powers of cube root of 17 rounded down.

Offset 0, canonical program `A018024.P14954635159169993979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A018024 (n : ℕ) : ℤ :=
  A018024.P14954635159169993979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A018024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018025.P7099176975664744632

`round(17^(n/3))`
-/

namespace A018025.P7099176975664744632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((17 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018025.P7099176975664744632

noncomputable section

/-- A018025: Powers of cube root of 17 rounded to nearest integer.

Offset 0, canonical program `A018025.P7099176975664744632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A018025 (n : ℕ) : ℤ :=
  A018025.P7099176975664744632.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. -/
def A018025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018027.P3102652915185541206

`floor(18^(n/3))`
-/

namespace A018027.P3102652915185541206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018027.P3102652915185541206

noncomputable section

/-- A018027: Powers of cube root of 18 rounded down.

Offset 0, canonical program `A018027.P3102652915185541206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A018027 (n : ℕ) : ℤ :=
  A018027.P3102652915185541206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A018027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018028.P5830603224487268178

`round(18^(n/3))`
-/

namespace A018028.P5830603224487268178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((18 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018028.P5830603224487268178

noncomputable section

/-- A018028: Powers of cube root of 18 rounded to nearest integer.

Offset 0, canonical program `A018028.P5830603224487268178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A018028 (n : ℕ) : ℤ :=
  A018028.P5830603224487268178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A018028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018030.P4560821027132420570

`floor(19^(n/3))`
-/

namespace A018030.P4560821027132420570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018030.P4560821027132420570

noncomputable section

/-- A018030: Powers of cube root of 19 rounded down.

Offset 0, canonical program `A018030.P4560821027132420570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A018030 (n : ℕ) : ℤ :=
  A018030.P4560821027132420570.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A018030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018033.P15720440222189732780

`floor(20^(n/3))`
-/

namespace A018033.P15720440222189732780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(20 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018033.P15720440222189732780

noncomputable section

/-- A018033: Powers of cube root of 20 rounded down.

Offset 0, canonical program `A018033.P15720440222189732780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A018033 (n : ℕ) : ℤ :=
  A018033.P15720440222189732780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A018033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018036.P15418198874529348123

`floor(21^(n/3))`
-/

namespace A018036.P15418198874529348123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(21 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018036.P15418198874529348123

noncomputable section

/-- A018036: Powers of cube root of 21 rounded down.

Offset 0, canonical program `A018036.P15418198874529348123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A018036 (n : ℕ) : ℤ :=
  A018036.P15418198874529348123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A018036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018039.P10423894034091347797

`floor(22^(n/3))`
-/

namespace A018039.P10423894034091347797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(22 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018039.P10423894034091347797

noncomputable section

/-- A018039: Powers of cube root of 22 rounded down.

Offset 0, canonical program `A018039.P10423894034091347797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A018039 (n : ℕ) : ℤ :=
  A018039.P10423894034091347797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A018039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018042.P3459466618623817975

`floor(23^(n/3))`
-/

namespace A018042.P3459466618623817975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(23 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018042.P3459466618623817975

noncomputable section

/-- A018042: Powers of cube root of 23 rounded down.

Offset 0, canonical program `A018042.P3459466618623817975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A018042 (n : ℕ) : ℤ :=
  A018042.P3459466618623817975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A018042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018043.P7123361039262672170

`round(23^(n/3))`
-/

namespace A018043.P7123361039262672170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((23 : ℝ) ^ ((n : ℚ) / 3 : ℝ))

end

end A018043.P7123361039262672170

noncomputable section

/-- A018043: Powers of cube root of 23 rounded to nearest integer.

Offset 0, canonical program `A018043.P7123361039262672170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A018043 (n : ℕ) : ℤ :=
  A018043.P7123361039262672170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A018043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018045.P11791116757497946798

`floor(24^(n/3))`
-/

namespace A018045.P11791116757497946798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

end

end A018045.P11791116757497946798

noncomputable section

/-- A018045: Powers of cube root of 24 rounded down.

Offset 0, canonical program `A018045.P11791116757497946798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A018045 (n : ℕ) : ℤ :=
  A018045.P11791116757497946798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A018045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018046.P4298966318019453348

`round((2*root(3, 3))^n)`
-/

namespace A018046.P4298966318019453348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * (3 : ℝ) ^ (1 / (3 : ℝ))) ^ n)

end

end A018046.P4298966318019453348

noncomputable section

/-- A018046: Powers of cube root of 24 rounded to nearest integer.

Offset 0, canonical program `A018046.P4298966318019453348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A018046 (n : ℕ) : ℤ :=
  A018046.P4298966318019453348.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A018046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018048.P631130173082114317

`floor(2^(n/4))`
-/

namespace A018048.P631130173082114317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018048.P631130173082114317

noncomputable section

/-- A018048: Powers of fourth root of 2 rounded down.

Offset 0, canonical program `A018048.P631130173082114317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A018048 (n : ℕ) : ℤ :=
  A018048.P631130173082114317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1329 terms. -/
def A018048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018051.P9620246204428925504

`floor(3^(n/4))`
-/

namespace A018051.P9620246204428925504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018051.P9620246204428925504

noncomputable section

/-- A018051: Powers of fourth root of 3 rounded down.

Offset 0, canonical program `A018051.P9620246204428925504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A018051 (n : ℕ) : ℤ :=
  A018051.P9620246204428925504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A018051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018052.P5388622727807734156

`round(3^(n/4))`
-/

namespace A018052.P5388622727807734156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018052.P5388622727807734156

noncomputable section

/-- A018052: Powers of fourth root of 3 rounded to nearest integer.

Offset 0, canonical program `A018052.P5388622727807734156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A018052 (n : ℕ) : ℤ :=
  A018052.P5388622727807734156.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 839 terms. -/
def A018052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018057.P3909655468605073223

`floor(5^(n/4))`
-/

namespace A018057.P3909655468605073223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018057.P3909655468605073223

noncomputable section

/-- A018057: Powers of fourth root of 5 rounded down.

Offset 0, canonical program `A018057.P3909655468605073223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A018057 (n : ℕ) : ℤ :=
  A018057.P3909655468605073223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A018057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018058.P5996780747590626093

`round(5^(n/4))`
-/

namespace A018058.P5996780747590626093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018058.P5996780747590626093

noncomputable section

/-- A018058: Powers of fourth root of 5 rounded to nearest integer.

Offset 0, canonical program `A018058.P5996780747590626093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A018058 (n : ℕ) : ℤ :=
  A018058.P5996780747590626093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 573 terms. -/
def A018058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018060.P7176242607218543114

`floor(6^(n/4))`
-/

namespace A018060.P7176242607218543114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018060.P7176242607218543114

noncomputable section

/-- A018060: Powers of fourth root of 6 rounded down.

Offset 0, canonical program `A018060.P7176242607218543114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018060 (n : ℕ) : ℤ :=
  A018060.P7176242607218543114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018061.P6372660784948082056

`round(6^(n/4))`
-/

namespace A018061.P6372660784948082056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((6 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018061.P6372660784948082056

noncomputable section

/-- A018061: Powers of fourth root of 6 rounded to nearest integer.

Offset 0, canonical program `A018061.P6372660784948082056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018061 (n : ℕ) : ℤ :=
  A018061.P6372660784948082056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018063.P10331666004157670674

`floor(7^(n/4))`
-/

namespace A018063.P10331666004157670674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018063.P10331666004157670674

noncomputable section

/-- A018063: Powers of fourth root of 7 rounded down.

Offset 0, canonical program `A018063.P10331666004157670674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018063 (n : ℕ) : ℤ :=
  A018063.P10331666004157670674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018064.P4767528338658594735

`round(7^(n/4))`
-/

namespace A018064.P4767528338658594735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018064.P4767528338658594735

noncomputable section

/-- A018064: Powers of fourth root of 7 rounded to nearest integer.

Offset 0, canonical program `A018064.P4767528338658594735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018064 (n : ℕ) : ℤ :=
  A018064.P4767528338658594735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A018064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018067.P17008007606671554914

`round(8^(n/4))`
-/

namespace A018067.P17008007606671554914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((8 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018067.P17008007606671554914

noncomputable section

/-- A018067: Powers of fourth root of 8 rounded to nearest integer.

Offset 0, canonical program `A018067.P17008007606671554914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A018067 (n : ℕ) : ℤ :=
  A018067.P17008007606671554914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A018067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018072.P17045503792565000917

`floor(10^(n/4))`
-/

namespace A018072.P17045503792565000917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018072.P17045503792565000917

noncomputable section

/-- A018072: Powers of fourth root of 10 rounded down.

Offset 0, canonical program `A018072.P17045503792565000917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A018072 (n : ℕ) : ℤ :=
  A018072.P17045503792565000917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A018072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018073.P12688293634514484333

`round(10^(n/4))`
-/

namespace A018073.P12688293634514484333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018073.P12688293634514484333

noncomputable section

/-- A018073: Powers of fourth root of 10 rounded to nearest integer.

Offset 0, canonical program `A018073.P12688293634514484333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A018073 (n : ℕ) : ℤ :=
  A018073.P12688293634514484333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A018073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018075.P11047111669678635786

`floor(11^(n/4))`
-/

namespace A018075.P11047111669678635786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018075.P11047111669678635786

noncomputable section

/-- A018075: Powers of fourth root of 11 rounded down.

Offset 0, canonical program `A018075.P11047111669678635786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018075 (n : ℕ) : ℤ :=
  A018075.P11047111669678635786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018076.P10992735860476291149

`round(11^(n/4))`
-/

namespace A018076.P10992735860476291149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((11 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018076.P10992735860476291149

noncomputable section

/-- A018076: Powers of fourth root of 11 rounded to nearest integer.

Offset 0, canonical program `A018076.P10992735860476291149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018076 (n : ℕ) : ℤ :=
  A018076.P10992735860476291149.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018079.P14753023873512482232

`round(12^(n/4))`
-/

namespace A018079.P14753023873512482232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((12 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018079.P14753023873512482232

noncomputable section

/-- A018079: Powers of fourth root of 12 rounded to nearest integer.

Offset 0, canonical program `A018079.P14753023873512482232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A018079 (n : ℕ) : ℤ :=
  A018079.P14753023873512482232.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. -/
def A018079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018081.P4755878940651221397

`floor(13^(n/4))`
-/

namespace A018081.P4755878940651221397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(13 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018081.P4755878940651221397

noncomputable section

/-- A018081: Powers of fourth root of 13 rounded down.

Offset 0, canonical program `A018081.P4755878940651221397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A018081 (n : ℕ) : ℤ :=
  A018081.P4755878940651221397.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A018081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018082.P16674709508726984476

`round(13^(n/4))`
-/

namespace A018082.P16674709508726984476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((13 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018082.P16674709508726984476

noncomputable section

/-- A018082: Powers of fourth root of 13 rounded to nearest integer.

Offset 0, canonical program `A018082.P16674709508726984476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A018082 (n : ℕ) : ℤ :=
  A018082.P16674709508726984476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A018082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018084.P17169660407450006236

`floor(14^(n/4))`
-/

namespace A018084.P17169660407450006236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(14 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018084.P17169660407450006236

noncomputable section

/-- A018084: Powers of fourth root of 14 rounded down.

Offset 0, canonical program `A018084.P17169660407450006236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A018084 (n : ℕ) : ℤ :=
  A018084.P17169660407450006236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A018084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018085.P14192843371343894989

`round(14^(n/4))`
-/

namespace A018085.P14192843371343894989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((14 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018085.P14192843371343894989

noncomputable section

/-- A018085: Powers of fourth root of 14 rounded to nearest integer.

Offset 0, canonical program `A018085.P14192843371343894989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A018085 (n : ℕ) : ℤ :=
  A018085.P14192843371343894989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A018085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018087.P17454763579600374980

`floor(15^(n/4))`
-/

namespace A018087.P17454763579600374980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(15 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018087.P17454763579600374980

noncomputable section

/-- A018087: Powers of fourth root of 15 rounded down.

Offset 0, canonical program `A018087.P17454763579600374980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A018087 (n : ℕ) : ℤ :=
  A018087.P17454763579600374980.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A018087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018088.P18234037345618883268

`round(15^(n/4))`
-/

namespace A018088.P18234037345618883268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((15 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018088.P18234037345618883268

noncomputable section

/-- A018088: Powers of fourth root of 15 rounded to nearest integer.

Offset 0, canonical program `A018088.P18234037345618883268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A018088 (n : ℕ) : ℤ :=
  A018088.P18234037345618883268.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A018088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018093.P14036620867546097494

`floor(17^(n/4))`
-/

namespace A018093.P14036620867546097494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018093.P14036620867546097494

noncomputable section

/-- A018093: Powers of fourth root of 17 rounded down.

Offset 0, canonical program `A018093.P14036620867546097494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A018093 (n : ℕ) : ℤ :=
  A018093.P14036620867546097494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A018093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018094.P7089206949465162185

`round(17^(n/4))`
-/

namespace A018094.P7089206949465162185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((17 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018094.P7089206949465162185

noncomputable section

/-- A018094: Powers of fourth root of 17 rounded to nearest integer.

Offset 0, canonical program `A018094.P7089206949465162185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A018094 (n : ℕ) : ℤ :=
  A018094.P7089206949465162185.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A018094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018096.P153842857525541908

`floor(18^(n/4))`
-/

namespace A018096.P153842857525541908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018096.P153842857525541908

noncomputable section

/-- A018096: Powers of fourth root of 18 rounded down.

Offset 0, canonical program `A018096.P153842857525541908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A018096 (n : ℕ) : ℤ :=
  A018096.P153842857525541908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A018096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018097.P8047196703899382887

`round(18^(n/4))`
-/

namespace A018097.P8047196703899382887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((18 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018097.P8047196703899382887

noncomputable section

/-- A018097: Powers of fourth root of 18 rounded to nearest integer.

Offset 0, canonical program `A018097.P8047196703899382887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A018097 (n : ℕ) : ℤ :=
  A018097.P8047196703899382887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A018097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018099.P4236248226109878105

`floor(19^(n/4))`
-/

namespace A018099.P4236248226109878105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018099.P4236248226109878105

noncomputable section

/-- A018099: Powers of fourth root of 19 rounded down.

Offset 0, canonical program `A018099.P4236248226109878105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A018099 (n : ℕ) : ℤ :=
  A018099.P4236248226109878105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A018099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018100.P1167688119497041151

`round(19^(n/4))`
-/

namespace A018100.P1167688119497041151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((19 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018100.P1167688119497041151

noncomputable section

/-- A018100: Powers of fourth root of 19 rounded to nearest integer.

Offset 0, canonical program `A018100.P1167688119497041151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A018100 (n : ℕ) : ℤ :=
  A018100.P1167688119497041151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A018100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018102.P12363162314947531818

`floor(20^(n/4))`
-/

namespace A018102.P12363162314947531818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(20 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018102.P12363162314947531818

noncomputable section

/-- A018102: Powers of fourth root of 20 rounded down.

Offset 0, canonical program `A018102.P12363162314947531818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A018102 (n : ℕ) : ℤ :=
  A018102.P12363162314947531818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A018102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018103.P11939854597086477035

`round(20^(n/4))`
-/

namespace A018103.P11939854597086477035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((20 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018103.P11939854597086477035

noncomputable section

/-- A018103: Powers of fourth root of 20 rounded to nearest integer.

Offset 0, canonical program `A018103.P11939854597086477035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A018103 (n : ℕ) : ℤ :=
  A018103.P11939854597086477035.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 308 terms. -/
def A018103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018106.P4013518639670967208

`round(21^(n/4))`
-/

namespace A018106.P4013518639670967208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((21 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018106.P4013518639670967208

noncomputable section

/-- A018106: Powers of fourth root of 21 rounded to nearest integer.

Offset 0, canonical program `A018106.P4013518639670967208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A018106 (n : ℕ) : ℤ :=
  A018106.P4013518639670967208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A018106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018108.P6337244509870454910

`floor(22^(n/4))`
-/

namespace A018108.P6337244509870454910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(22 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018108.P6337244509870454910

noncomputable section

/-- A018108: Powers of fourth root of 22 rounded down.

Offset 0, canonical program `A018108.P6337244509870454910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A018108 (n : ℕ) : ℤ :=
  A018108.P6337244509870454910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A018108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018109.P7011005625315940237

`round(22^(n/4))`
-/

namespace A018109.P7011005625315940237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((22 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018109.P7011005625315940237

noncomputable section

/-- A018109: Powers of fourth root of 22 rounded to nearest integer.

Offset 0, canonical program `A018109.P7011005625315940237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A018109 (n : ℕ) : ℤ :=
  A018109.P7011005625315940237.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. -/
def A018109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018111.P12977573308699411012

`floor(23^(n/4))`
-/

namespace A018111.P12977573308699411012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(23 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018111.P12977573308699411012

noncomputable section

/-- A018111: Powers of fourth root of 23 rounded down.

Offset 0, canonical program `A018111.P12977573308699411012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A018111 (n : ℕ) : ℤ :=
  A018111.P12977573308699411012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A018111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018112.P5299032250763542590

`round(sqrt(sqrt(23))^n)`
-/

namespace A018112.P5299032250763542590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (23 : ℝ)) ^ n)

end

end A018112.P5299032250763542590

noncomputable section

/-- A018112: Powers of fourth root of 23 rounded to nearest integer.

Offset 0, canonical program `A018112.P5299032250763542590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A018112 (n : ℕ) : ℤ :=
  A018112.P5299032250763542590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A018112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018114.P5660574169271950473

`floor(24^(n/4))`
-/

namespace A018114.P5660574169271950473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋

end

end A018114.P5660574169271950473

noncomputable section

/-- A018114: Powers of fourth root of 24 rounded down.

Offset 0, canonical program `A018114.P5660574169271950473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A018114 (n : ℕ) : ℤ :=
  A018114.P5660574169271950473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A018114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018115.P2915647392709698732

`round(24^(n/4))`
-/

namespace A018115.P2915647392709698732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((24 : ℝ) ^ ((n : ℚ) / 4 : ℝ))

end

end A018115.P2915647392709698732

noncomputable section

/-- A018115: Powers of fourth root of 24 rounded to nearest integer.

Offset 0, canonical program `A018115.P2915647392709698732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A018115 (n : ℕ) : ℤ :=
  A018115.P2915647392709698732.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. -/
def A018115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018121.P7947034240546211439

`round(3^(n/5))`
-/

namespace A018121.P7947034240546211439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018121.P7947034240546211439

noncomputable section

/-- A018121: Powers of fifth root of 3 rounded to nearest integer.

Offset 0, canonical program `A018121.P7947034240546211439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. -/
def A018121 (n : ℕ) : ℤ :=
  A018121.P7947034240546211439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1048 terms. -/
def A018121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018123.P947965484352094533

`floor(4^(n/5))`
-/

namespace A018123.P947965484352094533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018123.P947965484352094533

noncomputable section

/-- A018123: Powers of fifth root of 4 rounded down.

Offset 0, canonical program `A018123.P947965484352094533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018123 (n : ℕ) : ℤ :=
  A018123.P947965484352094533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 831 terms. -/
def A018123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018127.P4168323977292389068

`round(5^(n/5))`
-/

namespace A018127.P4168323977292389068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018127.P4168323977292389068

noncomputable section

/-- A018127: Powers of fifth root of 5 rounded to nearest integer.

Offset 0, canonical program `A018127.P4168323977292389068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A018127 (n : ℕ) : ℤ :=
  A018127.P4168323977292389068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 716 terms. -/
def A018127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018132.P14846082595715997503

`floor(7^(n/5))`
-/

namespace A018132.P14846082595715997503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018132.P14846082595715997503

noncomputable section

/-- A018132: Powers of fifth root of 7 rounded down.

Offset 0, canonical program `A018132.P14846082595715997503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A018132 (n : ℕ) : ℤ :=
  A018132.P14846082595715997503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 592 terms. -/
def A018132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018135.P5969121266142873838

`floor(8^(n/5))`
-/

namespace A018135.P5969121266142873838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(8 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018135.P5969121266142873838

noncomputable section

/-- A018135: Powers of fifth root of 8 rounded down.

Offset 0, canonical program `A018135.P5969121266142873838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018135 (n : ℕ) : ℤ :=
  A018135.P5969121266142873838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 554 terms. -/
def A018135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018140.P17425176080909874737

`ceil((3^(2/5))^n)`
-/

namespace A018140.P17425176080909874737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℝ) ^ ((2 : ℚ) / 5 : ℝ)) ^ n⌉

end

end A018140.P17425176080909874737

noncomputable section

/-- A018140: Powers of the fifth root of 9 rounded up.

Offset 0, canonical program `A018140.P17425176080909874737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018140 (n : ℕ) : ℤ :=
  A018140.P17425176080909874737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 524 terms. -/
def A018140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018141.P16818335478403762386

`floor(root(10, 5)^n)`
-/

namespace A018141.P16818335478403762386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((10 : ℝ) ^ (1 / (5 : ℝ))) ^ n⌋

end

end A018141.P16818335478403762386

noncomputable section

/-- A018141: Powers of fifth root of 10 rounded down.

Offset 0, canonical program `A018141.P16818335478403762386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A018141 (n : ℕ) : ℤ :=
  A018141.P16818335478403762386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A018141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018142.P16654255527489301174

`round(root(10, 5)^n)`
-/

namespace A018142.P16654255527489301174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((10 : ℝ) ^ (1 / (5 : ℝ))) ^ n)

end

end A018142.P16654255527489301174

noncomputable section

/-- A018142: Powers of fifth root of 10 rounded to nearest integer.

Offset 0, canonical program `A018142.P16654255527489301174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A018142 (n : ℕ) : ℤ :=
  A018142.P16654255527489301174.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A018142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018144.P16588412719325347141

`floor(11^(n/5))`
-/

namespace A018144.P16588412719325347141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018144.P16588412719325347141

noncomputable section

/-- A018144: Powers of fifth root of 11 rounded down.

Offset 0, canonical program `A018144.P16588412719325347141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A018144 (n : ℕ) : ℤ :=
  A018144.P16588412719325347141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A018144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018148.P14232182123024688494

`round(12^(n/5))`
-/

namespace A018148.P14232182123024688494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((12 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018148.P14232182123024688494

noncomputable section

/-- A018148: Powers of fifth root of 12 rounded to nearest integer.

Offset 0, canonical program `A018148.P14232182123024688494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A018148 (n : ℕ) : ℤ :=
  A018148.P14232182123024688494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A018148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018154.P12656226651126346357

`round(14^(n/5))`
-/

namespace A018154.P12656226651126346357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((14 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018154.P12656226651126346357

noncomputable section

/-- A018154: Powers of fifth root of 14 rounded to nearest integer.

Offset 0, canonical program `A018154.P12656226651126346357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A018154 (n : ℕ) : ℤ :=
  A018154.P12656226651126346357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 437 terms. -/
def A018154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018157.P1069620189047636789

`round(15^(n/5))`
-/

namespace A018157.P1069620189047636789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((15 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018157.P1069620189047636789

noncomputable section

/-- A018157: Powers of fifth root of 15 rounded to nearest integer.

Offset 0, canonical program `A018157.P1069620189047636789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A018157 (n : ℕ) : ℤ :=
  A018157.P1069620189047636789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. -/
def A018157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018162.P18189621660395438062

`floor(17^(n/5))`
-/

namespace A018162.P18189621660395438062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(17 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018162.P18189621660395438062

noncomputable section

/-- A018162: Powers of fifth root of 17 rounded down.

Offset 0, canonical program `A018162.P18189621660395438062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A018162 (n : ℕ) : ℤ :=
  A018162.P18189621660395438062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A018162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018165.P1256256754059875637

`floor(18^(n/5))`
-/

namespace A018165.P1256256754059875637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(18 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018165.P1256256754059875637

noncomputable section

/-- A018165: Powers of fifth root of 18 rounded down.

Offset 0, canonical program `A018165.P1256256754059875637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A018165 (n : ℕ) : ℤ :=
  A018165.P1256256754059875637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A018165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018168.P1486902536757321213

`floor(19^(n/5))`
-/

namespace A018168.P1486902536757321213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(19 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018168.P1486902536757321213

noncomputable section

/-- A018168: Powers of fifth root of 19 rounded down.

Offset 0, canonical program `A018168.P1486902536757321213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A018168 (n : ℕ) : ℤ :=
  A018168.P1486902536757321213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A018168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018175.P7538646468649582105

`round(21^(n/5))`
-/

namespace A018175.P7538646468649582105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((21 : ℝ) ^ ((n : ℚ) / 5 : ℝ))

end

end A018175.P7538646468649582105

noncomputable section

/-- A018175: Powers of fifth root of 21 rounded to nearest integer.

Offset 0, canonical program `A018175.P7538646468649582105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A018175 (n : ℕ) : ℤ :=
  A018175.P7538646468649582105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A018175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018177.P5745912587314525532

`floor(22^(n/5))`
-/

namespace A018177.P5745912587314525532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(22 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018177.P5745912587314525532

noncomputable section

/-- A018177: Powers of fifth root of 22 rounded down.

Offset 0, canonical program `A018177.P5745912587314525532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A018177 (n : ℕ) : ℤ :=
  A018177.P5745912587314525532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A018177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018183.P689843559182131155

`floor(24^(n/5))`
-/

namespace A018183.P689843559182131155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(24 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋

end

end A018183.P689843559182131155

noncomputable section

/-- A018183: Powers of fifth root of 24 rounded down.

Offset 0, canonical program `A018183.P689843559182131155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A018183 (n : ℕ) : ℤ :=
  A018183.P689843559182131155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A018183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018186.P12887403914497736875

`3*a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9`
-/

namespace A018186.P12887403914497736875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6, 9] fun n a =>
  3 * a (n - 2) + a (n - 4)

end

end A018186.P12887403914497736875

noncomputable section

/-- A018186: a(n+2) = 3*a(n) - a(n-2) with a(0) = 1, a(1) = 3, a(2) = 6.

Offset 0, canonical program `A018186.P12887403914497736875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018186 (n : ℕ) : ℤ :=
  (A018186.P12887403914497736875.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A018186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018196.P10655049329318647614

`ogf((-1-2x+7x^3+3x^4-2x^5)/(-1+2x))`
-/

namespace A018196.P10655049329318647614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 0, -7, -3, 2] [1, -2] n

end

end A018196.P10655049329318647614

noncomputable section

/-- A018196: Possible numbers of complements of topologies on 5 points.

Offset 0, canonical program `A018196.P10655049329318647614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A018196 (n : ℕ) : ℤ :=
  A018196.P10655049329318647614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A018196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018246.P1247537461582017046

`Δ[floor(n*ϕ^4)]-1`
-/

namespace A018246.P1247537461582017046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A018246.P1247537461582017046

noncomputable section

/-- A018246: A self-generating sequence: there are a(n) (k+1)'s between successive k's, where k=5.

Offset 1, canonical program `A018246.P1247537461582017046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018246 (n : ℕ) : ℤ :=
  A018246.P1247537461582017046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018837.P12457294932435054562

`a(n-4)+2` with `a(0)=0, a(1)=3, a(2)=2, a(3)=3, a(4)=2, a(5)=3`
-/

namespace A018837.P12457294932435054562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 2, 3, 2, 3] fun n a =>
  a (n - 4) + 2

end

end A018837.P12457294932435054562

noncomputable section

/-- A018837: Number of steps for knight to reach (n,0) on infinite chessboard.

Offset 0, canonical program `A018837.P12457294932435054562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018837 (n : ℕ) : ℤ :=
  (A018837.P12457294932435054562.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018902.P6341118804113423850

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A018902.P6341118804113423850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2)

end

end A018902.P6341118804113423850

noncomputable section

/-- A018902: a(n+2) = 5*a(n+1) - 3*a(n).

Offset 0, canonical program `A018902.P6341118804113423850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A018902 (n : ℕ) : ℤ :=
  A018902.P6341118804113423850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A018902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018906.P6515240892391476921

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=2, a(1)=6`
-/

namespace A018906.P6515240892391476921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A018906.P6515240892391476921

noncomputable section

/-- A018906: Define the Shallit sequence S(a_0,a_1) by a_{n+2} is the least integer > a_{n+1}^2/a_n for n >= 0. This is S(2,6).

Offset 0, canonical program `A018906.P6515240892391476921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A018906 (n : ℕ) : ℤ :=
  A018906.P6515240892391476921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A018906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019303.P15300834761509555571

`C(n+4, 2)%(n+5)`
-/

namespace A019303.P15300834761509555571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 2 % (n + 5)

end

end A019303.P15300834761509555571

noncomputable section

/-- A019303: "Pascal sweep" for k=2: draw a horizontal line through the 1 at C(k,0) in Pascal's triangle; rotate this line and record the sum of the numbers on it (excluding the initial 1).

Offset 0, canonical program `A019303.P15300834761509555571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019303 (n : ℕ) : ℤ :=
  (A019303.P15300834761509555571.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019429.P12652784916289792369

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=1, a(3)=16, a(4)=1, a(5)=28`
-/

namespace A019429.P12652784916289792369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 1, 16, 1, 28] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A019429.P12652784916289792369

noncomputable section

/-- A019429: Continued fraction for tan(1/6).

Offset 0, canonical program `A019429.P12652784916289792369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019429 (n : ℕ) : ℤ :=
  A019429.P12652784916289792369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A019429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019442.P12147317439732704482

`4+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A019442.P12147317439732704482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  4 + a (n - 1)

end

end A019442.P12147317439732704482

noncomputable section

/-- A019442: Numbers m such that a Hadamard matrix of order m exists.

Offset 1, canonical program `A019442.P12147317439732704482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1375 terms. -/
def A019442 (n : ℕ) : ℤ :=
  (A019442.P12147317439732704482.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1375 terms. -/
def A019442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A019480.P4133787470310948398

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=4, a(1)=12`
-/

namespace A019480.P4133787470310948398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 12] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A019480.P4133787470310948398

noncomputable section

/-- A019480: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(4,12) (agrees with A019481 for n <= 19 only).

Offset 0, canonical program `A019480.P4133787470310948398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A019480 (n : ℕ) : ℤ :=
  A019480.P4133787470310948398.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. -/
def A019480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020500.P15745458112770955771

`ceil(2*n/∏{p}[n+1, 2*n/#])`
-/

namespace A020500.P15745458112770955771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (2 * n : ℚ) / (p : ℚ))⌉

end

end A020500.P15745458112770955771

noncomputable section

/-- A020500: Cyclotomic polynomials at x=1.

Offset 1, canonical program `A020500.P15745458112770955771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020500 (n : ℕ) : ℤ :=
  A020500.P15745458112770955771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020696.P15823058257336063861

`∏{d}[n+1, #+1]`
-/

namespace A020696.P15823058257336063861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d + 1)

end

end A020696.P15823058257336063861

noncomputable section

/-- A020696: Let a,b,c,...k be all divisors of n; a(n) = (a+1)*(b+1)*...*(k+1).

Offset 1, canonical program `A020696.P15823058257336063861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A020696 (n : ℕ) : ℤ :=
  (A020696.P15823058257336063861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A020696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020773.P8881837254021640327

`a(n-1)` with `a(0)=2, a(1)=5, a(2)=0`
-/

namespace A020773.P8881837254021640327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 0] fun n a =>
  a (n - 1)

end

end A020773.P8881837254021640327

noncomputable section

/-- A020773: Decimal expansion of 1/4.

Offset 0, canonical program `A020773.P8881837254021640327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020773 (n : ℕ) : ℤ :=
  (A020773.P8881837254021640327.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020793.P1289407373664449665

`a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A020793.P1289407373664449665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1)

end

end A020793.P1289407373664449665

noncomputable section

/-- A020793: Decimal expansion of 1/6.

Offset 0, canonical program `A020793.P1289407373664449665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020793 (n : ℕ) : ℤ :=
  (A020793.P1289407373664449665.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020797.P16005906146471643519

`floor(5*10^((2*n-1)/2))%10`
-/

namespace A020797.P16005906146471643519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊5 * (10 : ℝ) ^ (((2 * n : ℤ) - 1 : ℚ) / 2 : ℝ)⌋ 10

end

end A020797.P16005906146471643519

noncomputable section

/-- A020797: Decimal expansion of 1/sqrt(40).

Offset 0, canonical program `A020797.P16005906146471643519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A020797 (n : ℕ) : ℤ :=
  A020797.P16005906146471643519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A020797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020821.P16925240992492937399

`floor(sqrt(C(7, n²)))`
-/

namespace A020821.P16925240992492937399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose 7 (n ^ 2))

end

end A020821.P16925240992492937399

noncomputable section

/-- A020821: Decimal expansion of 1/8.

Offset 0, canonical program `A020821.P16925240992492937399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020821 (n : ℕ) : ℤ :=
  (A020821.P16925240992492937399.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020875.P6811453810729654905

`n*(n%2+n²+2)`
-/

namespace A020875.P6811453810729654905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + (n ^ 2 + 2))

end

end A020875.P6811453810729654905

noncomputable section

/-- A020875: Number of (undirected) Hamiltonian paths in n-Moebius ladder.

Offset 0, canonical program `A020875.P6811453810729654905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020875 (n : ℕ) : ℤ :=
  (A020875.P6811453810729654905.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020923.P12376248417018319819

`(4-26/n)*a(n-1)` with `a(0)=1`
-/

namespace A020923.P12376248417018319819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 26 / (n : ℚ)) * a (n - 1)

end

end A020923.P12376248417018319819

noncomputable section

/-- A020923: Expansion of (1-4*x)^(11/2).

Offset 0, canonical program `A020923.P12376248417018319819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A020923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020923.P12376248417018319819.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A020923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020925.P8413535355589779

`(4-30/n)*a(n-1)` with `a(0)=1`
-/

namespace A020925.P8413535355589779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 30 / (n : ℚ)) * a (n - 1)

end

end A020925.P8413535355589779

noncomputable section

/-- A020925: Expansion of (1-4*x)^(13/2).

Offset 0, canonical program `A020925.P8413535355589779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A020925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020925.P8413535355589779.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. -/
def A020925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020926.P16269317380990740630

`(26/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A020926.P16269317380990740630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (26 / (n : ℚ) + 4) * a (n - 1)

end

end A020926.P16269317380990740630

noncomputable section

/-- A020926: Expansion of 1/(1-4*x)^(15/2).

Offset 0, canonical program `A020926.P16269317380990740630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A020926 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020926.P16269317380990740630.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. -/
def A020926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020927.P6604622262232855987

`(4-34/n)*a(n-1)` with `a(0)=1`
-/

namespace A020927.P6604622262232855987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 34 / (n : ℚ)) * a (n - 1)

end

end A020927.P6604622262232855987

noncomputable section

/-- A020927: Expansion of (1-4*x)^(15/2).

Offset 0, canonical program `A020927.P6604622262232855987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A020927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020927.P6604622262232855987.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A020927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020928.P11215664309314958996

`(30/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A020928.P11215664309314958996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (30 / (n : ℚ) + 4) * a (n - 1)

end

end A020928.P11215664309314958996

noncomputable section

/-- A020928: Expansion of 1/(1-4*x)^(17/2).

Offset 0, canonical program `A020928.P11215664309314958996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A020928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020928.P11215664309314958996.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A020928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020929.P2526001245165409966

`(4-38/n)*a(n-1)` with `a(0)=1`
-/

namespace A020929.P2526001245165409966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 38 / (n : ℚ)) * a (n - 1)

end

end A020929.P2526001245165409966

noncomputable section

/-- A020929: Expansion of (1-4*x)^(17/2).

Offset 0, canonical program `A020929.P2526001245165409966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A020929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020929.P2526001245165409966.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A020929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020930.P13865184887462671172

`(34/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A020930.P13865184887462671172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (34 / (n : ℚ) + 4) * a (n - 1)

end

end A020930.P13865184887462671172

noncomputable section

/-- A020930: Expansion of 1/(1-4*x)^(19/2).

Offset 0, canonical program `A020930.P13865184887462671172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A020930 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020930.P13865184887462671172.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A020930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020931.P5574804769209732476

`(4-42/n)*a(n-1)` with `a(0)=1`
-/

namespace A020931.P5574804769209732476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 42 / (n : ℚ)) * a (n - 1)

end

end A020931.P5574804769209732476

noncomputable section

/-- A020931: Expansion of (1-4*x)^(19/2).

Offset 0, canonical program `A020931.P5574804769209732476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A020931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020931.P5574804769209732476.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A020931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020932.P5554162202545265773

`(38/n+4)*a(n-1)` with `a(0)=1`
-/

namespace A020932.P5554162202545265773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (38 / (n : ℚ) + 4) * a (n - 1)

end

end A020932.P5554162202545265773

noncomputable section

/-- A020932: Expansion of 1/(1-4*x)^(21/2).

Offset 0, canonical program `A020932.P5554162202545265773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A020932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020932.P5554162202545265773.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A020932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020933.P15604795091470624970

`(4-46/n)*a(n-1)` with `a(0)=1`
-/

namespace A020933.P15604795091470624970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 46 / (n : ℚ)) * a (n - 1)

end

end A020933.P15604795091470624970

noncomputable section

/-- A020933: Expansion of (1-4*x)^(21/2).

Offset 0, canonical program `A020933.P15604795091470624970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A020933 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A020933.P15604795091470624970.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A020933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020956.P15142036618506747671

`2*a(n-2)+a(n-3)+n` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A020956.P15142036618506747671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 2) + (a (n - 3) + n)

end

end A020956.P15142036618506747671

noncomputable section

/-- A020956: a(n) = Sum_{k>=1} floor(tau^(n-k)) where tau is A001622.

Offset 1, canonical program `A020956.P15142036618506747671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A020956 (n : ℕ) : ℤ :=
  (A020956.P15142036618506747671.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A020956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020962.P14053905570023298632

`∑[a(n-2)+2*(a(n-1)+n%2)]` with `a(0)=1, a(1)=2`
-/

namespace A020962.P14053905570023298632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 2 * (f1 (n - 1) + n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A020962.P14053905570023298632

noncomputable section

/-- A020962: a(n) = Sum_{k >= 1} floor((1+sqrt(2))^(n-k)).

Offset 1, canonical program `A020962.P14053905570023298632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A020962 (n : ℕ) : ℤ :=
  (A020962.P14053905570023298632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A020962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020963.P3142967862053503800

`3*a(n-1)-4*a(n-3)+a(n-4)+a(n-5)` with `a(0)=2, a(1)=6, a(2)=17, a(3)=45, a(4)=112`
-/

namespace A020963.P3142967862053503800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 17, 45, 112] fun n a =>
  3 * a (n - 1) - 4 * a (n - 3) + a (n - 4) + a (n - 5)

end

end A020963.P3142967862053503800

noncomputable section

/-- A020963: a(n) = Sum_{k>=1} floor( 2*(1+sqrt(2))^(n-k) ).

Offset 1, canonical program `A020963.P3142967862053503800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A020963 (n : ℕ) : ℤ :=
  A020963.P3142967862053503800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A020963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021013.P11389734019976648562

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=7, a(1)=11`
-/

namespace A021013.P11389734019976648562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 11] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A021013.P11389734019976648562

noncomputable section

/-- A021013: Pisot sequence P(7,11), a(0)=7, a(1)=11, a(n+1) is the nearest integer to a(n)^2/a(n-1). Agrees with A021014 only for n <= 20.

Offset 0, canonical program `A021013.P11389734019976648562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A021013 (n : ℕ) : ℤ :=
  A021013.P11389734019976648562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A021013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021016.P97965853866761326

`a(n-1)` with `a(0)=0, a(1)=8, a(2)=3`
-/

namespace A021016.P97965853866761326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 3] fun n a =>
  a (n - 1)

end

end A021016.P97965853866761326

noncomputable section

/-- A021016: Decimal expansion of 1/12.

Offset 0, canonical program `A021016.P97965853866761326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021016 (n : ℕ) : ℤ :=
  (A021016.P97965853866761326.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021018.P3008986107291953147

`9-a(n-3)` with `a(0)=0, a(1)=7, a(2)=1, a(3)=4`
-/

namespace A021018.P3008986107291953147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 1, 4] fun n a =>
  9 - a (n - 3)

end

end A021018.P3008986107291953147

noncomputable section

/-- A021018: Decimal expansion of 1/14.

Offset 0, canonical program `A021018.P3008986107291953147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021018 (n : ℕ) : ℤ :=
  A021018.P3008986107291953147.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021019.P1070054410786946558

`a(n-1)` with `a(0)=0, a(1)=6`
-/

namespace A021019.P1070054410786946558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 1)

end

end A021019.P1070054410786946558

noncomputable section

/-- A021019: Decimal expansion of 1/15.

Offset 0, canonical program `A021019.P1070054410786946558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021019 (n : ℕ) : ℤ :=
  (A021019.P1070054410786946558.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021020.P12252457874779832035

`a(n-1)` with `a(0)=0, a(1)=6, a(2)=2, a(3)=5, a(4)=0`
-/

namespace A021020.P12252457874779832035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 2, 5, 0] fun n a =>
  a (n - 1)

end

end A021020.P12252457874779832035

noncomputable section

/-- A021020: Decimal expansion of 1/16.

Offset 0, canonical program `A021020.P12252457874779832035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021020 (n : ℕ) : ℤ :=
  (A021020.P12252457874779832035.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021022.P1666065805149858434

`a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A021022.P1666065805149858434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1)

end

end A021022.P1666065805149858434

noncomputable section

/-- A021022: Decimal expansion of 1/18.

Offset 0, canonical program `A021022.P1666065805149858434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021022 (n : ℕ) : ℤ :=
  (A021022.P1666065805149858434.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021025.P3670117777676950733

`a(n-6)` with `a(0)=0, a(1)=4, a(2)=7, a(3)=6, a(4)=1, a(5)=9`
-/

namespace A021025.P3670117777676950733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 7, 6, 1, 9] fun n a =>
  a (n - 6)

end

end A021025.P3670117777676950733

noncomputable section

/-- A021025: Decimal expansion of 1/21.

Offset 0, canonical program `A021025.P3670117777676950733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021025 (n : ℕ) : ℤ :=
  (A021025.P3670117777676950733.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021026.P16948679890269064134

`∑{d}[n, C(2, #)²]`
-/

namespace A021026.P16948679890269064134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 d ^ 2

end

end A021026.P16948679890269064134

noncomputable section

/-- A021026: Decimal expansion of 1/22.

Offset 0, canonical program `A021026.P16948679890269064134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021026 (n : ℕ) : ℤ :=
  (A021026.P16948679890269064134.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021028.P13998734493025240515

`a(n-1)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=6`
-/

namespace A021028.P13998734493025240515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 1, 6] fun n a =>
  a (n - 1)

end

end A021028.P13998734493025240515

noncomputable section

/-- A021028: Decimal expansion of 1/24.

Offset 0, canonical program `A021028.P13998734493025240515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021028 (n : ℕ) : ℤ :=
  (A021028.P13998734493025240515.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021032.P4787089392551912596

`9-a(n-3)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=7, a(4)=1`
-/

namespace A021032.P4787089392551912596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 5, 7, 1] fun n a =>
  9 - a (n - 3)

end

end A021032.P4787089392551912596

noncomputable section

/-- A021032: Decimal expansion of 1/28.

Offset 0, canonical program `A021032.P4787089392551912596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021032 (n : ℕ) : ℤ :=
  A021032.P4787089392551912596.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021036.P5287061063626496464

`a(n-1)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=2, a(4)=5, a(5)=0`
-/

namespace A021036.P5287061063626496464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 1, 2, 5, 0] fun n a =>
  a (n - 1)

end

end A021036.P5287061063626496464

noncomputable section

/-- A021036: Decimal expansion of 1/32.

Offset 0, canonical program `A021036.P5287061063626496464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021036 (n : ℕ) : ℤ :=
  (A021036.P5287061063626496464.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021039.P2212609656056785355

`9-a(n-3)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=5`
-/

namespace A021039.P2212609656056785355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 8, 5] fun n a =>
  9 - a (n - 3)

end

end A021039.P2212609656056785355

noncomputable section

/-- A021039: Decimal expansion of 1/35.

Offset 0, canonical program `A021039.P2212609656056785355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021039 (n : ℕ) : ℤ :=
  A021039.P2212609656056785355.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021040.P16989914128435200572

`a(n-1)` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A021040.P16989914128435200572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 7] fun n a =>
  a (n - 1)

end

end A021040.P16989914128435200572

noncomputable section

/-- A021040: Decimal expansion of 1/36.

Offset 0, canonical program `A021040.P16989914128435200572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021040 (n : ℕ) : ℤ :=
  (A021040.P16989914128435200572.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021041.P12716650151524440550

`a(n-3)` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A021041.P12716650151524440550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 7] fun n a =>
  a (n - 3)

end

end A021041.P12716650151524440550

noncomputable section

/-- A021041: Decimal expansion of 1/37.

Offset 0, canonical program `A021041.P12716650151524440550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021041 (n : ℕ) : ℤ :=
  (A021041.P12716650151524440550.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021043.P540713205650573083

`6-a(n-3)` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A021043.P540713205650573083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n a =>
  6 - a (n - 3)

end

end A021043.P540713205650573083

noncomputable section

/-- A021043: Decimal expansion of 1/39.

Offset 0, canonical program `A021043.P540713205650573083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021043 (n : ℕ) : ℤ :=
  A021043.P540713205650573083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021045.P8441935852958928174

`a(n-5)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=3, a(4)=9`
-/

namespace A021045.P8441935852958928174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 3, 9] fun n a =>
  a (n - 5)

end

end A021045.P8441935852958928174

noncomputable section

/-- A021045: Decimal expansion of 1/41.

Offset 0, canonical program `A021045.P8441935852958928174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021045 (n : ℕ) : ℤ :=
  (A021045.P8441935852958928174.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021052.P590694552932427652

`a(n-1)` with `a(0)=0, a(1)=2, a(2)=0, a(3)=8, a(4)=3`
-/

namespace A021052.P590694552932427652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0, 8, 3] fun n a =>
  a (n - 1)

end

end A021052.P590694552932427652

noncomputable section

/-- A021052: Decimal expansion of 1/48.

Offset 0, canonical program `A021052.P590694552932427652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021052 (n : ℕ) : ℤ :=
  (A021052.P590694552932427652.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021056.P6384403451896264051

`9-a(n-3)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=2, a(4)=3`
-/

namespace A021056.P6384403451896264051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 9, 2, 3] fun n a =>
  9 - a (n - 3)

end

end A021056.P6384403451896264051

noncomputable section

/-- A021056: Decimal expansion of 1/52.

Offset 0, canonical program `A021056.P6384403451896264051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021056 (n : ℕ) : ℤ :=
  A021056.P6384403451896264051.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021058.P6681926142359365723

`a(n-3)` with `a(0)=0, a(1)=1, a(2)=8, a(3)=5`
-/

namespace A021058.P6681926142359365723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8, 5] fun n a =>
  a (n - 3)

end

end A021058.P6681926142359365723

noncomputable section

/-- A021058: Decimal expansion of 1/54.

Offset 0, canonical program `A021058.P6681926142359365723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021058 (n : ℕ) : ℤ :=
  (A021058.P6681926142359365723.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021059.P18208627452551257228

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A021059.P18208627452551257228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 8] fun n a =>
  a (n - 2)

end

end A021059.P18208627452551257228

noncomputable section

/-- A021059: Decimal expansion of 1/55.

Offset 0, canonical program `A021059.P18208627452551257228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021059 (n : ℕ) : ℤ :=
  (A021059.P18208627452551257228.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021060.P10360388723007547266

`9-a(n-3)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=8, a(4)=5, a(5)=7`
-/

namespace A021060.P10360388723007547266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7, 8, 5, 7] fun n a =>
  9 - a (n - 3)

end

end A021060.P10360388723007547266

noncomputable section

/-- A021060: Decimal expansion of 1/56.

Offset 0, canonical program `A021060.P10360388723007547266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021060 (n : ℕ) : ℤ :=
  A021060.P10360388723007547266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021068.P1258756413652626306

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=6, a(4)=2, a(5)=5, a(6)=0`
-/

namespace A021068.P1258756413652626306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 6, 2, 5, 0] fun n a =>
  a (n - 1)

end

end A021068.P1258756413652626306

noncomputable section

/-- A021068: Decimal expansion of 1/64.

Offset 0, canonical program `A021068.P1258756413652626306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021068 (n : ℕ) : ℤ :=
  (A021068.P1258756413652626306.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021069.P6056640706939907002

`9-a(n-3)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=3`
-/

namespace A021069.P6056640706939907002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5, 3] fun n a =>
  9 - a (n - 3)

end

end A021069.P6056640706939907002

noncomputable section

/-- A021069: Decimal expansion of 1/65.

Offset 0, canonical program `A021069.P6056640706939907002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021069 (n : ℕ) : ℤ :=
  A021069.P6056640706939907002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021070.P5480795898501616420

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A021070.P5480795898501616420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  a (n - 2)

end

end A021070.P5480795898501616420

noncomputable section

/-- A021070: Decimal expansion of 1/66.

Offset 0, canonical program `A021070.P5480795898501616420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021070 (n : ℕ) : ℤ :=
  (A021070.P5480795898501616420.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021077.P16212708078562480926

`9-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A021077.P16212708078562480926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6] fun n a =>
  9 - a (n - 4)

end

end A021077.P16212708078562480926

noncomputable section

/-- A021077: Decimal expansion of 1/73.

Offset 0, canonical program `A021077.P16212708078562480926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021077 (n : ℕ) : ℤ :=
  A021077.P16212708078562480926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021078.P9525352843083301166

`a(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A021078.P9525352843083301166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  a (n - 3)

end

end A021078.P9525352843083301166

noncomputable section

/-- A021078: Decimal expansion of 1/74.

Offset 0, canonical program `A021078.P9525352843083301166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021078 (n : ℕ) : ℤ :=
  (A021078.P9525352843083301166.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021082.P18026910648949179078

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=8, a(4)=2`
-/

namespace A021082.P18026910648949179078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 8, 2] fun n a =>
  9 - (a (n - 2) + a (n - 4))

end

end A021082.P18026910648949179078

noncomputable section

/-- A021082: Decimal expansion of 1/78.

Offset 0, canonical program `A021082.P18026910648949179078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021082 (n : ℕ) : ℤ :=
  A021082.P18026910648949179078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021086.P7206642247580925711

`a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1, a(4)=9, a(5)=5`
-/

namespace A021086.P7206642247580925711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 1, 9, 5] fun n a =>
  a (n - 5)

end

end A021086.P7206642247580925711

noncomputable section

/-- A021086: Decimal expansion of 1/82.

Offset 0, canonical program `A021086.P7206642247580925711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021086 (n : ℕ) : ℤ :=
  (A021086.P7206642247580925711.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021095.P12406577533088204463

`9-a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A021095.P12406577533088204463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  9 - a (n - 3)

end

end A021095.P12406577533088204463

noncomputable section

/-- A021095: Decimal expansion of 1/91.

Offset 0, canonical program `A021095.P12406577533088204463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021095 (n : ℕ) : ℤ :=
  A021095.P12406577533088204463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021100.P15508648509027999851

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4, a(4)=1, a(5)=6`
-/

namespace A021100.P15508648509027999851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 4, 1, 6] fun n a =>
  a (n - 1)

end

end A021100.P15508648509027999851

noncomputable section

/-- A021100: Decimal expansion of 1/96.

Offset 0, canonical program `A021100.P15508648509027999851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021100 (n : ℕ) : ℤ :=
  (A021100.P15508648509027999851.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021108.P10794516118075837223

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=6, a(4)=1, a(5)=5`
-/

namespace A021108.P10794516118075837223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 9, 6, 1, 5] fun n a =>
  9 - a (n - 3)

end

end A021108.P10794516118075837223

noncomputable section

/-- A021108: Decimal expansion of 1/104.

Offset 0, canonical program `A021108.P10794516118075837223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021108 (n : ℕ) : ℤ :=
  A021108.P10794516118075837223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021112.P582862242207834524

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=2, a(4)=5`
-/

namespace A021112.P582862242207834524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 9, 2, 5] fun n a =>
  a (n - 3)

end

end A021112.P582862242207834524

noncomputable section

/-- A021112: Decimal expansion of 1/108.

Offset 0, canonical program `A021112.P582862242207834524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021112 (n : ℕ) : ℤ :=
  (A021112.P582862242207834524.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021116.P13328393724985619072

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=9, a(4)=2, a(5)=8, a(6)=5`
-/

namespace A021116.P13328393724985619072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 8, 9, 2, 8, 5] fun n a =>
  9 - a (n - 3)

end

end A021116.P13328393724985619072

noncomputable section

/-- A021116: Decimal expansion of 1/112.

Offset 0, canonical program `A021116.P13328393724985619072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021116 (n : ℕ) : ℤ :=
  A021116.P13328393724985619072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021121.P4719174221967181459

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=5, a(4)=4, a(5)=7`
-/

namespace A021121.P4719174221967181459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 8, 5, 4, 7] fun n a =>
  a (n - 6)

end

end A021121.P4719174221967181459

noncomputable section

/-- A021121: Decimal expansion of 1/117.

Offset 0, canonical program `A021121.P4719174221967181459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021121 (n : ℕ) : ℤ :=
  (A021121.P4719174221967181459.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021127.P11865276718559429158

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=8, a(3)=1, a(4)=3`
-/

namespace A021127.P11865276718559429158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 8, 1, 3] fun n a =>
  a (n - 5)

end

end A021127.P11865276718559429158

noncomputable section

/-- A021127: Decimal expansion of 1/123.

Offset 0, canonical program `A021127.P11865276718559429158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021127 (n : ℕ) : ℤ :=
  (A021127.P11865276718559429158.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021130.P6240863585808759865

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=9, a(4)=3, a(5)=6, a(6)=5`
-/

namespace A021130.P6240863585808759865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 7, 9, 3, 6, 5] fun n a =>
  a (n - 6)

end

end A021130.P6240863585808759865

noncomputable section

/-- A021130: Decimal expansion of 1/126.

Offset 0, canonical program `A021130.P6240863585808759865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021130 (n : ℕ) : ℤ :=
  (A021130.P6240863585808759865.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021132.P12200072428819835598

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=8, a(4)=1, a(5)=2, a(6)=5, a(7)=0`
-/

namespace A021132.P12200072428819835598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 7, 8, 1, 2, 5, 0] fun n a =>
  a (n - 1)

end

end A021132.P12200072428819835598

noncomputable section

/-- A021132: Decimal expansion of 1/128.

Offset 0, canonical program `A021132.P12200072428819835598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021132 (n : ℕ) : ℤ :=
  (A021132.P12200072428819835598.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021136.P3665565447764531220

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=5`
-/

namespace A021136.P3665565447764531220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 7, 5] fun n a =>
  a (n - 2)

end

end A021136.P3665565447764531220

noncomputable section

/-- A021136: Decimal expansion of 1/132.

Offset 0, canonical program `A021136.P3665565447764531220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021136 (n : ℕ) : ℤ :=
  (A021136.P3665565447764531220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021139.P5039972236594992909

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=4`
-/

namespace A021139.P5039972236594992909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 7, 4] fun n a =>
  a (n - 3)

end

end A021139.P5039972236594992909

noncomputable section

/-- A021139: Decimal expansion of 1/135.

Offset 0, canonical program `A021139.P5039972236594992909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021139 (n : ℕ) : ℤ :=
  (A021139.P5039972236594992909.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021141.P14541736035329085119

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=7, a(3)=2`
-/

namespace A021141.P14541736035329085119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 7, 2] fun n a =>
  9 - a (n - 4)

end

end A021141.P14541736035329085119

noncomputable section

/-- A021141: Decimal expansion of 1/137.

Offset 0, canonical program `A021141.P14541736035329085119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021141 (n : ℕ) : ℤ :=
  A021141.P14541736035329085119.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021148.P3141854408169131582

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=9, a(4)=4`
-/

namespace A021148.P3141854408169131582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6, 9, 4] fun n a =>
  a (n - 1)

end

end A021148.P3141854408169131582

noncomputable section

/-- A021148: Decimal expansion of 1/144.

Offset 0, canonical program `A021148.P3141854408169131582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021148 (n : ℕ) : ℤ :=
  (A021148.P3141854408169131582.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021152.P17301726918520401182

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=7, a(4)=5`
-/

namespace A021152.P17301726918520401182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6, 7, 5] fun n a =>
  a (n - 3)

end

end A021152.P17301726918520401182

noncomputable section

/-- A021152: Decimal expansion of 1/148.

Offset 0, canonical program `A021152.P17301726918520401182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021152 (n : ℕ) : ℤ :=
  (A021152.P17301726918520401182.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021158.P14009844925172660601

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=4`
-/

namespace A021158.P14009844925172660601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 6, 4] fun n a =>
  9 - a (n - 3)

end

end A021158.P14009844925172660601

noncomputable section

/-- A021158: Decimal expansion of 1/154.

Offset 0, canonical program `A021158.P14009844925172660601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021158 (n : ℕ) : ℤ :=
  A021158.P14009844925172660601.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021168.P11682449875899542808

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=0, a(4)=9, a(5)=7, a(6)=5`
-/

namespace A021168.P11682449875899542808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6, 0, 9, 7, 5] fun n a =>
  a (n - 5)

end

end A021168.P11682449875899542808

noncomputable section

/-- A021168: Decimal expansion of 1/164.

Offset 0, canonical program `A021168.P11682449875899542808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021168 (n : ℕ) : ℤ :=
  (A021168.P11682449875899542808.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021169.P13778284461279284757

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=6`
-/

namespace A021169.P13778284461279284757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6] fun n a =>
  a (n - 2)

end

end A021169.P13778284461279284757

noncomputable section

/-- A021169: Decimal expansion of 1/165.

Offset 0, canonical program `A021169.P13778284461279284757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021169 (n : ℕ) : ℤ :=
  (A021169.P13778284461279284757.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021180.P15208185130561396968

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=6, a(4)=8, a(5)=1`
-/

namespace A021180.P15208185130561396968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5, 6, 8, 1] fun n a =>
  a (n - 2)

end

end A021180.P15208185130561396968

noncomputable section

/-- A021180: Decimal expansion of 1/176.

Offset 0, canonical program `A021180.P15208185130561396968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021180 (n : ℕ) : ℤ :=
  (A021180.P15208185130561396968.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021186.P7973352669346027

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=4`
-/

namespace A021186.P7973352669346027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5, 4] fun n a =>
  9 - a (n - 3)

end

end A021186.P7973352669346027

noncomputable section

/-- A021186: Decimal expansion of 1/182.

Offset 0, canonical program `A021186.P7973352669346027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021186 (n : ℕ) : ℤ :=
  A021186.P7973352669346027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021189.P12990513210301284531

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=4`
-/

namespace A021189.P12990513210301284531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5, 4] fun n a =>
  a (n - 3)

end

end A021189.P12990513210301284531

noncomputable section

/-- A021189: Decimal expansion of 1/185.

Offset 0, canonical program `A021189.P12990513210301284531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021189 (n : ℕ) : ℤ :=
  (A021189.P12990513210301284531.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021193.P522082127870387411

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=2, a(4)=9, a(5)=1`
-/

namespace A021193.P522082127870387411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5, 2, 9, 1] fun n a =>
  a (n - 6)

end

end A021193.P522082127870387411

noncomputable section

/-- A021193: Decimal expansion of 1/189.

Offset 0, canonical program `A021193.P522082127870387411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021193 (n : ℕ) : ℤ :=
  (A021193.P522082127870387411.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021196.P830391857349579451

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=2, a(4)=0, a(5)=8, a(6)=3`
-/

namespace A021196.P830391857349579451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5, 2, 0, 8, 3] fun n a =>
  a (n - 1)

end

end A021196.P830391857349579451

noncomputable section

/-- A021196: Decimal expansion of 1/192.

Offset 0, canonical program `A021196.P830391857349579451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021196 (n : ℕ) : ℤ :=
  (A021196.P830391857349579451.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021199.P10756791010868104540

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=5, a(3)=1, a(4)=2`
-/

namespace A021199.P10756791010868104540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5, 1, 2] fun n a =>
  9 - (a (n - 2) + a (n - 4))

end

end A021199.P10756791010868104540

noncomputable section

/-- A021199: Decimal expansion of 1/195.

Offset 0, canonical program `A021199.P10756791010868104540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021199 (n : ℕ) : ℤ :=
  A021199.P10756791010868104540.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021206.P8821313853681412204

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=9, a(4)=5`
-/

namespace A021206.P8821313853681412204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4, 9, 5] fun n a =>
  a (n - 4)

end

end A021206.P8821313853681412204

noncomputable section

/-- A021206: Decimal expansion of 1/202.

Offset 0, canonical program `A021206.P8821313853681412204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021206 (n : ℕ) : ℤ :=
  (A021206.P8821313853681412204.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021209.P8978965685577933964

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=8, a(4)=7, a(5)=8`
-/

namespace A021209.P8978965685577933964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4, 8, 7, 8] fun n a =>
  a (n - 5)

end

end A021209.P8978965685577933964

noncomputable section

/-- A021209: Decimal expansion of 1/205.

Offset 0, canonical program `A021209.P8978965685577933964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021209 (n : ℕ) : ℤ :=
  (A021209.P8978965685577933964.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021212.P13284253031566712027

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=8, a(4)=0, a(5)=7, a(6)=6`
-/

namespace A021212.P13284253031566712027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4, 8, 0, 7, 6] fun n a =>
  9 - a (n - 3)

end

end A021212.P13284253031566712027

noncomputable section

/-- A021212: Decimal expansion of 1/208.

Offset 0, canonical program `A021212.P13284253031566712027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021212 (n : ℕ) : ℤ :=
  A021212.P13284253031566712027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021220.P14186456312612816662

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=6, a(4)=2, a(5)=9`
-/

namespace A021220.P14186456312612816662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4, 6, 2, 9] fun n a =>
  a (n - 3)

end

end A021220.P14186456312612816662

noncomputable section

/-- A021220: Decimal expansion of 1/216.

Offset 0, canonical program `A021220.P14186456312612816662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021220 (n : ℕ) : ℤ :=
  (A021220.P14186456312612816662.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021223.P10492951438531805924

`6-a(n-4)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=5`
-/

namespace A021223.P10492951438531805924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4, 5] fun n a =>
  6 - a (n - 4)

end

end A021223.P10492951438531805924

noncomputable section

/-- A021223: Decimal expansion of 1/219.

Offset 0, canonical program `A021223.P10492951438531805924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021223 (n : ℕ) : ℤ :=
  A021223.P10492951438531805924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021226.P4698695677424960277

`floor(dr(n^3)/ϕ)`
-/

namespace A021226.P4698695677424960277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.digitalRoot (n ^ 3 : ℤ) : ℝ) / Real.goldenRatio⌋

end

end A021226.P4698695677424960277

noncomputable section

/-- A021226: Decimal expansion of 1/222.

Offset 0, canonical program `A021226.P4698695677424960277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021226 (n : ℕ) : ℤ :=
  A021226.P4698695677424960277.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021235.P7070959272675345141

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=3, a(4)=2, a(5)=9`
-/

namespace A021235.P7070959272675345141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4, 3, 2, 9] fun n a =>
  a (n - 6)

end

end A021235.P7070959272675345141

noncomputable section

/-- A021235: Decimal expansion of 1/231.

Offset 0, canonical program `A021235.P7070959272675345141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021235 (n : ℕ) : ℤ :=
  (A021235.P7070959272675345141.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021238.P15571844163201125529

`7-a(n-3)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=2`
-/

namespace A021238.P15571844163201125529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4, 2] fun n a =>
  7 - a (n - 3)

end

end A021238.P15571844163201125529

noncomputable section

/-- A021238: Decimal expansion of 1/234.

Offset 0, canonical program `A021238.P15571844163201125529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021238 (n : ℕ) : ℤ :=
  A021238.P15571844163201125529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021243.P5332679809730404171

`a(n-7)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=1, a(4)=8, a(5)=4, a(6)=1`
-/

namespace A021243.P5332679809730404171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4, 1, 8, 4, 1] fun n a =>
  a (n - 7)

end

end A021243.P5332679809730404171

noncomputable section

/-- A021243: Decimal expansion of 1/239.

Offset 0, canonical program `A021243.P5332679809730404171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021243 (n : ℕ) : ℤ :=
  (A021243.P5332679809730404171.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021250.P17973929838284874588

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=0, a(4)=6, a(5)=5`
-/

namespace A021250.P17973929838284874588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4, 0, 6, 5] fun n a =>
  a (n - 5)

end

end A021250.P17973929838284874588

noncomputable section

/-- A021250: Decimal expansion of 1/246.

Offset 0, canonical program `A021250.P17973929838284874588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021250 (n : ℕ) : ℤ :=
  (A021250.P17973929838284874588.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021263.P11236674023048408060

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=8, a(4)=6, a(5)=1`
-/

namespace A021263.P11236674023048408060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 8, 6, 1] fun n a =>
  a (n - 6)

end

end A021263.P11236674023048408060

noncomputable section

/-- A021263: Decimal expansion of 1/259.

Offset 0, canonical program `A021263.P11236674023048408060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021263 (n : ℕ) : ℤ :=
  (A021263.P11236674023048408060.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021268.P10720709010355044782

`∑[2^n*∑[5^(n+1)-4^(n+1)]]`
-/

namespace A021268.P10720709010355044782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) : ℤ) - (4 ^ (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021268.P10720709010355044782

noncomputable section

/-- A021268: Expansion of 1/((1-x)(1-2x)(1-8x)(1-10x)).

Offset 0, canonical program `A021268.P10720709010355044782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021268 (n : ℕ) : ℤ :=
  A021268.P10720709010355044782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A021268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021275.P14660464025190811463

`3*round(log((n%5)!))`
-/

namespace A021275.P14660464025190811463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (Real.log (Nat.factorial (n % 5) : ℝ))

end

end A021275.P14660464025190811463

noncomputable section

/-- A021275: Decimal expansion of 1/271.

Offset 0, canonical program `A021275.P14660464025190811463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021275 (n : ℕ) : ℤ :=
  A021275.P14660464025190811463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021277.P6406895166936848788

`6-a(n-3)` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A021277.P6406895166936848788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  6 - a (n - 3)

end

end A021277.P6406895166936848788

noncomputable section

/-- A021277: Decimal expansion of 1/273.

Offset 0, canonical program `A021277.P6406895166936848788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021277 (n : ℕ) : ℤ :=
  A021277.P6406895166936848788.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021278.P10937160811863035457

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=6, a(4)=4`
-/

namespace A021278.P10937160811863035457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 6, 4] fun n a =>
  9 - a (n - 4)

end

end A021278.P10937160811863035457

noncomputable section

/-- A021278: Decimal expansion of 1/274.

Offset 0, canonical program `A021278.P10937160811863035457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021278 (n : ℕ) : ℤ :=
  A021278.P10937160811863035457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021290.P12873060722367472338

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4`
-/

namespace A021290.P12873060722367472338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 3, 4] fun n a =>
  9 - a (n - 3)

end

end A021290.P12873060722367472338

noncomputable section

/-- A021290: Decimal expansion of 1/286.

Offset 0, canonical program `A021290.P12873060722367472338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021290 (n : ℕ) : ℤ :=
  A021290.P12873060722367472338.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021292.P12123990556941466293

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4, a(4)=7, a(5)=2`
-/

namespace A021292.P12123990556941466293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 4, 7, 2] fun n a =>
  a (n - 1)

end

end A021292.P12123990556941466293

noncomputable section

/-- A021292: Decimal expansion of 1/288.

Offset 0, canonical program `A021292.P12123990556941466293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021292 (n : ℕ) : ℤ :=
  (A021292.P12123990556941466293.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021300.P16388191353303328427

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=3, a(4)=7, a(5)=8`
-/

namespace A021300.P16388191353303328427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 3, 7, 8] fun n a =>
  a (n - 3)

end

end A021300.P16388191353303328427

noncomputable section

/-- A021300: Decimal expansion of 1/296.

Offset 0, canonical program `A021300.P16388191353303328427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021300 (n : ℕ) : ℤ :=
  (A021300.P16388191353303328427.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021301.P9904923170792516356

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=3, a(4)=6, a(5)=7`
-/

namespace A021301.P9904923170792516356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 3, 6, 7] fun n a =>
  a (n - 6)

end

end A021301.P9904923170792516356

noncomputable section

/-- A021301: Decimal expansion of 1/297.

Offset 0, canonical program `A021301.P9904923170792516356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021301 (n : ℕ) : ℤ :=
  (A021301.P9904923170792516356.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021332.P9912789196886203461

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=0, a(4)=4, a(5)=8, a(6)=7, a(7)=8`
-/

namespace A021332.P9912789196886203461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3, 0, 4, 8, 7, 8] fun n a =>
  a (n - 5)

end

end A021332.P9912789196886203461

noncomputable section

/-- A021332: Decimal expansion of 1/328.

Offset 0, canonical program `A021332.P9912789196886203461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021332 (n : ℕ) : ℤ :=
  (A021332.P9912789196886203461.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021355.P8065996215196989065

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=8, a(4)=4, a(5)=9`
-/

namespace A021355.P8065996215196989065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 8, 4, 9] fun n a =>
  a (n - 6)

end

end A021355.P8065996215196989065

noncomputable section

/-- A021355: Decimal expansion of 1/351.

Offset 0, canonical program `A021355.P8065996215196989065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021355 (n : ℕ) : ℤ :=
  (A021355.P8065996215196989065.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021356.P13931686046001057747

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=8, a(4)=4, a(5)=0, a(6)=9`
-/

namespace A021356.P13931686046001057747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 8, 4, 0, 9] fun n a =>
  a (n - 2)

end

end A021356.P13931686046001057747

noncomputable section

/-- A021356: Decimal expansion of 1/352.

Offset 0, canonical program `A021356.P13931686046001057747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021356 (n : ℕ) : ℤ :=
  (A021356.P13931686046001057747.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021369.P5143674934198486522

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=7, a(4)=3`
-/

namespace A021369.P5143674934198486522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 7, 3] fun n a =>
  9 - a (n - 4)

end

end A021369.P5143674934198486522

noncomputable section

/-- A021369: Decimal expansion of 1/365.

Offset 0, canonical program `A021369.P5143674934198486522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021369 (n : ℕ) : ℤ :=
  A021369.P5143674934198486522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021373.P2741823509569145316

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=7, a(4)=1`
-/

namespace A021373.P2741823509569145316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 7, 1] fun n a =>
  a (n - 5)

end

end A021373.P2741823509569145316

noncomputable section

/-- A021373: Decimal expansion of 1/369.

Offset 0, canonical program `A021373.P2741823509569145316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021373 (n : ℕ) : ℤ :=
  (A021373.P2741823509569145316.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021382.P16065250567674798373

`xor(3, xor(a(n-2), a(n-4)))` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6, a(4)=4`
-/

namespace A021382.P16065250567674798373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 6, 4] fun n a =>
  Nat.xor 3 (Nat.xor (a (n - 2)) (a (n - 4)))

end

end A021382.P16065250567674798373

noncomputable section

/-- A021382: Decimal expansion of 1/378.

Offset 0, canonical program `A021382.P16065250567674798373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021382 (n : ℕ) : ℤ :=
  (A021382.P16065250567674798373.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021388.P2281994502565264326

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=6, a(4)=0, a(5)=4, a(6)=1, a(7)=6`
-/

namespace A021388.P2281994502565264326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 6, 0, 4, 1, 6] fun n a =>
  a (n - 1)

end

end A021388.P2281994502565264326

noncomputable section

/-- A021388: Decimal expansion of 1/384.

Offset 0, canonical program `A021388.P2281994502565264326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021388 (n : ℕ) : ℤ :=
  (A021388.P2281994502565264326.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021389.P6483952865592169804

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5`
-/

namespace A021389.P6483952865592169804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 5] fun n a =>
  9 - a (n - 3)

end

end A021389.P6483952865592169804

noncomputable section

/-- A021389: Decimal expansion of 1/385.

Offset 0, canonical program `A021389.P6483952865592169804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021389 (n : ℕ) : ℤ :=
  A021389.P6483952865592169804.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021400.P901710156926617086

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5`
-/

namespace A021400.P901710156926617086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 5] fun n a =>
  a (n - 2)

end

end A021400.P901710156926617086

noncomputable section

/-- A021400: Decimal expansion of 1/396.

Offset 0, canonical program `A021400.P901710156926617086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021400 (n : ℕ) : ℤ :=
  (A021400.P901710156926617086.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021411.P8544129409873969328

`round(atan(n%6)^6)`
-/

namespace A021411.P8544129409873969328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((n % 6 : ℕ) : ℝ) ^ 6)

end

end A021411.P8544129409873969328

noncomputable section

/-- A021411: Decimal expansion of 1/407.

Offset 0, canonical program `A021411.P8544129409873969328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021411 (n : ℕ) : ℤ :=
  A021411.P8544129409873969328.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021433.P7665663993037603839

`3-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A021433.P7665663993037603839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  3 - a (n - 3)

end

end A021433.P7665663993037603839

noncomputable section

/-- A021433: Decimal expansion of 1/429.

Offset 0, canonical program `A021433.P7665663993037603839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021433 (n : ℕ) : ℤ :=
  A021433.P7665663993037603839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021436.P7372230912301981606

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=3, a(4)=1, a(5)=4, a(6)=8`
-/

namespace A021436.P7372230912301981606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 3, 1, 4, 8] fun n a =>
  a (n - 3)

end

end A021436.P7372230912301981606

noncomputable section

/-- A021436: Decimal expansion of 1/432.

Offset 0, canonical program `A021436.P7372230912301981606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021436 (n : ℕ) : ℤ :=
  (A021436.P7372230912301981606.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021444.P9110247987521309681

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=7`
-/

namespace A021444.P9110247987521309681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2, 7] fun n a =>
  a (n - 2)

end

end A021444.P9110247987521309681

noncomputable section

/-- A021444: Decimal expansion of 1/440.

Offset 0, canonical program `A021444.P9110247987521309681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021444 (n : ℕ) : ℤ :=
  (A021444.P9110247987521309681.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021448.P6157008774988354605

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2, a(4)=5`
-/

namespace A021448.P6157008774988354605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 2, 5] fun n a =>
  a (n - 3)

end

end A021448.P6157008774988354605

noncomputable section

/-- A021448: Decimal expansion of 1/444.

Offset 0, canonical program `A021448.P6157008774988354605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021448 (n : ℕ) : ℤ :=
  (A021448.P6157008774988354605.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021459.P16745886634847154653

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A021459.P16745886634847154653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 1] fun n a =>
  9 - a (n - 3)

end

end A021459.P16745886634847154653

noncomputable section

/-- A021459: Decimal expansion of 1/455.

Offset 0, canonical program `A021459.P16745886634847154653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021459 (n : ℕ) : ℤ :=
  A021459.P16745886634847154653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021472.P8450442023294996895

`8-a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A021472.P8450442023294996895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 1, 3] fun n a =>
  8 - a (n - 3)

end

end A021472.P8450442023294996895

noncomputable section

/-- A021472: Decimal expansion of 1/468.

Offset 0, canonical program `A021472.P8450442023294996895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021472 (n : ℕ) : ℤ :=
  A021472.P8450442023294996895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021499.P13643299144790035592

`Δ[abs(or(1, -n))]`
-/

namespace A021499.P13643299144790035592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A021499.P13643299144790035592

noncomputable section

/-- A021499: Decimal expansion of 1/495.

Offset 0, canonical program `A021499.P13643299144790035592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021499 (n : ℕ) : ℤ :=
  A021499.P13643299144790035592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021522.P15879894980082290998

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=9, a(4)=3`
-/

namespace A021522.P15879894980082290998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 9, 3] fun n a =>
  9 - (a (n - 2) + a (n - 4))

end

end A021522.P15879894980082290998

noncomputable section

/-- A021522: Decimal expansion of 1/518.

Offset 0, canonical program `A021522.P15879894980082290998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021522 (n : ℕ) : ℤ :=
  A021522.P15879894980082290998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021532.P5321586226241264024

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=9, a(5)=3`
-/

namespace A021532.P5321586226241264024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 8, 9, 3] fun n a =>
  a (n - 2)

end

end A021532.P5321586226241264024

noncomputable section

/-- A021532: Decimal expansion of 1/528.

Offset 0, canonical program `A021532.P5321586226241264024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021532 (n : ℕ) : ℤ :=
  (A021532.P5321586226241264024.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021546.P1954180914646062282

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=4, a(5)=5`
-/

namespace A021546.P1954180914646062282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 8, 4, 5] fun n a =>
  a (n - 5)

end

end A021546.P1954180914646062282

noncomputable section

/-- A021546: Decimal expansion of 1/542.

Offset 0, canonical program `A021546.P1954180914646062282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021546 (n : ℕ) : ℤ :=
  (A021546.P1954180914646062282.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021550.P10804237262552388917

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=3`
-/

namespace A021550.P10804237262552388917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 8, 3] fun n a =>
  9 - (a (n - 2) + a (n - 4))

end

end A021550.P10804237262552388917

noncomputable section

/-- A021550: Decimal expansion of 1/546.

Offset 0, canonical program `A021550.P10804237262552388917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021550 (n : ℕ) : ℤ :=
  A021550.P10804237262552388917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021552.P14934066827244817178

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8, a(4)=2, a(5)=4`
-/

namespace A021552.P14934066827244817178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 8, 2, 4] fun n a =>
  9 - a (n - 4)

end

end A021552.P14934066827244817178

noncomputable section

/-- A021552: Decimal expansion of 1/548.

Offset 0, canonical program `A021552.P14934066827244817178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021552 (n : ℕ) : ℤ :=
  A021552.P14934066827244817178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021554.P1844334715335911708

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8`
-/

namespace A021554.P1844334715335911708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 8] fun n a =>
  a (n - 2)

end

end A021554.P1844334715335911708

noncomputable section

/-- A021554: Decimal expansion of 1/550.

Offset 0, canonical program `A021554.P1844334715335911708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021554 (n : ℕ) : ℤ :=
  (A021554.P1844334715335911708.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021559.P16179600716322043672

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8`
-/

namespace A021559.P16179600716322043672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 8] fun n a =>
  a (n - 3)

end

end A021559.P16179600716322043672

noncomputable section

/-- A021559: Decimal expansion of 1/555.

Offset 0, canonical program `A021559.P16179600716322043672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021559 (n : ℕ) : ℤ :=
  (A021559.P16179600716322043672.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021564.P16048443577647333532

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=8, a(5)=5, a(6)=7`
-/

namespace A021564.P16048443577647333532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 7, 8, 5, 7] fun n a =>
  9 - a (n - 3)

end

end A021564.P16048443577647333532

noncomputable section

/-- A021564: Decimal expansion of 1/560.

Offset 0, canonical program `A021564.P16048443577647333532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021564 (n : ℕ) : ℤ :=
  A021564.P16048443577647333532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021580.P9852008360355498670

`a(n-1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=3, a(5)=6, a(6)=1`
-/

namespace A021580.P9852008360355498670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 7, 3, 6, 1] fun n a =>
  a (n - 1)

end

end A021580.P9852008360355498670

noncomputable section

/-- A021580: Decimal expansion of 1/576.

Offset 0, canonical program `A021580.P9852008360355498670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021580 (n : ℕ) : ℤ :=
  (A021580.P9852008360355498670.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021588.P4934249314969819511

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=1, a(5)=2, a(6)=3`
-/

namespace A021588.P4934249314969819511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 7, 1, 2, 3] fun n a =>
  9 - a (n - 4)

end

end A021588.P4934249314969819511

noncomputable section

/-- A021588: Decimal expansion of 1/584.

Offset 0, canonical program `A021588.P4934249314969819511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021588 (n : ℕ) : ℤ :=
  A021588.P4934249314969819511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021589.P2132413165661294793

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=7, a(4)=0, a(5)=9, a(6)=4`
-/

namespace A021589.P2132413165661294793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 7, 0, 9, 4] fun n a =>
  a (n - 6)

end

end A021589.P2132413165661294793

noncomputable section

/-- A021589: Decimal expansion of 1/585.

Offset 0, canonical program `A021589.P2132413165661294793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021589 (n : ℕ) : ℤ :=
  (A021589.P2132413165661294793.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021596.P11309232638612599855

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=8, a(5)=9, a(6)=1`
-/

namespace A021596.P11309232638612599855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 6, 8, 9, 1] fun n a =>
  a (n - 3)

end

end A021596.P11309232638612599855

noncomputable section

/-- A021596: Decimal expansion of 1/592.

Offset 0, canonical program `A021596.P11309232638612599855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021596 (n : ℕ) : ℤ :=
  (A021596.P11309232638612599855.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021598.P13794274377428511475

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=8, a(5)=3, a(6)=5`
-/

namespace A021598.P13794274377428511475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 6, 8, 3, 5] fun n a =>
  a (n - 6)

end

end A021598.P13794274377428511475

noncomputable section

/-- A021598: Decimal expansion of 1/594.

Offset 0, canonical program `A021598.P13794274377428511475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021598 (n : ℕ) : ℤ :=
  (A021598.P13794274377428511475.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021610.P9808131282598409952

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=5`
-/

namespace A021610.P9808131282598409952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 6, 5] fun n a =>
  a (n - 4)

end

end A021610.P9808131282598409952

noncomputable section

/-- A021610: Decimal expansion of 1/606.

Offset 0, canonical program `A021610.P9808131282598409952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021610 (n : ℕ) : ℤ :=
  (A021610.P9808131282598409952.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021619.P7577176846994391713

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=2, a(5)=6`
-/

namespace A021619.P7577176846994391713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 6, 2, 6] fun n a =>
  a (n - 5)

end

end A021619.P7577176846994391713

noncomputable section

/-- A021619: Decimal expansion of 1/615.

Offset 0, canonical program `A021619.P7577176846994391713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021619 (n : ℕ) : ℤ :=
  (A021619.P7577176846994391713.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021620.P16273598319539771470

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=2, a(5)=3`
-/

namespace A021620.P16273598319539771470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 6, 2, 3] fun n a =>
  9 - a (n - 3)

end

end A021620.P16273598319539771470

noncomputable section

/-- A021620: Decimal expansion of 1/616.

Offset 0, canonical program `A021620.P16273598319539771470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021620 (n : ℕ) : ℤ :=
  A021620.P16273598319539771470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021628.P12530158048694254283

`6-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=0, a(5)=2, a(6)=5`
-/

namespace A021628.P12530158048694254283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 6, 0, 2, 5] fun n a =>
  6 - a (n - 3)

end

end A021628.P12530158048694254283

noncomputable section

/-- A021628: Decimal expansion of 1/624.

Offset 0, canonical program `A021628.P12530158048694254283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021628 (n : ℕ) : ℤ :=
  A021628.P12530158048694254283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021654.P7622556472301235842

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=3`
-/

namespace A021654.P7622556472301235842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 5, 3] fun n a =>
  9 - a (n - 3)

end

end A021654.P7622556472301235842

noncomputable section

/-- A021654: Decimal expansion of 1/650.

Offset 0, canonical program `A021654.P7622556472301235842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021654 (n : ℕ) : ℤ :=
  A021654.P7622556472301235842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021660.P18242849919771839376

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5, a(4)=2, a(5)=4, a(6)=3, a(7)=9, a(8)=0`
-/

namespace A021660.P18242849919771839376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 5, 2, 4, 3, 9, 0] fun n a =>
  a (n - 5)

end

end A021660.P18242849919771839376

noncomputable section

/-- A021660: Decimal expansion of 1/656.

Offset 0, canonical program `A021660.P18242849919771839376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021660 (n : ℕ) : ℤ :=
  (A021660.P18242849919771839376.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021670.P9317894339318471636

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A021670.P9317894339318471636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 5] fun n a =>
  a (n - 3)

end

end A021670.P9317894339318471636

noncomputable section

/-- A021670: Decimal expansion of 1/666.

Offset 0, canonical program `A021670.P9317894339318471636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021670 (n : ℕ) : ℤ :=
  (A021670.P9317894339318471636.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021679.P2723175970487203437

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=8`
-/

namespace A021679.P2723175970487203437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 4, 8] fun n a =>
  a (n - 3)

end

end A021679.P2723175970487203437

noncomputable section

/-- A021679: Decimal expansion of 1/675.

Offset 0, canonical program `A021679.P2723175970487203437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021679 (n : ℕ) : ℤ :=
  (A021679.P2723175970487203437.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021689.P8782891051480399692

`9-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=5`
-/

namespace A021689.P8782891051480399692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 4, 5] fun n a =>
  9 - a (n - 4)

end

end A021689.P8782891051480399692

noncomputable section

/-- A021689: Decimal expansion of 1/685.

Offset 0, canonical program `A021689.P8782891051480399692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021689 (n : ℕ) : ℤ :=
  A021689.P8782891051480399692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021697.P12281468467126722943

`4-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A021697.P12281468467126722943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  4 - a (n - 3)

end

end A021697.P12281468467126722943

noncomputable section

/-- A021697: Decimal expansion of 1/693.

Offset 0, canonical program `A021697.P12281468467126722943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021697 (n : ℕ) : ℤ :=
  A021697.P12281468467126722943.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021706.P855799319587987641

`8-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=2`
-/

namespace A021706.P855799319587987641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 4, 2] fun n a =>
  8 - (a (n - 2) + a (n - 4))

end

end A021706.P855799319587987641

noncomputable section

/-- A021706: Decimal expansion of 1/702.

Offset 0, canonical program `A021706.P855799319587987641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021706 (n : ℕ) : ℤ :=
  A021706.P855799319587987641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021708.P5624694170562898388

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=2, a(5)=0, a(6)=4, a(7)=5`
-/

namespace A021708.P5624694170562898388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 4, 2, 0, 4, 5] fun n a =>
  a (n - 2)

end

end A021708.P5624694170562898388

noncomputable section

/-- A021708: Decimal expansion of 1/704.

Offset 0, canonical program `A021708.P5624694170562898388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021708 (n : ℕ) : ℤ :=
  (A021708.P5624694170562898388.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021781.P7481188617943568813

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=8, a(5)=7`
-/

namespace A021781.P7481188617943568813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 8, 7] fun n a =>
  a (n - 6)

end

end A021781.P7481188617943568813

noncomputable section

/-- A021781: Decimal expansion of 1/777.

Offset 0, canonical program `A021781.P7481188617943568813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021781 (n : ℕ) : ℤ :=
  (A021781.P7481188617943568813.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021796.P5733233809177278056

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=6`
-/

namespace A021796.P5733233809177278056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 6] fun n a =>
  a (n - 2)

end

end A021796.P5733233809177278056

noncomputable section

/-- A021796: Decimal expansion of 1/792.

Offset 0, canonical program `A021796.P5733233809177278056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021796 (n : ℕ) : ℤ :=
  (A021796.P5733233809177278056.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021812.P15659177985698028375

`a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3, a(5)=7, a(6)=6`
-/

namespace A021812.P15659177985698028375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 3, 7, 6] fun n a =>
  a (n - 4)

end

end A021812.P15659177985698028375

noncomputable section

/-- A021812: Decimal expansion of 1/808.

Offset 0, canonical program `A021812.P15659177985698028375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021812 (n : ℕ) : ℤ :=
  (A021812.P15659177985698028375.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021818.P6600692297043727996

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=2, a(5)=8, a(6)=5`
-/

namespace A021818.P6600692297043727996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 2, 8, 5] fun n a =>
  a (n - 6)

end

end A021818.P6600692297043727996

noncomputable section

/-- A021818: Decimal expansion of 1/814.

Offset 0, canonical program `A021818.P6600692297043727996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021818 (n : ℕ) : ℤ :=
  (A021818.P6600692297043727996.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021826.P17882957255776520591

`6-a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=1`
-/

namespace A021826.P17882957255776520591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2, 1] fun n a =>
  6 - a (n - 4)

end

end A021826.P17882957255776520591

noncomputable section

/-- A021826: Decimal expansion of 1/822.

Offset 0, canonical program `A021826.P17882957255776520591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021826 (n : ℕ) : ℤ :=
  A021826.P17882957255776520591.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021862.P13161930338708254443

`6-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A021862.P13161930338708254443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  6 - a (n - 3)

end

end A021862.P13161930338708254443

noncomputable section

/-- A021862: Decimal expansion of 1/858.

Offset 0, canonical program `A021862.P13161930338708254443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021862 (n : ℕ) : ℤ :=
  A021862.P13161930338708254443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021868.P15820094284664831902

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=5, a(5)=7, a(6)=4, a(7)=0`
-/

namespace A021868.P15820094284664831902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 5, 7, 4, 0] fun n a =>
  a (n - 3)

end

end A021868.P15820094284664831902

noncomputable section

/-- A021868: Decimal expansion of 1/864.

Offset 0, canonical program `A021868.P15820094284664831902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021868 (n : ℕ) : ℤ :=
  (A021868.P15820094284664831902.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021879.P4767840786678791318

`9-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4, a(5)=2`
-/

namespace A021879.P4767840786678791318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 4, 2] fun n a =>
  9 - a (n - 3)

end

end A021879.P4767840786678791318

noncomputable section

/-- A021879: Decimal expansion of 1/875.

Offset 0, canonical program `A021879.P4767840786678791318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021879 (n : ℕ) : ℤ :=
  A021879.P4767840786678791318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021892.P84059821437325387

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=6`
-/

namespace A021892.P84059821437325387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 2, 6] fun n a =>
  a (n - 3)

end

end A021892.P84059821437325387

noncomputable section

/-- A021892: Decimal expansion of 1/888.

Offset 0, canonical program `A021892.P84059821437325387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021892 (n : ℕ) : ℤ :=
  (A021892.P84059821437325387.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021929.P16187935444123050814

`a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=8`
-/

namespace A021929.P16187935444123050814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 8] fun n a =>
  a (n - 3)

end

end A021929.P16187935444123050814

noncomputable section

/-- A021929: Decimal expansion of 1/925.

Offset 0, canonical program `A021929.P16187935444123050814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021929 (n : ℕ) : ℤ :=
  (A021929.P16187935444123050814.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021949.P2275516452730271419

`8-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=5`
-/

namespace A021949.P2275516452730271419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 5] fun n a =>
  8 - (a (n - 2) + a (n - 4))

end

end A021949.P2275516452730271419

noncomputable section

/-- A021949: Decimal expansion of 1/945.

Offset 0, canonical program `A021949.P2275516452730271419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021949 (n : ℕ) : ℤ :=
  A021949.P2275516452730271419.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021966.P17644527202577626942

`9-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=3`
-/

namespace A021966.P17644527202577626942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 3] fun n a =>
  9 - (a (n - 2) + a (n - 4))

end

end A021966.P17644527202577626942

noncomputable section

/-- A021966: Decimal expansion of 1/962.

Offset 0, canonical program `A021966.P17644527202577626942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021966 (n : ℕ) : ℤ :=
  A021966.P17644527202577626942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A021988.P6413502429168806542

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=6, a(6)=2, a(7)=6`
-/

namespace A021988.P6413502429168806542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 6, 2, 6] fun n a =>
  a (n - 5)

end

end A021988.P6413502429168806542

noncomputable section

/-- A021988: Decimal expansion of 1/984.

Offset 0, canonical program `A021988.P6413502429168806542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021988 (n : ℕ) : ℤ :=
  (A021988.P6413502429168806542.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A021988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022020.P17754524932939836673

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=9, a(2)=28`
-/

namespace A022020.P17754524932939836673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 28] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A022020.P17754524932939836673

noncomputable section

/-- A022020: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(3,9).

Offset 0, canonical program `A022020.P17754524932939836673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A022020 (n : ℕ) : ℤ :=
  A022020.P17754524932939836673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A022020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022026.P2328058487854863960

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=2, a(1)=15`
-/

namespace A022026.P2328058487854863960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 15] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A022026.P2328058487854863960

noncomputable section

/-- A022026: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(2,15).

Offset 0, canonical program `A022026.P2328058487854863960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A022026 (n : ℕ) : ℤ :=
  A022026.P2328058487854863960.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A022026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022027.P822944641305798100

`8*a(n-1)-4*a(n-3)` with `a(0)=2, a(1)=16, a(2)=127`
-/

namespace A022027.P822944641305798100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 16, 127] fun n a =>
  8 * a (n - 1) - 4 * a (n - 3)

end

end A022027.P822944641305798100

noncomputable section

/-- A022027: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(2,16).

Offset 0, canonical program `A022027.P822944641305798100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A022027 (n : ℕ) : ℤ :=
  A022027.P822944641305798100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A022027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022030.P12378900995634265966

`4*a(n-1)-a(n-3)+a(n-4)` with `a(0)=4, a(1)=16, a(2)=63, a(3)=249`
-/

namespace A022030.P12378900995634265966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 16, 63, 249] fun n a =>
  4 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A022030.P12378900995634265966

noncomputable section

/-- A022030: For even n, a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n); for odd n, the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n); a(0) = 4, a(1) = 16.

Offset 0, canonical program `A022030.P12378900995634265966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A022030 (n : ℕ) : ℤ :=
  A022030.P12378900995634265966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A022030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022031.P2216221324241923790

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=17`
-/

namespace A022031.P2216221324241923790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 17] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A022031.P2216221324241923790

noncomputable section

/-- A022031: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(4,17).

Offset 0, canonical program `A022031.P2216221324241923790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A022031 (n : ℕ) : ℤ :=
  A022031.P2216221324241923790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A022031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022032.P7641226417153330823

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=5, a(1)=26`
-/

namespace A022032.P7641226417153330823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 26] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A022032.P7641226417153330823

noncomputable section

/-- A022032: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(5,26).

Offset 0, canonical program `A022032.P7641226417153330823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A022032 (n : ℕ) : ℤ :=
  A022032.P7641226417153330823.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A022032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022087.P16764854737003851843

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A022087.P16764854737003851843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022087.P16764854737003851843

noncomputable section

/-- A022087: Fibonacci sequence beginning 0, 4.

Offset 0, canonical program `A022087.P16764854737003851843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A022087 (n : ℕ) : ℤ :=
  (A022087.P16764854737003851843.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A022087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022090.P5544452117333524074

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=7`
-/

namespace A022090.P5544452117333524074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022090.P5544452117333524074

noncomputable section

/-- A022090: Fibonacci sequence beginning 0, 7.

Offset 0, canonical program `A022090.P5544452117333524074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022090 (n : ℕ) : ℤ :=
  (A022090.P5544452117333524074.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A022090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022091.P15148329154097724523

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=8`
-/

namespace A022091.P15148329154097724523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022091.P15148329154097724523

noncomputable section

/-- A022091: Fibonacci sequence beginning 0, 8.

Offset 0, canonical program `A022091.P15148329154097724523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022091 (n : ℕ) : ℤ :=
  (A022091.P15148329154097724523.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022092.P1771879504113913672

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=9`
-/

namespace A022092.P1771879504113913672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022092.P1771879504113913672

noncomputable section

/-- A022092: Fibonacci sequence beginning 0, 9.

Offset 0, canonical program `A022092.P1771879504113913672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022092 (n : ℕ) : ℤ :=
  (A022092.P1771879504113913672.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022093.P8157215533212784766

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=10`
-/

namespace A022093.P8157215533212784766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022093.P8157215533212784766

noncomputable section

/-- A022093: Fibonacci sequence beginning 0, 10.

Offset 0, canonical program `A022093.P8157215533212784766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022093 (n : ℕ) : ℤ :=
  (A022093.P8157215533212784766.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022114.P13672407522580782032

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=9`
-/

namespace A022114.P13672407522580782032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 9] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022114.P13672407522580782032

noncomputable section

/-- A022114: Fibonacci sequence beginning 2 9.

Offset 0, canonical program `A022114.P13672407522580782032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022114 (n : ℕ) : ℤ :=
  (A022114.P13672407522580782032.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022115.P15431022038511275521

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=11`
-/

namespace A022115.P15431022038511275521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 11] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022115.P15431022038511275521

noncomputable section

/-- A022115: Fibonacci sequence beginning 2, 11.

Offset 0, canonical program `A022115.P15431022038511275521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022115 (n : ℕ) : ℤ :=
  (A022115.P15431022038511275521.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022116.P12242767971539423328

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=13`
-/

namespace A022116.P12242767971539423328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 13] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022116.P12242767971539423328

noncomputable section

/-- A022116: Fibonacci sequence beginning 2, 13.

Offset 0, canonical program `A022116.P12242767971539423328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022116 (n : ℕ) : ℤ :=
  (A022116.P12242767971539423328.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022118.P9145892876470658440

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=17`
-/

namespace A022118.P9145892876470658440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 17] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022118.P9145892876470658440

noncomputable section

/-- A022118: Fibonacci sequence beginning 2, 17.

Offset 0, canonical program `A022118.P9145892876470658440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022118 (n : ℕ) : ℤ :=
  (A022118.P9145892876470658440.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022119.P5708294146707799200

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=19`
-/

namespace A022119.P5708294146707799200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 19] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022119.P5708294146707799200

noncomputable section

/-- A022119: Fibonacci sequence beginning 2, 19.

Offset 0, canonical program `A022119.P5708294146707799200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022119 (n : ℕ) : ℤ :=
  (A022119.P5708294146707799200.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022120.P12982971927313679519

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=7`
-/

namespace A022120.P12982971927313679519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022120.P12982971927313679519

noncomputable section

/-- A022120: Fibonacci sequence beginning 3, 7.

Offset 0, canonical program `A022120.P12982971927313679519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022120 (n : ℕ) : ℤ :=
  (A022120.P12982971927313679519.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022121.P17548051697724116263

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A022121.P17548051697724116263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022121.P17548051697724116263

noncomputable section

/-- A022121: Fibonacci sequence beginning 3, 8.

Offset 0, canonical program `A022121.P17548051697724116263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022121 (n : ℕ) : ℤ :=
  (A022121.P17548051697724116263.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022124.P2389626723646206169

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=13`
-/

namespace A022124.P2389626723646206169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 13] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022124.P2389626723646206169

noncomputable section

/-- A022124: Fibonacci sequence beginning 3, 13.

Offset 0, canonical program `A022124.P2389626723646206169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022124 (n : ℕ) : ℤ :=
  (A022124.P2389626723646206169.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022128.P3176965383173662515

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=19`
-/

namespace A022128.P3176965383173662515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 19] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022128.P3176965383173662515

noncomputable section

/-- A022128: Fibonacci sequence beginning 3, 19.

Offset 0, canonical program `A022128.P3176965383173662515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022128 (n : ℕ) : ℤ :=
  (A022128.P3176965383173662515.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022129.P1775608923007074751

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=20`
-/

namespace A022129.P1775608923007074751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 20] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022129.P1775608923007074751

noncomputable section

/-- A022129: Fibonacci sequence beginning 3, 20.

Offset 0, canonical program `A022129.P1775608923007074751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022129 (n : ℕ) : ℤ :=
  (A022129.P1775608923007074751.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022130.P10229565435972400193

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=9`
-/

namespace A022130.P10229565435972400193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022130.P10229565435972400193

noncomputable section

/-- A022130: Fibonacci sequence beginning 4,9.

Offset 0, canonical program `A022130.P10229565435972400193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022130 (n : ℕ) : ℤ :=
  (A022130.P10229565435972400193.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022131.P12698839390701528726

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=11`
-/

namespace A022131.P12698839390701528726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 11] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022131.P12698839390701528726

noncomputable section

/-- A022131: Fibonacci sequence beginning 4, 11.

Offset 0, canonical program `A022131.P12698839390701528726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022131 (n : ℕ) : ℤ :=
  (A022131.P12698839390701528726.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022132.P15750087410116305202

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=13`
-/

namespace A022132.P15750087410116305202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 13] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022132.P15750087410116305202

noncomputable section

/-- A022132: Fibonacci sequence beginning 4, 13.

Offset 0, canonical program `A022132.P15750087410116305202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022132 (n : ℕ) : ℤ :=
  (A022132.P15750087410116305202.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022133.P13244454983530449910

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=15`
-/

namespace A022133.P13244454983530449910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 15] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022133.P13244454983530449910

noncomputable section

/-- A022133: Fibonacci sequence beginning 4, 15.

Offset 0, canonical program `A022133.P13244454983530449910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022133 (n : ℕ) : ℤ :=
  (A022133.P13244454983530449910.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022134.P14051580609693346630

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=17`
-/

namespace A022134.P14051580609693346630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 17] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022134.P14051580609693346630

noncomputable section

/-- A022134: Fibonacci sequence beginning 4, 17.

Offset 0, canonical program `A022134.P14051580609693346630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022134 (n : ℕ) : ℤ :=
  (A022134.P14051580609693346630.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022135.P7173734481518943665

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=19`
-/

namespace A022135.P7173734481518943665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 19] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022135.P7173734481518943665

noncomputable section

/-- A022135: Fibonacci sequence beginning 4, 19.

Offset 0, canonical program `A022135.P7173734481518943665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022135 (n : ℕ) : ℤ :=
  (A022135.P7173734481518943665.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022136.P6117542372999561532

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=11`
-/

namespace A022136.P6117542372999561532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 11] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022136.P6117542372999561532

noncomputable section

/-- A022136: Fibonacci sequence beginning 5, 11.

Offset 0, canonical program `A022136.P6117542372999561532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022136 (n : ℕ) : ℤ :=
  (A022136.P6117542372999561532.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022137.P8840843518044374614

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=12`
-/

namespace A022137.P8840843518044374614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 12] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022137.P8840843518044374614

noncomputable section

/-- A022137: Fibonacci sequence beginning 5, 12.

Offset 0, canonical program `A022137.P8840843518044374614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022137 (n : ℕ) : ℤ :=
  (A022137.P8840843518044374614.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022140.P16595851793550894815

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=16`
-/

namespace A022140.P16595851793550894815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 16] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022140.P16595851793550894815

noncomputable section

/-- A022140: Fibonacci sequence beginning 5, 16.

Offset 0, canonical program `A022140.P16595851793550894815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022140 (n : ℕ) : ℤ :=
  (A022140.P16595851793550894815.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022141.P568741072719453872

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=17`
-/

namespace A022141.P568741072719453872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 17] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022141.P568741072719453872

noncomputable section

/-- A022141: Fibonacci sequence beginning 5, 17.

Offset 0, canonical program `A022141.P568741072719453872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022141 (n : ℕ) : ℤ :=
  (A022141.P568741072719453872.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022143.P2356573164703713532

`a(n-1)+a(n-2)` with `a(0)=5, a(1)=19`
-/

namespace A022143.P2356573164703713532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 19] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022143.P2356573164703713532

noncomputable section

/-- A022143: Fibonacci sequence beginning 5, 19.

Offset 0, canonical program `A022143.P2356573164703713532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022143 (n : ℕ) : ℤ :=
  (A022143.P2356573164703713532.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022144.P16676713181441761724

`floor(2/acot(4*n))`
-/

namespace A022144.P16676713181441761724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋

end

end A022144.P16676713181441761724

noncomputable section

/-- A022144: Coordination sequence for root lattice B_2.

Offset 0, canonical program `A022144.P16676713181441761724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022144 (n : ℕ) : ℤ :=
  A022144.P16676713181441761724.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022345.P3222303767883107132

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=11`
-/

namespace A022345.P3222303767883107132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022345.P3222303767883107132

noncomputable section

/-- A022345: Fibonacci sequence beginning 0, 11.

Offset 0, canonical program `A022345.P3222303767883107132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022345 (n : ℕ) : ℤ :=
  (A022345.P3222303767883107132.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022346.P959763871011371913

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=12`
-/

namespace A022346.P959763871011371913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022346.P959763871011371913

noncomputable section

/-- A022346: Fibonacci sequence beginning 0, 12.

Offset 0, canonical program `A022346.P959763871011371913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022346 (n : ℕ) : ℤ :=
  (A022346.P959763871011371913.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022347.P13222596601354913426

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=13`
-/

namespace A022347.P13222596601354913426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022347.P13222596601354913426

noncomputable section

/-- A022347: Fibonacci sequence beginning 0, 13.

Offset 0, canonical program `A022347.P13222596601354913426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022347 (n : ℕ) : ℤ :=
  (A022347.P13222596601354913426.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022352.P2372187960422330445

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=18`
-/

namespace A022352.P2372187960422330445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 18] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022352.P2372187960422330445

noncomputable section

/-- A022352: Fibonacci sequence beginning 0, 18.

Offset 0, canonical program `A022352.P2372187960422330445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022352 (n : ℕ) : ℤ :=
  (A022352.P2372187960422330445.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022359.P5202443967155196284

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=25`
-/

namespace A022359.P5202443967155196284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 25] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022359.P5202443967155196284

noncomputable section

/-- A022359: Fibonacci sequence beginning 0, 25.

Offset 0, canonical program `A022359.P5202443967155196284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022359 (n : ℕ) : ℤ :=
  (A022359.P5202443967155196284.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022373.P7864979694522191058

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=22`
-/

namespace A022373.P7864979694522191058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 22] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022373.P7864979694522191058

noncomputable section

/-- A022373: Fibonacci sequence beginning 2, 22.

Offset 0, canonical program `A022373.P7864979694522191058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022373 (n : ℕ) : ℤ :=
  (A022373.P7864979694522191058.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022377.P6232799325757425718

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=30`
-/

namespace A022377.P6232799325757425718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 30] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022377.P6232799325757425718

noncomputable section

/-- A022377: Fibonacci sequence beginning 2, 30.

Offset 0, canonical program `A022377.P6232799325757425718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022377 (n : ℕ) : ℤ :=
  (A022377.P6232799325757425718.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022378.P4822288624874711744

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=32`
-/

namespace A022378.P4822288624874711744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 32] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022378.P4822288624874711744

noncomputable section

/-- A022378: Fibonacci sequence beginning 2, 32.

Offset 0, canonical program `A022378.P4822288624874711744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A022378 (n : ℕ) : ℤ :=
  (A022378.P4822288624874711744.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A022378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022379.P10751205089241764404

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=9`
-/

namespace A022379.P10751205089241764404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022379.P10751205089241764404

noncomputable section

/-- A022379: Fibonacci sequence beginning 3, 9.

Offset 0, canonical program `A022379.P10751205089241764404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022379 (n : ℕ) : ℤ :=
  (A022379.P10751205089241764404.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A022379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022385.P16937619479723646624

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=22`
-/

namespace A022385.P16937619479723646624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 22] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022385.P16937619479723646624

noncomputable section

/-- A022385: Fibonacci sequence beginning 4, 22.

Offset 0, canonical program `A022385.P16937619479723646624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022385 (n : ℕ) : ℤ :=
  (A022385.P16937619479723646624.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022386.P11697045666882426555

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=26`
-/

namespace A022386.P11697045666882426555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 26] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022386.P11697045666882426555

noncomputable section

/-- A022386: Fibonacci sequence beginning 4, 26.

Offset 0, canonical program `A022386.P11697045666882426555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022386 (n : ℕ) : ℤ :=
  (A022386.P11697045666882426555.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022387.P7139518388158535180

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=30`
-/

namespace A022387.P7139518388158535180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 30] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022387.P7139518388158535180

noncomputable section

/-- A022387: Fibonacci sequence beginning 4, 30.

Offset 0, canonical program `A022387.P7139518388158535180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A022387 (n : ℕ) : ℤ :=
  (A022387.P7139518388158535180.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A022387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022388.P8298662997206301107

`a(n-1)+a(n-2)` with `a(0)=6, a(1)=13`
-/

namespace A022388.P8298662997206301107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 13] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022388.P8298662997206301107

noncomputable section

/-- A022388: Fibonacci sequence beginning 6, 13.

Offset 0, canonical program `A022388.P8298662997206301107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022388 (n : ℕ) : ℤ :=
  (A022388.P8298662997206301107.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022389.P10332662346858988548

`a(n-1)+a(n-2)` with `a(0)=7, a(1)=15`
-/

namespace A022389.P10332662346858988548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 15] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022389.P10332662346858988548

noncomputable section

/-- A022389: Fibonacci sequence beginning 7, 15.

Offset 0, canonical program `A022389.P10332662346858988548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022389 (n : ℕ) : ℤ :=
  (A022389.P10332662346858988548.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A022389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022390.P1311120122459527410

`a(n-1)+a(n-2)` with `a(0)=8, a(1)=17`
-/

namespace A022390.P1311120122459527410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8, 17] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022390.P1311120122459527410

noncomputable section

/-- A022390: Fibonacci sequence beginning 8, 17.

Offset 0, canonical program `A022390.P1311120122459527410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022390 (n : ℕ) : ℤ :=
  (A022390.P1311120122459527410.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022394.P13204660913798822066

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=24`
-/

namespace A022394.P13204660913798822066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022394.P13204660913798822066

noncomputable section

/-- A022394: Fibonacci sequence beginning 1, 24.

Offset 0, canonical program `A022394.P13204660913798822066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022394 (n : ℕ) : ℤ :=
  (A022394.P13204660913798822066.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022395.P13665248822055943677

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=25`
-/

namespace A022395.P13665248822055943677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 25] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022395.P13665248822055943677

noncomputable section

/-- A022395: Fibonacci sequence beginning 1, 25.

Offset 0, canonical program `A022395.P13665248822055943677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022395 (n : ℕ) : ℤ :=
  (A022395.P13665248822055943677.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022396.P8139868350851147664

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=26`
-/

namespace A022396.P8139868350851147664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 26] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022396.P8139868350851147664

noncomputable section

/-- A022396: Fibonacci sequence beginning 1, 26.

Offset 0, canonical program `A022396.P8139868350851147664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022396 (n : ℕ) : ℤ :=
  (A022396.P8139868350851147664.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022397.P14278373051886796777

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=27`
-/

namespace A022397.P14278373051886796777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 27] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022397.P14278373051886796777

noncomputable section

/-- A022397: Fibonacci sequence beginning 1, 27.

Offset 0, canonical program `A022397.P14278373051886796777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022397 (n : ℕ) : ℤ :=
  (A022397.P14278373051886796777.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022398.P4417228465673206100

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=28`
-/

namespace A022398.P4417228465673206100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 28] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022398.P4417228465673206100

noncomputable section

/-- A022398: Fibonacci sequence beginning 1, 28.

Offset 0, canonical program `A022398.P4417228465673206100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022398 (n : ℕ) : ℤ :=
  (A022398.P4417228465673206100.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022399.P4368525306321405628

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=29`
-/

namespace A022399.P4368525306321405628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 29] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022399.P4368525306321405628

noncomputable section

/-- A022399: Fibonacci sequence beginning 1, 29.

Offset 0, canonical program `A022399.P4368525306321405628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022399 (n : ℕ) : ℤ :=
  (A022399.P4368525306321405628.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022400.P6465424376949074487

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A022400.P6465424376949074487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022400.P6465424376949074487

noncomputable section

/-- A022400: Fibonacci sequence beginning 1, 30.

Offset 0, canonical program `A022400.P6465424376949074487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022400 (n : ℕ) : ℤ :=
  (A022400.P6465424376949074487.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A022400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022401.P15490128363252553230

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=31`
-/

namespace A022401.P15490128363252553230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 31] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022401.P15490128363252553230

noncomputable section

/-- A022401: Fibonacci sequence beginning 1, 31.

Offset 0, canonical program `A022401.P15490128363252553230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A022401 (n : ℕ) : ℤ :=
  (A022401.P15490128363252553230.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A022401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022413.P14775061010759171751

`floor(n*(3-n/a(n-1)))+3` with `a(0)=1`
-/

namespace A022413.P14775061010759171751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℚ) * (3 - (n : ℚ) / (a (n - 1) : ℚ))⌋ + 3

end

end A022413.P14775061010759171751

noncomputable section

/-- A022413: Kim-sums: "Kimberling sums" K_n + K_2.

Offset 0, canonical program `A022413.P14775061010759171751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022413 (n : ℕ) : ℤ :=
  A022413.P14775061010759171751.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022560.P17120836430993285604

`∑[∑[and(n, -n)]]`
-/

namespace A022560.P17120836430993285604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022560.P17120836430993285604

noncomputable section

/-- A022560: a(0)=0, a(2*n) = 2*a(n) + 2*a(n-1) + n^2 + n, a(2*n+1) = 4*a(n) + (n+1)^2.

Offset 0, canonical program `A022560.P17120836430993285604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022560 (n : ℕ) : ℤ :=
  A022560.P17120836430993285604.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022761.P14430388532223490867

`p?[8*n+1]+p?[8*n-1]`
-/

namespace A022761.P14430388532223490867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A022761.P14430388532223490867

noncomputable section

/-- A022761: n-th 8k+1 prime plus n-th 8k+7 prime.

Offset 1, canonical program `A022761.P14430388532223490867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022761 (n : ℕ) : ℤ :=
  A022761.P14430388532223490867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022782.P11211410587946556953

`∑[floor(n/sqrt(7))+1]`
-/

namespace A022782.P11211410587946556953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (7 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022782.P11211410587946556953

noncomputable section

/-- A022782: Place where n-th 1 occurs in A023120.

Offset 1, canonical program `A022782.P11211410587946556953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5889 terms. -/
def A022782 (n : ℕ) : ℤ :=
  A022782.P11211410587946556953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5889 terms. -/
def A022782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022783.P9693895738912424470

`∑[floor(n*sqrt(2/3))+1]`
-/

namespace A022783.P9693895738912424470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt ((2 : ℚ) / 3 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022783.P9693895738912424470

noncomputable section

/-- A022783: Place where n-th 1 occurs in A023121.

Offset 1, canonical program `A022783.P9693895738912424470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4272 terms. -/
def A022783 (n : ℕ) : ℤ :=
  A022783.P9693895738912424470.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4272 terms. -/
def A022783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022787.P16520987218519823959

`∑[floor(n*exp(2))+1]`
-/

namespace A022787.P16520987218519823959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.exp (2 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022787.P16520987218519823959

noncomputable section

/-- A022787: Place where n-th 1 occurs in A023125.

Offset 1, canonical program `A022787.P16520987218519823959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A022787 (n : ℕ) : ℤ :=
  A022787.P16520987218519823959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A022787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022788.P15398137727683511653

`∑[floor(n/exp(2))+1]`
-/

namespace A022788.P15398137727683511653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.exp (2 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022788.P15398137727683511653

noncomputable section

/-- A022788: Place where n-th 1 occurs in A023126.

Offset 1, canonical program `A022788.P15398137727683511653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8875 terms. -/
def A022788 (n : ℕ) : ℤ :=
  A022788.P15398137727683511653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8875 terms. -/
def A022788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022792.P2618437352207063626

`∑[floor(n/sqrt(e))+1]`
-/

namespace A022792.P2618437352207063626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (Real.exp 1)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022792.P2618437352207063626

noncomputable section

/-- A022792: Place where n-th 1 occurs in A023130.

Offset 1, canonical program `A022792.P2618437352207063626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4559 terms. -/
def A022792 (n : ℕ) : ℤ :=
  A022792.P2618437352207063626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4559 terms. -/
def A022792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022907.P16549698735255924048

`a(n-1)+a(floor(n/2))+1` with `a(0)=0, a(1)=2`
-/

namespace A022907.P16549698735255924048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (a ⌊(n : ℚ) / 2⌋.toNat + 1)

end

end A022907.P16549698735255924048

noncomputable section

/-- A022907: The sequence m(n) in A022905.

Offset 1, canonical program `A022907.P16549698735255924048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022907 (n : ℕ) : ℤ :=
  (A022907.P16549698735255924048.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022908.P16210768473374232054

`∑[a(n-1)+a(∑[n%2])]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A022908.P16210768473374232054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f1 =>
  f1 (n - 1) + f1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022908.P16210768473374232054

noncomputable section

/-- A022908: The sequence M(n) in A022905.

Offset 1, canonical program `A022908.P16210768473374232054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022908 (n : ℕ) : ℤ :=
  (A022908.P16210768473374232054.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022916.P18302845039449543127

`n/ceil(n/3)*a(n-1)` with `a(0)=1`
-/

namespace A022916.P18302845039449543127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (⌈(n : ℚ) / 3⌉ : ℚ) * a (n - 1)

end

end A022916.P18302845039449543127

noncomputable section

/-- A022916: Multinomial coefficient n!/([n/3]![(n+1)/3]![(n+2)/3]!).

Offset 0, canonical program `A022916.P18302845039449543127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A022916 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022916.P18302845039449543127.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A022916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022917.P1264194993428589448

`n*a(n-1)/floor((n+3)/4)` with `a(0)=1`
-/

namespace A022917.P1264194993428589448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (⌊(n + 3 : ℚ) / 4⌋ : ℚ))

end

end A022917.P1264194993428589448

noncomputable section

/-- A022917: Multinomial coefficient n!/ ([n/4]!, [(n+1)/4]!, [(n+2)/4]!, [(n+3)/4]!).

Offset 0, canonical program `A022917.P1264194993428589448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A022917 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A022917.P1264194993428589448.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A022917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022922.P13332490768464008968

`Δ[floor(n*log2(5))]`
-/

namespace A022922.P13332490768464008968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022922.P13332490768464008968

noncomputable section

/-- A022922: Number of integers m such that 5^n < 2^m < 5^(n+1).

Offset 0, canonical program `A022922.P13332490768464008968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022922 (n : ℕ) : ℤ :=
  A022922.P13332490768464008968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022923.P8451679618393413432

`Δ[floor(n*log2(7))]`
-/

namespace A022923.P8451679618393413432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022923.P8451679618393413432

noncomputable section

/-- A022923: Number of integers m such that 7^n < 2^m < 7^(n+1).

Offset 0, canonical program `A022923.P8451679618393413432`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022923 (n : ℕ) : ℤ :=
  A022923.P8451679618393413432.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022924.P3236427169308716577

`Δ[floor(n/log2(3))]`
-/

namespace A022924.P3236427169308716577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022924.P3236427169308716577

noncomputable section

/-- A022924: Number of 3^m between 2^n and 2^(n+1).

Offset 0, canonical program `A022924.P3236427169308716577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022924 (n : ℕ) : ℤ :=
  A022924.P3236427169308716577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022925.P2700849016761946750

`Δ[floor(n/log2(5))]`
-/

namespace A022925.P2700849016761946750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (5 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022925.P2700849016761946750

noncomputable section

/-- A022925: Number of 5^m between 2^n and 2^(n+1).

Offset 0, canonical program `A022925.P2700849016761946750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022925 (n : ℕ) : ℤ :=
  A022925.P2700849016761946750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022926.P16774545798916695975

`Δ[floor(n/log2(7))]`
-/

namespace A022926.P16774545798916695975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022926.P16774545798916695975

noncomputable section

/-- A022926: Number of powers of 7 between 2^n and 2^(n+1).

Offset 0, canonical program `A022926.P16774545798916695975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022926 (n : ℕ) : ℤ :=
  A022926.P16774545798916695975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022929.P4202533793575816525

`Δ[floor(2*n/log2(3))]`
-/

namespace A022929.P4202533793575816525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / Real.logb 2 (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022929.P4202533793575816525

noncomputable section

/-- A022929: Number of 3^m between 4^n and 4^(n+1).

Offset 0, canonical program `A022929.P4202533793575816525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022929 (n : ℕ) : ℤ :=
  A022929.P4202533793575816525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022930.P16989374351501445067

`Δ[floor(n*log2(sqrt(3)))]`
-/

namespace A022930.P16989374351501445067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (Real.sqrt (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022930.P16989374351501445067

noncomputable section

/-- A022930: Number of 4^m between 3^n and 3^(n+1).

Offset 0, canonical program `A022930.P16989374351501445067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022930 (n : ℕ) : ℤ :=
  A022930.P16989374351501445067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022931.P15322625871257903484

`Δ[floor(n*log(π))]`
-/

namespace A022931.P15322625871257903484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022931.P15322625871257903484

noncomputable section

/-- A022931: Number of e^m between Pi^n and Pi^(n+1).

Offset 0, canonical program `A022931.P15322625871257903484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022931 (n : ℕ) : ℤ :=
  A022931.P15322625871257903484.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022932.P13308766260925806092

`Δ[floor(n/log(π))]`
-/

namespace A022932.P13308766260925806092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022932.P13308766260925806092

noncomputable section

/-- A022932: a(n) is the number of powers Pi^m between e^n and e^(n+1).

Offset 0, canonical program `A022932.P13308766260925806092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022932 (n : ℕ) : ℤ :=
  A022932.P13308766260925806092.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022933.P15200820070622578600

`Δ[floor(n*log(2))]`
-/

namespace A022933.P15200820070622578600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.log (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022933.P15200820070622578600

noncomputable section

/-- A022933: Number of e^m between 2^n and 2^(n+1).

Offset 0, canonical program `A022933.P15200820070622578600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022933 (n : ℕ) : ℤ :=
  A022933.P15200820070622578600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022934.P5970198111378044051

`Δ[floor(n/log(2))]`
-/

namespace A022934.P5970198111378044051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.log (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022934.P5970198111378044051

noncomputable section

/-- A022934: Number of 2^m between e^n and e^(n+1).

Offset 0, canonical program `A022934.P5970198111378044051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022934 (n : ℕ) : ℤ :=
  A022934.P5970198111378044051.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022997.P15495391549649658560

`lcm(∑[4*n]+n, n+2)`
-/

namespace A022997.P15495391549649658560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + n) (n + 2)

end

end A022997.P15495391549649658560

noncomputable section

/-- A022997: Numerator of n*(n-2)*(2*n-1)/(2*(n-1)).

Offset 2, canonical program `A022997.P15495391549649658560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022997 (n : ℕ) : ℤ :=
  (A022997.P15495391549649658560.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023002.P383826923714284533

`∑[n^10]`
-/

namespace A023002.P383826923714284533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023002.P383826923714284533

noncomputable section

/-- A023002: Sum of 10th powers.

Offset 0, canonical program `A023002.P383826923714284533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023002 (n : ℕ) : ℤ :=
  (A023002.P383826923714284533.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023054.P13703691498310469659

`ceil(∑[(n+1)*gcd(2, n)²]/6)`
-/

namespace A023054.P13703691498310469659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌉

end

end A023054.P13703691498310469659

noncomputable section

/-- A023054: Simon Plouffe's conjectured extension of sequence A008368.

Offset 0, canonical program `A023054.P13703691498310469659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023054 (n : ℕ) : ℤ :=
  A023054.P13703691498310469659.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023216.P12727548628450943701

`p?[floor(p?[2*n+2*n+1]/4)-2]`
-/

namespace A023216.P12727548628450943701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 4⌋ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023216.P12727548628450943701

noncomputable section

/-- A023216: Primes p such that 4*p + 9 is also prime.

Offset 1, canonical program `A023216.P12727548628450943701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1364 terms. -/
def A023216 (n : ℕ) : ℤ :=
  A023216.P12727548628450943701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1364 terms. -/
def A023216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023418.P14612031648764867752

`lcm(n+3, ∑[3*(n+1)])/(n+3)`
-/

namespace A023418.P14612031648764867752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 3 : ℚ)

end

end A023418.P14612031648764867752

noncomputable section

/-- A023418: Denominator of n*(n-3)*(3*n^2 - 6*n + 2)/(3*(n-1)*(n-2)).

Offset 3, canonical program `A023418.P14612031648764867752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023418.P14612031648764867752.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023548.P17138095885544498618

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=2, a(1)=1`
-/

namespace A023548.P17138095885544498618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023548.P17138095885544498618

noncomputable section

/-- A023548: Convolution of natural numbers >= 2 and Fibonacci numbers.

Offset 1, canonical program `A023548.P17138095885544498618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023548 (n : ℕ) : ℤ :=
  (A023548.P17138095885544498618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A023548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023549.P6440797248166161086

`∑[a(n-1)+a(n-2)+3]` with `a(0)=2, a(1)=7`
-/

namespace A023549.P6440797248166161086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023549.P6440797248166161086

noncomputable section

/-- A023549: Convolution of natural numbers >= 2 and Lucas numbers.

Offset 1, canonical program `A023549.P6440797248166161086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023549 (n : ℕ) : ℤ :=
  (A023549.P6440797248166161086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A023549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023607.P9106534318635000948

`n*∑[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A023607.P9106534318635000948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A023607.P9106534318635000948

noncomputable section

/-- A023607: a(n) = n * Fibonacci(n+1).

Offset 0, canonical program `A023607.P9106534318635000948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A023607 (n : ℕ) : ℤ :=
  (A023607.P9106534318635000948.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A023607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023645.P17827093049504393277

`∑{d}[n+1, 1-round(1/#)]`
-/

namespace A023645.P17827093049504393277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - SequenceMachineLib.roundAway (1 / (d : ℚ)))

end

end A023645.P17827093049504393277

noncomputable section

/-- A023645: a(n) = tau(n)-1 if n is odd or tau(n)-2 if n is even.

Offset 1, canonical program `A023645.P17827093049504393277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023645 (n : ℕ) : ℤ :=
  A023645.P17827093049504393277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023652.P8216835272544465389

`∑[a(n-1)+a(n-2)+4]` with `a(0)=1, a(1)=4`
-/

namespace A023652.P8216835272544465389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023652.P8216835272544465389

noncomputable section

/-- A023652: Convolution of (F(2), F(3), F(4), ...) and odd numbers.

Offset 1, canonical program `A023652.P8216835272544465389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023652 (n : ℕ) : ℤ :=
  (A023652.P8216835272544465389.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A023652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023688.P13854367885440004465

`eq[6, a(and(n, n-1))+1]` with `a(0)=0`
-/

namespace A023688.P13854367885440004465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023688.P13854367885440004465

noncomputable section

/-- A023688: Numbers with exactly 6 ones in binary expansion.

Offset 1, canonical program `A023688.P13854367885440004465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7208 terms. -/
def A023688 (n : ℕ) : ℤ :=
  (A023688.P13854367885440004465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7208 terms. -/
def A023688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023689.P1708230724972766741

`eq[7, a(and(n, n-1))+1]` with `a(0)=0`
-/

namespace A023689.P1708230724972766741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023689.P1708230724972766741

noncomputable section

/-- A023689: Numbers with exactly 7 ones in binary expansion.

Offset 1, canonical program `A023689.P1708230724972766741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A023689 (n : ℕ) : ℤ :=
  (A023689.P1708230724972766741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A023689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023709.P5523862533995795831

`record[floor(n/2)+2*(n-a(floor(n/2)))]` with `a(0)=0`
-/

namespace A023709.P5523862533995795831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(n : ℚ) / 2⌋ + 2 * ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023709.P5523862533995795831

noncomputable section

/-- A023709: Numbers with no 1's in their base 4 expansion.

Offset 1, canonical program `A023709.P5523862533995795831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023709 (n : ℕ) : ℤ :=
  A023709.P5523862533995795831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023713.P11918735792945985696

`eq[0, a(floor(n/4))+and(4, n²)/4]` with `a(0)=0`
-/

namespace A023713.P11918735792945985696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 4⌋.toNat + (Nat.land 4 (n ^ 2) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A023713.P11918735792945985696

noncomputable section

/-- A023713: Numbers with no 2's in their base 4 expansion.

Offset 1, canonical program `A023713.P11918735792945985696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4572 terms. -/
def A023713 (n : ℕ) : ℤ :=
  (A023713.P11918735792945985696.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4572 terms. -/
def A023713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023714.P15276817644264661264

`eq[1, a(floor(n/4))+and(4, n²)/4]` with `a(0)=0`
-/

namespace A023714.P15276817644264661264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 4⌋.toNat + (Nat.land 4 (n ^ 2) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A023714.P15276817644264661264

noncomputable section

/-- A023714: Numbers with a single 2 in their base 4 expansion.

Offset 1, canonical program `A023714.P15276817644264661264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023714 (n : ℕ) : ℤ :=
  (A023714.P15276817644264661264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023715.P16739028071736261977

`eq[2, a(floor(n/4))+and(4, n²)/4]` with `a(0)=0`
-/

namespace A023715.P16739028071736261977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 4⌋.toNat + (Nat.land 4 (n ^ 2) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A023715.P16739028071736261977

noncomputable section

/-- A023715: Numbers with exactly 2 2's in their base 4 expansion.

Offset 1, canonical program `A023715.P16739028071736261977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023715 (n : ℕ) : ℤ :=
  (A023715.P16739028071736261977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023808.P7040097913653818230

`comp[5*∏{e}[4*3^n, #+1]]`
-/

namespace A023808.P7040097913653818230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * 3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A023808.P7040097913653818230

noncomputable section

/-- A023808: Xenodromes: all digits in base 14 are different.

Offset 1, canonical program `A023808.P7040097913653818230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A023808 (n : ℕ) : ℤ :=
  (A023808.P7040097913653818230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A023808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023865.P1893637354053305460

`∑[∑[∑[n²*(-1)^n+1]]]`
-/

namespace A023865.P1893637354053305460
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (-1) ^ n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023865.P1893637354053305460

noncomputable section

/-- A023865: a(n) = 1*t(n) + 2*t(n-1) + ... + k*t(n+1-k), where k=floor((n+1)/2) and t(n)=2*n+1 (odd numbers).

Offset 1, canonical program `A023865.P1893637354053305460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023865 (n : ℕ) : ℤ :=
  A023865.P1893637354053305460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023896.P10594219463258781009

`ceil((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/2)`
-/

namespace A023896.P10594219463258781009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) / 2⌉

end

end A023896.P10594219463258781009

noncomputable section

/-- A023896: Sum of positive integers in smallest positive reduced residue system modulo n. a(1) = 1 by convention.

Offset 1, canonical program `A023896.P10594219463258781009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023896 (n : ℕ) : ℤ :=
  A023896.P10594219463258781009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023960.P2618509128043688957

`floor(2^n*root(n+1, n+1))%2`
-/

namespace A023960.P2618509128043688957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 ^ n : ℝ) * (n + 1 : ℝ) ^ (1 / (n + 1 : ℝ))⌋ 2

end

end A023960.P2618509128043688957

noncomputable section

/-- A023960: n-th bit in binary expansion of n-th root of n.

Offset 1, canonical program `A023960.P2618509128043688957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A023960 (n : ℕ) : ℤ :=
  A023960.P2618509128043688957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A023960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023963.P5162851184972613735

`floor(10*root(n+1, 4))%10`
-/

namespace A023963.P5162851184972613735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊10 * (n + 1 : ℝ) ^ (1 / (4 : ℝ))⌋ 10

end

end A023963.P5162851184972613735

noncomputable section

/-- A023963: First digit after decimal point of 4th root of n.

Offset 1, canonical program `A023963.P5162851184972613735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023963 (n : ℕ) : ℤ :=
  A023963.P5162851184972613735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023964.P15443092186280879180

`floor(10*root(n+1, 5))%10`
-/

namespace A023964.P15443092186280879180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊10 * (n + 1 : ℝ) ^ (1 / (5 : ℝ))⌋ 10

end

end A023964.P15443092186280879180

noncomputable section

/-- A023964: First digit after decimal point of 5th root of n.

Offset 1, canonical program `A023964.P15443092186280879180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023964 (n : ℕ) : ℤ :=
  A023964.P15443092186280879180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023900.P6802385856234332486

`∏{p}[n+1, 1-#]`
-/

namespace A023900.P6802385856234332486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))

end

end A023900.P6802385856234332486

noncomputable section

/-- A023900: Dirichlet inverse of Euler totient function (A000010).

Offset 1, canonical program `A023900.P6802385856234332486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023900 (n : ℕ) : ℤ :=
  A023900.P6802385856234332486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023900.provenance : SequenceMachineLib.Provenance := .conjectured

