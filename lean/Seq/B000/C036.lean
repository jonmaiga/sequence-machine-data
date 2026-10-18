import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A391978.P3035766027264411343

`2*(n+1)*C(n+1, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391978.P3035766027264411343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) * Nat.choose (n + 1) 4)

end

end A391978.P3035766027264411343

noncomputable section

/-- A391978: a(n) = 2*n*binomial(n, 4).

Offset 1, canonical program `A391978.P3035766027264411343`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*C(n+1, 4)` (program `A391978.P3035766027264411343`, by `A391978.P3035766027264411343.correct`). Lean does not check the parsing of the name. -/
def A391978 (n : ℕ) : ℤ :=
  (A391978.P3035766027264411343.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)*C(n+1, 4)` (program `A391978.P3035766027264411343`, by `A391978.P3035766027264411343.correct`). Lean does not check the parsing of the name. -/
def A391978.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A393448.P14055743526228868140

`3*n²-2*n+1+floor(n²/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393448.P14055743526228868140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - (2 * n : ℤ) + (1 + ⌊(n ^ 2 : ℚ) / 4⌋)

end

end A393448.P14055743526228868140

noncomputable section

/-- A393448: a(n) = 3*n^2-2*n+1+floor(n^2/4).

Offset 0, canonical program `A393448.P14055743526228868140`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+1+floor(n²/4)` (program `A393448.P14055743526228868140`, by `A393448.P14055743526228868140.correct`). Lean does not check the parsing of the name. -/
def A393448 (n : ℕ) : ℤ :=
  A393448.P14055743526228868140.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+1+floor(n²/4)` (program `A393448.P14055743526228868140`, by `A393448.P14055743526228868140.correct`). Lean does not check the parsing of the name. -/
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

/-! ## A397444.P18144676665910635786

`3*n²+1-(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397444.P18144676665910635786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) + (1 - (-1) ^ n)

end

end A397444.P18144676665910635786

noncomputable section

/-- A397444: Anion excess of a saturated rock-salt (NaCl) cube with n atoms along each edge: a(n) = 3*n^2 + 1 - (-1)^n.

Offset 0, canonical program `A397444.P18144676665910635786`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+1-(-1)^n` (program `A397444.P18144676665910635786`, by `A397444.P18144676665910635786.correct`). Lean does not check the parsing of the name. -/
def A397444 (n : ℕ) : ℤ :=
  A397444.P18144676665910635786.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+1-(-1)^n` (program `A397444.P18144676665910635786`, by `A397444.P18144676665910635786.correct`). Lean does not check the parsing of the name. -/
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

/-! ## A390044.P13072216597836875870

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20, a(4)=35`
-/

namespace A390044.P13072216597836875870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 20, 35] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A390044.P13072216597836875870

noncomputable section

/-- A390044: Expansion of 1 / ((1-x)^4 - x^5).

Offset 0, canonical program `A390044.P13072216597836875870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390044 (n : ℕ) : ℤ :=
  A390044.P13072216597836875870.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390044.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A390340.P16572774752439610288

`5^n-n*(n+2)*3^(n-2)`
-/

namespace A390340.P16572774752439610288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) - (n : ℚ) * ((n + 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A390340.P16572774752439610288

noncomputable section

/-- A390340: Expansion of e.g.f. exp(3*x)*(exp(2*x) - x^2 - x).

Offset 0, canonical program `A390340.P16572774752439610288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390340.P16572774752439610288.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390340.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A390398.P9376756281885315291

`a(n-1)*(a(n-1)-1)/2+2` with `a(0)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390398.P9376756281885315291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * ((a (n - 1) - 1) / 2) + 2

end

end A390398.P9376756281885315291

noncomputable section

/-- A390398: a(2) = 4; for n >= 3, a(n) = a(n-1)*(a(n-1) - 1)/2 + 2.

Offset 2, canonical program `A390398.P9376756281885315291`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390398 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390398.P9376756281885315291.a (n - 2))

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

/-! ## A390565.P5617041101202316392

`2*a(n-1)-a(n-3)-a(n-4)+2*a(n-6)-a(n-7)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=16, a(4)=37, a(5)=70, a(6)=120`
-/

namespace A390565.P5617041101202316392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5, 16, 37, 70, 120] fun n a =>
  2 * a (n - 1) - a (n - 3) - a (n - 4) + 2 * a (n - 6) - a (n - 7)

end

end A390565.P5617041101202316392

noncomputable section

/-- A390565: a(n) = floor(n^2/3 + n^3/2).

Offset 0, canonical program `A390565.P5617041101202316392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390565 (n : ℕ) : ℤ :=
  A390565.P5617041101202316392.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390565.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A390874.P4517966652782976358

`3*(n+1)*(13+(-1)^(n+1)+12*(n+1)²)`
-/

namespace A390874.P4517966652782976358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℤ) * (13 + (-1) ^ (n + 1) + (12 * (n + 1) ^ 2 : ℤ)))

end

end A390874.P4517966652782976358

noncomputable section

/-- A390874: Molecular topological index of the n-necklace graph.

