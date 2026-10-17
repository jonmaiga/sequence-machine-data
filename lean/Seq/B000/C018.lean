import SequenceMachineLib

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

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

/-! ## A142879.P17811025243095048848

`5*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=7, a(5)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142879.P17811025243095048848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5, 7, 9] fun n a =>
  5 * a (n - 3) - a (n - 6)

end

end A142879.P17811025243095048848

noncomputable section

/-- A142879: a(n) = 5*a(n-3) - a(n-6) with terms 1..6 as 0, 1, 2, 5, 7, 9.

Offset 1, canonical program `A142879.P17811025243095048848`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-3)-a(n-6)` (program `A142879.P17811025243095048848`, by `A142879.P17811025243095048848.correct`). Lean does not check the parsing of the name. -/
def A142879 (n : ℕ) : ℤ :=
  A142879.P17811025243095048848.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-3)-a(n-6)` (program `A142879.P17811025243095048848`, by `A142879.P17811025243095048848.correct`). Lean does not check the parsing of the name. -/
def A142879.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142880.P18428407147059641141

`7*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=8, a(5)=13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142880.P18428407147059641141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 8, 13] fun n a =>
  7 * a (n - 3) - a (n - 6)

end

end A142880.P18428407147059641141

noncomputable section

/-- A142880: a(n) = 7*a(n-3) - a(n-6).

Offset 0, canonical program `A142880.P18428407147059641141`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-3)-a(n-6)` (program `A142880.P18428407147059641141`, by `A142880.P18428407147059641141.correct`). Lean does not check the parsing of the name. -/
def A142880 (n : ℕ) : ℤ :=
  A142880.P18428407147059641141.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-3)-a(n-6)` (program `A142880.P18428407147059641141`, by `A142880.P18428407147059641141.correct`). Lean does not check the parsing of the name. -/
def A142880.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A142964.P13021207393841812729

`6*2^n-2*n-5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A142964.P13021207393841812729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 2 ^ n : ℤ) - (2 * n : ℤ) - 5

end

end A142964.P13021207393841812729

noncomputable section

/-- A142964: a(n) = 6*2^n - 2*n - 5.

Offset 0, canonical program `A142964.P13021207393841812729`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-2*n-5` (program `A142964.P13021207393841812729`, by `A142964.P13021207393841812729.correct`). Lean does not check the parsing of the name. -/
def A142964 (n : ℕ) : ℤ :=
  A142964.P13021207393841812729.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*2^n-2*n-5` (program `A142964.P13021207393841812729`, by `A142964.P13021207393841812729.correct`). Lean does not check the parsing of the name. -/
def A142964.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143089.P9061959236119344451

`a(n-a(n-1))+a(floor(2*n/3))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143089.P9061959236119344451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - a (n - 1)) + a ⌊2 * ((n : ℚ) / 3)⌋.toNat

end

end A143089.P9061959236119344451

noncomputable section

/-- A143089: a(n) = a(n - a(n-1)) + a(floor(2*n/3)).

Offset 0, canonical program `A143089.P9061959236119344451`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(floor(2*n/3))` (program `A143089.P9061959236119344451`, by `A143089.P9061959236119344451.correct`). Lean does not check the parsing of the name. -/
def A143089 (n : ℕ) : ℤ :=
  (A143089.P9061959236119344451.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(floor(2*n/3))` (program `A143089.P9061959236119344451`, by `A143089.P9061959236119344451.correct`). Lean does not check the parsing of the name. -/
def A143089.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143091.P5706214802048736645

`a(floor(2*n/3))+a(floor(n/3))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143091.P5706214802048736645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊2 * ((n : ℚ) / 3)⌋.toNat + a ⌊(n : ℚ) / 3⌋.toNat

end

end A143091.P5706214802048736645

noncomputable section

/-- A143091: a(n) = a(floor(2n/3)) + a(floor(n/3)) starting a(0)=a(1)=1.

Offset 0, canonical program `A143091.P5706214802048736645`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(2*n/3))+a(floor(n/3))` (program `A143091.P5706214802048736645`, by `A143091.P5706214802048736645.correct`). Lean does not check the parsing of the name. -/
def A143091 (n : ℕ) : ℤ :=
  (A143091.P5706214802048736645.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(2*n/3))+a(floor(n/3))` (program `A143091.P5706214802048736645`, by `A143091.P5706214802048736645.correct`). Lean does not check the parsing of the name. -/
def A143091.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143092.P13976556858226943251

`a(n-a(n-1))+a(a(floor(2*n/3)))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143092.P13976556858226943251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - a (n - 1)) + a (a ⌊2 * ((n : ℚ) / 3)⌋.toNat)

end

end A143092.P13976556858226943251

noncomputable section

/-- A143092: a(n) = a(n - a(n - 1)) + a(a(floor(2*n/3))) with a(0)=a(1)=1.

Offset 0, canonical program `A143092.P13976556858226943251`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(a(floor(2*n/3)))` (program `A143092.P13976556858226943251`, by `A143092.P13976556858226943251.correct`). Lean does not check the parsing of the name. -/
def A143092 (n : ℕ) : ℤ :=
  (A143092.P13976556858226943251.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-a(n-1))+a(a(floor(2*n/3)))` (program `A143092.P13976556858226943251`, by `A143092.P13976556858226943251.correct`). Lean does not check the parsing of the name. -/
def A143092.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143096.P18196558353757811506

`2*a(n-1)-1` with `a(0)=1, a(1)=4, a(2)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143096.P18196558353757811506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  2 * a (n - 1) - 1

end

end A143096.P18196558353757811506

noncomputable section

/-- A143096: a(n) = 2*a(n-1)-1, with a(1)=1, a(2)=4, a(3)=5.

Offset 1, canonical program `A143096.P18196558353757811506`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A143096.P18196558353757811506`, by `A143096.P18196558353757811506.correct`). Lean does not check the parsing of the name. -/
def A143096 (n : ℕ) : ℤ :=
  A143096.P18196558353757811506.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-1` (program `A143096.P18196558353757811506`, by `A143096.P18196558353757811506.correct`). Lean does not check the parsing of the name. -/
def A143096.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143126.P18207668421137530438

`(1-2*n)*2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143126.P18207668421137530438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) * (2 ^ n : ℤ)

end

end A143126.P18207668421137530438

noncomputable section

/-- A143126: a(n) = (1-2n)*2^n.

Offset 0, canonical program `A143126.P18207668421137530438`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1-2*n)*2^n` (program `A143126.P18207668421137530438`, by `A143126.P18207668421137530438.correct`). Lean does not check the parsing of the name. -/
def A143126 (n : ℕ) : ℤ :=
  A143126.P18207668421137530438.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1-2*n)*2^n` (program `A143126.P18207668421137530438`, by `A143126.P18207668421137530438.correct`). Lean does not check the parsing of the name. -/
def A143126.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143438.P11754367932249617540

`a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=2, a(5)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143438.P11754367932249617540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 2, 2] fun n a =>
  a (n - 2) + a (n - 3) + a (n - 4) - a (n - 6)

end

end A143438.P11754367932249617540

noncomputable section

/-- A143438: a(n) = a(n-2) + a(n-3) + a(n-4) - a(n-6), with a(0) = a(2) = a(3) = 1, a(1) = 0 and a(4) = a(5) = 2.

Offset 0, canonical program `A143438.P11754367932249617540`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)-a(n-6)` (program `A143438.P11754367932249617540`, by `A143438.P11754367932249617540.correct`). Lean does not check the parsing of the name. -/
def A143438 (n : ℕ) : ℤ :=
  A143438.P11754367932249617540.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)-a(n-6)` (program `A143438.P11754367932249617540`, by `A143438.P11754367932249617540.correct`). Lean does not check the parsing of the name. -/
def A143438.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143684.P12425716329374048392

`2*a(n-1)*a(n-2)+1` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143684.P12425716329374048392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a (n - 1) * a (n - 2) + 1

end

end A143684.P12425716329374048392

noncomputable section

/-- A143684: a(0) = a(1) = 0; thereafter a(n) = 2*a(n-1)*a(n-2) + 1.

Offset 0, canonical program `A143684.P12425716329374048392`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)+1` (program `A143684.P12425716329374048392`, by `A143684.P12425716329374048392.correct`). Lean does not check the parsing of the name. -/
def A143684 (n : ℕ) : ℤ :=
  (A143684.P12425716329374048392.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*a(n-2)+1` (program `A143684.P12425716329374048392`, by `A143684.P12425716329374048392.correct`). Lean does not check the parsing of the name. -/
def A143684.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143699.P17203194959322300068

`19*a(n-1)-41*a(n-2)+19*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=19, a(3)=319`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143699.P17203194959322300068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 19, 319] fun n a =>
  19 * a (n - 1) - 41 * a (n - 2) + 19 * a (n - 3) - a (n - 4)

end

end A143699.P17203194959322300068

noncomputable section

/-- A143699: a(n) = 19*a(n-1) - 41*a(n-2) + 19*a(n-3) - a(n-4).

Offset 0, canonical program `A143699.P17203194959322300068`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*a(n-1)-41*a(n-2)+19*a(n-3)-a(n-4)` (program `A143699.P17203194959322300068`, by `A143699.P17203194959322300068.correct`). Lean does not check the parsing of the name. -/
def A143699 (n : ℕ) : ℤ :=
  A143699.P17203194959322300068.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*a(n-1)-41*a(n-2)+19*a(n-3)-a(n-4)` (program `A143699.P17203194959322300068`, by `A143699.P17203194959322300068.correct`). Lean does not check the parsing of the name. -/
def A143699.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143857.P12452860434972836747

`n+(n+1)*(n+2)^(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143857.P12452860434972836747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (n + 1) * (n + 2) ^ (n + 3)

end

end A143857.P12452860434972836747

noncomputable section

/-- A143857: a(n) = n + (n+1)*(n+2)^(n+3).

Offset 0, canonical program `A143857.P12452860434972836747`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)*(n+2)^(n+3)` (program `A143857.P12452860434972836747`, by `A143857.P12452860434972836747.correct`). Lean does not check the parsing of the name. -/
def A143857 (n : ℕ) : ℤ :=
  (A143857.P12452860434972836747.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)*(n+2)^(n+3)` (program `A143857.P12452860434972836747`, by `A143857.P12452860434972836747.correct`). Lean does not check the parsing of the name. -/
def A143857.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143984.P17902868996798147111

`(a(n-1)-2)²-n` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143984.P17902868996798147111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - 2) ^ 2 - (n : ℤ)

end

end A143984.P17902868996798147111

noncomputable section

/-- A143984: a(0) = 0; thereafter, a(n) = (a(n - 1) - 2)^2 - n.

Offset 0, canonical program `A143984.P17902868996798147111`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)-2)²-n` (program `A143984.P17902868996798147111`, by `A143984.P17902868996798147111.correct`). Lean does not check the parsing of the name. -/
def A143984 (n : ℕ) : ℤ :=
  A143984.P17902868996798147111.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)-2)²-n` (program `A143984.P17902868996798147111`, by `A143984.P17902868996798147111.correct`). Lean does not check the parsing of the name. -/
def A143984.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143985.P17456414753200187811

`(a(n-1)+2)²-n` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143985.P17456414753200187811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 2) ^ 2 - (n : ℤ)

end

end A143985.P17456414753200187811

noncomputable section

/-- A143985: a(0) = 0; thereafter, a(n) = (a(n - 1) + 2)^2 - n.

Offset 0, canonical program `A143985.P17456414753200187811`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+2)²-n` (program `A143985.P17456414753200187811`, by `A143985.P17456414753200187811.correct`). Lean does not check the parsing of the name. -/
def A143985 (n : ℕ) : ℤ :=
  A143985.P17456414753200187811.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+2)²-n` (program `A143985.P17456414753200187811`, by `A143985.P17456414753200187811.correct`). Lean does not check the parsing of the name. -/
def A143985.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144030.P13299106377937463667

`(a(n-1)-2)²-n^3` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144030.P13299106377937463667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - 2) ^ 2 - (n ^ 3 : ℤ)

end

end A144030.P13299106377937463667

noncomputable section

/-- A144030: a(0) = 0; thereafter, a(n) = (a(n - 1) - 2)^2 - n^3.

Offset 0, canonical program `A144030.P13299106377937463667`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)-2)²-n^3` (program `A144030.P13299106377937463667`, by `A144030.P13299106377937463667.correct`). Lean does not check the parsing of the name. -/
def A144030 (n : ℕ) : ℤ :=
  A144030.P13299106377937463667.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)-2)²-n^3` (program `A144030.P13299106377937463667`, by `A144030.P13299106377937463667.correct`). Lean does not check the parsing of the name. -/
def A144030.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144033.P11030969011472715185

`(a(n-1)+2)²-n^3` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144033.P11030969011472715185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + 2) ^ 2 - (n ^ 3 : ℤ)

end

end A144033.P11030969011472715185

noncomputable section

/-- A144033: a(n) = (a(n-1)+2)^2 - n^3 with a(0) = 0.

Offset 0, canonical program `A144033.P11030969011472715185`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+2)²-n^3` (program `A144033.P11030969011472715185`, by `A144033.P11030969011472715185.correct`). Lean does not check the parsing of the name. -/
def A144033 (n : ℕ) : ℤ :=
  A144033.P11030969011472715185.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+2)²-n^3` (program `A144033.P11030969011472715185`, by `A144033.P11030969011472715185.correct`). Lean does not check the parsing of the name. -/
def A144033.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144301.P7302560893740921483

`(2*n-3)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144301.P7302560893740921483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n : ℤ) - 3) * a (n - 1) + a (n - 2)

end

end A144301.P7302560893740921483

noncomputable section

/-- A144301: a(0) = a(1) = 1; thereafter a(n) = (2*n-3)*a(n-1) + a(n-2).

Offset 0, canonical program `A144301.P7302560893740921483`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3)*a(n-1)+a(n-2)` (program `A144301.P7302560893740921483`, by `A144301.P7302560893740921483.correct`). Lean does not check the parsing of the name. -/
def A144301 (n : ℕ) : ℤ :=
  A144301.P7302560893740921483.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3)*a(n-1)+a(n-2)` (program `A144301.P7302560893740921483`, by `A144301.P7302560893740921483.correct`). Lean does not check the parsing of the name. -/
def A144301.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144410.P11718001685947677624

`4*(3*n+1)*(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144410.P11718001685947677624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((3 * n + 1) * (3 * n + 2))

end

end A144410.P11718001685947677624

noncomputable section

/-- A144410: a(n) = 4*(3*n+1)*(3*n+2).

Offset 0, canonical program `A144410.P11718001685947677624`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(3*n+1)*(3*n+2)` (program `A144410.P11718001685947677624`, by `A144410.P11718001685947677624.correct`). Lean does not check the parsing of the name. -/
def A144410 (n : ℕ) : ℤ :=
  (A144410.P11718001685947677624.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(3*n+1)*(3*n+2)` (program `A144410.P11718001685947677624`, by `A144410.P11718001685947677624.correct`). Lean does not check the parsing of the name. -/
def A144410.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144459.P3022142960089245478

`(3*n+1)*(5*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144459.P3022142960089245478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) * (5 * n + 1)

end

end A144459.P3022142960089245478

noncomputable section

/-- A144459: a(n) = (3*n+1)*(5*n+1).

Offset 0, canonical program `A144459.P3022142960089245478`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*(5*n+1)` (program `A144459.P3022142960089245478`, by `A144459.P3022142960089245478.correct`). Lean does not check the parsing of the name. -/
def A144459 (n : ℕ) : ℤ :=
  (A144459.P3022142960089245478.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n+1)*(5*n+1)` (program `A144459.P3022142960089245478`, by `A144459.P3022142960089245478.correct`). Lean does not check the parsing of the name. -/
def A144459.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144479.P3142805812909204977

`8*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144479.P3142805812909204977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  8 * a (n - 1) - a (n - 2)

end

end A144479.P3142805812909204977

noncomputable section

/-- A144479: a(0)=1, a(1)=3, a(n) = 8*a(n-1) - a(n-2).

Offset 0, canonical program `A144479.P3142805812909204977`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A144479.P3142805812909204977`, by `A144479.P3142805812909204977.correct`). Lean does not check the parsing of the name. -/
def A144479 (n : ℕ) : ℤ :=
  A144479.P3142805812909204977.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-a(n-2)` (program `A144479.P3142805812909204977`, by `A144479.P3142805812909204977.correct`). Lean does not check the parsing of the name. -/
def A144479.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144555.P7867283677367482726

`14*n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144555.P7867283677367482726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 * n ^ 2

end

end A144555.P7867283677367482726

noncomputable section

/-- A144555: a(n) = 14*n^2.

Offset 0, canonical program `A144555.P7867283677367482726`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n²` (program `A144555.P7867283677367482726`, by `A144555.P7867283677367482726.correct`). Lean does not check the parsing of the name. -/
def A144555 (n : ℕ) : ℤ :=
  (A144555.P7867283677367482726.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*n²` (program `A144555.P7867283677367482726`, by `A144555.P7867283677367482726.correct`). Lean does not check the parsing of the name. -/
def A144555.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144619.P2448196201524924374

`19*n+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144619.P2448196201524924374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 * n + 8

end

end A144619.P2448196201524924374

noncomputable section

/-- A144619: a(n) = 19*n + 8.

Offset 0, canonical program `A144619.P2448196201524924374`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*n+8` (program `A144619.P2448196201524924374`, by `A144619.P2448196201524924374.correct`). Lean does not check the parsing of the name. -/
def A144619 (n : ℕ) : ℤ :=
  (A144619.P2448196201524924374.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*n+8` (program `A144619.P2448196201524924374`, by `A144619.P2448196201524924374.correct`). Lean does not check the parsing of the name. -/
def A144619.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144704.P2568151218366369639

`4^n*(1-2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144704.P2568151218366369639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * (1 - (2 * n : ℤ))

end

end A144704.P2568151218366369639

noncomputable section

/-- A144704: a(n) = 4^n*(1-2*n).

Offset 0, canonical program `A144704.P2568151218366369639`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(1-2*n)` (program `A144704.P2568151218366369639`, by `A144704.P2568151218366369639.correct`). Lean does not check the parsing of the name. -/
def A144704 (n : ℕ) : ℤ :=
  A144704.P2568151218366369639.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*(1-2*n)` (program `A144704.P2568151218366369639`, by `A144704.P2568151218366369639.correct`). Lean does not check the parsing of the name. -/
def A144704.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144720.P16312110491340689107

`4*a(n-1)-a(n-2)` with `a(0)=2, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144720.P16312110491340689107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  4 * a (n - 1) - a (n - 2)

end

end A144720.P16312110491340689107

noncomputable section

/-- A144720: a(0) = 2, a(1) = 3, a(n) = 4 * a(n-1) - a(n-2).

Offset 0, canonical program `A144720.P16312110491340689107`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A144720.P16312110491340689107`, by `A144720.P16312110491340689107.correct`). Lean does not check the parsing of the name. -/
def A144720 (n : ℕ) : ℤ :=
  A144720.P16312110491340689107.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A144720.P16312110491340689107`, by `A144720.P16312110491340689107.correct`). Lean does not check the parsing of the name. -/
def A144720.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144721.P461849978553322276

`4*a(n-1)-a(n-2)` with `a(0)=2, a(1)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144721.P461849978553322276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  4 * a (n - 1) - a (n - 2)

end

end A144721.P461849978553322276

noncomputable section

/-- A144721: a(0) = 2, a(1) = 5, a(n) = 4 * a(n-1) - a(n-2).

Offset 0, canonical program `A144721.P461849978553322276`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A144721.P461849978553322276`, by `A144721.P461849978553322276.correct`). Lean does not check the parsing of the name. -/
def A144721 (n : ℕ) : ℤ :=
  A144721.P461849978553322276.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A144721.P461849978553322276`, by `A144721.P461849978553322276.correct`). Lean does not check the parsing of the name. -/
def A144721.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144743.P335265792207207101

`a(n-1)²-a(n-1)-1` with `a(0)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144743.P335265792207207101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) ^ 2 - a (n - 1) - 1

