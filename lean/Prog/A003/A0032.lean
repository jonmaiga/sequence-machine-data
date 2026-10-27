import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A003200: Cluster series for site percolation problem on honeycomb matching lattice (honeycomb structure with 1st, 2nd and 3rd neighbors connected).

The programs for A003200, there is no canonical definition to state claims against.
-/

/-! ## A003200.P8140251158499258874

`∑[∑[2^n]]*A018261(Δ[n²])`
-/

namespace A003200.P8140251158499258874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A018261 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

end

end A003200.P8140251158499258874

/-!
# A003201: Cluster series for site percolation problem on square matching lattice (square lattice with 1st and 2nd neighbors connected).

The programs for A003201, there is no canonical definition to state claims against.
-/

/-! ## A003201.P2215408084154657362

`A324117(6^n)+(∑[2*n]+1)*2^n`
-/

namespace A003201.P2215408084154657362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324117 (6 ^ n) + (((∑ j ∈ Finset.range (n + 1), f1 j + 1) * 2 ^ n : ℕ) : ℤ)

end

end A003201.P2215408084154657362

/-!
# A003202: Cluster series for hexagonal lattice.

The programs for A003202, there is no canonical definition to state claims against.
-/

/-! ## A003202.P14029818201885831943

`A003198(n)-A004016(A056372(n+3))`
-/

namespace A003202.P14029818201885831943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003198 n - A004016 (A056372 (n + 3)).toNat

end

end A003202.P14029818201885831943

/-!
# A003203: Cluster series for square lattice.

The programs for A003203, there is no canonical definition to state claims against.
-/

/-! ## A003203.P3870894205832261898

`A383735(A167499(n+3))`
-/

namespace A003203.P3870894205832261898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383735 (A167499 (n + 3)).toNat

end

end A003203.P3870894205832261898

/-! ## A003203.P4024872447646903210

`A383735(A167614(n+3)+2)`
-/

namespace A003203.P4024872447646903210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383735 (A167614 (n + 3) + 2).toNat

end

end A003203.P4024872447646903210

/-! ## A003203.P8808652041073868631

`A257088(A276887(2^n))`
-/

namespace A003203.P8808652041073868631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A276887 (2 ^ n)).toNat

end

end A003203.P8808652041073868631

/-!
# A003207: Cluster series for bond percolation problem on cubic lattice.

The programs for A003207, there is no canonical definition to state claims against.
-/

/-! ## A003207.P15084064172792744882

`A098235(A126417(n)+1)`
-/

namespace A003207.P15084064172792744882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 (A126417 n + 1).toNat

end

end A003207.P15084064172792744882

/-!
# A003208: Cluster series for bond percolation problem on diamond.

The programs for A003208, there is no canonical definition to state claims against.
-/

/-! ## A003208.P17953140139097647063

`A301716(A280673(∑[round((n+3)²/12)])-1)`
-/

namespace A003208.P17953140139097647063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301716 (A280673 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1).toNat

end

end A003208.P17953140139097647063

/-! ## A003208.P3477228256263725226

`A248394(A006879(n))+A099856(n)`
-/

namespace A003208.P3477228256263725226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 (A006879 n).toNat + A099856 n

end

end A003208.P3477228256263725226

/-!
# A003209: Cluster series for f.c.c. lattice.

The programs for A003209, there is no canonical definition to state claims against.
-/

/-! ## A003209.P10048286024933377576

`A276952(∑[A275794(n)+n]-1)`
-/

namespace A003209.P10048286024933377576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275794 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A003209.P10048286024933377576

/-!
# A003210: Cluster series for b.c.c. lattice.

The programs for A003210, there is no canonical definition to state claims against.
-/

/-! ## A003210.P5862648035570539527

`A287707(A248883(n+1))`
-/

namespace A003210.P5862648035570539527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287707 (A248883 (n + 1)).toNat

end

end A003210.P5862648035570539527

/-!
# A003211: Cluster series for cubic lattice.

The programs for A003211, there is no canonical definition to state claims against.
-/

/-! ## A003211.P14790684047476761392

`∏{p}[A377117(3*n), #]`
-/

namespace A003211.P14790684047476761392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377117 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A003211.P14790684047476761392

/-!
# A003212: Cluster series for diamond.

The programs for A003212, there is no canonical definition to state claims against.
-/

/-! ## A003212.P16253979326736423126

`A344296(A008041(n))`
-/

namespace A003212.P16253979326736423126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A008041 n).toNat

end

end A003212.P16253979326736423126

/-! ## A003212.P12628576331011110750

`A325795(A092539(n))`
-/

namespace A003212.P12628576331011110750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325795 (A092539 n).toNat

end

end A003212.P12628576331011110750

/-!
# A003213: Number of ways to quarter a 2n X 2n chessboard.

The programs for A003213, there is no canonical definition to state claims against.
-/

/-! ## A003213.P17172420431911052219

`A060462(A005156(n))`
-/

namespace A003213.P17172420431911052219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (A005156 n).toNat

end

end A003213.P17172420431911052219

/-!
# A003214: Number of binary forests with n nodes.

The programs for A003214, there is no canonical definition to state claims against.
-/

/-! ## A003214.P13473261686044689476

`A331693(n)-A036647(A351870(n))`
-/

namespace A003214.P13473261686044689476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331693 n - A036647 (A351870 n).toNat

end

end A003214.P13473261686044689476

/-! ## A003214.P5658569798517414153

`xor(A036647(n), A331693(A351870(n)))`
-/

namespace A003214.P5658569798517414153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036647 n) (A331693 (A351870 n).toNat)

end

end A003214.P5658569798517414153

/-! ## A003214.P9703087813172152656

`A005195(n)-A185293(A125289(n+1))`
-/

namespace A003214.P9703087813172152656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005195 n - A185293 (A125289 (n + 1)).toNat

end

end A003214.P9703087813172152656

/-! ## A003214.P7730109994248307384

`A005195(n)-A185293(A239218(n+1))`
-/

namespace A003214.P7730109994248307384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005195 n - A185293 (A239218 (n + 1)).toNat

end

end A003214.P7730109994248307384

/-! ## A003214.P6221767026267008700

`A005195(n)-(A036647(n)+A006926(A036647(n)))`
-/

namespace A003214.P6221767026267008700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005195 n - (A036647 n + A006926 (A036647 n).toNat)

end

end A003214.P6221767026267008700

/-!
# A003215: Hex (or centered hexagonal) numbers: 3*n*(n+1)+1 (crystal ball sequence for hexagonal lattice).

The programs for A003215, the canonical program `A003215.P5851317289441473820` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003215 has offset 0).

The definition of A003215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+1)+1` (program `A003215.P5851317289441473820`, by `A003215.P5851317289441473820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003215.P5851317289441473820

`3*n*(n+1)+1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003215

/-- `3*n*(n+1)+1` -/
def P5851317289441473820.Spec : Prop :=
  ∀ n, (P5851317289441473820.a n : ℤ) = A003215 n

theorem P5851317289441473820.correct : P5851317289441473820.Spec := by
  intro n
  simp only [A003215]

end A003215

/-! ## A003215.P9781689724560505269

`A243201(n)/A002061(n+1)`
-/

namespace A003215.P9781689724560505269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243201 n : ℚ) / (A002061 (n + 1) : ℚ)

end

end A003215.P9781689724560505269

namespace A003215

/-- `A243201(n)/A002061(n+1)` -/
def P9781689724560505269.Spec : Prop :=
  ∀ n, P9781689724560505269.a n = (A003215 n : ℚ)

end A003215

/-! ## A003215.P14915166044148239607

`(A001844(n)+A016754(n))/2`
-/

namespace A003215.P14915166044148239607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001844 n + A016754 n : ℚ) / 2

end

end A003215.P14915166044148239607

namespace A003215

/-- `(A001844(n)+A016754(n))/2` -/
def P14915166044148239607.Spec : Prop :=
  ∀ n, P14915166044148239607.a n = (A003215 n : ℚ)

theorem P14915166044148239607.correct : P14915166044148239607.Spec := by
  intro n
  simp only [A003215, Nat.add_sub_cancel, A003215.P14915166044148239607.a, A003215.P5851317289441473820.a, A001844, A001844.P5037395199076350534.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003215

/-! ## A003215.P1203723803422902303

`A239426(n+1)/A239449(n+1)`
-/

namespace A003215.P1203723803422902303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239426 (n + 1) : ℚ) / (A239449 (n + 1) : ℚ)

end

end A003215.P1203723803422902303

namespace A003215

/-- `A239426(n+1)/A239449(n+1)` -/
def P1203723803422902303.Spec : Prop :=
  ∀ n, P1203723803422902303.a n = (A003215 n : ℚ)

end A003215

/-! ## A003215.P3369708735015159082

`or(1, ∑[6*n])`
-/

namespace A003215.P3369708735015159082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003215.P3369708735015159082

namespace A003215

/-- `or(1, ∑[6*n])` -/
def P3369708735015159082.Spec : Prop :=
  ∀ n, (P3369708735015159082.a n : ℤ) = A003215 n

end A003215

/-! ## A003215.P10922569035857510939

`xor(1, ∑[6*n])`
-/

namespace A003215.P10922569035857510939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003215.P10922569035857510939

namespace A003215

/-- `xor(1, ∑[6*n])` -/
def P10922569035857510939.Spec : Prop :=
  ∀ n, (P10922569035857510939.a n : ℤ) = A003215 n

end A003215

/-! ## A003215.P9828592460201691412

`∑[floor(2/acot(3*n))]`
-/

namespace A003215.P9828592460201691412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003215.P9828592460201691412

namespace A003215

/-- `∑[floor(2/acot(3*n))]` -/
def P9828592460201691412.Spec : Prop :=
  ∀ n, P9828592460201691412.a n = A003215 n

end A003215

/-! ## A003215.P6490437161556043266

`∑[round(2/acot(3*n))]`
-/

namespace A003215.P6490437161556043266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (3 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003215.P6490437161556043266

namespace A003215

/-- `∑[round(2/acot(3*n))]` -/
def P6490437161556043266.Spec : Prop :=
  ∀ n, P6490437161556043266.a n = A003215 n

end A003215

/-! ## A003215.P18439610247025101559

`∑[a(n-1)+6]` with `a(0)=1, a(1)=6`
-/

namespace A003215.P18439610247025101559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003215.P18439610247025101559

namespace A003215

/-- `∑[a(n-1)+6]` -/
def P18439610247025101559.Spec : Prop :=
  ∀ n, (P18439610247025101559.a n : ℤ) = A003215 n

end A003215

/-! ## A003215.P15529003202879243472

`lcm(2, Δ[n*n²])/2`
-/

namespace A003215.P15529003202879243472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A003215.P15529003202879243472

namespace A003215

/-- `lcm(2, Δ[n*n²])/2` -/
def P15529003202879243472.Spec : Prop :=
  ∀ n, P15529003202879243472.a n = (A003215 n : ℚ)

end A003215

/-! ## A003215.P10666559969949391954

`∑[ogf((1+4x+x^2)/(1-2x+x^2))]`
-/

namespace A003215.P10666559969949391954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003215.P10666559969949391954

namespace A003215

/-- `∑[ogf((1+4x+x^2)/(1-2x+x^2))]` -/
def P10666559969949391954.Spec : Prop :=
  ∀ n, P10666559969949391954.a n = A003215 n

end A003215

/-! ## A003215.P6796052757072000167

`ogf((1+4x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A003215.P6796052757072000167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -3, 3, -1] n

end

end A003215.P6796052757072000167

namespace A003215

/-- `ogf((1+4x+x^2)/(1-3x+3x^2-x^3))` -/
def P6796052757072000167.Spec : Prop :=
  ∀ n, P6796052757072000167.a n = A003215 n

end A003215

/-! ## A003215.P1163147068146626159

`gcd(and(1, 2*n), Δ[n*n²])`
-/

namespace A003215.P1163147068146626159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 1 (2 * n) : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A003215.P1163147068146626159

namespace A003215

/-- `gcd(and(1, 2*n), Δ[n*n²])` -/
def P1163147068146626159.Spec : Prop :=
  ∀ n, (P1163147068146626159.a n : ℤ) = A003215 n

end A003215

/-! ## A003215.P14658170143782045730

`floor(7*n-(n-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A003215.P14658170143782045730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (7 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A003215.P14658170143782045730

namespace A003215

/-- `floor(7*n-(n-a(n-1)))` -/
def P14658170143782045730.Spec : Prop :=
  ∀ n, P14658170143782045730.a n = A003215 n

theorem P14658170143782045730.correct : P14658170143782045730.Spec := by
  intro n
  induction n with
  | zero => simp [A003215, A003215.P14658170143782045730.a, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A003215, Nat.add_sub_cancel, A003215.P14658170143782045730.a, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A003215

/-! ## A003215.P4692340145753517042

`∑[A008458(n)]`
-/

namespace A003215.P4692340145753517042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003215.P4692340145753517042

namespace A003215

/-- `∑[A008458(n)]` -/
def P4692340145753517042.Spec : Prop :=
  ∀ n, P4692340145753517042.a n = A003215 n

end A003215

/-! ## A003215.P9568186051407908581

`Δ[A000578(n)]`
-/

namespace A003215.P9568186051407908581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003215.P9568186051407908581

namespace A003215

/-- `Δ[A000578(n)]` -/
def P9568186051407908581.Spec : Prop :=
  ∀ n, P9568186051407908581.a n = A003215 n

theorem P9568186051407908581.correct : P9568186051407908581.Spec := by
  intro n
  simp only [A003215, Nat.add_sub_cancel, A003215.P9568186051407908581.f1, A003215.P9568186051407908581.a, A003215.P5851317289441473820.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003215

/-! ## A003215.P15283387137014127215

`A164016(n)/6`
-/

namespace A003215.P15283387137014127215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164016 n : ℚ) / 6

end

end A003215.P15283387137014127215

namespace A003215

/-- `A164016(n)/6` -/
def P15283387137014127215.Spec : Prop :=
  ∀ n, P15283387137014127215.a n = (A003215 n : ℚ)

theorem P15283387137014127215.correct : P15283387137014127215.Spec := by
  intro n
  simp only [A003215, Nat.add_sub_cancel, A003215.P15283387137014127215.a, A003215.P5851317289441473820.a, A164016, A164016.P9958735219434589405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003215

/-! ## A003215.P13702272598493862317

`∑{d}[n+1, A344596(#)]`
-/

namespace A003215.P13702272598493862317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344596 d

end

end A003215.P13702272598493862317

namespace A003215

/-- `∑{d}[n+1, A344596(#)]` -/
def P13702272598493862317.Spec : Prop :=
  ∀ n, P13702272598493862317.a n = A003215 n

end A003215

/-! ## A003215.P9386751184106217531

`A068626(A016777(n))`
-/

namespace A003215.P9386751184106217531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A016777 n).toNat

end

end A003215.P9386751184106217531

namespace A003215

/-- `A068626(A016777(n))` -/
def P9386751184106217531.Spec : Prop :=
  ∀ n, P9386751184106217531.a n = A003215 n

end A003215

/-!
# A003216: Number of Hamiltonian graphs with n nodes.

The programs for A003216, there is no canonical definition to state claims against.
-/

/-! ## A003216.P10549967201682189337

`Δ[A006897(n)]-A246446(n+1)`
-/

namespace A003216.P10549967201682189337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A246446 (n + 1)

end

end A003216.P10549967201682189337

/-! ## A003216.P14727870468623291433

`A001349(n+1)-A126149(n+1)`
-/

namespace A003216.P14727870468623291433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A126149 (n + 1)

end

end A003216.P14727870468623291433

/-! ## A003216.P1634468371685519421

`A000088(n+1)-A246446(n+1)`
-/

namespace A003216.P1634468371685519421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A246446 (n + 1)

end

end A003216.P1634468371685519421

/-! ## A003216.P11264645940095486475

`A201922(A000124(n))-A126149(n+1)`
-/

namespace A003216.P11264645940095486475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A126149 (n + 1)

end

end A003216.P11264645940095486475

/-! ## A003216.P7843426444816145451

`Δ[A006897(n)]-(A126149(n+1)+A000719(n+1))`
-/

namespace A003216.P7843426444816145451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A126149 (n + 1) + A000719 (n + 1))

end

end A003216.P7843426444816145451

/-!
# A003217: Maximum of minimum total weight for threshold functions of n Boolean variables.

The programs for A003217, there is no canonical definition to state claims against.
-/

/-! ## A003217.P3607564675873738190

`A275872(n)+A194805(n)`
-/

namespace A003217.P3607564675873738190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275872 n + A194805 n

end

end A003217.P3607564675873738190

/-! ## A003217.P2631373952181308573

`A005377(2*(n+1))+A005355(n)`
-/

namespace A003217.P2631373952181308573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005377 (2 * (n + 1)) + A005355 n

end

end A003217.P2631373952181308573

/-! ## A003217.P11168914130673960922

`A219655(n)+A005823(A000055(n))`
-/

namespace A003217.P11168914130673960922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n + A005823 (A000055 n).toNat

end

end A003217.P11168914130673960922

/-! ## A003217.P16786644808673843228

`A005374(A005358(3*n+2))+A005355(n)`
-/

namespace A003217.P16786644808673843228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A005358 (3 * n + 2)).toNat + A005355 n

end

end A003217.P16786644808673843228

/-!
# A003219: Self numbers divisible by sum of their digits (or, self numbers which are also Harshad numbers).

The programs for A003219, there is no canonical definition to state claims against.
-/

/-! ## A003219.P13293110105326450894

`∩[A003052(n+1), A005349(n+1)]`
-/

namespace A003219.P13293110105326450894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003219.P13293110105326450894

/-! ## A003219.P16775899473917692399

`∩[A005349(n+1), A163128(n+1)+1+n]`
-/

namespace A003219.P16775899473917692399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003219.P16775899473917692399

/-! ## A003219.P3597507390320718617

`∩[A003052(n+1), A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A003219.P3597507390320718617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003219.P3597507390320718617

/-! ## A003219.P2382931162753029930

`∩[A163128(n+1)+1+n, A082516(n)+a(n-1)]` with `a(0)=1`
-/

namespace A003219.P2382931162753029930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A082516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003219.P2382931162753029930

/-! ## A003219.P18427842129426142588

`∩[A163128(n+1)+1+n, A113315(n+1)*A325454(n+1)]`
-/

namespace A003219.P18427842129426142588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003219.P18427842129426142588

/-! ## A003219.P12096910253765019312

`filter[A003052(n+1), A188641(#)]`
-/

namespace A003219.P12096910253765019312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A003219.P12096910253765019312

/-! ## A003219.P17472329369849729272

`lt[A230093(n), A188641(A028310(n))]`
-/

namespace A003219.P17472329369849729272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003219.P17472329369849729272

/-! ## A003219.P18103825920254238801

`lt[A230093(n), A188641(A230093(n)+n)]`
-/

namespace A003219.P18103825920254238801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (A230093 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003219.P18103825920254238801

/-!
# A003221: Number of even permutations of length n with no fixed points.

The programs for A003221, the canonical program `A003221.P6743187154371678156` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003221 has offset 0).

The definition of A003221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003221.P6743187154371678156

`n*a(n-1)+(-1)^(n-1)*(n-2)*(n+1)/2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003221

/-- `n*a(n-1)+(-1)^(n-1)*(n-2)*(n+1)/2` -/
def P6743187154371678156.Spec : Prop :=
  ∀ n, P6743187154371678156.a n = (A003221 n : ℚ)

end A003221

/-! ## A003221.P3484158837220912614

`(n-1)*(a(n-1)+a(n-2))+(-1)^(n-1)*(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A003221.P3484158837220912614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1 : ℚ) * (a (n - 1) + a (n - 2)) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((n : ℤ) - 1 : ℚ)

end

end A003221.P3484158837220912614

namespace A003221

/-- `(n-1)*(a(n-1)+a(n-2))+(-1)^(n-1)*(n-1)` -/
def P3484158837220912614.Spec : Prop :=
  ∀ n, P3484158837220912614.a n = (A003221 n : ℚ)

end A003221

/-! ## A003221.P10289230282275688612

`(A000166(n)-(-1)^n*(n-1))/2`
-/

namespace A003221.P10289230282275688612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n - (-1) ^ n * ((n : ℤ) - 1) : ℚ) / 2

end

end A003221.P10289230282275688612

namespace A003221

/-- `(A000166(n)-(-1)^n*(n-1))/2` -/
def P10289230282275688612.Spec : Prop :=
  ∀ n, P10289230282275688612.a n = (A003221 n : ℚ)

end A003221

/-! ## A003221.P797865352084020118

`A145224(∑[n])`
-/

namespace A003221.P797865352084020118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145224 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003221.P797865352084020118

namespace A003221

/-- `A145224(∑[n])` -/
def P797865352084020118.Spec : Prop :=
  ∀ n, P797865352084020118.a n = A003221 n

end A003221

/-! ## A003221.P10600778884650371327

`abs(1-A009574(n))`
-/

namespace A003221.P10600778884650371327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A009574 n|

end

end A003221.P10600778884650371327

namespace A003221

/-- `abs(1-A009574(n))` -/
def P10600778884650371327.Spec : Prop :=
  ∀ n, P10600778884650371327.a n = A003221 n

end A003221

/-! ## A003221.P8411240188516216170

`abs(n-A009281(n))`
-/

namespace A003221.P8411240188516216170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A009281 n|

end

end A003221.P8411240188516216170

namespace A003221

/-- `abs(n-A009281(n))` -/
def P8411240188516216170.Spec : Prop :=
  ∀ n, P8411240188516216170.a n = A003221 n

end A003221

/-! ## A003221.P6826913754764366643

`abs((A179508(n+1)-n)/2)`
-/

namespace A003221.P6826913754764366643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A179508 (n + 1) - (n : ℤ) : ℚ) / 2|

end

end A003221.P6826913754764366643

namespace A003221

/-- `abs((A179508(n+1)-n)/2)` -/
def P6826913754764366643.Spec : Prop :=
  ∀ n, P6826913754764366643.a n = (A003221 n : ℚ)

end A003221

/-! ## A003221.P9024765884749967995

`A000166(n)-A000387(n)`
-/

namespace A003221.P9024765884749967995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A000387 n

end

end A003221.P9024765884749967995

namespace A003221

/-- `A000166(n)-A000387(n)` -/
def P9024765884749967995.Spec : Prop :=
  ∀ n, P9024765884749967995.a n = A003221 n

end A003221

/-! ## A003221.P6235203884640388999

`A008290(∑[n])-A000387(n)`
-/

namespace A003221.P6235203884640388999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A000387 n

end

end A003221.P6235203884640388999

namespace A003221

/-- `A008290(∑[n])-A000387(n)` -/
def P6235203884640388999.Spec : Prop :=
  ∀ n, P6235203884640388999.a n = A003221 n

end A003221

/-! ## A003221.P764130001565344489

`A068106(∑[n])-A000387(n)`
-/

namespace A003221.P764130001565344489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) - A000387 n

end

end A003221.P764130001565344489

namespace A003221

/-- `A068106(∑[n])-A000387(n)` -/
def P764130001565344489.Spec : Prop :=
  ∀ n, P764130001565344489.a n = A003221 n

end A003221

/-!
# A003222: a(n) = 2^(3*n+1) - 2*n*(2*n+1).

The programs for A003222, the canonical program `A003222.P11235481891950709899` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003222 has offset 0).

The definition of A003222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(3*n+1)-2*n*(2*n+1)` (program `A003222.P11235481891950709899`, by `A003222.P11235481891950709899.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003222.P11235481891950709899