Offset 1, canonical program `A390874.P4517966652782976358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390874 (n : ℕ) : ℤ :=
  A390874.P4517966652782976358.a (n - 1)

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

/-! ## A390969.P850087858273006255

`6*(23*n²+30*n+10)*(3*n+2)!/((2*n+5)!*n!)`
-/

namespace A390969.P850087858273006255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * ((23 * n ^ 2 + 30 * n + 10) * Nat.factorial (3 * n + 2)) : ℚ) / (Nat.factorial (2 * n + 5) * Nat.factorial n : ℚ)

end

end A390969.P850087858273006255

noncomputable section

/-- A390969: a(n) = (1/(2*n+1)) * Sum_{k=0..n} (k+1)^3 * (2*k+1) * binomial(3*n-k,n-k).

Offset 0, canonical program `A390969.P850087858273006255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390969 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390969.P850087858273006255.a n)

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

/-! ## A391165.P9253162246122243950

`(108*(n+1)*(n-1)+109)*(8*(n+1)-7)`
-/

namespace A391165.P9253162246122243950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (108 * ((n + 1 : ℤ) * ((n : ℤ) - 1)) + 109) * ((8 * (n + 1) : ℤ) - 7)

end

end A391165.P9253162246122243950

noncomputable section

/-- A391165: Primitive cubic pyritohedral numbers: a(n) = 864*n^3 - 2484*n^2 + 2384*n - 763.

Offset 1, canonical program `A391165.P9253162246122243950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391165 (n : ℕ) : ℤ :=
  A391165.P9253162246122243950.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391165.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391166.P1529948811248607110

`(108*(n+1)*(n-1)+109)*(16*(n+1)-15)`
-/

namespace A391166.P1529948811248607110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (108 * ((n + 1 : ℤ) * ((n : ℤ) - 1)) + 109) * ((16 * (n + 1) : ℤ) - 15)

end

end A391166.P1529948811248607110

noncomputable section

/-- A391166: Body-centered cubic pyritohedral numbers: a(n) = 1728*n^3 - 5076*n^2 + 4984*n - 1635.

Offset 1, canonical program `A391166.P1529948811248607110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391166 (n : ℕ) : ℤ :=
  A391166.P1529948811248607110.a (n - 1)

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

/-! ## A391483.P1888191190427754883

`n^(n*(n-1)/2)*(n-1)^n`
-/

namespace A391483.P1888191190427754883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2) : ℝ) * (((n : ℤ) - 1) ^ n : ℝ)

end

end A391483.P1888191190427754883

noncomputable section

/-- A391483: Number of labeled commutative magmas with n elements and no idempotents.

Offset 0, canonical program `A391483.P1888191190427754883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391483 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391483.P1888191190427754883.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391537.P5300249215654894678

`floor((n+1)*n/4)+n+1`
-/

namespace A391537.P5300249215654894678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((n : ℚ) / 4)⌋ + (n + 1 : ℤ)

end

end A391537.P5300249215654894678

noncomputable section

/-- A391537: Guaranteed win if opponent chooses one of two baskets and the player chooses the coins with values from 1 to n (see Comments for details).

Offset 1, canonical program `A391537.P5300249215654894678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391537 (n : ℕ) : ℤ :=
  A391537.P5300249215654894678.a (n - 1)

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

/-! ## A391778.P5970385303346255917

`(n+1)*n*(n-1)²*2^(n-3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391778.P5970385303346255917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n : ℤ) * ((n : ℤ) - 1) ^ 2) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) / 3

end

end A391778.P5970385303346255917

noncomputable section

/-- A391778: a(n) = n*(n-1)*(n- 2)^2*2^(n-4)/3.

Offset 1, canonical program `A391778.P5970385303346255917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391778 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391778.P5970385303346255917.a (n - 1))

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

/-! ## A391993.P4920641651700192990

`n*(6*n+8)`
-/

namespace A391993.P4920641651700192990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (6 * n + 8)

end

end A391993.P4920641651700192990

noncomputable section

/-- A391993: Expansion of (2*x*(x - 7))/(x - 1)^3.

Offset 0, canonical program `A391993.P4920641651700192990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391993 (n : ℕ) : ℤ :=
  (A391993.P4920641651700192990.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391994.P7886539702032281155

`(3*n%2+n*((n-3)*n-1))/6`
-/

namespace A391994.P7886539702032281155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((3 * (n % 2) : ℕ) : ℤ) + (n : ℤ) * (((n : ℤ) - 3) * (n : ℤ) - 1) : ℚ) / 6

end

end A391994.P7886539702032281155

noncomputable section

/-- A391994: Expansion of (x^2*(3*x - 1))/((x - 1)^4*(x + 1)).

Offset 0, canonical program `A391994.P7886539702032281155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391994.P7886539702032281155.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391994.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A392172.P12726136664377208999

`n²*(n*(17*n-18)+15)/2+1`
-/

namespace A392172.P12726136664377208999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * (((n : ℤ) * ((17 * n : ℤ) - 18) + 15 : ℚ) / 2) + 1

end

end A392172.P12726136664377208999

noncomputable section

/-- A392172: Number of regions formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