end

end A144743.P335265792207207101

noncomputable section

/-- A144743: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=3.

Offset 0, canonical program `A144743.P335265792207207101`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144743.P335265792207207101`, by `A144743.P335265792207207101.correct`). Lean does not check the parsing of the name. -/
def A144743 (n : ℕ) : ℤ :=
  A144743.P335265792207207101.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144743.P335265792207207101`, by `A144743.P335265792207207101.correct`). Lean does not check the parsing of the name. -/
def A144743.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144744.P16271121413282469676

`a(n-1)²-a(n-1)-1` with `a(0)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144744.P16271121413282469676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ 2 - a (n - 1) - 1

end

end A144744.P16271121413282469676

noncomputable section

/-- A144744: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=4.

Offset 0, canonical program `A144744.P16271121413282469676`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144744.P16271121413282469676`, by `A144744.P16271121413282469676.correct`). Lean does not check the parsing of the name. -/
def A144744 (n : ℕ) : ℤ :=
  A144744.P16271121413282469676.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144744.P16271121413282469676`, by `A144744.P16271121413282469676.correct`). Lean does not check the parsing of the name. -/
def A144744.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144746.P7396142646705993564

`a(n-1)²-a(n-1)-1` with `a(0)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144746.P7396142646705993564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) ^ 2 - a (n - 1) - 1

end

end A144746.P7396142646705993564

noncomputable section

/-- A144746: a(n) = a(n-1)^2 - a(n-1) - 1, a(0)=6.

Offset 0, canonical program `A144746.P7396142646705993564`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144746.P7396142646705993564`, by `A144746.P7396142646705993564.correct`). Lean does not check the parsing of the name. -/
def A144746 (n : ℕ) : ℤ :=
  A144746.P7396142646705993564.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144746.P7396142646705993564`, by `A144746.P7396142646705993564.correct`). Lean does not check the parsing of the name. -/
def A144746.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144747.P8079210187507290134

`a(n-1)²-a(n-1)-1` with `a(0)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144747.P8079210187507290134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) ^ 2 - a (n - 1) - 1

end

end A144747.P8079210187507290134

noncomputable section

/-- A144747: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=7.

Offset 0, canonical program `A144747.P8079210187507290134`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144747.P8079210187507290134`, by `A144747.P8079210187507290134.correct`). Lean does not check the parsing of the name. -/
def A144747 (n : ℕ) : ℤ :=
  A144747.P8079210187507290134.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144747.P8079210187507290134`, by `A144747.P8079210187507290134.correct`). Lean does not check the parsing of the name. -/
def A144747.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144748.P702255789053459195

`a(n-1)²-a(n-1)-1` with `a(0)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144748.P702255789053459195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) ^ 2 - a (n - 1) - 1

end

end A144748.P702255789053459195

noncomputable section

/-- A144748: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=8.

Offset 0, canonical program `A144748.P702255789053459195`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144748.P702255789053459195`, by `A144748.P702255789053459195.correct`). Lean does not check the parsing of the name. -/
def A144748 (n : ℕ) : ℤ :=
  A144748.P702255789053459195.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-a(n-1)-1` (program `A144748.P702255789053459195`, by `A144748.P702255789053459195.correct`). Lean does not check the parsing of the name. -/
def A144748.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144965.P11107754875323805116

`4*n*(4*n²+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144965.P11107754875323805116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (4 * n ^ 2 + 1))

end

end A144965.P11107754875323805116

noncomputable section

/-- A144965: a(n) = 4*n*(4*n^2 + 1).

Offset 0, canonical program `A144965.P11107754875323805116`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(4*n²+1)` (program `A144965.P11107754875323805116`, by `A144965.P11107754875323805116.correct`). Lean does not check the parsing of the name. -/
def A144965 (n : ℕ) : ℤ :=
  (A144965.P11107754875323805116.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(4*n²+1)` (program `A144965.P11107754875323805116`, by `A144965.P11107754875323805116.correct`). Lean does not check the parsing of the name. -/
def A144965.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A145028.P8288650275237202974

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145028.P8288650275237202974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4)

end

end A145028.P8288650275237202974

noncomputable section

/-- A145028: a(n) = a(n-1) + a(n-2) + a(n-3) + a(n-4).

Offset 1, canonical program `A145028.P8288650275237202974`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A145028.P8288650275237202974`, by `A145028.P8288650275237202974.correct`). Lean does not check the parsing of the name. -/
def A145028 (n : ℕ) : ℤ :=
  (A145028.P8288650275237202974.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)` (program `A145028.P8288650275237202974`, by `A145028.P8288650275237202974.correct`). Lean does not check the parsing of the name. -/
def A145028.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A145030.P8528091955268604378

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145030.P8528091955268604378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + a (n - 4) + a (n - 5) + a (n - 6)

end

end A145030.P8528091955268604378

noncomputable section

/-- A145030: Hexanacci numbers: a(n)=a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6), {0,1,2,3,4,5...}.

Offset 1, canonical program `A145030.P8528091955268604378`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` (program `A145030.P8528091955268604378`, by `A145030.P8528091955268604378.correct`). Lean does not check the parsing of the name. -/
def A145030 (n : ℕ) : ℤ :=
  (A145030.P8528091955268604378.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` (program `A145030.P8528091955268604378`, by `A145030.P8528091955268604378.correct`). Lean does not check the parsing of the name. -/
def A145030.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A142248.P11630301448832299196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142248 (n : ℕ) : ℤ :=
  A142248.P11630301448832299196.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142248.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A142590.P4629705192595639990

`3*n*(3*n+4)*(37-27*cos(n*π)-6*cos(n*π/2))/64`
-/

namespace A142590.P4629705192595639990
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos ((n : ℝ) * Real.pi) - 6 * Real.cos ((n : ℝ) * (Real.pi / 2))) / 64)))

end

end A142590.P4629705192595639990

noncomputable section

/-- A142590: First trisection of A061037 (Balmer line series of the hydrogen atom).

Offset 0, canonical program `A142590.P4629705192595639990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142590 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142590.P4629705192595639990.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142590.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A142704.P181094486100627498

`2*n*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A142704.P181094486100627498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * (n * (a (n - 2) + a (n - 3)))

end

end A142704.P181094486100627498

noncomputable section

/-- A142704: A generalized factorial level recursion of a Padovan type: a(n) = b(n)*(a(n-2) + a(n-3)) with b(n) = b(n-1) + k and k=2.

Offset 0, canonical program `A142704.P181094486100627498`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142704 (n : ℕ) : ℤ :=
  (A142704.P181094486100627498.a n : ℤ)

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

/-! ## A142881.P12448374588262497165

`7*a(n-3)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=13`
-/

namespace A142881.P12448374588262497165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 5, 13] fun n a =>
  7 * a (n - 3) - a (n - 6)

end

end A142881.P12448374588262497165

noncomputable section

/-- A142881: a(0) = 0, a(1) = 1, after which, if n=3k: a(n) = 2*a(n-1) - a(n-2), if n=3k+1: a(n) = a(n-1) + a(n-2), if n=3k+2: a(n) = 2*a(n-1) + a(n-2).

Offset 0, canonical program `A142881.P12448374588262497165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142881 (n : ℕ) : ℤ :=
  A142881.P12448374588262497165.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142954.P13949039837921024115

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=2, a(1)=10, a(2)=6`
-/

namespace A142954.P13949039837921024115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10, 6] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A142954.P13949039837921024115

noncomputable section

/-- A142954: a(n) = 2*n + 3 + 3*(-1)^n.

Offset 1, canonical program `A142954.P13949039837921024115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142954 (n : ℕ) : ℤ :=
  A142954.P13949039837921024115.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142970.P3574131498627403957

`6*a(n-1)+(2*n-1)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A142970.P3574131498627403957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) + ((2 * n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A142970.P3574131498627403957

noncomputable section

/-- A142970: Numerators of n-th approximants of a continued fraction for Pi-3.

Offset 0, canonical program `A142970.P3574131498627403957`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142970 (n : ℕ) : ℤ :=
  A142970.P3574131498627403957.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142970.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A142993.P18274640297058133941

`(2*n+1)²*(4*n²+4*n+3)/3`
-/

namespace A142993.P18274640297058133941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℚ) * ((4 * n ^ 2 + 4 * n + 3 : ℚ) / 3)

end

end A142993.P18274640297058133941

noncomputable section

/-- A142993: Crystal ball sequence for the lattice C_4.

Offset 0, canonical program `A142993.P18274640297058133941`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142993 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142993.P18274640297058133941.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A142994.P573324860095555304

`(2*n+1)*(32*n^4+64*n^3+88*n²+56*n+15)/15`
-/

namespace A142994.P573324860095555304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((32 * n ^ 4 + 64 * n ^ 3 + 88 * n ^ 2 + 56 * n + 15 : ℚ) / 15)

end

end A142994.P573324860095555304

noncomputable section

/-- A142994: Crystal ball sequence for the lattice C_5.

Offset 0, canonical program `A142994.P573324860095555304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142994 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A142994.P573324860095555304.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A142994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143008.P13091787350660927345

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=13, a(2)=73, a(3)=253, a(4)=661`
-/

namespace A143008.P13091787350660927345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 73, 253, 661] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A143008.P13091787350660927345

noncomputable section

/-- A143008: Crystal ball sequence for the A2 x A2 lattice.

Offset 0, canonical program `A143008.P13091787350660927345`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143008 (n : ℕ) : ℤ :=
  A143008.P13091787350660927345.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143009.P9178222337739295087

`n*(n+1)*(5*n*(n+1)*(2*n*(n+1)+11)+66)/18+1`
-/

namespace A143009.P9178222337739295087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((5 * (n * ((n + 1) * (2 * (n * (n + 1)) + 11))) + 66 : ℚ) / 18)) + 1

end

end A143009.P9178222337739295087

noncomputable section

/-- A143009: Crystal ball sequence for the A3 x A3 lattice.

Offset 0, canonical program `A143009.P9178222337739295087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143009.P9178222337739295087.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143025.P7295114158589934816

`(19-2*cos(n*π/2)-13*cos(n*π))/4`
-/

namespace A143025.P7295114158589934816
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (19 - 2 * Real.cos ((n : ℝ) * (Real.pi / 2)) - 13 * Real.cos ((n : ℝ) * Real.pi)) / 4

end

end A143025.P7295114158589934816

noncomputable section

/-- A143025: Period length 4: repeat [1, 8, 2, 8].

Offset 0, canonical program `A143025.P7295114158589934816`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143025 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143025.P7295114158589934816.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143055.P17435612322469794173

`2*a(n-1)+a(n-2)-2*a(n-3)-2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A143055.P17435612322469794173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - 2 * a (n - 4)

end

end A143055.P17435612322469794173

noncomputable section

/-- A143055: The real part of complex sequence: a(n) = a(n-1) + (1+i)*a(n-2).

Offset 1, canonical program `A143055.P17435612322469794173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143055 (n : ℕ) : ℤ :=
  A143055.P17435612322469794173.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143056.P18209776613735790959

`2*a(n-1)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A143056.P18209776613735790959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) - a (n - 4)

end

end A143056.P18209776613735790959

noncomputable section

/-- A143056: a(n) = Re(b(n)) where b(n)=(1+i)*b(n-1)+b(n-2), with b(1)=0, b(2)=1.

Offset 1, canonical program `A143056.P18209776613735790959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143056 (n : ℕ) : ℤ :=
  A143056.P18209776613735790959.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143058.P7543764193946913404

`1+6*n+7*C(n, 2)+C(n, 3)`
-/

namespace A143058.P7543764193946913404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 6 * n + 7 * Nat.choose n 2 + Nat.choose n 3

end

end A143058.P7543764193946913404

noncomputable section

/-- A143058: a(n) = (n^3 + 18*n^2 + 17*n + 6)/6.

Offset 0, canonical program `A143058.P7543764193946913404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143058 (n : ℕ) : ℤ :=
  (A143058.P7543764193946913404.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143059.P18305518706827547223

`1+10*n+25*C(n, 2)+15*C(n, 3)+C(n, 4)`
-/

namespace A143059.P18305518706827547223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 10 * n + 25 * Nat.choose n 2 + 15 * Nat.choose n 3 + Nat.choose n 4

end

end A143059.P18305518706827547223

noncomputable section

/-- A143059: a(n) = (n^4 + 46*n^3 - 169*n^2 + 146*n + 24)/24.

Offset 0, canonical program `A143059.P18305518706827547223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143059 (n : ℕ) : ℤ :=
  (A143059.P18305518706827547223.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143060.P10382728850650260018

`1+15*n+65*C(n, 2)+90*C(n, 3)+31*C(n, 4)+C(n, 5)`
-/

namespace A143060.P10382728850650260018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 15 * n + 65 * Nat.choose n 2 + 90 * Nat.choose n 3 + 31 * Nat.choose n 4 + Nat.choose n 5

end

end A143060.P10382728850650260018

noncomputable section

/-- A143060: a(n) = (n^5 + 145*n^4 + 905*n^3 + 155*n^2 + 594*n + 120)/120.

Offset 0, canonical program `A143060.P10382728850650260018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143060 (n : ℕ) : ℤ :=
  (A143060.P10382728850650260018.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143079.P10941601985697999514

`18*a(n-1)-72*a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A143079.P10941601985697999514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  18 * a (n - 1) - 72 * a (n - 2)

end

end A143079.P10941601985697999514

noncomputable section

/-- A143079: a(n) = ((9+sqrt(9))^n + (9-sqrt(9))^n)/2.

Offset 0, canonical program `A143079.P10941601985697999514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143079 (n : ℕ) : ℤ :=
  A143079.P10941601985697999514.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143079.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A143166.P18077000197895037110

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=22, a(3)=73`
-/

namespace A143166.P18077000197895037110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 22, 73] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A143166.P18077000197895037110

noncomputable section

/-- A143166: a(n) = n*(8*n^2 + 1)/3.

Offset 0, canonical program `A143166.P18077000197895037110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143166 (n : ℕ) : ℤ :=
  A143166.P18077000197895037110.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143167.P4541633315842431862

`(8*n+1)*a(n-1)-2*(4*n-1)*(2*n-1)*a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A143167.P4541633315842431862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  (8 * n + 1 : ℤ) * a (n - 1) - 2 * (((4 * n : ℤ) - 1) * (((2 * n : ℤ) - 1) * a (n - 2)))

end

end A143167.P4541633315842431862

noncomputable section

/-- A143167: Second column of triangle A000369: |S2(-3;n+2,2)|.

Offset 0, canonical program `A143167.P4541633315842431862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143167 (n : ℕ) : ℤ :=
  A143167.P4541633315842431862.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143167.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143208.P8023691845898272452

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=2, a(1)=-1, a(2)=2, a(3)=8`
-/

namespace A143208.P8023691845898272452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 2, 8] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143208.P8023691845898272452

noncomputable section

/-- A143208: a(1)=2; for n>1, a(n) = (4-9*n+3*n^2)/2.

Offset 1, canonical program `A143208.P8023691845898272452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143208 (n : ℕ) : ℤ :=
  A143208.P8023691845898272452.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143351.P11933880707993888510

`a(n-2)+a(n-4)+a(n-7)+a(n-8)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=2, a(5)=0, a(6)=3, a(7)=1, a(8)=6, a(9)=3`
-/

namespace A143351.P11933880707993888510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 2, 0, 3, 1, 6, 3] fun n a =>
  a (n - 2) + a (n - 4) + a (n - 7) + a (n - 8) + a (n - 9) + a (n - 10)

end

end A143351.P11933880707993888510

noncomputable section

/-- A143351: Expansion of x/(1 -x^2 -x^4 -x^7 -x^8 -x^9 -x^10).

Offset 1, canonical program `A143351.P11933880707993888510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143351 (n : ℕ) : ℤ :=
  (A143351.P11933880707993888510.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143388.P15053924194393028484

`(n²+3*n+6)*(3*n+1)!/(n!*(2*n+3)!)`
-/

namespace A143388.P15053924194393028484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 3 * n + 6) * Nat.factorial (3 * n + 1) : ℚ) / (Nat.factorial n * Nat.factorial (2 * n + 3) : ℚ)

end

end A143388.P15053924194393028484

noncomputable section

/-- A143388: a(n) = Sum_{k=0..n} A033184(n,k)*A033184(n,n-k), where Catalan triangle entry A033184(n,k) = C(2*n-k,n-k)*(k+1)/(n+1).