`2^(3*n+1)-2*n*(2*n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003222

/-- `2^(3*n+1)-2*n*(2*n+1)` -/
def P11235481891950709899.Spec : Prop :=
  ∀ n, P11235481891950709899.a n = A003222 n

theorem P11235481891950709899.correct : P11235481891950709899.Spec := by
  intro n
  simp only [A003222]

end A003222

/-! ## A003222.P577242174876982421

`2*(A001018(n)-n*(2*n+1))`
-/

namespace A003222.P577242174876982421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001018 n - (n * (2 * n + 1) : ℤ))

end

end A003222.P577242174876982421

namespace A003222

/-- `2*(A001018(n)-n*(2*n+1))` -/
def P577242174876982421.Spec : Prop :=
  ∀ n, P577242174876982421.a n = A003222 n

end A003222

/-! ## A003222.P7886115588537847142

`record[A077957(3*n+2)-A002378(n)]`
-/

namespace A003222.P7886115588537847142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (3 * n + 2) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003222.P7886115588537847142

namespace A003222

/-- `record[A077957(3*n+2)-A002378(n)]` -/
def P7886115588537847142.Spec : Prop :=
  ∀ n, P7886115588537847142.a n = A003222 n

end A003222

/-! ## A003222.P10120796797830644266

`record[2*A077957(3*n)-A002378(n)]`
-/

namespace A003222.P10120796797830644266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077957 (3 * n) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003222.P10120796797830644266

namespace A003222

/-- `record[2*A077957(3*n)-A002378(n)]` -/
def P10120796797830644266.Spec : Prop :=
  ∀ n, P10120796797830644266.a n = A003222 n

end A003222

/-! ## A003222.P2834896814831365946

`2*(A017929(2*n)-A000217(2*n))`
-/

namespace A003222.P2834896814831365946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A017929 (2 * n) - A000217 (2 * n))

end

end A003222.P2834896814831365946

namespace A003222

/-- `2*(A017929(2*n)-A000217(2*n))` -/
def P2834896814831365946.Spec : Prop :=
  ∀ n, P2834896814831365946.a n = A003222 n

end A003222

/-!
# A003225: The number of superpositions of cycles of order n of the groups S_3 and D_n.

The programs for A003225, there is no canonical definition to state claims against.
-/

/-! ## A003225.P15201220138474235561

`A261793(∑[A360236(n)])`
-/

namespace A003225.P15201220138474235561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261793 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003225.P15201220138474235561

/-!
# A003226: Automorphic numbers: m^2 ends with m.

The programs for A003226, there is no canonical definition to state claims against.
-/

/-! ## A003226.P9642178931940246263

`∩[A033819(n+1), A068408(n+1)]`
-/

namespace A003226.P9642178931940246263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003226.P9642178931940246263

/-! ## A003226.P13553670089305074618

`∩[A033819(n+1), A157928(n)+A033819(n+1)]`
-/

namespace A003226.P13553670089305074618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A033819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003226.P13553670089305074618

/-! ## A003226.P8986458833585849642

`∩[A068407(n+1), A068408(n+1)]`
-/

namespace A003226.P8986458833585849642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003226.P8986458833585849642

/-! ## A003226.P7472179642903917540

`∩[A018834(n+1), A033819(n+1)]`
-/

namespace A003226.P7472179642903917540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003226.P7472179642903917540

/-! ## A003226.P8566673948499839957

`∩[A029943(n+1), A033819(n+1)]`
-/

namespace A003226.P8566673948499839957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003226.P8566673948499839957

/-!
# A003227: Endpoints (leaves) in rooted trees with n nodes.

The programs for A003227, there is no canonical definition to state claims against.
-/

/-! ## A003227.P18348934926310937409

`∑[A095337(n+1)-A095339(n+1)]+1`
-/

namespace A003227.P18348934926310937409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095337 (n + 1) - A095339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003227.P18348934926310937409

/-! ## A003227.P13383438972918533663

`A095337(n+1)+A151933(n)-A000081(n)`
-/

namespace A003227.P13383438972918533663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095337 (n + 1) + (A151933 n - A000081 n)

end

end A003227.P13383438972918533663

/-! ## A003227.P3586860899830403030

`A300662(n)+A122045(A229181(n+1))`
-/

namespace A003227.P3586860899830403030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300662 n + A122045 (A229181 (n + 1)).toNat

end

end A003227.P3586860899830403030

/-!
# A003228: Endpoints in trees with n nodes.

The programs for A003228, there is no canonical definition to state claims against.
-/

/-! ## A003228.P16331642094337153488

`A003987(A305206(n))+A000120(n)`
-/

namespace A003228.P16331642094337153488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A305206 n).toNat + A000120 n

end

end A003228.P16331642094337153488

/-! ## A003228.P8573109850869125459

`A259361(A020060(n))+A063886(n)`
-/

namespace A003228.P8573109850869125459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A020060 n).toNat + A063886 n

end

end A003228.P8573109850869125459

/-! ## A003228.P11296395631852196388

`A316495(A036722(n))+A001045(n)`
-/

namespace A003228.P11296395631852196388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A036722 n).toNat + A001045 n

end

end A003228.P11296395631852196388

/-! ## A003228.P2575918587178160152

`A374687(A029964(n+1))+A051485(n)`
-/

namespace A003228.P2575918587178160152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374687 (A029964 (n + 1)).toNat + A051485 n

end

end A003228.P2575918587178160152

/-!
# A003229: a(n) = a(n-1) + 2*a(n-3) with a(0)=a(1)=1, a(2)=3.

The programs for A003229, the canonical program `A003229.P3443441677950697026` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003229 has offset 0).

The definition of A003229 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-3)` (program `A003229.P3443441677950697026`, by `A003229.P3443441677950697026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003229.P3443441677950697026

`a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003229

/-- `a(n-1)+2*a(n-3)` -/
def P3443441677950697026.Spec : Prop :=
  ∀ n, (P3443441677950697026.a n : ℤ) = A003229 n

theorem P3443441677950697026.correct : P3443441677950697026.Spec := by
  intro n
  simp only [A003229]

end A003229

/-! ## A003229.P14702260485260976434

`A077949(n+1)`
-/

namespace A003229.P14702260485260976434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 (n + 1)

end

end A003229.P14702260485260976434

namespace A003229

/-- `A077949(n+1)` -/
def P14702260485260976434.Spec : Prop :=
  ∀ n, P14702260485260976434.a n = A003229 n

end A003229

/-! ## A003229.P18356219523090640689

`ogf((1+2x^2)/(1-x-2x^3))`
-/

namespace A003229.P18356219523090640689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -1, 0, -2] n

end

end A003229.P18356219523090640689

namespace A003229

/-- `ogf((1+2x^2)/(1-x-2x^3))` -/
def P18356219523090640689.Spec : Prop :=
  ∀ n, P18356219523090640689.a n = A003229 n

end A003229

/-! ## A003229.P14834731780085057416

`a(n-1)+lcm(2, a(n-3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A003229.P14834731780085057416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + Nat.lcm 2 (a (n - 3))

end

end A003229.P14834731780085057416

namespace A003229

/-- `a(n-1)+lcm(2, a(n-3))` -/
def P14834731780085057416.Spec : Prop :=
  ∀ n, (P14834731780085057416.a n : ℤ) = A003229 n

end A003229

/-! ## A003229.P16946621166984990612

`a(n-3)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A003229.P16946621166984990612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 3) + (a (n - 1) + a (n - 3))

end

end A003229.P16946621166984990612

namespace A003229

/-- `a(n-3)+a(n-1)+a(n-3)` -/
def P16946621166984990612.Spec : Prop :=
  ∀ n, (P16946621166984990612.a n : ℤ) = A003229 n

end A003229

/-! ## A003229.P2471872584594466804

`3*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A003229.P2471872584594466804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A003229.P2471872584594466804

namespace A003229

/-- `3*a(n-3)-(a(n-3)-a(n-1))` -/
def P2471872584594466804.Spec : Prop :=
  ∀ n, P2471872584594466804.a n = A003229 n

end A003229

/-! ## A003229.P18385282641700960911

`∑[A052537(n+1)]+1`
-/

namespace A003229.P18385282641700960911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003229.P18385282641700960911

namespace A003229

/-- `∑[A052537(n+1)]+1` -/
def P18385282641700960911.Spec : Prop :=
  ∀ n, P18385282641700960911.a n = A003229 n

end A003229

/-! ## A003229.P42708513028093359

`A298179(n+3)-A000045(n+2)`
-/

namespace A003229.P42708513028093359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298179 (n + 3) - A000045 (n + 2)

end

end A003229.P42708513028093359

namespace A003229

/-- `A298179(n+3)-A000045(n+2)` -/
def P42708513028093359.Spec : Prop :=
  ∀ n, P42708513028093359.a n = A003229 n

end A003229

/-! ## A003229.P6370798296688632200

`abs(∑[A078044(n+1)]+1)`
-/

namespace A003229.P6370798296688632200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 1|

end

end A003229.P6370798296688632200

namespace A003229

/-- `abs(∑[A078044(n+1)]+1)` -/
def P6370798296688632200.Spec : Prop :=
  ∀ n, P6370798296688632200.a n = A003229 n

end A003229

/-! ## A003229.P4050317436983074988

`Δ[A003479(n)]`
-/

namespace A003229.P4050317436983074988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003229.P4050317436983074988

namespace A003229

/-- `Δ[A003479(n)]` -/
def P4050317436983074988.Spec : Prop :=
  ∀ n, P4050317436983074988.a n = A003229 n

end A003229

/-! ## A003229.P8344738467003231845

`abs(Δ[A077906(n)])`
-/

namespace A003229.P8344738467003231845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A003229.P8344738467003231845

namespace A003229

/-- `abs(Δ[A077906(n)])` -/
def P8344738467003231845.Spec : Prop :=
  ∀ n, P8344738467003231845.a n = A003229 n

end A003229

/-! ## A003229.P2142603800385559973

`A052537(n+4)/2`
-/

namespace A003229.P2142603800385559973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052537 (n + 4) : ℚ) / 2

end

end A003229.P2142603800385559973

namespace A003229

/-- `A052537(n+4)/2` -/
def P2142603800385559973.Spec : Prop :=
  ∀ n, P2142603800385559973.a n = (A003229 n : ℚ)

end A003229

/-! ## A003229.P6242073913222762887

`lcm(2, record[A052537(n)])/2`
-/

namespace A003229.P6242073913222762887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2

end

end A003229.P6242073913222762887

namespace A003229

/-- `lcm(2, record[A052537(n)])/2` -/
def P6242073913222762887.Spec : Prop :=
  ∀ n, P6242073913222762887.a n = (A003229 n : ℚ)

end A003229

/-! ## A003229.P7915861587188723866

`A003479(n+1)-A003479(n)`
-/

namespace A003229.P7915861587188723866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 (n + 1) - A003479 n

end

end A003229.P7915861587188723866

namespace A003229

/-- `A003479(n+1)-A003479(n)` -/
def P7915861587188723866.Spec : Prop :=
  ∀ n, P7915861587188723866.a n = A003229 n

end A003229

/-! ## A003229.P11442251875333412292

`abs(A077906(n+1)-A077906(n))`
-/

namespace A003229.P11442251875333412292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077906 (n + 1) - A077906 n|

end

end A003229.P11442251875333412292

namespace A003229

/-- `abs(A077906(n+1)-A077906(n))` -/
def P11442251875333412292.Spec : Prop :=
  ∀ n, P11442251875333412292.a n = A003229 n

end A003229

/-! ## A003229.P13196987449398620289

`abs(A077974(n+1))`
-/

namespace A003229.P13196987449398620289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077974 (n + 1)|

end

end A003229.P13196987449398620289

namespace A003229

/-- `abs(A077974(n+1))` -/
def P13196987449398620289.Spec : Prop :=
  ∀ n, P13196987449398620289.a n = A003229 n

end A003229

/-! ## A003229.P745521100202576396

`gcd(A000038(n), A077974(n+1))`
-/

namespace A003229.P745521100202576396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077974 (n + 1))

end

end A003229.P745521100202576396

namespace A003229

/-- `gcd(A000038(n), A077974(n+1))` -/
def P745521100202576396.Spec : Prop :=
  ∀ n, (P745521100202576396.a n : ℤ) = A003229 n

end A003229

/-! ## A003229.P15769760991336977538

`lcm(A020985(n), A077974(n+1))`
-/

namespace A003229.P15769760991336977538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A077974 (n + 1))

end

end A003229.P15769760991336977538

namespace A003229

/-- `lcm(A020985(n), A077974(n+1))` -/
def P15769760991336977538.Spec : Prop :=
  ∀ n, (P15769760991336977538.a n : ℤ) = A003229 n

end A003229

/-! ## A003229.P4247065589336547879

`A033999(n+1)*A077974(n+1)`
-/

namespace A003229.P4247065589336547879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A077974 (n + 1)

end

end A003229.P4247065589336547879

namespace A003229

/-- `A033999(n+1)*A077974(n+1)` -/
def P4247065589336547879.Spec : Prop :=
  ∀ n, P4247065589336547879.a n = A003229 n

end A003229

/-! ## A003229.P11005363885707898724

`A003476(n+2)-Δ[Δ[A003476(n+2)]]`
-/

namespace A003229.P11005363885707898724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2) - (f1 (n + 1) - f1 n)

end

end A003229.P11005363885707898724

namespace A003229

/-- `A003476(n+2)-Δ[Δ[A003476(n+2)]]` -/
def P11005363885707898724.Spec : Prop :=
  ∀ n, P11005363885707898724.a n = A003229 n

end A003229

/-!
# A003230: Expansion of 1/((1-x)*(1-2*x)*(1-x-2*x^3)).

The programs for A003230, the canonical program `A003230.P17845978453076986293` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003230 has offset 0).

The definition of A003230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+5x^2-4x^3+6x^4-4x^5))` (program `A003230.P17845978453076986293`, by `A003230.P17845978453076986293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003230.P17845978453076986293

`ogf(1/(1-4x+5x^2-4x^3+6x^4-4x^5))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003230

/-- `ogf(1/(1-4x+5x^2-4x^3+6x^4-4x^5))` -/
def P17845978453076986293.Spec : Prop :=
  ∀ n, P17845978453076986293.a n = A003230 n

theorem P17845978453076986293.correct : P17845978453076986293.Spec := by
  intro n
  simp only [A003230]

end A003230

/-! ## A003230.P7018740765454953278

`∑[A003478(n)]`
-/

namespace A003230.P7018740765454953278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003230.P7018740765454953278

namespace A003230

/-- `∑[A003478(n)]` -/
def P7018740765454953278.Spec : Prop :=
  ∀ n, P7018740765454953278.a n = A003230 n

end A003230

/-! ## A003230.P10965673916986806472

`A003479(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A003230.P10965673916986806472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003479 n + 2 * a (n - 1)

end

end A003230.P10965673916986806472

namespace A003230

/-- `A003479(n)+2*a(n-1)` -/
def P10965673916986806472.Spec : Prop :=
  ∀ n, P10965673916986806472.a n = A003230 n

end A003230

/-! ## A003230.P16513103583641227680

`∑[A077949(n)+2*a(n-1)]` with `a(0)=1`
-/

namespace A003230.P16513103583641227680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A077949 n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003230.P16513103583641227680

namespace A003230

/-- `∑[A077949(n)+2*a(n-1)]` -/
def P16513103583641227680.Spec : Prop :=
  ∀ n, P16513103583641227680.a n = A003230 n

end A003230

/-! ## A003230.P2104673168399677226

`∑[∑[2^(n+1)-A203175(n+2)]]`
-/

namespace A003230.P2104673168399677226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A203175 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003230.P2104673168399677226

namespace A003230

/-- `∑[∑[2^(n+1)-A203175(n+2)]]` -/
def P2104673168399677226.Spec : Prop :=
  ∀ n, P2104673168399677226.a n = A003230 n

end A003230

/-! ## A003230.P17901745127466098016

`2*A003478(n)-A003479(n)`
-/

namespace A003230.P17901745127466098016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003478 n - A003479 n

end

end A003230.P17901745127466098016

namespace A003230

/-- `2*A003478(n)-A003479(n)` -/
def P17901745127466098016.Spec : Prop :=
  ∀ n, P17901745127466098016.a n = A003230 n

end A003230

/-! ## A003230.P12221580634183590

`A003478(n+1)-A003479(n+1)`
-/

namespace A003230.P12221580634183590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003478 (n + 1) - A003479 (n + 1)

end

end A003230.P12221580634183590

namespace A003230

/-- `A003478(n+1)-A003479(n+1)` -/
def P12221580634183590.Spec : Prop :=
  ∀ n, P12221580634183590.a n = A003230 n

end A003230

/-! ## A003230.P10144227300922342732

`∑[A000079(n+2)-A003476(n+3)]`
-/

namespace A003230.P10144227300922342732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A003476 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003230.P10144227300922342732

namespace A003230

/-- `∑[A000079(n+2)-A003476(n+3)]` -/
def P10144227300922342732.Spec : Prop :=
  ∀ n, P10144227300922342732.a n = A003230 n

end A003230

/-!
# A003231: a(n) = floor(n*(sqrt(5)+5)/2).

The programs for A003231, the canonical program `A003231.P12980204502534982762` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003231 has offset 1).

The definition of A003231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003231.P11138749084319648148

`floor((n+1)*(sqrt(5)+5)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003231.P11138749084319648148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.sqrt (5 : ℝ) + 5) / 2⌋

end

end A003231.P11138749084319648148

namespace A003231

/-- `floor((n+1)*(sqrt(5)+5)/2)` -/
def P11138749084319648148.Spec : Prop :=
  ∀ n, P11138749084319648148.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P12980204502534982762

`2*(n+1)+A000201(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003231

/-- `2*(n+1)+A000201(n+1)` -/
def P12980204502534982762.Spec : Prop :=
  ∀ n, P12980204502534982762.a n = A003231 (n + 1)

theorem P12980204502534982762.correct : P12980204502534982762.Spec := by
  intro n
  simp only [A003231, Nat.add_sub_cancel]

end A003231

/-! ## A003231.P881261175939264495

`comp[floor(ϕ*n)]-xor(n, -1)`
-/

namespace A003231.P881261175939264495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - Int.xor (n : ℤ) (-1)

end

end A003231.P881261175939264495

namespace A003231

/-- `comp[floor(ϕ*n)]-xor(n, -1)` -/
def P881261175939264495.Spec : Prop :=
  ∀ n, P881261175939264495.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P13901938454236172418

`∑[5-gcd(2, Δ[floor(n/ϕ)])]`
-/

namespace A003231.P13901938454236172418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Int.gcd 2 (f2 (n + 1) - f2 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003231.P13901938454236172418

namespace A003231

/-- `∑[5-gcd(2, Δ[floor(n/ϕ)])]` -/
def P13901938454236172418.Spec : Prop :=
  ∀ n, P13901938454236172418.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P12296683231940199471

`ceil(or(1, 2*n)+ϕ*(n+1))`
-/

namespace A003231.P12296683231940199471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A003231.P12296683231940199471

namespace A003231

/-- `ceil(or(1, 2*n)+ϕ*(n+1))` -/
def P12296683231940199471.Spec : Prop :=
  ∀ n, P12296683231940199471.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P2860365392578930873

`ceil(xor(1, 2*n)+ϕ*(n+1))`
-/

namespace A003231.P2860365392578930873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A003231.P2860365392578930873

namespace A003231

/-- `ceil(xor(1, 2*n)+ϕ*(n+1))` -/
def P2860365392578930873.Spec : Prop :=
  ∀ n, P2860365392578930873.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P5136969282480114831

`floor(∑[n+2+ϕ])-C(n+1, 2)`
-/

namespace A003231.P5136969282480114831
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - (Nat.choose (n + 1) 2 : ℤ)

end

end A003231.P5136969282480114831

namespace A003231

/-- `floor(∑[n+2+ϕ])-C(n+1, 2)` -/
def P5136969282480114831.Spec : Prop :=
  ∀ n, P5136969282480114831.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P5375617963507782539

`ceil(ϕ*C(n+1, n)+2*n+1)`
-/

namespace A003231.P5375617963507782539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ) + (2 * n + 1 : ℝ)⌉

end

end A003231.P5375617963507782539

namespace A003231

/-- `ceil(ϕ*C(n+1, n)+2*n+1)` -/
def P5375617963507782539.Spec : Prop :=
  ∀ n, P5375617963507782539.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P13745019113311037724

`∑[A276867(n+1)]`
-/

namespace A003231.P13745019113311037724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003231.P13745019113311037724

namespace A003231

/-- `∑[A276867(n+1)]` -/
def P13745019113311037724.Spec : Prop :=
  ∀ n, P13745019113311037724.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P1620255954772419989

`∑[A282162(n)+1]`
-/

namespace A003231.P1620255954772419989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003231.P1620255954772419989

namespace A003231

/-- `∑[A282162(n)+1]` -/
def P1620255954772419989.Spec : Prop :=
  ∀ n, P1620255954772419989.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P11774981580443358280

`∑[A001468(n)+2]`
-/

namespace A003231.P11774981580443358280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003231.P11774981580443358280

namespace A003231

/-- `∑[A001468(n)+2]` -/
def P11774981580443358280.Spec : Prop :=
  ∀ n, P11774981580443358280.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P12278659230459042178

`∑[A096270(n)+3]`
-/

namespace A003231.P12278659230459042178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003231.P12278659230459042178

namespace A003231

/-- `∑[A096270(n)+3]` -/
def P12278659230459042178.Spec : Prop :=
  ∀ n, P12278659230459042178.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P9235358368021156024

`A054770(n+1)+1`
-/

namespace A003231.P9235358368021156024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054770 (n + 1) + 1

end

end A003231.P9235358368021156024

namespace A003231

/-- `A054770(n+1)+1` -/
def P9235358368021156024.Spec : Prop :=
  ∀ n, P9235358368021156024.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P17832872068878472146

`A004957(n+1)+n`
-/

namespace A003231.P17832872068878472146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (n + 1) + (n : ℤ)

end

end A003231.P17832872068878472146

namespace A003231

/-- `A004957(n+1)+n` -/
def P17832872068878472146.Spec : Prop :=
  ∀ n, P17832872068878472146.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P15904859588970001238

`∑[Δ[A026351(n)]+2]`
-/

namespace A003231.P15904859588970001238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003231.P15904859588970001238

namespace A003231

/-- `∑[Δ[A026351(n)]+2]` -/
def P15904859588970001238.Spec : Prop :=
  ∀ n, P15904859588970001238.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P16043761737389548744

`∑[Δ[A066096(n)]+2]`
-/

namespace A003231.P16043761737389548744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003231.P16043761737389548744

namespace A003231

/-- `∑[Δ[A066096(n)]+2]` -/
def P16043761737389548744.Spec : Prop :=
  ∀ n, P16043761737389548744.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P18054536646801539916

`∑[Δ[A276855(n)]-1]`
-/

namespace A003231.P18054536646801539916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003231.P18054536646801539916

namespace A003231

/-- `∑[Δ[A276855(n)]-1]` -/
def P18054536646801539916.Spec : Prop :=
  ∀ n, P18054536646801539916.a n = A003231 (n + 1)

end A003231

/-! ## A003231.P13551232808024047765

`Δ[A283733(n)+n²]`
-/

namespace A003231.P13551232808024047765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283733 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003231.P13551232808024047765

namespace A003231

/-- `Δ[A283733(n)+n²]` -/
def P13551232808024047765.Spec : Prop :=
  ∀ n, P13551232808024047765.a n = A003231 (n + 1)

end A003231

/-!
# A003232: Expansion of (x-1)*(x^2-4*x-1)/(1-2*x)^2.

The programs for A003232, the canonical program `A003232.P9462030915994126560` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003232 has offset 0).

The definition of A003232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x-5x^2+x^3)/(1-4x+4x^2))` (program `A003232.P9462030915994126560`, by `A003232.P9462030915994126560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003232.P9462030915994126560

`ogf((1+3x-5x^2+x^3)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003232

/-- `ogf((1+3x-5x^2+x^3)/(1-4x+4x^2))` -/
def P9462030915994126560.Spec : Prop :=
  ∀ n, P9462030915994126560.a n = A003232 n

theorem P9462030915994126560.correct : P9462030915994126560.Spec := by
  intro n
  simp only [A003232]

end A003232

/-! ## A003232.P18257136643244812951

`2*A339252(n)-A045891(n)`
-/

namespace A003232.P18257136643244812951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339252 n - A045891 n

end

end A003232.P18257136643244812951

namespace A003232

/-- `2*A339252(n)-A045891(n)` -/
def P18257136643244812951.Spec : Prop :=
  ∀ n, P18257136643244812951.a n = A003232 n

end A003232

/-! ## A003232.P703774852678561956

`A098156(n)+A062545(n)*A131577(n)`
-/

namespace A003232.P703774852678561956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098156 n + A062545 n * A131577 n

end

end A003232.P703774852678561956

namespace A003232

/-- `A098156(n)+A062545(n)*A131577(n)` -/
def P703774852678561956.Spec : Prop :=
  ∀ n, P703774852678561956.a n = A003232 n

end A003232

/-! ## A003232.P4114673743164964139

`Δ[A167667(n)-A109975(n)]`
-/

namespace A003232.P4114673743164964139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 n - A109975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003232.P4114673743164964139

namespace A003232

/-- `Δ[A167667(n)-A109975(n)]` -/
def P4114673743164964139.Spec : Prop :=
  ∀ n, P4114673743164964139.a n = A003232 n

end A003232

/-! ## A003232.P17052348356703154159

`Δ[A167667(n)]-A111297(n)`
-/

namespace A003232.P17052348356703154159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A111297 n

end

end A003232.P17052348356703154159

namespace A003232

/-- `Δ[A167667(n)]-A111297(n)` -/
def P17052348356703154159.Spec : Prop :=
  ∀ n, P17052348356703154159.a n = A003232 n

end A003232

/-! ## A003232.P5821729943200972360

`Δ[A048474(n)-Δ[A045891(n)]]`
-/

namespace A003232.P5821729943200972360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048474 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003232.P5821729943200972360

namespace A003232

/-- `Δ[A048474(n)-Δ[A045891(n)]]` -/
def P5821729943200972360.Spec : Prop :=
  ∀ n, P5821729943200972360.a n = A003232 n

end A003232

/-!
# A003233: Numbers k such that A003231(A001950(k)) = A001950(A003231(k)).

The programs for A003233, the canonical program `A003233.P10861454953920532892` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003233 has offset 1).

The definition of A003233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003233.P10861454953920532892

`lt[n²-floor(ϕ*n)*floor(n/ϕ), ceil(ϕ*n)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003233

/-- `lt[n²-floor(ϕ*n)*floor(n/ϕ), ceil(ϕ*n)]` -/
def P10861454953920532892.Spec : Prop :=
  ∀ n, (P10861454953920532892.a n : ℤ) = A003233 (n + 1)

theorem P10861454953920532892.correct : P10861454953920532892.Spec := by
  intro n
  simp only [A003233, Nat.add_sub_cancel]

end A003233

/-! ## A003233.P4743532910136463641

`comp[A003234(n+1)-1]+1`
-/

namespace A003233.P4743532910136463641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003233.P4743532910136463641

namespace A003233

/-- `comp[A003234(n+1)-1]+1` -/
def P4743532910136463641.Spec : Prop :=
  ∀ n, (P4743532910136463641.a n : ℤ) = A003233 (n + 1)

end A003233

/-! ## A003233.P16875197367362902953

`∪[A089960(n+1), A026351(n)]`
-/

namespace A003233.P16875197367362902953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003233.P16875197367362902953

namespace A003233

/-- `∪[A089960(n+1), A026351(n)]` -/
def P16875197367362902953.Spec : Prop :=
  ∀ n, (P16875197367362902953.a n : ℤ) = A003233 (n + 1)

end A003233

/-! ## A003233.P12095406681785702482

`∪[A005653(n+1), A089960(n+1)]`
-/

namespace A003233.P12095406681785702482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003233.P12095406681785702482

namespace A003233

/-- `∪[A005653(n+1), A089960(n+1)]` -/
def P12095406681785702482.Spec : Prop :=
  ∀ n, (P12095406681785702482.a n : ℤ) = A003233 (n + 1)

end A003233

/-! ## A003233.P6985004748517332437

`∪[A188025(n+1), A089960(n+1)]`
-/

namespace A003233.P6985004748517332437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003233.P6985004748517332437

namespace A003233

/-- `∪[A188025(n+1), A089960(n+1)]` -/
def P6985004748517332437.Spec : Prop :=
  ∀ n, (P6985004748517332437.a n : ℤ) = A003233 (n + 1)

end A003233

/-! ## A003233.P10399191762933639466

`eq[char[A003234(n+1)], A000007(n)]`
-/

namespace A003233.P10399191762933639466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A003233.P10399191762933639466

namespace A003233

/-- `eq[char[A003234(n+1)], A000007(n)]` -/
def P10399191762933639466.Spec : Prop :=
  ∀ n, (P10399191762933639466.a n : ℤ) = A003233 (n + 1)

end A003233

/-! ## A003233.P3239001679170120812

`eq[char[A003234(n+1)], A000038(n)]`
-/

namespace A003233.P3239001679170120812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A003233.P3239001679170120812

namespace A003233

/-- `eq[char[A003234(n+1)], A000038(n)]` -/
def P3239001679170120812.Spec : Prop :=
  ∀ n, (P3239001679170120812.a n : ℤ) = A003233 (n + 1)

end A003233

/-! ## A003233.P5914028182623418785

`record[A003603(A279054(n+1))]`
-/

namespace A003233.P5914028182623418785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A279054 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003233.P5914028182623418785

namespace A003233

/-- `record[A003603(A279054(n+1))]` -/
def P5914028182623418785.Spec : Prop :=
  ∀ n, P5914028182623418785.a n = A003233 (n + 1)

end A003233

/-! ## A003233.P14824291020574501712

`record[A003231(n+1)%A003258(n+1)]`
-/

namespace A003233.P14824291020574501712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003231 (n + 1)) (A003258 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003233.P14824291020574501712

namespace A003233

/-- `record[A003231(n+1)%A003258(n+1)]` -/
def P14824291020574501712.Spec : Prop :=
  ∀ n, P14824291020574501712.a n = A003233 (n + 1)

end A003233

/-! ## A003233.P3434787900438354160

`eq[1, A286746(A008706(n))]`
-/

namespace A003233.P3434787900438354160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003233.P3434787900438354160

namespace A003233

/-- `eq[1, A286746(A008706(n))]` -/
def P3434787900438354160.Spec : Prop :=
  ∀ n, (P3434787900438354160.a n : ℤ) = A003233 (n + 1)

end A003233

/-! ## A003233.P9659461093729844979

`eq[2, A001468(A190509(n+1))]+1`
-/

namespace A003233.P9659461093729844979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A190509 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003233.P9659461093729844979

namespace A003233

/-- `eq[2, A001468(A190509(n+1))]+1` -/
def P9659461093729844979.Spec : Prop :=
  ∀ n, (P9659461093729844979.a n : ℤ) = A003233 (n + 1)

end A003233

/-!
# A003234: Numbers k such that A003231(A001950(k)) = A001950(A003231(k)) - 1.

The programs for A003234, there is no canonical definition to state claims against.
-/

/-! ## A003234.P6461939494995717642

`A000201(A003233(A003254(n+1)))`
-/

namespace A003234.P6461939494995717642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A003233 (A003254 (n + 1)).toNat).toNat

end

end A003234.P6461939494995717642

/-! ## A003234.P3513700465008212383

`A005206(A003248(n+1)-n)`
-/

namespace A003234.P3513700465008212383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003248 (n + 1) - (n : ℤ)).toNat

end

end A003234.P3513700465008212383

/-! ## A003234.P3813565096033776979

`A005206(A005206(A003249(n+1)))`
-/

namespace A003234.P3813565096033776979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A003249 (n + 1)).toNat).toNat

end

end A003234.P3813565096033776979

/-! ## A003234.P10245035618264199953

`A002251(A003248(n+1)-n)`
-/

namespace A003234.P10245035618264199953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A003248 (n + 1) - (n : ℤ)).toNat

end

end A003234.P10245035618264199953

/-! ## A003234.P1446833061976060534

`A005378(A003248(n+1)-n)`
-/

namespace A003234.P1446833061976060534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A003248 (n + 1) - (n : ℤ)).toNat

end

end A003234.P1446833061976060534

/-! ## A003234.P16805165891731346608

`record[A026272(A190509(n+1))-n]`
-/

namespace A003234.P16805165891731346608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A190509 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003234.P16805165891731346608

/-! ## A003234.P1945492217443527620

`A003249(n+1)-A026272(A003249(n+1)-1)`
-/

namespace A003234.P1945492217443527620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1) - A026272 (A003249 (n + 1) - 1).toNat

end

end A003234.P1945492217443527620

/-! ## A003234.P2980664476447666462

`A026272(A003249(n+1))`
-/

namespace A003234.P2980664476447666462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A003249 (n + 1)).toNat

end

end A003234.P2980664476447666462

/-! ## A003234.P14796044990731845898

`eq[1, A309198(5*n+1)]+1`
-/

namespace A003234.P14796044990731845898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309198 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003234.P14796044990731845898

/-! ## A003234.P7307822773350154806

`lt[A188014(A003231(n+1)), A096270(n)]`
-/

namespace A003234.P7307822773350154806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A003231 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003234.P7307822773350154806

/-! ## A003234.P5350129128485183150

`lt[A287523(A284624(n+1)), A096270(n)]`
-/

namespace A003234.P5350129128485183150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (A284624 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003234.P5350129128485183150

/-! ## A003234.P1315623780277087054

`lt[A287523(A284624(n+1)), A189661(n+1)]`
-/

namespace A003234.P1315623780277087054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (A284624 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003234.P1315623780277087054

/-! ## A003234.P433499444115027481

`lt[A188014(n+1), A188014(A003231(n+1))]+1`
-/

namespace A003234.P433499444115027481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A003231 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A003234.P433499444115027481

/-! ## A003234.P17238909666924186720

`lt[A287523(n+1), A287523(A284624(n+1)-1)]`
-/

namespace A003234.P17238909666924186720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (A284624 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003234.P17238909666924186720

/-! ## A003234.P6792732513386778434

`eq[1, A284749(5*n+1)]`
-/

namespace A003234.P6792732513386778434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (5 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003234.P6792732513386778434

/-! ## A003234.P8600390442572338183

`eq[0, A284387(A008706(n))]`
-/

namespace A003234.P8600390442572338183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284387 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003234.P8600390442572338183

/-! ## A003234.P7041817846762424136

`eq[A083368(A214971(n+1)), A096270(n)]`
-/

namespace A003234.P7041817846762424136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083368 (A214971 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003234.P7041817846762424136

/-! ## A003234.P16994499664040504718

`lt[A076662(A214971(n+1)), A076662(n+1)]`
-/

namespace A003234.P16994499664040504718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (A214971 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003234.P16994499664040504718

/-! ## A003234.P1638330920767096131

`lt[A276867(A214971(n+1)), A276867(n+1)]`
-/

namespace A003234.P1638330920767096131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276867 (A214971 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003234.P1638330920767096131

/-! ## A003234.P13516069311581378671

`lt[A276868(A214971(n+1)), A276868(n+1)]`
-/

namespace A003234.P13516069311581378671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276868 (A214971 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003234.P13516069311581378671

/-!
# A003235: a(n) = Sum_{k=0..n} (-1)^(n-k) C(n,k)*C(k^2,n).

The programs for A003235, there is no canonical definition to state claims against.
-/

/-! ## A003235.P6280935314404046443

`A098267(∑[∑[A048299(n+1)]])`
-/

namespace A003235.P6280935314404046443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048299 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003235.P6280935314404046443

/-! ## A003235.P9735132013504292519

`A100344(∑[2*n])`
-/

namespace A003235.P9735132013504292519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100344 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003235.P9735132013504292519

/-!
# A003236: a(n) = Sum_{k=0..n} (-1)^(n-k) C(n,k)*C((k+1)^2, n).

The programs for A003236, there is no canonical definition to state claims against.
-/

/-! ## A003236.P8145026569104368110

`A028310(A327200(n)+A264561(n+1))`
-/

namespace A003236.P8145026569104368110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A327200 n + A264561 (n + 1)).toNat

end

end A003236.P8145026569104368110

/-!
# A003237: Number of partially achiral planted trees with n nodes.

The programs for A003237, there is no canonical definition to state claims against.
-/

/-! ## A003237.P4017928313834103741

`A191519(A289207(n))%(A093126(n+1)+A051058(A051053(n)))`
-/

namespace A003237.P4017928313834103741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191519 (A289207 n).toNat) (A093126 (n + 1) + A051058 (A051053 n).toNat)

end

end A003237.P4017928313834103741

/-! ## A003237.P603060598104859485

`A342525(2*(a(n-2)+n/2-2))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A003237.P603060598104859485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  A342525 (SequenceMachineLib.roundAway (2 * ((a (n - 2) : ℚ) + ((n : ℚ) / 2 - 2)))).toNat

end

end A003237.P603060598104859485

/-! ## A003237.P4007055905533674365

`A165920(n+1)%eq[4, ∑{d}[(6-18*n^3)/2, gcd(41, #)]]²`
-/

namespace A003237.P4007055905533674365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 - (18 * n ^ 3 : ℤ) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f3 n)).natAbs, Nat.gcd 41 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165920 (n + 1)) (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2 : ℤ)