Offset 0, canonical program `A392172.P12726136664377208999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392172.P12726136664377208999.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392173.P10029979832866011926

`n*(n*(n*(17*n-18)+3)+8)/2+4`
-/

namespace A392173.P10029979832866011926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) * ((n : ℤ) * ((17 * n : ℤ) - 18) + 3) + 8 : ℚ) / 2) + 4

end

end A392173.P10029979832866011926

noncomputable section

/-- A392173: Total number of vertices in the graph (see A392172) formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

Offset 0, canonical program `A392173.P10029979832866011926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392173 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392173.P10029979832866011926.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392174.P4529706163782577259

`n²*(n*(17*n-18)+9)/4+n+1`
-/

namespace A392174.P4529706163782577259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * (((n : ℤ) * ((17 * n : ℤ) - 18) + 9 : ℚ) / 4) + (n + 1 : ℚ)

end

end A392174.P4529706163782577259

noncomputable section

/-- A392174: One-fourth of the total number of edges in the graph (see A392172) formed when n points are placed in general position on each edge of a square and a chord is drawn from each point to the 3*n points on the other three sides.

Offset 0, canonical program `A392174.P4529706163782577259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392174 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392174.P4529706163782577259.a n)

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

/-! ## A392266.P222196880196698309

`(3^n+2*n*3^(n-1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392266.P222196880196698309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℚ) + 2 * ((n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 1) / 4

end

end A392266.P222196880196698309

noncomputable section

/-- A392266: a(n) = (3^n + 2*n*3^(n-1) - 1)/4.

Offset 0, canonical program `A392266.P222196880196698309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392266.P222196880196698309.a n)

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

/-! ## A392315.P18306522817607464159

`16^(n+1)-3^(n+1)-3*(5*3^(n+1)-7)*(n+1)/2-1`
-/

namespace A392315.P18306522817607464159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((16 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) : ℚ) - 3 * (((5 * 3 ^ (n + 1) : ℤ) - 7 : ℚ) * ((n + 1 : ℚ) / 2)) - 1

end

end A392315.P18306522817607464159

noncomputable section

/-- A392315: Number of vertex cuts in the n-necklace graph.

Offset 1, canonical program `A392315.P18306522817607464159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392315 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392315.P18306522817607464159.a (n - 1))

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

/-! ## A392441.P3794209140023531880

`(n+1)*n*(12*(n+1)^3+6*(n+1)²-5*(n+1)-2)/6`
-/

namespace A392441.P3794209140023531880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n : ℚ) * (((12 * (n + 1) ^ 3 + 6 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) - 2 : ℚ) / 6))

end

end A392441.P3794209140023531880

noncomputable section

/-- A392441: a(n) is the sum of n consecutive triangular numbers immediately preceding a triangular number T(k), which is also equal to the sum of n-1 consecutive triangular numbers immediately following T(k).

Offset 1, canonical program `A392441.P3794209140023531880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392441.P3794209140023531880.a (n - 1))

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

/-! ## A392540.P7570308741182241746

`2*a(n-1)-a(n-2)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A392540.P7570308741182241746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5)

end

end A392540.P7570308741182241746

noncomputable section

/-- A392540: Expansion of 1 / ((1-x)^2 - x^5).

Offset 0, canonical program `A392540.P7570308741182241746`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392540 (n : ℕ) : ℤ :=
  A392540.P7570308741182241746.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392540.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392541.P15112023792059150852

`2*a(n-1)-a(n-2)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6`
-/

namespace A392541.P15112023792059150852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 6)

end

end A392541.P15112023792059150852

noncomputable section

/-- A392541: Expansion of 1 / ((1-x)^2 - x^6).

Offset 0, canonical program `A392541.P15112023792059150852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392541 (n : ℕ) : ℤ :=
  A392541.P15112023792059150852.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392541.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392542.P13229108704363111603

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20, a(4)=35, a(5)=56`
-/

namespace A392542.P13229108704363111603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 20, 35, 56] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 6)

end

end A392542.P13229108704363111603

noncomputable section

/-- A392542: Expansion of 1 / ((1-x)^4 - x^6).

Offset 0, canonical program `A392542.P13229108704363111603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392542 (n : ℕ) : ℤ :=
  A392542.P13229108704363111603.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392542.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392543.P6815897204202962049

`2*a(n-1)-a(n-2)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`
-/

namespace A392543.P6815897204202962049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 6, 7] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7)

end

end A392543.P6815897204202962049

noncomputable section

/-- A392543: Expansion of 1 / ((1-x)^2 - x^7).

Offset 0, canonical program `A392543.P6815897204202962049`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392543 (n : ℕ) : ℤ :=
  A392543.P6815897204202962049.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392544.P5473336932776811811

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-7)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=15, a(5)=21, a(6)=28`
-/

namespace A392544.P5473336932776811811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 10, 15, 21, 28] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + a (n - 7)

end

end A392544.P5473336932776811811

noncomputable section

/-- A392544: Expansion of 1 / ((1-x)^3 - x^7).