Offset 0, canonical program `A143388.P15053924194393028484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143388.P15053924194393028484.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143388.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143412.P2749167425533159828

`4*(2*n-1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A143412.P2749167425533159828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (((2 * n : ℤ) - 1) * a (n - 1)) + a (n - 2)

end

end A143412.P2749167425533159828

noncomputable section

/-- A143412: Main diagonal of A143410.

Offset 0, canonical program `A143412.P2749167425533159828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143412 (n : ℕ) : ℤ :=
  A143412.P2749167425533159828.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143447.P14825984408228202474

`a(n-1)+2*a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9`
-/

namespace A143447.P14825984408228202474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 7, 9] fun n a =>
  a (n - 1) + 2 * a (n - 5)

end

end A143447.P14825984408228202474

noncomputable section

/-- A143447: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=4.

Offset 0, canonical program `A143447.P14825984408228202474`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143447 (n : ℕ) : ℤ :=
  (A143447.P14825984408228202474.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143448.P3254243809753339265

`a(n-1)+2*a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11`
-/

namespace A143448.P3254243809753339265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 7, 9, 11] fun n a =>
  a (n - 1) + 2 * a (n - 6)

end

end A143448.P3254243809753339265

noncomputable section

/-- A143448: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=5.

Offset 0, canonical program `A143448.P3254243809753339265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143448 (n : ℕ) : ℤ :=
  (A143448.P3254243809753339265.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143449.P3199993395001958040

`a(n-1)+2*a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11, a(6)=13`
-/

namespace A143449.P3199993395001958040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 7, 9, 11, 13] fun n a =>
  a (n - 1) + 2 * a (n - 7)

end

end A143449.P3199993395001958040

noncomputable section

/-- A143449: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=6.

Offset 0, canonical program `A143449.P3199993395001958040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143449 (n : ℕ) : ℤ :=
  (A143449.P3199993395001958040.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143450.P16904335284547195350

`a(n-1)+2*a(n-8)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11, a(6)=13, a(7)=15`
-/

namespace A143450.P16904335284547195350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 7, 9, 11, 13, 15] fun n a =>
  a (n - 1) + 2 * a (n - 8)

end

end A143450.P16904335284547195350

noncomputable section

/-- A143450: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=7.

Offset 0, canonical program `A143450.P16904335284547195350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143450 (n : ℕ) : ℤ :=
  (A143450.P16904335284547195350.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143451.P9982836323594047119

`a(n-1)+2*a(n-9)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11, a(6)=13, a(7)=15, a(8)=17`
-/

namespace A143451.P9982836323594047119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 7, 9, 11, 13, 15, 17] fun n a =>
  a (n - 1) + 2 * a (n - 9)

end

end A143451.P9982836323594047119

noncomputable section

/-- A143451: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=8.

Offset 0, canonical program `A143451.P9982836323594047119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143451 (n : ℕ) : ℤ :=
  (A143451.P9982836323594047119.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143452.P11058570766975261578

`a(n-1)+2*a(n-10)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=11, a(6)=13, a(7)=15, a(8)=17, a(9)=19`
-/

namespace A143452.P11058570766975261578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 7, 9, 11, 13, 15, 17, 19] fun n a =>
  a (n - 1) + 2 * a (n - 10)

end

end A143452.P11058570766975261578

noncomputable section

/-- A143452: Expansion of 1/(x^k*(1-x-2*x^(k+1))) for k=9.

Offset 0, canonical program `A143452.P11058570766975261578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143452 (n : ℕ) : ℤ :=
  (A143452.P11058570766975261578.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143454.P6317735602270532277

`a(n-1)+3*a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=10`
-/

namespace A143454.P6317735602270532277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 7, 10] fun n a =>
  a (n - 1) + 3 * a (n - 4)

end

end A143454.P6317735602270532277

noncomputable section

/-- A143454: Expansion of 1/(x^k*(1 - x - 3*x^(k+1))) for k=3.

Offset 0, canonical program `A143454.P6317735602270532277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143454 (n : ℕ) : ℤ :=
  (A143454.P6317735602270532277.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143458.P16503020875395749549

`a(n-1)+3*a(n-8)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=10, a(4)=13, a(5)=16, a(6)=19, a(7)=22`
-/

namespace A143458.P16503020875395749549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 7, 10, 13, 16, 19, 22] fun n a =>
  a (n - 1) + 3 * a (n - 8)

end

end A143458.P16503020875395749549

noncomputable section

/-- A143458: Expansion of 1/(x^k*(1-x-3*x^(k+1))) for k=7.

Offset 0, canonical program `A143458.P16503020875395749549`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143458 (n : ℕ) : ℤ :=
  (A143458.P16503020875395749549.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143458.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A143607.P7330589250483350144

`2*a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7, a(4)=10`
-/

namespace A143607.P7330589250483350144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4, 7, 10] fun n a =>
  2 * a (n - 2) + a (n - 4)

end

end A143607.P7330589250483350144

noncomputable section

/-- A143607: Numerators of principal and intermediate convergents to 2^(1/2).

Offset 1, canonical program `A143607.P7330589250483350144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143607 (n : ℕ) : ℤ :=
  (A143607.P7330589250483350144.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143608.P14849968275609373896

`6*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`
-/

namespace A143608.P14849968275609373896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 7] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A143608.P14849968275609373896

noncomputable section

/-- A143608: A005319 and A002315 interleaved.

Offset 0, canonical program `A143608.P14849968275609373896`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143608 (n : ℕ) : ℤ :=
  A143608.P14849968275609373896.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143609.P8190246402705195611

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=10, a(3)=17`
-/

namespace A143609.P8190246402705195611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 10, 17] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A143609.P8190246402705195611

noncomputable section

/-- A143609: Numerators of the upper principal and intermediate convergents to 2^(1/2).

Offset 1, canonical program `A143609.P8190246402705195611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143609 (n : ℕ) : ℤ :=
  A143609.P8190246402705195611.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143618.P2559159887696931591

`a(n-3)` with `a(0)=5, a(1)=8, a(2)=7, a(3)=9, a(4)=6, a(5)=2`
-/

namespace A143618.P2559159887696931591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 8, 7, 9, 6, 2] fun n a =>
  a (n - 3)

end

end A143618.P2559159887696931591

noncomputable section

/-- A143618: Decimal expansion of 127/216.

Offset 0, canonical program `A143618.P2559159887696931591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143618 (n : ℕ) : ℤ :=
  (A143618.P2559159887696931591.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143621.P12119797298665009394

`(-1)^C(n, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143621.P12119797298665009394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.choose n 4

end

end A143621.P12119797298665009394

noncomputable section

/-- A143621: a(n) = (-1)^binomial(n,4): Periodic sequence 1,1,1,1,-1,-1,-1,-1,... .

Offset 0, canonical program `A143621.P12119797298665009394`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^C(n, 4)` (program `A143621.P12119797298665009394`, by `A143621.P12119797298665009394.correct`). Lean does not check the parsing of the name. -/
def A143621 (n : ℕ) : ℤ :=
  A143621.P12119797298665009394.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^C(n, 4)` (program `A143621.P12119797298665009394`, by `A143621.P12119797298665009394.correct`). Lean does not check the parsing of the name. -/
def A143621.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143622.P11102468292862419588

`(-1)^floor(n/8)`
-/

namespace A143622.P11102468292862419588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 8⌋ : ℤ)

end

end A143622.P11102468292862419588

noncomputable section

/-- A143622: a(n) = (-1)^binomial(n,8): Periodic sequence 1,1,1,1,1,1,1,1,-1,-1,-1,-1,-1,-1,-1,-1,... .

Offset 0, canonical program `A143622.P11102468292862419588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143622.P11102468292862419588.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143642.P14548711916889783629

`4*a(n-3)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=12`
-/

namespace A143642.P14548711916889783629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 5, 7, 12] fun n a =>
  4 * a (n - 3) - a (n - 6)

end

end A143642.P14548711916889783629

noncomputable section

/-- A143642: Numerators of principal and intermediate convergents to 3^(1/2).

Offset 1, canonical program `A143642.P14548711916889783629`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143642 (n : ℕ) : ℤ :=
  A143642.P14548711916889783629.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143643.P8174844702871081505

`4*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=12`
-/

namespace A143643.P8174844702871081505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 12] fun n a =>
  4 * a (n - 2) - a (n - 4)

end

end A143643.P8174844702871081505

noncomputable section

/-- A143643: Numerators of the lower principal convergents and the lower intermediate convergents to 3^(1/2).

Offset 1, canonical program `A143643.P8174844702871081505`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143643 (n : ℕ) : ℤ :=
  A143643.P8174844702871081505.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143647.P14834715568352761673

`10*a(n-1)-22*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A143647.P14834715568352761673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  10 * a (n - 1) - 22 * a (n - 2)

end

end A143647.P14834715568352761673

noncomputable section

/-- A143647: a(n) = ((5 + sqrt(3))^n + (5 - sqrt(3))^n)/2.

Offset 0, canonical program `A143647.P14834715568352761673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143647 (n : ℕ) : ℤ :=
  A143647.P14834715568352761673.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143647.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143648.P10048607322197163001

`8*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A143648.P10048607322197163001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  8 * a (n - 1) - 10 * a (n - 2)

end

end A143648.P10048607322197163001

noncomputable section

/-- A143648: a(n) = ((4 + sqrt 6)^n + (4 - sqrt 6)^n)/2.

Offset 0, canonical program `A143648.P10048607322197163001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143648 (n : ℕ) : ℤ :=
  A143648.P10048607322197163001.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143648.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A143698.P9968800261778311667

`24*n²-12*n`
-/

namespace A143698.P9968800261778311667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 * n ^ 2 : ℤ) - (12 * n : ℤ)

end

end A143698.P9968800261778311667

noncomputable section

/-- A143698: 12 times hexagonal numbers: 12*n*(2*n-1).

Offset 0, canonical program `A143698.P9968800261778311667`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143698 (n : ℕ) : ℤ :=
  A143698.P9968800261778311667.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143698.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143750.P18400164735826066502

`10^C(n, 2)*(1-10^n)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143750.P18400164735826066502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ Nat.choose n 2 : ℚ) * ((1 - (10 ^ n : ℤ) : ℚ) / 9)

end

end A143750.P18400164735826066502

noncomputable section

/-- A143750: a(n)=10^C(n,2)*(1-10^n)/9.

Offset 0, canonical program `A143750.P18400164735826066502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143750 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143750.P18400164735826066502.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143795.P17906021588929670048

`a(n-2)+11` with `a(0)=1, a(1)=2`
-/

namespace A143795.P17906021588929670048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + 11

end

end A143795.P17906021588929670048

noncomputable section

/-- A143795: a(1) = 1, then for n > 1, a(n) = a(n - 1) + 1 for n even, or a(n) = a(n - 1) + 10 for n odd.

Offset 1, canonical program `A143795.P17906021588929670048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143795 (n : ℕ) : ℤ :=
  (A143795.P17906021588929670048.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143795.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143839.P17534353227838695729

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=24, a(2)=79`
-/

namespace A143839.P17534353227838695729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 79] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143839.P17534353227838695729

noncomputable section

/-- A143839: Ulam's spiral (SSE spoke).

Offset 1, canonical program `A143839.P17534353227838695729`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143839 (n : ℕ) : ℤ :=
  A143839.P17534353227838695729.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143856.P2675302589117971578

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=12, a(2)=55`
-/

namespace A143856.P2675302589117971578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 55] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143856.P2675302589117971578

noncomputable section

/-- A143856: Ulam's spiral (ENE spoke).

Offset 1, canonical program `A143856.P2675302589117971578`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143856 (n : ℕ) : ℤ :=
  A143856.P2675302589117971578.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143856.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143859.P17999720371320463927

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=18, a(2)=67`
-/

namespace A143859.P17999720371320463927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 67] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143859.P17999720371320463927

noncomputable section

/-- A143859: Ulam's spiral (WNW spoke).

Offset 1, canonical program `A143859.P17999720371320463927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143859 (n : ℕ) : ℤ :=
  A143859.P17999720371320463927.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143860.P10646978622553382407

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=16, a(2)=63`
-/

namespace A143860.P10646978622553382407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 16, 63] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A143860.P10646978622553382407

noncomputable section

/-- A143860: Ulam's spiral (NNW spoke).

Offset 1, canonical program `A143860.P10646978622553382407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143860 (n : ℕ) : ℤ :=
  A143860.P10646978622553382407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143918.P14184366314646277572

`(n-1)*a(n-1)+n+1` with `a(0)=1`
-/

namespace A143918.P14184366314646277572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + (n + 1 : ℤ)

end

end A143918.P14184366314646277572

noncomputable section

/-- A143918: G.f. A(x) satisfies: A(x) = 1/(1-x)^2 + x^2*A'(x).

Offset 0, canonical program `A143918.P14184366314646277572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143918 (n : ℕ) : ℤ :=
  A143918.P14184366314646277572.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143918.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143941.P16333314730129858088

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=14, a(2)=37, a(3)=76`
-/

namespace A143941.P16333314730129858088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 14, 37, 76] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A143941.P16333314730129858088

noncomputable section

/-- A143941: The Wiener index of a chain of n triangles (i.e., joined like VVV..VV; here V is a triangle!).

Offset 1, canonical program `A143941.P16333314730129858088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143941 (n : ℕ) : ℤ :=
  A143941.P16333314730129858088.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143943.P4855507385763086149

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=40, a(2)=114, a(3)=248`
-/

namespace A143943.P4855507385763086149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 40, 114, 248] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A143943.P4855507385763086149

noncomputable section

/-- A143943: The Wiener index of a chain of n squares joined at vertices (i.e., joined like <><><>...<>; here <> is a square!).

Offset 1, canonical program `A143943.P4855507385763086149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143943 (n : ℕ) : ℤ :=
  A143943.P4855507385763086149.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143943.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143975.P15597017707247908431

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9, a(4)=13`
-/

namespace A143975.P15597017707247908431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 9, 13] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A143975.P15597017707247908431

noncomputable section

/-- A143975: a(n) = floor(n*(n+3)/3).

Offset 1, canonical program `A143975.P15597017707247908431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143975 (n : ℕ) : ℤ :=
  A143975.P15597017707247908431.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143975.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143978.P13758902658485407541

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=13, a(4)=20`
-/

namespace A143978.P13758902658485407541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 8, 13, 20] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A143978.P13758902658485407541

noncomputable section

/-- A143978: a(n) = floor(2*n*(n+1)/3).

Offset 1, canonical program `A143978.P13758902658485407541`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143978 (n : ℕ) : ℤ :=
  A143978.P13758902658485407541.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143988.P11380688683622933754

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=13, a(2)=23`
-/

namespace A143988.P11380688683622933754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 13, 23] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A143988.P11380688683622933754

noncomputable section

/-- A143988: Numbers congruent to {5, 13} mod 18.

Offset 1, canonical program `A143988.P11380688683622933754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143988 (n : ℕ) : ℤ :=
  A143988.P11380688683622933754.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A143990.P759714326100056060

`n*(2*n-3)*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A143990.P759714326100056060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * (((2 * n : ℤ) - 3) * a (n - 1)) + (n : ℤ) * (((n : ℤ) - 1) * a (n - 2))

end

end A143990.P759714326100056060

noncomputable section

/-- A143990: a(n) = n!*A001515(n-1) with a(0) = 1.

Offset 0, canonical program `A143990.P759714326100056060`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143990 (n : ℕ) : ℤ :=
  A143990.P759714326100056060.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A143990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144044.P7845645983061189842

`14*a(n-1)+140*a(n-2)-1000*a(n-3)` with `a(0)=1, a(1)=4, a(2)=196`
-/

namespace A144044.P7845645983061189842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 196] fun n a =>
  14 * a (n - 1) + 140 * a (n - 2) - 1000 * a (n - 3)

end

end A144044.P7845645983061189842

noncomputable section

/-- A144044: a(n) = ((1+sqrt(11))^n-(1-sqrt(11))^n)^2/44.

Offset 1, canonical program `A144044.P7845645983061189842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144044 (n : ℕ) : ℤ :=
  A144044.P7845645983061189842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144065.P6303385319579030473

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=11, a(5)=14`
-/

namespace A144065.P6303385319579030473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6, 11, 14] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A144065.P6303385319579030473

noncomputable section

/-- A144065: Values of k such that the expression sqrt(4!*(k+1) + 1) yields an integer.

Offset 0, canonical program `A144065.P6303385319579030473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144065 (n : ℕ) : ℤ :=
  A144065.P6303385319579030473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144110.P9116872778778491633

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=1`
-/

namespace A144110.P9116872778778491633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 1] fun n a =>
  a (n - 1) - a (n - 3) + a (n - 4)

end

end A144110.P9116872778778491633

noncomputable section

/-- A144110: Period 6: repeat [2, 2, 2, 1, 1, 1].

Offset 0, canonical program `A144110.P9116872778778491633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144110 (n : ℕ) : ℤ :=
  A144110.P9116872778778491633.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144124.P10505907813292595966

`70*n^4+140*n^3+90*n²+20*n+1`
-/

namespace A144124.P10505907813292595966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  70 * n ^ 4 + 140 * n ^ 3 + 90 * n ^ 2 + 20 * n + 1

end

end A144124.P10505907813292595966

noncomputable section

/-- A144124: P_4(2n+1), the Legendre polynomial of order 4 at 2n+1.

Offset 0, canonical program `A144124.P10505907813292595966`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144124 (n : ℕ) : ℤ :=
  (A144124.P10505907813292595966.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144124.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144128.P17535624785552766843

`36*a(n-1)-a(n-2)` with `a(0)=1, a(1)=36`
-/

namespace A144128.P17535624785552766843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 36] fun n a =>
  36 * a (n - 1) - a (n - 2)

end

end A144128.P17535624785552766843

noncomputable section

/-- A144128: Chebyshev U(n,x) polynomial evaluated at x=18.

Offset 1, canonical program `A144128.P17535624785552766843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144128 (n : ℕ) : ℤ :=
  A144128.P17535624785552766843.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144129.P2880121179738500010

`(4*n²-3)*n`
-/

namespace A144129.P2880121179738500010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 2 : ℤ) - 3) * (n : ℤ)

end

end A144129.P2880121179738500010

noncomputable section

/-- A144129: a(n) = ChebyshevT(3, n).

Offset 0, canonical program `A144129.P2880121179738500010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144129 (n : ℕ) : ℤ :=
  A144129.P2880121179738500010.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144130.P7760986985961990642

`8*n^4-8*n²+1`
-/

namespace A144130.P7760986985961990642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 4 : ℤ) - (8 * n ^ 2 : ℤ) + 1

end

end A144130.P7760986985961990642

noncomputable section

/-- A144130: a(n) = ChebyshevT(4, n).

Offset 0, canonical program `A144130.P7760986985961990642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144130 (n : ℕ) : ℤ :=
  A144130.P7760986985961990642.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144130.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144138.P7220908367457548337

`8*n^3-4*n`
-/

namespace A144138.P7220908367457548337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 3 : ℤ) - (4 * n : ℤ)

end

end A144138.P7220908367457548337

noncomputable section

/-- A144138: Chebyshev polynomial of the second kind U(3,n).

Offset 0, canonical program `A144138.P7220908367457548337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144138 (n : ℕ) : ℤ :=
  A144138.P7220908367457548337.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144139.P1469581140721025765

`16*n^4-12*n²+1`
-/

namespace A144139.P1469581140721025765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n ^ 4 : ℤ) - (12 * n ^ 2 : ℤ) + 1

end

end A144139.P1469581140721025765

noncomputable section

/-- A144139: Chebyshev polynomial of the second kind U(4,n).