end

end A003237.P4007055905533674365

/-! ## A003237.P2648983968627402359

`A339183(A148176(n))`
-/

namespace A003237.P2648983968627402359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (A148176 n).toNat

end

end A003237.P2648983968627402359

/-! ## A003237.P16260570717806290773

`∑[A123580(A000677(n))]`
-/

namespace A003237.P16260570717806290773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A000677 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003237.P16260570717806290773

/-!
# A003238: Number of rooted trees with n vertices in which vertices at the same level have the same degree.

The programs for A003238, there is no canonical definition to state claims against.
-/

/-! ## A003238.P15290904475648784671

`ceil(A068336(n+1)/2)`
-/

namespace A003238.P15290904475648784671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068336 (n + 1) : ℚ) / 2⌉

end

end A003238.P15290904475648784671

/-! ## A003238.P15969648536342212104

`A214579(n)+a(n-1)` with `a(0)=1`
-/

namespace A003238.P15969648536342212104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214579 n + a (n - 1)

end

end A003238.P15969648536342212104

/-! ## A003238.P6860312180618722293

`∑[A214579(A028310(n))]+1`
-/

namespace A003238.P6860312180618722293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214579 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003238.P6860312180618722293

/-! ## A003238.P14455101402161361265

`(A068336(n+1)+A000007(n))/2`
-/

namespace A003238.P14455101402161361265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) + A000007 n : ℚ) / 2

end

end A003238.P14455101402161361265

/-! ## A003238.P10863744010643697815

`A068336(n+1)/gcd(2, A008458(n))`
-/

namespace A003238.P10863744010643697815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (Int.gcd 2 (A008458 n) : ℚ)

end

end A003238.P10863744010643697815

/-! ## A003238.P17987275326466686634

`∑[A214579(n+1)]+1-A214579(n+1)`
-/

namespace A003238.P17987275326466686634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A214579 (n + 1))

end

end A003238.P17987275326466686634

/-! ## A003238.P5456040439873781901

`A068336(n+1)/(A019425(A019425(n))+1)`
-/

namespace A003238.P5456040439873781901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (A019425 (A019425 n).toNat + 1 : ℚ)

end

end A003238.P5456040439873781901

/-! ## A003238.P6707671481808288690

`A068336(n+1)/A067824(n+1)*A002033(n)`
-/

namespace A003238.P6707671481808288690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (A067824 (n + 1) : ℚ) * (A002033 n : ℚ)

end

end A003238.P6707671481808288690

/-! ## A003238.P18108139893881423429

`A068336(n+1)/A020639(A000079(∑{e}[n+1, #]))`
-/

namespace A003238.P18108139893881423429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (A020639 (A000079 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat : ℚ)

end

end A003238.P18108139893881423429

/-! ## A003238.P2558275926313914493

`A068336(n+1)/A067824(A067824(n+1)/A002033(n))`
-/

namespace A003238.P2558275926313914493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (A067824 (SequenceMachineLib.roundAway ((A067824 (n + 1) : ℚ) / (A002033 n : ℚ))).toNat : ℚ)

end

end A003238.P2558275926313914493

/-! ## A003238.P9742158382266189267

`A003318(n+2)-(A214579(n+1)+A003318(n+1))`
-/

namespace A003238.P9742158382266189267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003318 (n + 2) - (A214579 (n + 1) + A003318 (n + 1))

end

end A003238.P9742158382266189267

/-! ## A003238.P1210040870255484805

`A068336(n+1)/A068324(A068319(n+4))`
-/

namespace A003238.P1210040870255484805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (A068324 (A068319 (n + 4)).toNat : ℚ)

end

end A003238.P1210040870255484805

/-! ## A003238.P14416657675174105594

`A068336(n+1)/A089080(A004273(n)+1)`
-/

namespace A003238.P14416657675174105594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068336 (n + 1) : ℚ) / (A089080 (A004273 n + 1).toNat : ℚ)

end

end A003238.P14416657675174105594

/-! ## A003238.P4676542078829586104

`A007439(2*(n+1))-A345141(2*(n+1))`
-/

namespace A003238.P4676542078829586104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007439 (2 * (n + 1)) - A345141 (2 * (n + 1))

end

end A003238.P4676542078829586104

/-! ## A003238.P5436779455148018232

`2*A007439(2*(n+1))-A346117(2*(n+1))`
-/

namespace A003238.P5436779455148018232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007439 (2 * (n + 1)) - A346117 (2 * (n + 1))

end

end A003238.P5436779455148018232

/-! ## A003238.P4834803664342651508

`A143810(∑[n+1])`
-/

namespace A003238.P4834803664342651508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143810 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003238.P4834803664342651508

/-! ## A003238.P1555309227194271224

`A214576(∑[n]+1)`
-/

namespace A003238.P1555309227194271224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214576 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003238.P1555309227194271224

/-! ## A003238.P1360639506743752490

`record[A214576(n+1)]-A214579(n+1)`
-/

namespace A003238.P1360639506743752490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A214579 (n + 1)

end

end A003238.P1360639506743752490

/-!
# A003239: Number of rooted planar trees with n non-root nodes: circularly cycling the subtrees at the root gives equivalent trees.

The programs for A003239, there is no canonical definition to state claims against.
-/

/-! ## A003239.P7442602280241954891

`ceil(A123611(n)/2)`
-/

namespace A003239.P7442602280241954891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123611 n : ℚ) / 2⌉

end

end A003239.P7442602280241954891

/-! ## A003239.P11478199465069095793

`A123611(floor(2/acot(n))-n)/2`
-/

namespace A003239.P11478199465069095793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123611 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat : ℚ) / 2

end

end A003239.P11478199465069095793

/-! ## A003239.P10531425232349692698

`A123611(A028310(n))/2`
-/

namespace A003239.P10531425232349692698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123611 (A028310 n).toNat : ℚ) / 2

end

end A003239.P10531425232349692698

/-! ## A003239.P12211911112624085236

`A386946(n)+A022553(n)`
-/

namespace A003239.P12211911112624085236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386946 n + A022553 n

end

end A003239.P12211911112624085236

/-! ## A003239.P4673390129758770883

`A386388(n)+A045629(n)`
-/

namespace A003239.P4673390129758770883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386388 n + A045629 n

end

end A003239.P4673390129758770883

/-! ## A003239.P14787410615325064595

`∑{d}[A028310(n), A022553(#)]`
-/

namespace A003239.P14787410615325064595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A022553 d

end

end A003239.P14787410615325064595

/-! ## A003239.P3564825222103986636

`A002995(n+1)+A000150(n)`
-/

namespace A003239.P3564825222103986636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 (n + 1) + A000150 n

end

end A003239.P3564825222103986636

/-! ## A003239.P18246234245146913505

`A123611(n)/A036453(n+1)`
-/

namespace A003239.P18246234245146913505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123611 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A003239.P18246234245146913505

/-! ## A003239.P4304704743837725459

`A000013(n)+2*A386388(n)`
-/

namespace A003239.P4304704743837725459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n + 2 * A386388 n

end

end A003239.P4304704743837725459

/-! ## A003239.P3293506971305287837

`2*A045629(n)-A000013(n)`
-/

namespace A003239.P3293506971305287837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045629 n - A000013 n

end

end A003239.P3293506971305287837

/-! ## A003239.P2202232652322929626

`(A054357(n)+A000108(n))/2`
-/

namespace A003239.P2202232652322929626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054357 n + A000108 n : ℚ) / 2

end

end A003239.P2202232652322929626

/-! ## A003239.P9862917018213294382

`A123611(A004277(n)-n)/2`
-/

namespace A003239.P9862917018213294382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123611 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A003239.P9862917018213294382

/-! ## A003239.P5120603312747065956

`A123611(n)/A137367(n+1)%3`
-/

namespace A003239.P5120603312747065956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123611 n : ℚ) / (Int.tmod (A137367 (n + 1)) 3 : ℚ)

end

end A003239.P5120603312747065956

/-! ## A003239.P15925617410060272262

`A072506(A179865(n+1))`
-/

namespace A003239.P15925617410060272262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072506 (A179865 (n + 1)).toNat

end

end A003239.P15925617410060272262

/-! ## A003239.P2434753190010962071

`A072506(A212342(n)+1)`
-/

namespace A003239.P2434753190010962071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072506 (A212342 n + 1).toNat

end

end A003239.P2434753190010962071

/-!
# A003240: Number of partially achiral rooted trees.

The programs for A003240, there is no canonical definition to state claims against.
-/

/-! ## A003240.P3479650258891208330

`A189076(n)+A004198(A007660(n))`
-/

namespace A003240.P3479650258891208330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189076 n + A004198 (A007660 n).toNat

end

end A003240.P3479650258891208330

/-! ## A003240.P16625092629827062688

`A243083(n)-A243067(A243066(n+1))²`
-/

namespace A003240.P16625092629827062688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243083 n - A243067 (A243066 (n + 1)).toNat ^ 2

end

end A003240.P16625092629827062688

/-! ## A003240.P3071525274069486119

`A194698(A265062(2*(n+2))+A000010(3*n+2))`
-/

namespace A003240.P3071525274069486119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A265062 (2 * (n + 2)) + A000010 (3 * n + 2)).toNat

end

end A003240.P3071525274069486119

/-! ## A003240.P18351320157086737256

`A194698(A265062(2*(n+2))+A064989(3*n+2))`
-/

namespace A003240.P18351320157086737256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A265062 (2 * (n + 2)) + A064989 (3 * n + 2)).toNat

end

end A003240.P18351320157086737256

/-! ## A003240.P12167567278437240734

`A135304(A059174(n))`
-/

namespace A003240.P12167567278437240734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A059174 n).toNat

end

end A003240.P12167567278437240734

/-!
# A003241: Number of achiral rooted trees.

The programs for A003241, there is no canonical definition to state claims against.
-/

/-! ## A003241.P8987240338887498301

`round((n²+8)²/72)-A318950(A318957(n+1))`
-/

namespace A003241.P8987240338887498301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 + 8) ^ 2 : ℚ) / 72) - A318950 (A318957 (n + 1)).toNat

end

end A003241.P8987240338887498301

/-! ## A003241.P10937469317373425451

`A352667(n+1)+A070939(A000108(n))`
-/

namespace A003241.P10937469317373425451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352667 (n + 1) + A070939 (A000108 n).toNat

end

end A003241.P10937469317373425451

/-! ## A003241.P6858226861499484617

`A088725(A332578(n))`
-/

namespace A003241.P6858226861499484617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (A332578 n).toNat

end

end A003241.P6858226861499484617

/-! ## A003241.P9404584914970524042

`A345913(A061257(n)+1)`
-/

namespace A003241.P9404584914970524042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A061257 n + 1).toNat

end

end A003241.P9404584914970524042

/-! ## A003241.P3017844450620344707

`A360553(A000070(n))-A256389(n+1)`
-/

namespace A003241.P3017844450620344707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (A000070 n).toNat - A256389 (n + 1)

end

end A003241.P3017844450620344707

/-!
# A003242: Number of compositions of n such that no two adjacent parts are equal (these are sometimes called Carlitz compositions).

The programs for A003242, there is no canonical definition to state claims against.
-/

/-! ## A003242.P302570411633386219

`A285981(n)+A032020(n)`
-/

namespace A003242.P302570411633386219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285981 n + A032020 n

end

end A003242.P302570411633386219

/-! ## A003242.P11707855121813402669

`A345195(n)+A025047(n)`
-/

namespace A003242.P11707855121813402669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345195 n + A025047 n

end

end A003242.P11707855121813402669

/-! ## A003242.P7242016614925235824

`A261984(n)+A261962(n)`
-/

namespace A003242.P7242016614925235824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261984 n + A261962 n

end

end A003242.P7242016614925235824

/-! ## A003242.P10901558218303155597

`A011782(n)-A261983(n)`
-/

namespace A003242.P10901558218303155597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A261983 n

end

end A003242.P10901558218303155597

/-! ## A003242.P10344734313810758875

`Δ[A056469(n)]-A261983(n)`
-/

namespace A003242.P10344734313810758875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A261983 n

end

end A003242.P10344734313810758875

/-! ## A003242.P14374995891586355868

`A106356(C(n, 2)+1)`
-/

namespace A003242.P14374995891586355868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (Nat.choose n 2 + 1)

end

end A003242.P14374995891586355868

/-! ## A003242.P2171012133760151938

`A106356(∑[abs(1-n)])`
-/

namespace A003242.P2171012133760151938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003242.P2171012133760151938

/-! ## A003242.P6023271182656748218

`A285981(n)+A242447(A133263(n)-1)`
-/

namespace A003242.P6023271182656748218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285981 n + A242447 (A133263 n - 1).toNat

end

end A003242.P6023271182656748218

/-! ## A003242.P1571237479593844121

`A373949(∑[n]+n)`
-/

namespace A003242.P1571237479593844121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A003242.P1571237479593844121

/-! ## A003242.P14313217854420888447

`A091613(∑[abs(1-n)])`
-/

namespace A003242.P14313217854420888447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003242.P14313217854420888447

/-!
# A003243: Number of partially achiral trees with n nodes.

The programs for A003243, there is no canonical definition to state claims against.
-/

/-! ## A003243.P2445601823285185208

`A002024(A218210(n+1))-2^floor(n/2)`
-/

namespace A003243.P2445601823285185208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (A218210 (n + 1)).toNat : ℚ) - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A003243.P2445601823285185208

/-! ## A003243.P10363857816479915912

`A085736(A309807(n))`
-/

namespace A003243.P10363857816479915912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A309807 n).toNat

end

end A003243.P10363857816479915912

/-! ## A003243.P3745766269051847147

`A102800(A066313(n+1))`
-/

namespace A003243.P3745766269051847147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A066313 (n + 1)).toNat

end

end A003243.P3745766269051847147

/-! ## A003243.P9075538527187791428