Offset 0, canonical program `A392544.P5473336932776811811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392544 (n : ℕ) : ℤ :=
  A392544.P5473336932776811811.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392545.P2137315405785307038

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20, a(4)=35, a(5)=56, a(6)=84`
-/

namespace A392545.P2137315405785307038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 20, 35, 56, 84] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 7)

end

end A392545.P2137315405785307038

noncomputable section

/-- A392545: Expansion of 1 / ((1-x)^4 - x^7).

Offset 0, canonical program `A392545.P2137315405785307038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392545 (n : ℕ) : ℤ :=
  A392545.P2137315405785307038.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392545.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A393148.P11486900165006145874

`1/24*(n+1)*(n+2)*((n+4)²+11*(n+4)-48)`
-/

namespace A393148.P11486900165006145874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * ((n + 1 : ℤ) * ((n + 2 : ℤ) * (((n + 4) ^ 2 + 11 * (n + 4) : ℤ) - 48)) : ℚ)

end

end A393148.P11486900165006145874

noncomputable section

/-- A393148: Partial sums of truncated triangular pyramid numbers.

Offset 4, canonical program `A393148.P11486900165006145874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393148 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393148.P11486900165006145874.a (n - 4))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393231.P14108678653433797065

`n*((n+1)²+2*(n+1)-2)/2`
-/

namespace A393231.P14108678653433797065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((((n + 1) ^ 2 + 2 * (n + 1) : ℤ) - 2 : ℚ) / 2)

end

end A393231.P14108678653433797065

noncomputable section

/-- A393231: Expansion of x^2 * (3+x-x^2) / (1-x)^4.

Offset 1, canonical program `A393231.P14108678653433797065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393231.P14108678653433797065.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393231.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A393327.P2666079404015355865`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*n*(n+3)*(n+4)` (program `A393327.P7276106265590861866`, by `A393327.P7276106265590861866.correct`). Lean does not check the parsing of the name. -/
def A393327 (n : ℕ) : ℤ :=
  A393327.P2666079404015355865.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/2*n*(n+3)*(n+4)` (program `A393327.P7276106265590861866`, by `A393327.P7276106265590861866.correct`). Lean does not check the parsing of the name. -/
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

/-! ## A393462.P49494892326626812

`n*(1+(-1)^n+12*n²)/2`
-/

namespace A393462.P49494892326626812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((1 + (-1) ^ n + (12 * n ^ 2 : ℤ) : ℚ) / 2)

end

end A393462.P49494892326626812

noncomputable section

/-- A393462: Wiener index of the n-necklace graph.

Offset 0, canonical program `A393462.P49494892326626812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393462 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393462.P49494892326626812.a n)

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

/-! ## A393503.P3194221935496736481

`(77*4^(n+1)-128)*(n+1)/6`
-/

namespace A393503.P3194221935496736481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((77 * 4 ^ (n + 1) : ℤ) - 128 : ℚ) * ((n + 1 : ℚ) / 6)

end

end A393503.P3194221935496736481

noncomputable section

/-- A393503: Number of paths in the n-necklace graph.

Offset 1, canonical program `A393503.P3194221935496736481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393503.P3194221935496736481.a (n - 1))

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

/-! ## A394185.P3057466086792669667

`n^3/6+3*n²+41*n/6+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394185.P3057466086792669667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) / 6 + (3 * n ^ 2 : ℚ) + 41 * ((n : ℚ) / 6) + 3

end

end A394185.P3057466086792669667

noncomputable section

/-- A394185: a(n) = n^3/6 + 3*n^2 + 41*n/6 + 3.

Offset 0, canonical program `A394185.P3057466086792669667`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394185 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394185.P3057466086792669667.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394231.P2842930966010198029

`(5*(2*n-1)*a(n-1)-17*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=5`
-/

namespace A394231.P2842930966010198029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (5 * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1)) - 17 * (((n : ℤ) - 1 : ℚ) * a (n - 2))) / (n : ℚ)

end

end A394231.P2842930966010198029

noncomputable section

/-- A394231: Expansion of 1 / sqrt(1 - 10*x + 17*x^2).

Offset 0, canonical program `A394231.P2842930966010198029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394231.P2842930966010198029.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394232.P11440644091885688878

`(6*(2*n-1)*a(n-1)-28*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=6`
-/

namespace A394232.P11440644091885688878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (6 * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1)) - 28 * (((n : ℤ) - 1 : ℚ) * a (n - 2))) / (n : ℚ)

end

end A394232.P11440644091885688878

noncomputable section

/-- A394232: Expansion of 1 / sqrt(1 - 12*x + 28*x^2).

Offset 0, canonical program `A394232.P11440644091885688878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394232 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394232.P11440644091885688878.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394232.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394233.P18114242671351722202

`(7*(2*n-1)*a(n-1)-41*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=7`
-/

namespace A394233.P18114242671351722202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  (7 * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1)) - 41 * (((n : ℤ) - 1 : ℚ) * a (n - 2))) / (n : ℚ)

end

end A394233.P18114242671351722202

noncomputable section

/-- A394233: Expansion of 1 / sqrt(1 - 14*x + 41*x^2).

Offset 0, canonical program `A394233.P18114242671351722202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394233 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394233.P18114242671351722202.a n)

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