Offset 0, canonical program `A144139.P1469581140721025765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144139 (n : ℕ) : ℤ :=
  A144139.P1469581140721025765.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144181.P15257799986025908274

`a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=9`
-/

namespace A144181.P15257799986025908274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 9] fun n a =>
  a (n - 1) + 2 * a (n - 3)

end

end A144181.P15257799986025908274

noncomputable section

/-- A144181: INVERT transform of A118434, = row sums of triangle A144182.

Offset 0, canonical program `A144181.P15257799986025908274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144181 (n : ℕ) : ℤ :=
  (A144181.P15257799986025908274.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144229.P2171288786835170748

`(a(n-2)²+a(n-1))²` with `a(0)=1, a(1)=1`
-/

namespace A144229.P2171288786835170748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (a (n - 2) ^ 2 + a (n - 1)) ^ 2

end

end A144229.P2171288786835170748

noncomputable section

/-- A144229: The numerators of the convergents to the recursion x=1/(x^2+1).

Offset 0, canonical program `A144229.P2171288786835170748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144229 (n : ℕ) : ℤ :=
  (A144229.P2171288786835170748.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144297.P3633088966019040964

`(2*n+1)*a(n-1)-(4*n-5)*a(n-2)+2*(n-2)*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A144297.P3633088966019040964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) - ((4 * n : ℤ) - 5) * a (n - 2) + 2 * (((n : ℤ) - 2) * a (n - 3))

end

end A144297.P3633088966019040964

noncomputable section

/-- A144297: BINOMIAL transform of A001515.

Offset 0, canonical program `A144297.P3633088966019040964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144297 (n : ℕ) : ℤ :=
  A144297.P3633088966019040964.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144312.P14308186421867435590

`a(n-1)+25*n-10` with `a(0)=0`
-/

namespace A144312.P14308186421867435590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (25 * n : ℤ) - 10

end

end A144312.P14308186421867435590

noncomputable section

/-- A144312: a(n) = 5*n*(5*n + 1)/2.

Offset 0, canonical program `A144312.P14308186421867435590`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(5*n+1)/2` (program `A144312.P14387776071374767807`, by `A144312.P14387776071374767807.correct`). Lean does not check the parsing of the name. -/
def A144312 (n : ℕ) : ℤ :=
  A144312.P14308186421867435590.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(5*n+1)/2` (program `A144312.P14387776071374767807`, by `A144312.P14387776071374767807.correct`). Lean does not check the parsing of the name. -/
def A144312.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A144314.P11651119953513939805

`18*n²+3*n`
-/

namespace A144314.P11651119953513939805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 * n ^ 2 + 3 * n

end

end A144314.P11651119953513939805

noncomputable section

/-- A144314: a(n) = 3*n*(6*n + 1).

Offset 0, canonical program `A144314.P11651119953513939805`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144314 (n : ℕ) : ℤ :=
  (A144314.P11651119953513939805.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144314.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144414.P1914716571514799481

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=8, a(2)=39`
-/

namespace A144414.P1914716571514799481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 39] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2) + 4 * a (n - 3)

end

end A144414.P1914716571514799481

noncomputable section

/-- A144414: a(n) = 2*(4^n - 1)/3 - n.

Offset 1, canonical program `A144414.P1914716571514799481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144414 (n : ℕ) : ℤ :=
  A144414.P1914716571514799481.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144429.P14733041582403829773

`a(n-3)+6` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`
-/

namespace A144429.P14733041582403829773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6] fun n a =>
  a (n - 3) + 6

end

end A144429.P14733041582403829773

noncomputable section

/-- A144429: Starts 1 2 3 then successive terms have differences 1 2 3.

Offset 1, canonical program `A144429.P14733041582403829773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144429 (n : ℕ) : ℤ :=
  (A144429.P14733041582403829773.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144433.P16024093945098854949

`2*a(n-2)-a(n-4)` with `a(0)=8, a(1)=3, a(2)=16, a(3)=5`
-/

namespace A144433.P16024093945098854949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 3, 16, 5] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A144433.P16024093945098854949

noncomputable section

/-- A144433: Multiples of 8 interleaved with the sequence of odd numbers >= 3.

Offset 1, canonical program `A144433.P16024093945098854949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144433 (n : ℕ) : ℤ :=
  A144433.P16024093945098854949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144437.P2680265335679252657

`a(n-3)` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A144437.P2680265335679252657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 1] fun n a =>
  a (n - 3)

end

end A144437.P2680265335679252657

noncomputable section

/-- A144437: Period 3: repeat [3, 3, 1].

Offset 1, canonical program `A144437.P2680265335679252657`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144437 (n : ℕ) : ℤ :=
  (A144437.P2680265335679252657.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144437.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144449.P16913889913587546466

`(6*n+5)²-9`
-/

namespace A144449.P16913889913587546466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n + 5) ^ 2 : ℤ) - 9

end

end A144449.P16913889913587546466

noncomputable section

/-- A144449: a(n) = 4*(4 + 9*n^2 + 15*n).

Offset 0, canonical program `A144449.P16913889913587546466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144449 (n : ℕ) : ℤ :=
  A144449.P16913889913587546466.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144465.P6234886934766518351

`7*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=4, a(2)=23`
-/

namespace A144465.P6234886934766518351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 23] fun n a =>
  7 * a (n - 1) - 10 * a (n - 2)

end

end A144465.P6234886934766518351

noncomputable section

/-- A144465: a(n) = 5^n - 2^(n - 1) for n > 0; a(0) = 1.

Offset 0, canonical program `A144465.P6234886934766518351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144465 (n : ℕ) : ℤ :=
  A144465.P6234886934766518351.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144472.P12511744179752286426

`a(n-1)+2*a(n-2)` with `a(0)=-1, a(1)=2, a(2)=9`
-/

namespace A144472.P12511744179752286426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2, 9] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A144472.P12511744179752286426

noncomputable section

/-- A144472: Negative values along the main diagonal of the array defined by A020806 and its differences.

Offset 1, canonical program `A144472.P12511744179752286426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144472 (n : ℕ) : ℤ :=
  A144472.P12511744179752286426.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144476.P5377450236881497881

`a(n-4)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=3, a(4)=-2, a(5)=-2, a(6)=2, a(7)=1`
-/

namespace A144476.P5377450236881497881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, 3, -2, -2, 2, 1] fun n a =>
  a (n - 4) - a (n - 8)

end

end A144476.P5377450236881497881

noncomputable section

/-- A144476: Four interlaced copies of A117373.

Offset 1, canonical program `A144476.P5377450236881497881`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144476 (n : ℕ) : ℤ :=
  A144476.P5377450236881497881.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144499.P13172014164544406557

`((12*n²+8*n+3)*a(n-1)+(6*n+1)*a(n-2))/(6*n-5)` with `a(0)=1, a(1)=16`
-/

namespace A144499.P13172014164544406557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 16] fun n a =>
  ((12 * n ^ 2 + 8 * n + 3 : ℚ) * a (n - 1) + (6 * n + 1 : ℚ) * a (n - 2)) / ((6 * n : ℤ) - 5 : ℚ)

end

end A144499.P13172014164544406557

noncomputable section

/-- A144499: Column 3 of array in A144502.

Offset 0, canonical program `A144499.P13172014164544406557`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144499 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144499.P13172014164544406557.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144499.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A144533.P5343744003141746

`34*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=33`
-/

namespace A144533.P5343744003141746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 16, 33] fun n a =>
  34 * a (n - 2) - a (n - 4)

end

end A144533.P5343744003141746

noncomputable section

/-- A144533: Numerators of continued fraction convergents to sqrt(8/9).

Offset 0, canonical program `A144533.P5343744003141746`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144533 (n : ℕ) : ℤ :=
  A144533.P5343744003141746.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144534.P12479795918660244608

`34*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=17, a(3)=35`
-/

namespace A144534.P12479795918660244608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 17, 35] fun n a =>
  34 * a (n - 2) - a (n - 4)

end

end A144534.P12479795918660244608

noncomputable section

/-- A144534: Denominators of continued fraction convergents to sqrt(8/9).

Offset 0, canonical program `A144534.P12479795918660244608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144534 (n : ℕ) : ℤ :=
  A144534.P12479795918660244608.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144535.P1801884961754785390

`14*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13`
-/

namespace A144535.P1801884961754785390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 13] fun n a =>
  14 * a (n - 2) - a (n - 4)

end

end A144535.P1801884961754785390

noncomputable section

/-- A144535: Numerators of continued fraction convergents to sqrt(3)/2.

Offset 0, canonical program `A144535.P1801884961754785390`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144535 (n : ℕ) : ℤ :=
  A144535.P1801884961754785390.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144536.P3836465427283958796

`14*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=15`
-/

namespace A144536.P3836465427283958796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 15] fun n a =>
  14 * a (n - 2) - a (n - 4)

end

end A144536.P3836465427283958796

noncomputable section

/-- A144536: Denominators of continued fraction convergents to sqrt(3)/2.

Offset 0, canonical program `A144536.P3836465427283958796`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144536 (n : ℕ) : ℤ :=
  A144536.P3836465427283958796.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144560.P3925197613757482980

`20*n²-10*n`
-/

namespace A144560.P3925197613757482980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (20 * n ^ 2 : ℤ) - (10 * n : ℤ)

end

end A144560.P3925197613757482980

noncomputable section

/-- A144560: Ten times hexagonal numbers: 10*n*(2*n-1).

Offset 0, canonical program `A144560.P3925197613757482980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144560 (n : ℕ) : ℤ :=
  A144560.P3925197613757482980.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144596.P11165365272091023055

`a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=0, a(7)=0, a(8)=1`
-/

namespace A144596.P11165365272091023055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 0, 0, 0, 1] fun n a =>
  a (n - 9)

end

end A144596.P11165365272091023055

noncomputable section

/-- A144596: Christoffel word of slope 2/7.

Offset 0, canonical program `A144596.P11165365272091023055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144596 (n : ℕ) : ℤ :=
  (A144596.P11165365272091023055.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144640.P2201591586984025393

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=3, a(1)=17, a(2)=48, a(3)=102`
-/

namespace A144640.P2201591586984025393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 17, 48, 102] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A144640.P2201591586984025393

noncomputable section

/-- A144640: Row sums from A144562.

Offset 1, canonical program `A144640.P2201591586984025393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144640 (n : ℕ) : ℤ :=
  A144640.P2201591586984025393.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144707.P187510953293646439

`a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=11`
-/

namespace A144707.P187510953293646439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 7, 11] fun n a =>
  a (n - 1) + 2 * a (n - 2) - a (n - 3) - a (n - 4)

end

end A144707.P187510953293646439

noncomputable section

/-- A144707: Diagonal sums of the triangle A132047.

Offset 0, canonical program `A144707.P187510953293646439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144707 (n : ℕ) : ℤ :=
  A144707.P187510953293646439.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144707.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144708.P15740897609333399287

`(1-4*n)*6^n`
-/

namespace A144708.P15740897609333399287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (4 * n : ℤ)) * (6 ^ n : ℤ)

end

end A144708.P15740897609333399287

noncomputable section

/-- A144708: a(n) = 6^n * (1-4*n).

Offset 0, canonical program `A144708.P15740897609333399287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144708 (n : ℕ) : ℤ :=
  A144708.P15740897609333399287.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144708.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144745.P18268498339304948760

`a(n-1)²-a(n-1)-1` with `a(0)=9`
-/

namespace A144745.P18268498339304948760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) ^ 2 - a (n - 1) - 1

end

end A144745.P18268498339304948760

noncomputable section

/-- A144745: Recurrence sequence a(n)=a(n-1)^2-a(n-1)-1, a(0)=9.

Offset 0, canonical program `A144745.P18268498339304948760`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144745 (n : ℕ) : ℤ :=
  A144745.P18268498339304948760.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144768.P1250980164730298014

`n!-n^9`
-/

namespace A144768.P1250980164730298014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (n ^ 9 : ℤ)

end

end A144768.P1250980164730298014

noncomputable section

/-- A144768: a(n) = n! - n^9.

Offset 0, canonical program `A144768.P1250980164730298014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144768 (n : ℕ) : ℤ :=
  A144768.P1250980164730298014.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144768.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144773.P3507842800692635383

`(10*n-9)*a(n-1)` with `a(0)=1`
-/

namespace A144773.P3507842800692635383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((10 * n : ℤ) - 9) * a (n - 1)

end

end A144773.P3507842800692635383

noncomputable section

/-- A144773: 10-fold factorials: Product_{k=0..n-1} (10*k+1).

Offset 0, canonical program `A144773.P3507842800692635383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144773 (n : ℕ) : ℤ :=
  A144773.P3507842800692635383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144797.P2649598675801835323

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=4, a(2)=16, a(3)=26`
-/

namespace A144797.P2649598675801835323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 16, 26] fun n a =>
  6 * a (n - 2) - a (n - 4)

end

end A144797.P2649598675801835323

noncomputable section

/-- A144797: Numbers k such that 2*k^2 + 17 is a square.

Offset 1, canonical program `A144797.P2649598675801835323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144797 (n : ℕ) : ℤ :=
  A144797.P2649598675801835323.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144844.P5517475767698692087

`14*a(n-1)-28*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=16`
-/

namespace A144844.P5517475767698692087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 16] fun n a =>
  14 * a (n - 1) - 28 * a (n - 2) + 8 * a (n - 3)

end

end A144844.P5517475767698692087

noncomputable section

/-- A144844: a(n) = ((2 + sqrt(2))^n - (2 - sqrt(2))^n)^2/8.

Offset 0, canonical program `A144844.P5517475767698692087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144844 (n : ℕ) : ℤ :=
  A144844.P5517475767698692087.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144844.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144864.P17008004331978144058

`16*a(n-1)+5` with `a(0)=1`
-/

namespace A144864.P17008004331978144058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  16 * a (n - 1) + 5

end

end A144864.P17008004331978144058

noncomputable section

/-- A144864: a(n) = (4*16^(n-1)-1)/3.

Offset 1, canonical program `A144864.P17008004331978144058`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144864 (n : ℕ) : ℤ :=
  (A144864.P17008004331978144058.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144929.P33319433428821393

`54+110*a(n-1)-a(n-2)` with `a(0)=1, a(1)=166`
-/

namespace A144929.P33319433428821393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 166] fun n a =>
  54 + 110 * a (n - 1) - a (n - 2)

end

end A144929.P33319433428821393

noncomputable section

/-- A144929: Numbers n such that there exists an integer k with (n+1)^3 - n^3 = 7*k^2.

Offset 1, canonical program `A144929.P33319433428821393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144929 (n : ℕ) : ℤ :=
  A144929.P33319433428821393.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144945.P8746808505094753282

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=28, a(3)=76`
-/

namespace A144945.P8746808505094753282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 28, 76] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A144945.P8746808505094753282

noncomputable section

/-- A144945: Number of ways to place 2 queens on an n X n chessboard so that they attack each other.

Offset 1, canonical program `A144945.P8746808505094753282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144945 (n : ℕ) : ℤ :=
  A144945.P8746808505094753282.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A144968.P16988999501329018116

`ceil((n+1)^(3/2))-ceil(n^(3/2))`
-/

namespace A144968.P16988999501329018116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉ - ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

end

end A144968.P16988999501329018116

noncomputable section

/-- A144968: Number of squares between consecutive cubes.

Offset 0, canonical program `A144968.P16988999501329018116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144968 (n : ℕ) : ℤ :=
  A144968.P16988999501329018116.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A144968.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A145051.P14786085071143885953

`(n+2)*(3-(-1)^n)/4`
-/

namespace A145051.P14786085071143885953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((3 - (-1) ^ n : ℚ) / 4)

end

end A145051.P14786085071143885953

noncomputable section

/-- A145051: Numerator of the first convergent to sqrt(n) using the recursion x = (n/x + x)/2.

Offset 1, canonical program `A145051.P14786085071143885953`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145051.P14786085071143885953.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145064.P11699698611124088871

`2*a(n-3)-a(n-6)` with `a(0)=2, a(1)=1, a(2)=4, a(3)=5, a(4)=2, a(5)=7`
-/

namespace A145064.P11699698611124088871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4, 5, 2, 7] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A145064.P11699698611124088871

noncomputable section

/-- A145064: Reduced numerators of the first convergent to the cube root of n using the recursion x = (2*x+n/x^2)/3.

Offset 0, canonical program `A145064.P11699698611124088871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145064 (n : ℕ) : ℤ :=
  A145064.P11699698611124088871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145064.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145067.P6854459650020157410

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=8`
-/

namespace A145067.P6854459650020157410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 8] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A145067.P6854459650020157410

noncomputable section

/-- A145067: Zero followed by partial sums of A008865.

Offset 1, canonical program `A145067.P6854459650020157410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145067 (n : ℕ) : ℤ :=
  A145067.P6854459650020157410.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145067.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145068.P573439538465589742

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=20`
-/

namespace A145068.P573439538465589742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 9, 20] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A145068.P573439538465589742

noncomputable section

/-- A145068: Zero followed by partial sums of A059100, starting at n=1.

Offset 1, canonical program `A145068.P573439538465589742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145068 (n : ℕ) : ℤ :=
  A145068.P573439538465589742.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145068.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145069.P8255874430630216001

`a(n-1)+n²+n+1` with `a(0)=0`
-/

namespace A145069.P8255874430630216001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 2 + (n + 1)

end

end A145069.P8255874430630216001

noncomputable section

/-- A145069: a(n) = n*(n^2 + 3*n + 5)/3.

Offset 0, canonical program `A145069.P8255874430630216001`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²+3*n+5)/3` (program `A145069.P4186914467653549165`, by `A145069.P4186914467653549165.correct`). Lean does not check the parsing of the name. -/
def A145069 (n : ℕ) : ℤ :=
  (A145069.P8255874430630216001.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n²+3*n+5)/3` (program `A145069.P4186914467653549165`, by `A145069.P4186914467653549165.correct`). Lean does not check the parsing of the name. -/
def A145069.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A145070.P5793002769868572772

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=3, a(1)=9, a(2)=20, a(3)=40`
-/

namespace A145070.P5793002769868572772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9, 20, 40] fun n a =>
  5 * a (n - 1) - 9 * a (n - 2) + 7 * a (n - 3) - 2 * a (n - 4)

end

end A145070.P5793002769868572772

noncomputable section

/-- A145070: Partial sums of A006127, starting at n=1.

Offset 1, canonical program `A145070.P5793002769868572772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145070 (n : ℕ) : ℤ :=
  A145070.P5793002769868572772.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145071.P14158947041040639495

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=8, a(2)=17`
-/

namespace A145071.P14158947041040639495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 17] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A145071.P14158947041040639495

noncomputable section

/-- A145071: Partial sums of A000051, starting at n=1.

Offset 1, canonical program `A145071.P14158947041040639495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145071 (n : ℕ) : ℤ :=
  A145071.P14158947041040639495.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145126.P10585382505447242773