`A259361(A178606(n+1))`
-/

namespace A003243.P9075538527187791428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A178606 (n + 1)).toNat

end

end A003243.P9075538527187791428

/-! ## A003243.P5703718783608008660

`A089867(round(sqrt(A320806(n))))`
-/

namespace A003243.P5703718783608008660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (SequenceMachineLib.roundAway (Real.sqrt (A320806 n : ℝ))).toNat

end

end A003243.P5703718783608008660

/-!
# A003244: Number of unrooted achiral trees with n nodes.

The programs for A003244, there is no canonical definition to state claims against.
-/

/-! ## A003244.P8830038809389453958

`A357862(A239882(n))`
-/

namespace A003244.P8830038809389453958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357862 (A239882 n).toNat

end

end A003244.P8830038809389453958

/-! ## A003244.P5425494744089718869

`A207333(A027343(n)-A032741(n))`
-/

namespace A003244.P5425494744089718869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207333 (A027343 n - A032741 n).toNat

end

end A003244.P5425494744089718869

/-! ## A003244.P7883170257648013352

`A325400(A000041(n+1))-n`
-/

namespace A003244.P7883170257648013352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A000041 (n + 1)).toNat - (n : ℤ)

end

end A003244.P7883170257648013352

/-! ## A003244.P9019401206043037544

`A279385(A000009(2*n+1))-n`
-/

namespace A003244.P9019401206043037544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A000009 (2 * n + 1)).toNat - (n : ℤ)

end

end A003244.P9019401206043037544

/-!
# A003245: Nearest integer to -4n/Bernoulli(2n).

The programs for A003245, there is no canonical definition to state claims against.
-/

/-! ## A003245.P151502466682323449

`A003272(n)-A288314(A195584(n))`
-/

namespace A003245.P151502466682323449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003272 n - A288314 (A195584 n).toNat

end

end A003245.P151502466682323449

/-!
# A003246: Discriminants of real quadratic norm-Euclidean fields (a finite sequence).

The programs for A003246, there is no canonical definition to state claims against.
-/

/-! ## A003246.P1864439408945413647

`A003656(∑[A117358(A008279(n))])`
-/

namespace A003246.P1864439408945413647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A008279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003246.P1864439408945413647

/-! ## A003246.P7769841060383080731

`A003656(∑[A028234(A273333(n))])`
-/

namespace A003246.P7769841060383080731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A273333 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003246.P7769841060383080731

/-! ## A003246.P6591490269173264307

`A003656(∑[A178832(A134478(n))])`
-/

namespace A003246.P6591490269173264307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003246.P6591490269173264307

/-! ## A003246.P10668020699838886113

`A003656(∑[A348500(A057123(n))])`
-/

namespace A003246.P10668020699838886113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348500 (A057123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003246.P10668020699838886113

/-! ## A003246.P4542533825280481023

`xor(A003656(n+1), A004016(A053800(2*(n+2))))`
-/

namespace A003246.P4542533825280481023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003656 (n + 1)) (A004016 (A053800 (2 * (n + 2))).toNat)

end

end A003246.P4542533825280481023

/-!
# A003247: Complement of A003248.

The programs for A003247, the canonical program `A003247.P11452999673818249551` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003247 has offset 1).

The definition of A003247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003247.P11452999673818249551

`∑[A001950(n+1)-A003259(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003247

/-- `∑[A001950(n+1)-A003259(n+1)]` -/
def P11452999673818249551.Spec : Prop :=
  ∀ n, P11452999673818249551.a n = A003247 (n + 1)

theorem P11452999673818249551.correct : P11452999673818249551.Spec := by
  intro n
  simp only [A003247, Nat.add_sub_cancel]

end A003247

/-! ## A003247.P2517391857243401918

`∑[A014675(A003259(n+1))]`
-/

namespace A003247.P2517391857243401918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A003259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003247.P2517391857243401918

namespace A003247

/-- `∑[A014675(A003259(n+1))]` -/
def P2517391857243401918.Spec : Prop :=
  ∀ n, P2517391857243401918.a n = A003247 (n + 1)

end A003247

/-! ## A003247.P590506192703954509

`∑[floor(sqrt(A309198(5*n+1)))]`
-/

namespace A003247.P590506192703954509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A309198 (5 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003247.P590506192703954509

namespace A003247

/-- `∑[floor(sqrt(A309198(5*n+1)))]` -/
def P590506192703954509.Spec : Prop :=
  ∀ n, P590506192703954509.a n = A003247 (n + 1)

end A003247

/-! ## A003247.P7127652399432542315

`∑[A001468(A003849(n)*A284624(n+1))]`
-/

namespace A003247.P7127652399432542315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A003849 n * A284624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003247.P7127652399432542315

namespace A003247

/-- `∑[A001468(A003849(n)*A284624(n+1))]` -/
def P7127652399432542315.Spec : Prop :=
  ∀ n, P7127652399432542315.a n = A003247 (n + 1)

end A003247

/-! ## A003247.P16788125507117558747

`∑[A159917(floor(ϕ*n+2*n+1))!]`
-/

namespace A003247.P16788125507117558747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A159917 ⌊Real.goldenRatio * (n : ℝ) + (2 * n + 1 : ℝ)⌋.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003247.P16788125507117558747

namespace A003247

/-- `∑[A159917(floor(ϕ*n+2*n+1))!]` -/
def P16788125507117558747.Spec : Prop :=
  ∀ n, (P16788125507117558747.a n : ℤ) = A003247 (n + 1)

end A003247

/-! ## A003247.P3105554650884176913

`∑[A188009(A284624(n+1)+2)+1]`
-/

namespace A003247.P3105554650884176913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A284624 (n + 1) + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003247.P3105554650884176913

namespace A003247

/-- `∑[A188009(A284624(n+1)+2)+1]` -/
def P3105554650884176913.Spec : Prop :=
  ∀ n, P3105554650884176913.a n = A003247 (n + 1)

end A003247

/-! ## A003247.P7825677287333326085

`3*floor(ϕ*(n+1))+n+1-A003252(A000201(n+1))`
-/

namespace A003247.P7825677287333326085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n + 1 : ℤ) - A003252 (A000201 (n + 1)).toNat

end

end A003247.P7825677287333326085

namespace A003247

/-- `3*floor(ϕ*(n+1))+n+1-A003252(A000201(n+1))` -/
def P7825677287333326085.Spec : Prop :=
  ∀ n, P7825677287333326085.a n = A003247 (n + 1)

end A003247

/-! ## A003247.P3877640309038127414

`∑[A001468(A003622(n+1)+64)]%A226184(n+1)`
-/

namespace A003247.P3877640309038127414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A003622 (n + 1) + 64).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A226184 (n + 1))

end

end A003247.P3877640309038127414

namespace A003247

/-- `∑[A001468(A003622(n+1)+64)]%A226184(n+1)` -/
def P3877640309038127414.Spec : Prop :=
  ∀ n, P3877640309038127414.a n = A003247 (n + 1)

end A003247

/-! ## A003247.P13511964329926667446

`∑[A003842(A000201(n+1)+38)]%A198277(n)`
-/

namespace A003247.P13511964329926667446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A000201 (n + 1) + 38).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A198277 n)

end

end A003247.P13511964329926667446

namespace A003247

/-- `∑[A003842(A000201(n+1)+38)]%A198277(n)` -/
def P13511964329926667446.Spec : Prop :=
  ∀ n, P13511964329926667446.a n = A003247 (n + 1)

end A003247

/-! ## A003247.P9237611433629779907

`∑[A245920(floor(ϕ*floor((n+1)*(ϕ+1))))]`
-/

namespace A003247.P9237611433629779907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 ⌊Real.goldenRatio * (⌊(n + 1 : ℝ) * (Real.goldenRatio + 1)⌋ : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003247.P9237611433629779907

namespace A003247

/-- `∑[A245920(floor(ϕ*floor((n+1)*(ϕ+1))))]` -/
def P9237611433629779907.Spec : Prop :=
  ∀ n, P9237611433629779907.a n = A003247 (n + 1)

end A003247

/-!
# A003248: a(n) = A000201(A003234(n)) + n.

The programs for A003248, there is no canonical definition to state claims against.
-/

/-! ## A003248.P3702745666258538692

`A000201(A003234(n+1))+n+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003248.P3702745666258538692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A003234 (n + 1)).toNat + (n + 1 : ℤ)

end

end A003248.P3702745666258538692

/-! ## A003248.P3786430982855660106

`A003249(n+1)-A003234(n+1)+n`
-/

namespace A003248.P3786430982855660106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1) - A003234 (n + 1) + (n : ℤ)

end

end A003248.P3786430982855660106

/-! ## A003248.P10528869218724935145

`A003234(n+1)+A003233(A003254(n+1))+n`
-/

namespace A003248.P10528869218724935145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1) + (A003233 (A003254 (n + 1)).toNat + (n : ℤ))

end

end A003248.P10528869218724935145

/-! ## A003248.P13247154523198292746

`A001950(A003233(A003254(n+1)))+n`
-/

namespace A003248.P13247154523198292746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A003233 (A003254 (n + 1)).toNat).toNat + (n : ℤ)

end

end A003248.P13247154523198292746

/-! ## A003248.P15665166976566572351

`A002251(A003234(n+1))+n`
-/

namespace A003248.P15665166976566572351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A003234 (n + 1)).toNat + (n : ℤ)

end

end A003248.P15665166976566572351

/-! ## A003248.P12019739092299904200

`A004956(A003234(n+1))-A001489(n)`
-/

namespace A003248.P12019739092299904200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A003234 (n + 1)).toNat - A001489 n

end

end A003248.P12019739092299904200

/-! ## A003248.P1567086312842642551

`A060143(A026351(n))+A026351(A003234(n+1))`
-/

namespace A003248.P1567086312842642551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A026351 n).toNat + A026351 (A003234 (n + 1)).toNat

end

end A003248.P1567086312842642551

/-! ## A003248.P9260911095395495909

`A005206(A003249(n+1))+n`
-/

namespace A003248.P9260911095395495909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003249 (n + 1)).toNat + (n : ℤ)

end

end A003248.P9260911095395495909

/-! ## A003248.P14755066494436796207

`A026272(A003249(n+1)-1)+n`
-/

namespace A003248.P14755066494436796207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (A003249 (n + 1) - 1).toNat + (n : ℤ)

end

end A003248.P14755066494436796207

/-! ## A003248.P11203183309503467111

`A001950(A242094(A247421(n+1)))+n`
-/

namespace A003248.P11203183309503467111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A242094 (A247421 (n + 1)).toNat).toNat + (n : ℤ)

end

end A003248.P11203183309503467111

/-!
# A003249: a(n) = A001950(A003234(n)) + 1.

The programs for A003249, there is no canonical definition to state claims against.
-/

/-! ## A003249.P1849405920755166335