/-! ## A394279.P16699470425089128447

`(n+2)*(3-3*(-1)^(n+1)+(n+1)*(n+2)*(n+3))/24`
-/

namespace A394279.P16699470425089128447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((3 - 3 * (-1) ^ (n + 1) + ((n + 1) * ((n + 2) * (n + 3)) : ℤ) : ℚ) / 24)

end

end A394279.P16699470425089128447

noncomputable section

/-- A394279: Number of induced cubes in the n X n black bishop graph.

Offset 1, canonical program `A394279.P16699470425089128447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394279 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394279.P16699470425089128447.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394293.P15085626387227442628

`(n+2)*(3*((-1)^(n+1)-1)+(n+1)*(n+2)*(n+3))/24`
-/

namespace A394293.P15085626387227442628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((3 * ((-1) ^ (n + 1) - 1) + ((n + 1) * ((n + 2) * (n + 3)) : ℤ) : ℚ) / 24)

end

end A394293.P15085626387227442628

noncomputable section

/-- A394293: Number of induced cubes in the n X n white bishop graph.

Offset 1, canonical program `A394293.P15085626387227442628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394293 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394293.P15085626387227442628.a (n - 1))

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

/-! ## A394644.P1936215928973515352

`a(n-1)+4*(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A394644.P1936215928973515352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + 4 * (((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3)))

end

end A394644.P1936215928973515352

noncomputable section

/-- A394644: Expansion of e.g.f. exp((4/3)*x^3+x).

Offset 0, canonical program `A394644.P1936215928973515352`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394644 (n : ℕ) : ℤ :=
  A394644.P1936215928973515352.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394826.P18188845966338608571

`(n+3)*(4*(n+1)²-5*(n+1)+3)/6`
-/

namespace A394826.P18188845966338608571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * (((4 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ) + 3 : ℚ) / 6)

end

end A394826.P18188845966338608571

noncomputable section

/-- A394826: The tetrahemihexahedral numbers.

Offset 1, canonical program `A394826.P18188845966338608571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394826 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394826.P18188845966338608571.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394829.P16321598995577039017

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=8, a(2)=10, a(3)=34, a(4)=38`
-/

namespace A394829.P16321598995577039017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 10, 34, 38] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A394829.P16321598995577039017

noncomputable section

/-- A394829: Numbers of the form h*(9*h+1), where h = 0, -1, 1, -2, 2, -3, 3, ...

Offset 0, canonical program `A394829.P16321598995577039017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394829 (n : ℕ) : ℤ :=
  A394829.P16321598995577039017.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394829.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394883.P15292011110206369933

`(n+1)²*(n+2)*(n+3)*(2*(n+1)+1)*(2*(n+1)+3)*(5*(n+1)-1)/360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394883.P15292011110206369933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((2 * (n + 1) + 1 : ℚ) * ((2 * (n + 1) + 3 : ℚ) * (((5 * (n + 1) : ℤ) - 1 : ℚ) / 360)))))

end

end A394883.P15292011110206369933

noncomputable section

/-- A394883: a(n) = n^2*(n + 1)*(n + 2)*(2*n + 1)*(2*n + 3)*(5*n - 1)/360.

Offset 1, canonical program `A394883.P15292011110206369933`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394883.P15292011110206369933.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394883.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A395421.P240790419776921196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395421 (n : ℕ) : ℤ :=
  A395421.P240790419776921196.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395421.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A395461.P8540018605767196582

`n*(n-1)*(n-2)²*(n²-7*n+18)/6`
-/

namespace A395461.P8540018605767196582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (((n : ℤ) - 1) * ((n : ℤ) - 2) ^ 2) : ℚ) * (((n ^ 2 : ℤ) - (7 * n : ℤ) + 18 : ℚ) / 6)

end

end A395461.P8540018605767196582

noncomputable section

/-- A395461: Expansion of e.g.f. x^3*(1 + x + x^2/2 + x^3/6)*exp(x).

Offset 0, canonical program `A395461.P8540018605767196582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395461 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395461.P8540018605767196582.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395476.P14998211615958281794

`n*(n-1)*(n-2)*(n²-5*n+8)/2`
-/

namespace A395476.P14998211615958281794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n ^ 2 : ℤ) - (5 * n : ℤ) + 8 : ℚ) / 2)))

end

end A395476.P14998211615958281794

noncomputable section

/-- A395476: Expansion of e.g.f. x^3*(1 + x + x^2/2)*exp(x).

Offset 0, canonical program `A395476.P14998211615958281794`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395476 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395476.P14998211615958281794.a n)

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

/-! ## A395540.P6725445220218879420