`1+(6+(11+(6+n)*n)*n)*n/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145126.P10585382505447242773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (6 + (11 + (6 + n) * n) * n : ℚ) * ((n : ℚ) / 24)

end

end A145126.P10585382505447242773

noncomputable section

/-- A145126: a(n) = 1 + (6 + (11 + (6 + n)*n)*n)*n/24.

Offset 0, canonical program `A145126.P10585382505447242773`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145126 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145126.P10585382505447242773.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145127.P13493288045669770460

`1+(144+(50+(35+(10+n)*n)*n)*n)*n/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145127.P13493288045669770460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (144 + (50 + (35 + (10 + n) * n) * n) * n : ℚ) * ((n : ℚ) / 120)

end

end A145127.P13493288045669770460

noncomputable section

/-- A145127: a(n) = 1 + (144 + (50 + (35 + (10 + n)*n)*n)*n)*n/120.

Offset 0, canonical program `A145127.P13493288045669770460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145127.P13493288045669770460.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145127.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A142821.P17408734384682648918

`p?[61*n+23]`
-/

namespace A142821.P17408734384682648918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142821.P17408734384682648918

noncomputable section

/-- A142821: Primes congruent to 23 mod 61.

Offset 1, canonical program `A142821.P17408734384682648918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. -/
def A142821 (n : ℕ) : ℤ :=
  (A142821.P17408734384682648918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1303 terms. -/
def A142821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142822.P7367106811697207096

`p?[61*n+24]`
-/

namespace A142822.P7367106811697207096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142822.P7367106811697207096

noncomputable section

/-- A142822: Primes congruent to 24 mod 61.

Offset 1, canonical program `A142822.P7367106811697207096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A142822 (n : ℕ) : ℤ :=
  (A142822.P7367106811697207096.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A142822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142823.P14633950026413410704

`p?[61*n+25]`
-/

namespace A142823.P14633950026413410704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142823.P14633950026413410704

noncomputable section

/-- A142823: Primes congruent to 25 mod 61.

Offset 1, canonical program `A142823.P14633950026413410704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1335 terms. -/
def A142823 (n : ℕ) : ℤ :=
  (A142823.P14633950026413410704.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1335 terms. -/
def A142823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142824.P1235275182454826355

`p?[61*n+26]`
-/

namespace A142824.P1235275182454826355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 26

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142824.P1235275182454826355

noncomputable section

/-- A142824: Primes congruent to 26 mod 61.

Offset 1, canonical program `A142824.P1235275182454826355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. -/
def A142824 (n : ℕ) : ℤ :=
  (A142824.P1235275182454826355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. -/
def A142824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142825.P9734466294644144013

`p?[61*n-34]`
-/

namespace A142825.P9734466294644144013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142825.P9734466294644144013

noncomputable section

/-- A142825: Primes congruent to 27 mod 61.

Offset 1, canonical program `A142825.P9734466294644144013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A142825 (n : ℕ) : ℤ :=
  A142825.P9734466294644144013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A142825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142826.P1417636724773366379

`p?[61*n+28]`
-/

namespace A142826.P1417636724773366379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142826.P1417636724773366379

noncomputable section

/-- A142826: Primes congruent to 28 mod 61.

Offset 1, canonical program `A142826.P1417636724773366379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A142826 (n : ℕ) : ℤ :=
  (A142826.P1417636724773366379.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A142826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142827.P9610161280895861040

`p?[61*n+29]`
-/

namespace A142827.P9610161280895861040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142827.P9610161280895861040

noncomputable section

/-- A142827: Primes congruent to 29 mod 61.

Offset 1, canonical program `A142827.P9610161280895861040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. -/
def A142827 (n : ℕ) : ℤ :=
  (A142827.P9610161280895861040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. -/
def A142827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142828.P240119688388233592

`p?[61*n+30]`
-/

namespace A142828.P240119688388233592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142828.P240119688388233592

noncomputable section

/-- A142828: Primes congruent to 30 mod 61.

Offset 1, canonical program `A142828.P240119688388233592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1327 terms. -/
def A142828 (n : ℕ) : ℤ :=
  (A142828.P240119688388233592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1327 terms. -/
def A142828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142829.P4429976672204541894

`p?[61*n-30]`
-/

namespace A142829.P4429976672204541894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142829.P4429976672204541894

noncomputable section

/-- A142829: Primes congruent to 31 mod 61.

Offset 1, canonical program `A142829.P4429976672204541894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. -/
def A142829 (n : ℕ) : ℤ :=
  A142829.P4429976672204541894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1318 terms. -/
def A142829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142830.P13461365843527250451

`p?[61*n-29]`
-/

namespace A142830.P13461365843527250451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142830.P13461365843527250451

noncomputable section

/-- A142830: Primes congruent to 32 mod 61.

Offset 1, canonical program `A142830.P13461365843527250451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A142830 (n : ℕ) : ℤ :=
  A142830.P13461365843527250451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1291 terms. -/
def A142830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142831.P15581421332111852108

`p?[a(n-1)+61]` with `a(0)=33`
-/

namespace A142831.P15581421332111852108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [33] fun n f1 =>
  f1 (n - 1) + 61

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142831.P15581421332111852108

noncomputable section

/-- A142831: Primes congruent to 33 mod 61.

Offset 1, canonical program `A142831.P15581421332111852108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. -/
def A142831 (n : ℕ) : ℤ :=
  (A142831.P15581421332111852108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1322 terms. -/
def A142831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142832.P132076529308838864

`p?[61*n+34]`
-/

namespace A142832.P132076529308838864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 34

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142832.P132076529308838864

noncomputable section

/-- A142832: Primes congruent to 34 mod 61.

Offset 1, canonical program `A142832.P132076529308838864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1308 terms. -/
def A142832 (n : ℕ) : ℤ :=
  (A142832.P132076529308838864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1308 terms. -/
def A142832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142833.P15840218021613281995

`p?[61*n-26]`
-/

namespace A142833.P15840218021613281995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142833.P15840218021613281995

noncomputable section

/-- A142833: Primes congruent to 35 mod 61.

Offset 1, canonical program `A142833.P15840218021613281995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1321 terms. -/
def A142833 (n : ℕ) : ℤ :=
  A142833.P15840218021613281995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1321 terms. -/
def A142833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142834.P6523830976216642014

`p?[61*n-25]`
-/

namespace A142834.P6523830976216642014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142834.P6523830976216642014

noncomputable section

/-- A142834: Primes congruent to 36 mod 61.

Offset 1, canonical program `A142834.P6523830976216642014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. -/
def A142834 (n : ℕ) : ℤ :=
  A142834.P6523830976216642014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. -/
def A142834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142835.P15901031311554015010

`p?[61*n-24]`
-/

namespace A142835.P15901031311554015010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142835.P15901031311554015010

noncomputable section

/-- A142835: Primes congruent to 37 mod 61.

Offset 1, canonical program `A142835.P15901031311554015010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A142835 (n : ℕ) : ℤ :=
  A142835.P15901031311554015010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A142835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142836.P10505046727369022589

`p?[61*n-23]`
-/

namespace A142836.P10505046727369022589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142836.P10505046727369022589

noncomputable section

/-- A142836: Primes congruent to 38 mod 61.

Offset 1, canonical program `A142836.P10505046727369022589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A142836 (n : ℕ) : ℤ :=
  A142836.P10505046727369022589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A142836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142837.P9880264004782884500

`p?[61*n-22]`
-/

namespace A142837.P9880264004782884500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142837.P9880264004782884500

noncomputable section

/-- A142837: Primes congruent to 39 mod 61.

Offset 1, canonical program `A142837.P9880264004782884500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A142837 (n : ℕ) : ℤ :=
  A142837.P9880264004782884500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A142837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142838.P8063950462163677651

`p?[61*n-21]`
-/

namespace A142838.P8063950462163677651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142838.P8063950462163677651

noncomputable section

/-- A142838: Primes congruent to 40 mod 61.

Offset 1, canonical program `A142838.P8063950462163677651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A142838 (n : ℕ) : ℤ :=
  A142838.P8063950462163677651.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A142838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142839.P8312266947308202852

`p?[61*n-20]`
-/

namespace A142839.P8312266947308202852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142839.P8312266947308202852

noncomputable section

/-- A142839: Primes congruent to 41 mod 61.

Offset 1, canonical program `A142839.P8312266947308202852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A142839 (n : ℕ) : ℤ :=
  A142839.P8312266947308202852.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A142839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142840.P4352705550183834374

`p?[61*n-80]`
-/

namespace A142840.P4352705550183834374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 80

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142840.P4352705550183834374

noncomputable section

/-- A142840: Primes congruent to 42 mod 61.

Offset 1, canonical program `A142840.P4352705550183834374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A142840 (n : ℕ) : ℤ :=
  A142840.P4352705550183834374.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. -/
def A142840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142841.P1101289160815567107

`p?[61*n-18]`
-/

namespace A142841.P1101289160815567107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142841.P1101289160815567107

noncomputable section

/-- A142841: Primes congruent to 43 mod 61.

Offset 1, canonical program `A142841.P1101289160815567107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A142841 (n : ℕ) : ℤ :=
  A142841.P1101289160815567107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A142841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142842.P12374244394291574945

`p?[61*n+44]`
-/

namespace A142842.P12374244394291574945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142842.P12374244394291574945

noncomputable section

/-- A142842: Primes congruent to 44 mod 61.

Offset 1, canonical program `A142842.P12374244394291574945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1323 terms. -/
def A142842 (n : ℕ) : ℤ :=
  (A142842.P12374244394291574945.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1323 terms. -/
def A142842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142843.P17669793635415896109

`p?[61*n-16]`
-/

namespace A142843.P17669793635415896109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142843.P17669793635415896109

noncomputable section

/-- A142843: Primes congruent to 45 mod 61.

Offset 1, canonical program `A142843.P17669793635415896109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A142843 (n : ℕ) : ℤ :=
  A142843.P17669793635415896109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. -/
def A142843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142844.P11545309121442495509

`p?[61*n-15]`
-/

namespace A142844.P11545309121442495509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142844.P11545309121442495509

noncomputable section

/-- A142844: Primes congruent to 46 mod 61.

Offset 1, canonical program `A142844.P11545309121442495509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A142844 (n : ℕ) : ℤ :=
  A142844.P11545309121442495509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1317 terms. -/
def A142844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142845.P9259017569777467203

`p?[61*n+47]`
-/

namespace A142845.P9259017569777467203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  61 * n + 47

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142845.P9259017569777467203

noncomputable section

/-- A142845: Primes congruent to 47 mod 61.

Offset 1, canonical program `A142845.P9259017569777467203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A142845 (n : ℕ) : ℤ :=
  (A142845.P9259017569777467203.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. -/
def A142845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142846.P16974594867481302952

`p?[61*n-13]`
-/

namespace A142846.P16974594867481302952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142846.P16974594867481302952

noncomputable section

/-- A142846: Primes congruent to 48 mod 61.

Offset 1, canonical program `A142846.P16974594867481302952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1271 terms. -/
def A142846 (n : ℕ) : ℤ :=
  A142846.P16974594867481302952.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1271 terms. -/
def A142846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142847.P8995699921699467177

`p?[61*n-12]`
-/

namespace A142847.P8995699921699467177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142847.P8995699921699467177

noncomputable section

/-- A142847: Primes congruent to 49 mod 61.

Offset 1, canonical program `A142847.P8995699921699467177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A142847 (n : ℕ) : ℤ :=
  A142847.P8995699921699467177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1300 terms. -/
def A142847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142848.P16697657649416996143

`p?[61*n-11]`
-/

namespace A142848.P16697657649416996143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142848.P16697657649416996143

noncomputable section

/-- A142848: Primes congruent to 50 mod 61.

Offset 1, canonical program `A142848.P16697657649416996143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A142848 (n : ℕ) : ℤ :=
  A142848.P16697657649416996143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A142848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142849.P17666790552011313718

`p?[61*n-10]`
-/

namespace A142849.P17666790552011313718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142849.P17666790552011313718

noncomputable section

/-- A142849: Primes congruent to 51 mod 61.

Offset 1, canonical program `A142849.P17666790552011313718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A142849 (n : ℕ) : ℤ :=
  A142849.P17666790552011313718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A142849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142850.P13887535984116023840

`p?[61*n-9]`
-/

namespace A142850.P13887535984116023840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142850.P13887535984116023840

noncomputable section

/-- A142850: Primes congruent to 52 mod 61.

Offset 1, canonical program `A142850.P13887535984116023840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A142850 (n : ℕ) : ℤ :=
  A142850.P13887535984116023840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1310 terms. -/
def A142850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142851.P10278692083776061170

`p?[61*n-8]`
-/

namespace A142851.P10278692083776061170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142851.P10278692083776061170

noncomputable section

/-- A142851: Primes congruent to 53 mod 61.

Offset 1, canonical program `A142851.P10278692083776061170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A142851 (n : ℕ) : ℤ :=
  A142851.P10278692083776061170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1299 terms. -/
def A142851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142852.P2298445679294056846

`p?[61*n-7]`
-/

namespace A142852.P2298445679294056846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142852.P2298445679294056846

noncomputable section

/-- A142852: Primes congruent to 54 mod 61.

Offset 1, canonical program `A142852.P2298445679294056846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1294 terms. -/
def A142852 (n : ℕ) : ℤ :=
  A142852.P2298445679294056846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1294 terms. -/
def A142852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142853.P6212993732306037194

`p?[61*n-6]`
-/

namespace A142853.P6212993732306037194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142853.P6212993732306037194

noncomputable section

/-- A142853: Primes congruent to 55 mod 61.

Offset 1, canonical program `A142853.P6212993732306037194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. -/
def A142853 (n : ℕ) : ℤ :=
  A142853.P6212993732306037194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. -/
def A142853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142854.P17682631815115864914

`p?[61*n-5]`
-/

namespace A142854.P17682631815115864914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142854.P17682631815115864914

noncomputable section

/-- A142854: Primes congruent to 56 mod 61.

Offset 1, canonical program `A142854.P17682631815115864914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1298 terms. -/
def A142854 (n : ℕ) : ℤ :=
  A142854.P17682631815115864914.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1298 terms. -/
def A142854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142855.P4280594476695647565

`p?[61*n-4]`
-/

namespace A142855.P4280594476695647565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142855.P4280594476695647565

noncomputable section

/-- A142855: Primes congruent to 57 mod 61.

Offset 1, canonical program `A142855.P4280594476695647565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1305 terms. -/
def A142855 (n : ℕ) : ℤ :=
  A142855.P4280594476695647565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1305 terms. -/
def A142855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142856.P8665103313429403818

`p?[61*n-3]`
-/

namespace A142856.P8665103313429403818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142856.P8665103313429403818

noncomputable section

/-- A142856: Primes congruent to 58 mod 61.

Offset 1, canonical program `A142856.P8665103313429403818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A142856 (n : ℕ) : ℤ :=
  A142856.P8665103313429403818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A142856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142857.P17008751147517384597

`p?[61*n-2]`
-/

namespace A142857.P17008751147517384597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142857.P17008751147517384597

noncomputable section

/-- A142857: Primes congruent to 59 mod 61.

Offset 1, canonical program `A142857.P17008751147517384597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. -/
def A142857 (n : ℕ) : ℤ :=
  A142857.P17008751147517384597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1284 terms. -/
def A142857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142858.P14644552258889670954

`p?[61*n-1]`
-/

namespace A142858.P14644552258889670954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (61 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142858.P14644552258889670954

noncomputable section

/-- A142858: Primes congruent to 60 mod 61.

Offset 1, canonical program `A142858.P14644552258889670954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. -/
def A142858 (n : ℕ) : ℤ :=
  A142858.P14644552258889670954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1312 terms. -/
def A142858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142889.P7376232517788267466

`p?[63*n+1]`
-/

namespace A142889.P7376232517788267466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142889.P7376232517788267466

noncomputable section

/-- A142889: Primes congruent to 1 mod 63.

Offset 1, canonical program `A142889.P7376232517788267466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. -/
def A142889 (n : ℕ) : ℤ :=
  (A142889.P7376232517788267466.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. -/
def A142889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142890.P9846475722823215660

`p?[63*n+2]`
-/

namespace A142890.P9846475722823215660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142890.P9846475722823215660

noncomputable section

/-- A142890: Primes congruent to 2 mod 63.

Offset 1, canonical program `A142890.P9846475722823215660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A142890 (n : ℕ) : ℤ :=
  (A142890.P9846475722823215660.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2203 terms. -/
def A142890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142891.P14977050463523529214

`p?[63*n+4]`
-/

namespace A142891.P14977050463523529214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142891.P14977050463523529214

noncomputable section

/-- A142891: Primes congruent to 4 mod 63.

Offset 1, canonical program `A142891.P14977050463523529214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A142891 (n : ℕ) : ℤ :=
  (A142891.P14977050463523529214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A142891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142892.P9881392065937177943

`p?[63*n+5]`
-/

namespace A142892.P9881392065937177943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142892.P9881392065937177943

noncomputable section

/-- A142892: Primes congruent to 5 mod 63.

Offset 1, canonical program `A142892.P9881392065937177943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142892 (n : ℕ) : ℤ :=
  (A142892.P9881392065937177943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142893.P5240627243338882195

`p?[63*n+8]`
-/

namespace A142893.P5240627243338882195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142893.P5240627243338882195

noncomputable section

/-- A142893: Primes congruent to 8 mod 63.

Offset 1, canonical program `A142893.P5240627243338882195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A142893 (n : ℕ) : ℤ :=
  (A142893.P5240627243338882195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A142893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142894.P4870935830498218229

`p?[63*n+10]`
-/

namespace A142894.P4870935830498218229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142894.P4870935830498218229

noncomputable section

/-- A142894: Primes congruent to 10 mod 63.

Offset 1, canonical program `A142894.P4870935830498218229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A142894 (n : ℕ) : ℤ :=
  (A142894.P4870935830498218229.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2170 terms. -/
def A142894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142895.P15871860020077362229

`p?[63*n+11]`
-/

namespace A142895.P15871860020077362229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142895.P15871860020077362229

noncomputable section

/-- A142895: Primes congruent to 11 mod 63.

Offset 1, canonical program `A142895.P15871860020077362229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. -/
def A142895 (n : ℕ) : ℤ :=
  (A142895.P15871860020077362229.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. -/
def A142895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142896.P8110623759283168038

`p?[63*n+13]`
-/

namespace A142896.P8110623759283168038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142896.P8110623759283168038

noncomputable section

/-- A142896: Primes congruent to 13 mod 63.

Offset 1, canonical program `A142896.P8110623759283168038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2166 terms. -/
def A142896 (n : ℕ) : ℤ :=
  (A142896.P8110623759283168038.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2166 terms. -/
def A142896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142897.P5737328438364324810

`p?[63*n+16]`
-/

namespace A142897.P5737328438364324810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142897.P5737328438364324810

noncomputable section

/-- A142897: Primes congruent to 16 mod 63.

Offset 1, canonical program `A142897.P5737328438364324810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A142897 (n : ℕ) : ℤ :=
  (A142897.P5737328438364324810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2180 terms. -/
def A142897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142898.P11273299209455078094

`p?[63*n+17]`
-/

namespace A142898.P11273299209455078094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142898.P11273299209455078094

noncomputable section

/-- A142898: Primes congruent to 17 mod 63.

Offset 1, canonical program `A142898.P11273299209455078094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A142898 (n : ℕ) : ℤ :=
  (A142898.P11273299209455078094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A142898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142899.P5107742842111695539

`p?[63*n+19]`
-/

namespace A142899.P5107742842111695539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142899.P5107742842111695539

noncomputable section

/-- A142899: Primes congruent to 19 mod 63.

Offset 1, canonical program `A142899.P5107742842111695539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A142899 (n : ℕ) : ℤ :=
  (A142899.P5107742842111695539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. -/
def A142899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142900.P15501536379614215935

`p?[63*n+20]`
-/

namespace A142900.P15501536379614215935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142900.P15501536379614215935

noncomputable section

/-- A142900: Primes congruent to 20 mod 63.

Offset 1, canonical program `A142900.P15501536379614215935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. -/
def A142900 (n : ℕ) : ℤ :=
  (A142900.P15501536379614215935.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2181 terms. -/
def A142900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142901.P2754317628985178195

`p?[63*n+22]`
-/

namespace A142901.P2754317628985178195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 22

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142901.P2754317628985178195

noncomputable section

/-- A142901: Primes congruent to 22 mod 63.

Offset 1, canonical program `A142901.P2754317628985178195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. -/
def A142901 (n : ℕ) : ℤ :=
  (A142901.P2754317628985178195.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2165 terms. -/
def A142901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142902.P16721140612929027147

`p?[63*n+23]`
-/

namespace A142902.P16721140612929027147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142902.P16721140612929027147

noncomputable section

/-- A142902: Primes congruent to 23 mod 63.

Offset 1, canonical program `A142902.P16721140612929027147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2163 terms. -/
def A142902 (n : ℕ) : ℤ :=
  (A142902.P16721140612929027147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2163 terms. -/
def A142902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142903.P3956129544153980981

`p?[63*n+25]`
-/

namespace A142903.P3956129544153980981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142903.P3956129544153980981

noncomputable section

/-- A142903: Primes congruent to 25 mod 63.

Offset 1, canonical program `A142903.P3956129544153980981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A142903 (n : ℕ) : ℤ :=
  (A142903.P3956129544153980981.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2188 terms. -/
def A142903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142904.P15928257826511276623

`p?[63*n-37]`
-/

namespace A142904.P15928257826511276623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142904.P15928257826511276623

noncomputable section

/-- A142904: Primes congruent to 26 mod 63.

Offset 1, canonical program `A142904.P15928257826511276623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A142904 (n : ℕ) : ℤ :=
  A142904.P15928257826511276623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2191 terms. -/
def A142904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142905.P15361432978310743157

`p?[7*9*n+29]`
-/

namespace A142905.P15361432978310743157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (9 * n) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142905.P15361432978310743157

noncomputable section

/-- A142905: Primes congruent to 29 mod 63.

Offset 1, canonical program `A142905.P15361432978310743157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2171 terms. -/
def A142905 (n : ℕ) : ℤ :=
  (A142905.P15361432978310743157.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2171 terms. -/
def A142905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142906.P2511125151718696299

`p?[floor(63*n/2)]`
-/

namespace A142906.P2511125151718696299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊63 * ((n : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142906.P2511125151718696299

noncomputable section

/-- A142906: Primes congruent to 31 mod 63.

Offset 1, canonical program `A142906.P2511125151718696299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2213 terms. -/
def A142906 (n : ℕ) : ℤ :=
  A142906.P2511125151718696299.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2213 terms. -/
def A142906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142907.P14668704726298311629

`p?[a(n-1)+63]` with `a(0)=32`
-/

namespace A142907.P14668704726298311629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f1 =>
  f1 (n - 1) + 63

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142907.P14668704726298311629

noncomputable section

/-- A142907: Primes congruent to 32 mod 63.

Offset 1, canonical program `A142907.P14668704726298311629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142907 (n : ℕ) : ℤ :=
  (A142907.P14668704726298311629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2177 terms. -/
def A142907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142908.P8797079807352569714

`p?[63*n-29]`
-/

namespace A142908.P8797079807352569714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142908.P8797079807352569714

noncomputable section

/-- A142908: Primes congruent to 34 mod 63.

Offset 1, canonical program `A142908.P8797079807352569714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2193 terms. -/
def A142908 (n : ℕ) : ℤ :=
  A142908.P8797079807352569714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2193 terms. -/
def A142908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142909.P17077179559198250152

`p?[63*n-26]`
-/

namespace A142909.P17077179559198250152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 26

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142909.P17077179559198250152

noncomputable section

/-- A142909: Primes congruent to 37 mod 63.

Offset 1, canonical program `A142909.P17077179559198250152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A142909 (n : ℕ) : ℤ :=
  A142909.P17077179559198250152.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2172 terms. -/
def A142909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142910.P5060616705458251258

`p?[63*n-25]`
-/

namespace A142910.P5060616705458251258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142910.P5060616705458251258

noncomputable section

/-- A142910: Primes congruent to 38 mod 63.

Offset 1, canonical program `A142910.P5060616705458251258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A142910 (n : ℕ) : ℤ :=
  A142910.P5060616705458251258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2173 terms. -/
def A142910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142911.P11217717950147313963

`p?[63*n-23]`
-/

namespace A142911.P11217717950147313963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142911.P11217717950147313963

noncomputable section

/-- A142911: Primes congruent to 40 mod 63.

Offset 1, canonical program `A142911.P11217717950147313963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142911 (n : ℕ) : ℤ :=
  A142911.P11217717950147313963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. -/
def A142911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142912.P7108346973952550342

`p?[63*n-22]`
-/

namespace A142912.P7108346973952550342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142912.P7108346973952550342

noncomputable section

/-- A142912: Primes congruent to 41 mod 63.

Offset 1, canonical program `A142912.P7108346973952550342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. -/
def A142912 (n : ℕ) : ℤ :=
  A142912.P7108346973952550342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. -/
def A142912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142913.P5474020150282611430

`p?[63*n+43]`
-/

namespace A142913.P5474020150282611430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63 * n + 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142913.P5474020150282611430

noncomputable section

/-- A142913: Primes congruent to 43 mod 63.

Offset 1, canonical program `A142913.P5474020150282611430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A142913 (n : ℕ) : ℤ :=
  (A142913.P5474020150282611430.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A142913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142914.P10469601360240509478

`p?[63*n-19]`
-/

namespace A142914.P10469601360240509478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142914.P10469601360240509478

noncomputable section

/-- A142914: Primes congruent to 44 mod 63.

Offset 1, canonical program `A142914.P10469601360240509478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142914 (n : ℕ) : ℤ :=
  A142914.P10469601360240509478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2169 terms. -/
def A142914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142915.P8824252344397392147

`p?[63*n-17]`
-/

namespace A142915.P8824252344397392147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142915.P8824252344397392147

noncomputable section

/-- A142915: Primes congruent to 46 mod 63.

Offset 1, canonical program `A142915.P8824252344397392147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A142915 (n : ℕ) : ℤ :=
  A142915.P8824252344397392147.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. -/
def A142915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142916.P16510023369052438540

`p?[63*n-16]`
-/

namespace A142916.P16510023369052438540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142916.P16510023369052438540

noncomputable section

/-- A142916: Primes congruent to 47 mod 63.

Offset 1, canonical program `A142916.P16510023369052438540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. -/
def A142916 (n : ℕ) : ℤ :=
  A142916.P16510023369052438540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2190 terms. -/
def A142916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142917.P11354661847014680718

`p?[63*n-13]`
-/

namespace A142917.P11354661847014680718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142917.P11354661847014680718

noncomputable section

/-- A142917: Primes congruent to 50 mod 63.

Offset 1, canonical program `A142917.P11354661847014680718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2192 terms. -/
def A142917 (n : ℕ) : ℤ :=
  A142917.P11354661847014680718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2192 terms. -/
def A142917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142918.P4315972081210890278

`p?[63*n-11]`
-/

namespace A142918.P4315972081210890278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142918.P4315972081210890278

noncomputable section

/-- A142918: Primes congruent to 52 mod 63.

Offset 1, canonical program `A142918.P4315972081210890278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A142918 (n : ℕ) : ℤ :=
  A142918.P4315972081210890278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2175 terms. -/
def A142918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142919.P2810603811300485717

`p?[63*n-10]`
-/

namespace A142919.P2810603811300485717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142919.P2810603811300485717

noncomputable section

/-- A142919: Primes congruent to 53 mod 63.

Offset 1, canonical program `A142919.P2810603811300485717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A142919 (n : ℕ) : ℤ :=
  A142919.P2810603811300485717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2198 terms. -/
def A142919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142920.P902177565938556290

`p?[63*n-8]`
-/

namespace A142920.P902177565938556290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142920.P902177565938556290

noncomputable section

/-- A142920: Primes congruent to 55 mod 63.

Offset 1, canonical program `A142920.P902177565938556290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2193 terms. -/
def A142920 (n : ℕ) : ℤ :=
  A142920.P902177565938556290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2193 terms. -/
def A142920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142921.P2886790080663886087

`p?[63*n-5]`
-/

namespace A142921.P2886790080663886087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142921.P2886790080663886087

noncomputable section

/-- A142921: Primes congruent to 58 mod 63.

Offset 1, canonical program `A142921.P2886790080663886087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. -/
def A142921 (n : ℕ) : ℤ :=
  A142921.P2886790080663886087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2178 terms. -/
def A142921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142922.P8521400803036767735

`p?[63*n-4]`
-/

namespace A142922.P8521400803036767735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142922.P8521400803036767735

noncomputable section

/-- A142922: Primes congruent to 59 mod 63.

Offset 1, canonical program `A142922.P8521400803036767735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2162 terms. -/
def A142922 (n : ℕ) : ℤ :=
  A142922.P8521400803036767735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2162 terms. -/
def A142922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142923.P6677659099145543344

`p?[63*n-2]`
-/

namespace A142923.P6677659099145543344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142923.P6677659099145543344

noncomputable section

/-- A142923: Primes congruent to 61 mod 63.

Offset 1, canonical program `A142923.P6677659099145543344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A142923 (n : ℕ) : ℤ :=
  A142923.P6677659099145543344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. -/
def A142923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142924.P3544101350319166389

`p?[63*n-1]`
-/

namespace A142924.P3544101350319166389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (63 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142924.P3544101350319166389

noncomputable section

/-- A142924: Primes congruent to 62 mod 63.

Offset 1, canonical program `A142924.P3544101350319166389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A142924 (n : ℕ) : ℤ :=
  A142924.P3544101350319166389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. -/
def A142924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142926.P7016555721576362833

`p?[64*n+3]`
-/

namespace A142926.P7016555721576362833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142926.P7016555721576362833

noncomputable section

/-- A142926: Primes congruent to 3 mod 64.

Offset 1, canonical program `A142926.P7016555721576362833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A142926 (n : ℕ) : ℤ :=
  (A142926.P7016555721576362833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A142926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142927.P4410429363118527156

`p?[64*n+5]`
-/

namespace A142927.P4410429363118527156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142927.P4410429363118527156

noncomputable section

/-- A142927: Primes congruent to 5 mod 64.

Offset 1, canonical program `A142927.P4410429363118527156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. -/
def A142927 (n : ℕ) : ℤ :=
  (A142927.P4410429363118527156.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2460 terms. -/
def A142927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142928.P10249613510516575221

`p?[64*n+7]`
-/

namespace A142928.P10249613510516575221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142928.P10249613510516575221

noncomputable section

/-- A142928: Primes congruent to 7 mod 64.

Offset 1, canonical program `A142928.P10249613510516575221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A142928 (n : ℕ) : ℤ :=
  (A142928.P10249613510516575221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2441 terms. -/
def A142928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142929.P14568511180441234267

`p?[64*n+9]`
-/

namespace A142929.P14568511180441234267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142929.P14568511180441234267

noncomputable section

/-- A142929: Primes congruent to 9 mod 64.

Offset 1, canonical program `A142929.P14568511180441234267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A142929 (n : ℕ) : ℤ :=
  (A142929.P14568511180441234267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A142929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142930.P3337481358159353516

`p?[8*8*n+11]`
-/

namespace A142930.P3337481358159353516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (8 * n) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142930.P3337481358159353516

noncomputable section

/-- A142930: Primes congruent to 11 mod 64.

Offset 1, canonical program `A142930.P3337481358159353516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A142930 (n : ℕ) : ℤ :=
  (A142930.P3337481358159353516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A142930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142931.P365347274686259069

`p?[8*8*n+13]`
-/

namespace A142931.P365347274686259069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (8 * n) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142931.P365347274686259069

noncomputable section

/-- A142931: Primes congruent to 13 mod 64.

Offset 1, canonical program `A142931.P365347274686259069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A142931 (n : ℕ) : ℤ :=
  (A142931.P365347274686259069.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2433 terms. -/
def A142931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142932.P10153030057382610172

`p?[64*n+15]`
-/

namespace A142932.P10153030057382610172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142932.P10153030057382610172

noncomputable section

/-- A142932: Primes congruent to 15 mod 64.

Offset 1, canonical program `A142932.P10153030057382610172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A142932 (n : ℕ) : ℤ :=
  (A142932.P10153030057382610172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2439 terms. -/
def A142932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142933.P2848204961856478518

`p?[64*n-47]`
-/

namespace A142933.P2848204961856478518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 47

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142933.P2848204961856478518

noncomputable section

/-- A142933: Primes congruent to 17 mod 64.

Offset 1, canonical program `A142933.P2848204961856478518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A142933 (n : ℕ) : ℤ :=
  A142933.P2848204961856478518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2407 terms. -/
def A142933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142935.P9830366613878460616

`p?[64*n+23]`
-/

namespace A142935.P9830366613878460616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 23

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142935.P9830366613878460616

noncomputable section

/-- A142935: Primes congruent to 23 mod 64.

Offset 1, canonical program `A142935.P9830366613878460616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. -/
def A142935 (n : ℕ) : ℤ :=
  (A142935.P9830366613878460616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2470 terms. -/
def A142935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142936.P12727306494601712242

`p?[64*n+25]`
-/

namespace A142936.P12727306494601712242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142936.P12727306494601712242

noncomputable section

/-- A142936: Primes congruent to 25 mod 64.

Offset 1, canonical program `A142936.P12727306494601712242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A142936 (n : ℕ) : ℤ :=
  (A142936.P12727306494601712242.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A142936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142937.P5495879948250332715

`p?[64*n+27]`
-/

namespace A142937.P5495879948250332715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142937.P5495879948250332715

noncomputable section

/-- A142937: Primes congruent to 27 mod 64.

Offset 1, canonical program `A142937.P5495879948250332715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A142937 (n : ℕ) : ℤ :=
  (A142937.P5495879948250332715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. -/
def A142937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142938.P7378514744952116202

`p?[64*n+29]`
-/

namespace A142938.P7378514744952116202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142938.P7378514744952116202

noncomputable section

/-- A142938: Primes congruent to 29 mod 64.

Offset 1, canonical program `A142938.P7378514744952116202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. -/
def A142938 (n : ℕ) : ℤ :=
  (A142938.P7378514744952116202.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2459 terms. -/
def A142938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142939.P3435509049681326123

`p?[64*n+31]`
-/

namespace A142939.P3435509049681326123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 31

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142939.P3435509049681326123

noncomputable section

/-- A142939: Primes congruent to 31 mod 64.

Offset 1, canonical program `A142939.P3435509049681326123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A142939 (n : ℕ) : ℤ :=
  (A142939.P3435509049681326123.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2424 terms. -/
def A142939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142941.P12578231015707486366

`p?[64*n-27]`
-/

namespace A142941.P12578231015707486366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142941.P12578231015707486366

noncomputable section

/-- A142941: Primes congruent to 37 mod 64.

Offset 1, canonical program `A142941.P12578231015707486366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A142941 (n : ℕ) : ℤ :=
  A142941.P12578231015707486366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2429 terms. -/
def A142941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142942.P7322160798847157632

`p?[64*n-25]`
-/

namespace A142942.P7322160798847157632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142942.P7322160798847157632

noncomputable section

/-- A142942: Primes congruent to 39 mod 64.

Offset 1, canonical program `A142942.P7322160798847157632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A142942 (n : ℕ) : ℤ :=
  A142942.P7322160798847157632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A142942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142943.P13880456349358536681

`p?[64*n-23]`
-/

namespace A142943.P13880456349358536681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142943.P13880456349358536681

noncomputable section

/-- A142943: Primes congruent to 41 mod 64.

Offset 1, canonical program `A142943.P13880456349358536681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A142943 (n : ℕ) : ℤ :=
  A142943.P13880456349358536681.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. -/
def A142943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142944.P5862644719263893988

`p?[64*n-21]`
-/

namespace A142944.P5862644719263893988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142944.P5862644719263893988

noncomputable section

/-- A142944: Primes congruent to 43 mod 64.

Offset 1, canonical program `A142944.P5862644719263893988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A142944 (n : ℕ) : ℤ :=
  A142944.P5862644719263893988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2443 terms. -/
def A142944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142945.P2563163270019381156

`p?[64*n-19]`
-/

namespace A142945.P2563163270019381156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142945.P2563163270019381156

noncomputable section

/-- A142945: Primes congruent to 45 mod 64.

Offset 1, canonical program `A142945.P2563163270019381156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A142945 (n : ℕ) : ℤ :=
  A142945.P2563163270019381156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2458 terms. -/
def A142945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142946.P3067631128433133171

`p?[64*n+47]`
-/

namespace A142946.P3067631128433133171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * n + 47

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142946.P3067631128433133171

noncomputable section

/-- A142946: Primes congruent to 47 mod 64.

Offset 1, canonical program `A142946.P3067631128433133171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A142946 (n : ℕ) : ℤ :=
  (A142946.P3067631128433133171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A142946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142947.P13720696350314908485

`p?[64*n-15]`
-/

namespace A142947.P13720696350314908485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142947.P13720696350314908485

noncomputable section

/-- A142947: Primes congruent to 49 mod 64.

Offset 1, canonical program `A142947.P13720696350314908485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A142947 (n : ℕ) : ℤ :=
  A142947.P13720696350314908485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2442 terms. -/
def A142947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142949.P9238791156441791020

`p?[64*n-11]`
-/

namespace A142949.P9238791156441791020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142949.P9238791156441791020

noncomputable section

/-- A142949: Primes congruent to 53 mod 64.

Offset 1, canonical program `A142949.P9238791156441791020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A142949 (n : ℕ) : ℤ :=
  A142949.P9238791156441791020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. -/
def A142949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142950.P3420115073611070946

`p?[64*n-9]`
-/

namespace A142950.P3420115073611070946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142950.P3420115073611070946

noncomputable section

/-- A142950: Primes congruent to 55 mod 64.

Offset 1, canonical program `A142950.P3420115073611070946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A142950 (n : ℕ) : ℤ :=
  A142950.P3420115073611070946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2463 terms. -/
def A142950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142951.P4112686697446518170

`p?[64*n-7]`
-/

namespace A142951.P4112686697446518170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142951.P4112686697446518170

noncomputable section

/-- A142951: Primes congruent to 57 mod 64.

Offset 1, canonical program `A142951.P4112686697446518170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A142951 (n : ℕ) : ℤ :=
  A142951.P4112686697446518170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2450 terms. -/
def A142951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142952.P18232660293362250301

`p?[64*n-5]`
-/

namespace A142952.P18232660293362250301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142952.P18232660293362250301

noncomputable section

/-- A142952: Primes congruent to 59 mod 64.

Offset 1, canonical program `A142952.P18232660293362250301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A142952 (n : ℕ) : ℤ :=
  A142952.P18232660293362250301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A142952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142953.P593526132870738264

`p?[64*n-3]`
-/

namespace A142953.P593526132870738264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (64 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142953.P593526132870738264

noncomputable section

/-- A142953: Primes congruent to 61 mod 64.

Offset 1, canonical program `A142953.P593526132870738264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A142953 (n : ℕ) : ℤ :=
  A142953.P593526132870738264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2457 terms. -/
def A142953.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142962.P14134083050309185385

`∑[∑[a(n-1)+15]]` with `a(0)=4, a(1)=18`
-/

namespace A142962.P14134083050309185385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 18] fun n f2 =>
  f2 (n - 1) + 15

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A142962.P14134083050309185385

noncomputable section

/-- A142962: Scaled convolution of (n^3)*A000984(n) with A000984(n).

Offset 1, canonical program `A142962.P14134083050309185385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142962 (n : ℕ) : ℤ :=
  (A142962.P14134083050309185385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A142962.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143085.P9603329034444875828

`(n-C(∑[char[∑[n+1]]], 2))!*∑[char[∑[n]]]`
-/

namespace A143085.P9603329034444875828
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat * (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A143085.P9603329034444875828

noncomputable section

/-- A143085: Triangle read by rows: T(n,k) = (n + 1)*(n + k)!.

Offset 0, canonical program `A143085.P9603329034444875828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A143085 (n : ℕ) : ℤ :=
  (A143085.P9603329034444875828.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A143085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143097.P7635849216233229455

`a(n-3)+3` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A143097.P7635849216233229455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 3] fun n a =>
  a (n - 3) + 3

end

end A143097.P7635849216233229455

noncomputable section

/-- A143097: 3*k - 2 interleaved with 3*k - 1 and 3*k.

Offset 1, canonical program `A143097.P7635849216233229455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143097 (n : ℕ) : ℤ :=
  (A143097.P7635849216233229455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143098.P17735081546827214021

`a(n-3)` with `a(0)=1, a(1)=2, a(2)=-1, a(3)=2`
-/

namespace A143098.P17735081546827214021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1, 2] fun n a =>
  a (n - 3)

end

end A143098.P17735081546827214021

noncomputable section

/-- A143098: First differences of A143097.

Offset 1, canonical program `A143098.P17735081546827214021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143098 (n : ℕ) : ℤ :=
  A143098.P17735081546827214021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143100.P3380338415464019530

`2*a(n-1)-(a(n-3)-2*a(n-4))+2` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A143100.P3380338415464019530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 6] fun n a =>
  2 * a (n - 1) - (a (n - 3) - 2 * a (n - 4)) + 2

end

end A143100.P3380338415464019530

noncomputable section

/-- A143100: A007318 * A143098.

Offset 1, canonical program `A143100.P3380338415464019530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A143100 (n : ℕ) : ℤ :=
  A143100.P3380338415464019530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A143100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143101.P16109357256643431058

`∑[n%3+n]+1`
-/

namespace A143101.P16109357256643431058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143101.P16109357256643431058

noncomputable section

/-- A143101: Partial sums of A143097.

Offset 1, canonical program `A143101.P16109357256643431058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143101 (n : ℕ) : ℤ :=
  (A143101.P16109357256643431058.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143103.P15536164371514896267

`∑[(n+1)*(n%3+n)]+1`
-/

namespace A143103.P15536164371514896267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n % 3 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143103.P15536164371514896267

noncomputable section

/-- A143103: Row sums of triangle A143102.

Offset 1, canonical program `A143103.P15536164371514896267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143103 (n : ℕ) : ℤ :=
  (A143103.P15536164371514896267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143127.P8410036495819153823

`∑[∑{d}[n+1, lcm(#, n+1)]]`
-/

namespace A143127.P8410036495819153823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.lcm d (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143127.P8410036495819153823

noncomputable section

/-- A143127: a(n) = Sum_{k=1..n} k*d(k) where d(k) is the number of divisors of k.

Offset 1, canonical program `A143127.P8410036495819153823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143127 (n : ℕ) : ℤ :=
  (A143127.P8410036495819153823.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143128.P9739826549786901227

`∑[(n+1)*∑{d}[n+1, #]]`
-/

namespace A143128.P9739826549786901227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143128.P9739826549786901227

noncomputable section

/-- A143128: a(n) = Sum_{k=1..n} k*sigma(k).

Offset 1, canonical program `A143128.P9739826549786901227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143128 (n : ℕ) : ℤ :=
  (A143128.P9739826549786901227.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143131.P3455816316157282820

`∑[∑[a(n-1)+20]]` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A143131.P3455816316157282820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 10] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143131.P3455816316157282820

noncomputable section

/-- A143131: Binomial transform of [1, 4, 10, 20, 0, 0, 0, ...].

Offset 1, canonical program `A143131.P3455816316157282820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143131 (n : ℕ) : ℤ :=
  (A143131.P3455816316157282820.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143236.P4983274452014383340

`∑[∏{e}[n+1, #+1]]*∏{e}[n+1, #+1]`
-/

namespace A143236.P4983274452014383340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

end

end A143236.P4983274452014383340

noncomputable section

/-- A143236: a(n) = A000005(n) * A006218(n).

Offset 1, canonical program `A143236.P4983274452014383340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143236 (n : ℕ) : ℤ :=
  (A143236.P4983274452014383340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143272.P6280344008672614282

`∑[n+1]*∏{e}[n+1, #+1]`
-/

namespace A143272.P6280344008672614282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A143272.P6280344008672614282

noncomputable section

/-- A143272: a(n) = d(n)*T(n), where d(n) is the number of divisors of n (A000005) and T(n)=n(n+1)/2 are the triangular numbers (A000217).

Offset 1, canonical program `A143272.P6280344008672614282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143272 (n : ℕ) : ℤ :=
  (A143272.P6280344008672614282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143274.P5555211481616288758

`(n+1)*∑[∏{e}[n+1, #+1]]`
-/

namespace A143274.P5555211481616288758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143274.P5555211481616288758

noncomputable section

/-- A143274: a(n) = n * A006218(n).

Offset 1, canonical program `A143274.P5555211481616288758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143274 (n : ℕ) : ℤ :=
  (A143274.P5555211481616288758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143274.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143431.P12370304541027993044

`1-and(2, ∑[-n])`
-/

namespace A143431.P12370304541027993044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143431.P12370304541027993044

noncomputable section

/-- A143431: Periodic length 8 sequence [1, -1, 1, -1, -1, 1, -1, 1, ...].

Offset 0, canonical program `A143431.P12370304541027993044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143431 (n : ℕ) : ℤ :=
  A143431.P12370304541027993044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143432.P7796294187495908491

`2*a(and(2, n))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A143432.P7796294187495908491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * a (Nat.land 2 n)

end

end A143432.P7796294187495908491

noncomputable section

/-- A143432: Ultimately period 4 sequence [ 2, 2, 0, 0, ...] with a(0) = a(1) = 1.

Offset 0, canonical program `A143432.P7796294187495908491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143432 (n : ℕ) : ℤ :=
  (A143432.P7796294187495908491.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143443.P6299369414442370842

`(n+1)*∑[round(∏{p}[n+1, -#]/Δ[n²])]`
-/

namespace A143443.P6299369414442370842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)) : ℤ) : ℚ) / ((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143443.P6299369414442370842

noncomputable section

/-- A143443: a(n) = n * A002321(n).

Offset 1, canonical program `A143443.P6299369414442370842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143443 (n : ℕ) : ℤ :=
  A143443.P6299369414442370842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143502.P12154908491860464719

`∑[char[∑[∑{d}[n, ceil(acot(#))]]]]+1`
-/

namespace A143502.P12154908491860464719
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A143502.P12154908491860464719

noncomputable section

/-- A143502: n occurs d(n-1) times.

Offset 1, canonical program `A143502.P12154908491860464719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143502 (n : ℕ) : ℤ :=
  (A143502.P12154908491860464719.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143520.P1982449951326563039

`(n+1)*abs(∑{d}[n+1, (-1)^#])`
-/

namespace A143520.P1982449951326563039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * |∑ d ∈ Nat.divisors (f1 n), (-1) ^ d|

end

end A143520.P1982449951326563039

noncomputable section

/-- A143520: a(n) is n times number of divisors of n if n is odd, zero if n is twice odd, n times number of divisors of n/4 if n is divisible by 4.

Offset 1, canonical program `A143520.P1982449951326563039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143520 (n : ℕ) : ℤ :=
  A143520.P1982449951326563039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143521.P14660616656247215955

`xor(n, (-1)^n)*∑{d}[n+1, 1-and(4, #²)]`
-/

namespace A143521.P14660616656247215955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((-1) ^ n) * (∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.land 4 (d ^ 2) : ℤ)))

end

end A143521.P14660616656247215955

noncomputable section

/-- A143521: Expansion of g.f. Sum_{k>0} k * x^k / (1 + (-x)^k)^2.

Offset 1, canonical program `A143521.P14660616656247215955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143521 (n : ℕ) : ℤ :=
  A143521.P14660616656247215955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143545.P10919306017526147207

`∑{p}[n+1, C(#, n)]+1+n`
-/

namespace A143545.P10919306017526147207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n + 1 + n

end

end A143545.P10919306017526147207

noncomputable section

/-- A143545: a(n) = n unless n is a prime, in which case a(n) = 2n.

Offset 1, canonical program `A143545.P10919306017526147207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143545 (n : ℕ) : ℤ :=
  (A143545.P10919306017526147207.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143579.P1556342693127990265

`xor(n, and(1, a(floor(n/2))))` with `a(0)=1`
-/

namespace A143579.P1556342693127990265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor n (Nat.land 1 (a ⌊(n : ℚ) / 2⌋.toNat))

end

end A143579.P1556342693127990265

noncomputable section

/-- A143579: Permutation of the natural numbers (0,1,2,3,...): Odious numbers (A000069) interleaved with Evil numbers (A001969).

Offset 0, canonical program `A143579.P1556342693127990265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143579 (n : ℕ) : ℤ :=
  (A143579.P1556342693127990265.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143616.P17403186498679637852

`char[4]+a(n-1)+1` with `a(0)=6`
-/

namespace A143616.P17403186498679637852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + (a (n - 1) + 1)

end

end A143616.P17403186498679637852

noncomputable section

/-- A143616: Record values in A010371.

Offset 1, canonical program `A143616.P17403186498679637852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143616 (n : ℕ) : ℤ :=
  (A143616.P17403186498679637852.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143785.P13360041667867442819

`floor((n+3)*∑[a(n-2)+1])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A143785.P13360041667867442819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A143785.P13360041667867442819

noncomputable section

/-- A143785: Antidiagonal sums of the triangle A120070.

Offset 1, canonical program `A143785.P13360041667867442819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143785 (n : ℕ) : ℤ :=
  (A143785.P13360041667867442819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143787.P2131744851818925079

`2*a(n-1)+3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=11`
-/

namespace A143787.P2131744851818925079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 11] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - a (n - 3)

end

end A143787.P2131744851818925079

noncomputable section

/-- A143787: Number of compositions of n into floor((3*j)/2) kinds of j's for all j>=1.

Offset 0, canonical program `A143787.P2131744851818925079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A143787 (n : ℕ) : ℤ :=
  A143787.P2131744851818925079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A143787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143800.P14632492098239616318

`round(12*log2(n+1))`
-/

namespace A143800.P14632492098239616318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (12 * Real.logb 2 (n + 1 : ℝ))

end

end A143800.P14632492098239616318

noncomputable section

/-- A143800: In acoustics, using 12-tone equal temperament, the rounded number of semitones in the interval perceived when a vibrating string is divided into n congruent segments.

Offset 1, canonical program `A143800.P14632492098239616318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143800 (n : ℕ) : ℤ :=
  A143800.P14632492098239616318.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143802.P10767624828631533889

`2^(n-C(∑[char[∑[n]]], 2))-(1-round(sqrt(2*(n+1)))*char[∑[n]])`
-/

namespace A143802.P10767624828631533889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) - (1 - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A143802.P10767624828631533889

noncomputable section

/-- A143802: Triangle read by rows, "n" followed by (n-1) terms of (1, 3, 7, 15, ...).

Offset 1, canonical program `A143802.P10767624828631533889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143802 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143802.P10767624828631533889.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143838.P17069679334429134085

`∑[a(n-1)+32]` with `a(0)=1, a(1)=21`
-/

namespace A143838.P17069679334429134085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143838.P17069679334429134085

noncomputable section

/-- A143838: Ulam's spiral (SSW spoke).

Offset 1, canonical program `A143838.P17069679334429134085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143838 (n : ℕ) : ℤ :=
  (A143838.P17069679334429134085.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143845.P2544863569797493486

`15-a(n-4)` with `a(0)=0, a(1)=8, a(2)=12, a(3)=14`
-/

namespace A143845.P2544863569797493486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 12, 14] fun n a =>
  15 - a (n - 4)

end

end A143845.P2544863569797493486

noncomputable section

/-- A143845: Period 8: repeat [0, 8, 12, 14, 15, 7, 3, 1].

Offset 0, canonical program `A143845.P2544863569797493486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143845 (n : ℕ) : ℤ :=
  A143845.P2544863569797493486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143854.P5107443606685870419

`∑[a(n-1)+32]` with `a(0)=1, a(1)=19`
-/

namespace A143854.P5107443606685870419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143854.P5107443606685870419

noncomputable section

/-- A143854: Ulam's spiral (WSW spoke).

Offset 1, canonical program `A143854.P5107443606685870419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143854 (n : ℕ) : ℤ :=
  (A143854.P5107443606685870419.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143855.P12384419655680126773

`(1-4*n)²+n`
-/

namespace A143855.P12384419655680126773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (4 * n : ℤ)) ^ 2 + (n : ℤ)

end

end A143855.P12384419655680126773

noncomputable section

/-- A143855: Ulam's spiral (ESE spoke).

Offset 1, canonical program `A143855.P12384419655680126773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143855 (n : ℕ) : ℤ :=
  A143855.P12384419655680126773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143861.P13903137297661997990

`∑[a(n-1)+32]` with `a(0)=1, a(1)=13`
-/

namespace A143861.P13903137297661997990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A143861.P13903137297661997990

noncomputable section

/-- A143861: Ulam's spiral (NNE spoke).

Offset 1, canonical program `A143861.P13903137297661997990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143861 (n : ℕ) : ℤ :=
  (A143861.P13903137297661997990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143938.P16861479997347925285

`Δ[2*C(2*(n+2), 4)]-1`
-/

namespace A143938.P16861479997347925285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * (n + 2)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A143938.P16861479997347925285

noncomputable section

/-- A143938: The Wiener index of a benzenoid consisting of a linear chain of n hexagons.

Offset 1, canonical program `A143938.P16861479997347925285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143938 (n : ℕ) : ℤ :=
  A143938.P16861479997347925285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143945.P15035695285346219199

`2*(n+1)²*∑[∑[n]]`
-/

namespace A143945.P15035695285346219199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A143945.P15035695285346219199

noncomputable section

/-- A143945: Wiener index of the grid P_n x P_n, where P_n is the path graph on n vertices.

Offset 1, canonical program `A143945.P15035695285346219199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143945 (n : ℕ) : ℤ :=
  (A143945.P15035695285346219199.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144043.P7712313532821699714

`p?[floor(n/2)]+p?[floor((n+5)/2)]`
-/

namespace A144043.P7712313532821699714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 5 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A144043.P7712313532821699714

noncomputable section

/-- A144043: a(2n-1) = 2*prime(n), a(2n) = prime(n) + prime(n+1).

Offset 1, canonical program `A144043.P7712313532821699714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144043 (n : ℕ) : ℤ :=
  A144043.P7712313532821699714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144077.P4896225116438529991

`round(sqrt(∑[2*(3*n+1)]))`
-/

namespace A144077.P4896225116438529991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A144077.P4896225116438529991

noncomputable section

/-- A144077: a(n) = z(n^2,n) with z(x,y) = if x>y then z(x-y,y+1) else y.

Offset 1, canonical program `A144077.P4896225116438529991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144077 (n : ℕ) : ℤ :=
  A144077.P4896225116438529991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144141.P2101111203120765844

`∏[4-2*(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A144141.P2101111203120765844
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - (2 * ((n : ℤ) - 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144141.P2101111203120765844

noncomputable section

/-- A144141: a(n) = Hermite(n,2).

Offset 0, canonical program `A144141.P2101111203120765844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A144141 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144141.P2101111203120765844.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A144141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144142.P16156746338738902423

`∏[6-2*(n-1)/a(n-1)]` with `a(0)=1`
-/

namespace A144142.P16156746338738902423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  6 - (2 * ((n : ℤ) - 1) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144142.P16156746338738902423

noncomputable section

/-- A144142: a(n) = Hermite(n,3).

Offset 0, canonical program `A144142.P16156746338738902423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144142 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144142.P16156746338738902423.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A144142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144335.P9468151188323227458

`∑[n*(∑[n]+1)]+1`
-/

namespace A144335.P9468151188323227458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A144335.P9468151188323227458

noncomputable section

/-- A144335: Row sums of triangle A144334, binomial transform of [1, 2, 6, 7, 3, 0, 0, 0, ...].

Offset 1, canonical program `A144335.P9468151188323227458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144335 (n : ℕ) : ℤ :=
  (A144335.P9468151188323227458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144391.P2244537709914572719

`Δ[(n+2)*n²]`
-/

namespace A144391.P2244537709914572719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A144391.P2244537709914572719

noncomputable section

/-- A144391: a(n) = 3*n^2 + n - 1.

Offset 1, canonical program `A144391.P2244537709914572719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144391 (n : ℕ) : ℤ :=
  A144391.P2244537709914572719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144412.P16963643404803757217

`(n-6)*a(n-2)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=0`
-/

namespace A144412.P16963643404803757217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4, 0] fun n a =>
  ((n : ℤ) - 6) * a (n - 2)

end

end A144412.P16963643404803757217

noncomputable section

/-- A144412: Invert transform of odd nonprime gaps adjusted to be from the set {2,1,0,-1}: b(n)=A067970(n)/2-2; a(n)=Sum[b(n + 1)*a(n - k), {k, 1, n}].

Offset 1, canonical program `A144412.P16963643404803757217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A144412 (n : ℕ) : ℤ :=
  A144412.P16963643404803757217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A144412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144468.P728365568732059719

`(7*n)%10`
-/

namespace A144468.P728365568732059719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n % 10

end

end A144468.P728365568732059719

noncomputable section

/-- A144468: Final digit of multiples of 7.

Offset 0, canonical program `A144468.P728365568732059719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144468 (n : ℕ) : ℤ :=
  (A144468.P728365568732059719.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144478.P6153117773716772634

`dr(∑[6*n+2])-1`
-/

namespace A144478.P6153117773716772634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) - 1

end

end A144478.P6153117773716772634

noncomputable section

/-- A144478: Period 9: repeat [1, 0, 5, 7, 6, 2, 4, 3, 8].

Offset 1, canonical program `A144478.P6153117773716772634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144478 (n : ℕ) : ℤ :=
  A144478.P6153117773716772634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144481.P15125495051296054159

`6-∑[n+1]%9`
-/

namespace A144481.P15125495051296054159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 9 : ℕ) : ℤ)

end

end A144481.P15125495051296054159

noncomputable section

/-- A144481: a(n) = A078371(n-1) mod 9.

Offset 1, canonical program `A144481.P15125495051296054159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144481 (n : ℕ) : ℤ :=
  A144481.P15125495051296054159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144489.P15765927739890328625

`∑[∑{p}[n+1, C(#%n, #)]]`
-/

namespace A144489.P15765927739890328625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144489.P15765927739890328625

noncomputable section

/-- A144489: Partial sums of A087624.

Offset 1, canonical program `A144489.P15765927739890328625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144489 (n : ℕ) : ℤ :=
  (A144489.P15765927739890328625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144519.P4122143028393820642

`C(p?[2*n+1]+1, 2)`
-/

namespace A144519.P4122143028393820642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1) 2

end

end A144519.P4122143028393820642

noncomputable section

/-- A144519: Triangular numbers n*(n+1)/2 with n prime and n+1 nonprime.

Offset 1, canonical program `A144519.P4122143028393820642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144519 (n : ℕ) : ℤ :=
  (A144519.P4122143028393820642.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144532.P7452250628067383344

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=2`
-/

namespace A144532.P7452250628067383344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 16, 2] fun n a =>
  a (n - 2)

end

end A144532.P7452250628067383344

noncomputable section

/-- A144532: Continued fraction for sqrt(8/9).

Offset 0, canonical program `A144532.P7452250628067383344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144532 (n : ℕ) : ℤ :=
  (A144532.P7452250628067383344.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144595.P16519792227017368818

`Δ[floor(4*n/11)]`
-/

namespace A144595.P16519792227017368818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n : ℚ) / 11)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144595.P16519792227017368818

noncomputable section

/-- A144595: Christoffel word of slope 4/7.

Offset 0, canonical program `A144595.P16519792227017368818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144595 (n : ℕ) : ℤ :=
  A144595.P16519792227017368818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144597.P16681090928131900372

`floor((3*n)%10/7)`
-/

namespace A144597.P16681090928131900372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 * n % 10 : ℕ) : ℚ) / 7⌋

end

end A144597.P16681090928131900372

noncomputable section

/-- A144597: Christoffel word of slope 3/7.

Offset 0, canonical program `A144597.P16681090928131900372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144597 (n : ℕ) : ℤ :=
  A144597.P16681090928131900372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144598.P18325148895002518994

`floor((5*n)%12/7)`
-/

namespace A144598.P18325148895002518994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 * n % 12 : ℕ) : ℚ) / 7⌋

end

end A144598.P18325148895002518994

noncomputable section

/-- A144598: Christoffel word of slope 5/7.

Offset 0, canonical program `A144598.P18325148895002518994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144598 (n : ℕ) : ℤ :=
  A144598.P18325148895002518994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144599.P16045322272620418674

`((n+12)%13)%2`
-/

namespace A144599.P16045322272620418674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 12) % 13 % 2

end

end A144599.P16045322272620418674

noncomputable section

/-- A144599: Christoffel word of slope 6/7.

Offset 0, canonical program `A144599.P16045322272620418674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144599 (n : ℕ) : ℤ :=
  (A144599.P16045322272620418674.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144600.P14140090651743609666

`Δ[floor(2*n/13)]`
-/

namespace A144600.P14140090651743609666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 13)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144600.P14140090651743609666

noncomputable section

/-- A144600: Christoffel word of slope 2/11.

Offset 0, canonical program `A144600.P14140090651743609666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144600 (n : ℕ) : ℤ :=
  A144600.P14140090651743609666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144601.P2376952802333306497

`Δ[floor(3*n/14)]`
-/

namespace A144601.P2376952802333306497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 14)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144601.P2376952802333306497

noncomputable section

/-- A144601: Christoffel word of slope 3/11.

Offset 0, canonical program `A144601.P2376952802333306497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144601 (n : ℕ) : ℤ :=
  A144601.P2376952802333306497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144602.P3531785067864892282

`Δ[ceil((4*n+1)/15)]`
-/

namespace A144602.P3531785067864892282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * n + 1 : ℚ) / 15⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144602.P3531785067864892282

noncomputable section

/-- A144602: Christoffel word of slope 4/11.

Offset 0, canonical program `A144602.P3531785067864892282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144602 (n : ℕ) : ℤ :=
  A144602.P3531785067864892282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144603.P7770855154981598977

`char[∑[char[5*(n+1)]+3]]`
-/

namespace A144603.P7770855154981598977
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A144603.P7770855154981598977

noncomputable section

/-- A144603: Christoffel word of slope 5/11.

Offset 0, canonical program `A144603.P7770855154981598977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144603 (n : ℕ) : ℤ :=
  (A144603.P7770855154981598977.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144605.P14725162354202901999

`Δ[floor(7*n/18)]`
-/

namespace A144605.P14725162354202901999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 * ((n : ℚ) / 18)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144605.P14725162354202901999

noncomputable section

/-- A144605: Christoffel word of slope 7/11.

Offset 0, canonical program `A144605.P14725162354202901999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144605 (n : ℕ) : ℤ :=
  A144605.P14725162354202901999.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144606.P2436174996341974642

`Δ[floor(8*n/19)]`
-/

namespace A144606.P2436174996341974642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((n : ℚ) / 19)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144606.P2436174996341974642

noncomputable section

/-- A144606: Christoffel word of slope 8/11.

Offset 0, canonical program `A144606.P2436174996341974642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144606 (n : ℕ) : ℤ :=
  A144606.P2436174996341974642.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144607.P3857249666111498186

`Δ[floor(9*n/20)]`
-/

namespace A144607.P3857249666111498186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((n : ℚ) / 20)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144607.P3857249666111498186

noncomputable section

/-- A144607: Christoffel word of slope 9/11.

Offset 0, canonical program `A144607.P3857249666111498186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144607 (n : ℕ) : ℤ :=
  A144607.P3857249666111498186.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144608.P16132669556638268283

`((n+20)%21)%2`
-/

namespace A144608.P16132669556638268283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 20) % 21 % 2

end

end A144608.P16132669556638268283

noncomputable section

/-- A144608: Christoffel word of slope 10/11.

Offset 0, canonical program `A144608.P16132669556638268283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144608 (n : ℕ) : ℤ :=
  (A144608.P16132669556638268283.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144609.P8694314560408707537

`char[floor(29*(n+1)/22)]`
-/

namespace A144609.P8694314560408707537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊29 * ((n + 1 : ℚ) / 22)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A144609.P8694314560408707537

noncomputable section

/-- A144609: Sturmian word of slope Pi.

Offset 0, canonical program `A144609.P8694314560408707537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144609 (n : ℕ) : ℤ :=
  (A144609.P8694314560408707537.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144610.P498494235306582706

`Δ[floor(19*n/26)]`
-/

namespace A144610.P498494235306582706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊19 * ((n : ℚ) / 26)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144610.P498494235306582706

noncomputable section

/-- A144610: Sturmian word of slope e.

Offset 0, canonical program `A144610.P498494235306582706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144610 (n : ℕ) : ℤ :=
  A144610.P498494235306582706.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144610.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A144679.P6862862615956332652

`∑[C(floor(n/5)+2, 2)]`
-/

namespace A144679.P6862862615956332652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 5⌋ + 2).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144679.P6862862615956332652

noncomputable section

/-- A144679: a(n) = floor(n/5 + 1) * floor(n/5 + 2) * (3*n - 10*floor(n/5) + 3)/6.

Offset 0, canonical program `A144679.P6862862615956332652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144679 (n : ℕ) : ℤ :=
  (A144679.P6862862615956332652.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144750.P13160231951552913500

`dr(2*a(n-3))` with `a(0)=1, a(1)=8, a(2)=7`
-/

namespace A144750.P13160231951552913500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 7] fun n a =>
  SequenceMachineLib.digitalRoot (2 * a (n - 3) : ℤ)

end

end A144750.P13160231951552913500

noncomputable section

/-- A144750: A098777 mod 9.

Offset 0, canonical program `A144750.P13160231951552913500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144750 (n : ℕ) : ℤ :=
  (A144750.P13160231951552913500.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144898.P6639578152777329541

`∑[∑[a(n-1)+a(n-3)+n]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A144898.P6639578152777329541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  f2 (n - 1) + (f2 (n - 3) + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144898.P6639578152777329541

noncomputable section

/-- A144898: Expansion of x/((1-x-x^3)*(1-x)^4).

Offset 0, canonical program `A144898.P6639578152777329541`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A144898 (n : ℕ) : ℤ :=
  (A144898.P6639578152777329541.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A144898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144899.P10041838205428943910

`∑[∑[∑[a(n-1)+a(n-3)+n]]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A144899.P10041838205428943910
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f3 =>
  f3 (n - 1) + (f3 (n - 3) + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144899.P10041838205428943910

noncomputable section

/-- A144899: Expansion of x/((1-x-x^3)*(1-x)^5).

Offset 0, canonical program `A144899.P10041838205428943910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 590 terms. -/
def A144899 (n : ℕ) : ℤ :=
  (A144899.P10041838205428943910.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 590 terms. -/
def A144899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144900.P11055252008312554031

`∑[∑[∑[∑[a(n-1)+a(n-3)+n]]]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A144900.P11055252008312554031
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f4 =>
  f4 (n - 1) + (f4 (n - 3) + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144900.P11055252008312554031

noncomputable section

/-- A144900: Expansion of x/((1-x-x^3)*(1-x)^6).

Offset 0, canonical program `A144900.P11055252008312554031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 587 terms. -/
def A144900 (n : ℕ) : ℤ :=
  (A144900.P11055252008312554031.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 587 terms. -/
def A144900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144916.P5873968881910083904

`((2*n)%a(n-1))²` with `a(0)=4, a(1)=7`
-/

namespace A144916.P5873968881910083904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n a =>
  (2 * n % a (n - 1)) ^ 2

end

end A144916.P5873968881910083904

noncomputable section

/-- A144916: Integers k for which |A144912| attains a new maximal odd value.

Offset 1, canonical program `A144916.P5873968881910083904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144916 (n : ℕ) : ℤ :=
  (A144916.P5873968881910083904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144974.P12476128538530691024

`p?[∑[7*n]+1]`
-/

namespace A144974.P12476128538530691024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A144974.P12476128538530691024

noncomputable section

/-- A144974: Centered heptagonal prime numbers.

Offset 1, canonical program `A144974.P12476128538530691024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A144974 (n : ℕ) : ℤ :=
  (A144974.P12476128538530691024.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A144974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145037.P925688750715602079

`a(floor(n/2))-(-1)^n` with `a(0)=0`
-/

namespace A145037.P925688750715602079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

end

end A145037.P925688750715602079

noncomputable section

/-- A145037: Number of 1's minus number of 0's in the binary representation of n.

Offset 0, canonical program `A145037.P925688750715602079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145037 (n : ℕ) : ℤ :=
  A145037.P925688750715602079.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145052.P7508577205988973082

`3*(a(n-3)+2)` with `a(0)=3, a(1)=7, a(2)=11`
-/

namespace A145052.P7508577205988973082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 7, 11] fun n a =>
  3 * (a (n - 3) + 2)

end

end A145052.P7508577205988973082

noncomputable section

/-- A145052: One-third of the number of n X n nonnegative integer arrays with every 3 X 3 subblock summing to 1.

Offset 3, canonical program `A145052.P7508577205988973082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A145052 (n : ℕ) : ℤ :=
  (A145052.P7508577205988973082.a (n - 3) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. -/
def A145052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145091.P4026160424652438554

`char[floor(3^(n/3))]*∑{p}[n+1, C(#, n)]`
-/

namespace A145091.P4026160424652438554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) * (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

end

end A145091.P4026160424652438554

noncomputable section

/-- A145091: a(n) = n if n is a term of A301776, otherwise a(n) = 0.

Offset 1, canonical program `A145091.P4026160424652438554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A145091 (n : ℕ) : ℤ :=
  (A145091.P4026160424652438554.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A145091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145102.P7689803388026553490

`floor((n-1)*a(n-1)/a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A145102.P7689803388026553490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊((n : ℤ) - 1 : ℚ) * ((a (n - 1) : ℚ) / (a (n - 2) : ℚ))⌋

end

end A145102.P7689803388026553490

noncomputable section

/-- A145102: a(0) = a(1) = 1. a(n+1) = floor(n*a(n)/a(n-1)), for n >= 1.

Offset 0, canonical program `A145102.P7689803388026553490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145102 (n : ℕ) : ℤ :=
  A145102.P7689803388026553490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145103.P16545817494106508859

`ceil((n-1)*a(n-1)/a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A145103.P16545817494106508859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈((n : ℤ) - 1 : ℚ) * ((a (n - 1) : ℚ) / (a (n - 2) : ℚ))⌉

end

end A145103.P16545817494106508859

noncomputable section

/-- A145103: a(0) = a(1) = 1. a(n+1) = ceiling(n*a(n)/a(n-1)), for n >= 1.

Offset 0, canonical program `A145103.P16545817494106508859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145103 (n : ℕ) : ℤ :=
  A145103.P16545817494106508859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145112.P13827109005882501140

`2*a(n-1)-a(n-5)+1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`
-/

namespace A145112.P13827109005882501140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16] fun n a =>
  2 * a (n - 1) - a (n - 5) + 1

end

end A145112.P13827109005882501140

noncomputable section

/-- A145112: Numbers of length n binary words with fewer than 4 0-digits between any pair of consecutive 1-digits.

Offset 0, canonical program `A145112.P13827109005882501140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A145112 (n : ℕ) : ℤ :=
  A145112.P13827109005882501140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 351 terms. -/
def A145112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145128.P696980081590588387

`∑[∑[∑[∑[∑[n]]]+1]]`
-/

namespace A145128.P696980081590588387
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145128.P696980081590588387

noncomputable section

/-- A145128: a(n) = 1 + (1200 + (634 + (225 + (85 + (15 + n)*n)*n)*n)*n)*n/720.

Offset 0, canonical program `A145128.P696980081590588387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145128 (n : ℕ) : ℤ :=
  (A145128.P696980081590588387.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145129.P11302167375084164950

`∑[∑[∑[∑[∑[∑[n]]]+1]]]`
-/

namespace A145129.P11302167375084164950
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145129.P11302167375084164950

noncomputable section

/-- A145129: a(n) = 1 + (9960 + (6804 + (2464 + (735 + (175 + (21 + n)*n)*n)*n)*n)*n)*n/5040.

Offset 0, canonical program `A145129.P11302167375084164950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145129 (n : ℕ) : ℤ :=
  (A145129.P11302167375084164950.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145130.P7628917393484858361

`∑[∑[∑[∑[∑[∑[∑[n]]]+1]]]]+1`
-/

namespace A145130.P7628917393484858361
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A145130.P7628917393484858361

noncomputable section

/-- A145130: a(n) = 2 + (89040 + (71868 + (29932 + (8449 + (1960 + (322 + (28 + n)*n)*n)*n)*n)*n)*n)*n/40320.

Offset 0, canonical program `A145130.P7628917393484858361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145130 (n : ℕ) : ℤ :=
  (A145130.P7628917393484858361.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145131.P17754166862729577454

`a(n-1)+a(n-4)+n` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A145131.P17754166862729577454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6] fun n a =>
  a (n - 1) + (a (n - 4) + n)

end

end A145131.P17754166862729577454

noncomputable section

/-- A145131: Expansion of x/((1 - x - x^4)*(1 - x)^2).

Offset 0, canonical program `A145131.P17754166862729577454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. -/
def A145131 (n : ℕ) : ℤ :=
  (A145131.P17754166862729577454.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 710 terms. -/
def A145131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145132.P2192275927502773416

`∑[a(n-1)+a(n-4)+n]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A145132.P2192275927502773416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 4) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145132.P2192275927502773416

noncomputable section

/-- A145132: Expansion of x/((1 - x - x^4)*(1 - x)^3).

Offset 0, canonical program `A145132.P2192275927502773416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A145132 (n : ℕ) : ℤ :=
  (A145132.P2192275927502773416.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A145132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144448.P991437666402583573

`8*lcm(81, ∑[n]+n)/81`
-/

namespace A144448.P991437666402583573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((Nat.lcm 81 (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 81)

end

end A144448.P991437666402583573

noncomputable section

/-- A144448: First bisection of A061039.

Offset 1, canonical program `A144448.P991437666402583573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144448.P991437666402583573.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144448.provenance : SequenceMachineLib.Provenance := .conjectured