`A001950(A003234(n+1))+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A003249.P1849405920755166335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A003234 (n + 1)).toNat + 1

end

end A003249.P1849405920755166335

/-! ## A003249.P14162331970447469669

`floor(ϕ*(A003248(n+1)-n))`
-/

namespace A003249.P14162331970447469669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A003248 (n + 1) - (n : ℤ) : ℝ)⌋

end

end A003249.P14162331970447469669

/-! ## A003249.P16080362963376318301

`A003234(n+1)+A003248(n+1)-n`
-/

namespace A003249.P16080362963376318301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1) + (A003248 (n + 1) - (n : ℤ))

end

end A003249.P16080362963376318301

/-! ## A003249.P10009859533327710721

`A003233(A003254(n+1))+2*A003234(n+1)`
-/

namespace A003249.P10009859533327710721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (A003254 (n + 1)).toNat + 2 * A003234 (n + 1)

end

end A003249.P10009859533327710721

/-! ## A003249.P13473294610175224200

`A003234(A003247(A003233(A003254(n+1))))`
-/

namespace A003249.P13473294610175224200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (A003247 (A003233 (A003254 (n + 1)).toNat).toNat).toNat

end

end A003249.P13473294610175224200

/-! ## A003249.P12003115600467279513

`A004937(A003234(n+1))`
-/

namespace A003249.P12003115600467279513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (A003234 (n + 1)).toNat

end

end A003249.P12003115600467279513

/-! ## A003249.P5617340556940795892

`∩[A247426(n+1), A004957(n)]`
-/

namespace A003249.P5617340556940795892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P5617340556940795892

/-! ## A003249.P14016508314107248430

`∩[A247426(n+1), A004976(n)]`
-/

namespace A003249.P14016508314107248430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P14016508314107248430

/-! ## A003249.P11041142960128914745

`∩[A247426(n+1), A026352(n)]`
-/

namespace A003249.P11041142960128914745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P11041142960128914745

/-! ## A003249.P9469158632060578751

`∩[A003234(n+1), A247426(n+1)]`
-/

namespace A003249.P9469158632060578751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P9469158632060578751

/-! ## A003249.P2711740451124663268

`∩[A003623(n+1), A247426(n+1)]`
-/

namespace A003249.P2711740451124663268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P2711740451124663268

/-! ## A003249.P2012681901287414248

`∩[A140400(n+1), A247426(n+1)]`
-/

namespace A003249.P2012681901287414248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P2012681901287414248

/-! ## A003249.P17573775476893984104

`∩[A188012(n+1), A247426(n+1)]`
-/

namespace A003249.P17573775476893984104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P17573775476893984104

/-! ## A003249.P6815768568294903326

`∩[A188018(n+1), A247426(n+1)]`
-/

namespace A003249.P6815768568294903326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P6815768568294903326

/-! ## A003249.P12389488532473821238

`∩[A188032(n+1), A247426(n+1)]`
-/

namespace A003249.P12389488532473821238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P12389488532473821238

/-! ## A003249.P7979489250905872068

`∩[A188217(n+1), A247426(n+1)]`
-/

namespace A003249.P7979489250905872068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P7979489250905872068

/-! ## A003249.P8811838926953059331

`∩[A188438(n+1), A247426(n+1)]`
-/

namespace A003249.P8811838926953059331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P8811838926953059331

/-! ## A003249.P1474013973089033859

`∩[A188473(n+1), A247426(n+1)]`
-/

namespace A003249.P1474013973089033859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P1474013973089033859

/-! ## A003249.P13078129165399076792

`∩[A190158(n+1), A247426(n+1)]`
-/

namespace A003249.P13078129165399076792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P13078129165399076792

/-! ## A003249.P16917956771608668003

`∩[A190251(n+1), A247426(n+1)]`
-/

namespace A003249.P16917956771608668003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003249.P16917956771608668003

/-!
# A003250: The number m such that A001950(m) = A003231(A003234(n)).

The programs for A003250, there is no canonical definition to state claims against.
-/

/-! ## A003250.P7693034182181294889

`ceil(1/ϕ²*A003231(A003234(n+1)))`
-/

namespace A003250.P7693034182181294889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / Real.goldenRatio ^ 2 * (A003231 (A003234 (n + 1)).toNat : ℝ)⌉

end

end A003250.P7693034182181294889

/-! ## A003250.P5031971706435069697

`floor((3-ϕ)*A003234(n+1))`
-/

namespace A003250.P5031971706435069697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 - Real.goldenRatio) * (A003234 (n + 1) : ℝ)⌋

end

end A003250.P5031971706435069697

/-! ## A003250.P15068348243416048780

`4*A003234(n+1)-A003249(n+1)`
-/

namespace A003250.P15068348243416048780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003234 (n + 1) - A003249 (n + 1)

end

end A003250.P15068348243416048780

/-! ## A003250.P6293772597764214189

`2*A003234(n+1)-A003233(A003254(n+1))`
-/

namespace A003250.P6293772597764214189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003234 (n + 1) - A003233 (A003254 (n + 1)).toNat

end

end A003250.P6293772597764214189

/-! ## A003250.P1295248752301581114

`A249115(A003234(n+1))`
-/

namespace A003250.P1295248752301581114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A003234 (n + 1)).toNat

end

end A003250.P1295248752301581114

/-! ## A003250.P14486796449637853526

`eq[1, (A195170(n)-n)%5]`
-/

namespace A003250.P14486796449637853526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195170 n - (n : ℤ)) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003250.P14486796449637853526

/-! ## A003250.P10327965544084360434

`record[A188433(n+1)+A026272(A190509(n+1))]`
-/

namespace A003250.P10327965544084360434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (n + 1) + A026272 (A190509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003250.P10327965544084360434

/-! ## A003250.P17241012666938184114

`eq[1, A221150(A022413(n))]`
-/

namespace A003250.P17241012666938184114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (A022413 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003250.P17241012666938184114

/-! ## A003250.P13170433631352011284

`eq[1, A079998(A214971(n+1))]`
-/

namespace A003250.P13170433631352011284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A214971 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003250.P13170433631352011284

/-! ## A003250.P15176152393663786497

`A060144(A247433(n+1)-A005206(n))`
-/

namespace A003250.P15176152393663786497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A247433 (n + 1) - A005206 n).toNat

end

end A003250.P15176152393663786497

/-!
# A003251: Complement of A003250.

The programs for A003251, the canonical program `A003251.P1917370162487777075` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003251 has offset 1).

The definition of A003251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003251.P15974266887415709480

`comp[A003250(n+1)-1]+1`
-/

namespace A003251.P15974266887415709480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003250 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A003251.P15974266887415709480

namespace A003251

/-- `comp[A003250(n+1)-1]+1` -/
def P15974266887415709480.Spec : Prop :=
  ∀ n, (P15974266887415709480.a n : ℤ) = A003251 (n + 1)

end A003251

/-! ## A003251.P1917370162487777075

`eq[1, gcd(5, A060144(n)+n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003251

/-- `eq[1, gcd(5, A060144(n)+n)]` -/
def P1917370162487777075.Spec : Prop :=
  ∀ n, (P1917370162487777075.a n : ℤ) = A003251 (n + 1)

theorem P1917370162487777075.correct : P1917370162487777075.Spec := by
  intro n
  simp only [A003251, Nat.add_sub_cancel]

end A003251

/-! ## A003251.P13187640074304105045

`record[A003603(A008486(n)-A007067(n))]`
-/

namespace A003251.P13187640074304105045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A008486 n - A007067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003251.P13187640074304105045

namespace A003251

/-- `record[A003603(A008486(n)-A007067(n))]` -/
def P13187640074304105045.Spec : Prop :=
  ∀ n, P13187640074304105045.a n = A003251 (n + 1)

end A003251

/-! ## A003251.P11846505528283025600

`record[A003603(A026351(n)-A300763(n))]`
-/

namespace A003251.P11846505528283025600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A026351 n - A300763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003251.P11846505528283025600

namespace A003251

/-- `record[A003603(A026351(n)-A300763(n))]` -/
def P11846505528283025600.Spec : Prop :=
  ∀ n, P11846505528283025600.a n = A003251 (n + 1)

end A003251

/-! ## A003251.P16537976831011999642

`eq[A000007(n), A221150(A022413(n))]`
-/

namespace A003251.P16537976831011999642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (A022413 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003251.P16537976831011999642

namespace A003251

/-- `eq[A000007(n), A221150(A022413(n))]` -/
def P16537976831011999642.Spec : Prop :=
  ∀ n, (P16537976831011999642.a n : ℤ) = A003251 (n + 1)

end A003251

/-! ## A003251.P2552693480146805342

`eq[A000038(n), A221150(A022413(n))]`
-/

namespace A003251.P2552693480146805342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (A022413 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003251.P2552693480146805342

namespace A003251

/-- `eq[A000038(n), A221150(A022413(n))]` -/
def P2552693480146805342.Spec : Prop :=
  ∀ n, (P2552693480146805342.a n : ℤ) = A003251 (n + 1)

end A003251

/-! ## A003251.P7957107641107841639

`eq[A000007(n), A079998(A214971(n+1))]`
-/

namespace A003251.P7957107641107841639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A214971 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003251.P7957107641107841639

namespace A003251

/-- `eq[A000007(n), A079998(A214971(n+1))]` -/
def P7957107641107841639.Spec : Prop :=
  ∀ n, (P7957107641107841639.a n : ℤ) = A003251 (n + 1)

end A003251

/-! ## A003251.P17051677228224984725

`eq[A000038(n), A079998(A214971(n+1))]`
-/

namespace A003251.P17051677228224984725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A214971 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003251.P17051677228224984725

namespace A003251

/-- `eq[A000038(n), A079998(A214971(n+1))]` -/
def P17051677228224984725.Spec : Prop :=
  ∀ n, (P17051677228224984725.a n : ℤ) = A003251 (n + 1)

end A003251

/-! ## A003251.P18355234368343481222

`eq[0, A221150(A001950(A007066(n+1)))]`
-/

namespace A003251.P18355234368343481222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (A001950 (A007066 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003251.P18355234368343481222

namespace A003251

/-- `eq[0, A221150(A001950(A007066(n+1)))]` -/
def P18355234368343481222.Spec : Prop :=
  ∀ n, (P18355234368343481222.a n : ℤ) = A003251 (n + 1)

end A003251

/-! ## A003251.P404685057038293458

`record[A221150(A001950(n+1))+A060144(n)]`
-/

namespace A003251.P404685057038293458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221150 (A001950 (n + 1)).toNat + A060144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003251.P404685057038293458

namespace A003251

/-- `record[A221150(A001950(n+1))+A060144(n)]` -/
def P404685057038293458.Spec : Prop :=
  ∀ n, P404685057038293458.a n = A003251 (n + 1)

end A003251

/-!
# A003252: The number m such that A003251(m) = A003231(n).

The programs for A003252, the canonical program `A003252.P10872519119112551421` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003252 has offset 1).

The definition of A003252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003252.P10872519119112551421

`∑[A001468(A026272(n+1)+n)+1]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A003252

/-- `∑[A001468(A026272(n+1)+n)+1]` -/
def P10872519119112551421.Spec : Prop :=
  ∀ n, P10872519119112551421.a n = A003252 (n + 1)

theorem P10872519119112551421.correct : P10872519119112551421.Spec := by
  intro n
  simp only [A003252, Nat.add_sub_cancel]

end A003252

/-! ## A003252.P5333063673704589996

`A003254(A003247(n+1))+1+n`
-/

namespace A003252.P5333063673704589996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003254 (A003247 (n + 1)).toNat + 1 + (n : ℤ)

end

end A003252.P5333063673704589996

namespace A003252

/-- `A003254(A003247(n+1))+1+n` -/
def P5333063673704589996.Spec : Prop :=
  ∀ n, P5333063673704589996.a n = A003252 (n + 1)

end A003252

/-! ## A003252.P2436039222167326028

`A003247(n+1)+∑[A001468(A214971(n+1))]`
-/

namespace A003252.P2436039222167326028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A214971 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003247 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P2436039222167326028

namespace A003252

/-- `A003247(n+1)+∑[A001468(A214971(n+1))]` -/
def P2436039222167326028.Spec : Prop :=
  ∀ n, P2436039222167326028.a n = A003252 (n + 1)

end A003252

/-! ## A003252.P13391949579250413361

`∑[A076662(A190723(floor((ϕ+2)*(n+1))))]`
-/

namespace A003252.P13391949579250413361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (A190723 ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P13391949579250413361

namespace A003252

/-- `∑[A076662(A190723(floor((ϕ+2)*(n+1))))]` -/
def P13391949579250413361.Spec : Prop :=
  ∀ n, P13391949579250413361.a n = A003252 (n + 1)

end A003252

/-! ## A003252.P7213490925533344014

`∑[A108103(A050140(2*(2*floor(ϕ*(n+1))+n)))]`
-/

namespace A003252.P7213490925533344014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A050140 (2 * (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P7213490925533344014

namespace A003252

/-- `∑[A108103(A050140(2*(2*floor(ϕ*(n+1))+n)))]` -/
def P7213490925533344014.Spec : Prop :=
  ∀ n, P7213490925533344014.a n = A003252 (n + 1)

end A003252

/-! ## A003252.P827265358329749823

`∑[A245920(A007066(n+2))+1]`
-/

namespace A003252.P827265358329749823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A007066 (n + 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P827265358329749823

namespace A003252

/-- `∑[A245920(A007066(n+2))+1]` -/
def P827265358329749823.Spec : Prop :=
  ∀ n, P827265358329749823.a n = A003252 (n + 1)

end A003252

/-! ## A003252.P2130432221167811625

`∑[A245920(A001950(n+1)+2)+1]`
-/

namespace A003252.P2130432221167811625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A001950 (n + 1) + 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P2130432221167811625

namespace A003252

/-- `∑[A245920(A001950(n+1)+2)+1]` -/
def P2130432221167811625.Spec : Prop :=
  ∀ n, P2130432221167811625.a n = A003252 (n + 1)

end A003252

/-! ## A003252.P5152872497099468638

`∑[A245920(A003622(n+1)+3)+1]`
-/

namespace A003252.P5152872497099468638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245920 (A003622 (n + 1) + 3).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003252.P5152872497099468638

namespace A003252

/-- `∑[A245920(A003622(n+1)+3)+1]` -/
def P5152872497099468638.Spec : Prop :=
  ∀ n, P5152872497099468638.a n = A003252 (n + 1)

end A003252

/-! ## A003252.P14470373488587512102

`A247427(n+1)+1+n`
-/

namespace A003252.P14470373488587512102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247427 (n + 1) + 1 + (n : ℤ)

end

end A003252.P14470373488587512102

namespace A003252

/-- `A247427(n+1)+1+n` -/
def P14470373488587512102.Spec : Prop :=
  ∀ n, P14470373488587512102.a n = A003252 (n + 1)

end A003252

/-! ## A003252.P7071477674093229943

`A247429(n+2)+n`
-/

namespace A003252.P7071477674093229943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247429 (n + 2) + (n : ℤ)

end

end A003252.P7071477674093229943

namespace A003252

/-- `A247429(n+2)+n` -/
def P7071477674093229943.Spec : Prop :=
  ∀ n, P7071477674093229943.a n = A003252 (n + 1)

end A003252

/-!
# A003253: Complement of A003252.

The programs for A003253, the canonical program `A003253.P3479415574087350811` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003253 has offset 1).

The definition of A003253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003253.P8238911182476530982

`comp[comp[A242094(n+1)+n]+n]`
-/

namespace A003253.P8238911182476530982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242094 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A003253.P8238911182476530982

namespace A003253

/-- `comp[comp[A242094(n+1)+n]+n]` -/
def P8238911182476530982.Spec : Prop :=
  ∀ n, (P8238911182476530982.a n : ℤ) = A003253 (n + 1)

end A003253

/-! ## A003253.P3479415574087350811

`A060144(A003233(n+1))+n+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003253

/-- `A060144(A003233(n+1))+n+1` -/
def P3479415574087350811.Spec : Prop :=
  ∀ n, P3479415574087350811.a n = A003253 (n + 1)

theorem P3479415574087350811.correct : P3479415574087350811.Spec := by
  intro n
  simp only [A003253, Nat.add_sub_cancel]

end A003253

/-! ## A003253.P17724172376884397158

`A005206(A005206(A003233(n+1)))+n`
-/

namespace A003253.P17724172376884397158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (A003233 (n + 1)).toNat).toNat + (n : ℤ)

end

end A003253.P17724172376884397158

namespace A003253

/-- `A005206(A005206(A003233(n+1)))+n` -/
def P17724172376884397158.Spec : Prop :=
  ∀ n, P17724172376884397158.a n = A003253 (n + 1)

end A003253

/-! ## A003253.P5658551336691670391

`A391618(A001097(n+1)+A000290(3*n+1))`
-/

namespace A003253.P5658551336691670391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A001097 (n + 1) + A000290 (3 * n + 1)).toNat

end

end A003253.P5658551336691670391

namespace A003253

/-- `A391618(A001097(n+1)+A000290(3*n+1))` -/
def P5658551336691670391.Spec : Prop :=
  ∀ n, P5658551336691670391.a n = A003253 (n + 1)

end A003253

/-! ## A003253.P1122945168755082286

`A191266(n+1)-A167374(A146348(n+1))`
-/

namespace A003253.P1122945168755082286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191266 (n + 1) - A167374 (A146348 (n + 1)).toNat

end

end A003253.P1122945168755082286

namespace A003253

/-- `A191266(n+1)-A167374(A146348(n+1))` -/
def P1122945168755082286.Spec : Prop :=
  ∀ n, P1122945168755082286.a n = A003253 (n + 1)

end A003253

/-!
# A003254: The number m such that A003233(m) = A005206(A003234(n)).

The programs for A003254, there is no canonical definition to state claims against.
-/

/-! ## A003254.P13670124598959845415

`A003256(A005206(A003234(n+1)))-A003234(n+1)`
-/

namespace A003254.P13670124598959845415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (A005206 (A003234 (n + 1)).toNat).toNat - A003234 (n + 1)

end

end A003254.P13670124598959845415

/-! ## A003254.P5946855943407601283

`A003249(n+1)-(A003247(A003234(n+1))+A003234(n+1))`
-/

namespace A003254.P5946855943407601283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1) - (A003247 (A003234 (n + 1)).toNat + A003234 (n + 1))

end

end A003254.P5946855943407601283

/-! ## A003254.P17908483183699351123

`A005206(A003249(n+1))-A003247(A003234(n+1))`
-/

namespace A003254.P17908483183699351123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003249 (n + 1)).toNat - A003247 (A003234 (n + 1)).toNat

end

end A003254.P17908483183699351123

/-! ## A003254.P7865514642829959924

`∑[A001468(A003250(n+1)-3)]`
-/

namespace A003254.P7865514642829959924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A003250 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003254.P7865514642829959924

/-! ## A003254.P7712583633863682375

`∑[A000034(A284534(A160824(n+1)))]`
-/

namespace A003254.P7712583633863682375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A284534 (A160824 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003254.P7712583633863682375

/-!
# A003256: a(n) is the number m such that A242094(m) = A001950(n).

The programs for A003256, the canonical program `A003256.P16678740995948322813` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003256 has offset 1).

The definition of A003256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003256.P6883991923359699952

`∑[A282162(n-char[A003234(n+1)])]`
-/

namespace A003256.P6883991923359699952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (n - (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003256.P6883991923359699952

namespace A003256

/-- `∑[A282162(n-char[A003234(n+1)])]` -/
def P6883991923359699952.Spec : Prop :=
  ∀ n, P6883991923359699952.a n = A003256 (n + 1)

end A003256

/-! ## A003256.P10406580056737891307

`A001950(n+1)-∑[char[A003234(n+1)]]`
-/

namespace A003256.P10406580056737891307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A003256.P10406580056737891307

namespace A003256

/-- `A001950(n+1)-∑[char[A003234(n+1)]]` -/
def P10406580056737891307.Spec : Prop :=
  ∀ n, P10406580056737891307.a n = A003256 (n + 1)

end A003256

/-! ## A003256.P16678740995948322813

`A003623(n+1)-A003247(A000201(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003256

/-- `A003623(n+1)-A003247(A000201(n+1))` -/
def P16678740995948322813.Spec : Prop :=
  ∀ n, P16678740995948322813.a n = A003256 (n + 1)

theorem P16678740995948322813.correct : P16678740995948322813.Spec := by
  intro n
  simp only [A003256, Nat.add_sub_cancel]

end A003256

/-! ## A003256.P17948818197650835578

`A003234(A003247(n+1))-A003247(A000201(n+1))`
-/

namespace A003256.P17948818197650835578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003234 (A003247 (n + 1)).toNat - A003247 (A000201 (n + 1)).toNat

end

end A003256.P17948818197650835578

namespace A003256

/-- `A003234(A003247(n+1))-A003247(A000201(n+1))` -/
def P17948818197650835578.Spec : Prop :=
  ∀ n, P17948818197650835578.a n = A003256 (n + 1)

end A003256

/-! ## A003256.P7157100262086411096

`A000201(n+1)+A001950(n+1)-A003247(A000201(n+1))`
-/

namespace A003256.P7157100262086411096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + (A001950 (n + 1) - A003247 (A000201 (n + 1)).toNat)

end

end A003256.P7157100262086411096

namespace A003256

/-- `A000201(n+1)+A001950(n+1)-A003247(A000201(n+1))` -/
def P7157100262086411096.Spec : Prop :=
  ∀ n, P7157100262086411096.a n = A003256 (n + 1)

theorem P7157100262086411096.correct : P7157100262086411096.Spec := by
  intro n
  simp only [A003256, Nat.add_sub_cancel, A003256.P7157100262086411096.a, A003256.P16678740995948322813.a, A000201, A000201.P2935798382643029248.a, A001950, A001950.P15777532840986476608.a, A003247, A003247.P11452999673818249551.f1, A003247.P11452999673818249551.a, A003623, A003623.P14438316745221780006.a, A003259, A003259.P5602186675624408663.f1, A003259.P5602186675624408663.a, A279054, A279054.P104048885449979253.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A003256

/-! ## A003256.P17203858151928778848

`A247419(2*(n+1))`
-/

namespace A003256.P17203858151928778848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247419 (2 * (n + 1))

end

end A003256.P17203858151928778848

namespace A003256

/-- `A247419(2*(n+1))` -/
def P17203858151928778848.Spec : Prop :=
  ∀ n, P17203858151928778848.a n = A003256 (n + 1)

end A003256

/-! ## A003256.P2706857414861203370

`A247419(Δ[n²])+1`
-/

namespace A003256.P2706857414861203370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A003256.P2706857414861203370

namespace A003256

/-- `A247419(Δ[n²])+1` -/
def P2706857414861203370.Spec : Prop :=
  ∀ n, P2706857414861203370.a n = A003256 (n + 1)

end A003256

/-! ## A003256.P17018361236316441980

`eq[char[A003257(n+1)], A000007(n)]`
-/

namespace A003256.P17018361236316441980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003257 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A003256.P17018361236316441980

namespace A003256

/-- `eq[char[A003257(n+1)], A000007(n)]` -/
def P17018361236316441980.Spec : Prop :=
  ∀ n, (P17018361236316441980.a n : ℤ) = A003256 (n + 1)

end A003256

/-! ## A003256.P9442992616882608350

`A000201(A001950(n+1))-A003247(A000201(n+1))`
-/

namespace A003256.P9442992616882608350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A001950 (n + 1)).toNat - A003247 (A000201 (n + 1)).toNat

end

end A003256.P9442992616882608350

namespace A003256

/-- `A000201(A001950(n+1))-A003247(A000201(n+1))` -/
def P9442992616882608350.Spec : Prop :=
  ∀ n, P9442992616882608350.a n = A003256 (n + 1)

end A003256

/-! ## A003256.P10678358663682148092

`eq[1, A001468(A242094(n+1))]+1`
-/

namespace A003256.P10678358663682148092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A242094 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003256.P10678358663682148092

namespace A003256

/-- `eq[1, A001468(A242094(n+1))]+1` -/
def P10678358663682148092.Spec : Prop :=
  ∀ n, (P10678358663682148092.a n : ℤ) = A003256 (n + 1)

end A003256

/-! ## A003256.P1735826032997819076

`A003252(A001950(n+1))-A283234(n+1)`
-/

namespace A003256.P1735826032997819076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003252 (A001950 (n + 1)).toNat - A283234 (n + 1)

end

end A003256.P1735826032997819076

namespace A003256

/-- `A003252(A001950(n+1))-A283234(n+1)` -/
def P1735826032997819076.Spec : Prop :=
  ∀ n, P1735826032997819076.a n = A003256 (n + 1)

end A003256

/-! ## A003256.P16079692734487245128

`A003252(A283234(n+1)/2)-A283234(n+1)`
-/

namespace A003256.P16079692734487245128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003252 (SequenceMachineLib.roundAway ((A283234 (n + 1) : ℚ) / 2)).toNat - A283234 (n + 1)

end

end A003256.P16079692734487245128

namespace A003256

/-- `A003252(A283234(n+1)/2)-A283234(n+1)` -/
def P16079692734487245128.Spec : Prop :=
  ∀ n, P16079692734487245128.a n = A003256 (n + 1)

end A003256

/-!
# A003257: Complement of A003256.

The programs for A003257, the canonical program `A003257.P5560299711947095320` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003257 has offset 1).

The definition of A003257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003257.P5560299711947095320

`comp[A003256(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003257

/-- `comp[A003256(n+1)-1]+1` -/
def P5560299711947095320.Spec : Prop :=
  ∀ n, (P5560299711947095320.a n : ℤ) = A003257 (n + 1)

theorem P5560299711947095320.correct : P5560299711947095320.Spec := by
  intro n
  simp only [A003257, Nat.add_sub_cancel]

end A003257

/-! ## A003257.P9007929531694215900

`eq[char[A003256(n+1)], A000007(n)]`
-/

namespace A003257.P9007929531694215900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A003257.P9007929531694215900

namespace A003257

/-- `eq[char[A003256(n+1)], A000007(n)]` -/
def P9007929531694215900.Spec : Prop :=
  ∀ n, (P9007929531694215900.a n : ℤ) = A003257 (n + 1)

end A003257

/-! ## A003257.P11089151880969210149

`eq[char[A003256(n+1)], A000038(n)]`
-/

namespace A003257.P11089151880969210149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A003257.P11089151880969210149

namespace A003257

/-- `eq[char[A003256(n+1)], A000038(n)]` -/
def P11089151880969210149.Spec : Prop :=
  ∀ n, (P11089151880969210149.a n : ℤ) = A003257 (n + 1)

end A003257

/-! ## A003257.P12320349282477098204

`eq[char[A003256(n+1)], A332219(2*(n+1))]`
-/

namespace A003257.P12320349282477098204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003256 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332219 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A003257.P12320349282477098204

namespace A003257

/-- `eq[char[A003256(n+1)], A332219(2*(n+1))]` -/
def P12320349282477098204.Spec : Prop :=
  ∀ n, (P12320349282477098204.a n : ℤ) = A003257 (n + 1)

end A003257

/-! ## A003257.P1372876215213165319

`eq[2, A001468(A242094(n+1))]+1`
-/

namespace A003257.P1372876215213165319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A242094 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003257.P1372876215213165319

namespace A003257

/-- `eq[2, A001468(A242094(n+1))]+1` -/
def P1372876215213165319.Spec : Prop :=
  ∀ n, (P1372876215213165319.a n : ℤ) = A003257 (n + 1)

end A003257

/-! ## A003257.P12335442638742580715

`∪[A247422(n+1), A247433(n+1)]`
-/

namespace A003257.P12335442638742580715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003257.P12335442638742580715

namespace A003257

/-- `∪[A247422(n+1), A247433(n+1)]` -/
def P12335442638742580715.Spec : Prop :=
  ∀ n, (P12335442638742580715.a n : ℤ) = A003257 (n + 1)

end A003257

/-! ## A003257.P2056325295878381173

`∪[A247421(n+1)-1, A247422(n+1)]`
-/

namespace A003257.P2056325295878381173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247421 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003257.P2056325295878381173

namespace A003257

/-- `∪[A247421(n+1)-1, A247422(n+1)]` -/
def P2056325295878381173.Spec : Prop :=
  ∀ n, (P2056325295878381173.a n : ℤ) = A003257 (n + 1)

end A003257

/-!
# A003258: The number m such that c'(m) = A005206(A003231(n)), where c'(m) = A249115(m) is the m-th positive integer not in A003231.

The programs for A003258, the canonical program `A003258.P14788947060675104589` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003258 has offset 1).

The definition of A003258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003258.P14788947060675104589

`floor((n+2)*(n/(a(n-1)+2)+1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003258

/-- `floor((n+2)*(n/(a(n-1)+2)+1))` -/
def P14788947060675104589.Spec : Prop :=
  ∀ n, P14788947060675104589.a n = A003258 (n + 1)

theorem P14788947060675104589.correct : P14788947060675104589.Spec := by
  intro n
  simp only [A003258, Nat.add_sub_cancel]

end A003258

/-! ## A003258.P16522249590032585489

`floor(sqrt((n+2)*A001950(n+1)))`
-/

namespace A003258.P16522249590032585489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n + 2 : ℤ) * A001950 (n + 1))

end

end A003258.P16522249590032585489

namespace A003258

/-- `floor(sqrt((n+2)*A001950(n+1)))` -/
def P16522249590032585489.Spec : Prop :=
  ∀ n, P16522249590032585489.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P221960269777552630

`round(sqrt((n+1)*A026278(n+1)))`
-/

namespace A003258.P221960269777552630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * A026278 (n + 1) : ℝ))

end

end A003258.P221960269777552630

namespace A003258

/-- `round(sqrt((n+1)*A026278(n+1)))` -/
def P221960269777552630.Spec : Prop :=
  ∀ n, P221960269777552630.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P357633687626944619

`comp[comp[A279054(n+1)]+n]+1`
-/

namespace A003258.P357633687626944619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A003258.P357633687626944619

namespace A003258

/-- `comp[comp[A279054(n+1)]+n]+1` -/
def P357633687626944619.Spec : Prop :=
  ∀ n, (P357633687626944619.a n : ℤ) = A003258 (n + 1)

end A003258

/-! ## A003258.P3442784453868764493

`round(sqrt((A003622(n+1)+2)*(n+1)))`
-/

namespace A003258.P3442784453868764493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A003622 (n + 1) + 2) * (n + 1 : ℤ) : ℝ))

end

end A003258.P3442784453868764493

namespace A003258

/-- `round(sqrt((A003622(n+1)+2)*(n+1)))` -/
def P3442784453868764493.Spec : Prop :=
  ∀ n, P3442784453868764493.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P2074131392404443631

`A005206(A003231(n+1))-A005206(n)`
-/

namespace A003258.P2074131392404443631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003231 (n + 1)).toNat - A005206 n

end

end A003258.P2074131392404443631

namespace A003258

/-- `A005206(A003231(n+1))-A005206(n)` -/
def P2074131392404443631.Spec : Prop :=
  ∀ n, P2074131392404443631.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P4425378010154239688

`A005206(A054770(n+1)+1)-A005206(n)`
-/

namespace A003258.P4425378010154239688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A054770 (n + 1) + 1).toNat - A005206 n

end

end A003258.P4425378010154239688

namespace A003258

/-- `A005206(A054770(n+1)+1)-A005206(n)` -/
def P4425378010154239688.Spec : Prop :=
  ∀ n, P4425378010154239688.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P13936267957894695498

`A005206(A003623(n+1)-A005206(n))-A005206(n)`
-/

namespace A003258.P13936267957894695498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003623 (n + 1) - A005206 n).toNat - A005206 n

end

end A003258.P13936267957894695498

namespace A003258

/-- `A005206(A003623(n+1)-A005206(n))-A005206(n)` -/
def P13936267957894695498.Spec : Prop :=
  ∀ n, P13936267957894695498.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P5854866938360323830

`A005206(A016897(n)-A249115(n+1))-A005206(n)`
-/

namespace A003258.P5854866938360323830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A016897 n - A249115 (n + 1)).toNat - A005206 n

end

end A003258.P5854866938360323830

namespace A003258

/-- `A005206(A016897(n)-A249115(n+1))-A005206(n)` -/
def P5854866938360323830.Spec : Prop :=
  ∀ n, P5854866938360323830.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P12492844124547816128

`A003251(A003252(n+1)+1)-(2*n+3)`
-/

namespace A003258.P12492844124547816128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003251 (A003252 (n + 1) + 1).toNat - (2 * n + 3 : ℤ)

end

end A003258.P12492844124547816128

namespace A003258

/-- `A003251(A003252(n+1)+1)-(2*n+3)` -/
def P12492844124547816128.Spec : Prop :=
  ∀ n, P12492844124547816128.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P10628162804632629886

`A019446(A054770(n+1)+2)-A019446(n+1)`
-/

namespace A003258.P10628162804632629886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A054770 (n + 1) + 2).toNat - A019446 (n + 1)

end

end A003258.P10628162804632629886

namespace A003258

/-- `A019446(A054770(n+1)+2)-A019446(n+1)` -/
def P10628162804632629886.Spec : Prop :=
  ∀ n, P10628162804632629886.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P16154558447247523290

`A022342(A214971(n+2))-A003623(n+1)`
-/

namespace A003258.P16154558447247523290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A214971 (n + 2)).toNat - A003623 (n + 1)

end

end A003258.P16154558447247523290

namespace A003258

/-- `A022342(A214971(n+2))-A003623(n+1)` -/
def P16154558447247523290.Spec : Prop :=
  ∀ n, P16154558447247523290.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P15171018537109623815

`A060143(A214971(n+2))-A060143(n+1)`
-/

namespace A003258.P15171018537109623815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A214971 (n + 2)).toNat - A060143 (n + 1)

end

end A003258.P15171018537109623815

namespace A003258

/-- `A060143(A214971(n+2))-A060143(n+1)` -/
def P15171018537109623815.Spec : Prop :=
  ∀ n, P15171018537109623815.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P4149154187695272697

`A022342(n+1)+A014675(A342089(n+1))`
-/

namespace A003258.P4149154187695272697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) + A014675 (A342089 (n + 1)).toNat

end

end A003258.P4149154187695272697

namespace A003258

/-- `A022342(n+1)+A014675(A342089(n+1))` -/
def P4149154187695272697.Spec : Prop :=
  ∀ n, P4149154187695272697.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P5851819198371339956

`A005614(A101864(n+1)-n)+A000201(n+1)`
-/

namespace A003258.P5851819198371339956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A101864 (n + 1) - (n : ℤ)).toNat + A000201 (n + 1)

end

end A003258.P5851819198371339956

namespace A003258

/-- `A005614(A101864(n+1)-n)+A000201(n+1)` -/
def P5851819198371339956.Spec : Prop :=
  ∀ n, P5851819198371339956.a n = A003258 (n + 1)

end A003258

/-! ## A003258.P857252665049176486

`A078489(n+1)+n`
-/

namespace A003258.P857252665049176486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078489 (n + 1) + (n : ℤ)

end

end A003258.P857252665049176486

namespace A003258

/-- `A078489(n+1)+n` -/
def P857252665049176486.Spec : Prop :=
  ∀ n, P857252665049176486.a n = A003258 (n + 1)

end A003258

/-!
# A003259: Complement of A003258.

The programs for A003259, the canonical program `A003259.P5602186675624408663` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003259 has offset 1).

The definition of A003259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003259.P17834845758891335821

`A247425(n+1)+n`
-/

namespace A003259.P17834845758891335821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247425 (n + 1) + (n : ℤ)

end

end A003259.P17834845758891335821

namespace A003259

/-- `A247425(n+1)+n` -/
def P17834845758891335821.Spec : Prop :=
  ∀ n, P17834845758891335821.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P5602186675624408663

`comp[A279054(n+1)]+1+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003259

/-- `comp[A279054(n+1)]+1+n` -/
def P5602186675624408663.Spec : Prop :=
  ∀ n, (P5602186675624408663.a n : ℤ) = A003259 (n + 1)

theorem P5602186675624408663.correct : P5602186675624408663.Spec := by
  intro n
  simp only [A003259, Nat.add_sub_cancel]

end A003259

/-! ## A003259.P11085247075716691277

`A000201(A247425(n+1))`
-/

namespace A003259.P11085247075716691277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A247425 (n + 1)).toNat

end

end A003259.P11085247075716691277

namespace A003259

/-- `A000201(A247425(n+1))` -/
def P11085247075716691277.Spec : Prop :=
  ∀ n, P11085247075716691277.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P17109884882828786928

`A288709(n+1)-A003258(A026351(n))`
-/

namespace A003259.P17109884882828786928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288709 (n + 1) - A003258 (A026351 n).toNat

end

end A003259.P17109884882828786928

namespace A003259

/-- `A288709(n+1)-A003258(A026351(n))` -/
def P17109884882828786928.Spec : Prop :=
  ∀ n, P17109884882828786928.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P15307444963203155182

`ceil(A279054(2*n+1)/2)`
-/

namespace A003259.P15307444963203155182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A279054 (2 * n + 1) : ℚ) / 2⌉

end

end A003259.P15307444963203155182

namespace A003259

/-- `ceil(A279054(2*n+1)/2)` -/
def P15307444963203155182.Spec : Prop :=
  ∀ n, P15307444963203155182.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P9208154291797932551

`A005206(A247426(2*n+1)-(n+1))`
-/

namespace A003259.P9208154291797932551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A247426 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A003259.P9208154291797932551

namespace A003259

/-- `A005206(A247426(2*n+1)-(n+1))` -/
def P9208154291797932551.Spec : Prop :=
  ∀ n, P9208154291797932551.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P16022633877251380960

`A060143(floor(ϕ*n+2*(n+1)))+n-floor(n/ϕ)`
-/

namespace A003259.P16022633877251380960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 ⌊Real.goldenRatio * (n : ℝ) + (2 * (n + 1) : ℝ)⌋.toNat + ((n : ℤ) - ⌊(n : ℝ) / Real.goldenRatio⌋)

end

end A003259.P16022633877251380960

namespace A003259

/-- `A060143(floor(ϕ*n+2*(n+1)))+n-floor(n/ϕ)` -/
def P16022633877251380960.Spec : Prop :=
  ∀ n, P16022633877251380960.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P10106334515783277618

`A189663(n+1)+A060143(A284624(n+1))`
-/

namespace A003259.P10106334515783277618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 1) + A060143 (A284624 (n + 1)).toNat

end

end A003259.P10106334515783277618

namespace A003259

/-- `A189663(n+1)+A060143(A284624(n+1))` -/
def P10106334515783277618.Spec : Prop :=
  ∀ n, P10106334515783277618.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P477677358188147498

`A005206(A214971(n+1))+ceil(2*n-ϕ*n)`
-/

namespace A003259.P477677358188147498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A214971 (n + 1)).toNat + ⌈(2 * n : ℝ) - Real.goldenRatio * (n : ℝ)⌉

end

end A003259.P477677358188147498

namespace A003259