`floor(log2(n+1))+floor(log2(2*(n+1)/3))+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395540.P6725445220218879420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) + ⌊Real.logb 2 (2 * ((n + 1 : ℚ) / 3) : ℝ)⌋ + 3

end

end A395540.P6725445220218879420

noncomputable section

/-- A395540: a(n) = floor(log_2(n)) + floor(log_2(2*n/3)) + 3.

Offset 1, canonical program `A395540.P6725445220218879420`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1))+floor(log2(2*(n+1)/3))+3` (program `A395540.P6725445220218879420`, by `A395540.P6725445220218879420.correct`). Lean does not check the parsing of the name. -/
def A395540 (n : ℕ) : ℤ :=
  A395540.P6725445220218879420.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log2(n+1))+floor(log2(2*(n+1)/3))+3` (program `A395540.P6725445220218879420`, by `A395540.P6725445220218879420.correct`). Lean does not check the parsing of the name. -/
def A395540.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A395908.P13236808542064285687

`n*(n+1)*(n+2)*(n+3)*(n+5)*(n+8)/48`
-/

namespace A395908.P13236808542064285687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) * ((n + 5 : ℚ) * ((n + 8 : ℚ) / 48)))))

end

end A395908.P13236808542064285687

noncomputable section

/-- A395908: Series expansion of (27*x - 14*x^2 + 2*x^3) / (1 - x)^7.

Offset 0, canonical program `A395908.P13236808542064285687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395908.P13236808542064285687.a n)

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

/-! ## A395947.P18098628195110294713

`(2*(n+1)-1)*(3^(2*(n+1)-2)-1)/4`
-/

namespace A395947.P18098628195110294713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) * (((3 : ℚ) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ) - 1) / 4)

end

end A395947.P18098628195110294713

noncomputable section

/-- A395947: Expansion of e.g.f.: x*sinh(x)^2*cosh(x) (odd powers only).

Offset 1, canonical program `A395947.P18098628195110294713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395947.P18098628195110294713.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395947.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396111.P7594967389268569643

`(n^4)%(2*n+1)`
-/

namespace A396111.P7594967389268569643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % (2 * n + 1)

end

end A396111.P7594967389268569643

noncomputable section

/-- A396111: a(n) = n^4 mod (2*n+1).

Offset 0, canonical program `A396111.P7594967389268569643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396111 (n : ℕ) : ℤ :=
  (A396111.P7594967389268569643.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396111.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A396310.P3395709436228998990

`(8-7*n)²*n*(25*n-24)`
-/

namespace A396310.P3395709436228998990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 - (7 * n : ℤ)) ^ 2 * ((n : ℤ) * ((25 * n : ℤ) - 24))

end

end A396310.P3395709436228998990

noncomputable section

/-- A396310: a(n)/9! is the coefficient of x^9 in the Taylor expansion of the k-th iteration of sin(x).

Offset 0, canonical program `A396310.P3395709436228998990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396310 (n : ℕ) : ℤ :=
  A396310.P3395709436228998990.a n

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

/-! ## A396321.P15607565679689004584

`(n-2)*(n-1)²*n²*(n+1)²*((n+1)*((n+1)*(17*(n+1)-127)+300)-236)/120`
-/

namespace A396321.P15607565679689004584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 1) ^ 2 * (n ^ 2 : ℤ) * ((n + 1) ^ 2 : ℤ) : ℚ) * (((n + 1 : ℤ) * ((n + 1 : ℤ) * ((17 * (n + 1) : ℤ) - 127) + 300) - 236 : ℚ) / 120)

end

end A396321.P15607565679689004584

noncomputable section

/-- A396321: Number of n X n binary matrices with exactly 10 1's such that there are an even number of 1's in every row and column.

Offset 1, canonical program `A396321.P15607565679689004584`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396321 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396321.P15607565679689004584.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396321.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396344.P6303265132762839775

`4*a(n-2)-2*a(n-4)-2*a(n-6)+a(n-8)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=10, a(4)=13, a(5)=28, a(6)=39, a(7)=86`
-/

namespace A396344.P6303265132762839775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 5, 10, 13, 28, 39, 86] fun n a =>
  4 * a (n - 2) - 2 * a (n - 4) - 2 * a (n - 6) + a (n - 8)

end

end A396344.P6303265132762839775

noncomputable section

/-- A396344: Expansion of x * (3+4*x-7*x^2-6*x^3-x^4-4*x^5+3*x^6+2*x^7)/((1-x) * (1+x) * (1-3*x^2-x^4+x^6)).

Offset 1, canonical program `A396344.P6303265132762839775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396344 (n : ℕ) : ℤ :=
  A396344.P6303265132762839775.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396344.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396353.P16290749615290159952

`2*(n+1)*(2*(n+1)^3+3*(n+1)²+19*(n+1)-18)/3`
-/

namespace A396353.P16290749615290159952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) * (((2 * (n + 1) ^ 3 + 3 * (n + 1) ^ 2 + 19 * (n + 1) : ℤ) - 18 : ℚ) / 3))

end

end A396353.P16290749615290159952

noncomputable section

/-- A396353: Number of unsatisfiable 3-SAT formulas with n variables and 3 clauses in the multiset clause model.

Offset 1, canonical program `A396353.P16290749615290159952`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396353.P16290749615290159952.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396473.P4433085411227752813

`2*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A396473.P4433085411227752813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) + 4 * a (n - 2) - 2 * a (n - 3)

end

end A396473.P4433085411227752813

noncomputable section

/-- A396473: Expansion of g.f. (1 - 4*x^2)/(1 - 2*x - 4*x^2 + 2*x^3).

Offset 0, canonical program `A396473.P4433085411227752813`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396473 (n : ℕ) : ℤ :=
  A396473.P4433085411227752813.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396474.P15223094748339416202

`2*a(n-1)+7*a(n-2)+2*a(n-4)-2*a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=22, a(4)=72`
-/

namespace A396474.P15223094748339416202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 22, 72] fun n a =>
  2 * a (n - 1) + 7 * a (n - 2) + 2 * a (n - 4) - 2 * a (n - 5)

end

end A396474.P15223094748339416202

noncomputable section

/-- A396474: Expansion of g.f. (1 - 7*x^2 - 2*x^4)/(1 - 2*x - 7*x^2 - 2*x^4 + 2*x^5).

Offset 0, canonical program `A396474.P15223094748339416202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396474 (n : ℕ) : ℤ :=
  A396474.P15223094748339416202.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396474.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A396652.P17881013438402343694

`2*floor((n-1)/2)*(n+1+floor((n-1)/2))`
-/

namespace A396652.P17881013438402343694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((n : ℤ) - 1 : ℚ) / 2⌋ * ((n : ℤ) + (1 + ⌊((n : ℤ) - 1 : ℚ) / 2⌋))

end

end A396652.P17881013438402343694

noncomputable section

/-- A396652: a(n) = (2*n-3-(-1)^n)*(6*n+1-(-1)^n)/8.

Offset 0, canonical program `A396652.P17881013438402343694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396652 (n : ℕ) : ℤ :=
  A396652.P17881013438402343694.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396772.P9227977840855366882

`3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=4, a(4)=6`
-/

namespace A396772.P9227977840855366882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 4, 6] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A396772.P9227977840855366882

noncomputable section

/-- A396772: Expansion of x*(-1 + 4*x - 3*x^2 + x^3)/((1 - x)^2 * (1 - x + x^2)).

Offset 0, canonical program `A396772.P9227977840855366882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396772 (n : ℕ) : ℤ :=
  A396772.P9227977840855366882.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396772.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A396987.P12560411330405832947

`n^4*(n^8+3*n²+8)/12`
-/

namespace A396987.P12560411330405832947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℚ) * ((n ^ 8 + 3 * n ^ 2 + 8 : ℚ) / 12)

end

end A396987.P12560411330405832947

noncomputable section

/-- A396987: The number of n-colorings of the faces of the triakis tetrahedron up to rotation.

Offset 0, canonical program `A396987.P12560411330405832947`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396987 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396987.P12560411330405832947.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397063.P9075350849439926803

`ceil(2*π*sqrt((n+1)*(n+2)*(2*(n+1)+1)/6))`
-/

namespace A397063.P9075350849439926803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (Real.pi * Real.sqrt ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((2 * (n + 1) + 1 : ℚ) / 6)) : ℝ))⌉

end

end A397063.P9075350849439926803

noncomputable section

/-- A397063: a(n) is the smallest integer exceeding 2*Pi*sqrt(n*(n+1)*(2*n+1)/6).

Offset 1, canonical program `A397063.P9075350849439926803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397063 (n : ℕ) : ℤ :=
  A397063.P9075350849439926803.a (n - 1)

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

/-! ## A397233.P16904846483304531491

`a(n-4)+a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=0`
-/

namespace A397233.P16904846483304531491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1, 0] fun n a =>
  a (n - 4) + a (n - 5) + a (n - 7)

end

end A397233.P16904846483304531491

noncomputable section

/-- A397233: Expansion of 1/(1 - x^4 - x^5 - x^7).

Offset 0, canonical program `A397233.P16904846483304531491`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397233 (n : ℕ) : ℤ :=
  (A397233.P16904846483304531491.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397234.P30007454556681085

`a(n-1)+a(n-2)-a(n-3)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3, a(5)=4`
-/

namespace A397234.P30007454556681085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3) + a (n - 5) + a (n - 6)

end

end A397234.P30007454556681085

noncomputable section

/-- A397234: Expansion of 1/(1 - x - x^2 + x^3 - x^5 - x^6).

Offset 0, canonical program `A397234.P30007454556681085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397234 (n : ℕ) : ℤ :=
  A397234.P30007454556681085.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397234.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397235.P16841027313559173526

`2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11`
-/

namespace A397235.P16841027313559173526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 11] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3) + a (n - 4)

end

end A397235.P16841027313559173526

noncomputable section

/-- A397235: Expansion of 1/(1 - 2*x - x^2 + x^3 - x^4).

Offset 0, canonical program `A397235.P16841027313559173526`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397235 (n : ℕ) : ℤ :=
  A397235.P16841027313559173526.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397236.P2384413176571699851

`a(n-3)+a(n-4)+2*a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2, a(6)=1`
-/

namespace A397236.P2384413176571699851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 2, 1] fun n a =>
  a (n - 3) + a (n - 4) + 2 * a (n - 5) + a (n - 7)

end

end A397236.P2384413176571699851

noncomputable section

/-- A397236: Expansion of 1/(1 - x^3 - x^4 - 2*x^5 - x^7).