/-- `A005206(A214971(n+1))+ceil(2*n-ϕ*n)` -/
def P477677358188147498.Spec : Prop :=
  ∀ n, P477677358188147498.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P9393032464705752043

`A189663(n+1)+A005206(A214971(n+1))`
-/

namespace A003259.P9393032464705752043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 1) + A005206 (A214971 (n + 1)).toNat

end

end A003259.P9393032464705752043

namespace A003259

/-- `A189663(n+1)+A005206(A214971(n+1))` -/
def P9393032464705752043.Spec : Prop :=
  ∀ n, P9393032464705752043.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P3796797729739902244

`A065033(A279054(Δ[n²]))`
-/

namespace A003259.P3796797729739902244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A279054 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A003259.P3796797729739902244

namespace A003259

/-- `A065033(A279054(Δ[n²]))` -/
def P3796797729739902244.Spec : Prop :=
  ∀ n, P3796797729739902244.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P14765272035857739386

`A110654(A279054(2*n+1))`
-/

namespace A003259.P14765272035857739386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A279054 (2 * n + 1)).toNat

end

end A003259.P14765272035857739386

namespace A003259

/-- `A110654(A279054(2*n+1))` -/
def P14765272035857739386.Spec : Prop :=
  ∀ n, P14765272035857739386.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P2565675594708273768

`A060144(A356105(2*n+1)+n+2)`
-/

namespace A003259.P2565675594708273768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A356105 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A003259.P2565675594708273768

namespace A003259

/-- `A060144(A356105(2*n+1)+n+2)` -/
def P2565675594708273768.Spec : Prop :=
  ∀ n, P2565675594708273768.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P2184053414196777896

`A334415(A334415(n+1)+A028251(2*n+1))`
-/

namespace A003259.P2184053414196777896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A334415 (n + 1) + A028251 (2 * n + 1)).toNat

end

end A003259.P2184053414196777896

namespace A003259

/-- `A334415(A334415(n+1)+A028251(2*n+1))` -/
def P2184053414196777896.Spec : Prop :=
  ∀ n, P2184053414196777896.a n = A003259 (n + 1)

end A003259

/-! ## A003259.P11262560716648087462

`lt[A188014(A003231(n+1)-1), A096270(n)]`
-/

namespace A003259.P11262560716648087462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A003231 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003259.P11262560716648087462

namespace A003259

/-- `lt[A188014(A003231(n+1)-1), A096270(n)]` -/
def P11262560716648087462.Spec : Prop :=
  ∀ n, (P11262560716648087462.a n : ℤ) = A003259 (n + 1)

end A003259

/-! ## A003259.P14410965060702488916

`lt[A188014(A003231(n+1)-1), A188014(n+1)]`
-/

namespace A003259.P14410965060702488916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A003231 (n + 1) - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003259.P14410965060702488916

namespace A003259

/-- `lt[A188014(A003231(n+1)-1), A188014(n+1)]` -/
def P14410965060702488916.Spec : Prop :=
  ∀ n, (P14410965060702488916.a n : ℤ) = A003259 (n + 1)

end A003259

/-!
# A003260: Largest prime factor of n-th Mersenne number (A001348(n)).

The programs for A003260, there is no canonical definition to state claims against.
-/

/-! ## A003260.P15491404810291667285

`A005420(A000040(n+1))`
-/

namespace A003260.P15491404810291667285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A000040 (n + 1)).toNat

end

end A003260.P15491404810291667285

/-! ## A003260.P1547168380524373253

`A005420(A008578(n+2))`
-/

namespace A003260.P1547168380524373253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A008578 (n + 2)).toNat

end

end A003260.P1547168380524373253

/-! ## A003260.P10958573769208585845

`A005420(record[A006530(n+2)])`
-/

namespace A003260.P10958573769208585845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003260.P10958573769208585845

/-! ## A003260.P3775164532834906388

`A005420(record[A020639(n+2)])`
-/

namespace A003260.P3775164532834906388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003260.P3775164532834906388

/-! ## A003260.P12636007809535064702

`A097406(record[A006530(n+2)])`
-/

namespace A003260.P12636007809535064702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097406 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003260.P12636007809535064702

/-! ## A003260.P8004256547772981457

`A097406(record[A020639(n+2)])`
-/

namespace A003260.P8004256547772981457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097406 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003260.P8004256547772981457

/-! ## A003260.P2319497571283533108

`A005420(A006093(n+1)+1)`
-/

namespace A003260.P2319497571283533108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A006093 (n + 1) + 1).toNat

end

end A003260.P2319497571283533108

/-! ## A003260.P12111495763192735125

`A005420(A067747(2*n+1))`
-/

namespace A003260.P12111495763192735125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (A067747 (2 * n + 1)).toNat

end

end A003260.P12111495763192735125

/-! ## A003260.P263405517339023926

`A005420(record[A000010(n+1)+1])`
-/

namespace A003260.P263405517339023926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A003260.P263405517339023926

/-! ## A003260.P9181684803282921697

`A097406(A014688(n+1)-(n+1))`
-/

namespace A003260.P9181684803282921697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097406 (A014688 (n + 1) - (n + 1 : ℤ)).toNat

end

end A003260.P9181684803282921697

/-!
# A003261: Woodall (or Riesel) numbers: n*2^n - 1.

The programs for A003261, the canonical program `A003261.P10775905742820185947` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003261 has offset 1).

The definition of A003261 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*2^(n+1)-1` (program `A003261.P10775905742820185947`, by `A003261.P10775905742820185947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003261.P10775905742820185947

`(n+1)*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003261

/-- `(n+1)*2^(n+1)-1` -/
def P10775905742820185947.Spec : Prop :=
  ∀ n, P10775905742820185947.a n = A003261 (n + 1)

theorem P10775905742820185947.correct : P10775905742820185947.Spec := by
  intro n
  simp only [A003261, Nat.add_sub_cancel]

end A003261

/-! ## A003261.P560438361596581839

`∑[ogf((1+2x-4x^2)/(1-4x+4x^2))]`
-/

namespace A003261.P560438361596581839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003261.P560438361596581839

namespace A003261

/-- `∑[ogf((1+2x-4x^2)/(1-4x+4x^2))]` -/
def P560438361596581839.Spec : Prop :=
  ∀ n, P560438361596581839.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P15376259289571088276

`ogf((1+2x-4x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A003261.P15376259289571088276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4] [1, -5, 8, -4] n

end

end A003261.P15376259289571088276

namespace A003261

/-- `ogf((1+2x-4x^2)/(1-5x+8x^2-4x^3))` -/
def P15376259289571088276.Spec : Prop :=
  ∀ n, P15376259289571088276.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P4887762131956689614

`or(n, (n+1)*∑[2^n])`
-/

namespace A003261.P4887762131956689614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A003261.P4887762131956689614

namespace A003261

/-- `or(n, (n+1)*∑[2^n])` -/
def P4887762131956689614.Spec : Prop :=
  ∀ n, (P4887762131956689614.a n : ℤ) = A003261 (n + 1)

end A003261

/-! ## A003261.P2076186512945716333

`xor(n, (n+1)*∑[2^n])`
-/

namespace A003261.P2076186512945716333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A003261.P2076186512945716333

namespace A003261

/-- `xor(n, (n+1)*∑[2^n])` -/
def P2076186512945716333.Spec : Prop :=
  ∀ n, (P2076186512945716333.a n : ℤ) = A003261 (n + 1)

end A003261

/-! ## A003261.P1099132031064578871

`floor((n+1)*∑[2*a(n-1)]+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A003261.P1099132031064578871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A003261.P1099132031064578871

namespace A003261

/-- `floor((n+1)*∑[2*a(n-1)]+n)` -/
def P1099132031064578871.Spec : Prop :=
  ∀ n, (P1099132031064578871.a n : ℤ) = A003261 (n + 1)

end A003261

/-! ## A003261.P10246995075481550463

`floor(a(n-1)+(2/n+1)*(a(n-1)+1))` with `a(0)=1`
-/

namespace A003261.P10246995075481550463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + (2 / (n : ℚ) + 1) * (a (n - 1) + 1 : ℚ)⌋

end

end A003261.P10246995075481550463

namespace A003261

/-- `floor(a(n-1)+(2/n+1)*(a(n-1)+1))` -/
def P10246995075481550463.Spec : Prop :=
  ∀ n, P10246995075481550463.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P872424899850701947

`∑[abs(Δ[A134401(n)])]`
-/

namespace A003261.P872424899850701947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134401 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003261.P872424899850701947

namespace A003261

/-- `∑[abs(Δ[A134401(n)])]` -/
def P872424899850701947.Spec : Prop :=
  ∀ n, P872424899850701947.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P2393612261923385107

`abs(2-A002064(n+1))`
-/

namespace A003261.P2393612261923385107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A002064 (n + 1)|

end

end A003261.P2393612261923385107

namespace A003261

/-- `abs(2-A002064(n+1))` -/
def P2393612261923385107.Spec : Prop :=
  ∀ n, P2393612261923385107.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P9772043095981284854

`record[2*A097067(n)-1]`
-/

namespace A003261.P9772043095981284854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097067 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003261.P9772043095981284854

namespace A003261

/-- `record[2*A097067(n)-1]` -/
def P9772043095981284854.Spec : Prop :=
  ∀ n, P9772043095981284854.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P2209643313757381875

`abs(1-2*A001787(n+1))`
-/

namespace A003261.P2209643313757381875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A001787 (n + 1)|

end

end A003261.P2209643313757381875

namespace A003261

/-- `abs(1-2*A001787(n+1))` -/
def P2209643313757381875.Spec : Prop :=
  ∀ n, P2209643313757381875.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P7828208137153668663

`∑[2^n*A065475(n+1)]`
-/

namespace A003261.P7828208137153668663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003261.P7828208137153668663

namespace A003261

/-- `∑[2^n*A065475(n+1)]` -/
def P7828208137153668663.Spec : Prop :=
  ∀ n, P7828208137153668663.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P14304404687766123214

`∑[2^n*ceil(sqrt(A028387(n)))]`
-/

namespace A003261.P14304404687766123214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ⌈Real.sqrt (A028387 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003261.P14304404687766123214

namespace A003261

/-- `∑[2^n*ceil(sqrt(A028387(n)))]` -/
def P14304404687766123214.Spec : Prop :=
  ∀ n, P14304404687766123214.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P1281860324024514987

`∑[Δ[A036289(n)]-A000007(n)]`
-/

namespace A003261.P1281860324024514987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003261.P1281860324024514987

namespace A003261

/-- `∑[Δ[A036289(n)]-A000007(n)]` -/
def P1281860324024514987.Spec : Prop :=
  ∀ n, P1281860324024514987.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P8545887272428167394

`∑[(A057427(n)+1)*A001792(n)]`
-/

namespace A003261.P8545887272428167394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003261.P8545887272428167394

namespace A003261

/-- `∑[(A057427(n)+1)*A001792(n)]` -/
def P8545887272428167394.Spec : Prop :=
  ∀ n, P8545887272428167394.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P2998865606451116398

`∑[A000032(floor(1/(n+1)))*A001792(n)]`
-/

namespace A003261.P2998865606451116398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003261.P2998865606451116398

namespace A003261

/-- `∑[A000032(floor(1/(n+1)))*A001792(n)]` -/
def P2998865606451116398.Spec : Prop :=
  ∀ n, P2998865606451116398.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P901520568744566445

`(8*(a(n-1)-a(n-2))-2)/2` with `a(0)=1, a(1)=7`
-/

namespace A003261.P901520568744566445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  (8 * (a (n - 1) - a (n - 2)) - 2) / 2

end

end A003261.P901520568744566445

namespace A003261

/-- `(8*(a(n-1)-a(n-2))-2)/2` -/
def P901520568744566445.Spec : Prop :=
  ∀ n, P901520568744566445.a n = (A003261 (n + 1) : ℚ)

theorem P901520568744566445.correct : P901520568744566445.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A003261, Nat.add_sub_cancel, A003261.P901520568744566445.a, A003261.P10775905742820185947.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A003261, Nat.add_sub_cancel, A003261.P901520568744566445.a, A003261.P10775905742820185947.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A003261

/-! ## A003261.P14776602937305795117

`Δ[∑[A036289(n)]-n]`
-/

namespace A003261.P14776602937305795117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003261.P14776602937305795117

namespace A003261

/-- `Δ[∑[A036289(n)]-n]` -/
def P14776602937305795117.Spec : Prop :=
  ∀ n, P14776602937305795117.a n = A003261 (n + 1)

end A003261

/-! ## A003261.P4514185380376326668

`Δ[(n-1)*A126646(n)]`
-/

namespace A003261.P4514185380376326668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003261.P4514185380376326668

namespace A003261

/-- `Δ[(n-1)*A126646(n)]` -/
def P4514185380376326668.Spec : Prop :=
  ∀ n, P4514185380376326668.a n = A003261 (n + 1)

theorem P4514185380376326668.correct : P4514185380376326668.Spec := by
  intro n
  simp only [A003261, Nat.add_sub_cancel, A003261.P4514185380376326668.f1, A003261.P4514185380376326668.a, A003261.P10775905742820185947.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A003261

/-! ## A003261.P2329253855309371726

`A107392(n)%A052482(n+2)`
-/

namespace A003261.P2329253855309371726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107392 n) (A052482 (n + 2))

end

end A003261.P2329253855309371726

namespace A003261

/-- `A107392(n)%A052482(n+2)` -/
def P2329253855309371726.Spec : Prop :=
  ∀ n, P2329253855309371726.a n = A003261 (n + 1)

end A003261

/-!
# A003262: Let y=f(x) satisfy F(x,y)=0. a(n) is the number of terms in the expansion of (d/dx)^n y in terms of the partial derivatives of F.

The programs for A003262, there is no canonical definition to state claims against.
-/

/-! ## A003262.P10158650609003487360

`A172004(∑[n+1])`
-/

namespace A003262.P10158650609003487360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172004 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003262.P10158650609003487360

/-! ## A003262.P9675346423686043198

`record[A172004(A130270(n+1))]`
-/

namespace A003262.P9675346423686043198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172004 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003262.P9675346423686043198

/-! ## A003262.P12714645117650349757

`record[A172004(A160791(n+1))]`
-/

namespace A003262.P12714645117650349757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172004 (A160791 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003262.P12714645117650349757

/-! ## A003262.P13041340633100659259

`and(-1, A172004(A000217(n+1)))`
-/

namespace A003262.P13041340633100659259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A172004 (A000217 (n + 1)).toNat)

end

end A003262.P13041340633100659259

/-! ## A003262.P5760828505494889565

`record[A023531(n)*A172004(n+1)]`
-/

namespace A003262.P5760828505494889565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A172004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003262.P5760828505494889565

/-!
# A003263: Number of representations of n as a sum of distinct Lucas numbers 1, 3, 4, 7, 11, ... (A000204).

The programs for A003263, there is no canonical definition to state claims against.
-/

/-! ## A003263.P10861625720307793069

`A103344(A287727(n+1))`
-/

namespace A003263.P10861625720307793069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (A287727 (n + 1)).toNat

end

end A003263.P10861625720307793069

/-! ## A003263.P1390912534086351497

`A294203(n+1)+A294203(n)`
-/

namespace A003263.P1390912534086351497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294203 (n + 1) + A294203 n

end

end A003263.P1390912534086351497

/-! ## A003263.P6279395877646636102

`A104451(eq[0, A104451(n)]+1)`
-/

namespace A003263.P6279395877646636102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A003263.P6279395877646636102

/-! ## A003263.P7919370269097864107

`A104451(record[n+1-A104451(n+1)]+1)`
-/

namespace A003263.P7919370269097864107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A104451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104451 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A003263.P7919370269097864107

/-! ## A003263.P15336815690239049642

`A219485(eq[A219485(n+1), A219485(n)]+2)`
-/

namespace A003263.P15336815690239049642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219485 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A003263.P15336815690239049642

/-! ## A003263.P3920091002085555904

`A239002(A188190(n+2))`
-/

namespace A003263.P3920091002085555904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A188190 (n + 2)).toNat

end

end A003263.P3920091002085555904

/-! ## A003263.P17711210947138177314

`A103344(lt[A103344(n+1), n^A103344(n)])`
-/

namespace A003263.P17711210947138177314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A103344 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103344 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A003263.P17711210947138177314

/-! ## A003263.P16819184610416287500

`A034968(A331922(n+1))`
-/

namespace A003263.P16819184610416287500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A331922 (n + 1)).toNat

end

end A003263.P16819184610416287500

/-!
# A003264: a(n) = floor((-4n)/Bernoulli(2n)).

The programs for A003264, there is no canonical definition to state claims against.
-/

/-! ## A003264.P18305225940011474851

`A003272(n)-A057427(A241132(n))`
-/

namespace A003264.P18305225940011474851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003272 n - A057427 (A241132 n).toNat

end

end A003264.P18305225940011474851

/-!
# A003265: Not representable by truncated tribonacci sequence 2, 4, 7, 13, 24, 44, 81, ....

The programs for A003265, the canonical program `A003265.P1824215656796251863` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003265 has offset 1).

The definition of A003265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003265.P10800441086039014228

`comp[A278039(n)]`
-/

namespace A003265.P10800441086039014228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003265.P10800441086039014228

namespace A003265

/-- `comp[A278039(n)]` -/
def P10800441086039014228.Spec : Prop :=
  ∀ n, (P10800441086039014228.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P4950979252919731244

`A351631(n+2)-1`
-/

namespace A003265.P4950979252919731244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351631 (n + 2) - 1

end

end A003265.P4950979252919731244

namespace A003265

/-- `A351631(n+2)-1` -/
def P4950979252919731244.Spec : Prop :=
  ∀ n, P4950979252919731244.a n = A003265 (n + 1)

end A003265

/-! ## A003265.P10935180809682743267

`eq[1, A305392(n+1)]`
-/

namespace A003265.P10935180809682743267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003265.P10935180809682743267

namespace A003265

/-- `eq[1, A305392(n+1)]` -/
def P10935180809682743267.Spec : Prop :=
  ∀ n, (P10935180809682743267.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P1824215656796251863

`lt[A317193(n+1), 1]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A003265

/-- `lt[A317193(n+1), 1]` -/
def P1824215656796251863.Spec : Prop :=
  ∀ n, (P1824215656796251863.a n : ℤ) = A003265 (n + 1)

theorem P1824215656796251863.correct : P1824215656796251863.Spec := by
  intro n
  simp only [A003265, Nat.add_sub_cancel]

end A003265

/-! ## A003265.P6184619387232753125

`lt[A305394(n+1), 5]`
-/

namespace A003265.P6184619387232753125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305394 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003265.P6184619387232753125

namespace A003265

/-- `lt[A305394(n+1), 5]` -/
def P6184619387232753125.Spec : Prop :=
  ∀ n, (P6184619387232753125.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P5249924746350224824

`lt[A275925(n+2), 6]`
-/

namespace A003265.P5249924746350224824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275925 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003265.P5249924746350224824

namespace A003265

/-- `lt[A275925(n+2), 6]` -/
def P5249924746350224824.Spec : Prop :=
  ∀ n, (P5249924746350224824.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P13870853668071200092

`eq[1, gcd(2, A278038(n))]`
-/

namespace A003265.P13870853668071200092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A278038 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003265.P13870853668071200092

namespace A003265

/-- `eq[1, gcd(2, A278038(n))]` -/
def P13870853668071200092.Spec : Prop :=
  ∀ n, (P13870853668071200092.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P1814038002599178134

`A353084(n+1)+n`
-/

namespace A003265.P1814038002599178134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353084 (n + 1) + (n : ℤ)

end

end A003265.P1814038002599178134

namespace A003265

/-- `A353084(n+1)+n` -/
def P1814038002599178134.Spec : Prop :=
  ∀ n, P1814038002599178134.a n = A003265 (n + 1)

theorem P1814038002599178134.correct : P1814038002599178134.Spec := by
  intro n
  simp only [A003265, Nat.add_sub_cancel, A003265.P1814038002599178134.a, A003265.P1824215656796251863.f1, A003265.P1824215656796251863.f2, A003265.P1824215656796251863.a, A317193, A317193.P13677178970524234186.a, A353084, A353084.P13564049963541245376.a, A057078, A057078.P4951435475119423572.a, A278045, A278045.P7038591754817271268.a, A000038, A000038.P13734959004655594922.a, A003726, A003726.P14597589249839812416.f1, A003726.P14597589249839812416.f2, A003726.P14597589249839812416.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003265

/-! ## A003265.P12149098863900898882

`lt[2, A305374(n)]+n`
-/

namespace A003265.P12149098863900898882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + n

end

end A003265.P12149098863900898882

namespace A003265

/-- `lt[2, A305374(n)]+n` -/
def P12149098863900898882.Spec : Prop :=
  ∀ n, (P12149098863900898882.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P14927265299006268505

`n+1+comp[A278041(n)]`
-/

namespace A003265.P14927265299006268505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003265.P14927265299006268505

namespace A003265

/-- `n+1+comp[A278041(n)]` -/
def P14927265299006268505.Spec : Prop :=
  ∀ n, (P14927265299006268505.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P9092552468290427300

`comp[A140101(n)-(n+1)]`
-/

namespace A003265.P9092552468290427300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140101 n - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003265.P9092552468290427300

namespace A003265

/-- `comp[A140101(n)-(n+1)]` -/
def P9092552468290427300.Spec : Prop :=
  ∀ n, (P9092552468290427300.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P195496926945981060

`eq[2, A319431(n+1)]+1`
-/

namespace A003265.P195496926945981060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319431 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003265.P195496926945981060

namespace A003265

/-- `eq[2, A319431(n+1)]+1` -/
def P195496926945981060.Spec : Prop :=
  ∀ n, (P195496926945981060.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P17786687340215700879

`A385455(n+2)+n+1`
-/

namespace A003265.P17786687340215700879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385455 (n + 2) + (n + 1 : ℤ)

end

end A003265.P17786687340215700879

namespace A003265

/-- `A385455(n+2)+n+1` -/
def P17786687340215700879.Spec : Prop :=
  ∀ n, P17786687340215700879.a n = A003265 (n + 1)

end A003265

/-! ## A003265.P14001886960588200645

`∪[A278040(n), A278041(n)]`
-/

namespace A003265.P14001886960588200645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278041 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003265.P14001886960588200645

namespace A003265

/-- `∪[A278040(n), A278041(n)]` -/
def P14001886960588200645.Spec : Prop :=
  ∀ n, (P14001886960588200645.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P408648753377718249

`A278039(A385455(n+2))+1`
-/

namespace A003265.P408648753377718249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278039 (A385455 (n + 2)).toNat + 1

end

end A003265.P408648753377718249

namespace A003265

/-- `A278039(A385455(n+2))+1` -/
def P408648753377718249.Spec : Prop :=
  ∀ n, P408648753377718249.a n = A003265 (n + 1)

end A003265

/-! ## A003265.P4405064168706109732

`eq[0, A278045(n)]`
-/

namespace A003265.P4405064168706109732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003265.P4405064168706109732

namespace A003265

/-- `eq[0, A278045(n)]` -/
def P4405064168706109732.Spec : Prop :=
  ∀ n, (P4405064168706109732.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P14941163057052953105

`lt[0, A080843(n)]`
-/

namespace A003265.P14941163057052953105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003265.P14941163057052953105

namespace A003265

/-- `lt[0, A080843(n)]` -/
def P14941163057052953105.Spec : Prop :=
  ∀ n, (P14941163057052953105.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P506775389809201548

`lt[1, A092782(n+1)]`
-/

namespace A003265.P506775389809201548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003265.P506775389809201548

namespace A003265

/-- `lt[1, A092782(n+1)]` -/
def P506775389809201548.Spec : Prop :=
  ∀ n, (P506775389809201548.a n : ℤ) = A003265 (n + 1)

end A003265

/-! ## A003265.P247824843996761499

`A003144(A353084(n+1))`
-/

namespace A003265.P247824843996761499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A353084 (n + 1)).toNat

end

end A003265.P247824843996761499

namespace A003265

/-- `A003144(A353084(n+1))` -/
def P247824843996761499.Spec : Prop :=
  ∀ n, P247824843996761499.a n = A003265 (n + 1)

end A003265

/-!
# A003266: Product of first n nonzero Fibonacci numbers F(1), ..., F(n).

The programs for A003266, there is no canonical definition to state claims against.
-/

/-! ## A003266.P12993412445528563968

`∏[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A003266.P12993412445528563968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003266.P12993412445528563968

/-! ## A003266.P16975744348237467983

`a(n-1)*Δ[a(n-1)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A003266.P16975744348237467983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A003266.P16975744348237467983

/-! ## A003266.P12555306477630077600

`abs(A128207(∑[n]))`
-/

namespace A003266.P12555306477630077600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128207 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A003266.P12555306477630077600

/-!
# A003267: Central Fibonomial coefficients.

The programs for A003267, there is no canonical definition to state claims against.
-/

/-! ## A003267.P15460054402425242012

`A010048(∑[4*n])`
-/

namespace A003267.P15460054402425242012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003267.P15460054402425242012

/-! ## A003267.P12024760611924966562

`A003268(log2(A011782(n)²))`
-/

namespace A003267.P12024760611924966562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003268 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n ^ 2 : ℝ))).toNat

end

end A003267.P12024760611924966562

/-! ## A003267.P14001733352695033599

`A003268(2*log2(A011782(n)))`
-/

namespace A003267.P14001733352695033599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003268 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A011782 n : ℝ))).toNat

end

end A003267.P14001733352695033599

/-! ## A003267.P17552164849770669429

`∑[A212804(n)]*A003150(n)`
-/

namespace A003267.P17552164849770669429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A003150 n

end

end A003267.P17552164849770669429

/-! ## A003267.P7076178826882866594

`A000045(n+1)*A003150(n)`
-/

namespace A003267.P7076178826882866594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A003150 n

end

end A003267.P7076178826882866594

/-!
# A003268: Central Fibonomial coefficients.

The programs for A003268, there is no canonical definition to state claims against.
-/

/-! ## A003268.P2977927769569594386

`record[A010048(A130519(n))]`
-/

namespace A003268.P2977927769569594386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A130519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003268.P2977927769569594386

/-! ## A003268.P7991831460174993953

`record[A010048(A245300(n))]`
-/

namespace A003268.P7991831460174993953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003268.P7991831460174993953

/-! ## A003268.P2611547212624615124

`A010048(A074148(n+2))`
-/

namespace A003268.P2611547212624615124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A074148 (n + 2)).toNat

end

end A003268.P2611547212624615124

/-! ## A003268.P11640440873567561253

`A010048(A007590(n+3))`
-/

namespace A003268.P11640440873567561253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A007590 (n + 3)).toNat

end

end A003268.P11640440873567561253

/-! ## A003268.P1176282715933494594

`record[A010048(A007590(A028242(n)))]`
-/

namespace A003268.P1176282715933494594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010048 (A007590 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003268.P1176282715933494594

/-!
# A003269: a(n) = a(n-1) + a(n-4) with a(0) = 0, a(1) = a(2) = a(3) = 1.

The programs for A003269, the canonical program `A003269.P4495864576817426483` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003269 has offset 0).

The definition of A003269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-4)` (program `A003269.P4495864576817426483`, by `A003269.P4495864576817426483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003269.P4495864576817426483

`a(n-1)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003269

/-- `a(n-1)+a(n-4)` -/
def P4495864576817426483.Spec : Prop :=
  ∀ n, (P4495864576817426483.a n : ℤ) = A003269 n

theorem P4495864576817426483.correct : P4495864576817426483.Spec := by
  intro n
  simp only [A003269]

end A003269

/-! ## A003269.P9517582287688312253

`ogf(x/(1-x-x^4))`
-/

namespace A003269.P9517582287688312253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, 0, 0, -1] n

end

end A003269.P9517582287688312253

namespace A003269

/-- `ogf(x/(1-x-x^4))` -/
def P9517582287688312253.Spec : Prop :=
  ∀ n, P9517582287688312253.a n = A003269 n

end A003269

/-! ## A003269.P11685144669669305032

`a(n-1)-floor(-a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A003269.P11685144669669305032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 1) - (-a (n - 4))

end

end A003269.P11685144669669305032

namespace A003269

/-- `a(n-1)-floor(-a(n-4))` -/
def P11685144669669305032.Spec : Prop :=
  ∀ n, P11685144669669305032.a n = A003269 n

end A003269

/-! ## A003269.P17484122733403307427

`a(n-1)-ceil(-a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A003269.P17484122733403307427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 1) - (-a (n - 4))

end

end A003269.P17484122733403307427

namespace A003269

/-- `a(n-1)-ceil(-a(n-4))` -/
def P17484122733403307427.Spec : Prop :=
  ∀ n, P17484122733403307427.a n = A003269 n

end A003269

/-! ## A003269.P3397386220717295813

`a(n-1)-round(-a(n-4))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A003269.P3397386220717295813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 1) - (-a (n - 4))

end

end A003269.P3397386220717295813

namespace A003269

/-- `a(n-1)-round(-a(n-4))` -/
def P3397386220717295813.Spec : Prop :=
  ∀ n, P3397386220717295813.a n = A003269 n

end A003269

/-! ## A003269.P15573254500263035306

`A017898(n+3)`
-/

namespace A003269.P15573254500263035306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (n + 3)

end

end A003269.P15573254500263035306

namespace A003269

/-- `A017898(n+3)` -/
def P15573254500263035306.Spec : Prop :=
  ∀ n, P15573254500263035306.a n = A003269 n

end A003269

/-! ## A003269.P17181400621686901207

`∑[A017898(abs(1-n))]`
-/

namespace A003269.P17181400621686901207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003269.P17181400621686901207

namespace A003269

/-- `∑[A017898(abs(1-n))]` -/
def P17181400621686901207.Spec : Prop :=
  ∀ n, P17181400621686901207.a n = A003269 n

end A003269

/-! ## A003269.P17931941164754544392

`A122789(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A003269.P17931941164754544392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A122789 n + a (n - 2)

end

end A003269.P17931941164754544392

namespace A003269

/-- `A122789(n)+a(n-2)` -/
def P17931941164754544392.Spec : Prop :=
  ∀ n, P17931941164754544392.a n = A003269 n

end A003269

/-! ## A003269.P17867107349351200870

`A226517(2*n+9)`
-/

namespace A003269.P17867107349351200870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (2 * n + 9)

end

end A003269.P17867107349351200870

namespace A003269

/-- `A226517(2*n+9)` -/
def P17867107349351200870.Spec : Prop :=
  ∀ n, P17867107349351200870.a n = A003269 n

end A003269

/-! ## A003269.P8063582578309364953

`∑[A017898(n)]-A017898(n)`
-/

namespace A003269.P8063582578309364953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A017898 n

end

end A003269.P8063582578309364953

namespace A003269

/-- `∑[A017898(n)]-A017898(n)` -/
def P8063582578309364953.Spec : Prop :=
  ∀ n, P8063582578309364953.a n = A003269 n

end A003269

/-! ## A003269.P13570883410192387417

`A017898(A020715(n)-2)-A017898(n)`
-/

namespace A003269.P13570883410192387417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A020715 n - 2).toNat - A017898 n

end

end A003269.P13570883410192387417

namespace A003269

/-- `A017898(A020715(n)-2)-A017898(n)` -/
def P13570883410192387417.Spec : Prop :=
  ∀ n, P13570883410192387417.a n = A003269 n

end A003269

/-! ## A003269.P14728877833919017813

`A103632(n+2)-A103632(n)`
-/

namespace A003269.P14728877833919017813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (n + 2) - A103632 n

end

end A003269.P14728877833919017813

namespace A003269

/-- `A103632(n+2)-A103632(n)` -/
def P14728877833919017813.Spec : Prop :=
  ∀ n, P14728877833919017813.a n = A003269 n

end A003269

/-! ## A003269.P6552257068881240251

`A017819(n+3)-A017819(n)`
-/

namespace A003269.P6552257068881240251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017819 (n + 3) - A017819 n

end

end A003269.P6552257068881240251

namespace A003269

/-- `A017819(n+3)-A017819(n)` -/
def P6552257068881240251.Spec : Prop :=
  ∀ n, P6552257068881240251.a n = A003269 n

end A003269

/-! ## A003269.P8262478182248797779

`A079974(n+3)-A079974(n+1)`
-/

namespace A003269.P8262478182248797779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079974 (n + 3) - A079974 (n + 1)

end

end A003269.P8262478182248797779

namespace A003269

/-- `A079974(n+3)-A079974(n+1)` -/
def P8262478182248797779.Spec : Prop :=
  ∀ n, P8262478182248797779.a n = A003269 n

end A003269

/-! ## A003269.P18137122061308029261

`Δ[A122522(2*(n+3))]`
-/

namespace A003269.P18137122061308029261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003269.P18137122061308029261

namespace A003269

/-- `Δ[A122522(2*(n+3))]` -/
def P18137122061308029261.Spec : Prop :=
  ∀ n, P18137122061308029261.a n = A003269 n

end A003269

/-! ## A003269.P14507085984906529674

`Δ[A098578(n-A062157(n)²)]`
-/

namespace A003269.P14507085984906529674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 ((n : ℤ) - A062157 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003269.P14507085984906529674

namespace A003269

/-- `Δ[A098578(n-A062157(n)²)]` -/
def P14507085984906529674.Spec : Prop :=
  ∀ n, P14507085984906529674.a n = A003269 n

end A003269

/-! ## A003269.P6993385505500786614

`Δ[A103632(n+1)+A103632(n)]`
-/

namespace A003269.P6993385505500786614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (n + 1) + A103632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003269.P6993385505500786614

namespace A003269

/-- `Δ[A103632(n+1)+A103632(n)]` -/
def P6993385505500786614.Spec : Prop :=
  ∀ n, P6993385505500786614.a n = A003269 n

end A003269

/-! ## A003269.P11174899366521056739

`Δ[A098578(A062157(2*n)+n)]`
-/

namespace A003269.P11174899366521056739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 (A062157 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003269.P11174899366521056739

namespace A003269

/-- `Δ[A098578(A062157(2*n)+n)]` -/
def P11174899366521056739.Spec : Prop :=
  ∀ n, P11174899366521056739.a n = A003269 n

end A003269

/-! ## A003269.P5248913215668439127

`Δ[A098578(n)]-A017898(n)`
-/

namespace A003269.P5248913215668439127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A017898 n

end

end A003269.P5248913215668439127

namespace A003269

/-- `Δ[A098578(n)]-A017898(n)` -/
def P5248913215668439127.Spec : Prop :=
  ∀ n, P5248913215668439127.a n = A003269 n

end A003269

/-! ## A003269.P5012702271314399895

`A168639(n+2)-A098578(n+2)`
-/

namespace A003269.P5012702271314399895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168639 (n + 2) - A098578 (n + 2)

end

end A003269.P5012702271314399895

namespace A003269

/-- `A168639(n+2)-A098578(n+2)` -/
def P5012702271314399895.Spec : Prop :=
  ∀ n, P5012702271314399895.a n = A003269 n

end A003269

/-!
# A003271: Smallest number that requires n iterations of the unitary totient function (A047994) to reach 1.

The programs for A003271, there is no canonical definition to state claims against.
-/

/-! ## A003271.P18015090982933441412

`A285054(A385747(n))`
-/

namespace A003271.P18015090982933441412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285054 (A385747 n).toNat

end

end A003271.P18015090982933441412

/-! ## A003271.P10194279929214690851

`A385747(A024652(n))`
-/

namespace A003271.P10194279929214690851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385747 (A024652 n).toNat

end

end A003271.P10194279929214690851

/-! ## A003271.P11864879440678532425

`A385747(A024653(n))`
-/

namespace A003271.P11864879440678532425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385747 (A024653 n).toNat

end

end A003271.P11864879440678532425

/-! ## A003271.P15806326682615227281

`A385747(A024654(n))`
-/

namespace A003271.P15806326682615227281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385747 (A024654 n).toNat

end

end A003271.P15806326682615227281

/-! ## A003271.P12193654395567116081

`A385747(A024655(n))`
-/

namespace A003271.P12193654395567116081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385747 (A024655 n).toNat

end

end A003271.P12193654395567116081

/-!
# A003272: a(n) = ceiling((-4n)/Bernoulli(2n)).

The programs for A003272, there is no canonical definition to state claims against.
-/

/-! ## A003272.P2654735950664219032

`A057427(A241132(n))+A003264(n)`
-/

namespace A003272.P2654735950664219032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A241132 n).toNat + A003264 n

end

end A003272.P2654735950664219032

/-!
# A003273: Congruent numbers: positive integers k for which there exists a right triangle having area k and rational sides.

The programs for A003273, there is no canonical definition to state claims against.
-/

/-! ## A003273.P15580782078824414627

`eq[1, A290349(n+1)]+1`
-/

namespace A003273.P15580782078824414627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003273.P15580782078824414627

/-! ## A003273.P11675301471897254187

`A182429(n)+a(n-1)` with `a(0)=5`
-/

namespace A003273.P11675301471897254187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A182429 n + a (n - 1)

end

end A003273.P11675301471897254187

/-! ## A003273.P8533903061886893579

`eq[1, A290349(A008574(n))]`
-/

namespace A003273.P8533903061886893579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003273.P8533903061886893579

/-! ## A003273.P3490084205186753670

`A153152(eq[1, A290349(n+1)])`
-/

namespace A003273.P3490084205186753670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003273.P3490084205186753670

/-! ## A003273.P13997864533298710739

`eq[1, A290349(A004396(A008458(n)))]`
-/

namespace A003273.P13997864533298710739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (A004396 (A008458 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003273.P13997864533298710739

/-! ## A003273.P9033616754444370226

`eq[1, A290349(A233583(n+1))]`
-/

namespace A003273.P9033616754444370226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290349 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003273.P9033616754444370226

/-!
# A003274: Number of key permutations of length n: permutations {a_i} with |a_i - a_{i-1}| = 1 or 2.

The programs for A003274, the canonical program `A003274.P13554162099470737190` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003274 has offset 0).

The definition of A003274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003274.P16845164635575155368

`A020639(A000010(n+1))*A069241(n)`
-/

namespace A003274.P16845164635575155368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A069241 n

end

end A003274.P16845164635575155368

namespace A003274

/-- `A020639(A000010(n+1))*A069241(n)` -/
def P16845164635575155368.Spec : Prop :=
  ∀ n, P16845164635575155368.a n = A003274 n

end A003274

/-! ## A003274.P12586694669707577080

`A069241(n)*A322354(A060594(n+1))`
-/

namespace A003274.P12586694669707577080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 n * A322354 (A060594 (n + 1)).toNat

end

end A003274.P12586694669707577080

namespace A003274

/-- `A069241(n)*A322354(A060594(n+1))` -/
def P12586694669707577080.Spec : Prop :=
  ∀ n, P12586694669707577080.a n = A003274 n

end A003274

/-! ## A003274.P17013753921994513302

`A060594(A060594(n+1)+1)*A069241(n)`
-/

namespace A003274.P17013753921994513302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A060594 (n + 1) + 1).toNat * A069241 n

end

end A003274.P17013753921994513302

namespace A003274

/-- `A060594(A060594(n+1)+1)*A069241(n)` -/
def P17013753921994513302.Spec : Prop :=
  ∀ n, P17013753921994513302.a n = A003274 n

end A003274

/-! ## A003274.P13554162099470737190

`A069241(n)+A069241(n)%A069241(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003274

/-- `A069241(n)+A069241(n)%A069241(n+1)` -/
def P13554162099470737190.Spec : Prop :=
  ∀ n, P13554162099470737190.a n = A003274 n

theorem P13554162099470737190.correct : P13554162099470737190.Spec := by
  intro n
  simp only [A003274]

end A003274

/-! ## A003274.P18065668877323787913

`gcd(2, A302118(n))*A069241(n)`
-/

namespace A003274.P18065668877323787913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A302118 n) : ℤ) * A069241 n

end

end A003274.P18065668877323787913

namespace A003274

/-- `gcd(2, A302118(n))*A069241(n)` -/
def P18065668877323787913.Spec : Prop :=
  ∀ n, P18065668877323787913.a n = A003274 n

end A003274

/-! ## A003274.P17480459355117690871

`A069241(n)/A302119(n)*A302118(n)`
-/

namespace A003274.P17480459355117690871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069241 n : ℚ) / (A302119 n : ℚ) * (A302118 n : ℚ)

end

end A003274.P17480459355117690871

namespace A003274

/-- `A069241(n)/A302119(n)*A302118(n)` -/
def P17480459355117690871.Spec : Prop :=
  ∀ n, P17480459355117690871.a n = (A003274 n : ℚ)

end A003274

/-! ## A003274.P13478009945578585716

`A069241(n)+A069241(n)%A174700(n)`
-/

namespace A003274.P13478009945578585716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069241 n + Int.tmod (A069241 n) (A174700 n)

end

end A003274.P13478009945578585716

namespace A003274

/-- `A069241(n)+A069241(n)%A174700(n)` -/
def P13478009945578585716.Spec : Prop :=
  ∀ n, P13478009945578585716.a n = A003274 n

end A003274

/-!
# A003275: Values of phi(k) when phi(k) = phi(k+1).

The programs for A003275, there is no canonical definition to state claims against.
-/

/-! ## A003275.P10080678942077305988

`A000010(A001274(n+1))`
-/

namespace A003275.P10080678942077305988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001274 (n + 1)).toNat

end

end A003275.P10080678942077305988

/-! ## A003275.P10203316013099193337

`A000010(∩[A057919(n+1), A057920(n+1)])`
-/

namespace A003275.P10203316013099193337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A003275.P10203316013099193337

/-! ## A003275.P11707917933442558682

`A319997(or(1, A001274(n+1)))`
-/

namespace A003275.P11707917933442558682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (Int.lor 1 (A001274 (n + 1))).toNat

end

end A003275.P11707917933442558682

/-! ## A003275.P9088138832102168353

`∑{d}[A001274(n+1), A007431(#)]`
-/

namespace A003275.P9088138832102168353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A003275.P9088138832102168353

/-!
# A003276: Numbers k such that the multiplicative group of residues prime to k, M_k, is isomorphic to M_{k+1}.

The programs for A003276, there is no canonical definition to state claims against.
-/

/-! ## A003276.P1968026280299238687

`record[A001274(A116087(n+3))]`
-/

namespace A003276.P1968026280299238687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (A116087 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003276.P1968026280299238687

/-! ## A003276.P16544073795976027593

`filter[A173695(n+1), A213719(#)]`
-/

namespace A003276.P16544073795976027593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A213719 (f1 j).toNat = 1) n)

end

end A003276.P16544073795976027593

/-!
# A003277: Cyclic numbers: k such that k and phi(k) are relatively prime; also k such that there is just one group of order k, i.e., A000001(k) = 1.

The programs for A003277, the canonical program `A003277.P8695969646720590871` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003277 has offset 1).

The definition of A003277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003277.P4532400215034540526

`eq[1, A327979(n+1)]+1`
-/

namespace A003277.P4532400215034540526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003277.P4532400215034540526

namespace A003277

/-- `eq[1, A327979(n+1)]+1` -/
def P4532400215034540526.Spec : Prop :=
  ∀ n, (P4532400215034540526.a n : ℤ) = A003277 (n + 1)

end A003277

/-! ## A003277.P1044008557619642556

`eq[1, A331175(n+1)]+1`
-/

namespace A003277.P1044008557619642556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331175 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A003277.P1044008557619642556

namespace A003277

/-- `eq[1, A331175(n+1)]+1` -/
def P1044008557619642556.Spec : Prop :=
  ∀ n, (P1044008557619642556.a n : ℤ) = A003277 (n + 1)

end A003277

/-! ## A003277.P8982913776426809108

`lt[A270120(n+1), 2]+1`
-/

namespace A003277.P8982913776426809108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270120 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A003277.P8982913776426809108

namespace A003277

/-- `lt[A270120(n+1), 2]+1` -/
def P8982913776426809108.Spec : Prop :=
  ∀ n, (P8982913776426809108.a n : ℤ) = A003277 (n + 1)

end A003277

/-! ## A003277.P8695969646720590871