Offset 0, canonical program `A397236.P2384413176571699851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397236 (n : ℕ) : ℤ :=
  (A397236.P2384413176571699851.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397236.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397237.P2534805290605199781

`2*a(n-1)-a(n-2)+a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=11`
-/

namespace A397237.P2534805290605199781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 11] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) + 2 * a (n - 4) + a (n - 5)

end

end A397237.P2534805290605199781

noncomputable section

/-- A397237: Expansion of 1/(1 - 2*x + x^2 - x^3 - 2*x^4 - x^5).

Offset 0, canonical program `A397237.P2534805290605199781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397237 (n : ℕ) : ℤ :=
  A397237.P2534805290605199781.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397237.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A398137.P3855830843484190515

`6*a(n-1)-7*a(n-2)-6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=29, a(3)=126`
-/

namespace A398137.P3855830843484190515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 29, 126] fun n a =>
  6 * a (n - 1) - 7 * a (n - 2) - 6 * a (n - 3) - a (n - 4)

end

end A398137.P3855830843484190515

noncomputable section

/-- A398137: Expansion of generating function x / (1 - 3*x - x^2)^2.

Offset 1, canonical program `A398137.P3855830843484190515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398137 (n : ℕ) : ℤ :=
  A398137.P3855830843484190515.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398146.P8591804937843948446

`10*a(n-1)-23*a(n-2)-10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=77, a(3)=530`
-/

namespace A398146.P8591804937843948446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 77, 530] fun n a =>
  10 * a (n - 1) - 23 * a (n - 2) - 10 * a (n - 3) - a (n - 4)

end

end A398146.P8591804937843948446

noncomputable section

/-- A398146: Expansion of generating function x / (1 - 5*x - x^2)^2.

Offset 1, canonical program `A398146.P8591804937843948446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398146 (n : ℕ) : ℤ :=
  A398146.P8591804937843948446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398147.P10094956636827910896

`10*a(n-1)-27*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=1, a(1)=10, a(2)=73, a(3)=470`
-/

namespace A398147.P10094956636827910896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 73, 470] fun n a =>
  10 * a (n - 1) - 27 * a (n - 2) + 10 * a (n - 3) - a (n - 4)

end

end A398147.P10094956636827910896

noncomputable section

/-- A398147: Expansion of generating function x/(1-5*x+x^2)^2.

Offset 1, canonical program `A398147.P10094956636827910896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398147 (n : ℕ) : ℤ :=
  A398147.P10094956636827910896.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398152.P8923595621098961181

`n+1+ceil(n*(n+1)/4)+floor(n/2)`
-/

namespace A398152.P8923595621098961181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + (1 + ⌈(n : ℚ) * ((n + 1 : ℚ) / 4)⌉) + ⌊(n : ℚ) / 2⌋

end

end A398152.P8923595621098961181

noncomputable section

/-- A398152: a(n) is the least positive integer k for which there exists a composition of k of depth n, where at each iteration the consecutive absolute differences must be nonzero and pairwise distinct and may then be permuted arbitrarily.

Offset 0, canonical program `A398152.P8923595621098961181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398152 (n : ℕ) : ℤ :=
  A398152.P8923595621098961181.a n

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

`floor(sqrt(γ^-2*n))`
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

/-! ## A390342.P7640546398189468155

`ceil(∑[C(n, 2)/2])`
-/

namespace A390342.P7640546398189468155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A390342.P7640546398189468155

noncomputable section

/-- A390342: Upper (1/2)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

Offset 0, canonical program `A390342.P7640546398189468155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390342 (n : ℕ) : ℤ :=
  A390342.P7640546398189468155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390342.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391997.P8970929140163323982

`n²*∑[floor((n/2)²)]`
-/

namespace A391997.P8970929140163323982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391997.P8970929140163323982

noncomputable section

/-- A391997: a(n) = Sum_{k=0..n} floor((k/2)^2)*n^2. Row sums of A391996.

Offset 0, canonical program `A391997.P8970929140163323982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391997 (n : ℕ) : ℤ :=
  A391997.P8970929140163323982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392003.P12848275224664217783

`2*a(n-2)+a(n-1)+3` with `a(0)=0, a(1)=4`
-/

namespace A392003.P12848275224664217783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * a (n - 2) + (a (n - 1) + 3)

end

end A392003.P12848275224664217783

noncomputable section

/-- A392003: a(n) = (7*2^n - 9 + 5*(-1)^n) / 6.

Offset 1, canonical program `A392003.P12848275224664217783`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A392003 (n : ℕ) : ℤ :=
  (A392003.P12848275224664217783.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A392003.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393496.P2025961415179429325

`gcd(n, ∑[char[(2*n+1)²]])`
-/

namespace A393496.P2025961415179429325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A393496.P2025961415179429325

noncomputable section

/-- A393496: a(n) is the GCD of the X and Y-coordinates of the n-th point of the square spiral.

Offset 1, canonical program `A393496.P2025961415179429325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393496 (n : ℕ) : ℤ :=
  (A393496.P2025961415179429325.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393496.provenance : SequenceMachineLib.Provenance := .conjectured

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