`eq[1, gcd(n+1, A000010(n+1))]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A003277

/-- `eq[1, gcd(n+1, A000010(n+1))]+1` -/
def P8695969646720590871.Spec : Prop :=
  ∀ n, (P8695969646720590871.a n : ℤ) = A003277 (n + 1)

theorem P8695969646720590871.correct : P8695969646720590871.Spec := by
  intro n
  simp only [A003277, Nat.add_sub_cancel]

end A003277

/-! ## A003277.P14862474069409362830

`eq[1, gcd(n, a(n-1)*A000010(n))]` with `a(0)=0`
-/

namespace A003277.P14862474069409362830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.gcd (n : ℤ) ((f2 (n - 1) : ℤ) * A000010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003277.P14862474069409362830

namespace A003277

/-- `eq[1, gcd(n, a(n-1)*A000010(n))]` -/
def P14862474069409362830.Spec : Prop :=
  ∀ n, (P14862474069409362830.a n : ℤ) = A003277 (n + 1)

end A003277

/-! ## A003277.P6862365036845575788

`∪[A000040(n+1), A050384(n+1)]`
-/

namespace A003277.P6862365036845575788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003277.P6862365036845575788

namespace A003277

/-- `∪[A000040(n+1), A050384(n+1)]` -/
def P6862365036845575788.Spec : Prop :=
  ∀ n, (P6862365036845575788.a n : ℤ) = A003277 (n + 1)

end A003277

/-! ## A003277.P15481778006866465515

`filter[A230918(n+1), A008966(#)]`
-/

namespace A003277.P15481778006866465515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A003277.P15481778006866465515

namespace A003277

/-- `filter[A230918(n+1), A008966(#)]` -/
def P15481778006866465515.Spec : Prop :=
  ∀ n, P15481778006866465515.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P14262836188671700899

`filter[A230918(n+1), A323154(#)]`
-/

namespace A003277.P14262836188671700899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A003277.P14262836188671700899

namespace A003277

/-- `filter[A230918(n+1), A323154(#)]` -/
def P14262836188671700899.Spec : Prop :=
  ∀ n, P14262836188671700899.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P654459831412201321

`filter[A230918(n+1), A371087(#)]`
-/

namespace A003277.P654459831412201321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A003277.P654459831412201321

namespace A003277

/-- `filter[A230918(n+1), A371087(#)]` -/
def P654459831412201321.Spec : Prop :=
  ∀ n, P654459831412201321.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P8600920371202578901

`∩[A005117(n+1), A230918(n+1)]`
-/

namespace A003277.P8600920371202578901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003277.P8600920371202578901

namespace A003277

/-- `∩[A005117(n+1), A230918(n+1)]` -/
def P8600920371202578901.Spec : Prop :=
  ∀ n, (P8600920371202578901.a n : ℤ) = A003277 (n + 1)

end A003277

/-! ## A003277.P12787647411251069278

`filter[A051532(n+1), A008966(#)]`
-/

namespace A003277.P12787647411251069278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A003277.P12787647411251069278

namespace A003277

/-- `filter[A051532(n+1), A008966(#)]` -/
def P12787647411251069278.Spec : Prop :=
  ∀ n, P12787647411251069278.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P2601415858019665995

`filter[A051532(n+1), A295316(#)]`
-/

namespace A003277.P2601415858019665995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A003277.P2601415858019665995

namespace A003277

/-- `filter[A051532(n+1), A295316(#)]` -/
def P2601415858019665995.Spec : Prop :=
  ∀ n, P2601415858019665995.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P11797657106252284498

`filter[A051532(n+1), A323154(#)]`
-/

namespace A003277.P11797657106252284498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A003277.P11797657106252284498

namespace A003277

/-- `filter[A051532(n+1), A323154(#)]` -/
def P11797657106252284498.Spec : Prop :=
  ∀ n, P11797657106252284498.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P3184236072105548700

`filter[A051532(n+1), A353519(#)]`
-/

namespace A003277.P3184236072105548700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A003277.P3184236072105548700

namespace A003277

/-- `filter[A051532(n+1), A353519(#)]` -/
def P3184236072105548700.Spec : Prop :=
  ∀ n, P3184236072105548700.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P7297570214055160178

`filter[A051532(n+1), A353559(#)]`
-/

namespace A003277.P7297570214055160178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A003277.P7297570214055160178

namespace A003277

/-- `filter[A051532(n+1), A353559(#)]` -/
def P7297570214055160178.Spec : Prop :=
  ∀ n, P7297570214055160178.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P12517800972786100869

`filter[A051532(n+1), A359473(#)]`
-/

namespace A003277.P12517800972786100869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A003277.P12517800972786100869

namespace A003277

/-- `filter[A051532(n+1), A359473(#)]` -/
def P12517800972786100869.Spec : Prop :=
  ∀ n, P12517800972786100869.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P12546279092743695867

`∩[A005117(n+1), A051532(n+1)]`
-/

namespace A003277.P12546279092743695867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003277.P12546279092743695867

namespace A003277

/-- `∩[A005117(n+1), A051532(n+1)]` -/
def P12546279092743695867.Spec : Prop :=
  ∀ n, (P12546279092743695867.a n : ℤ) = A003277 (n + 1)

end A003277

/-! ## A003277.P9066530945816524376

`filter[A056867(n+1), A008966(#)]`
-/

namespace A003277.P9066530945816524376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A003277.P9066530945816524376

namespace A003277

/-- `filter[A056867(n+1), A008966(#)]` -/
def P9066530945816524376.Spec : Prop :=
  ∀ n, P9066530945816524376.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P15874866965648003943

`filter[A056867(n+1), A323154(#)]`
-/

namespace A003277.P15874866965648003943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A003277.P15874866965648003943

namespace A003277

/-- `filter[A056867(n+1), A323154(#)]` -/
def P15874866965648003943.Spec : Prop :=
  ∀ n, P15874866965648003943.a n = A003277 (n + 1)

end A003277

/-! ## A003277.P13864484351525909856

`filter[A056867(n+1), A353559(#)]`
-/

namespace A003277.P13864484351525909856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A003277.P13864484351525909856

namespace A003277

/-- `filter[A056867(n+1), A353559(#)]` -/
def P13864484351525909856.Spec : Prop :=
  ∀ n, P13864484351525909856.a n = A003277 (n + 1)

end A003277

/-!
# A003278: Szekeres's sequence: a(n)-1 in ternary = n-1 in binary; also: a(1) = 1, a(2) = 2, and thereafter a(n) is smallest number k which avoids any 3-term arithmetic progression in a(1), a(2), ..., a(n-1), k.

The programs for A003278, the canonical program `A003278.P16270542562507883629` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003278 has offset 1).

The definition of A003278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003278.P17983948463792467536

`(∑[and(n, -n)^log2(3)]+n)/2+1`
-/

namespace A003278.P17983948463792467536
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 1

end

end A003278.P17983948463792467536

namespace A003278

/-- `(∑[and(n, -n)^log2(3)]+n)/2+1` -/
def P17983948463792467536.Spec : Prop :=
  ∀ n, P17983948463792467536.a n = (A003278 (n + 1) : ℝ)

end A003278

/-! ## A003278.P16270542562507883629

`∑[3*a(floor(n/2))-a(n-1)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003278

/-- `∑[3*a(floor(n/2))-a(n-1)]` -/
def P16270542562507883629.Spec : Prop :=
  ∀ n, P16270542562507883629.a n = A003278 (n + 1)

theorem P16270542562507883629.correct : P16270542562507883629.Spec := by
  intro n
  simp only [A003278, Nat.add_sub_cancel]

end A003278

/-! ## A003278.P15324933124971274231

`2*a(n-1)+1-a(and(n, n-1))` with `a(0)=1`
-/

namespace A003278.P15324933124971274231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A003278.P15324933124971274231

namespace A003278

/-- `2*a(n-1)+1-a(and(n, n-1))` -/
def P15324933124971274231.Spec : Prop :=
  ∀ n, P15324933124971274231.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P14019014072935992019

`a(n-1-and(n, n-1))+a(n-1)` with `a(0)=1`
-/

namespace A003278.P14019014072935992019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - 1 - Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + a (n - 1)

end

end A003278.P14019014072935992019

namespace A003278

/-- `a(n-1-and(n, n-1))+a(n-1)` -/
def P14019014072935992019.Spec : Prop :=
  ∀ n, (P14019014072935992019.a n : ℤ) = A003278 (n + 1)

end A003278

/-! ## A003278.P8772394968641861943

`3*a(floor(n/2))+n-2*floor(n/2)-2` with `a(0)=1`
-/

namespace A003278.P8772394968641861943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a ⌊(n : ℚ) / 2⌋.toNat + ((n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋) - 2

end

end A003278.P8772394968641861943

namespace A003278

/-- `3*a(floor(n/2))+n-2*floor(n/2)-2` -/
def P8772394968641861943.Spec : Prop :=
  ∀ n, P8772394968641861943.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P17412532681152312776

`A005836(n+1)+1`
-/

namespace A003278.P17412532681152312776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + 1

end

end A003278.P17412532681152312776

namespace A003278

/-- `A005836(n+1)+1` -/
def P17412532681152312776.Spec : Prop :=
  ∀ n, P17412532681152312776.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P3800554730982875873

`A033159(n+1)-1`
-/

namespace A003278.P3800554730982875873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) - 1

end

end A003278.P3800554730982875873

namespace A003278

/-- `A033159(n+1)-1` -/
def P3800554730982875873.Spec : Prop :=
  ∀ n, P3800554730982875873.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P9174959748595761322

`A033162(n+1)-2`
-/

namespace A003278.P9174959748595761322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - 2

end

end A003278.P9174959748595761322

namespace A003278

/-- `A033162(n+1)-2` -/
def P9174959748595761322.Spec : Prop :=
  ∀ n, P9174959748595761322.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P16751396557479819576

`A033164(n+1)-3`
-/

namespace A003278.P16751396557479819576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033164 (n + 1) - 3

end

end A003278.P16751396557479819576

namespace A003278

/-- `A033164(n+1)-3` -/
def P16751396557479819576.Spec : Prop :=
  ∀ n, P16751396557479819576.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P14087783338455939320

`ceil(A191106(n+1)/2)`
-/

namespace A003278.P14087783338455939320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191106 (n + 1) : ℚ) / 2⌉

end

end A003278.P14087783338455939320

namespace A003278

/-- `ceil(A191106(n+1)/2)` -/
def P14087783338455939320.Spec : Prop :=
  ∀ n, P14087783338455939320.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P16891489415322345569

`ceil(A191107(n+1)/3)`
-/

namespace A003278.P16891489415322345569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191107 (n + 1) : ℚ) / 3⌉

end

end A003278.P16891489415322345569

namespace A003278

/-- `ceil(A191107(n+1)/3)` -/
def P16891489415322345569.Spec : Prop :=
  ∀ n, P16891489415322345569.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P2254372479895400151

`(∑[A061393(n)]+1)/2`
-/

namespace A003278.P2254372479895400151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A003278.P2254372479895400151

namespace A003278

/-- `(∑[A061393(n)]+1)/2` -/
def P2254372479895400151.Spec : Prop :=
  ∀ n, P2254372479895400151.a n = (A003278 (n + 1) : ℚ)

end A003278

/-! ## A003278.P6128011407940175443

`A005823(n+1)/2+1`
-/

namespace A003278.P6128011407940175443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (n + 1) : ℚ) / 2 + 1

end

end A003278.P6128011407940175443

namespace A003278

/-- `A005823(n+1)/2+1` -/
def P6128011407940175443.Spec : Prop :=
  ∀ n, P6128011407940175443.a n = (A003278 (n + 1) : ℚ)

end A003278

/-! ## A003278.P2867787418759152902

`A081601(n+1)/3+1`
-/

namespace A003278.P2867787418759152902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081601 (n + 1) : ℚ) / 3 + 1

end

end A003278.P2867787418759152902

namespace A003278

/-- `A081601(n+1)/3+1` -/
def P2867787418759152902.Spec : Prop :=
  ∀ n, P2867787418759152902.a n = (A003278 (n + 1) : ℚ)

end A003278

/-! ## A003278.P5588570109545911266

`(A356426(n+1)+1)/3`
-/

namespace A003278.P5588570109545911266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356426 (n + 1) + 1 : ℚ) / 3

end

end A003278.P5588570109545911266

namespace A003278

/-- `(A356426(n+1)+1)/3` -/
def P5588570109545911266.Spec : Prop :=
  ∀ n, P5588570109545911266.a n = (A003278 (n + 1) : ℚ)

end A003278

/-! ## A003278.P8886426663586582033

`(A191108(n+1)+3)/4`
-/

namespace A003278.P8886426663586582033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191108 (n + 1) + 3 : ℚ) / 4

end

end A003278.P8886426663586582033

namespace A003278

/-- `(A191108(n+1)+3)/4` -/
def P8886426663586582033.Spec : Prop :=
  ∀ n, P8886426663586582033.a n = (A003278 (n + 1) : ℚ)

end A003278

/-! ## A003278.P1777610523532458620

`(A055246(n+1)+5)/6`
-/

namespace A003278.P1777610523532458620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055246 (n + 1) + 5 : ℚ) / 6

end

end A003278.P1777610523532458620

namespace A003278

/-- `(A055246(n+1)+5)/6` -/
def P1777610523532458620.Spec : Prop :=
  ∀ n, P1777610523532458620.a n = (A003278 (n + 1) : ℚ)

end A003278

/-! ## A003278.P5192279529739273937

`A236313(n)+a(n-1)` with `a(0)=1`
-/

namespace A003278.P5192279529739273937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236313 n + a (n - 1)

end

end A003278.P5192279529739273937

namespace A003278

/-- `A236313(n)+a(n-1)` -/
def P5192279529739273937.Spec : Prop :=
  ∀ n, P5192279529739273937.a n = A003278 (n + 1)

end A003278

/-! ## A003278.P301231189665166652

`A186776(n+1)+A059841(n)`
-/

namespace A003278.P301231189665166652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + A059841 n

end

end A003278.P301231189665166652

namespace A003278

/-- `A186776(n+1)+A059841(n)` -/
def P301231189665166652.Spec : Prop :=
  ∀ n, P301231189665166652.a n = A003278 (n + 1)

theorem P301231189665166652.correct : P301231189665166652.Spec := by
  intro n
  simp only [A003278, Nat.add_sub_cancel, A003278.P301231189665166652.a, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A059841, A059841.P7264174615531153985.a, A186776, A186776.P17009521900512411188.a, A004793, A004793.P14402439767548149062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003278

/-! ## A003278.P2169063947093180855

`A004793(n+1)-A000035(n)`
-/

namespace A003278.P2169063947093180855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) - A000035 n

end

end A003278.P2169063947093180855

namespace A003278

/-- `A004793(n+1)-A000035(n)` -/
def P2169063947093180855.Spec : Prop :=
  ∀ n, P2169063947093180855.a n = A003278 (n + 1)

theorem P2169063947093180855.correct : P2169063947093180855.Spec := by
  intro n
  simp only [A003278, Nat.add_sub_cancel, A003278.P2169063947093180855.a, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A000035, A000035.P2023072528413494694.a, A004793, A004793.P14402439767548149062.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003278

/-!
# A003279: High temperature series for spherical model susceptibility on 3-dimensional simple cubic lattice.

The programs for A003279, there is no canonical definition to state claims against.
-/

/-! ## A003279.P15566193985261298186

`A070097(A273700(n))+A002457(n)`
-/

namespace A003279.P15566193985261298186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070097 (A273700 n).toNat + A002457 n

end

end A003279.P15566193985261298186

/-! ## A003279.P15512811360806786595

`A277127(A017089(n)*A279561(n))`
-/

namespace A003279.P15512811360806786595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (A017089 n * A279561 n).toNat

end

end A003279.P15512811360806786595

/-!
# A003283: Denominators of coefficients of Green function for cubic lattice.

The programs for A003283, there is no canonical definition to state claims against.
-/

/-! ## A003283.P13970833481015552646

`record[A273496(ceil(n²/6))]`
-/

namespace A003283.P13970833481015552646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273496 ⌈(n ^ 2 : ℚ) / 6⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003283.P13970833481015552646

/-!
# A003284: Numerators of coefficients of Green function for cubic lattice.

The programs for A003284, there is no canonical definition to state claims against.
-/

/-! ## A003284.P7719614910287581355

`A191221(C(A006490(n+1), C(n, 2)))`
-/

namespace A003284.P7719614910287581355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191221 (Nat.choose (A006490 (n + 1)).toNat (Nat.choose n 2))

end

end A003284.P7719614910287581355

/-!
# A003285: Period of continued fraction for square root of n (or 0 if n is a square).

The programs for A003285, there is no canonical definition to state claims against.
-/

/-! ## A003285.P2555389908145028899

`A067280(n+1)-1`
-/

namespace A003285.P2555389908145028899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067280 (n + 1) - 1

end

end A003285.P2555389908145028899

/-! ## A003285.P13530928413834512176

`A023443(A067280(n+1))`
-/

namespace A003285.P13530928413834512176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A067280 (n + 1)).toNat

end

end A003285.P13530928413834512176

/-! ## A003285.P14068088363375713992

`A065423(2*A067280(n+1))`
-/

namespace A003285.P14068088363375713992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A067280 (n + 1)).toNat

end

end A003285.P14068088363375713992

/-! ## A003285.P12540752509373182156

`A097853(n+1)%A034867(n)`
-/

namespace A003285.P12540752509373182156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097853 (n + 1)) (A034867 n)

end

end A003285.P12540752509373182156

/-! ## A003285.P6584555149425120004

`A097853(n+1)-Δ[A000196(n)]`
-/

namespace A003285.P6584555149425120004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - (f1 (n + 1) - f1 n)

end

end A003285.P6584555149425120004

/-! ## A003285.P2969574279638121385

`Δ[A028391(n)]*A097853(n+1)`
-/

namespace A003285.P2969574279638121385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097853 (n + 1)

end

end A003285.P2969574279638121385

/-! ## A003285.P7327206332533742276

`A097853(n+1)-char[A005563(n)]`
-/

namespace A003285.P7327206332533742276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A003285.P7327206332533742276

/-! ## A003285.P2752430448005034296

`A028833(n+1)+A028832(n+1)`
-/

namespace A003285.P2752430448005034296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028833 (n + 1) + A028832 (n + 1)

end

end A003285.P2752430448005034296

/-! ## A003285.P17526420420375828920

`A049240(n+1)*A097853(n+1)`
-/

namespace A003285.P17526420420375828920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A097853 (n + 1)

end

end A003285.P17526420420375828920

/-! ## A003285.P3141330845607214955

`A097853(n+1)+A275437(n)-2`
-/

namespace A003285.P3141330845607214955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) + (A275437 n - 2)

end

end A003285.P3141330845607214955

/-! ## A003285.P11973825303081840618

`lcm(A068717(n+1), A097853(n+1))`
-/

namespace A003285.P11973825303081840618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068717 (n + 1)) (A097853 (n + 1))

end

end A003285.P11973825303081840618

/-! ## A003285.P9148848248134616863

`A097853(n+1)-A000005(n+1)%2`
-/

namespace A003285.P9148848248134616863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097853 (n + 1) - Int.tmod (A000005 (n + 1)) 2

end

end A003285.P9148848248134616863

/-! ## A003285.P5205467032628169193

`A105812(2*A067280(n+1))+A067280(n+1)`
-/

namespace A003285.P5205467032628169193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (2 * A067280 (n + 1)).toNat + A067280 (n + 1)

end

end A003285.P5205467032628169193

/-! ## A003285.P12009825854741413453

`A083800(n+1)%A067280(n+1)`
-/

namespace A003285.P12009825854741413453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A067280 (n + 1))

end

end A003285.P12009825854741413453

/-! ## A003285.P1315967944740650983

`A070198(n)%A067280(n+1)`
-/

namespace A003285.P1315967944740650983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A067280 (n + 1))

end

end A003285.P1315967944740650983

/-! ## A003285.P15886968493094756736

`A079782(n+1)%A067280(n+1)`
-/

namespace A003285.P15886968493094756736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A067280 (n + 1))

end

end A003285.P15886968493094756736

/-! ## A003285.P13952121075168504148

`A083685(n+1)%A067280(n+1)`
-/

namespace A003285.P13952121075168504148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A067280 (n + 1))

end

end A003285.P13952121075168504148

/-! ## A003285.P8706318982166905395

`A121934(n+1)%A067280(n+1)`
-/

namespace A003285.P8706318982166905395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A067280 (n + 1))

end

end A003285.P8706318982166905395

/-! ## A003285.P17260638144131824487

`A030494(n+1)%A067280(n+1)`
-/

namespace A003285.P17260638144131824487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A067280 (n + 1))

end

end A003285.P17260638144131824487

/-! ## A003285.P15252227873160807437

`A072828(n+1)%A067280(n+1)`
-/

namespace A003285.P15252227873160807437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A067280 (n + 1))

end

end A003285.P15252227873160807437

/-!
# A003286: Number of semi-regular digraphs (with loops) on n unlabeled nodes with each node having out-degree 2.

The programs for A003286, there is no canonical definition to state claims against.
-/

/-! ## A003286.P15097241191758549133

`A259471(∑[n+2]+3)`
-/

namespace A003286.P15097241191758549133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A003286.P15097241191758549133

/-! ## A003286.P16693435427347929854

`record[gcd(A259471(n), A303913(n))]`
-/

namespace A003286.P16693435427347929854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259471 n) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003286.P16693435427347929854

/-! ## A003286.P2831026987347276376

`record[A259471(A133263(A002262(n)))]`
-/

namespace A003286.P2831026987347276376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (A133263 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003286.P2831026987347276376

/-! ## A003286.P4492361990006971493

`or(A000007(n), A259471(A055998(n)+5))`
-/

namespace A003286.P4492361990006971493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A259471 (A055998 n + 5).toNat)

end

end A003286.P4492361990006971493

/-! ## A003286.P4347264527411062978

`and(-1, A259471(A141214(n)))`
-/

namespace A003286.P4347264527411062978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A259471 (A141214 n).toNat)

end

end A003286.P4347264527411062978

/-!
# A003287: Number of n-step self-avoiding walks on f.c.c. lattice from (0,0,0) to (0,1,1).

The programs for A003287, there is no canonical definition to state claims against.
-/

/-! ## A003287.P12329858570277277416

`A369126(n*(n*(n-5)+5)²)`
-/

namespace A003287.P12329858570277277416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369126 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat

end

end A003287.P12329858570277277416

/-!
# A003288: Number of n-step self-avoiding walks on f.c.c. lattice from (0,0,0) to (0,0,2).

The programs for A003288, there is no canonical definition to state claims against.
-/

/-! ## A003288.P14185097185117068384

`A008574(A273053(n+1)+A025192(n))`
-/

namespace A003288.P14185097185117068384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A273053 (n + 1) + A025192 n).toNat

end

end A003288.P14185097185117068384

/-!
# A003289: Number of n-step self-avoiding walks on hexagonal lattice from (0,0) to (0,1).

The programs for A003289, there is no canonical definition to state claims against.
-/

/-! ## A003289.P5309926399045285942

`record[ceil(A001335(n)/6)]`
-/

namespace A003289.P5309926399045285942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001335 n : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003289.P5309926399045285942

/-! ## A003289.P13630238612286444242

`record[(A001335(n)/6)^and(1, A000040(n+1))]`
-/

namespace A003289.P13630238612286444242
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001335 n : ℚ) / 6) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003289.P13630238612286444242

/-! ## A003289.P17697618244209251113

`record[A001335(n)/A001334(A178334(n))]`
-/

namespace A003289.P17697618244209251113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001335 n : ℚ) / (A001334 (A178334 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003289.P17697618244209251113

/-! ## A003289.P9023032708536130822

`record[(A001335(n)/6)^A255270(A055086(n))]`
-/

namespace A003289.P9023032708536130822
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001335 n : ℚ) / 6) ^ (A255270 (A055086 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003289.P9023032708536130822

/-! ## A003289.P6418763404528229074

`record[(A001335(n)/6)^A008683(A100484(n+1))]`
-/

namespace A003289.P6418763404528229074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001335 n : ℚ) / 6) ^ (A008683 (A100484 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003289.P6418763404528229074

/-!
# A003290: Number of n-step self-avoiding walks on hexagonal lattice from (0,0) to (0,2).

The programs for A003290, there is no canonical definition to state claims against.
-/

/-! ## A003290.P2624245841634577778

`A033434(n)+A000523(A007407(n+1))`
-/

namespace A003290.P2624245841634577778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n + A000523 (A007407 (n + 1)).toNat

end

end A003290.P2624245841634577778

/-! ## A003290.P18110918907133754084

`A094789(n+1)+A094741(A000041(2*n+1))`
-/

namespace A003290.P18110918907133754084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094789 (n + 1) + A094741 (A000041 (2 * n + 1)).toNat

end

end A003290.P18110918907133754084

/-!
# A003291: Number of n-step self-avoiding walks on hexagonal lattice from (0,0) to (1,1).

The programs for A003291, there is no canonical definition to state claims against.
-/

/-! ## A003291.P11800169366326099435

`A248609(A192207(n+1))`
-/

namespace A003291.P11800169366326099435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248609 (A192207 (n + 1)).toNat

end

end A003291.P11800169366326099435

/-!
# A003292: Number of 4-line partitions of n decreasing across rows.

The programs for A003292, there is no canonical definition to state claims against.
-/

/-! ## A003292.P2903768855200304904

`∑[A186417(n+1)]+1`
-/

namespace A003292.P2903768855200304904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A003292.P2903768855200304904

/-! ## A003292.P10586443603417848315

`a(n-1)-Δ[a(n-1)-A186417(n)]` with `a(0)=1`
-/

namespace A003292.P10586443603417848315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A186417 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A003292.P10586443603417848315

/-! ## A003292.P13896846046128740226

`A147766(n)+Δ[A000990(n)]`
-/

namespace A003292.P13896846046128740226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147766 n + (f1 (n + 1) - f1 n)

end

end A003292.P13896846046128740226

/-! ## A003292.P13421855068270864078

`A147766(n+1)+A147766(n)`
-/

namespace A003292.P13421855068270864078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147766 (n + 1) + A147766 n

end

end A003292.P13421855068270864078

/-! ## A003292.P14817166606344513546

`A324740(n+1)+A080513(n)`
-/

namespace A003292.P14817166606344513546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324740 (n + 1) + A080513 n

end

end A003292.P14817166606344513546

/-! ## A003292.P12453960241306715980

`A324740(n+1)+A008619(n+1)`
-/

namespace A003292.P12453960241306715980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324740 (n + 1) + A008619 (n + 1)

end

end A003292.P12453960241306715980

/-! ## A003292.P15437449334244748933

`A324740(n+1)+A004526(n+3)`
-/

namespace A003292.P15437449334244748933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324740 (n + 1) + A004526 (n + 3)

end

end A003292.P15437449334244748933

/-!
# A003293: Number of planar partitions of n decreasing across rows.

The programs for A003293, there is no canonical definition to state claims against.
-/

/-! ## A003293.P3042915075124051186

`A228129(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A003293.P3042915075124051186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A228129 n + a (n - 1)

end

end A003293.P3042915075124051186

/-! ## A003293.P8125107908074408651

`∑[A228129(n+1)]+A000007(n)-A228129(n+1)`
-/

namespace A003293.P8125107908074408651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A000007 n - A228129 (n + 1))

end

end A003293.P8125107908074408651

/-! ## A003293.P9557880054798588118

`∑[A228129(n+1)]-A228129(n+1)%A024718(n)`
-/

namespace A003293.P9557880054798588118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A228129 (n + 1)) (A024718 n)

end

end A003293.P9557880054798588118

/-! ## A003293.P5032707784538917003

`A232439(A035597(n))`
-/

namespace A003293.P5032707784538917003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232439 (A035597 n).toNat

end

end A003293.P5032707784538917003

/-! ## A003293.P3344532453101279482

`A232439(A217873(2*n)/8)`
-/

namespace A003293.P3344532453101279482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232439 (SequenceMachineLib.roundAway ((A217873 (2 * n) : ℚ) / 8)).toNat

end

end A003293.P3344532453101279482

/-!
# A003294: Numbers k such that k^4 can be written as a sum of four positive 4th powers.

The programs for A003294, there is no canonical definition to state claims against.
-/

/-! ## A003294.P10738724387755328539

`A096739(n+1)`
-/

namespace A003294.P10738724387755328539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096739 (n + 1)

end

end A003294.P10738724387755328539

/-! ## A003294.P16448934079635286019

`record[A096739(A020986(n))]`
-/

namespace A003294.P16448934079635286019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096739 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003294.P16448934079635286019

/-! ## A003294.P9600685251269480278

`record[A096739(A065648(n))]`
-/

namespace A003294.P9600685251269480278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096739 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003294.P9600685251269480278

/-! ## A003294.P13990739984600134871

`record[A096739(A082854(n))]`
-/

namespace A003294.P13990739984600134871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096739 (A082854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003294.P13990739984600134871

/-! ## A003294.P16838915082199797142

`record[A096739(A101504(n))]`
-/

namespace A003294.P16838915082199797142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096739 (A101504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003294.P16838915082199797142

/-!
# A003296: Coefficients of modular function g_2(tau).

The programs for A003296, there is no canonical definition to state claims against.
-/

/-! ## A003296.P3779595758847899846

`∑[∑[A276625(A000219(n+1))]]`
-/

namespace A003296.P3779595758847899846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A000219 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003296.P3779595758847899846

/-! ## A003296.P265447929272528152

`A035559(A016861(n)^ceil(n*(3-sqrt(8))))`
-/

namespace A003296.P265447929272528152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035559 (SequenceMachineLib.roundAway ((A016861 n : ℚ) ^ (⌈(n : ℝ) * (3 - Real.sqrt (8 : ℝ))⌉ : ℤ))).toNat

end

end A003296.P265447929272528152

/-!
# A003297: Coefficients of modular function g_3(tau).

The programs for A003297, there is no canonical definition to state claims against.
-/

/-! ## A003297.P16288859226131906460

`A248638(∑[A365987(n+1)])`
-/

namespace A003297.P16288859226131906460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248638 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003297.P16288859226131906460

/-!
# A003299: Numerators of coefficients of Green function for cubic lattice.

The programs for A003299, there is no canonical definition to state claims against.
-/

/-! ## A003299.P7504211881716757

`A349211(∑{d}[n+1, #]^4)%A361542(n)`
-/

namespace A003299.P7504211881716757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349211 ((∑ d ∈ Nat.divisors (f1 n), d) ^ 4)) (A361542 n)

end

end A003299.P7504211881716757

