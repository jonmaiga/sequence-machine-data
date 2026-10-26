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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
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
# A026200: a(n) = (s(n) + 2)/3, where s(n) is the n-th number congruent to 1 mod 3 in A026166.

The programs for A026200, the canonical program `A026200.P2191791267345785` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026200 has offset 1).

The definition of A026200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026200.P2191791267345785

`A080513(n)+n-A003815(A003815(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026200

/-- `A080513(n)+n-A003815(A003815(n))` -/
def P2191791267345785.Spec : Prop :=
  ∀ n, P2191791267345785.a n = A026200 (n + 1)

theorem P2191791267345785.correct : P2191791267345785.Spec := by
  intro n
  simp only [A026200, Nat.add_sub_cancel]

end A026200

/-! ## A026200.P10117359626168435762

`∑[A004736(a(n-1)+1)]-A003815(A003815(n))` with `a(0)=1`
-/

namespace A026200.P10117359626168435762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004736 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003815 (A003815 n).toNat

end

end A026200.P10117359626168435762

namespace A026200

/-- `∑[A004736(a(n-1)+1)]-A003815(A003815(n))` -/
def P10117359626168435762.Spec : Prop :=
  ∀ n, P10117359626168435762.a n = A026200 (n + 1)

end A026200

/-! ## A026200.P2375263020322426571

`∑[A068822(a(n-1)+1)]-A003815(A003815(n))` with `a(0)=1`
-/

namespace A026200.P2375263020322426571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A068822 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003815 (A003815 n).toNat

end

end A026200.P2375263020322426571

namespace A026200

/-- `∑[A068822(a(n-1)+1)]-A003815(A003815(n))` -/
def P2375263020322426571.Spec : Prop :=
  ∀ n, P2375263020322426571.a n = A026200 (n + 1)

end A026200

/-! ## A026200.P11733103543495683928

`∑[A135366(a(n-1)+1)]-A003815(A003815(n))` with `a(0)=1`
-/

namespace A026200.P11733103543495683928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A135366 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003815 (A003815 n).toNat

end

end A026200.P11733103543495683928

namespace A026200

/-- `∑[A135366(a(n-1)+1)]-A003815(A003815(n))` -/
def P11733103543495683928.Spec : Prop :=
  ∀ n, P11733103543495683928.a n = A026200 (n + 1)

end A026200

/-! ## A026200.P5576323867611550569

`∑[A181715(a(n-1)+1)]-A003815(A003815(n))` with `a(0)=1`
-/

namespace A026200.P5576323867611550569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A181715 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003815 (A003815 n).toNat

end

end A026200.P5576323867611550569

namespace A026200

/-- `∑[A181715(a(n-1)+1)]-A003815(A003815(n))` -/
def P5576323867611550569.Spec : Prop :=
  ∀ n, P5576323867611550569.a n = A026200 (n + 1)

end A026200

/-! ## A026200.P9392425422341493860

`A160016(A080412(n+1))`
-/

namespace A026200.P9392425422341493860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160016 (A080412 (n + 1)).toNat

end

end A026200.P9392425422341493860

namespace A026200

/-- `A160016(A080412(n+1))` -/
def P9392425422341493860.Spec : Prop :=
  ∀ n, P9392425422341493860.a n = A026200 (n + 1)

end A026200

/-! ## A026200.P11598879594905312147

`A026203(A026182(A026182(n+1)))`
-/

namespace A026200.P11598879594905312147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026203 (A026182 (A026182 (n + 1)).toNat).toNat

end

end A026200.P11598879594905312147

namespace A026200

/-- `A026203(A026182(A026182(n+1)))` -/
def P11598879594905312147.Spec : Prop :=
  ∀ n, P11598879594905312147.a n = A026200 (n + 1)

end A026200

/-! ## A026200.P266840857834194344

`A080513(3*n)-A003815(A003815(n))`
-/

namespace A026200.P266840857834194344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (3 * n) - A003815 (A003815 n).toNat

end

end A026200.P266840857834194344

namespace A026200

/-- `A080513(3*n)-A003815(A003815(n))` -/
def P266840857834194344.Spec : Prop :=
  ∀ n, P266840857834194344.a n = A026200 (n + 1)

end A026200

/-!
# A026201: Position of n in A026200.

The programs for A026201, the canonical program `A026201.P4686970172568400561` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026201 has offset 1).

The definition of A026201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026201.P3165022964603167037

`round(n+1-n/Δ[xor(1, n)])`
-/

namespace A026201.P3165022964603167037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) - (n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A026201.P3165022964603167037

namespace A026201

/-- `round(n+1-n/Δ[xor(1, n)])` -/
def P3165022964603167037.Spec : Prop :=
  ∀ n, P3165022964603167037.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P11124254660289025149

`round(n/(n%2+1/2))+1`
-/

namespace A026201.P11124254660289025149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (((n % 2 : ℕ) : ℚ) + (1 : ℚ) / 2)) + 1

end

end A026201.P11124254660289025149

namespace A026201

/-- `round(n/(n%2+1/2))+1` -/
def P11124254660289025149.Spec : Prop :=
  ∀ n, P11124254660289025149.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P6105950529531157773

`round(2*n/3^and(1, n))+1`
-/

namespace A026201.P6105950529531157773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / (3 ^ Nat.land 1 n : ℚ)) + 1

end

end A026201.P6105950529531157773

namespace A026201

/-- `round(2*n/3^and(1, n))+1` -/
def P6105950529531157773.Spec : Prop :=
  ∀ n, P6105950529531157773.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P6011851600496641564

`round(2*n/(2*and(1, n)+1))+1`
-/

namespace A026201.P6011851600496641564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / (2 * Nat.land 1 n + 1 : ℚ)) + 1

end

end A026201.P6011851600496641564

namespace A026201

/-- `round(2*n/(2*and(1, n)+1))+1` -/
def P6011851600496641564.Spec : Prop :=
  ∀ n, P6011851600496641564.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P10864781303818520666

`floor(2*n/and(3, 2*n+1)+ϕ)`
-/

namespace A026201.P10864781303818520666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℚ) / (Nat.land 3 (2 * n + 1) : ℚ) : ℝ) + Real.goldenRatio⌋

end

end A026201.P10864781303818520666

namespace A026201

/-- `floor(2*n/and(3, 2*n+1)+ϕ)` -/
def P10864781303818520666.Spec : Prop :=
  ∀ n, P10864781303818520666.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P15018910341115891037

`ceil(∑[(-1)^n-2]/((-1)^n-2))`
-/

namespace A026201.P15018910341115891037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n - 2 : ℚ)⌉

end

end A026201.P15018910341115891037

namespace A026201

/-- `ceil(∑[(-1)^n-2]/((-1)^n-2))` -/
def P15018910341115891037.Spec : Prop :=
  ∀ n, P15018910341115891037.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P546465080419855602

`a(n-2)+gcd(4, 1-a(n-4))` with `a(0)=1, a(1)=2, a(2)=5, a(3)=3`
-/

namespace A026201.P546465080419855602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 3] fun n a =>
  a (n - 2) + Int.gcd 4 (1 - (a (n - 4) : ℤ))

end

end A026201.P546465080419855602

namespace A026201

/-- `a(n-2)+gcd(4, 1-a(n-4))` -/
def P546465080419855602.Spec : Prop :=
  ∀ n, (P546465080419855602.a n : ℤ) = A026201 (n + 1)

end A026201

/-! ## A026201.P4686970172568400561

`a(n-2)+a(n-6)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=3, a(4)=9, a(5)=4, a(6)=13, a(7)=6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026201

/-- `a(n-2)+a(n-6)-a(n-8)` -/
def P4686970172568400561.Spec : Prop :=
  ∀ n, P4686970172568400561.a n = A026201 (n + 1)

theorem P4686970172568400561.correct : P4686970172568400561.Spec := by
  intro n
  simp only [A026201, Nat.add_sub_cancel]

end A026201

/-! ## A026201.P15215453801828282440

`A026185(n)+1`
-/

namespace A026201.P15215453801828282440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026185 n + 1

end

end A026201.P15215453801828282440

namespace A026201

/-- `A026185(n)+1` -/
def P15215453801828282440.Spec : Prop :=
  ∀ n, P15215453801828282440.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P16939628003277927840

`floor(2*n/A000032(gcd(n+1, n-1))+ϕ)`
-/

namespace A026201.P16939628003277927840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n : ℚ) / (A000032 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)) : ℚ) : ℝ) + Real.goldenRatio⌋

end

end A026201.P16939628003277927840

namespace A026201

/-- `floor(2*n/A000032(gcd(n+1, n-1))+ϕ)` -/
def P16939628003277927840.Spec : Prop :=
  ∀ n, P16939628003277927840.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P4323057619666796414

`A047408(n+1)-A338206(n)`
-/

namespace A026201.P4323057619666796414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047408 (n + 1) - A338206 n

end

end A026201.P4323057619666796414

namespace A026201

/-- `A047408(n+1)-A338206(n)` -/
def P4323057619666796414.Spec : Prop :=
  ∀ n, P4323057619666796414.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P15976734545798171272

`A047622(n+1)+1-A338206(n)`
-/

namespace A026201.P15976734545798171272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047622 (n + 1) + (1 - A338206 n)

end

end A026201.P15976734545798171272

namespace A026201

/-- `A047622(n+1)+1-A338206(n)` -/
def P15976734545798171272.Spec : Prop :=
  ∀ n, P15976734545798171272.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P15960988703048665314

`2*n+1-A042965(A124625(n+2))`
-/

namespace A026201.P15960988703048665314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A042965 (A124625 (n + 2)).toNat

end

end A026201.P15960988703048665314

namespace A026201

/-- `2*n+1-A042965(A124625(n+2))` -/
def P15960988703048665314.Spec : Prop :=
  ∀ n, P15960988703048665314.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P878253940876989645

`A292576(a(n-2))+2` with `a(0)=1, a(1)=2`
-/

namespace A026201.P878253940876989645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A292576 (a (n - 2)).toNat + 2

end

end A026201.P878253940876989645

namespace A026201

/-- `A292576(a(n-2))+2` -/
def P878253940876989645.Spec : Prop :=
  ∀ n, P878253940876989645.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P11050451254076700915

`A080412(A338206(n+1))`
-/

namespace A026201.P11050451254076700915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (A338206 (n + 1)).toNat

end

end A026201.P11050451254076700915

namespace A026201

/-- `A080412(A338206(n+1))` -/
def P11050451254076700915.Spec : Prop :=
  ∀ n, P11050451254076700915.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P1764965932848421682

`A026183(A026183(A026202(n+1)))`
-/

namespace A026201.P1764965932848421682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026183 (A026183 (A026202 (n + 1)).toNat).toNat

end

end A026201.P1764965932848421682

namespace A026201

/-- `A026183(A026183(A026202(n+1)))` -/
def P1764965932848421682.Spec : Prop :=
  ∀ n, P1764965932848421682.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P4828915133555361088

`A086161(A035877(n))`
-/

namespace A026201.P4828915133555361088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A035877 n).toNat

end

end A026201.P4828915133555361088

namespace A026201

/-- `A086161(A035877(n))` -/
def P4828915133555361088.Spec : Prop :=
  ∀ n, P4828915133555361088.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P10646968215486125364

`A271484(A151977(n+2))+1`
-/

namespace A026201.P10646968215486125364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271484 (A151977 (n + 2)).toNat + 1

end

end A026201.P10646968215486125364

namespace A026201

/-- `A271484(A151977(n+2))+1` -/
def P10646968215486125364.Spec : Prop :=
  ∀ n, P10646968215486125364.a n = A026201 (n + 1)

end A026201

/-! ## A026201.P143296941271540131

`Δ[A004396(n*(A000035(n)+n))]`
-/

namespace A026201.P143296941271540131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) * (A000035 n + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026201.P143296941271540131

namespace A026201

/-- `Δ[A004396(n*(A000035(n)+n))]` -/
def P143296941271540131.Spec : Prop :=
  ∀ n, P143296941271540131.a n = A026201 (n + 1)

end A026201

/-!
# A026202: a(n) = (1/4)*s(n), where s(n) is the n-th multiple of 4 in A026166.

The programs for A026202, there is no canonical definition to state claims against.
-/

/-! ## A026202.P12973536502066556791

`ceil(A026178(A042963(n+1))/2)`
-/

namespace A026202.P12973536502066556791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026178 (A042963 (n + 1)).toNat : ℚ) / 2⌉

end

end A026202.P12973536502066556791

/-! ## A026202.P13243467287591190425

`ceil(A026178(A005408(n)-A000035(n))/2)`
-/

namespace A026202.P13243467287591190425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026178 (A005408 n - A000035 n).toNat : ℚ) / 2⌉

end

end A026202.P13243467287591190425

/-! ## A026202.P17295187254798053308

`A008619(A026178(A042963(n+1)))`
-/

namespace A026202.P17295187254798053308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026178 (A042963 (n + 1)).toNat).toNat

end

end A026202.P17295187254798053308

/-! ## A026202.P2856731891706330546

`A026182(A026182(A026201(n+1)))`
-/

namespace A026202.P2856731891706330546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026182 (A026182 (A026201 (n + 1)).toNat).toNat

end

end A026202.P2856731891706330546

/-! ## A026202.P15696455500908657735

`A061395(p?[A067747(A026178(n+1))])`
-/

namespace A026202.P15696455500908657735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A026178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026202.P15696455500908657735

/-! ## A026202.P11491436197178977001

`A000720(p?[A209259(A026178(n+1))])`
-/

namespace A026202.P11491436197178977001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209259 (A026178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026202.P11491436197178977001

/-! ## A026202.P17081629655892926758

`A008619(A026178(A032766(n)+A008619(n)))`
-/

namespace A026202.P17081629655892926758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026178 (A032766 n + A008619 n).toNat).toNat

end

end A026202.P17081629655892926758

/-! ## A026202.P10937277368716571085

`A008619(A026178(A005408(n)-A000035(n)))`
-/

namespace A026202.P10937277368716571085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026178 (A005408 n - A000035 n).toNat).toNat

end

end A026202.P10937277368716571085

/-! ## A026202.P13337070973870855224

`A026166(A047270(n+1))/4`
-/

namespace A026202.P13337070973870855224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026166 (A047270 (n + 1)).toNat : ℚ) / 4

end

end A026202.P13337070973870855224

/-! ## A026202.P13175022792726945009

`A008621(A026136(A047235(n+1)))`
-/

namespace A026202.P13175022792726945009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A026136 (A047235 (n + 1)).toNat).toNat

end

end A026202.P13175022792726945009

/-! ## A026202.P8468121025358153875

`A002265(A026166(A047270(n+1)))`
-/

namespace A026202.P8468121025358153875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A026166 (A047270 (n + 1)).toNat).toNat

end

end A026202.P8468121025358153875

/-!
# A026203: position of n in A026202.

The programs for A026203, there is no canonical definition to state claims against.
-/

/-! ## A026203.P1295585808740672560

`floor(A026177(2*n+1)/2)+1`
-/

namespace A026203.P1295585808740672560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026177 (2 * n + 1) : ℚ) / 2⌋ + 1

end

end A026203.P1295585808740672560

/-! ## A026203.P4694942584348243496

`A026200(A026183(A026183(n+1)))`
-/

namespace A026203.P4694942584348243496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026200 (A026183 (A026183 (n + 1)).toNat).toNat

end

end A026203.P4694942584348243496

/-! ## A026203.P6646266432878757790

`A008619(A026177(2*n+1))`
-/

namespace A026203.P6646266432878757790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026177 (2 * n + 1)).toNat

end

end A026203.P6646266432878757790

/-! ## A026203.P690547518502543345

`ceil(A026166(Δ[A001844(n)])/4)`
-/

namespace A026203.P690547518502543345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026166 (f1 (n + 1) - f1 n).toNat : ℚ) / 4⌉

end

end A026203.P690547518502543345

/-! ## A026203.P2100508516973210730

`A065033(A026177(2*n+1)+1)`
-/

namespace A026203.P2100508516973210730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026177 (2 * n + 1) + 1).toNat

end

end A026203.P2100508516973210730

/-! ## A026203.P1483615090363428651

`A110654(A026177(2*n+1)+1)`
-/

namespace A026203.P1483615090363428651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A026177 (2 * n + 1) + 1).toNat

end

end A026203.P1483615090363428651

/-! ## A026203.P15948100461848668031

`A004525(A026177(2*n+1)+2)`
-/

namespace A026203.P15948100461848668031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026177 (2 * n + 1) + 2).toNat

end

end A026203.P15948100461848668031

/-! ## A026203.P3465990942052481154

`A008621(A026136(A004767(n)))`
-/

namespace A026203.P3465990942052481154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A026136 (A004767 n).toNat).toNat

end

end A026203.P3465990942052481154

/-! ## A026203.P11480371611775119280

`A008624(A026166(Δ[A001844(n)]))`
-/

namespace A026203.P11480371611775119280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A026166 (f1 (n + 1) - f1 n).toNat).toNat

end

end A026203.P11480371611775119280

/-!
# A026214: a(n) = (1/2)*s(n), where s(n) is the n-th even number in A026177.

The programs for A026214, there is no canonical definition to state claims against.
-/

/-! ## A026214.P10366836576470122075

`A026177(ceil(3*(n+1)/2))/2`
-/

namespace A026214.P10366836576470122075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026177 ⌈(3 * (n + 1) : ℚ) / 2⌉.toNat : ℚ) / 2

end

end A026214.P10366836576470122075

/-! ## A026214.P9706817839368835212

`lcm(2, n+1)+n+1-A026178(n+1)`
-/

namespace A026214.P9706817839368835212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℤ) + ((n + 1 : ℤ) - A026178 (n + 1))

end

end A026214.P9706817839368835212

/-! ## A026214.P722881330971286855

`A106833(n+1)-A026178(n+1)`
-/

namespace A026214.P722881330971286855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106833 (n + 1) - A026178 (n + 1)

end

end A026214.P722881330971286855

/-! ## A026214.P12966341130103576990

`A026137(n+2)-1`
-/

namespace A026214.P12966341130103576990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 2) - 1

end

end A026214.P12966341130103576990

/-! ## A026214.P9871597171858643623

`A057428(n+1)+A026137(n+2)`
-/

namespace A026214.P9871597171858643623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A026137 (n + 2)

end

end A026214.P9871597171858643623

/-! ## A026214.P5921920726268976156

`A026167(n+3)-2`
-/

namespace A026214.P5921920726268976156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 3) - 2

end

end A026214.P5921920726268976156

/-! ## A026214.P18107296717311486457

`A023443(A026137(n+2))`
-/

namespace A026214.P18107296717311486457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026137 (n + 2)).toNat

end

end A026214.P18107296717311486457

/-! ## A026214.P11115757315142999449

`A026178(A042963(n+1)+2)/2`
-/

namespace A026214.P11115757315142999449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026178 (A042963 (n + 1) + 2).toNat : ℚ) / 2

end

end A026214.P11115757315142999449

/-! ## A026214.P17815814527355113908

`A026190(A026177(A026143(n+1)))`
-/

namespace A026214.P17815814527355113908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026190 (A026177 (A026143 (n + 1)).toNat).toNat

end

end A026214.P17815814527355113908

/-! ## A026214.P13322088943088124891

`A004526(A026177(A320928(n+2)))`
-/

namespace A026214.P13322088943088124891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026177 (A320928 (n + 2)).toNat).toNat

end

end A026214.P13322088943088124891

/-! ## A026214.P15801073180562536042

`A004526(A026177(A004526(3*n)+2))`
-/

namespace A026214.P15801073180562536042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026177 (A004526 (3 * n) + 2).toNat).toNat

end

end A026214.P15801073180562536042

/-!
# A026215: a(n) is the position of n in A026214.

The programs for A026215, there is no canonical definition to state claims against.
-/

/-! ## A026215.P3420063583388380837

`A026142(n+1)+A026191(n+1)-A026177(n+1)`
-/

namespace A026215.P3420063583388380837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1) + (A026191 (n + 1) - A026177 (n + 1))

end

end A026215.P3420063583388380837

/-! ## A026215.P4286569830286150671

`A026136(n+2)-1`
-/

namespace A026215.P4286569830286150671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 2) - 1

end

end A026215.P4286569830286150671

/-! ## A026215.P394223887743865287

`A008576(n+1)-A026177(n+1)`
-/

namespace A026215.P394223887743865287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (n + 1) - A026177 (n + 1)

end

end A026215.P394223887743865287

/-! ## A026215.P12099291343114150607

`A057428(n+1)+A026136(n+2)`
-/

namespace A026215.P12099291343114150607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A026136 (n + 2)

end

end A026215.P12099291343114150607

/-! ## A026215.P16599829201640932546

`A047480(n+2)-(A026183(n+2)+1)`
-/

namespace A026215.P16599829201640932546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047480 (n + 2) - (A026183 (n + 2) + 1)

end

end A026215.P16599829201640932546

/-! ## A026215.P18279987301608869109

`A026166(n+3)-2`
-/

namespace A026215.P18279987301608869109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 3) - 2

end

end A026215.P18279987301608869109

/-! ## A026215.P16466130681551559953

`A023443(A026136(n+2))`
-/

namespace A026215.P16466130681551559953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026136 (n + 2)).toNat

end

end A026215.P16466130681551559953

/-! ## A026215.P2251598564132885450

`floor(A026177(2*(n+1))/2)`
-/

namespace A026215.P2251598564132885450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026177 (2 * (n + 1)) : ℚ) / 2⌋

end

end A026215.P2251598564132885450

/-! ## A026215.P4079755313803063569

`A005843(n+1)%A026177(2*(n+1))`
-/

namespace A026215.P4079755313803063569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1)) (A026177 (2 * (n + 1)))

end

end A026215.P4079755313803063569

/-! ## A026215.P10364655247091073414

`2*A026178(2*(n+1))-A026177(2*(n+1))`
-/

namespace A026215.P10364655247091073414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026178 (2 * (n + 1)) - A026177 (2 * (n + 1))

end

end A026215.P10364655247091073414

/-! ## A026215.P11774717634800484955

`A004525(A026177(2*(n+1)))`
-/

namespace A026215.P11774717634800484955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026177 (2 * (n + 1))).toNat

end

end A026215.P11774717634800484955

/-! ## A026215.P5927245848200072452

`A065033(A026177(2*(n+1))-1)`
-/

namespace A026215.P5927245848200072452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026177 (2 * (n + 1)) - 1).toNat

end

end A026215.P5927245848200072452

/-! ## A026215.P11443834050575016186

`A110654(A026177(2*(n+1))-1)`
-/

namespace A026215.P11443834050575016186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A026177 (2 * (n + 1)) - 1).toNat

end

end A026215.P11443834050575016186

/-! ## A026215.P15841188975028390094

`A008619(A026177(2*(n+1))-2)`
-/

namespace A026215.P15841188975028390094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026177 (2 * (n + 1)) - 2).toNat

end

end A026215.P15841188975028390094

/-! ## A026215.P13903633295143061612

`A004526(A026177(2*n+2))`
-/

namespace A026215.P13903633295143061612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026177 (2 * n + 2)).toNat

end

end A026215.P13903633295143061612

/-!
# A026222: Numbers k such that A026136(k) = A026142(k).

The programs for A026222, there is no canonical definition to state claims against.
-/

/-! ## A026222.P5701420494051624647

`∩[A026223(n+1), A008486(n)]`
-/

namespace A026222.P5701420494051624647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P5701420494051624647

/-! ## A026222.P9989422260712968019

`∩[A026223(n+1), A055264(n)]`
-/

namespace A026222.P9989422260712968019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P9989422260712968019

/-! ## A026222.P2529546428488810129

`∩[A026223(n+1), A026227(n+1)]`
-/

namespace A026222.P2529546428488810129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P2529546428488810129

/-! ## A026222.P9788740067017809325

`∩[A026223(n+1), A047242(n+1)]`
-/

namespace A026222.P9788740067017809325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P9788740067017809325

/-! ## A026222.P1154137344840635463

`∩[A026223(n+1), A061641(n+1)]`
-/

namespace A026222.P1154137344840635463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P1154137344840635463

/-! ## A026222.P1519701329407896045

`∩[A026223(n+1), A177729(n+1)]`
-/

namespace A026222.P1519701329407896045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P1519701329407896045

/-! ## A026222.P13521179817677098548

`∩[A026223(n+1), A204502(n+1)]`
-/

namespace A026222.P13521179817677098548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P13521179817677098548

/-! ## A026222.P13184017818062787177

`∩[A026223(n+1), A375852(n+1)]`
-/

namespace A026222.P13184017818062787177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P13184017818062787177

/-! ## A026222.P601325936741189786

`∩[A026223(n+1), A144429(n+1)]`
-/

namespace A026222.P601325936741189786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144429 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P601325936741189786

/-! ## A026222.P9139603669452986592

`∩[A026223(n+1), A138670(n)]`
-/

namespace A026222.P9139603669452986592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P9139603669452986592

/-! ## A026222.P13424240731139080404

`∩[A026223(n+1), A286692(n+1)]`
-/

namespace A026222.P13424240731139080404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P13424240731139080404

/-! ## A026222.P10381700290172004406

`record[A026143(A004277(n))]`
-/

namespace A026222.P10381700290172004406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026143 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026222.P10381700290172004406

/-! ## A026222.P4445470844500365507

`record[A026143(A028310(2*n))]`
-/

namespace A026222.P4445470844500365507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026143 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026222.P4445470844500365507

/-! ## A026222.P6627366635355147884

`record[A026143(A028310(n)+n)]`
-/

namespace A026222.P6627366635355147884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026143 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026222.P6627366635355147884

/-! ## A026222.P493609167533945709

`∩[A026223(n+1), A032766(n)]`
-/

namespace A026222.P493609167533945709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026222.P493609167533945709

/-! ## A026222.P12580555425773448255

`record[A026143(n+1)^A088705(n)]`
-/

namespace A026222.P12580555425773448255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026143 (n + 1) : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026222.P12580555425773448255

/-! ## A026222.P15495080914397041972

`filter[A026223(n+1), A173857(#)]`
-/

namespace A026222.P15495080914397041972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A026222.P15495080914397041972

/-! ## A026222.P4245855328337170859

`filter[A026223(n+1), A329680(#)]`
-/

namespace A026222.P4245855328337170859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A026222.P4245855328337170859

/-! ## A026222.P12646806808838587332

`eq[A006369(n), A026142(abs(1-n)+1)]`
-/

namespace A026222.P12646806808838587332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026222.P12646806808838587332

/-! ## A026222.P8180327056579338266

`eq[A026136(n+1), A026142(n+1)]+1`
-/

namespace A026222.P8180327056579338266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A026222.P8180327056579338266

/-!
# A026223: (1/3)*s(n+1), where s = A026222.

The programs for A026223, there is no canonical definition to state claims against.
-/

/-! ## A026223.P7322092861393897336

`∪[A026222(n+1), A180486(n+1)]`
-/

namespace A026223.P7322092861393897336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026223.P7322092861393897336

/-! ## A026223.P7770721337057509212

`A026222(n+2)/3`
-/

namespace A026223.P7770721337057509212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026222 (n + 2) : ℚ) / 3

end

end A026223.P7770721337057509212

/-! ## A026223.P16662278467066802800

`∑[A000196(Δ[A026222(n+1)])]`
-/

namespace A026223.P16662278467066802800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026223.P16662278467066802800

/-! ## A026223.P10988077729268255552

`∑[A000523(Δ[A026222(n+1)])]`
-/

namespace A026223.P10988077729268255552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026223.P10988077729268255552

/-! ## A026223.P2582301038107765272

`∑[A008621(Δ[A026222(n+1)])]`
-/

namespace A026223.P2582301038107765272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026223.P2582301038107765272

/-! ## A026223.P8403372769313031126

`∑[A009195(Δ[A026222(n+1)])]`
-/

namespace A026223.P8403372769313031126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026223.P8403372769313031126

/-! ## A026223.P8559789177371614072

`record[A026143(n+1)]`
-/

namespace A026223.P8559789177371614072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026223.P8559789177371614072

/-! ## A026223.P17256176187101055751

`record[A106833(n+1)-A026190(n+1)]`
-/

namespace A026223.P17256176187101055751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106833 (n + 1) - A026190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026223.P17256176187101055751

/-! ## A026223.P7355478019760108527

`record[A026191(n+1)/2]`
-/

namespace A026223.P7355478019760108527
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026191 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026223.P7355478019760108527

/-! ## A026223.P1106896050989534149

`lt[comp[A016789(n)], A002517(n)]`
-/

namespace A026223.P1106896050989534149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A026223.P1106896050989534149

/-! ## A026223.P7677932998222536572

`lt[A026195(n+1), A026191(n+1)]+1`
-/

namespace A026223.P7677932998222536572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026191 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A026223.P7677932998222536572

/-! ## A026223.P6280540234230958993

`record[A026177(n+1)+A026215(n+1)-A026142(n+1)]/2`
-/

namespace A026223.P6280540234230958993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026177 (n + 1) + (A026215 (n + 1) - A026142 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A026223.P6280540234230958993

/-! ## A026223.P4816546087490949399

`lt[n, A002517(A002517(n)-n)]`
-/

namespace A026223.P4816546087490949399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (A002517 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A026223.P4816546087490949399

/-! ## A026223.P10513841279522217648

`lt[comp[A002517(2*n+1)], A002517(n)]`
-/

namespace A026223.P10513841279522217648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A026223.P10513841279522217648

/-! ## A026223.P13520499220867850395

`A002264(A026222(n+2))`
-/

namespace A026223.P13520499220867850395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A026222 (n + 2)).toNat

end

end A026223.P13520499220867850395

/-! ## A026223.P17456942399465143280

`eq[2*n, A026142(A008486(n))]`
-/

namespace A026223.P17456942399465143280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026223.P17456942399465143280

/-! ## A026223.P4145433642396098380

`lt[A005843(n)+n, A005843(A002517(n))]`
-/

namespace A026223.P4145433642396098380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026223.P4145433642396098380

/-! ## A026223.P13693359320270746187

`record[A026191(A026191(n+2))-A026191(n+2)]`
-/

namespace A026223.P13693359320270746187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026191 (A026191 (n + 2)).toNat - A026191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026223.P13693359320270746187

/-!
# A026224: Numbers n such that t(n) = s(n) + 1, where s = A026136, t = A026142.

The programs for A026224, the canonical program `A026224.P5311099254236011223` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026224 has offset 1).

The definition of A026224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026224.P2120864391101432690

`A026228(n+1)-floor(atan(n+1))`
-/

namespace A026224.P2120864391101432690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1) - ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A026224.P2120864391101432690

namespace A026224

/-- `A026228(n+1)-floor(atan(n+1))` -/
def P2120864391101432690.Spec : Prop :=
  ∀ n, P2120864391101432690.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P5311099254236011223

`A057428(n)+A026228(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026224

/-- `A057428(n)+A026228(n+1)` -/
def P5311099254236011223.Spec : Prop :=
  ∀ n, P5311099254236011223.a n = A026224 (n + 1)

theorem P5311099254236011223.correct : P5311099254236011223.Spec := by
  intro n
  simp only [A026224, Nat.add_sub_cancel]

end A026224

/-! ## A026224.P1444356623309953661

`A026228(n+1)-A057427(n)`
-/

namespace A026224.P1444356623309953661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1) - A057427 n

end

end A026224.P1444356623309953661

namespace A026224

/-- `A026228(n+1)-A057427(n)` -/
def P1444356623309953661.Spec : Prop :=
  ∀ n, P1444356623309953661.a n = A026224 (n + 1)

theorem P1444356623309953661.correct : P1444356623309953661.Spec := by
  intro n
  simp only [A026224, Nat.add_sub_cancel, A026224.P1444356623309953661.a, A026224.P5311099254236011223.a, A026228, A026228.P11632030350600125361.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A000007, A000007.P6599383543502402472.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026224

/-! ## A026224.P15708449493996195373

`A026228(n+1)-A019426(2*n)`
-/

namespace A026224.P15708449493996195373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1) - A019426 (2 * n)

end

end A026224.P15708449493996195373

namespace A026224

/-- `A026228(n+1)-A019426(2*n)` -/
def P15708449493996195373.Spec : Prop :=
  ∀ n, P15708449493996195373.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P18409664897742201704

`A026228(n+1)-A000040(n+1)%2`
-/

namespace A026224.P18409664897742201704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1) - Int.tmod (A000040 (n + 1)) 2

end

end A026224.P18409664897742201704

namespace A026224

/-- `A026228(n+1)-A000040(n+1)%2` -/
def P18409664897742201704.Spec : Prop :=
  ∀ n, P18409664897742201704.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P18295537826002965902

`A026228(n+1)-A001221(A000961(n+1))`
-/

namespace A026224.P18295537826002965902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 1) - A001221 (A000961 (n + 1)).toNat

end

end A026224.P18295537826002965902

namespace A026224

/-- `A026228(n+1)-A001221(A000961(n+1))` -/
def P18295537826002965902.Spec : Prop :=
  ∀ n, P18295537826002965902.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P9920640270029978782

`A008486(A026140(n+1))+1`
-/

namespace A026224.P9920640270029978782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A026140 (n + 1)).toNat + 1

end

end A026224.P9920640270029978782

namespace A026224

/-- `A008486(A026140(n+1))+1` -/
def P9920640270029978782.Spec : Prop :=
  ∀ n, P9920640270029978782.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P11683875382591726121

`record[A028310(n)+A026136(n+1)]`
-/

namespace A026224.P11683875382591726121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A026136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026224.P11683875382591726121

namespace A026224

/-- `record[A028310(n)+A026136(n+1)]` -/
def P11683875382591726121.Spec : Prop :=
  ∀ n, P11683875382591726121.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P1836681098502159297

`record[A026136(n+1)+A000007(n)+n]`
-/

namespace A026224.P1836681098502159297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1) + (A000007 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026224.P1836681098502159297

namespace A026224

/-- `record[A026136(n+1)+A000007(n)+n]` -/
def P1836681098502159297.Spec : Prop :=
  ∀ n, P1836681098502159297.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P9320837864342303495

`record[A026166(n+2)+(n-1)%(n+1)]`
-/

namespace A026224.P9320837864342303495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 2) + Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026224.P9320837864342303495

namespace A026224

/-- `record[A026166(n+2)+(n-1)%(n+1)]` -/
def P9320837864342303495.Spec : Prop :=
  ∀ n, P9320837864342303495.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P11410489957829380149

`A033627(A026168(n+2))`
-/

namespace A026224.P11410489957829380149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A026168 (n + 2)).toNat

end

end A026224.P11410489957829380149

namespace A026224

/-- `A033627(A026168(n+2))` -/
def P11410489957829380149.Spec : Prop :=
  ∀ n, P11410489957829380149.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P3409138113734806821

`A026227(A026139(n+1)-n)+1`
-/

namespace A026224.P3409138113734806821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (A026139 (n + 1) - (n : ℤ)).toNat + 1

end

end A026224.P3409138113734806821

namespace A026224

/-- `A026227(A026139(n+1)-n)+1` -/
def P3409138113734806821.Spec : Prop :=
  ∀ n, P3409138113734806821.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P11578492110684705497

`A026168(A026138(n+1)+n)+1`
-/

namespace A026224.P11578492110684705497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (A026138 (n + 1) + (n : ℤ)).toNat + 1

end

end A026224.P11578492110684705497

namespace A026224

/-- `A026168(A026138(n+1)+n)+1` -/
def P11578492110684705497.Spec : Prop :=
  ∀ n, P11578492110684705497.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P17543590010694396423

`∩[A026138(n+1), A026230(n+1)]`
-/

namespace A026224.P17543590010694396423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026224.P17543590010694396423

namespace A026224

/-- `∩[A026138(n+1), A026230(n+1)]` -/
def P17543590010694396423.Spec : Prop :=
  ∀ n, (P17543590010694396423.a n : ℤ) = A026224 (n + 1)

end A026224

/-! ## A026224.P17310492510149022838

`∩[A026168(n+1)-1, A026230(n+1)]`
-/

namespace A026224.P17310492510149022838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026224.P17310492510149022838

namespace A026224

/-- `∩[A026168(n+1)-1, A026230(n+1)]` -/
def P17310492510149022838.Spec : Prop :=
  ∀ n, (P17310492510149022838.a n : ℤ) = A026224 (n + 1)

end A026224

/-! ## A026224.P6420999378272247040

`A026138(A028310(n)+A026138(n+1))`
-/

namespace A026224.P6420999378272247040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (A028310 n + A026138 (n + 1)).toNat

end

end A026224.P6420999378272247040

namespace A026224

/-- `A026138(A028310(n)+A026138(n+1))` -/
def P6420999378272247040.Spec : Prop :=
  ∀ n, P6420999378272247040.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P13226888534611488610

`A026138(A026138(n+1)+n)+A000007(n)`
-/

namespace A026224.P13226888534611488610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (A026138 (n + 1) + (n : ℤ)).toNat + A000007 n

end

end A026224.P13226888534611488610

namespace A026224

/-- `A026138(A026138(n+1)+n)+A000007(n)` -/
def P13226888534611488610.Spec : Prop :=
  ∀ n, P13226888534611488610.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P13078189691318835817

`A026190(A026139(n+1))`
-/

namespace A026224.P13078189691318835817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026190 (A026139 (n + 1)).toNat

end

end A026224.P13078189691318835817

namespace A026224

/-- `A026190(A026139(n+1))` -/
def P13078189691318835817.Spec : Prop :=
  ∀ n, P13078189691318835817.a n = A026224 (n + 1)

end A026224

/-! ## A026224.P1611694481747591816

`filter[A026144(n+1), A189673(#)]`
-/

namespace A026224.P1611694481747591816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189673 (f1 j).toNat = 1) n)

end

end A026224.P1611694481747591816

namespace A026224

/-- `filter[A026144(n+1), A189673(#)]` -/
def P1611694481747591816.Spec : Prop :=
  ∀ n, P1611694481747591816.a n = A026224 (n + 1)

end A026224

/-!
# A026225: Numbers of the form 3^i * (3k+1).

The programs for A026225, the canonical program `A026225.P18152359124507789956` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026225 has offset 1).

The definition of A026225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026225.P8961344754252050667

`∑[A026141(n+2)]`
-/

namespace A026225.P8961344754252050667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026225.P8961344754252050667

namespace A026225

/-- `∑[A026141(n+2)]` -/
def P8961344754252050667.Spec : Prop :=
  ∀ n, P8961344754252050667.a n = A026225 (n + 1)

end A026225

/-! ## A026225.P15184154364393743582

`A155504(n+1)/3`
-/

namespace A026225.P15184154364393743582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155504 (n + 1) : ℚ) / 3

end

end A026225.P15184154364393743582

namespace A026225

/-- `A155504(n+1)/3` -/
def P15184154364393743582.Spec : Prop :=
  ∀ n, P15184154364393743582.a n = (A026225 (n + 1) : ℚ)

theorem P15184154364393743582.correct : P15184154364393743582.Spec := by
  intro n
  simp only [A026225, Nat.add_sub_cancel, A026225.P15184154364393743582.a, A026225.P18152359124507789956.f1, A026225.P18152359124507789956.a, A026227, A026227.P12938836821948586418.a, A155504, A155504.P17301175292286522036.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026225

/-! ## A026225.P18152359124507789956

`comp[A026227(n+1)-1]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026225

/-- `comp[A026227(n+1)-1]` -/
def P18152359124507789956.Spec : Prop :=
  ∀ n, (P18152359124507789956.a n : ℤ) = A026225 (n + 1)

theorem P18152359124507789956.correct : P18152359124507789956.Spec := by
  intro n
  simp only [A026225, Nat.add_sub_cancel]

end A026225

/-! ## A026225.P14940565224045426275

`comp[A026232(n+1)-2]+1`
-/

namespace A026225.P14940565224045426275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026225.P14940565224045426275

namespace A026225

/-- `comp[A026232(n+1)-2]+1` -/
def P14940565224045426275.Spec : Prop :=
  ∀ n, (P14940565224045426275.a n : ℤ) = A026225 (n + 1)

end A026225

/-! ## A026225.P6207834578870099899

`∪[A155504(n+1), A016777(n)]`
-/

namespace A026225.P6207834578870099899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026225.P6207834578870099899

namespace A026225

/-- `∪[A155504(n+1), A016777(n)]` -/
def P6207834578870099899.Spec : Prop :=
  ∀ n, (P6207834578870099899.a n : ℤ) = A026225 (n + 1)

end A026225

/-! ## A026225.P17538334830566241602

`A026141(n+2)+A026140(n+1)`
-/

namespace A026225.P17538334830566241602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026141 (n + 2) + A026140 (n + 1)

end

end A026225.P17538334830566241602

namespace A026225

/-- `A026141(n+2)+A026140(n+1)` -/
def P17538334830566241602.Spec : Prop :=
  ∀ n, P17538334830566241602.a n = A026225 (n + 1)

theorem P17538334830566241602.correct : P17538334830566241602.Spec := by
  intro n
  simp only [A026225, Nat.add_sub_cancel, A026225.P17538334830566241602.a, A026225.P18152359124507789956.f1, A026225.P18152359124507789956.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026141, A026141.P6698721252845057780.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026225

/-! ## A026225.P5854360421583543990

`∪[A055041(n+1), A055047(n+1)]`
-/

namespace A026225.P5854360421583543990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026225.P5854360421583543990

namespace A026225

/-- `∪[A055041(n+1), A055047(n+1)]` -/
def P5854360421583543990.Spec : Prop :=
  ∀ n, (P5854360421583543990.a n : ℤ) = A026225 (n + 1)

end A026225

/-! ## A026225.P17911048925281334838

`∪[A055047(n+1), A155504(n+1)]`
-/

namespace A026225.P17911048925281334838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026225.P17911048925281334838

namespace A026225

/-- `∪[A055047(n+1), A155504(n+1)]` -/
def P17911048925281334838.Spec : Prop :=
  ∀ n, (P17911048925281334838.a n : ℤ) = A026225 (n + 1)

end A026225

/-! ## A026225.P13885817866356527396

`A026140(n+2)`
-/

namespace A026225.P13885817866356527396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 2)

end

end A026225.P13885817866356527396

namespace A026225

/-- `A026140(n+2)` -/
def P13885817866356527396.Spec : Prop :=
  ∀ n, P13885817866356527396.a n = A026225 (n + 1)

end A026225

/-! ## A026225.P12626057243716007184

`A026138(n+2)-1`
-/

namespace A026225.P12626057243716007184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 2) - 1

end

end A026225.P12626057243716007184

namespace A026225

/-- `A026138(n+2)-1` -/
def P12626057243716007184.Spec : Prop :=
  ∀ n, P12626057243716007184.a n = A026225 (n + 1)

end A026225

/-! ## A026225.P1636337507046448901

`floor(A026139(n+2)/2)`
-/

namespace A026225.P1636337507046448901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A026139 (n + 2) : ℚ) / 2⌋

end

end A026225.P1636337507046448901

namespace A026225

/-- `floor(A026139(n+2)/2)` -/
def P1636337507046448901.Spec : Prop :=
  ∀ n, P1636337507046448901.a n = A026225 (n + 1)

end A026225

/-! ## A026225.P17529624638967545330

`(A026224(n+2)-1)/3`
-/

namespace A026225.P17529624638967545330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026224 (n + 2) - 1 : ℚ) / 3

end

end A026225.P17529624638967545330

namespace A026225

/-- `(A026224(n+2)-1)/3` -/
def P17529624638967545330.Spec : Prop :=
  ∀ n, P17529624638967545330.a n = (A026225 (n + 1) : ℚ)

end A026225

/-! ## A026225.P14467072138586267944

`(A026228(n+2)-2)/3`
-/

namespace A026225.P14467072138586267944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026228 (n + 2) - 2 : ℚ) / 3

end

end A026225.P14467072138586267944

namespace A026225

/-- `(A026228(n+2)-2)/3` -/
def P14467072138586267944.Spec : Prop :=
  ∀ n, P14467072138586267944.a n = (A026225 (n + 1) : ℚ)

end A026225

/-! ## A026225.P15380385817055078794

`A026224(n+2)-A026139(n+2)`
-/

namespace A026225.P15380385817055078794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026224 (n + 2) - A026139 (n + 2)

end

end A026225.P15380385817055078794

namespace A026225

/-- `A026224(n+2)-A026139(n+2)` -/
def P15380385817055078794.Spec : Prop :=
  ∀ n, P15380385817055078794.a n = A026225 (n + 1)

end A026225

/-! ## A026225.P7825227876075039332

`A026139(n+2)+A026139(n+2)-A026228(n+2)`
-/

namespace A026225.P7825227876075039332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026139 (n + 2) + (A026139 (n + 2) - A026228 (n + 2))

end

end A026225.P7825227876075039332

namespace A026225

/-- `A026139(n+2)+A026139(n+2)-A026228(n+2)` -/
def P7825227876075039332.Spec : Prop :=
  ∀ n, P7825227876075039332.a n = A026225 (n + 1)

end A026225

/-! ## A026225.P16285990252629025036

`A026168(n+3)-2`
-/

namespace A026225.P16285990252629025036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 3) - 2

end

end A026225.P16285990252629025036

namespace A026225

/-- `A026168(n+3)-2` -/
def P16285990252629025036.Spec : Prop :=
  ∀ n, P16285990252629025036.a n = A026225 (n + 1)

end A026225

/-! ## A026225.P1867920201439374397

`∑[abs(Δ[A026168(n+2)])]`
-/

namespace A026225.P1867920201439374397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026225.P1867920201439374397

namespace A026225

/-- `∑[abs(Δ[A026168(n+2)])]` -/
def P1867920201439374397.Spec : Prop :=
  ∀ n, P1867920201439374397.a n = A026225 (n + 1)

end A026225

/-! ## A026225.P18208253225349826838

`A026169(n+3)/2-1`
-/

namespace A026225.P18208253225349826838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026169 (n + 3) : ℚ) / 2 - 1

end

end A026225.P18208253225349826838

namespace A026225

/-- `A026169(n+3)/2-1` -/
def P18208253225349826838.Spec : Prop :=
  ∀ n, P18208253225349826838.a n = (A026225 (n + 1) : ℚ)

end A026225

/-! ## A026225.P4796408912427233974

`A026228(n+2)-A026169(n+3)`
-/

namespace A026225.P4796408912427233974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026228 (n + 2) - A026169 (n + 3)

end

end A026225.P4796408912427233974

namespace A026225

/-- `A026228(n+2)-A026169(n+3)` -/
def P4796408912427233974.Spec : Prop :=
  ∀ n, P4796408912427233974.a n = A026225 (n + 1)

end A026225

/-!
# A026226: Numbers k such that A026136(k) = A026166(k).

The programs for A026226, the canonical program `A026226.P8103483919858282648` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026226 has offset 1).

The definition of A026226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026226.P8103483919858282648

`3*A026227(n+1)-2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026226

/-- `3*A026227(n+1)-2` -/
def P8103483919858282648.Spec : Prop :=
  ∀ n, P8103483919858282648.a n = A026226 (n + 1)

theorem P8103483919858282648.correct : P8103483919858282648.Spec := by
  intro n
  simp only [A026226, Nat.add_sub_cancel]

end A026226

/-! ## A026226.P17302973846844411800

`3*record[A026137(n+1)]-2`
-/

namespace A026226.P17302973846844411800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A026226.P17302973846844411800

namespace A026226

/-- `3*record[A026137(n+1)]-2` -/
def P17302973846844411800.Spec : Prop :=
  ∀ n, P17302973846844411800.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P11988841107093188701

`A285353(A026227(n+1))`
-/

namespace A026226.P11988841107093188701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285353 (A026227 (n + 1)).toNat

end

end A026226.P11988841107093188701

namespace A026226

/-- `A285353(A026227(n+1))` -/
def P11988841107093188701.Spec : Prop :=
  ∀ n, P11988841107093188701.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P17140376366795380899

`A016777(lt[A134028(n), 1])`
-/

namespace A026226.P17140376366795380899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026226.P17140376366795380899

namespace A026226

/-- `A016777(lt[A134028(n), 1])` -/
def P17140376366795380899.Spec : Prop :=
  ∀ n, P17140376366795380899.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P150365929076123648

`A016777(eq[0, A189673(n+1)])`
-/

namespace A026226.P150365929076123648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A026226.P150365929076123648

namespace A026226

/-- `A016777(eq[0, A189673(n+1)])` -/
def P150365929076123648.Spec : Prop :=
  ∀ n, P150365929076123648.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P5141573044414722921

`A016777(lt[A189673(n+1), 1])`
-/

namespace A026226.P5141573044414722921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A026226.P5141573044414722921

namespace A026226

/-- `A016777(lt[A189673(n+1), 1])` -/
def P5141573044414722921.Spec : Prop :=
  ∀ n, P5141573044414722921.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P9924421793679311037

`record[A014682(A026138(n+1))-1]`
-/

namespace A026226.P9924421793679311037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026138 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026226.P9924421793679311037

namespace A026226

/-- `record[A014682(A026138(n+1))-1]` -/
def P9924421793679311037.Spec : Prop :=
  ∀ n, P9924421793679311037.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P7987751091419923779

`A026227(A026227(n+1)+n)`
-/

namespace A026226.P7987751091419923779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (A026227 (n + 1) + (n : ℤ)).toNat

end

end A026226.P7987751091419923779

namespace A026226

/-- `A026227(A026227(n+1)+n)` -/
def P7987751091419923779.Spec : Prop :=
  ∀ n, P7987751091419923779.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P12486640513506457412

`record[A026232(n+1)^and(1, A049321(n))]`
-/

namespace A026226.P12486640513506457412
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026232 (n + 1) : ℚ) ^ (Int.land 1 (A049321 n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026226.P12486640513506457412

namespace A026226

/-- `record[A026232(n+1)^and(1, A049321(n))]` -/
def P12486640513506457412.Spec : Prop :=
  ∀ n, P12486640513506457412.a n = (A026226 (n + 1) : ℚ)

end A026226

/-! ## A026226.P16277178417959407012

`record[A026232(n+1)^log2(A133162(n+1))]`
-/

namespace A026226.P16277178417959407012
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026232 (n + 1) : ℝ) ^ (Real.logb 2 (A133162 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026226.P16277178417959407012

namespace A026226

/-- `record[A026232(n+1)^log2(A133162(n+1))]` -/
def P16277178417959407012.Spec : Prop :=
  ∀ n, P16277178417959407012.a n = (A026226 (n + 1) : ℝ)

end A026226

/-! ## A026226.P15324549465692011342

`A026179(A065475(n+1)+A026179(n+1))-1`
-/

namespace A026226.P15324549465692011342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (A065475 (n + 1) + A026179 (n + 1)).toNat - 1

end

end A026226.P15324549465692011342

namespace A026226

/-- `A026179(A065475(n+1)+A026179(n+1))-1` -/
def P15324549465692011342.Spec : Prop :=
  ∀ n, P15324549465692011342.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P1504977211242035575

`record[A026215(2*(n+1))-n]`
-/

namespace A026226.P1504977211242035575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (2 * (n + 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026226.P1504977211242035575

namespace A026226

/-- `record[A026215(2*(n+1))-n]` -/
def P1504977211242035575.Spec : Prop :=
  ∀ n, P1504977211242035575.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P9656924171650641876

`A168233(A026180(n+1))`
-/

namespace A026226.P9656924171650641876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A026180 (n + 1)).toNat

end

end A026226.P9656924171650641876

namespace A026226

/-- `A168233(A026180(n+1))` -/
def P9656924171650641876.Spec : Prop :=
  ∀ n, P9656924171650641876.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P11761540555263150053

`record[A026142(A026177(n+1))-n]`
-/

namespace A026226.P11761540555263150053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (A026177 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026226.P11761540555263150053

namespace A026226

/-- `record[A026142(A026177(n+1))-n]` -/
def P11761540555263150053.Spec : Prop :=
  ∀ n, P11761540555263150053.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P4865597603195797456

`record[A026137(or(1, 3*n+1))]`
-/

namespace A026226.P4865597603195797456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (Nat.lor 1 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026226.P4865597603195797456

namespace A026226

/-- `record[A026137(or(1, 3*n+1))]` -/
def P4865597603195797456.Spec : Prop :=
  ∀ n, P4865597603195797456.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P4006601198701922928

`record[A026136(2*n+1)-n]`
-/

namespace A026226.P4006601198701922928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026226.P4006601198701922928

namespace A026226

/-- `record[A026136(2*n+1)-n]` -/
def P4006601198701922928.Spec : Prop :=
  ∀ n, P4006601198701922928.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P8923263536648246453

`A001651(or(1, A026180(n+1)))`
-/

namespace A026226.P8923263536648246453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (Int.lor 1 (A026180 (n + 1))).toNat

end

end A026226.P8923263536648246453

namespace A026226

/-- `A001651(or(1, A026180(n+1)))` -/
def P8923263536648246453.Spec : Prop :=
  ∀ n, P8923263536648246453.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P11593191180589556211

`A026167(or(1, A026180(n+1)))`
-/

namespace A026226.P11593191180589556211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (Int.lor 1 (A026180 (n + 1))).toNat

end

end A026226.P11593191180589556211

namespace A026226

/-- `A026167(or(1, A026180(n+1)))` -/
def P11593191180589556211.Spec : Prop :=
  ∀ n, P11593191180589556211.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P8270336191764231580

`A026178(or(1, A026180(n+1)))`
-/

namespace A026226.P8270336191764231580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026178 (Int.lor 1 (A026180 (n + 1))).toNat

end

end A026226.P8270336191764231580

namespace A026226

/-- `A026178(or(1, A026180(n+1)))` -/
def P8270336191764231580.Spec : Prop :=
  ∀ n, P8270336191764231580.a n = A026226 (n + 1)

end A026226

/-! ## A026226.P4568690466284543262

`eq[A026166(n+1), A131380(n)]`
-/

namespace A026226.P4568690466284543262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A026226.P4568690466284543262

namespace A026226

/-- `eq[A026166(n+1), A131380(n)]` -/
def P4568690466284543262.Spec : Prop :=
  ∀ n, (P4568690466284543262.a n : ℤ) = A026226 (n + 1)

end A026226

/-!
# A026227: a(n) = (1/3)*(s(n) + 2), where s = A026226.

The programs for A026227, the canonical program `A026227.P12938836821948586418` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026227 has offset 1).

The definition of A026227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026227.P11564554979167076561

`(A026226(n+1)+2)/3`
-/

namespace A026227.P11564554979167076561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026226 (n + 1) + 2 : ℚ) / 3

end

end A026227.P11564554979167076561

namespace A026227

/-- `(A026226(n+1)+2)/3` -/
def P11564554979167076561.Spec : Prop :=
  ∀ n, P11564554979167076561.a n = (A026227 (n + 1) : ℚ)

theorem P11564554979167076561.correct : P11564554979167076561.Spec := by
  intro n
  simp only [A026227, Nat.add_sub_cancel, A026227.P11564554979167076561.a, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, A026226, A026226.P8103483919858282648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026227

/-! ## A026227.P13871082738741641032

`A026181(n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A026227.P13871082738741641032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A026181 (n + 1) + a (n - 1)

end

end A026227.P13871082738741641032

namespace A026227

/-- `A026181(n+1)+a(n-1)` -/
def P13871082738741641032.Spec : Prop :=
  ∀ n, P13871082738741641032.a n = A026227 (n + 1)

end A026227

/-! ## A026227.P12938836821948586418

`A026179(n+1)+n²%(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026227

/-- `A026179(n+1)+n²%(n+1)` -/
def P12938836821948586418.Spec : Prop :=
  ∀ n, P12938836821948586418.a n = A026227 (n + 1)

theorem P12938836821948586418.correct : P12938836821948586418.Spec := by
  intro n
  simp only [A026227, Nat.add_sub_cancel]

end A026227

/-! ## A026227.P9805019867598109620

`A057427(n)+A026179(n+1)`
-/

namespace A026227.P9805019867598109620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026179 (n + 1)

end

end A026227.P9805019867598109620

namespace A026227

/-- `A057427(n)+A026179(n+1)` -/
def P9805019867598109620.Spec : Prop :=
  ∀ n, P9805019867598109620.a n = A026227 (n + 1)

end A026227

/-! ## A026227.P9495734146115467641

`A026179(n+1)-A057428(n)`
-/

namespace A026227.P9495734146115467641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 1) - A057428 n

end

end A026227.P9495734146115467641

namespace A026227

/-- `A026179(n+1)-A057428(n)` -/
def P9495734146115467641.Spec : Prop :=
  ∀ n, P9495734146115467641.a n = A026227 (n + 1)

end A026227

/-! ## A026227.P5299331878262977705

`∪[A000156(n), A026232(n+1)]`
-/

namespace A026227.P5299331878262977705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P5299331878262977705

namespace A026227

/-- `∪[A000156(n), A026232(n+1)]` -/
def P5299331878262977705.Spec : Prop :=
  ∀ n, (P5299331878262977705.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P4733937834806560614

`∪[A000244(n), A026232(n+1)]`
-/

namespace A026227.P4733937834806560614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P4733937834806560614

namespace A026227

/-- `∪[A000244(n), A026232(n+1)]` -/
def P4733937834806560614.Spec : Prop :=
  ∀ n, (P4733937834806560614.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P15232486242383379915

`∪[A001334(n), A026232(n+1)]`
-/

namespace A026227.P15232486242383379915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P15232486242383379915

namespace A026227

/-- `∪[A001334(n), A026232(n+1)]` -/
def P15232486242383379915.Spec : Prop :=
  ∀ n, (P15232486242383379915.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P14888086209772105020

`∪[A001352(n), A026232(n+1)]`
-/

namespace A026227.P14888086209772105020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P14888086209772105020

namespace A026227

/-- `∪[A001352(n), A026232(n+1)]` -/
def P14888086209772105020.Spec : Prop :=
  ∀ n, (P14888086209772105020.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P8934884553409744434

`∪[A001668(n), A026232(n+1)]`
-/

namespace A026227.P8934884553409744434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P8934884553409744434

namespace A026227

/-- `∪[A001668(n), A026232(n+1)]` -/
def P8934884553409744434.Spec : Prop :=
  ∀ n, (P8934884553409744434.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P18366457668130927920

`∪[A026232(n+1), A001781(n)]`
-/

namespace A026227.P18366457668130927920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001781 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P18366457668130927920

namespace A026227

/-- `∪[A026232(n+1), A001781(n)]` -/
def P18366457668130927920.Spec : Prop :=
  ∀ n, (P18366457668130927920.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P4568754276353460237

`∪[A001800(n), A026232(n+1)]`
-/

namespace A026227.P4568754276353460237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P4568754276353460237

namespace A026227

/-- `∪[A001800(n), A026232(n+1)]` -/
def P4568754276353460237.Spec : Prop :=
  ∀ n, (P4568754276353460237.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P8506472185349945577

`∪[A002001(n), A026232(n+1)]`
-/

namespace A026227.P8506472185349945577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P8506472185349945577

namespace A026227

/-- `∪[A002001(n), A026232(n+1)]` -/
def P8506472185349945577.Spec : Prop :=
  ∀ n, (P8506472185349945577.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P13940161228306960148

`∪[A026232(n+1), A008340(n)]`
-/

namespace A026227.P13940161228306960148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P13940161228306960148

namespace A026227

/-- `∪[A026232(n+1), A008340(n)]` -/
def P13940161228306960148.Spec : Prop :=
  ∀ n, (P13940161228306960148.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P1791447496123551953

`∪[A026232(n+1), A008349(n)]`
-/

namespace A026227.P1791447496123551953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P1791447496123551953

namespace A026227

/-- `∪[A026232(n+1), A008349(n)]` -/
def P1791447496123551953.Spec : Prop :=
  ∀ n, (P1791447496123551953.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P14193863327239646258

`∪[A026232(n+1), A008358(n)]`
-/

namespace A026227.P14193863327239646258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008358 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P14193863327239646258

namespace A026227

/-- `∪[A026232(n+1), A008358(n)]` -/
def P14193863327239646258.Spec : Prop :=
  ∀ n, (P14193863327239646258.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P16428541252581029217

`∪[A026232(n+1), A008376(n)]`
-/

namespace A026227.P16428541252581029217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008376 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P16428541252581029217

namespace A026227

/-- `∪[A026232(n+1), A008376(n)]` -/
def P16428541252581029217.Spec : Prop :=
  ∀ n, (P16428541252581029217.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P745202283391954482

`∪[A026226(n+1), A008486(n)]`
-/

namespace A026227.P745202283391954482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P745202283391954482

namespace A026227

/-- `∪[A026226(n+1), A008486(n)]` -/
def P745202283391954482.Spec : Prop :=
  ∀ n, (P745202283391954482.a n : ℤ) = A026227 (n + 1)

end A026227

/-! ## A026227.P14844457888853872332

`∪[A026232(n+1), A027379(n)]`
-/

namespace A026227.P14844457888853872332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026227.P14844457888853872332

namespace A026227

/-- `∪[A026232(n+1), A027379(n)]` -/
def P14844457888853872332.Spec : Prop :=
  ∀ n, (P14844457888853872332.a n : ℤ) = A026227 (n + 1)

end A026227

/-!
# A026228: Numbers k such that A026166(k) = A026136(k) - 1.

The programs for A026228, the canonical program `A026228.P11632030350600125361` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026228 has offset 1).

The definition of A026228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026228.P16155980380139370936

`3*A026138(n+1)-1`
-/

namespace A026228.P16155980380139370936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026138 (n + 1) - 1

end

end A026228.P16155980380139370936

namespace A026228

/-- `3*A026138(n+1)-1` -/
def P16155980380139370936.Spec : Prop :=
  ∀ n, P16155980380139370936.a n = A026228 (n + 1)

theorem P16155980380139370936.correct : P16155980380139370936.Spec := by
  intro n
  simp only [A026228, Nat.add_sub_cancel, A026228.P16155980380139370936.a, A026228.P11632030350600125361.a, A026138, A026138.P14895961469128642459.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026228

/-! ## A026228.P11632030350600125361

`3*A026140(n+1)+2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026228

/-- `3*A026140(n+1)+2` -/
def P11632030350600125361.Spec : Prop :=
  ∀ n, P11632030350600125361.a n = A026228 (n + 1)

theorem P11632030350600125361.correct : P11632030350600125361.Spec := by
  intro n
  simp only [A026228, Nat.add_sub_cancel]

end A026228

/-! ## A026228.P17673057498236855955

`ceil(3*A026139(n+1)/2)`
-/

namespace A026228.P17673057498236855955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((A026139 (n + 1) : ℚ) / 2)⌉

end

end A026228.P17673057498236855955

namespace A026228

/-- `ceil(3*A026139(n+1)/2)` -/
def P17673057498236855955.Spec : Prop :=
  ∀ n, P17673057498236855955.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P6253218810102092361

`A057427(n)+A026224(n+1)`
-/

namespace A026228.P6253218810102092361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A026224 (n + 1)

end

end A026228.P6253218810102092361

namespace A026228

/-- `A057427(n)+A026224(n+1)` -/
def P6253218810102092361.Spec : Prop :=
  ∀ n, P6253218810102092361.a n = A026228 (n + 1)

theorem P6253218810102092361.correct : P6253218810102092361.Spec := by
  intro n
  simp only [A026228, Nat.add_sub_cancel, A026228.P6253218810102092361.a, A026228.P11632030350600125361.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026224, A026224.P5311099254236011223.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, A026227, A026227.P12938836821948586418.a, A057428, A057428.P2999489532230392221.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026228

/-! ## A026228.P10508994335721439692

`A026224(n+1)-A057428(n)`
-/

namespace A026228.P10508994335721439692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026224 (n + 1) - A057428 n

end

end A026228.P10508994335721439692

namespace A026228

/-- `A026224(n+1)-A057428(n)` -/
def P10508994335721439692.Spec : Prop :=
  ∀ n, P10508994335721439692.a n = A026228 (n + 1)

theorem P10508994335721439692.correct : P10508994335721439692.Spec := by
  intro n
  simp only [A026228, Nat.add_sub_cancel, A026228.P10508994335721439692.a, A026228.P11632030350600125361.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026224, A026224.P5311099254236011223.a, A057428, A057428.P2999489532230392221.a, A026227, A026227.P12938836821948586418.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026228

/-! ## A026228.P8902267843737429591

`A026139(n+1)+A026138(n+1)`
-/

namespace A026228.P8902267843737429591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026139 (n + 1) + A026138 (n + 1)

end

end A026228.P8902267843737429591

namespace A026228

/-- `A026139(n+1)+A026138(n+1)` -/
def P8902267843737429591.Spec : Prop :=
  ∀ n, P8902267843737429591.a n = A026228 (n + 1)

theorem P8902267843737429591.correct : P8902267843737429591.Spec := by
  intro n
  simp only [A026228, Nat.add_sub_cancel, A026228.P8902267843737429591.a, A026228.P11632030350600125361.a, A026138, A026138.P14895961469128642459.a, A026139, A026139.P8785309321780490600.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026228

/-! ## A026228.P7383140073394267425

`A026139(n+1)+A026140(n+1)+1`
-/

namespace A026228.P7383140073394267425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026139 (n + 1) + (A026140 (n + 1) + 1)

end

end A026228.P7383140073394267425

namespace A026228

/-- `A026139(n+1)+A026140(n+1)+1` -/
def P7383140073394267425.Spec : Prop :=
  ∀ n, P7383140073394267425.a n = A026228 (n + 1)

theorem P7383140073394267425.correct : P7383140073394267425.Spec := by
  intro n
  simp only [A026228, Nat.add_sub_cancel, A026228.P7383140073394267425.a, A026228.P11632030350600125361.a, A026139, A026139.P8785309321780490600.a, A026140, A026140.P6842947642768268072.f1, A026140.P6842947642768268072.a, A026227, A026227.P12938836821948586418.a, A026179, A026179.P13758716021262076600.f1, A026179.P13758716021262076600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026228

/-! ## A026228.P16847151209473148074

`A026224(n+1)+A000040(n+1)%2`
-/

namespace A026228.P16847151209473148074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026224 (n + 1) + Int.tmod (A000040 (n + 1)) 2

end

end A026228.P16847151209473148074

namespace A026228

/-- `A026224(n+1)+A000040(n+1)%2` -/
def P16847151209473148074.Spec : Prop :=
  ∀ n, P16847151209473148074.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P9780976808319366029

`3*A026168(n+2)-4`
-/

namespace A026228.P9780976808319366029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026168 (n + 2) - 4

end

end A026228.P9780976808319366029

namespace A026228

/-- `3*A026168(n+2)-4` -/
def P9780976808319366029.Spec : Prop :=
  ∀ n, P9780976808319366029.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P13075213089565372451

`A026169(n+2)+A026140(n+1)`
-/

namespace A026228.P13075213089565372451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026169 (n + 2) + A026140 (n + 1)

end

end A026228.P13075213089565372451

namespace A026228

/-- `A026169(n+2)+A026140(n+1)` -/
def P13075213089565372451.Spec : Prop :=
  ∀ n, P13075213089565372451.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P8777975543698349683

`3*record[A026182(n+1)]-1`
-/

namespace A026228.P8777975543698349683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A026228.P8777975543698349683

namespace A026228

/-- `3*record[A026182(n+1)]-1` -/
def P8777975543698349683.Spec : Prop :=
  ∀ n, P8777975543698349683.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P18017909032668027380

`A016789(A026140(n+1))`
-/

namespace A026228.P18017909032668027380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A026140 (n + 1)).toNat

end

end A026228.P18017909032668027380

namespace A026228

/-- `A016789(A026140(n+1))` -/
def P18017909032668027380.Spec : Prop :=
  ∀ n, P18017909032668027380.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P12195549418954572608

`record[A026136(n+1)+1+n]`
-/

namespace A026228.P12195549418954572608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026228.P12195549418954572608

namespace A026228

/-- `record[A026136(n+1)+1+n]` -/
def P12195549418954572608.Spec : Prop :=
  ∀ n, P12195549418954572608.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P17226290880550037738

`A014682(record[A026136(n+1)])`
-/

namespace A026228.P17226290880550037738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026228.P17226290880550037738

namespace A026228

/-- `A014682(record[A026136(n+1)])` -/
def P17226290880550037738.Spec : Prop :=
  ∀ n, P17226290880550037738.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P10325214375402182992

`A189634(A026138(n+1))-1`
-/

namespace A026228.P10325214375402182992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189634 (A026138 (n + 1)).toNat - 1

end

end A026228.P10325214375402182992

namespace A026228

/-- `A189634(A026138(n+1))-1` -/
def P10325214375402182992.Spec : Prop :=
  ∀ n, P10325214375402182992.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P9743134449594563879

`A008486(A026140(n+1)+1)-1`
-/

namespace A026228.P9743134449594563879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A026140 (n + 1) + 1).toNat - 1

end

end A026228.P9743134449594563879

namespace A026228

/-- `A008486(A026140(n+1)+1)-1` -/
def P9743134449594563879.Spec : Prop :=
  ∀ n, P9743134449594563879.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P9863702298771877650

`record[A028310(n)+A026136(A028310(n))]`
-/

namespace A026228.P9863702298771877650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A026136 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026228.P9863702298771877650

namespace A026228

/-- `record[A028310(n)+A026136(A028310(n))]` -/
def P9863702298771877650.Spec : Prop :=
  ∀ n, P9863702298771877650.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P6036605361889241530

`record[A026166(n+2)+n]`
-/

namespace A026228.P6036605361889241530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026228.P6036605361889241530

namespace A026228

/-- `record[A026166(n+2)+n]` -/
def P6036605361889241530.Spec : Prop :=
  ∀ n, P6036605361889241530.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P18319431553390604407

`A080846(A026179(n+1))+A026224(n+1)`
-/

namespace A026228.P18319431553390604407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A026179 (n + 1)).toNat + A026224 (n + 1)

end

end A026228.P18319431553390604407

namespace A026228

/-- `A080846(A026179(n+1))+A026224(n+1)` -/
def P18319431553390604407.Spec : Prop :=
  ∀ n, P18319431553390604407.a n = A026228 (n + 1)

end A026228

/-! ## A026228.P9768721149004113281

`record[A014682(A026137(n+1))]`
-/

namespace A026228.P9768721149004113281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026137 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026228.P9768721149004113281

namespace A026228

/-- `record[A014682(A026137(n+1))]` -/
def P9768721149004113281.Spec : Prop :=
  ∀ n, P9768721149004113281.a n = A026228 (n + 1)

end A026228

/-!
# A026229: Numbers k such that A026166(k) = A026142(k) - 2.

The programs for A026229, there is no canonical definition to state claims against.
-/

/-! ## A026229.P13994576761869351596

`A026145(n+1)+A026144(n+1)`
-/

namespace A026229.P13994576761869351596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026145 (n + 1) + A026144 (n + 1)

end

end A026229.P13994576761869351596

/-! ## A026229.P7116994286926607001

`A026144(n+1)*A157532(n+1)`
-/

namespace A026229.P7116994286926607001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 1) * A157532 (n + 1)

end

end A026229.P7116994286926607001

/-! ## A026229.P17195504652701368452

`2*A026145(n+1)-comp[A026223(n+1)]`
-/

namespace A026229.P17195504652701368452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026145 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A026229.P17195504652701368452

/-! ## A026229.P14531785558668091178

`record[A026142(n+1)+1+n]`
-/

namespace A026229.P14531785558668091178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026229.P14531785558668091178

/-! ## A026229.P18392942163820009523

`A026223(A026145(n+1)-n)+1`
-/

namespace A026229.P18392942163820009523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (A026145 (n + 1) - (n : ℤ)).toNat + 1

end

end A026229.P18392942163820009523

/-! ## A026229.P1079245498116180191

`A026230(A026144(n+1)+n)`
-/

namespace A026229.P1079245498116180191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (A026144 (n + 1) + (n : ℤ)).toNat

end

end A026229.P1079245498116180191

/-! ## A026229.P17893419880077219896

`A026144(A026144(n+1)+1+n)`
-/

namespace A026229.P17893419880077219896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (A026144 (n + 1) + 1 + (n : ℤ)).toNat

end

end A026229.P17893419880077219896

/-! ## A026229.P13180414611622270736

`∩[A026168(n+1), A026230(n+1)]`
-/

namespace A026229.P13180414611622270736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026229.P13180414611622270736

/-! ## A026229.P9787318491382028919

`∩[A026230(n+1), A047244(n+1)]`
-/

namespace A026229.P9787318491382028919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026229.P9787318491382028919

/-! ## A026229.P15192984166416817771

`∩[A026230(n+1), A189708(n+1)]`
-/

namespace A026229.P15192984166416817771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026229.P15192984166416817771

/-! ## A026229.P1982753292132498555

`∩[A026138(n+1)+1, A026230(n+1)]`
-/

namespace A026229.P1982753292132498555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026229.P1982753292132498555

/-! ## A026229.P1523560267198667761

`A026230(∪[A026230(n+1), A001249(n)]+n)`
-/

namespace A026229.P1523560267198667761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + n)

end

end A026229.P1523560267198667761

/-! ## A026229.P6498251256026994955

`A026230(∪[A026230(n+1), A003215(n)]+n)`
-/

namespace A026229.P6498251256026994955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + n)

end

end A026229.P6498251256026994955

/-! ## A026229.P65622865056960538

`A026230(∪[A026230(n+1), A005892(n)]+n)`
-/

namespace A026229.P65622865056960538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005892 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + n)

end

end A026229.P65622865056960538

/-! ## A026229.P9778596721215884542

`A026230(∪[A026230(n+1), A006001(n)]+n)`
-/

namespace A026229.P9778596721215884542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006001 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + n)

end

end A026229.P9778596721215884542

/-! ## A026229.P17652388576300802373

`A007494(A026145(n+1))`
-/

namespace A026229.P17652388576300802373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A026145 (n + 1)).toNat

end

end A026229.P17652388576300802373

/-! ## A026229.P17960917024122941712

`A007494(record[A026142(n+1)])`
-/

namespace A026229.P17960917024122941712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026229.P17960917024122941712

/-! ## A026229.P10760489582780680706

`∩[A026144(n+1), A007494(n)]`
-/

namespace A026229.P10760489582780680706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026229.P10760489582780680706

/-!
# A026230: a(n) = (1/3)*s(n+1), where s = A026229.

The programs for A026230, there is no canonical definition to state claims against.
-/

/-! ## A026230.P8284803798738001193

`comp[A026223(n+1)-1]+1`
-/

namespace A026230.P8284803798738001193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A026230.P8284803798738001193

/-! ## A026230.P8393994352021360593

`A026146(n+2)+a(n-1)` with `a(0)=2`
-/

namespace A026230.P8393994352021360593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A026146 (n + 2) + a (n - 1)

end

end A026230.P8393994352021360593

/-! ## A026230.P8355030551486419303

`A026144(n+2)`
-/

namespace A026230.P8355030551486419303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (n + 2)

end

end A026230.P8355030551486419303

/-! ## A026230.P15273319496889014041

`A026145(n+2)/2`
-/

namespace A026230.P15273319496889014041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026145 (n + 2) : ℚ) / 2

end

end A026230.P15273319496889014041

/-! ## A026230.P18053200767774231617

`A026229(n+2)/3`
-/

namespace A026230.P18053200767774231617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026229 (n + 2) : ℚ) / 3

end

end A026230.P18053200767774231617

/-! ## A026230.P5412511143345208718

`A026229(n+2)-A026145(n+2)`
-/

namespace A026230.P5412511143345208718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 2) - A026145 (n + 2)

end

end A026230.P5412511143345208718

/-! ## A026230.P11461046900361915800

`record[A026144(A014682(A004277(n)))]`
-/

namespace A026230.P11461046900361915800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (A014682 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026230.P11461046900361915800

/-! ## A026230.P15612205626225378253

`record[A026190(n+1)]`
-/

namespace A026230.P15612205626225378253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026230.P15612205626225378253

/-! ## A026230.P14879548683002559423

`record[A026142(n+2)/2]`
-/

namespace A026230.P14879548683002559423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026142 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026230.P14879548683002559423

/-! ## A026230.P11762952657207685703

`lt[1, Δ[A026142(n+1)]]+2`
-/

namespace A026230.P11762952657207685703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A026230.P11762952657207685703

/-! ## A026230.P6292669049330674626

`lt[Δ[A026191(n+1)], 2]+2`
-/

namespace A026230.P6292669049330674626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026191 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A026230.P6292669049330674626

/-! ## A026230.P674006080056801666

`eq[2*n, A026142(abs(1-n)+1)]`
-/

namespace A026230.P674006080056801666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026230.P674006080056801666

/-! ## A026230.P716699881926804732

`A014682(record[A026142(n+2)])`
-/

namespace A026230.P716699881926804732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026230.P716699881926804732

/-! ## A026230.P17269952570149583676

`A026229(n+2)-record[A026142(n+2)]`
-/

namespace A026230.P17269952570149583676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026230.P17269952570149583676

/-! ## A026230.P6937545176578672112

`lt[A026191(n+1), A026195(n+1)]+1`
-/

namespace A026230.P6937545176578672112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A026230.P6937545176578672112

/-! ## A026230.P8221818852846734809

`lt[A002517(n), 2*n]`
-/

namespace A026230.P8221818852846734809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026230.P8221818852846734809

/-! ## A026230.P6797643093434578771

`lt[A002517(n)², A005843(n)²]`
-/

namespace A026230.P6797643093434578771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002517 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026230.P6797643093434578771

/-! ## A026230.P11240478234615578600

`record[A026144(A080513(A004442(n)))]`
-/

namespace A026230.P11240478234615578600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026144 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026230.P11240478234615578600

/-! ## A026230.P9280252703940238883

`A001281(A026145(n+2))`
-/

namespace A026230.P9280252703940238883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A026145 (n + 2)).toNat

end

end A026230.P9280252703940238883

/-! ## A026230.P15526107270804864709

`A001281(record[A026142(n+2)])`
-/

namespace A026230.P15526107270804864709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026142 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026230.P15526107270804864709

/-!
# A026231: Numbers k such that A026166(k) = A026142(k) + 1.

The programs for A026231, the canonical program `A026231.P13603207205108125394` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026231 has offset 1).

The definition of A026231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026231.P13603207205108125394

`3*A026232(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026231

/-- `3*A026232(n+1)-1` -/
def P13603207205108125394.Spec : Prop :=
  ∀ n, P13603207205108125394.a n = A026231 (n + 1)

theorem P13603207205108125394.correct : P13603207205108125394.Spec := by
  intro n
  simp only [A026231, Nat.add_sub_cancel]

end A026231

/-! ## A026231.P12434606474180928099

`A026226(n+2)+1`
-/

namespace A026231.P12434606474180928099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026226 (n + 2) + 1

end

end A026231.P12434606474180928099

namespace A026231

/-- `A026226(n+2)+1` -/
def P12434606474180928099.Spec : Prop :=
  ∀ n, P12434606474180928099.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P9735375057231507291

`3*A026179(n+2)+2`
-/

namespace A026231.P9735375057231507291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026179 (n + 2) + 2

end

end A026231.P9735375057231507291

namespace A026231

/-- `3*A026179(n+2)+2` -/
def P9735375057231507291.Spec : Prop :=
  ∀ n, P9735375057231507291.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P6031521558742892182

`3*A026227(n+2)-1`
-/

namespace A026231.P6031521558742892182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A026227 (n + 2) - 1

end

end A026231.P6031521558742892182

namespace A026231

/-- `3*A026227(n+2)-1` -/
def P6031521558742892182.Spec : Prop :=
  ∀ n, P6031521558742892182.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P3829968298089343893

`A026179(n+2)+A026180(n+2)+2`
-/

namespace A026231.P3829968298089343893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2) + (A026180 (n + 2) + 2)

end

end A026231.P3829968298089343893

namespace A026231

/-- `A026179(n+2)+A026180(n+2)+2` -/
def P3829968298089343893.Spec : Prop :=
  ∀ n, P3829968298089343893.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P15071884204044877454

`Δ[∑[3*record[A026137(n+1)]]-n]`
-/

namespace A026231.P15071884204044877454
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026231.P15071884204044877454

namespace A026231

/-- `Δ[∑[3*record[A026137(n+1)]]-n]` -/
def P15071884204044877454.Spec : Prop :=
  ∀ n, P15071884204044877454.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P18340852694267707109

`A061570(A026232(n+1))`
-/

namespace A026231.P18340852694267707109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (A026232 (n + 1)).toNat

end

end A026231.P18340852694267707109

namespace A026231

/-- `A061570(A026232(n+1))` -/
def P18340852694267707109.Spec : Prop :=
  ∀ n, P18340852694267707109.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P719692974129588605

`A016789(A026179(n+2))`
-/

namespace A026231.P719692974129588605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A026179 (n + 2)).toNat

end

end A026231.P719692974129588605

namespace A026231

/-- `A016789(A026179(n+2))` -/
def P719692974129588605.Spec : Prop :=
  ∀ n, P719692974129588605.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P12352245467933528975

`A061570(A026227(n+2))`
-/

namespace A026231.P12352245467933528975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061570 (A026227 (n + 2)).toNat

end

end A026231.P12352245467933528975

namespace A026231

/-- `A061570(A026227(n+2))` -/
def P12352245467933528975.Spec : Prop :=
  ∀ n, P12352245467933528975.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P18044143848166857264

`A008486(record[A026214(n+1)])+2`
-/

namespace A026231.P18044143848166857264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A026231.P18044143848166857264

namespace A026231

/-- `A008486(record[A026214(n+1)])+2` -/
def P18044143848166857264.Spec : Prop :=
  ∀ n, P18044143848166857264.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P4873888169205912219

`3*(lt[A062756(n+1), A062756(n)]+1)+2`
-/

namespace A026231.P4873888169205912219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) + 2

end

end A026231.P4873888169205912219

namespace A026231

/-- `3*(lt[A062756(n+1), A062756(n)]+1)+2` -/
def P4873888169205912219.Spec : Prop :=
  ∀ n, (P4873888169205912219.a n : ℤ) = A026231 (n + 1)

end A026231

/-! ## A026231.P18430515495806337980

`record[A014682(A026138(n+4))]`
-/

namespace A026231.P18430515495806337980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026138 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026231.P18430515495806337980

namespace A026231

/-- `record[A014682(A026138(n+4))]` -/
def P18430515495806337980.Spec : Prop :=
  ∀ n, P18430515495806337980.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P16536744475883397335

`A026232(A026232(n+1)+n)+1`
-/

namespace A026231.P16536744475883397335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026232 (A026232 (n + 1) + (n : ℤ)).toNat + 1

end

end A026231.P16536744475883397335

namespace A026231

/-- `A026232(A026232(n+1)+n)+1` -/
def P16536744475883397335.Spec : Prop :=
  ∀ n, P16536744475883397335.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P5093649795634790954

`A026179(A026227(n+2)+n+2)`
-/

namespace A026231.P5093649795634790954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (A026227 (n + 2) + (n + 2 : ℤ)).toNat

end

end A026231.P5093649795634790954

namespace A026231

/-- `A026179(A026227(n+2)+n+2)` -/
def P5093649795634790954.Spec : Prop :=
  ∀ n, P5093649795634790954.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P10968840872139640313

`A026179(A026179(n+2)+n+3)`
-/

namespace A026231.P10968840872139640313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (A026179 (n + 2) + (n + 3 : ℤ)).toNat

end

end A026231.P10968840872139640313

namespace A026231

/-- `A026179(A026179(n+2)+n+3)` -/
def P10968840872139640313.Spec : Prop :=
  ∀ n, P10968840872139640313.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P11420005991536539024

`∩[A026223(n+1), A026227(n+1)+1]`
-/

namespace A026231.P11420005991536539024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A026231.P11420005991536539024

namespace A026231

/-- `∩[A026223(n+1), A026227(n+1)+1]` -/
def P11420005991536539024.Spec : Prop :=
  ∀ n, (P11420005991536539024.a n : ℤ) = A026231 (n + 1)

end A026231

/-! ## A026231.P261770106327011676

`record[A026215(A026177(n+2))-n]`
-/

namespace A026231.P261770106327011676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (A026177 (n + 2)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026231.P261770106327011676

namespace A026231

/-- `record[A026215(A026177(n+2))-n]` -/
def P261770106327011676.Spec : Prop :=
  ∀ n, P261770106327011676.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P15550431562135794964

`A168233(A026180(n+2))+1`
-/

namespace A026231.P15550431562135794964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A026180 (n + 2)).toNat + 1

end

end A026231.P15550431562135794964

namespace A026231

/-- `A168233(A026180(n+2))+1` -/
def P15550431562135794964.Spec : Prop :=
  ∀ n, P15550431562135794964.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P994057725374395796

`record[A026167(2*(n+3))]`
-/

namespace A026231.P994057725374395796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026231.P994057725374395796

namespace A026231

/-- `record[A026167(2*(n+3))]` -/
def P994057725374395796.Spec : Prop :=
  ∀ n, P994057725374395796.a n = A026231 (n + 1)

end A026231

/-! ## A026231.P10817517832353923249

`A114119(A026180(n+2))`
-/

namespace A026231.P10817517832353923249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (A026180 (n + 2)).toNat

end

end A026231.P10817517832353923249

namespace A026231

/-- `A114119(A026180(n+2))` -/
def P10817517832353923249.Spec : Prop :=
  ∀ n, P10817517832353923249.a n = A026231 (n + 1)

end A026231

/-!
# A026232: a(n) = (1/3)*(s(n) + 1), where s = A026231.

The programs for A026232, the canonical program `A026232.P6117915654880813712` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026232 has offset 1).

The definition of A026232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026232.P7551933625963890800

`ceil(A026231(n+1)/3)`
-/

namespace A026232.P7551933625963890800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026231 (n + 1) : ℚ) / 3⌉

end

end A026232.P7551933625963890800

namespace A026232

/-- `ceil(A026231(n+1)/3)` -/
def P7551933625963890800.Spec : Prop :=
  ∀ n, P7551933625963890800.a n = A026232 (n + 1)

end A026232

/-! ## A026232.P7618967279581046741

`A026181(n+2)+a(n-1)` with `a(0)=3`
-/

namespace A026232.P7618967279581046741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A026181 (n + 2) + a (n - 1)

end

end A026232.P7618967279581046741

namespace A026232

/-- `A026181(n+2)+a(n-1)` -/
def P7618967279581046741.Spec : Prop :=
  ∀ n, P7618967279581046741.a n = A026232 (n + 1)

end A026232

/-! ## A026232.P11219729639701012561

`lt[A004488(n+1), A004488(n)]+2`
-/

namespace A026232.P11219729639701012561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A026232.P11219729639701012561

namespace A026232

/-- `lt[A004488(n+1), A004488(n)]+2` -/
def P11219729639701012561.Spec : Prop :=
  ∀ n, (P11219729639701012561.a n : ℤ) = A026232 (n + 1)

end A026232

/-! ## A026232.P6117915654880813712

`∪[A008486(n+1), A026226(n+2)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026232

/-- `∪[A008486(n+1), A026226(n+2)]` -/
def P6117915654880813712.Spec : Prop :=
  ∀ n, (P6117915654880813712.a n : ℤ) = A026232 (n + 1)

theorem P6117915654880813712.correct : P6117915654880813712.Spec := by
  intro n
  simp only [A026232, Nat.add_sub_cancel]

end A026232

/-! ## A026232.P2058746327946298642

`A026227(n+2)`
-/

namespace A026232.P2058746327946298642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026227 (n + 2)

end

end A026232.P2058746327946298642

namespace A026232

/-- `A026227(n+2)` -/
def P2058746327946298642.Spec : Prop :=
  ∀ n, P2058746327946298642.a n = A026232 (n + 1)

end A026232

/-! ## A026232.P5528934072330920056

`A026179(n+2)+1`
-/

namespace A026232.P5528934072330920056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026179 (n + 2) + 1

end

end A026232.P5528934072330920056

namespace A026232

/-- `A026179(n+2)+1` -/
def P5528934072330920056.Spec : Prop :=
  ∀ n, P5528934072330920056.a n = A026232 (n + 1)

end A026232

/-! ## A026232.P14812648650064214941

`A026180(n+2)/2+1`
-/

namespace A026232.P14812648650064214941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026180 (n + 2) : ℚ) / 2 + 1

end

end A026232.P14812648650064214941

namespace A026232

/-- `A026180(n+2)/2+1` -/
def P14812648650064214941.Spec : Prop :=
  ∀ n, P14812648650064214941.a n = (A026232 (n + 1) : ℚ)

end A026232

/-! ## A026232.P954228094297941817

`(A026226(n+2)+2)/3`
-/

namespace A026232.P954228094297941817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026226 (n + 2) + 2 : ℚ) / 3

end

end A026232.P954228094297941817

namespace A026232

/-- `(A026226(n+2)+2)/3` -/
def P954228094297941817.Spec : Prop :=
  ∀ n, P954228094297941817.a n = (A026232 (n + 1) : ℚ)

end A026232

/-! ## A026232.P15667311149946872787

`lt[A327252(n+1), 0]+2`
-/

namespace A026232.P15667311149946872787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A026232.P15667311149946872787

namespace A026232

/-- `lt[A327252(n+1), 0]+2` -/
def P15667311149946872787.Spec : Prop :=
  ∀ n, (P15667311149946872787.a n : ℤ) = A026232 (n + 1)

end A026232

/-! ## A026232.P2847201940244650252

`record[A026214(n+1)+1]`
-/

namespace A026232.P2847201940244650252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026232.P2847201940244650252

namespace A026232

/-- `record[A026214(n+1)+1]` -/
def P2847201940244650252.Spec : Prop :=
  ∀ n, P2847201940244650252.a n = A026232 (n + 1)

end A026232

/-! ## A026232.P12094402550520189059

`record[A026137(n+2)]`
-/

namespace A026232.P12094402550520189059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026137 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026232.P12094402550520189059

namespace A026232

/-- `record[A026137(n+2)]` -/
def P12094402550520189059.Spec : Prop :=
  ∀ n, P12094402550520189059.a n = A026232 (n + 1)

end A026232

/-! ## A026232.P16231734885356793487

`record[A026167(n+3)-1]`
-/

namespace A026232.P16231734885356793487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026167 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026232.P16231734885356793487

namespace A026232

/-- `record[A026167(n+3)-1]` -/
def P16231734885356793487.Spec : Prop :=
  ∀ n, P16231734885356793487.a n = A026232 (n + 1)

end A026232

/-! ## A026232.P2190076208728311009

`lt[A113261(n), 0]+1`
-/

namespace A026232.P2190076208728311009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113261 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A026232.P2190076208728311009

namespace A026232

/-- `lt[A113261(n), 0]+1` -/
def P2190076208728311009.Spec : Prop :=
  ∀ n, (P2190076208728311009.a n : ℤ) = A026232 (n + 1)

end A026232

/-! ## A026232.P7733325945022519603

`lt[1, Δ[A327252(n)²]]`
-/

namespace A026232.P7733325945022519603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A026232.P7733325945022519603

namespace A026232

/-- `lt[1, Δ[A327252(n)²]]` -/
def P7733325945022519603.Spec : Prop :=
  ∀ n, (P7733325945022519603.a n : ℤ) = A026232 (n + 1)

end A026232

/-! ## A026232.P12998769861589853316

`lt[Δ[A062756(n)], 0]+2`
-/

namespace A026232.P12998769861589853316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A026232.P12998769861589853316

namespace A026232

/-- `lt[Δ[A062756(n)], 0]+2` -/
def P12998769861589853316.Spec : Prop :=
  ∀ n, (P12998769861589853316.a n : ℤ) = A026232 (n + 1)

end A026232

/-! ## A026232.P3302743277758081966

`eq[1, A189640(n+1)]+1`
-/

namespace A026232.P3302743277758081966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A026232.P3302743277758081966

namespace A026232

/-- `eq[1, A189640(n+1)]+1` -/
def P3302743277758081966.Spec : Prop :=
  ∀ n, (P3302743277758081966.a n : ℤ) = A026232 (n + 1)

end A026232

/-! ## A026232.P3206646024401642187

`eq[1, A080846(n+1)]+2`
-/

namespace A026232.P3206646024401642187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A026232.P3206646024401642187

namespace A026232

/-- `eq[1, A080846(n+1)]+2` -/
def P3206646024401642187.Spec : Prop :=
  ∀ n, (P3206646024401642187.a n : ℤ) = A026232 (n + 1)

end A026232

/-! ## A026232.P8785063490013913125

`lt[A103440(n+1), 0]+2`
-/

namespace A026232.P8785063490013913125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103440 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A026232.P8785063490013913125

namespace A026232

/-- `lt[A103440(n+1), 0]+2` -/
def P8785063490013913125.Spec : Prop :=
  ∀ n, (P8785063490013913125.a n : ℤ) = A026232 (n + 1)

end A026232

/-!
# A026233: a(n) = j if n is the j-th prime, else a(n) = k if n is the k-th nonprime.

The programs for A026233, the canonical program `A026233.P9940021653241192436` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026233 has offset 1).

The definition of A026233 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A239968, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026233.P9940021653241192436

`A049084(n+1)+A239968(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026233

/-- `A049084(n+1)+A239968(n+1)` -/
def P9940021653241192436.Spec : Prop :=
  ∀ n, P9940021653241192436.a n = A026233 (n + 1)

theorem P9940021653241192436.correct : P9940021653241192436.Spec := by
  intro n
  simp only [A026233, Nat.add_sub_cancel]

end A026233

/-! ## A026233.P4466832593843123973

`ceil(A073898(n+1)/2)`
-/

namespace A026233.P4466832593843123973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A073898 (n + 1) : ℚ) / 2⌉

end

end A026233.P4466832593843123973

namespace A026233

/-- `ceil(A073898(n+1)/2)` -/
def P4466832593843123973.Spec : Prop :=
  ∀ n, P4466832593843123973.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P5949021076525341706

`1-abs(A063084(n+1))+n`
-/

namespace A026233.P5949021076525341706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A063084 (n + 1)| + (n : ℤ)

end

end A026233.P5949021076525341706

namespace A026233

/-- `1-abs(A063084(n+1))+n` -/
def P5949021076525341706.Spec : Prop :=
  ∀ n, P5949021076525341706.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P17099893551159966877

`A066136(n+1)+A005171(n+1)`
-/

namespace A026233.P17099893551159966877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 1) + A005171 (n + 1)

end

end A026233.P17099893551159966877

namespace A026233

/-- `A066136(n+1)+A005171(n+1)` -/
def P17099893551159966877.Spec : Prop :=
  ∀ n, P17099893551159966877.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P16248265801470270738

`A073898(n+1)-A066136(n+1)`
-/

namespace A026233.P16248265801470270738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (n + 1) - A066136 (n + 1)

end

end A026233.P16248265801470270738

namespace A026233

/-- `A073898(n+1)-A066136(n+1)` -/
def P16248265801470270738.Spec : Prop :=
  ∀ n, P16248265801470270738.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P17750670174065772691

`abs(A061397(n+1)-A062298(n+1))`
-/

namespace A026233.P17750670174065772691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061397 (n + 1) - A062298 (n + 1)|

end

end A026233.P17750670174065772691

namespace A026233

/-- `abs(A061397(n+1)-A062298(n+1))` -/
def P17750670174065772691.Spec : Prop :=
  ∀ n, P17750670174065772691.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P1268432256685542165

`A066136(n+1)+1-A010051(n+1)`
-/

namespace A026233.P1268432256685542165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 1) + (1 - A010051 (n + 1))

end

end A026233.P1268432256685542165

namespace A026233

/-- `A066136(n+1)+1-A010051(n+1)` -/
def P1268432256685542165.Spec : Prop :=
  ∀ n, P1268432256685542165.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P2530256931803140794

`abs(A061397(n+1)-(∑[A066247(n+1)]+1))`
-/

namespace A026233.P2530256931803140794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061397 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A026233.P2530256931803140794

namespace A026233

/-- `abs(A061397(n+1)-(∑[A066247(n+1)]+1))` -/
def P2530256931803140794.Spec : Prop :=
  ∀ n, P2530256931803140794.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P12708297113398593369

`abs(∑[1-A010051(n+1)]-A061397(n+1))`
-/

namespace A026233.P12708297113398593369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A061397 (n + 1)|

end

end A026233.P12708297113398593369

namespace A026233

/-- `abs(∑[1-A010051(n+1)]-A061397(n+1))` -/
def P12708297113398593369.Spec : Prop :=
  ∀ n, P12708297113398593369.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P15393954961993334024

`abs(n+1-(A061397(n+1)+A000720(n+1)))`
-/

namespace A026233.P15393954961993334024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - (A061397 (n + 1) + A000720 (n + 1))|

end

end A026233.P15393954961993334024

namespace A026233

/-- `abs(n+1-(A061397(n+1)+A000720(n+1)))` -/
def P15393954961993334024.Spec : Prop :=
  ∀ n, P15393954961993334024.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P4672841030435636054

`A005171(n+1)+A066246(n+1)+A049084(n+1)`
-/

namespace A026233.P4672841030435636054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (A066246 (n + 1) + A049084 (n + 1))

end

end A026233.P4672841030435636054

namespace A026233

/-- `A005171(n+1)+A066246(n+1)+A049084(n+1)` -/
def P4672841030435636054.Spec : Prop :=
  ∀ n, P4672841030435636054.a n = A026233 (n + 1)

theorem P4672841030435636054.correct : P4672841030435636054.Spec := by
  intro n
  simp only [A026233, Nat.add_sub_cancel, A026233.P4672841030435636054.a, A026233.P9940021653241192436.a, A005171, A005171.P15860856746370777121.a, A049084, A049084.P10934933317972537770.a, A066246, A066246.P11504023463901313022.a, A239968, A239968.P9247355313622841393.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A026233

/-! ## A026233.P268269558118930095

`A066136(n+1)+A239968(n+1)-A066246(n+1)`
-/

namespace A026233.P268269558118930095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 1) + (A239968 (n + 1) - A066246 (n + 1))

end

end A026233.P268269558118930095

namespace A026233

/-- `A066136(n+1)+A239968(n+1)-A066246(n+1)` -/
def P268269558118930095.Spec : Prop :=
  ∀ n, P268269558118930095.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P2007816190634113382

`A239968(n+1)+A000720(n+1)*A010051(n+1)`
-/

namespace A026233.P2007816190634113382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (n + 1) + A000720 (n + 1) * A010051 (n + 1)

end

end A026233.P2007816190634113382

namespace A026233

/-- `A239968(n+1)+A000720(n+1)*A010051(n+1)` -/
def P2007816190634113382.Spec : Prop :=
  ∀ n, P2007816190634113382.a n = A026233 (n + 1)

theorem P2007816190634113382.correct : P2007816190634113382.Spec := by
  intro n
  simp only [A026233, Nat.add_sub_cancel, A026233.P2007816190634113382.a, A026233.P9940021653241192436.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A049084, A049084.P10934933317972537770.a, A239968, A239968.P9247355313622841393.a, A005171, A005171.P15860856746370777121.a, A062298, A062298.P8226643735375377344.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A026233

/-! ## A026233.P9190997404004056244

`A062298(n+1)-A010051(n+1)*A097454(n+1)`
-/

namespace A026233.P9190997404004056244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A010051 (n + 1) * A097454 (n + 1)

end

end A026233.P9190997404004056244

namespace A026233

/-- `A062298(n+1)-A010051(n+1)*A097454(n+1)` -/
def P9190997404004056244.Spec : Prop :=
  ∀ n, P9190997404004056244.a n = A026233 (n + 1)

theorem P9190997404004056244.correct : P9190997404004056244.Spec := by
  intro n
  simp only [A026233, Nat.add_sub_cancel, A026233.P9190997404004056244.a, A026233.P9940021653241192436.a, A010051, A010051.P15078252821583414300.a, A049084, A049084.P10934933317972537770.a, A062298, A062298.P8226643735375377344.a, A097454, A097454.P2717210328983116484.a, A239968, A239968.P9247355313622841393.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005171, A005171.P15860856746370777121.a, A072731, A072731.P11631103641081885778.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A065855, A065855.P16805213270251966039.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A026233

/-! ## A026233.P12899826676327407269

`A065033(A073898(n+1))`
-/

namespace A026233.P12899826676327407269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A073898 (n + 1)).toNat

end

end A026233.P12899826676327407269

namespace A026233

/-- `A065033(A073898(n+1))` -/
def P12899826676327407269.Spec : Prop :=
  ∀ n, P12899826676327407269.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P16336441101550353980

`A004526(A073898(n+1)+1)`
-/

namespace A026233.P16336441101550353980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073898 (n + 1) + 1).toNat

end

end A026233.P16336441101550353980

namespace A026233

/-- `A004526(A073898(n+1)+1)` -/
def P16336441101550353980.Spec : Prop :=
  ∀ n, P16336441101550353980.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P1300510623253157580

`A049084(A026234(n+1))+A049084(n+1)`
-/

namespace A026233.P1300510623253157580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A026234 (n + 1)).toNat + A049084 (n + 1)

end

end A026233.P1300510623253157580

namespace A026233

/-- `A049084(A026234(n+1))+A049084(n+1)` -/
def P1300510623253157580.Spec : Prop :=
  ∀ n, P1300510623253157580.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P4818710349469101550

`A239968(A026234(n+1))+A239968(n+1)`
-/

namespace A026233.P4818710349469101550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239968 (A026234 (n + 1)).toNat + A239968 (n + 1)

end

end A026233.P4818710349469101550

namespace A026233

/-- `A239968(A026234(n+1))+A239968(n+1)` -/
def P4818710349469101550.Spec : Prop :=
  ∀ n, P4818710349469101550.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P15936554688012757781

`A000720(p?[A137661(n+1)-1])`
-/

namespace A026233.P15936554688012757781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026233.P15936554688012757781

namespace A026233

/-- `A000720(p?[A137661(n+1)-1])` -/
def P15936554688012757781.Spec : Prop :=
  ∀ n, P15936554688012757781.a n = A026233 (n + 1)

end A026233

/-! ## A026233.P15874587219557255823

`A003963(p?[A137661(n+1)-1])`
-/

namespace A026233.P15874587219557255823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137661 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026233.P15874587219557255823

namespace A026233

/-- `A003963(p?[A137661(n+1)-1])` -/
def P15874587219557255823.Spec : Prop :=
  ∀ n, P15874587219557255823.a n = A026233 (n + 1)

end A026233

/-!
# A026234: In the sequence of positive integers, swap the k-th prime and k-th nonprime, for k = 1,2,3,...

The programs for A026234, the canonical program `A026234.P1482690558561075150` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026234 has offset 1).

The definition of A026234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026234.P1482690558561075150

`A022797(A026233(n+1))-(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A026234

/-- `A022797(A026233(n+1))-(n+1)` -/
def P1482690558561075150.Spec : Prop :=
  ∀ n, P1482690558561075150.a n = A026234 (n + 1)

theorem P1482690558561075150.correct : P1482690558561075150.Spec := by
  intro n
  simp only [A026234, Nat.add_sub_cancel]

end A026234

/-! ## A026234.P10434034235036503427

`A127118(A026233(n+1))/A000027(n+1)`
-/

namespace A026234.P10434034235036503427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127118 (A026233 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A026234.P10434034235036503427

namespace A026234

/-- `A127118(A026233(n+1))/A000027(n+1)` -/
def P10434034235036503427.Spec : Prop :=
  ∀ n, P10434034235036503427.a n = (A026234 (n + 1) : ℚ)

end A026234

/-! ## A026234.P17427118278396627556

`A073846(2*A026233(n+1)-A010051(n+1))`
-/

namespace A026234.P17427118278396627556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A026233 (n + 1) - A010051 (n + 1)).toNat

end

end A026234.P17427118278396627556

namespace A026234

/-- `A073846(2*A026233(n+1)-A010051(n+1))` -/
def P17427118278396627556.Spec : Prop :=
  ∀ n, P17427118278396627556.a n = A026234 (n + 1)

end A026234

/-! ## A026234.P12595993925703207678

`A073846(A026233(n+1)+A026233(n+1)-A010051(n+1))`
-/

namespace A026234.P12595993925703207678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A026233 (n + 1) + (A026233 (n + 1) - A010051 (n + 1))).toNat

end

end A026234.P12595993925703207678

namespace A026234

/-- `A073846(A026233(n+1)+A026233(n+1)-A010051(n+1))` -/
def P12595993925703207678.Spec : Prop :=
  ∀ n, P12595993925703207678.a n = A026234 (n + 1)

end A026234

/-! ## A026234.P9254112140811969353

`A127118(A026233(n+1))/A063942(3*n)`
-/

namespace A026234.P9254112140811969353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127118 (A026233 (n + 1)).toNat : ℚ) / (A063942 (3 * n) : ℚ)

end

end A026234.P9254112140811969353

namespace A026234

/-- `A127118(A026233(n+1))/A063942(3*n)` -/
def P9254112140811969353.Spec : Prop :=
  ∀ n, P9254112140811969353.a n = (A026234 (n + 1) : ℚ)

end A026234

/-! ## A026234.P17432725833467538611

`A237739(xor(1, A071574(n+1)))`
-/

namespace A026234.P17432725833467538611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (Int.xor 1 (A071574 (n + 1))).toNat

end

end A026234.P17432725833467538611

namespace A026234

/-- `A237739(xor(1, A071574(n+1)))` -/
def P17432725833467538611.Spec : Prop :=
  ∀ n, P17432725833467538611.a n = A026234 (n + 1)

end A026234

/-! ## A026234.P16098343041857262987

`A237739(xor(1, A252756(A269857(n+1))))`
-/

namespace A026234.P16098343041857262987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (Int.xor 1 (A252756 (A269857 (n + 1)).toNat)).toNat

end

end A026234.P16098343041857262987

namespace A026234

/-- `A237739(xor(1, A252756(A269857(n+1))))` -/
def P16098343041857262987.Spec : Prop :=
  ∀ n, P16098343041857262987.a n = A026234 (n + 1)

end A026234

/-!
# A026235: a(n) = |s(n) - n|, where s = A026234.

The programs for A026235, the canonical program `A026235.P2955859054597217029` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026235 has offset 1).

The definition of A026235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026235.P2955859054597217029

`abs(1-A026234(n+1)+n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026235

/-- `abs(1-A026234(n+1)+n)` -/
def P2955859054597217029.Spec : Prop :=
  ∀ n, P2955859054597217029.a n = A026235 (n + 1)

theorem P2955859054597217029.correct : P2955859054597217029.Spec := by
  intro n
  simp only [A026235, Nat.add_sub_cancel]

end A026235

/-! ## A026235.P13636727953642943960

`abs(A014237(A026233(n+1)))`
-/

namespace A026235.P13636727953642943960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014237 (A026233 (n + 1)).toNat|

end

end A026235.P13636727953642943960

namespace A026235

/-- `abs(A014237(A026233(n+1)))` -/
def P13636727953642943960.Spec : Prop :=
  ∀ n, P13636727953642943960.a n = A026235 (n + 1)

end A026235

/-! ## A026235.P11835048371011712319

`abs(A026234(n+1)+A001478(n+1))`
-/

namespace A026235.P11835048371011712319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026234 (n + 1) + A001478 (n + 1)|

end

end A026235.P11835048371011712319

namespace A026235

/-- `abs(A026234(n+1)+A001478(n+1))` -/
def P11835048371011712319.Spec : Prop :=
  ∀ n, P11835048371011712319.a n = A026235 (n + 1)

end A026235

/-! ## A026235.P6723795021079176134

`gcd(A000038(n), A014237(A026233(n+1)))`
-/

namespace A026235.P6723795021079176134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A014237 (A026233 (n + 1)).toNat)

end

end A026235.P6723795021079176134

namespace A026235

/-- `gcd(A000038(n), A014237(A026233(n+1)))` -/
def P6723795021079176134.Spec : Prop :=
  ∀ n, (P6723795021079176134.a n : ℤ) = A026235 (n + 1)

end A026235

/-! ## A026235.P11828946109168132604

`∑{d}[A014237(A026233(n+1)), A000010(#)]`
-/

namespace A026235.P11828946109168132604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (A026233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A026235.P11828946109168132604

namespace A026235

/-- `∑{d}[A014237(A026233(n+1)), A000010(#)]` -/
def P11828946109168132604.Spec : Prop :=
  ∀ n, P11828946109168132604.a n = A026235 (n + 1)

end A026235

/-! ## A026235.P16540555578012974475

`∏{d}[A014237(A026233(n+1)), A014963(#)]`
-/

namespace A026235.P16540555578012974475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (A026233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A026235.P16540555578012974475

namespace A026235

/-- `∏{d}[A014237(A026233(n+1)), A014963(#)]` -/
def P16540555578012974475.Spec : Prop :=
  ∀ n, P16540555578012974475.a n = A026235 (n + 1)

end A026235

/-! ## A026235.P7035060217049164056

`A328177((A026234(n+1)-(n+1))²)`
-/

namespace A026235.P7035060217049164056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328177 ((A026234 (n + 1) - (n + 1 : ℤ)) ^ 2).toNat

end

end A026235.P7035060217049164056

namespace A026235

/-- `A328177((A026234(n+1)-(n+1))²)` -/
def P7035060217049164056.Spec : Prop :=
  ∀ n, P7035060217049164056.a n = A026235 (n + 1)

end A026235

/-! ## A026235.P9966332843309284474

`A000196((n+1-A026234(n+1))²)`
-/

namespace A026235.P9966332843309284474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((n + 1 : ℤ) - A026234 (n + 1)) ^ 2).toNat

end

end A026235.P9966332843309284474

namespace A026235

/-- `A000196((n+1-A026234(n+1))²)` -/
def P9966332843309284474.Spec : Prop :=
  ∀ n, P9966332843309284474.a n = A026235 (n + 1)

end A026235

/-!
# A026236: a(n) = (s(n) + 1)/2, where s(n) is the n-th odd number in A026234.

The programs for A026236, the canonical program `A026236.P6357686734265225565` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026236 has offset 1).

The definition of A026236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026236.P6357686734265225565

`A000720(p?[A067747(A026234(n+1))])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A026236

/-- `A000720(p?[A067747(A026234(n+1))])` -/
def P6357686734265225565.Spec : Prop :=
  ∀ n, P6357686734265225565.a n = A026236 (n + 1)

theorem P6357686734265225565.correct : P6357686734265225565.Spec := by
  intro n
  simp only [A026236, Nat.add_sub_cancel]

end A026236

/-! ## A026236.P15233109371539630876

`A107324(A192109(n+2))`
-/

namespace A026236.P15233109371539630876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A192109 (n + 2)).toNat

end

end A026236.P15233109371539630876

namespace A026236

/-- `A107324(A192109(n+2))` -/
def P15233109371539630876.Spec : Prop :=
  ∀ n, P15233109371539630876.a n = A026236 (n + 1)

end A026236

/-! ## A026236.P10172141579946026889

`A107324(A216090(n+2))`
-/

namespace A026236.P10172141579946026889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (A216090 (n + 2)).toNat

end

end A026236.P10172141579946026889

namespace A026236

/-- `A107324(A216090(n+2))` -/
def P10172141579946026889.Spec : Prop :=
  ∀ n, P10172141579946026889.a n = A026236 (n + 1)

end A026236

/-! ## A026236.P18357525445416104641

`A225620(n+1)-A337821(A001987(2*n+1))`
-/

namespace A026236.P18357525445416104641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225620 (n + 1) - A337821 (A001987 (2 * n + 1)).toNat

end

end A026236.P18357525445416104641

namespace A026236

/-- `A225620(n+1)-A337821(A001987(2*n+1))` -/
def P18357525445416104641.Spec : Prop :=
  ∀ n, P18357525445416104641.a n = A026236 (n + 1)

end A026236

/-!
# A026238: a(n) = j if n is the j-th prime, else a(n) = k if n is the k-th composite.

The programs for A026238, the canonical program `A026238.P11188609804940951369` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026238 has offset 2).

The definition of A026238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049084, A066246, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026238.P11188609804940951369

`A049084(n+2)+A066246(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026238

/-- `A049084(n+2)+A066246(n+2)` -/
def P11188609804940951369.Spec : Prop :=
  ∀ n, P11188609804940951369.a n = A026238 (n + 2)

theorem P11188609804940951369.correct : P11188609804940951369.Spec := by
  intro n
  simp only [A026238, Nat.add_sub_cancel]

end A026238

/-! ## A026238.P17542627831355554443

`A062298(n+1)-A010051(n+2)*A072731(n+1)`
-/

namespace A026238.P17542627831355554443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A010051 (n + 2) * A072731 (n + 1)

end

end A026238.P17542627831355554443

namespace A026238

/-- `A062298(n+1)-A010051(n+2)*A072731(n+1)` -/
def P17542627831355554443.Spec : Prop :=
  ∀ n, P17542627831355554443.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P13904143916759402936

`A000720(n+2)+A066247(n+2)*A097454(n+1)`
-/

namespace A026238.P13904143916759402936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) + A066247 (n + 2) * A097454 (n + 1)

end

end A026238.P13904143916759402936

namespace A026238

/-- `A000720(n+2)+A066247(n+2)*A097454(n+1)` -/
def P13904143916759402936.Spec : Prop :=
  ∀ n, P13904143916759402936.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P6946193976849958561

`A066136(n+2)`
-/

namespace A026238.P6946193976849958561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (n + 2)

end

end A026238.P6946193976849958561

namespace A026238

/-- `A066136(n+2)` -/
def P6946193976849958561.Spec : Prop :=
  ∀ n, P6946193976849958561.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P7200954709078428733

`floor(A073897(n+2)/2)`
-/

namespace A026238.P7200954709078428733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073897 (n + 2) : ℚ) / 2⌋

end

end A026238.P7200954709078428733

namespace A026238

/-- `floor(A073897(n+2)/2)` -/
def P7200954709078428733.Spec : Prop :=
  ∀ n, P7200954709078428733.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P6924890865661880686

`A026233(n+2)-A005171(n+2)`
-/

namespace A026238.P6924890865661880686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 2) - A005171 (n + 2)

end

end A026238.P6924890865661880686

namespace A026238

/-- `A026233(n+2)-A005171(n+2)` -/
def P6924890865661880686.Spec : Prop :=
  ∀ n, P6924890865661880686.a n = A026238 (n + 2)

theorem P6924890865661880686.correct : P6924890865661880686.Spec := by
  intro n
  simp only [A026238, Nat.add_sub_cancel, A026238.P6924890865661880686.a, A026238.P11188609804940951369.a, A005171, A005171.P15860856746370777121.a, A026233, A026233.P9940021653241192436.a, A049084, A049084.P10934933317972537770.a, A066246, A066246.P11504023463901313022.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A065855, A065855.P16805213270251966039.a, A239968, A239968.P9247355313622841393.a, A062298, A062298.P8226643735375377344.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A026238

/-! ## A026238.P2752577858610480393

`A026233(n+2)-A066247(n+2)`
-/

namespace A026238.P2752577858610480393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 2) - A066247 (n + 2)

end

end A026238.P2752577858610480393

namespace A026238

/-- `A026233(n+2)-A066247(n+2)` -/
def P2752577858610480393.Spec : Prop :=
  ∀ n, P2752577858610480393.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P9186888266683334319

`A073898(n+2)-A026233(n+2)`
-/

namespace A026238.P9186888266683334319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (n + 2) - A026233 (n + 2)

end

end A026238.P9186888266683334319

namespace A026238

/-- `A073898(n+2)-A026233(n+2)` -/
def P9186888266683334319.Spec : Prop :=
  ∀ n, P9186888266683334319.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P17661686435403225743

`A010051(n+2)+A026233(n+2)-1`
-/

namespace A026238.P17661686435403225743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2) + (A026233 (n + 2) - 1)

end

end A026238.P17661686435403225743

namespace A026238

/-- `A010051(n+2)+A026233(n+2)-1` -/
def P17661686435403225743.Spec : Prop :=
  ∀ n, P17661686435403225743.a n = A026238 (n + 2)

theorem P17661686435403225743.correct : P17661686435403225743.Spec := by
  intro n
  simp only [A026238, Nat.add_sub_cancel, A026238.P17661686435403225743.a, A026238.P11188609804940951369.a, A010051, A010051.P15078252821583414300.a, A026233, A026233.P9940021653241192436.a, A049084, A049084.P10934933317972537770.a, A066246, A066246.P11504023463901313022.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005171, A005171.P15860856746370777121.a, A065855, A065855.P16805213270251966039.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A239968, A239968.P9247355313622841393.a, A062298, A062298.P8226643735375377344.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A026238

/-! ## A026238.P8774934014712335751

`A066246(n+2)+A000720(A089026(n+2))`
-/

namespace A026238.P8774934014712335751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 2) + A000720 (A089026 (n + 2)).toNat

end

end A026238.P8774934014712335751

namespace A026238

/-- `A066246(n+2)+A000720(A089026(n+2))` -/
def P8774934014712335751.Spec : Prop :=
  ∀ n, P8774934014712335751.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P11567234318937205604

`A026233(n+2)-A000007(A049084(n+2))`
-/

namespace A026238.P11567234318937205604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 2) - A000007 (A049084 (n + 2)).toNat

end

end A026238.P11567234318937205604

namespace A026238

/-- `A026233(n+2)-A000007(A049084(n+2))` -/
def P11567234318937205604.Spec : Prop :=
  ∀ n, P11567234318937205604.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P10589935171252307821

`A026233(n+2)-A057427(A239968(n+2))`
-/

namespace A026238.P10589935171252307821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 2) - A057427 (A239968 (n + 2)).toNat

end

end A026238.P10589935171252307821

namespace A026238

/-- `A026233(n+2)-A057427(A239968(n+2))` -/
def P10589935171252307821.Spec : Prop :=
  ∀ n, P10589935171252307821.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P13261371960143115866

`A062298(n+1)+A026233(n+2)-A062298(n+2)`
-/

namespace A026238.P13261371960143115866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + (A026233 (n + 2) - A062298 (n + 2))

end

end A026238.P13261371960143115866

namespace A026238

/-- `A062298(n+1)+A026233(n+2)-A062298(n+2)` -/
def P13261371960143115866.Spec : Prop :=
  ∀ n, P13261371960143115866.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P5757653170897188474

`A049084(n+2)+A239968(n+2)-A005171(n+2)`
-/

namespace A026238.P5757653170897188474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 2) + (A239968 (n + 2) - A005171 (n + 2))

end

end A026238.P5757653170897188474

namespace A026238

/-- `A049084(n+2)+A239968(n+2)-A005171(n+2)` -/
def P5757653170897188474.Spec : Prop :=
  ∀ n, P5757653170897188474.a n = A026238 (n + 2)

theorem P5757653170897188474.correct : P5757653170897188474.Spec := by
  intro n
  simp only [A026238, Nat.add_sub_cancel, A026238.P5757653170897188474.a, A026238.P11188609804940951369.a, A005171, A005171.P15860856746370777121.a, A049084, A049084.P10934933317972537770.a, A066246, A066246.P11504023463901313022.a, A239968, A239968.P9247355313622841393.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A026238

/-! ## A026238.P16753672073916306537

`A026233(n+2)+A066246(n+2)-A239968(n+2)`
-/

namespace A026238.P16753672073916306537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 2) + (A066246 (n + 2) - A239968 (n + 2))

end

end A026238.P16753672073916306537

namespace A026238

/-- `A026233(n+2)+A066246(n+2)-A239968(n+2)` -/
def P16753672073916306537.Spec : Prop :=
  ∀ n, P16753672073916306537.a n = A026238 (n + 2)

theorem P16753672073916306537.correct : P16753672073916306537.Spec := by
  intro n
  simp only [A026238, Nat.add_sub_cancel, A026238.P16753672073916306537.a, A026238.P11188609804940951369.a, A026233, A026233.P9940021653241192436.a, A049084, A049084.P10934933317972537770.a, A066246, A066246.P11504023463901313022.a, A239968, A239968.P9247355313622841393.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P15078252821583414300.a, A062298, A062298.P8226643735375377344.a, A065855, A065855.P16805213270251966039.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A026238

/-! ## A026238.P17781815155125085161

`A049084(n+2)+A239968(n+2)-A066247(n+2)`
-/

namespace A026238.P17781815155125085161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 2) + (A239968 (n + 2) - A066247 (n + 2))

end

end A026238.P17781815155125085161

namespace A026238

/-- `A049084(n+2)+A239968(n+2)-A066247(n+2)` -/
def P17781815155125085161.Spec : Prop :=
  ∀ n, P17781815155125085161.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P3778920618228547252

`A066246(n+2)+A000720(n+2)*A010051(n+2)`
-/

namespace A026238.P3778920618228547252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 2) + A000720 (n + 2) * A010051 (n + 2)

end

end A026238.P3778920618228547252

namespace A026238

/-- `A066246(n+2)+A000720(n+2)*A010051(n+2)` -/
def P3778920618228547252.Spec : Prop :=
  ∀ n, P3778920618228547252.a n = A026238 (n + 2)

theorem P3778920618228547252.correct : P3778920618228547252.Spec := by
  intro n
  simp only [A026238, Nat.add_sub_cancel, A026238.P3778920618228547252.a, A026238.P11188609804940951369.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A010051, A010051.P15078252821583414300.a, A049084, A049084.P10934933317972537770.a, A066246, A066246.P11504023463901313022.a, A005171, A005171.P15860856746370777121.a, A065855, A065855.P16805213270251966039.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A062298, A062298.P8226643735375377344.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A026238

/-! ## A026238.P14622769552841190642

`A066246(n+2)+A010051(n+2)*A026233(n+2)`
-/

namespace A026238.P14622769552841190642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 2) + A010051 (n + 2) * A026233 (n + 2)

end

end A026238.P14622769552841190642

namespace A026238

/-- `A066246(n+2)+A010051(n+2)*A026233(n+2)` -/
def P14622769552841190642.Spec : Prop :=
  ∀ n, P14622769552841190642.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P2522234579468265429

`A000720(n+2)+A066247(n+2)*A072731(n+2)`
-/

namespace A026238.P2522234579468265429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2) + A066247 (n + 2) * A072731 (n + 2)

end

end A026238.P2522234579468265429

namespace A026238

/-- `A000720(n+2)+A066247(n+2)*A072731(n+2)` -/
def P2522234579468265429.Spec : Prop :=
  ∀ n, P2522234579468265429.a n = A026238 (n + 2)

end A026238

/-! ## A026238.P2940335578304627114

`A062298(n+1)-A010051(n+2)*A097454(n+2)`
-/

namespace A026238.P2940335578304627114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A010051 (n + 2) * A097454 (n + 2)

end

end A026238.P2940335578304627114

namespace A026238

/-- `A062298(n+1)-A010051(n+2)*A097454(n+2)` -/
def P2940335578304627114.Spec : Prop :=
  ∀ n, P2940335578304627114.a n = A026238 (n + 2)

end A026238

/-!
# A026239: Beginning with the natural numbers, swap the k-th prime and k-th composite.

The programs for A026239, the canonical program `A026239.P15837365085214578308` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026239 has offset 1).

The definition of A026239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5758 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026239.P5705663742288076085

`A073846(A073897(n+1))`
-/

namespace A026239.P5705663742288076085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A073897 (n + 1)).toNat

end

end A026239.P5705663742288076085

namespace A026239

/-- `A073846(A073897(n+1))` -/
def P5705663742288076085.Spec : Prop :=
  ∀ n, P5705663742288076085.a n = A026239 (n + 1)

end A026239

/-! ## A026239.P15837365085214578308

`A073846(xor(A057427(n), A073898(n+1)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026239

/-- `A073846(xor(A057427(n), A073898(n+1)))` -/
def P15837365085214578308.Spec : Prop :=
  ∀ n, P15837365085214578308.a n = A026239 (n + 1)

theorem P15837365085214578308.correct : P15837365085214578308.Spec := by
  intro n
  simp only [A026239, Nat.add_sub_cancel]

end A026239

/-! ## A026239.P15026382368385104595

`A073846(A065190(A073898(n+1)))`
-/

namespace A026239.P15026382368385104595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A065190 (A073898 (n + 1)).toNat).toNat

end

end A026239.P15026382368385104595

namespace A026239

/-- `A073846(A065190(A073898(n+1)))` -/
def P15026382368385104595.Spec : Prop :=
  ∀ n, P15026382368385104595.a n = A026239 (n + 1)

end A026239

/-! ## A026239.P15442694946482392743

`A073846(xor(A066247((n+1)²), A073898(n+1)))`
-/

namespace A026239.P15442694946482392743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (Int.xor (A066247 ((n + 1) ^ 2)) (A073898 (n + 1))).toNat

end

end A026239.P15442694946482392743

namespace A026239

/-- `A073846(xor(A066247((n+1)²), A073898(n+1)))` -/
def P15442694946482392743.Spec : Prop :=
  ∀ n, P15442694946482392743.a n = A026239 (n + 1)

end A026239

/-! ## A026239.P5183635008101799848

`A246378(xor(A057427(n), A246377(n+1)))`
-/

namespace A026239.P5183635008101799848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246378 (Int.xor (A057427 n) (A246377 (n + 1))).toNat

end

end A026239.P5183635008101799848

namespace A026239

/-- `A246378(xor(A057427(n), A246377(n+1)))` -/
def P5183635008101799848.Spec : Prop :=
  ∀ n, P5183635008101799848.a n = A026239 (n + 1)

end A026239

/-! ## A026239.P11949737386935639999

`A227413(xor(A057427(n), A135141(n+1)))`
-/

namespace A026239.P11949737386935639999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (Int.xor (A057427 n) (A135141 (n + 1))).toNat

end

end A026239.P11949737386935639999

namespace A026239

/-- `A227413(xor(A057427(n), A135141(n+1)))` -/
def P11949737386935639999.Spec : Prop :=
  ∀ n, P11949737386935639999.a n = A026239 (n + 1)

end A026239

/-! ## A026239.P689789663113451522

`A227413(xor(A135141(n+1), A178334(n)))`
-/

namespace A026239.P689789663113451522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (Int.xor (A135141 (n + 1)) (A178334 n)).toNat

end

end A026239.P689789663113451522

namespace A026239

/-- `A227413(xor(A135141(n+1), A178334(n)))` -/
def P689789663113451522.Spec : Prop :=
  ∀ n, P689789663113451522.a n = A026239 (n + 1)

end A026239

/-! ## A026239.P15436222747926511671

`A227413(xor(A052409(n²+1), A135141(n+1)))`
-/

namespace A026239.P15436222747926511671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (Int.xor (A052409 (n ^ 2 + 1)) (A135141 (n + 1))).toNat

end

end A026239.P15436222747926511671

namespace A026239

/-- `A227413(xor(A052409(n²+1), A135141(n+1)))` -/
def P15436222747926511671.Spec : Prop :=
  ∀ n, P15436222747926511671.a n = A026239 (n + 1)

end A026239

/-!
# A026240: a(n) = |s(n) - n|, where s = A026239.

The programs for A026240, the canonical program `A026240.P3782494850126413018` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026240 has offset 1).

The definition of A026240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026240.P3782494850126413018

`abs(1-A026239(n+1)+n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026240

/-- `abs(1-A026239(n+1)+n)` -/
def P3782494850126413018.Spec : Prop :=
  ∀ n, P3782494850126413018.a n = A026240 (n + 1)

theorem P3782494850126413018.correct : P3782494850126413018.Spec := by
  intro n
  simp only [A026240, Nat.add_sub_cancel]

end A026240

/-! ## A026240.P2458684584972013482

`abs(A026239(n+1)+A001478(n+1))`
-/

namespace A026240.P2458684584972013482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026239 (n + 1) + A001478 (n + 1)|

end

end A026240.P2458684584972013482

namespace A026240

/-- `abs(A026239(n+1)+A001478(n+1))` -/
def P2458684584972013482.Spec : Prop :=
  ∀ n, P2458684584972013482.a n = A026240 (n + 1)

end A026240

/-! ## A026240.P4457917445419919359

`lcm(n+1-A026239(n+1), A160357(n))`
-/

namespace A026240.P4457917445419919359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - A026239 (n + 1)) (A160357 n)

end

end A026240.P4457917445419919359

namespace A026240

/-- `lcm(n+1-A026239(n+1), A160357(n))` -/
def P4457917445419919359.Spec : Prop :=
  ∀ n, (P4457917445419919359.a n : ℤ) = A026240 (n + 1)

end A026240

/-! ## A026240.P1811653508017048236

`abs(A026239(n+1)+A024000(n+2))`
-/

namespace A026240.P1811653508017048236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026239 (n + 1) + A024000 (n + 2)|

end

end A026240.P1811653508017048236

namespace A026240

/-- `abs(A026239(n+1)+A024000(n+2))` -/
def P1811653508017048236.Spec : Prop :=
  ∀ n, P1811653508017048236.a n = A026240 (n + 1)

end A026240

/-! ## A026240.P2495858169130912875

`abs(n+1-A073846(A073897(n+1)))`
-/

namespace A026240.P2495858169130912875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - A073846 (A073897 (n + 1)).toNat|

end

end A026240.P2495858169130912875

namespace A026240

/-- `abs(n+1-A073846(A073897(n+1)))` -/
def P2495858169130912875.Spec : Prop :=
  ∀ n, P2495858169130912875.a n = A026240 (n + 1)

theorem P2495858169130912875.correct : P2495858169130912875.Spec := by
  intro n
  simp only [A026240, Nat.add_sub_cancel, A026240.P2495858169130912875.a, A026240.P3782494850126413018.a, A026239, A026239.P15837365085214578308.a, A073846, A073846.P6597412170005078554.a, A073897, A073897.P11908229186590286199.a, A000035, A000035.P2023072528413494694.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A057427, A057427.P3058147525557661423.a, A059841, A059841.P7264174615531153985.a, A073898, A073898.P3320398889507499316.f1, A073898.P3320398889507499316.f3, A073898.P3320398889507499316.f2, A073898.P3320398889507499316.f4, A073898.P3320398889507499316.f6, A073898.P3320398889507499316.f5, A073898.P3320398889507499316.f7, A073898.P3320398889507499316.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A026240

/-! ## A026240.P387358552123813203

`abs(A024000(A026239(n+1))+n)`
-/

namespace A026240.P387358552123813203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (A026239 (n + 1)).toNat + (n : ℤ)|

end

end A026240.P387358552123813203

namespace A026240

/-- `abs(A024000(A026239(n+1))+n)` -/
def P387358552123813203.Spec : Prop :=
  ∀ n, P387358552123813203.a n = A026240 (n + 1)

end A026240

/-!
# A026241: Expansion of 1/((1-2*x)*(1-5*x)*(1-10*x)*(1-12*x)).

The programs for A026241, there is no canonical definition to state claims against.
-/

/-! ## A026241.P13516105396769887480

`A020568(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A026241.P13516105396769887480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020568 n + 2 * a (n - 1)

end

end A026241.P13516105396769887480

/-! ## A026241.P1654353063213963125

`2*A016326(n)-A016302(n)`
-/

namespace A026241.P1654353063213963125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016326 n - A016302 n

end

end A026241.P1654353063213963125

/-! ## A026241.P2612812999973979839

`2*A026006(n)-A025998(n)`
-/

namespace A026241.P2612812999973979839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026006 n - A025998 n

end

end A026241.P2612812999973979839

/-! ## A026241.P9929374244507928079

`A025936(n)+A025956(n)-A025934(n)`
-/

namespace A026241.P9929374244507928079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025936 n + (A025956 n - A025934 n)

end

end A026241.P9929374244507928079

/-! ## A026241.P8347480164041601750

`2*A025951(n)-A025949(n)+A025936(n)-A025934(n)`
-/

namespace A026241.P8347480164041601750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025951 n - A025949 n + (A025936 n - A025934 n)

end

end A026241.P8347480164041601750

/-! ## A026241.P2439097522886879367

`A025936(n)+(A025957(n)+A025955(n))/2-A025934(n)`
-/

namespace A026241.P2439097522886879367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025936 n : ℚ) + ((A025957 n + A025955 n : ℚ) / 2 - (A025934 n : ℚ))

end

end A026241.P2439097522886879367

/-!
# A026242: a(n) = j if n is L(j), else a(n) = k if n is U(k), where L = A000201, U = A001950 (lower and upper Wythoff sequences).

The programs for A026242, the canonical program `A026242.P14627616473925988182` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026242 has offset 1).

The definition of A026242 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002251, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026242.P14627616473925988182

`abs(n+1-A002251(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026242

/-- `abs(n+1-A002251(n+1))` -/
def P14627616473925988182.Spec : Prop :=
  ∀ n, P14627616473925988182.a n = A026242 (n + 1)

theorem P14627616473925988182.correct : P14627616473925988182.Spec := by
  intro n
  simp only [A026242, Nat.add_sub_cancel]

end A026242

/-! ## A026242.P15263052207515208658

`A193564(n+1)+1`
-/

namespace A026242.P15263052207515208658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (n + 1) + 1

end

end A026242.P15263052207515208658

namespace A026242

/-- `A193564(n+1)+1` -/
def P15263052207515208658.Spec : Prop :=
  ∀ n, P15263052207515208658.a n = A026242 (n + 1)

theorem P15263052207515208658.correct : P15263052207515208658.Spec := by
  intro n
  simp only [A026242, Nat.add_sub_cancel, A026242.P15263052207515208658.a, A026242.P14627616473925988182.a, A002251, A002251.P8899938186717577679.a, A193564, A193564.P10859496068576138660.a, A019444, A019444.P809029338349565677.f1, A019444.P809029338349565677.a, A114986, A114986.P6596508872872694334.f1, A114986.P6596508872872694334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026242

/-! ## A026242.P5052074970471371731

`ceil(A064786(n+1)/2)`
-/

namespace A026242.P5052074970471371731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064786 (n + 1) : ℚ) / 2⌉

end

end A026242.P5052074970471371731

namespace A026242

/-- `ceil(A064786(n+1)/2)` -/
def P5052074970471371731.Spec : Prop :=
  ∀ n, P5052074970471371731.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P9806711041379309741

`A050411(n+1)%(n+3)`
-/

namespace A026242.P9806711041379309741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050411 (n + 1)) (n + 3 : ℤ)

end

end A026242.P9806711041379309741

namespace A026242

/-- `A050411(n+1)%(n+3)` -/
def P9806711041379309741.Spec : Prop :=
  ∀ n, P9806711041379309741.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P12591696839412449648

`abs(n+1-Δ[(n+1)*A005206(n)])`
-/

namespace A026242.P12591696839412449648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - (f1 (n + 1) - f1 n)|

end

end A026242.P12591696839412449648

namespace A026242

/-- `abs(n+1-Δ[(n+1)*A005206(n)])` -/
def P12591696839412449648.Spec : Prop :=
  ∀ n, P12591696839412449648.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P3782261881499115261

`A003603(A026273(n+1))`
-/

namespace A026242.P3782261881499115261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A026273 (n + 1)).toNat

end

end A026242.P3782261881499115261

namespace A026242

/-- `A003603(A026273(n+1))` -/
def P3782261881499115261.Spec : Prop :=
  ∀ n, P3782261881499115261.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P6251448260230631909

`A003603(A026274(n+1)-(n+2))`
-/

namespace A026242.P6251448260230631909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A026274 (n + 1) - (n + 2 : ℤ)).toNat

end

end A026242.P6251448260230631909

namespace A026242

/-- `A003603(A026274(n+1)-(n+2))` -/
def P6251448260230631909.Spec : Prop :=
  ∀ n, P6251448260230631909.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P11451156546403099216

`(A064786(n+1)+A003849(n))/2`
-/

namespace A026242.P11451156546403099216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064786 (n + 1) + A003849 n : ℚ) / 2

end

end A026242.P11451156546403099216

namespace A026242

/-- `(A064786(n+1)+A003849(n))/2` -/
def P11451156546403099216.Spec : Prop :=
  ∀ n, P11451156546403099216.a n = (A026242 (n + 1) : ℚ)

theorem P11451156546403099216.correct : P11451156546403099216.Spec := by
  intro n
  simp only [A026242, Nat.add_sub_cancel, A026242.P11451156546403099216.a, A026242.P14627616473925988182.a, A002251, A002251.P8899938186717577679.a, A003849, A003849.P15070805603138295355.a, A064786, A064786.P10676103472922795577.a, A019444, A019444.P809029338349565677.f1, A019444.P809029338349565677.a, A114986, A114986.P6596508872872694334.f1, A114986.P6596508872872694334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026242

/-! ## A026242.P2480829334857805896

`A003603(A000201(n+1)+A005614(n)-1)`
-/

namespace A026242.P2480829334857805896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A000201 (n + 1) + (A005614 n - 1)).toNat

end

end A026242.P2480829334857805896

namespace A026242

/-- `A003603(A000201(n+1)+A005614(n)-1)` -/
def P2480829334857805896.Spec : Prop :=
  ∀ n, P2480829334857805896.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P11906267430362116327

`A026350(n+2)-1`
-/

namespace A026242.P11906267430362116327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (n + 2) - 1

end

end A026242.P11906267430362116327

namespace A026242

/-- `A026350(n+2)-1` -/
def P11906267430362116327.Spec : Prop :=
  ∀ n, P11906267430362116327.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P18083760939839961016

`abs(Δ[A026271(n+1)]-(n+2)-n)`
-/

namespace A026242.P18083760939839961016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - (n + 2 : ℤ) - (n : ℤ)|

end

end A026242.P18083760939839961016

namespace A026242

/-- `abs(Δ[A026271(n+1)]-(n+2)-n)` -/
def P18083760939839961016.Spec : Prop :=
  ∀ n, P18083760939839961016.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P14785904479524362045

`A023444(A026350(n+2)+1)`
-/

namespace A026242.P14785904479524362045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A026350 (n + 2) + 1).toNat

end

end A026242.P14785904479524362045

namespace A026242

/-- `A023444(A026350(n+2)+1)` -/
def P14785904479524362045.Spec : Prop :=
  ∀ n, P14785904479524362045.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P6059067598983414135

`A003603(A022342(n+2)-1)`
-/

namespace A026242.P6059067598983414135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A022342 (n + 2) - 1).toNat

end

end A026242.P6059067598983414135

namespace A026242

/-- `A003603(A022342(n+2)-1)` -/
def P6059067598983414135.Spec : Prop :=
  ∀ n, P6059067598983414135.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P7350527277299030715

`A003603(A000201(n+2)-2)`
-/

namespace A026242.P7350527277299030715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A000201 (n + 2) - 2).toNat

end

end A026242.P7350527277299030715

namespace A026242

/-- `A003603(A000201(n+2)-2)` -/
def P7350527277299030715.Spec : Prop :=
  ∀ n, P7350527277299030715.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P16802021349714206783

`A003603(∑[A001468(n+1)]-1)`
-/

namespace A026242.P16802021349714206783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A026242.P16802021349714206783

namespace A026242

/-- `A003603(∑[A001468(n+1)]-1)` -/
def P16802021349714206783.Spec : Prop :=
  ∀ n, P16802021349714206783.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P2003005205685334236

`A003603(Δ[A054347(n+1)]-2)`
-/

namespace A026242.P2003005205685334236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (f1 (n + 1) - f1 n - 2).toNat

end

end A026242.P2003005205685334236

namespace A026242

/-- `A003603(Δ[A054347(n+1)]-2)` -/
def P2003005205685334236.Spec : Prop :=
  ∀ n, P2003005205685334236.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P4643904410858837781

`A057428(n+1)+A026350(n+2)`
-/

namespace A026242.P4643904410858837781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A026350 (n + 2)

end

end A026242.P4643904410858837781

namespace A026242

/-- `A057428(n+1)+A026350(n+2)` -/
def P4643904410858837781.Spec : Prop :=
  ∀ n, P4643904410858837781.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P9293387288308261442

`A003603(∑[A000201(n+2)%A000201(n+1)]+1)`
-/

namespace A026242.P9293387288308261442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000201 (n + 2)) (A000201 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A026242.P9293387288308261442

namespace A026242

/-- `A003603(∑[A000201(n+2)%A000201(n+1)]+1)` -/
def P9293387288308261442.Spec : Prop :=
  ∀ n, P9293387288308261442.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P17022624641496785803

`A026354(n+3)-2`
-/

namespace A026242.P17022624641496785803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026354 (n + 3) - 2

end

end A026242.P17022624641496785803

namespace A026242

/-- `A026354(n+3)-2` -/
def P17022624641496785803.Spec : Prop :=
  ∀ n, P17022624641496785803.a n = A026242 (n + 1)

end A026242

/-! ## A026242.P13216391482558976715

`A065033(A072062(n+1))`
-/

namespace A026242.P13216391482558976715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A072062 (n + 1)).toNat

end

end A026242.P13216391482558976715

namespace A026242

/-- `A065033(A072062(n+1))` -/
def P13216391482558976715.Spec : Prop :=
  ∀ n, P13216391482558976715.a n = A026242 (n + 1)

end A026242

/-!
# A026243: a(n) = A000522(n) - 2.

The programs for A026243, the canonical program `A026243.P12910057060795665228` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026243 has offset 1).

The definition of A026243 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000522(n+1)-2` (program `A026243.P12910057060795665228`, by `A026243.P12910057060795665228.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A026243.P14650327464488619701

`floor(e*(n+1)!)-2`
-/

namespace A026243.P14650327464488619701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (Nat.factorial (n + 1) : ℝ)⌋ - 2

end

end A026243.P14650327464488619701

namespace A026243

/-- `floor(e*(n+1)!)-2` -/
def P14650327464488619701.Spec : Prop :=
  ∀ n, P14650327464488619701.a n = A026243 (n + 1)

end A026243

/-! ## A026243.P11113837515427711063

`(n+1)*(a(n-1)+2)-1` with `a(0)=0`
-/

namespace A026243.P11113837515427711063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) + 2) - 1

end

end A026243.P11113837515427711063

namespace A026243

/-- `(n+1)*(a(n-1)+2)-1` -/
def P11113837515427711063.Spec : Prop :=
  ∀ n, P11113837515427711063.a n = A026243 (n + 1)

end A026243

/-! ## A026243.P12910057060795665228

`A000522(n+1)-2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026243

/-- `A000522(n+1)-2` -/
def P12910057060795665228.Spec : Prop :=
  ∀ n, P12910057060795665228.a n = A026243 (n + 1)

theorem P12910057060795665228.correct : P12910057060795665228.Spec := by
  intro n
  simp only [A026243, Nat.add_sub_cancel]

end A026243

/-! ## A026243.P1316487462147030669

`∑[floor(Δ[e*n!])]+n`
-/

namespace A026243.P1316487462147030669
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A026243.P1316487462147030669

namespace A026243

/-- `∑[floor(Δ[e*n!])]+n` -/
def P1316487462147030669.Spec : Prop :=
  ∀ n, P1316487462147030669.a n = A026243 (n + 1)

end A026243

/-! ## A026243.P2689323688251462607

`∑[or(1, floor(Δ[e*n!]))]-1`
-/

namespace A026243.P2689323688251462607
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A026243.P2689323688251462607

namespace A026243

/-- `∑[or(1, floor(Δ[e*n!]))]-1` -/
def P2689323688251462607.Spec : Prop :=
  ∀ n, P2689323688251462607.a n = A026243 (n + 1)

end A026243

/-! ## A026243.P3173009068147041125

`∑[xor(1, floor(Δ[e*n!]))]-1`
-/

namespace A026243.P3173009068147041125
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A026243.P3173009068147041125

namespace A026243

/-- `∑[xor(1, floor(Δ[e*n!]))]-1` -/
def P3173009068147041125.Spec : Prop :=
  ∀ n, P3173009068147041125.a n = A026243 (n + 1)

end A026243

/-! ## A026243.P8636569022980357587

`∑[n!*∑[∑[1/n!]]]-1`
-/

namespace A026243.P8636569022980357587
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A026243.P8636569022980357587

namespace A026243

/-- `∑[n!*∑[∑[1/n!]]]-1` -/
def P8636569022980357587.Spec : Prop :=
  ∀ n, P8636569022980357587.a n = (A026243 (n + 1) : ℚ)

end A026243

/-! ## A026243.P13420410207247378486

`lcm(n+1, a(n-1)+1)+n` with `a(0)=0`
-/

namespace A026243.P13420410207247378486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (n + 1) (a (n - 1) + 1) + n

end

end A026243.P13420410207247378486

namespace A026243

/-- `lcm(n+1, a(n-1)+1)+n` -/
def P13420410207247378486.Spec : Prop :=
  ∀ n, (P13420410207247378486.a n : ℤ) = A026243 (n + 1)

end A026243

/-! ## A026243.P7922619722390808899

`∑[abs(Δ[n*(a(n-1)-1)])]-1` with `a(0)=0`
-/

namespace A026243.P7922619722390808899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A026243.P7922619722390808899

namespace A026243

/-- `∑[abs(Δ[n*(a(n-1)-1)])]-1` -/
def P7922619722390808899.Spec : Prop :=
  ∀ n, P7922619722390808899.a n = A026243 (n + 1)

end A026243

/-! ## A026243.P6268015080719394216

`a(n-1)-Δ[n*(a(n-1)-1)]` with `a(0)=0`
-/

namespace A026243.P6268015080719394216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) * (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A026243.P6268015080719394216

namespace A026243

/-- `a(n-1)-Δ[n*(a(n-1)-1)]` -/
def P6268015080719394216.Spec : Prop :=
  ∀ n, P6268015080719394216.a n = A026243 (n + 1)

end A026243

/-!
# A026244: a(n) = 4^n*(4^n+1)/2.

The programs for A026244, the canonical program `A026244.P15645207980257245531` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026244 has offset 0).

The definition of A026244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026244.P15645207980257245531

`4^n*(4^n+1)/2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026244

/-- `4^n*(4^n+1)/2` -/
def P15645207980257245531.Spec : Prop :=
  ∀ n, P15645207980257245531.a n = (A026244 n : ℚ)

end A026244

/-! ## A026244.P6181126721579121609

`record[or(ceil(2^(n-1)), ceil((-4)^n/2))]`
-/

namespace A026244.P6181126721579121609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ⌈((-4) ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026244.P6181126721579121609

namespace A026244

/-- `record[or(ceil(2^(n-1)), ceil((-4)^n/2))]` -/
def P6181126721579121609.Spec : Prop :=
  ∀ n, P6181126721579121609.a n = A026244 n

end A026244

/-! ## A026244.P1129149907841649637

`record[(and(-2, 2^n)+1)*ceil(2^(n-1))*(-1)^n]`
-/

namespace A026244.P1129149907841649637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (2 ^ n : ℤ) + 1) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026244.P1129149907841649637

namespace A026244

/-- `record[(and(-2, 2^n)+1)*ceil(2^(n-1))*(-1)^n]` -/
def P1129149907841649637.Spec : Prop :=
  ∀ n, P1129149907841649637.a n = A026244 n

end A026244

/-! ## A026244.P12296379718563244123

`A003665(2*n)`
-/

namespace A026244.P12296379718563244123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003665 (2 * n)

end

end A026244.P12296379718563244123

namespace A026244

/-- `A003665(2*n)` -/
def P12296379718563244123.Spec : Prop :=
  ∀ n, P12296379718563244123.a n = A026244 n

end A026244

/-! ## A026244.P14861342641715607495

`A007582(2*n)`
-/

namespace A026244.P14861342641715607495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 (2 * n)

end

end A026244.P14861342641715607495

namespace A026244

/-- `A007582(2*n)` -/
def P14861342641715607495.Spec : Prop :=
  ∀ n, P14861342641715607495.a n = A026244 n

end A026244

/-! ## A026244.P16246675096639906853

`A032121(2*n)`
-/

namespace A026244.P16246675096639906853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032121 (2 * n)

end

end A026244.P16246675096639906853

namespace A026244

/-- `A032121(2*n)` -/
def P16246675096639906853.Spec : Prop :=
  ∀ n, P16246675096639906853.a n = A026244 n

end A026244

/-! ## A026244.P11313909788872140451

`A377946(Δ[n²])`
-/

namespace A026244.P11313909788872140451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377946 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A026244.P11313909788872140451

namespace A026244

/-- `A377946(Δ[n²])` -/
def P11313909788872140451.Spec : Prop :=
  ∀ n, P11313909788872140451.a n = A026244 n

end A026244

/-! ## A026244.P14931004329658544815

`A281481(2*n)-1`
-/

namespace A026244.P14931004329658544815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281481 (2 * n) - 1

end

end A026244.P14931004329658544815

namespace A026244

/-- `A281481(2*n)-1` -/
def P14931004329658544815.Spec : Prop :=
  ∀ n, P14931004329658544815.a n = A026244 n

end A026244

/-! ## A026244.P11733257502037866580

`A005418(4*n+1)`
-/

namespace A026244.P11733257502037866580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (4 * n + 1)

end

end A026244.P11733257502037866580

namespace A026244

/-- `A005418(4*n+1)` -/
def P11733257502037866580.Spec : Prop :=
  ∀ n, P11733257502037866580.a n = A026244 n

end A026244

/-! ## A026244.P11374174447538104828

`A026337(n)+A000302(n)`
-/

namespace A026244.P11374174447538104828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026337 n + A000302 n

end

end A026244.P11374174447538104828

namespace A026244

/-- `A026337(n)+A000302(n)` -/
def P11374174447538104828.Spec : Prop :=
  ∀ n, P11374174447538104828.a n = A026244 n

end A026244

/-!
# A026245: a(n) = (1/2)*(s(n) + 1), where s(n) is the n-th odd number in A002251.

The programs for A026245, there is no canonical definition to state claims against.
-/

/-! ## A026245.P12003921171919875855

`A066328(p?[A207790(A019444(n+1))])`
-/

namespace A026245.P12003921171919875855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A019444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026245.P12003921171919875855

/-! ## A026245.P8621315189738022859

`A049084(p?[A207790(A019444(n+1))])`
-/

namespace A026245.P8621315189738022859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A019444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026245.P8621315189738022859

/-!
# A026249: a(n) = j if n = [ j*sqrt(2) ], else a(n) = k if n = [ k*(2 + sqrt(2)) ].

The programs for A026249, the canonical program `A026249.P5299804575068387705` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026249 has offset 1).

The definition of A026249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026249.P15220225157288205802

`A026251(n+1)/2`
-/

namespace A026249.P15220225157288205802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026251 (n + 1) : ℚ) / 2

end

end A026249.P15220225157288205802

namespace A026249

/-- `A026251(n+1)/2` -/
def P15220225157288205802.Spec : Prop :=
  ∀ n, P15220225157288205802.a n = (A026249 (n + 1) : ℚ)

end A026249

/-! ## A026249.P5299804575068387705

`ceil(abs(n+1-A026250(n+1))/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026249

/-- `ceil(abs(n+1-A026250(n+1))/2)` -/
def P5299804575068387705.Spec : Prop :=
  ∀ n, P5299804575068387705.a n = A026249 (n + 1)

theorem P5299804575068387705.correct : P5299804575068387705.Spec := by
  intro n
  simp only [A026249, Nat.add_sub_cancel]

end A026249

/-! ## A026249.P4117474227609620229

`A305425(A026251(n+1)-char[1])`
-/

namespace A026249.P4117474227609620229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A026251 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A026249.P4117474227609620229

namespace A026249

/-- `A305425(A026251(n+1)-char[1])` -/
def P4117474227609620229.Spec : Prop :=
  ∀ n, P4117474227609620229.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P4579675388451584798

`A305425(A026251(n+1)+2)-1`
-/

namespace A026249.P4579675388451584798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A026251 (n + 1) + 2).toNat - 1

end

end A026249.P4579675388451584798

namespace A026249

/-- `A305425(A026251(n+1)+2)-1` -/
def P4579675388451584798.Spec : Prop :=
  ∀ n, P4579675388451584798.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P37686990585743679

`A008619(A026251(n+1)-2)`
-/

namespace A026249.P37686990585743679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026251 (n + 1) - 2).toNat

end

end A026249.P37686990585743679

namespace A026249

/-- `A008619(A026251(n+1)-2)` -/
def P37686990585743679.Spec : Prop :=
  ∀ n, P37686990585743679.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P14547067626310743456

`A078898(A026251(n+1))`
-/

namespace A026249.P14547067626310743456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A026251 (n + 1)).toNat

end

end A026249.P14547067626310743456

namespace A026249

/-- `A078898(A026251(n+1))` -/
def P14547067626310743456.Spec : Prop :=
  ∀ n, P14547067626310743456.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P15224637684719947406

`A001057(A026251(n+1)-1)`
-/

namespace A026249.P15224637684719947406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A026251 (n + 1) - 1).toNat

end

end A026249.P15224637684719947406

namespace A026249

/-- `A001057(A026251(n+1)-1)` -/
def P15224637684719947406.Spec : Prop :=
  ∀ n, P15224637684719947406.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P201047019746325248

`A065033(A026251(n+1)-1)`
-/

namespace A026249.P201047019746325248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026251 (n + 1) - 1).toNat

end

end A026249.P201047019746325248

namespace A026249

/-- `A065033(A026251(n+1)-1)` -/
def P201047019746325248.Spec : Prop :=
  ∀ n, P201047019746325248.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P5254477569461719998

`A123108(A026251(n+1)-1)+1`
-/

namespace A026249.P5254477569461719998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A026251 (n + 1) - 1).toNat + 1

end

end A026249.P5254477569461719998

namespace A026249

/-- `A123108(A026251(n+1)-1)+1` -/
def P5254477569461719998.Spec : Prop :=
  ∀ n, P5254477569461719998.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P6458957284291982610

`A123108(A026251(n+1)+1)`
-/

namespace A026249.P6458957284291982610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A026251 (n + 1) + 1).toNat

end

end A026249.P6458957284291982610

namespace A026249

/-- `A123108(A026251(n+1)+1)` -/
def P6458957284291982610.Spec : Prop :=
  ∀ n, P6458957284291982610.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P1630551353971790277

`A065033(A026251(n+1)%A001359(n+1))`
-/

namespace A026249.P1630551353971790277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.tmod (A026251 (n + 1)) (A001359 (n + 1))).toNat

end

end A026249.P1630551353971790277

namespace A026249

/-- `A065033(A026251(n+1)%A001359(n+1))` -/
def P1630551353971790277.Spec : Prop :=
  ∀ n, P1630551353971790277.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P6819455397338422621

`gcd(A004016(n)%2, A065033(A026251(n+1)))`
-/

namespace A026249.P6819455397338422621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A004016 n) 2) (A065033 (A026251 (n + 1)).toNat)

end

end A026249.P6819455397338422621

namespace A026249

/-- `gcd(A004016(n)%2, A065033(A026251(n+1)))` -/
def P6819455397338422621.Spec : Prop :=
  ∀ n, (P6819455397338422621.a n : ℤ) = A026249 (n + 1)

end A026249

/-! ## A026249.P8941678705482151930

`A065033(A026251(n+1))%(A000040(n+1)+1)`
-/

namespace A026249.P8941678705482151930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A026251 (n + 1)).toNat) (A000040 (n + 1) + 1)

end

end A026249.P8941678705482151930

namespace A026249

/-- `A065033(A026251(n+1))%(A000040(n+1)+1)` -/
def P8941678705482151930.Spec : Prop :=
  ∀ n, P8941678705482151930.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P130255176448974970

`A001281(A026251(n+1)+2)-1`
-/

namespace A026249.P130255176448974970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A026251 (n + 1) + 2).toNat - 1

end

end A026249.P130255176448974970

namespace A026249

/-- `A001281(A026251(n+1)+2)-1` -/
def P130255176448974970.Spec : Prop :=
  ∀ n, P130255176448974970.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P5286970134032409501

`A049474(A026250(n+1))%(n+2)`
-/

namespace A026249.P5286970134032409501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049474 (A026250 (n + 1)).toNat) (n + 2 : ℤ)

end

end A026249.P5286970134032409501

namespace A026249

/-- `A049474(A026250(n+1))%(n+2)` -/
def P5286970134032409501.Spec : Prop :=
  ∀ n, P5286970134032409501.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P18158733649357306639

`A002265(2*A026251(n+1))`
-/

namespace A026249.P18158733649357306639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A026251 (n + 1)).toNat

end

end A026249.P18158733649357306639

namespace A026249

/-- `A002265(2*A026251(n+1))` -/
def P18158733649357306639.Spec : Prop :=
  ∀ n, P18158733649357306639.a n = A026249 (n + 1)

end A026249

/-! ## A026249.P7919653774784660413

`A002265(A026251(n+1)+A026251(n+1)+1)`
-/

namespace A026249.P7919653774784660413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A026251 (n + 1) + (A026251 (n + 1) + 1)).toNat

end

end A026249.P7919653774784660413

namespace A026249

/-- `A002265(A026251(n+1)+A026251(n+1)+1)` -/
def P7919653774784660413.Spec : Prop :=
  ∀ n, P7919653774784660413.a n = A026249 (n + 1)

end A026249

/-!
# A026250: Beginning with the natural numbers, swap [ k*sqrt(2) ] and [ k*(2 + sqrt(2)) ], for all k >= 1.

The programs for A026250, the canonical program `A026250.P4732241892456798678` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026250 has offset 1).

The definition of A026250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026250.P14061928369281414263

`A022804(A026249(n+1))-(n+1)`
-/

namespace A026250.P14061928369281414263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 (A026249 (n + 1)).toNat - (n + 1 : ℤ)

end

end A026250.P14061928369281414263

namespace A026250

/-- `A022804(A026249(n+1))-(n+1)` -/
def P14061928369281414263.Spec : Prop :=
  ∀ n, P14061928369281414263.a n = A026250 (n + 1)

end A026250

/-! ## A026250.P16508519698692813479

`A022804(A026251(n+1)/2)-(n+1)`
-/

namespace A026250.P16508519698692813479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 (SequenceMachineLib.roundAway ((A026251 (n + 1) : ℚ) / 2)).toNat - (n + 1 : ℤ)

end

end A026250.P16508519698692813479

namespace A026250

/-- `A022804(A026251(n+1)/2)-(n+1)` -/
def P16508519698692813479.Spec : Prop :=
  ∀ n, P16508519698692813479.a n = A026250 (n + 1)

end A026250

/-! ## A026250.P4732241892456798678

`Δ[2*(n+1)*A049472(n+1)]-(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026250

/-- `Δ[2*(n+1)*A049472(n+1)]-(n+1)` -/
def P4732241892456798678.Spec : Prop :=
  ∀ n, P4732241892456798678.a n = A026250 (n + 1)

theorem P4732241892456798678.correct : P4732241892456798678.Spec := by
  intro n
  simp only [A026250, Nat.add_sub_cancel]

end A026250

/-! ## A026250.P13044360160296403658

`A188376(A026251(n+1))-(n+1)`
-/

namespace A026250.P13044360160296403658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (A026251 (n + 1)).toNat - (n + 1 : ℤ)

end

end A026250.P13044360160296403658

namespace A026250

/-- `A188376(A026251(n+1))-(n+1)` -/
def P13044360160296403658.Spec : Prop :=
  ∀ n, P13044360160296403658.a n = A026250 (n + 1)

end A026250

/-! ## A026250.P14602875293208869744

`A188376(2*A026249(n+1))-(n+1)`
-/

namespace A026250.P14602875293208869744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (2 * A026249 (n + 1)).toNat - (n + 1 : ℤ)

end

end A026250.P14602875293208869744

namespace A026250

/-- `A188376(2*A026249(n+1))-(n+1)` -/
def P14602875293208869744.Spec : Prop :=
  ∀ n, P14602875293208869744.a n = A026250 (n + 1)

end A026250

/-! ## A026250.P3738019994566670612

`2*A001057(A115966(n+1))+1+n`
-/

namespace A026250.P3738019994566670612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001057 (A115966 (n + 1)).toNat + 1 + (n : ℤ)

end

end A026250.P3738019994566670612

namespace A026250

/-- `2*A001057(A115966(n+1))+1+n` -/
def P3738019994566670612.Spec : Prop :=
  ∀ n, P3738019994566670612.a n = A026250 (n + 1)

end A026250

/-! ## A026250.P4675944142755554259

`A022804(ceil(A115966(n+1)/2))-(n+1)`
-/

namespace A026250.P4675944142755554259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022804 ⌈(A115966 (n + 1) : ℚ) / 2⌉.toNat - (n + 1 : ℤ)

end

end A026250.P4675944142755554259

namespace A026250

/-- `A022804(ceil(A115966(n+1)/2))-(n+1)` -/
def P4675944142755554259.Spec : Prop :=
  ∀ n, P4675944142755554259.a n = A026250 (n + 1)

end A026250

/-! ## A026250.P5787771163412852494

`A187968(A026251(n+1))+A001057(A115966(n+1))`
-/

namespace A026250.P5787771163412852494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (A026251 (n + 1)).toNat + A001057 (A115966 (n + 1)).toNat

end

end A026250.P5787771163412852494

namespace A026250

/-- `A187968(A026251(n+1))+A001057(A115966(n+1))` -/
def P5787771163412852494.Spec : Prop :=
  ∀ n, P5787771163412852494.a n = A026250 (n + 1)

end A026250

/-! ## A026250.P14383849238814403727

`∑[Δ[2*A130527(n)]+1]`
-/

namespace A026250.P14383849238814403727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026250.P14383849238814403727

namespace A026250

/-- `∑[Δ[2*A130527(n)]+1]` -/
def P14383849238814403727.Spec : Prop :=
  ∀ n, P14383849238814403727.a n = A026250 (n + 1)

end A026250

/-! ## A026250.P12735561490047994709

`2*A130527(n+1)+1+n`
-/

namespace A026250.P12735561490047994709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130527 (n + 1) + 1 + (n : ℤ)

end

end A026250.P12735561490047994709

namespace A026250

/-- `2*A130527(n+1)+1+n` -/
def P12735561490047994709.Spec : Prop :=
  ∀ n, P12735561490047994709.a n = A026250 (n + 1)

end A026250

/-!
# A026251: a(n) = |s(n) - n|, where s = A026250. Also a(n) = 2*t(n), where t = A026249.

The programs for A026251, the canonical program `A026251.P7134416135270076079` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026251 has offset 1).

The definition of A026251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026251.P4087470237689423035

`2*A026249(n+1)`
-/

namespace A026251.P4087470237689423035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026249 (n + 1)

end

end A026251.P4087470237689423035

namespace A026251

/-- `2*A026249(n+1)` -/
def P4087470237689423035.Spec : Prop :=
  ∀ n, P4087470237689423035.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P7134416135270076079

`abs(1-A026250(n+1)+n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026251

/-- `abs(1-A026250(n+1)+n)` -/
def P7134416135270076079.Spec : Prop :=
  ∀ n, P7134416135270076079.a n = A026251 (n + 1)

theorem P7134416135270076079.correct : P7134416135270076079.Spec := by
  intro n
  simp only [A026251, Nat.add_sub_cancel]

end A026251

/-! ## A026251.P4916600576240796204

`A004277(A026249(n+1))`
-/

namespace A026251.P4916600576240796204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A026249 (n + 1)).toNat

end

end A026251.P4916600576240796204

namespace A026251

/-- `A004277(A026249(n+1))` -/
def P4916600576240796204.Spec : Prop :=
  ∀ n, P4916600576240796204.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P16209128999561038207

`A004275(A026249(n+1)+1)`
-/

namespace A026251.P16209128999561038207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A026249 (n + 1) + 1).toNat

end

end A026251.P16209128999561038207

namespace A026251

/-- `A004275(A026249(n+1)+1)` -/
def P16209128999561038207.Spec : Prop :=
  ∀ n, P16209128999561038207.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P3363725582919083817

`A004273(A026249(n+1)+1)-1`
-/

namespace A026251.P3363725582919083817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026249 (n + 1) + 1).toNat - 1

end

end A026251.P3363725582919083817

namespace A026251

/-- `A004273(A026249(n+1)+1)-1` -/
def P3363725582919083817.Spec : Prop :=
  ∀ n, P3363725582919083817.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P18009114225676072519

`A005843(A026249(n+1)%(n+2))`
-/

namespace A026251.P18009114225676072519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A026249 (n + 1)) (n + 2 : ℤ)).toNat

end

end A026251.P18009114225676072519

namespace A026251

/-- `A005843(A026249(n+1)%(n+2))` -/
def P18009114225676072519.Spec : Prop :=
  ∀ n, P18009114225676072519.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P3735566160706447786

`gcd(n+1-A026250(n+1), A000038(n))`
-/

namespace A026251.P3735566160706447786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A026250 (n + 1)) (A000038 n)

end

end A026251.P3735566160706447786

namespace A026251

/-- `gcd(n+1-A026250(n+1), A000038(n))` -/
def P3735566160706447786.Spec : Prop :=
  ∀ n, (P3735566160706447786.a n : ℤ) = A026251 (n + 1)

end A026251

/-! ## A026251.P13059858280684075761

`A026249(∑[n+1]-∑[n])+A026249(n+1)`
-/

namespace A026251.P13059858280684075761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A026249 (n + 1)

end

end A026251.P13059858280684075761

namespace A026251

/-- `A026249(∑[n+1]-∑[n])+A026249(n+1)` -/
def P13059858280684075761.Spec : Prop :=
  ∀ n, P13059858280684075761.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P2748156418605306283

`lcm(A000034(n), A005843(A026249(n+1)))`
-/

namespace A026251.P2748156418605306283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A005843 (A026249 (n + 1)).toNat)

end

end A026251.P2748156418605306283

namespace A026251

/-- `lcm(A000034(n), A005843(A026249(n+1)))` -/
def P2748156418605306283.Spec : Prop :=
  ∀ n, (P2748156418605306283.a n : ℤ) = A026251 (n + 1)

end A026251

/-! ## A026251.P16962453040179344114

`filter[A026249(n+1), A059841(#)]`
-/

namespace A026251.P16962453040179344114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A026251.P16962453040179344114

namespace A026251

/-- `filter[A026249(n+1), A059841(#)]` -/
def P16962453040179344114.Spec : Prop :=
  ∀ n, P16962453040179344114.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P15404481339423678399

`A000267(A026249(n+1)²)`
-/

namespace A026251.P15404481339423678399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A026249 (n + 1) ^ 2).toNat

end

end A026251.P15404481339423678399

namespace A026251

/-- `A000267(A026249(n+1)²)` -/
def P15404481339423678399.Spec : Prop :=
  ∀ n, P15404481339423678399.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P13982573084699806449

`A063655(A026249(n+1)²)`
-/

namespace A026251.P13982573084699806449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A026249 (n + 1) ^ 2).toNat

end

end A026251.P13982573084699806449

namespace A026251

/-- `A063655(A026249(n+1)²)` -/
def P13982573084699806449.Spec : Prop :=
  ∀ n, P13982573084699806449.a n = A026251 (n + 1)

end A026251

/-! ## A026251.P16683432892736500319

`A063655(A026249(n+1)^2)`
-/

namespace A026251.P16683432892736500319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A026249 (n + 1) ^ 2).toNat

end

end A026251.P16683432892736500319

namespace A026251

/-- `A063655(A026249(n+1)^2)` -/
def P16683432892736500319.Spec : Prop :=
  ∀ n, P16683432892736500319.a n = A026251 (n + 1)

end A026251

/-!
# A026252: a(n) = (1/2)*(s(n) + 1), where s(n) is the n-th odd number in A026250. Also a(n) = position of n in A026252.

The programs for A026252, the canonical program `A026252.P5150289340937340239` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026252 has offset 1).

The definition of A026252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026252.P8045777021962806189

`ceil(A026250(2*n+1)/2)`
-/

namespace A026252.P8045777021962806189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A026250 (2 * n + 1) : ℚ) / 2⌉

end

end A026252.P8045777021962806189

namespace A026252

/-- `ceil(A026250(2*n+1)/2)` -/
def P8045777021962806189.Spec : Prop :=
  ∀ n, P8045777021962806189.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P13826119694893727583

`A014682(A026250(2*n+1)+1)`
-/

namespace A026252.P13826119694893727583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A026250 (2 * n + 1) + 1).toNat

end

end A026252.P13826119694893727583

namespace A026252

/-- `A014682(A026250(2*n+1)+1)` -/
def P13826119694893727583.Spec : Prop :=
  ∀ n, P13826119694893727583.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P14306006948731875988

`A003151(A026249(2*n+1))-n`
-/

namespace A026252.P14306006948731875988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A026249 (2 * n + 1)).toNat - (n : ℤ)

end

end A026252.P14306006948731875988

namespace A026252

/-- `A003151(A026249(2*n+1))-n` -/
def P14306006948731875988.Spec : Prop :=
  ∀ n, P14306006948731875988.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P5150289340937340239

`A001951(n+1)+A001057(A001951(A001951(n+1)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026252

/-- `A001951(n+1)+A001057(A001951(A001951(n+1)))` -/
def P5150289340937340239.Spec : Prop :=
  ∀ n, P5150289340937340239.a n = A026252 (n + 1)

theorem P5150289340937340239.correct : P5150289340937340239.Spec := by
  intro n
  simp only [A026252, Nat.add_sub_cancel]

end A026252

/-! ## A026252.P3059686397804816554

`A249122(A026250(2*n+1)+2)`
-/

namespace A026252.P3059686397804816554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A026250 (2 * n + 1) + 2).toNat

end

end A026252.P3059686397804816554

namespace A026252

/-- `A249122(A026250(2*n+1)+2)` -/
def P3059686397804816554.Spec : Prop :=
  ∀ n, P3059686397804816554.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P6277669882112659823

`A187968(A026251(2*n+1))-n`
-/

namespace A026252.P6277669882112659823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (A026251 (2 * n + 1)).toNat - (n : ℤ)

end

end A026252.P6277669882112659823

namespace A026252

/-- `A187968(A026251(2*n+1))-n` -/
def P6277669882112659823.Spec : Prop :=
  ∀ n, P6277669882112659823.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P11354807345979373779

`A065033(A026250(Δ[n²]))`
-/

namespace A026252.P11354807345979373779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A026252.P11354807345979373779

namespace A026252

/-- `A065033(A026250(Δ[n²]))` -/
def P11354807345979373779.Spec : Prop :=
  ∀ n, P11354807345979373779.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P4030154095631952723

`A008619(A026250(2*n+1))`
-/

namespace A026252.P4030154095631952723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026250 (2 * n + 1)).toNat

end

end A026252.P4030154095631952723

namespace A026252

/-- `A008619(A026250(2*n+1))` -/
def P4030154095631952723.Spec : Prop :=
  ∀ n, P4030154095631952723.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P16865822186903042685

`A004526(A026250(2*n+1)+1)`
-/

namespace A026252.P16865822186903042685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026250 (2 * n + 1) + 1).toNat

end

end A026252.P16865822186903042685

namespace A026252

/-- `A004526(A026250(2*n+1)+1)` -/
def P16865822186903042685.Spec : Prop :=
  ∀ n, P16865822186903042685.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P8884727837689609074

`A026741(A026250(2*n+1)+1)`
-/

namespace A026252.P8884727837689609074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026250 (2 * n + 1) + 1).toNat

end

end A026252.P8884727837689609074

namespace A026252

/-- `A026741(A026250(2*n+1)+1)` -/
def P8884727837689609074.Spec : Prop :=
  ∀ n, P8884727837689609074.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P4721038537862151632

`A065033(A026250(2*n+1)+1)`
-/

namespace A026252.P4721038537862151632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026250 (2 * n + 1) + 1).toNat

end

end A026252.P4721038537862151632

namespace A026252

/-- `A065033(A026250(2*n+1)+1)` -/
def P4721038537862151632.Spec : Prop :=
  ∀ n, P4721038537862151632.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P15432756751358515647

`A026249(A022804(n+1)-2)-n`
-/

namespace A026252.P15432756751358515647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A022804 (n + 1) - 2).toNat - (n : ℤ)

end

end A026252.P15432756751358515647

namespace A026252

/-- `A026249(A022804(n+1)-2)-n` -/
def P15432756751358515647.Spec : Prop :=
  ∀ n, P15432756751358515647.a n = A026252 (n + 1)

end A026252

/-! ## A026252.P5350667743841299177

`A026806(3*A026250(2*n+1))`
-/

namespace A026252.P5350667743841299177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (3 * A026250 (2 * n + 1)).toNat

end

end A026252.P5350667743841299177

namespace A026252

/-- `A026806(3*A026250(2*n+1))` -/
def P5350667743841299177.Spec : Prop :=
  ∀ n, P5350667743841299177.a n = A026252 (n + 1)

end A026252

/-!
# A026253: a(n) = (1/2)*s(n), where s(n) is the n-th even number in A026250. Also a(n) = position of n in A026253.

The programs for A026253, the canonical program `A026253.P14152484696363189217` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026253 has offset 1).

The definition of A026253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026253.P10783718169457641868

`A026250(2*(n+1))/2`
-/

namespace A026253.P10783718169457641868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026250 (2 * (n + 1)) : ℚ) / 2

end

end A026253.P10783718169457641868

namespace A026253

/-- `A026250(2*(n+1))/2` -/
def P10783718169457641868.Spec : Prop :=
  ∀ n, P10783718169457641868.a n = (A026253 (n + 1) : ℚ)

end A026253

/-! ## A026253.P14152484696363189217

`A014682(A026250(2*(n+1)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026253

/-- `A014682(A026250(2*(n+1)))` -/
def P14152484696363189217.Spec : Prop :=
  ∀ n, P14152484696363189217.a n = A026253 (n + 1)

theorem P14152484696363189217.correct : P14152484696363189217.Spec := by
  intro n
  simp only [A026253, Nat.add_sub_cancel]

end A026253

/-! ## A026253.P3550660461970060381

`A249122(A026250(2*(n+1))+1)`
-/

namespace A026253.P3550660461970060381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A026250 (2 * (n + 1)) + 1).toNat

end

end A026253.P3550660461970060381

namespace A026253

/-- `A249122(A026250(2*(n+1))+1)` -/
def P3550660461970060381.Spec : Prop :=
  ∀ n, P3550660461970060381.a n = A026253 (n + 1)

end A026253

/-! ## A026253.P13364698744175333526

`A187968(A026251(2*(n+1)))-(n+1)`
-/

namespace A026253.P13364698744175333526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (A026251 (2 * (n + 1))).toNat - (n + 1 : ℤ)

end

end A026253.P13364698744175333526

namespace A026253

/-- `A187968(A026251(2*(n+1)))-(n+1)` -/
def P13364698744175333526.Spec : Prop :=
  ∀ n, P13364698744175333526.a n = A026253 (n + 1)

end A026253

/-! ## A026253.P6968454260375821201

`A008619(A026250(2*(n+1))-1)`
-/

namespace A026253.P6968454260375821201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A026250 (2 * (n + 1)) - 1).toNat

end

end A026253.P6968454260375821201

namespace A026253

/-- `A008619(A026250(2*(n+1))-1)` -/
def P6968454260375821201.Spec : Prop :=
  ∀ n, P6968454260375821201.a n = A026253 (n + 1)

end A026253

/-! ## A026253.P16732004096523674622

`A065033(A026250(2*(n+1))-1)`
-/

namespace A026253.P16732004096523674622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026250 (2 * (n + 1)) - 1).toNat

end

end A026253.P16732004096523674622

namespace A026253

/-- `A065033(A026250(2*(n+1))-1)` -/
def P16732004096523674622.Spec : Prop :=
  ∀ n, P16732004096523674622.a n = A026253 (n + 1)

end A026253

/-! ## A026253.P579551748091506672

`A004526(A026250(2*n+2))`
-/

namespace A026253.P579551748091506672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026250 (2 * n + 2)).toNat

end

end A026253.P579551748091506672

namespace A026253

/-- `A004526(A026250(2*n+2))` -/
def P579551748091506672.Spec : Prop :=
  ∀ n, P579551748091506672.a n = A026253 (n + 1)

end A026253

/-! ## A026253.P1918400646542961624

`A065033(A026250(Δ[n*(n+1)]))`
-/

namespace A026253.P1918400646542961624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026250 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A026253.P1918400646542961624

namespace A026253

/-- `A065033(A026250(Δ[n*(n+1)]))` -/
def P1918400646542961624.Spec : Prop :=
  ∀ n, P1918400646542961624.a n = A026253 (n + 1)

end A026253

/-! ## A026253.P7137523483325600241

`A214394(3*A026250(2*(n+1)))`
-/

namespace A026253.P7137523483325600241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214394 (3 * A026250 (2 * (n + 1))).toNat

end

end A026253.P7137523483325600241

namespace A026253

/-- `A214394(3*A026250(2*(n+1)))` -/
def P7137523483325600241.Spec : Prop :=
  ∀ n, P7137523483325600241.a n = A026253 (n + 1)

end A026253

/-!
# A026254: a(n) = j if n = [ j*sqrt(3) ], else a(n) = k if n = [ (k/2)*(3 + sqrt(3)) ].

The programs for A026254, there is no canonical definition to state claims against.
-/

/-! ## A026254.P15884560331605667498

`A289437(lt[A202015(n+1), A079025(n)])`
-/

namespace A026254.P15884560331605667498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026254.P15884560331605667498

/-! ## A026254.P4034843124573685366

`A065033(xor(A002266(n), A077168(n)))`
-/

namespace A026254.P4034843124573685366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.xor (A002266 n) (A077168 n)).toNat

end

end A026254.P4034843124573685366

/-! ## A026254.P17703433013334845308

`A000120(∑[A376633(n+1)+A004148(n)])`
-/

namespace A026254.P17703433013334845308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376633 (n + 1) + A004148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A026254.P17703433013334845308

/-! ## A026254.P29237494462589006

`A054030(A274148(2*n)%A195090(n+1))`
-/

namespace A026254.P29237494462589006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054030 (Int.tmod (A274148 (2 * n)) (A195090 (n + 1))).toNat

end

end A026254.P29237494462589006

/-! ## A026254.P6885874603770426457

`A054030(A274148(2*n))`
-/

namespace A026254.P6885874603770426457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054030 (A274148 (2 * n)).toNat

end

end A026254.P6885874603770426457

/-!
# A026255: Beginning with the natural numbers, swap [ k*sqrt(3) ] and [ (k/2)*(3 + sqrt(3)) ], for all k >= 1.

The programs for A026255, there is no canonical definition to state claims against.
-/

/-! ## A026255.P17808121796870600083

`A022805(A026254(n+1))-(n+1)`
-/

namespace A026255.P17808121796870600083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022805 (A026254 (n + 1)).toNat - (n + 1 : ℤ)

end

end A026255.P17808121796870600083

/-!
# A026256: a(n) = |s(n) - n|, where s = A026255.

The programs for A026256, there is no canonical definition to state claims against.
-/

/-! ## A026256.P604594309070301348

`abs(1-A026255(n+1)+n)`
-/

namespace A026256.P604594309070301348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026255 (n + 1) + (n : ℤ)|

end

end A026256.P604594309070301348

/-! ## A026256.P4675882277488134412

`A014245(A026254(n+1))`
-/

namespace A026256.P4675882277488134412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014245 (A026254 (n + 1)).toNat

end

end A026256.P4675882277488134412

/-! ## A026256.P700511517893579837

`abs(A026255(n+1)+A001478(n+1))`
-/

namespace A026256.P700511517893579837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026255 (n + 1) + A001478 (n + 1)|

end

end A026256.P700511517893579837

/-! ## A026256.P7748872703864121732

`abs(A001478(n+1)+A022805(A026254(n+1))-(n+1))`
-/

namespace A026256.P7748872703864121732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001478 (n + 1) + (A022805 (A026254 (n + 1)).toNat - (n + 1 : ℤ))|

end

end A026256.P7748872703864121732

/-! ## A026256.P10227194809121195860

`A137734((n+1-A026255(n+1))²)`
-/

namespace A026256.P10227194809121195860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (((n + 1 : ℤ) - A026255 (n + 1)) ^ 2).toNat

end

end A026256.P10227194809121195860

/-! ## A026256.P3616411781419349019

`A053188(A026255(n+1)+round(n/acot(n+1)))`
-/

namespace A026256.P3616411781419349019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A026255 (n + 1) + SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))).toNat

end

end A026256.P3616411781419349019

/-! ## A026256.P1261536723101201904

`A053188(A026255(n+1)+A002378(n))`
-/

namespace A026256.P1261536723101201904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A026255 (n + 1) + A002378 n).toNat

end

end A026256.P1261536723101201904

/-!
# A026259: a(n) = (1/2)*s(n), where s(n) is the n-th even number in A026255.

The programs for A026259, there is no canonical definition to state claims against.
-/

/-! ## A026259.P11411021091327263002

`A056239(p?[A207790(A026255(n+1))])`
-/

namespace A026259.P11411021091327263002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A026255 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026259.P11411021091327263002

/-!
# A026261: a(n) = j if n = [ j*sqrt(5) ], else a(n) = k if n = [ (k/4)*(5 + sqrt(5)) ].

The programs for A026261, there is no canonical definition to state claims against.
-/

/-! ## A026261.P3765237532887196170

`A000188(A076272(2*n+1)*A249096(n+1))`
-/

namespace A026261.P3765237532887196170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A076272 (2 * n + 1) * A249096 (n + 1)).toNat

end

end A026261.P3765237532887196170

/-! ## A026261.P5009461270522813462

`A000188(lcm(33, A249096(n+1)))`
-/

namespace A026261.P5009461270522813462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (Int.lcm 33 (A249096 (n + 1)))

end

end A026261.P5009461270522813462

/-! ## A026261.P16287538431707604312

`A000188(A249096(n+1))%A247345(2*n+3)`
-/

namespace A026261.P16287538431707604312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000188 (A249096 (n + 1)).toNat) (A247345 (2 * n + 3))

end

end A026261.P16287538431707604312

/-! ## A026261.P1009759096616862478

`A000188(A249096(n+1)*A341643(n+4))`
-/

namespace A026261.P1009759096616862478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A249096 (n + 1) * A341643 (n + 4)).toNat

end

end A026261.P1009759096616862478

/-! ## A026261.P5259786902567047159

`floor(n/2)+A105812(A147456(n+1))+1`
-/

namespace A026261.P5259786902567047159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (A105812 (A147456 (n + 1)).toNat + 1)

end

end A026261.P5259786902567047159

/-!
# A026262: Beginning with the natural numbers, swap [ k*sqrt(5) ] and [ (k/4)*(5 + sqrt(5)) ], for all k >= 1.

The programs for A026262, there is no canonical definition to state claims against.
-/

/-! ## A026262.P12339074724364336203

`A026234(n+1)-A335460(A000041(n))`
-/

namespace A026262.P12339074724364336203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1) - A335460 (A000041 n).toNat

end

end A026262.P12339074724364336203

/-! ## A026262.P11140343896044839753

`A026234(n+1)-A332640(A081162(n))`
-/

namespace A026262.P11140343896044839753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1) - A332640 (A081162 n).toNat

end

end A026262.P11140343896044839753

/-! ## A026262.P15474158323186716688

`A026234(n+1)-A178798(A328164(n))`
-/

namespace A026262.P15474158323186716688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1) - A178798 (A328164 n).toNat

end

end A026262.P15474158323186716688

/-! ## A026262.P12347091008477286696

`A022797(A026233(n+1))-(n+1)-A332640(A081162(n))`
-/

namespace A026262.P12347091008477286696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (A026233 (n + 1)).toNat - (n + 1 : ℤ) - A332640 (A081162 n).toNat

end

end A026262.P12347091008477286696

/-! ## A026262.P8685538832888604350

`A026234(n+1)-A005089(A218116(n))`
-/

namespace A026262.P8685538832888604350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (n + 1) - A005089 (A218116 n).toNat

end

end A026262.P8685538832888604350

/-!
# A026263: a(n) = |s(n) - n|, where s = A026262.

The programs for A026263, there is no canonical definition to state claims against.
-/

/-! ## A026263.P2534271440576277143

`abs(1-A026262(n+1)+n)`
-/

namespace A026263.P2534271440576277143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A026262 (n + 1) + (n : ℤ)|

end

end A026263.P2534271440576277143

/-! ## A026263.P4250037516842024011

`abs(A026262(n+1)+A001478(n+1))`
-/

namespace A026263.P4250037516842024011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026262 (n + 1) + A001478 (n + 1)|

end

end A026263.P4250037516842024011

/-! ## A026263.P13586857436638550777

`lcm(n+1-A026262(n+1), A033999(n))`
-/

namespace A026263.P13586857436638550777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - A026262 (n + 1)) (A033999 n)

end

end A026263.P13586857436638550777

/-! ## A026263.P2280140043636394418

`lcm(1-A026262(n+1)+n, a(A000034(n)))` with `a(0)=1, a(1)=1`
-/

namespace A026263.P2280140043636394418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (1 - A026262 (n + 1) + (n : ℤ)) (a (A000034 n).toNat : ℤ)

end

end A026263.P2280140043636394418

/-! ## A026263.P6925774572951121253

`A000196((n+1-A026262(n+1))²)`
-/

namespace A026263.P6925774572951121253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((n + 1 : ℤ) - A026262 (n + 1)) ^ 2).toNat

end

end A026263.P6925774572951121253

/-! ## A026263.P14474710684119794096

`A053188(A026262(n+1)+round(n/acot(n+1)))`
-/

namespace A026263.P14474710684119794096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A026262 (n + 1) + SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))).toNat

end

end A026263.P14474710684119794096

/-! ## A026263.P15344878534129805143

`A053188(A026262(n+1)+A002378(n))`
-/

namespace A026263.P15344878534129805143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A026262 (n + 1) + A002378 n).toNat

end

end A026263.P15344878534129805143

/-!
# A026266: a(n) = (1/2)*s(n), where s = A026262.

The programs for A026266, there is no canonical definition to state claims against.
-/

/-! ## A026266.P11188910998727489084

`A056239(p?[A207790(A026262(n+1))])`
-/

namespace A026266.P11188910998727489084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A026262 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026266.P11188910998727489084

/-!
# A026268: Triangle, T(n, k): T(n,k) = 1 for n < 3, T(3,1) = T(3,2) = T(3,3) = 2, T(n,0) = 1, T(n,1) = n-1, T(n,n) = T(n-1,n-2) + T(n-1,n-1), otherwise T(n,k) = T(n-1,k-2) + T(n-1,k-1) + T(n-1,k), read by rows.

The programs for A026268, there is no canonical definition to state claims against.
-/

/-! ## A026268.P718261148339437338

`A235492(A337977(n+1))`
-/

namespace A026268.P718261148339437338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235492 (A337977 (n + 1)).toNat

end

end A026268.P718261148339437338

/-! ## A026268.P17868138535282436635

`A163352(A144172(n+1)+A144163(n))`
-/

namespace A026268.P17868138535282436635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A144172 (n + 1) + A144163 n).toNat

end

end A026268.P17868138535282436635

/-! ## A026268.P17954682368405255434

`A191228(A245334(n)+A085313(n+1))`
-/

namespace A026268.P17954682368405255434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A245334 n + A085313 (n + 1)).toNat

end

end A026268.P17954682368405255434

/-!
# A026269: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0 = s(n), s(1) = 1, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also a(n) = T(n,n) and a(n) = Sum{T(k,k-1)}, k = 1,2,...,n, where T is array in A026268.

The programs for A026269, the canonical program `A026269.P3901397121172539667` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026269 has offset 2).

The definition of A026269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026269.P10635188315432469758

`A026270(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A026269.P10635188315432469758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026270 (n + 1) + a (n - 1)

end

end A026269.P10635188315432469758

namespace A026269

/-- `A026270(n+1)+a(n-1)` -/
def P10635188315432469758.Spec : Prop :=
  ∀ n, P10635188315432469758.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P10529325188333088931

`A382987(n)+A005554(n+1)`
-/

namespace A026269.P10529325188333088931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382987 n + A005554 (n + 1)

end

end A026269.P10529325188333088931

namespace A026269

/-- `A382987(n)+A005554(n+1)` -/
def P10529325188333088931.Spec : Prop :=
  ∀ n, P10529325188333088931.a n = A026269 (n + 2)

theorem P10529325188333088931.correct : P10529325188333088931.Spec := by
  intro n
  simp only [A026269, Nat.add_sub_cancel, A026269.P10529325188333088931.a, A026269.P3901397121172539667.f2, A026269.P3901397121172539667.f1, A026269.P3901397121172539667.a, A005554, A005554.P9832709042548983027.a, A008612, A008612.P16648533606768999186.a, A105695, A105695.P7871953186196150134.f1, A105695.P7871953186196150134.a, A382987, A382987.P16727742091010566575.a, A086246, A086246.P7157768835649708098.a, A102071, A102071.P3789091345876567070.a, A001006, A001006.P11199602840237397285.a, A168049, A168049.P8332189401244449518.f1, A168049.P8332189401244449518.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A026269

/-! ## A026269.P17304221667362790662

`∑[A026270(A000007(n)+1+n)]`
-/

namespace A026269.P17304221667362790662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026270 (A000007 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026269.P17304221667362790662

namespace A026269

/-- `∑[A026270(A000007(n)+1+n)]` -/
def P17304221667362790662.Spec : Prop :=
  ∀ n, P17304221667362790662.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P3901397121172539667

`record[Δ[A105695(A008612(n))]]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026269

/-- `record[Δ[A105695(A008612(n))]]` -/
def P3901397121172539667.Spec : Prop :=
  ∀ n, P3901397121172539667.a n = A026269 (n + 2)

theorem P3901397121172539667.correct : P3901397121172539667.Spec := by
  intro n
  simp only [A026269, Nat.add_sub_cancel]

end A026269

/-! ## A026269.P6706929814017821953

`record[A105695(n)]-A105695(n+1)`
-/

namespace A026269.P6706929814017821953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A105695 (n + 1)

end

end A026269.P6706929814017821953

namespace A026269

/-- `record[A105695(n)]-A105695(n+1)` -/
def P6706929814017821953.Spec : Prop :=
  ∀ n, P6706929814017821953.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P16868353281970433004

`A002026(n+1)-A105695(n+1)`
-/

namespace A026269.P16868353281970433004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) - A105695 (n + 1)

end

end A026269.P16868353281970433004

namespace A026269

/-- `A002026(n+1)-A105695(n+1)` -/
def P16868353281970433004.Spec : Prop :=
  ∀ n, P16868353281970433004.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P6633341341133501364

`A244884(n+2)-A105695(n+1)`
-/

namespace A026269.P6633341341133501364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 2) - A105695 (n + 1)

end

end A026269.P6633341341133501364

namespace A026269

/-- `A244884(n+2)-A105695(n+1)` -/
def P6633341341133501364.Spec : Prop :=
  ∀ n, P6633341341133501364.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P13869807573764886609

`A105695(n+3)-A105695(n+1)`
-/

namespace A026269.P13869807573764886609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 3) - A105695 (n + 1)

end

end A026269.P13869807573764886609

namespace A026269

/-- `A105695(n+3)-A105695(n+1)` -/
def P13869807573764886609.Spec : Prop :=
  ∀ n, P13869807573764886609.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P9726226311892636852

`Δ[A292440(n+1)+A001006(n+1)]`
-/

namespace A026269.P9726226311892636852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 1) + A001006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026269.P9726226311892636852

namespace A026269

/-- `Δ[A292440(n+1)+A001006(n+1)]` -/
def P9726226311892636852.Spec : Prop :=
  ∀ n, P9726226311892636852.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P1963825526702923874

`Δ[A001006(n+1)-A086246(n+1)]`
-/

namespace A026269.P1963825526702923874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) - A086246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026269.P1963825526702923874

namespace A026269

/-- `Δ[A001006(n+1)-A086246(n+1)]` -/
def P1963825526702923874.Spec : Prop :=
  ∀ n, P1963825526702923874.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P11643654700685090813

`Δ[A105695(n+1)+A105695(n+2)]`
-/

namespace A026269.P11643654700685090813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1) + A105695 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026269.P11643654700685090813

namespace A026269

/-- `Δ[A105695(n+1)+A105695(n+2)]` -/
def P11643654700685090813.Spec : Prop :=
  ∀ n, P11643654700685090813.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P12722953767993149782

`Δ[A086246(n+3)-A086246(n+1)]`
-/

namespace A026269.P12722953767993149782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 3) - A086246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026269.P12722953767993149782

namespace A026269

/-- `Δ[A086246(n+3)-A086246(n+1)]` -/
def P12722953767993149782.Spec : Prop :=
  ∀ n, P12722953767993149782.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P2541164890543929437

`∑[A026270(n+2)]+1-A026270(n+2)`
-/

namespace A026269.P2541164890543929437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026270 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A026270 (n + 2))

end

end A026269.P2541164890543929437

namespace A026269

/-- `∑[A026270(n+2)]+1-A026270(n+2)` -/
def P2541164890543929437.Spec : Prop :=
  ∀ n, P2541164890543929437.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P8721506981103236620

`A002026(n+1)-A002026(A289207(n+1))`
-/

namespace A026269.P8721506981103236620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) - A002026 (A289207 (n + 1)).toNat

end

end A026269.P8721506981103236620

namespace A026269

/-- `A002026(n+1)-A002026(A289207(n+1))` -/
def P8721506981103236620.Spec : Prop :=
  ∀ n, P8721506981103236620.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P12323949972864759617

`A002026(n+1)+A086246(n+1)-A001006(n)`
-/

namespace A026269.P12323949972864759617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) + (A086246 (n + 1) - A001006 n)

end

end A026269.P12323949972864759617

namespace A026269

/-- `A002026(n+1)+A086246(n+1)-A001006(n)` -/
def P12323949972864759617.Spec : Prop :=
  ∀ n, P12323949972864759617.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P17099839745231111576

`A002026(n+1)-(A292440(n+1)+A001006(n))`
-/

namespace A026269.P17099839745231111576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) - (A292440 (n + 1) + A001006 n)

end

end A026269.P17099839745231111576

namespace A026269

/-- `A002026(n+1)-(A292440(n+1)+A001006(n))` -/
def P17099839745231111576.Spec : Prop :=
  ∀ n, P17099839745231111576.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P13631121132011732677

`A102071(n+1)-(A292440(n+1)+A001006(n+1))`
-/

namespace A026269.P13631121132011732677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102071 (n + 1) - (A292440 (n + 1) + A001006 (n + 1))

end

end A026269.P13631121132011732677

namespace A026269

/-- `A102071(n+1)-(A292440(n+1)+A001006(n+1))` -/
def P13631121132011732677.Spec : Prop :=
  ∀ n, P13631121132011732677.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P13950458229815386300

`A102071(n+2)-(A102071(n+1)+A026270(n+2))`
-/

namespace A026269.P13950458229815386300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102071 (n + 2) - (A102071 (n + 1) + A026270 (n + 2))

end

end A026269.P13950458229815386300

namespace A026269

/-- `A102071(n+2)-(A102071(n+1)+A026270(n+2))` -/
def P13950458229815386300.Spec : Prop :=
  ∀ n, P13950458229815386300.a n = A026269 (n + 2)

end A026269

/-! ## A026269.P4852526767485694361

`record[ratio[1/A026268(n)]]`
-/

namespace A026269.P4852526767485694361
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A026268 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026269.P4852526767485694361

namespace A026269

/-- `record[ratio[1/A026268(n)]]` -/
def P4852526767485694361.Spec : Prop :=
  ∀ n, P4852526767485694361.a n = (A026269 (n + 2) : ℚ)

end A026269

/-! ## A026269.P735718322350102110

`A026268(∑[n+3]+2)`
-/

namespace A026269.P735718322350102110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A026269.P735718322350102110

namespace A026269

/-- `A026268(∑[n+3]+2)` -/
def P735718322350102110.Spec : Prop :=
  ∀ n, P735718322350102110.a n = A026269 (n + 2)

end A026269

/-!
# A026270: Number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1 = s(n), |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also T(n,n-1), where T is the array in A026268.

The programs for A026270, the canonical program `A026270.P10877256987493377450` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026270 has offset 2).

The definition of A026270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026270.P10877256987493377450

`Δ[A026269(n+2)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A026270

/-- `Δ[A026269(n+2)]` -/
def P10877256987493377450.Spec : Prop :=
  ∀ n, P10877256987493377450.a n = A026270 (n + 2)

theorem P10877256987493377450.correct : P10877256987493377450.Spec := by
  intro n
  simp only [A026270, Nat.add_sub_cancel]

end A026270

/-! ## A026270.P16781025213012036470

`A026269(n+3)-A026269(n+2)`
-/

namespace A026270.P16781025213012036470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 3) - A026269 (n + 2)

end

end A026270.P16781025213012036470

namespace A026270

/-- `A026269(n+3)-A026269(n+2)` -/
def P16781025213012036470.Spec : Prop :=
  ∀ n, P16781025213012036470.a n = A026270 (n + 2)

theorem P16781025213012036470.correct : P16781025213012036470.Spec := by
  intro n
  simp only [A026270, Nat.add_sub_cancel, A026270.P16781025213012036470.a, A026270.P10877256987493377450.f1, A026270.P10877256987493377450.a, SequenceMachineLib.memo_apply]

end A026270

/-! ## A026270.P12330904067974665347

`Δ[A244884(n+2)-A105695(n+1)]`
-/

namespace A026270.P12330904067974665347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 2) - A105695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026270.P12330904067974665347

namespace A026270

/-- `Δ[A244884(n+2)-A105695(n+1)]` -/
def P12330904067974665347.Spec : Prop :=
  ∀ n, P12330904067974665347.a n = A026270 (n + 2)

end A026270

/-! ## A026270.P17670129797751588713

`Δ[Δ[A292440(n+1)+A001006(n+1)]]`
-/

namespace A026270.P17670129797751588713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 1) + A001006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026270.P17670129797751588713

namespace A026270

/-- `Δ[Δ[A292440(n+1)+A001006(n+1)]]` -/
def P17670129797751588713.Spec : Prop :=
  ∀ n, P17670129797751588713.a n = A026270 (n + 2)

end A026270

/-! ## A026270.P4757761627564396707

`Δ[Δ[A001006(n+1)-A086246(n+1)]]`
-/

namespace A026270.P4757761627564396707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) - A086246 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026270.P4757761627564396707

namespace A026270

/-- `Δ[Δ[A001006(n+1)-A086246(n+1)]]` -/
def P4757761627564396707.Spec : Prop :=
  ∀ n, P4757761627564396707.a n = A026270 (n + 2)

end A026270

/-! ## A026270.P12825669411738097007

`A026268(∑[n+3]+1)`
-/

namespace A026270.P12825669411738097007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A026270.P12825669411738097007

namespace A026270

/-- `A026268(∑[n+3]+1)` -/
def P12825669411738097007.Spec : Prop :=
  ∀ n, P12825669411738097007.a n = A026270 (n + 2)

end A026270

/-! ## A026270.P9693150133846089486

`record[A026268(n)/A061554(n)]`
-/

namespace A026270.P9693150133846089486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026268 n : ℚ) / (A061554 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026270.P9693150133846089486

namespace A026270

/-- `record[A026268(n)/A061554(n)]` -/
def P9693150133846089486.Spec : Prop :=
  ∀ n, P9693150133846089486.a n = (A026270 (n + 2) : ℚ)

end A026270

/-! ## A026270.P11241218934108589620

`A026268(A034856(n+2))%A125145(n+1)`
-/

namespace A026270.P11241218934108589620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026268 (A034856 (n + 2)).toNat) (A125145 (n + 1))

end

end A026270.P11241218934108589620

namespace A026270

/-- `A026268(A034856(n+2))%A125145(n+1)` -/
def P11241218934108589620.Spec : Prop :=
  ∀ n, P11241218934108589620.a n = A026270 (n + 2)

end A026270

/-! ## A026270.P12150654191594612254

`A026268(A034856(n+2))%A198964(n)`
-/

namespace A026270.P12150654191594612254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026268 (A034856 (n + 2)).toNat) (A198964 n)

end

end A026270.P12150654191594612254

namespace A026270

/-- `A026268(A034856(n+2))%A198964(n)` -/
def P12150654191594612254.Spec : Prop :=
  ∀ n, P12150654191594612254.a n = A026270 (n + 2)

end A026270

/-!
# A026271: a(n) = sum of the numbers between the two n's in A026242.

The programs for A026271, the canonical program `A026271.P8479868262339602608` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026271 has offset 1).

The definition of A026271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026271.P12877698244052487260

`∑[Δ[n*floor(n/ϕ)]+n]`
-/

namespace A026271.P12877698244052487260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026271.P12877698244052487260

namespace A026271

/-- `∑[Δ[n*floor(n/ϕ)]+n]` -/
def P12877698244052487260.Spec : Prop :=
  ∀ n, P12877698244052487260.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P9074179844298671990

`∑[n]+(n+1)*ceil((n+1)/ϕ-and(1, 2*n+1))`
-/

namespace A026271.P9074179844298671990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * ⌈(n + 1 : ℝ) / Real.goldenRatio - (Nat.land 1 (2 * n + 1) : ℝ)⌉

end

end A026271.P9074179844298671990

namespace A026271

/-- `∑[n]+(n+1)*ceil((n+1)/ϕ-and(1, 2*n+1))` -/
def P9074179844298671990.Spec : Prop :=
  ∀ n, P9074179844298671990.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P3828157099107403605

`A293688(n)+∑[n]`
-/

namespace A026271.P3828157099107403605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026271.P3828157099107403605

namespace A026271

/-- `A293688(n)+∑[n]` -/
def P3828157099107403605.Spec : Prop :=
  ∀ n, P3828157099107403605.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P11220583495754845569

`A026353(n+2)-n`
-/

namespace A026271.P11220583495754845569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026353 (n + 2) - (n : ℤ)

end

end A026271.P11220583495754845569

namespace A026271

/-- `A026353(n+2)-n` -/
def P11220583495754845569.Spec : Prop :=
  ∀ n, P11220583495754845569.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P2127888024893157794

`∑[n]+∑[A002251(n)]`
-/

namespace A026271.P2127888024893157794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A026271.P2127888024893157794

namespace A026271

/-- `∑[n]+∑[A002251(n)]` -/
def P2127888024893157794.Spec : Prop :=
  ∀ n, P2127888024893157794.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P1000257512364337113

`A026357(n+3)-2*n`
-/

namespace A026271.P1000257512364337113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026357 (n + 3) - (2 * n : ℤ)

end

end A026271.P1000257512364337113

namespace A026271

/-- `A026357(n+3)-2*n` -/
def P1000257512364337113.Spec : Prop :=
  ∀ n, P1000257512364337113.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P8479868262339602608

`A019445(n+1)+∑[n-1]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A026271

/-- `A019445(n+1)+∑[n-1]` -/
def P8479868262339602608.Spec : Prop :=
  ∀ n, P8479868262339602608.a n = A026271 (n + 1)

theorem P8479868262339602608.correct : P8479868262339602608.Spec := by
  intro n
  simp only [A026271, Nat.add_sub_cancel]

end A026271

/-! ## A026271.P13710618597501816260

`(A371388(n+1)-(n+1))/2`
-/

namespace A026271.P13710618597501816260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371388 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A026271.P13710618597501816260

namespace A026271

/-- `(A371388(n+1)-(n+1))/2` -/
def P13710618597501816260.Spec : Prop :=
  ∀ n, P13710618597501816260.a n = (A026271 (n + 1) : ℚ)

end A026271

/-! ## A026271.P6553762017868043397

`(A005206(n)+n/2)*(n+1)`
-/

namespace A026271.P6553762017868043397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005206 n : ℚ) + (n : ℚ) / 2) * (n + 1 : ℚ)

end

end A026271.P6553762017868043397

namespace A026271

/-- `(A005206(n)+n/2)*(n+1)` -/
def P6553762017868043397.Spec : Prop :=
  ∀ n, P6553762017868043397.a n = (A026271 (n + 1) : ℚ)

end A026271

/-! ## A026271.P18216222600720675452

`(n+1)*A022342(n+1)-∑[n]`
-/

namespace A026271.P18216222600720675452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022342 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026271.P18216222600720675452

namespace A026271

/-- `(n+1)*A022342(n+1)-∑[n]` -/
def P18216222600720675452.Spec : Prop :=
  ∀ n, P18216222600720675452.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P14382974248550015067

`(n+1)*A000201(n+1)-∑[n+1]`
-/

namespace A026271.P14382974248550015067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000201 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A026271.P14382974248550015067

namespace A026271

/-- `(n+1)*A000201(n+1)-∑[n+1]` -/
def P14382974248550015067.Spec : Prop :=
  ∀ n, P14382974248550015067.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P15511615780093334190

`A000217(n)+(n+1)*floor((n+1)/ϕ)`
-/

namespace A026271.P15511615780093334190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (n + 1 : ℤ) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

end

end A026271.P15511615780093334190

namespace A026271

/-- `A000217(n)+(n+1)*floor((n+1)/ϕ)` -/
def P15511615780093334190.Spec : Prop :=
  ∀ n, P15511615780093334190.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P12487818243017786981

`A000096(n)+A293688(n)-n`
-/

namespace A026271.P12487818243017786981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (A293688 n - (n : ℤ))

end

end A026271.P12487818243017786981

namespace A026271

/-- `A000096(n)+A293688(n)-n` -/
def P12487818243017786981.Spec : Prop :=
  ∀ n, P12487818243017786981.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P7892141905520815393

`A019445(n+1)+n²-A000124(n)`
-/

namespace A026271.P7892141905520815393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019445 (n + 1) + (n ^ 2 : ℤ) - A000124 n

end

end A026271.P7892141905520815393

namespace A026271

/-- `A019445(n+1)+n²-A000124(n)` -/
def P7892141905520815393.Spec : Prop :=
  ∀ n, P7892141905520815393.a n = A026271 (n + 1)

end A026271

/-! ## A026271.P12506136816611049705

`A183136(A066096(n+1))+A183136(n+1)`
-/

namespace A026271.P12506136816611049705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (A066096 (n + 1)).toNat + A183136 (n + 1)

end

end A026271.P12506136816611049705

namespace A026271

/-- `A183136(A066096(n+1))+A183136(n+1)` -/
def P12506136816611049705.Spec : Prop :=
  ∀ n, P12506136816611049705.a n = A026271 (n + 1)

end A026271

/-!
# A026272: a(n) = smallest k such that k=a(n-k-1) is the only appearance of k so far; if there is no such k, then a(n) = least positive integer that has not yet appeared.

The programs for A026272, the canonical program `A026272.P3028833638085150316` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026272 has offset 1).

The definition of A026272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026242, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A026272.P3028833638085150316

`A026242(n+3)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A026272

/-- `A026242(n+3)-1` -/
def P3028833638085150316.Spec : Prop :=
  ∀ n, P3028833638085150316.a n = A026272 (n + 1)

theorem P3028833638085150316.correct : P3028833638085150316.Spec := by
  intro n
  simp only [A026272, Nat.add_sub_cancel]

end A026272

/-! ## A026272.P10416649756437750800

`A026350(n+4)-2`
-/

namespace A026272.P10416649756437750800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (n + 4) - 2

end

end A026272.P10416649756437750800

namespace A026272

/-- `A026350(n+4)-2` -/
def P10416649756437750800.Spec : Prop :=
  ∀ n, P10416649756437750800.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P8582842459237233726

`A026354(n+5)-3`
-/

namespace A026272.P8582842459237233726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026354 (n + 5) - 3

end

end A026272.P8582842459237233726

namespace A026272

/-- `A026354(n+5)-3` -/
def P8582842459237233726.Spec : Prop :=
  ∀ n, P8582842459237233726.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P10456027927035802874

`A193564(n+3)`
-/

namespace A026272.P10456027927035802874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193564 (n + 3)

end

end A026272.P10456027927035802874

namespace A026272

/-- `A193564(n+3)` -/
def P10456027927035802874.Spec : Prop :=
  ∀ n, P10456027927035802874.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P553890231387033503

`∑[-Δ[-A026242(n+2)]]`
-/

namespace A026272.P553890231387033503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A026242 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026272.P553890231387033503

namespace A026272

/-- `∑[-Δ[-A026242(n+2)]]` -/
def P553890231387033503.Spec : Prop :=
  ∀ n, P553890231387033503.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P13764770655193497050

`A023443(A026242(n+3))`
-/

namespace A026272.P13764770655193497050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A026242 (n + 3)).toNat

end

end A026272.P13764770655193497050

namespace A026272

/-- `A023443(A026242(n+3))` -/
def P13764770655193497050.Spec : Prop :=
  ∀ n, P13764770655193497050.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P896546259491613565

`A000720(p?[A008578(A026242(n+1))])`
-/

namespace A026272.P896546259491613565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026272.P896546259491613565

namespace A026272

/-- `A000720(p?[A008578(A026242(n+1))])` -/
def P896546259491613565.Spec : Prop :=
  ∀ n, P896546259491613565.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P8930547325941728019

`A019586(A080746(n+2))`
-/

namespace A026272.P8930547325941728019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A080746 (n + 2)).toNat

end

end A026272.P8930547325941728019

namespace A026272

/-- `A019586(A080746(n+2))` -/
def P8930547325941728019.Spec : Prop :=
  ∀ n, P8930547325941728019.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P3489707443901784336

`A060143(A026242(A005206(n+3)+n+2))`
-/

namespace A026272.P3489707443901784336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A026242 (A005206 (n + 3) + (n + 2 : ℤ)).toNat).toNat

end

end A026272.P3489707443901784336

namespace A026272

/-- `A060143(A026242(A005206(n+3)+n+2))` -/
def P3489707443901784336.Spec : Prop :=
  ∀ n, P3489707443901784336.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P1412197288411402516

`A060143(A026242(A002251(n+3)+n+2))`
-/

namespace A026272.P1412197288411402516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A026242 (A002251 (n + 3) + (n + 2 : ℤ)).toNat).toNat

end

end A026272.P1412197288411402516

namespace A026272

/-- `A060143(A026242(A002251(n+3)+n+2))` -/
def P1412197288411402516.Spec : Prop :=
  ∀ n, P1412197288411402516.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P17798333063208708336

`A056239(p?[A008578(A026242(n+1))])`
-/

namespace A026272.P17798333063208708336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026272.P17798333063208708336

namespace A026272

/-- `A056239(p?[A008578(A026242(n+1))])` -/
def P17798333063208708336.Spec : Prop :=
  ∀ n, P17798333063208708336.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P13349624933832951272

`A082058(p?[A008578(A026242(n+1))])`
-/

namespace A026272.P13349624933832951272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A026242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A026272.P13349624933832951272

namespace A026272

/-- `A082058(p?[A008578(A026242(n+1))])` -/
def P13349624933832951272.Spec : Prop :=
  ∀ n, P13349624933832951272.a n = A026272 (n + 1)

end A026272

/-! ## A026272.P1560204107677604529

`A380079(A380079(n+1))`
-/

namespace A026272.P1560204107677604529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380079 (A380079 (n + 1)).toNat

end

end A026272.P1560204107677604529

namespace A026272

/-- `A380079(A380079(n+1))` -/
def P1560204107677604529.Spec : Prop :=
  ∀ n, P1560204107677604529.a n = A026272 (n + 1)

end A026272

/-!
# A026273: a(n) = least k such that s(k) = n, where s = A026272.

The programs for A026273, the canonical program `A026273.P13771585298488964922` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026273 has offset 1).

The definition of A026273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026273.P17201971915167126800

`floor(ϕ*(n+2))-2`
-/

namespace A026273.P17201971915167126800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋ - 2

end

end A026273.P17201971915167126800

namespace A026273

/-- `floor(ϕ*(n+2))-2` -/
def P17201971915167126800.Spec : Prop :=
  ∀ n, P17201971915167126800.a n = A026273 (n + 1)

end A026273

/-! ## A026273.P11604635748013827878

`floor(Δ[C(n+2, 2)/ϕ]+n)`
-/

namespace A026273.P11604635748013827878
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n + (n : ℝ)⌋

end

end A026273.P11604635748013827878

namespace A026273

/-- `floor(Δ[C(n+2, 2)/ϕ]+n)` -/
def P11604635748013827878.Spec : Prop :=
  ∀ n, P11604635748013827878.a n = A026273 (n + 1)

end A026273

/-! ## A026273.P13502972008855045325

`floor(gcd(n, 2*n)+(n+2)/ϕ)`
-/

namespace A026273.P13502972008855045325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n (2 * n) : ℝ) + (n + 2 : ℝ) / Real.goldenRatio⌋

end

end A026273.P13502972008855045325

namespace A026273

/-- `floor(gcd(n, 2*n)+(n+2)/ϕ)` -/
def P13502972008855045325.Spec : Prop :=
  ∀ n, P13502972008855045325.a n = A026273 (n + 1)

end A026273

/-! ## A026273.P13898546639843435

`floor(C(n+2, n+1)/ϕ+n)`
-/

namespace A026273.P13898546639843435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) (n + 1) : ℝ) / Real.goldenRatio + (n : ℝ)⌋

end

end A026273.P13898546639843435

namespace A026273

/-- `floor(C(n+2, n+1)/ϕ+n)` -/
def P13898546639843435.Spec : Prop :=
  ∀ n, P13898546639843435.a n = A026273 (n + 1)

end A026273

/-! ## A026273.P12131292666917380908

`lt[ϕ, (n+3)/ceil((n+2)/ϕ)]`
-/

namespace A026273.P12131292666917380908
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (⌈(n + 2 : ℝ) / Real.goldenRatio⌉ : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A026273.P12131292666917380908

namespace A026273

/-- `lt[ϕ, (n+3)/ceil((n+2)/ϕ)]` -/
def P12131292666917380908.Spec : Prop :=
  ∀ n, (P12131292666917380908.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P13771585298488964922

`floor(A191403(n)/2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026273

/-- `floor(A191403(n)/2)` -/
def P13771585298488964922.Spec : Prop :=
  ∀ n, P13771585298488964922.a n = A026273 (n + 1)

theorem P13771585298488964922.correct : P13771585298488964922.Spec := by
  intro n
  simp only [A026273, Nat.add_sub_cancel]

end A026273

/-! ## A026273.P6103503240639355372

`eq[1, A096270(n+2)]`
-/

namespace A026273.P6103503240639355372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A026273.P6103503240639355372

namespace A026273

/-- `eq[1, A096270(n+2)]` -/
def P6103503240639355372.Spec : Prop :=
  ∀ n, (P6103503240639355372.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P13261341175478058358

`comp[A003622(n+1)-1]`
-/

namespace A026273.P13261341175478058358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026273.P13261341175478058358

namespace A026273

/-- `comp[A003622(n+1)-1]` -/
def P13261341175478058358.Spec : Prop :=
  ∀ n, (P13261341175478058358.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P247753970683716923

`comp[A001950(n+1)-2]`
-/

namespace A026273.P247753970683716923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026273.P247753970683716923

namespace A026273

/-- `comp[A001950(n+1)-2]` -/
def P247753970683716923.Spec : Prop :=
  ∀ n, (P247753970683716923.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P9341816876539233183

`∪[A001077(n), A080746(n+1)]`
-/

namespace A026273.P9341816876539233183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026273.P9341816876539233183

namespace A026273

/-- `∪[A001077(n), A080746(n+1)]` -/
def P9341816876539233183.Spec : Prop :=
  ∀ n, (P9341816876539233183.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P3844477116677560767

`∪[A005592(n), A080746(n+1)]`
-/

namespace A026273.P3844477116677560767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026273.P3844477116677560767

namespace A026273

/-- `∪[A005592(n), A080746(n+1)]` -/
def P3844477116677560767.Spec : Prop :=
  ∀ n, (P3844477116677560767.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P15756474641027981287

`∪[A006850(n), A080746(n+1)]`
-/

namespace A026273.P15756474641027981287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026273.P15756474641027981287

namespace A026273

/-- `∪[A006850(n), A080746(n+1)]` -/
def P15756474641027981287.Spec : Prop :=
  ∀ n, (P15756474641027981287.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P4988625690829887546

`∪[A080746(n+1), A050532(n)]`
-/

namespace A026273.P4988625690829887546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050532 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026273.P4988625690829887546

namespace A026273

/-- `∪[A080746(n+1), A050532(n)]` -/
def P4988625690829887546.Spec : Prop :=
  ∀ n, (P4988625690829887546.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P8668916176327827656

`∪[A080746(n+1), A050927(n)]`
-/

namespace A026273.P8668916176327827656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050927 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A026273.P8668916176327827656

namespace A026273

/-- `∪[A080746(n+1), A050927(n)]` -/
def P8668916176327827656.Spec : Prop :=
  ∀ n, (P8668916176327827656.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P3617965105726705173

`comp[A035337(n)-(A035336(n+1)+1)]`
-/

namespace A026273.P3617965105726705173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n - (A035336 (n + 1) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A026273.P3617965105726705173

namespace A026273

/-- `comp[A035337(n)-(A035336(n+1)+1)]` -/
def P3617965105726705173.Spec : Prop :=
  ∀ n, (P3617965105726705173.a n : ℤ) = A026273 (n + 1)

end A026273

/-! ## A026273.P9894406883790699552

`floor(lcm(n+2, A014963(n+2))/ϕ+n)`
-/

namespace A026273.P9894406883790699552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (n + 2 : ℤ) (A014963 (n + 2)) : ℝ) / Real.goldenRatio + (n : ℝ)⌋

end

end A026273.P9894406883790699552

namespace A026273

/-- `floor(lcm(n+2, A014963(n+2))/ϕ+n)` -/
def P9894406883790699552.Spec : Prop :=
  ∀ n, P9894406883790699552.a n = A026273 (n + 1)

end A026273

/-! ## A026273.P3204037119926775979

`A005206(A005206(n+1)+2*n)`
-/

namespace A026273.P3204037119926775979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (n + 1) + (2 * n : ℤ)).toNat

end

end A026273.P3204037119926775979

namespace A026273

/-- `A005206(A005206(n+1)+2*n)` -/
def P3204037119926775979.Spec : Prop :=
  ∀ n, P3204037119926775979.a n = A026273 (n + 1)

end A026273

/-! ## A026273.P16416830939006619088

`A187945(3*n-a(n-1))` with `a(0)=1`
-/

namespace A026273.P16416830939006619088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A187945 ((3 * n : ℤ) - a (n - 1)).toNat

end

end A026273.P16416830939006619088

namespace A026273

/-- `A187945(3*n-a(n-1))` -/
def P16416830939006619088.Spec : Prop :=
  ∀ n, P16416830939006619088.a n = A026273 (n + 1)

end A026273

/-!
# A026274: Greatest k such that s(k) = n, where s = A026272.

The programs for A026274, the canonical program `A026274.P16378866171552016980` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026274 has offset 1).

The definition of A026274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A026274.P16378866171552016980

`floor(ϕ²*(n+1+2*ϕ-3))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026274

/-- `floor(ϕ²*(n+1+2*ϕ-3))` -/
def P16378866171552016980.Spec : Prop :=
  ∀ n, P16378866171552016980.a n = A026274 (n + 1)

theorem P16378866171552016980.correct : P16378866171552016980.Spec := by
  intro n
  simp only [A026274, Nat.add_sub_cancel]

end A026274

/-! ## A026274.P5244523898469948179

`∑[dr(Δ[ceil((n+1)/ϕ)])+2]`
-/

namespace A026274.P5244523898469948179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P5244523898469948179

namespace A026274

/-- `∑[dr(Δ[ceil((n+1)/ϕ)])+2]` -/
def P5244523898469948179.Spec : Prop :=
  ∀ n, (P5244523898469948179.a n : ℤ) = A026274 (n + 1)

end A026274

/-! ## A026274.P9937322898647717920

`ceil(or(1, 2*n)+(n+2)/ϕ)`
-/

namespace A026274.P9937322898647717920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (2 * n) : ℝ) + (n + 2 : ℝ) / Real.goldenRatio⌉

end

end A026274.P9937322898647717920

namespace A026274

/-- `ceil(or(1, 2*n)+(n+2)/ϕ)` -/
def P9937322898647717920.Spec : Prop :=
  ∀ n, P9937322898647717920.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P14125286277279606358

`ceil(xor(1, 2*n)+(n+2)/ϕ)`
-/

namespace A026274.P14125286277279606358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n) : ℝ) + (n + 2 : ℝ) / Real.goldenRatio⌉

end

end A026274.P14125286277279606358

namespace A026274

/-- `ceil(xor(1, 2*n)+(n+2)/ϕ)` -/
def P14125286277279606358.Spec : Prop :=
  ∀ n, P14125286277279606358.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P17341803883624392694

`Δ[lcm(n, n+1)]+floor((n+2)/ϕ)`
-/

namespace A026274.P17341803883624392694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

end

end A026274.P17341803883624392694

namespace A026274

/-- `Δ[lcm(n, n+1)]+floor((n+2)/ϕ)` -/
def P17341803883624392694.Spec : Prop :=
  ∀ n, P17341803883624392694.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P12791971002818469979

`ceil(ϕ*C(n+2, n+1)+n-1)`
-/

namespace A026274.P12791971002818469979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (n + 2) (n + 1) : ℝ) + ((n : ℤ) - 1 : ℝ)⌉

end

end A026274.P12791971002818469979

namespace A026274

/-- `ceil(ϕ*C(n+2, n+1)+n-1)` -/
def P12791971002818469979.Spec : Prop :=
  ∀ n, P12791971002818469979.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P435256102380787598

`ceil(C(n+2, n+1)/ϕ+2*n+1)`
-/

namespace A026274.P435256102380787598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) (n + 1) : ℝ) / Real.goldenRatio + (2 * n + 1 : ℝ)⌉

end

end A026274.P435256102380787598

namespace A026274

/-- `ceil(C(n+2, n+1)/ϕ+2*n+1)` -/
def P435256102380787598.Spec : Prop :=
  ∀ n, P435256102380787598.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P13588691295036245714

`∑[A014675(n)+1]`
-/

namespace A026274.P13588691295036245714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P13588691295036245714

namespace A026274

/-- `∑[A014675(n)+1]` -/
def P13588691295036245714.Spec : Prop :=
  ∀ n, P13588691295036245714.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P12475607237618926993

`∑[A282162(n+1)]`
-/

namespace A026274.P12475607237618926993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P12475607237618926993

namespace A026274

/-- `∑[A282162(n+1)]` -/
def P12475607237618926993.Spec : Prop :=
  ∀ n, P12475607237618926993.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P3959192554890356881

`∑[A005614(n)+2]`
-/

namespace A026274.P3959192554890356881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P3959192554890356881

namespace A026274

/-- `∑[A005614(n)+2]` -/
def P3959192554890356881.Spec : Prop :=
  ∀ n, P3959192554890356881.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P13182153269418037301

`∑[3-A003849(n)]`
-/

namespace A026274.P13182153269418037301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P13182153269418037301

namespace A026274

/-- `∑[3-A003849(n)]` -/
def P13182153269418037301.Spec : Prop :=
  ∀ n, P13182153269418037301.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P3314306195960793367

`∑[4-A003842(n)]`
-/

namespace A026274.P3314306195960793367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A003842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P3314306195960793367

namespace A026274

/-- `∑[4-A003842(n)]` -/
def P3314306195960793367.Spec : Prop :=
  ∀ n, P3314306195960793367.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P14834784581993906382

`A003622(n+2)-1`
-/

namespace A026274.P14834784581993906382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 2) - 1

end

end A026274.P14834784581993906382

namespace A026274

/-- `A003622(n+2)-1` -/
def P14834784581993906382.Spec : Prop :=
  ∀ n, P14834784581993906382.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P8909348232372915366

`A058065(n)+3+n`
-/

namespace A026274.P8909348232372915366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 n + 3 + (n : ℤ)

end

end A026274.P8909348232372915366

namespace A026274

/-- `A058065(n)+3+n` -/
def P8909348232372915366.Spec : Prop :=
  ∀ n, P8909348232372915366.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P7718817743127593779

`∑[∑[A014677(n)]+2]`
-/

namespace A026274.P7718817743127593779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P7718817743127593779

namespace A026274

/-- `∑[∑[A014677(n)]+2]` -/
def P7718817743127593779.Spec : Prop :=
  ∀ n, P7718817743127593779.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P12809990343375383071

`∑[Δ[A005206(n)]+2]`
-/

namespace A026274.P12809990343375383071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P12809990343375383071

namespace A026274

/-- `∑[Δ[A005206(n)]+2]` -/
def P12809990343375383071.Spec : Prop :=
  ∀ n, P12809990343375383071.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P12994909535580159314

`∑[A096270(n+1)+2]`
-/

namespace A026274.P12994909535580159314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026274.P12994909535580159314

namespace A026274

/-- `∑[A096270(n+1)+2]` -/
def P12994909535580159314.Spec : Prop :=
  ∀ n, P12994909535580159314.a n = A026274 (n + 1)

end A026274

/-! ## A026274.P3421010793743209159

`A191403(n)-A060143(n)`
-/

namespace A026274.P3421010793743209159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191403 n - A060143 n

end

end A026274.P3421010793743209159

namespace A026274

/-- `A191403(n)-A060143(n)` -/
def P3421010793743209159.Spec : Prop :=
  ∀ n, P3421010793743209159.a n = A026274 (n + 1)

theorem P3421010793743209159.correct : P3421010793743209159.Spec := by
  intro n
  simp only [A026274, Nat.add_sub_cancel, A026274.P3421010793743209159.a, A026274.P16378866171552016980.a, A060143, A060143.P4349736368293734599.a, A191403, A191403.P9949255710638438926.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026274

/-! ## A026274.P15145196259436525281

`A005614(n)+A001950(n+1)`
-/

namespace A026274.P15145196259436525281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n + A001950 (n + 1)

end

end A026274.P15145196259436525281

namespace A026274

/-- `A005614(n)+A001950(n+1)` -/
def P15145196259436525281.Spec : Prop :=
  ∀ n, P15145196259436525281.a n = A026274 (n + 1)

end A026274

/-!
# A026275: Sum of numbers between the two n's in A026272.

The programs for A026275, the canonical program `A026275.P3792631049529689533` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026275 has offset 1).

The definition of A026275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026275.P1416960035709142409

`∑[n]+(n+2)*floor((n+2)/ϕ)`
-/

namespace A026275.P1416960035709142409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 2 : ℤ) * ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

end

end A026275.P1416960035709142409

namespace A026275

/-- `∑[n]+(n+2)*floor((n+2)/ϕ)` -/
def P1416960035709142409.Spec : Prop :=
  ∀ n, P1416960035709142409.a n = A026275 (n + 1)

end A026275

/-! ## A026275.P2656406559277480800

`∑[Δ[A293688(n)]+n]`
-/

namespace A026275.P2656406559277480800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026275.P2656406559277480800

namespace A026275

/-- `∑[Δ[A293688(n)]+n]` -/
def P2656406559277480800.Spec : Prop :=
  ∀ n, P2656406559277480800.a n = A026275 (n + 1)

end A026275

/-! ## A026275.P288495412434441521

`∑[A002251(n+1)+n]`
-/

namespace A026275.P288495412434441521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026275.P288495412434441521

namespace A026275

/-- `∑[A002251(n+1)+n]` -/
def P288495412434441521.Spec : Prop :=
  ∀ n, P288495412434441521.a n = A026275 (n + 1)

end A026275

/-! ## A026275.P3792631049529689533

`∑[Δ[(n+1)*A005206(n)]+n]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026275

/-- `∑[Δ[(n+1)*A005206(n)]+n]` -/
def P3792631049529689533.Spec : Prop :=
  ∀ n, P3792631049529689533.a n = A026275 (n + 1)

theorem P3792631049529689533.correct : P3792631049529689533.Spec := by
  intro n
  simp only [A026275, Nat.add_sub_cancel]

end A026275

/-! ## A026275.P6404194424470964806

`∑[A035336(A026242(n+1))]`
-/

namespace A026275.P6404194424470964806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (A026242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026275.P6404194424470964806

namespace A026275

/-- `∑[A035336(A026242(n+1))]` -/
def P6404194424470964806.Spec : Prop :=
  ∀ n, P6404194424470964806.a n = A026275 (n + 1)

end A026275

/-! ## A026275.P10905009640906268454

`∑[A019444(n+2)+n-1]`
-/

namespace A026275.P10905009640906268454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 2) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026275.P10905009640906268454

namespace A026275

/-- `∑[A019444(n+2)+n-1]` -/
def P10905009640906268454.Spec : Prop :=
  ∀ n, P10905009640906268454.a n = A026275 (n + 1)

end A026275

/-! ## A026275.P13977365709262311110

`abs(A026271(n+2)+A001489(n+1))`
-/

namespace A026275.P13977365709262311110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A026271 (n + 2) + A001489 (n + 1)|

end

end A026275.P13977365709262311110

namespace A026275

/-- `abs(A026271(n+2)+A001489(n+1))` -/
def P13977365709262311110.Spec : Prop :=
  ∀ n, P13977365709262311110.a n = A026275 (n + 1)

end A026275

/-! ## A026275.P1315229235117498367

`∑[A001950(A026272(A000201(n+1)))]`
-/

namespace A026275.P1315229235117498367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A026272 (A000201 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026275.P1315229235117498367

namespace A026275

/-- `∑[A001950(A026272(A000201(n+1)))]` -/
def P1315229235117498367.Spec : Prop :=
  ∀ n, P1315229235117498367.a n = A026275 (n + 1)

end A026275

/-! ## A026275.P7955679926281998580

`∑[A022342(A026272(A001950(n+1)))]`
-/

namespace A026275.P7955679926281998580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A026272 (A001950 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026275.P7955679926281998580

namespace A026275

/-- `∑[A022342(A026272(A001950(n+1)))]` -/
def P7955679926281998580.Spec : Prop :=
  ∀ n, P7955679926281998580.a n = A026275 (n + 1)

end A026275

/-! ## A026275.P16238068802865421843

`∑[log2(A086482(n+2))+n]`
-/

namespace A026275.P16238068802865421843
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A086482 (n + 2) : ℝ) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A026275.P16238068802865421843

namespace A026275

/-- `∑[log2(A086482(n+2))+n]` -/
def P16238068802865421843.Spec : Prop :=
  ∀ n, P16238068802865421843.a n = (A026275 (n + 1) : ℝ)

end A026275

/-!
# A026277: a(n) = least k such that s(k) = n, where s = A026276.

The programs for A026277, the canonical program `A026277.P15230263996246509238` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026277 has offset 1).

The definition of A026277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026277.P15230263996246509238

`a(n-1)-a(a(n-1)-n)+n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026277

/-- `a(n-1)-a(a(n-1)-n)+n` -/
def P15230263996246509238.Spec : Prop :=
  ∀ n, P15230263996246509238.a n = A026277 (n + 1)

theorem P15230263996246509238.correct : P15230263996246509238.Spec := by
  intro n
  simp only [A026277, Nat.add_sub_cancel]

end A026277

/-! ## A026277.P7958694799068574406

`a(n-1)-(a(a(n-1)-n)-n)` with `a(0)=1, a(1)=2`
-/

namespace A026277.P7958694799068574406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (a (a (n - 1) - (n : ℤ)).toNat - (n : ℤ))

end

end A026277.P7958694799068574406

namespace A026277

/-- `a(n-1)-(a(a(n-1)-n)-n)` -/
def P7958694799068574406.Spec : Prop :=
  ∀ n, P7958694799068574406.a n = A026277 (n + 1)

theorem P7958694799068574406.correct : P7958694799068574406.Spec := by
  intro n
  simp only [A026277, Nat.add_sub_cancel, A026277.P7958694799068574406.a, A026277.P15230263996246509238.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A026277

/-! ## A026277.P454688350845771621

`A026278(n+1)-(n+3)`
-/

namespace A026277.P454688350845771621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026278 (n + 1) - (n + 3 : ℤ)

end

end A026277.P454688350845771621

namespace A026277

/-- `A026278(n+1)-(n+3)` -/
def P454688350845771621.Spec : Prop :=
  ∀ n, P454688350845771621.a n = A026277 (n + 1)

theorem P454688350845771621.correct : P454688350845771621.Spec := by
  intro n
  simp only [A026277, Nat.add_sub_cancel, A026277.P454688350845771621.a, A026277.P15230263996246509238.a, A026278, A026278.P1544389706053158847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026277

/-! ## A026277.P12833202757643430090

`A000027(n+1)+A026278(n+1)%(n+2)`
-/

namespace A026277.P12833202757643430090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + Int.tmod (A026278 (n + 1)) (n + 2 : ℤ)

end

end A026277.P12833202757643430090

namespace A026277

/-- `A000027(n+1)+A026278(n+1)%(n+2)` -/
def P12833202757643430090.Spec : Prop :=
  ∀ n, P12833202757643430090.a n = A026277 (n + 1)

end A026277

/-! ## A026277.P14441599187806387462

`record[A026276(n+1)+n]-n`
-/

namespace A026277.P14441599187806387462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026276 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A026277.P14441599187806387462

namespace A026277

/-- `record[A026276(n+1)+n]-n` -/
def P14441599187806387462.Spec : Prop :=
  ∀ n, P14441599187806387462.a n = A026277 (n + 1)

end A026277

/-! ## A026277.P9873236456382791923

`A026242(A026278(n+1))-2`
-/

namespace A026277.P9873236456382791923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (A026278 (n + 1)).toNat - 2

end

end A026277.P9873236456382791923

namespace A026277

/-- `A026242(A026278(n+1))-2` -/
def P9873236456382791923.Spec : Prop :=
  ∀ n, P9873236456382791923.a n = A026277 (n + 1)

end A026277

/-! ## A026277.P11939219711041964062

`A004526(A026285(2*(n+1)))`
-/

namespace A026277.P11939219711041964062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026285 (2 * (n + 1))).toNat

end

end A026277.P11939219711041964062

namespace A026277

/-- `A004526(A026285(2*(n+1)))` -/
def P11939219711041964062.Spec : Prop :=
  ∀ n, P11939219711041964062.a n = A026277 (n + 1)

end A026277

/-! ## A026277.P16349866191601786056

`A065033(A026285(2*(n+1))-1)`
-/

namespace A026277.P16349866191601786056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A026285 (2 * (n + 1)) - 1).toNat

end

end A026277.P16349866191601786056

namespace A026277

/-- `A065033(A026285(2*(n+1))-1)` -/
def P16349866191601786056.Spec : Prop :=
  ∀ n, P16349866191601786056.a n = A026277 (n + 1)

end A026277

/-!
# A026278: a(n) = greatest k such that s(k) = n, where s = A026276.

The programs for A026278, the canonical program `A026278.P1544389706053158847` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026278 has offset 1).

The definition of A026278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026278.P1544389706053158847

`A026277(n+1)+3+n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026278

/-- `A026277(n+1)+3+n` -/
def P1544389706053158847.Spec : Prop :=
  ∀ n, P1544389706053158847.a n = A026278 (n + 1)

theorem P1544389706053158847.correct : P1544389706053158847.Spec := by
  intro n
  simp only [A026278, Nat.add_sub_cancel]

end A026278

/-! ## A026278.P4387969398234798927

`record[A026276(n+1)+n+3]`
-/

namespace A026278.P4387969398234798927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026276 (n + 1) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026278.P4387969398234798927

namespace A026278

/-- `record[A026276(n+1)+n+3]` -/
def P4387969398234798927.Spec : Prop :=
  ∀ n, P4387969398234798927.a n = A026278 (n + 1)

end A026278

/-! ## A026278.P16621606851180785735

`A000201(A026277(n+1)+2)`
-/

namespace A026278.P16621606851180785735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A026277 (n + 1) + 2).toNat

end

end A026278.P16621606851180785735

namespace A026278

/-- `A000201(A026277(n+1)+2)` -/
def P16621606851180785735.Spec : Prop :=
  ∀ n, P16621606851180785735.a n = A026278 (n + 1)

end A026278

/-! ## A026278.P683021400423349557

`A123108(A026286(2*(n+1)))`
-/

namespace A026278.P683021400423349557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A026286 (2 * (n + 1))).toNat

end

end A026278.P683021400423349557

namespace A026278

/-- `A123108(A026286(2*(n+1)))` -/
def P683021400423349557.Spec : Prop :=
  ∀ n, P683021400423349557.a n = A026278 (n + 1)

end A026278

/-! ## A026278.P4241269213901630955

`A335999(n+2)+2+n`
-/

namespace A026278.P4241269213901630955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335999 (n + 2) + 2 + (n : ℤ)

end

end A026278.P4241269213901630955

namespace A026278

/-- `A335999(n+2)+2+n` -/
def P4241269213901630955.Spec : Prop :=
  ∀ n, P4241269213901630955.a n = A026278 (n + 1)

end A026278

/-! ## A026278.P7431231917105638250

`A000201(A335999(n+2)+1)`
-/

namespace A026278.P7431231917105638250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A335999 (n + 2) + 1).toNat

end

end A026278.P7431231917105638250

namespace A026278

/-- `A000201(A335999(n+2)+1)` -/
def P7431231917105638250.Spec : Prop :=
  ∀ n, P7431231917105638250.a n = A026278 (n + 1)

end A026278

/-! ## A026278.P12970293951900433970

`A066096(A335999(n+2)+1)`
-/

namespace A026278.P12970293951900433970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A335999 (n + 2) + 1).toNat

end

end A026278.P12970293951900433970

namespace A026278

/-- `A066096(A335999(n+2)+1)` -/
def P12970293951900433970.Spec : Prop :=
  ∀ n, P12970293951900433970.a n = A026278 (n + 1)

end A026278

/-! ## A026278.P6834948817849817581

`A000201(A000201(n+2))-A003849(A133512(n+2))`
-/

namespace A026278.P6834948817849817581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000201 (n + 2)).toNat - A003849 (A133512 (n + 2)).toNat

end

end A026278.P6834948817849817581

namespace A026278

/-- `A000201(A000201(n+2))-A003849(A133512(n+2))` -/
def P6834948817849817581.Spec : Prop :=
  ∀ n, P6834948817849817581.a n = A026278 (n + 1)

end A026278

/-! ## A026278.P17041790206255518588

`A336008(n+1)-1`
-/

namespace A026278.P17041790206255518588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336008 (n + 1) - 1

end

end A026278.P17041790206255518588

namespace A026278

/-- `A336008(n+1)-1` -/
def P17041790206255518588.Spec : Prop :=
  ∀ n, P17041790206255518588.a n = A026278 (n + 1)

end A026278

/-!
# A026280: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m) + m + 3, else a(n) = least positive integer that has not yet occurred.

The programs for A026280, there is no canonical definition to state claims against.
-/

/-! ## A026280.P4110285680778997565

`A023133(∑[A309658(n)!])`
-/

namespace A026280.P4110285680778997565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309658 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023133 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026280.P4110285680778997565

/-!
# A026281: a(n) = least k such that s(k) = n, where s = A026280.

The programs for A026281, the canonical program `A026281.P12566822961681362854` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026281 has offset 1).

The definition of A026281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026281.P12566822961681362854

`a(n-1)-(a(a(n-1)-n)+1)+n` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026281

/-- `a(n-1)-(a(a(n-1)-n)+1)+n` -/
def P12566822961681362854.Spec : Prop :=
  ∀ n, P12566822961681362854.a n = A026281 (n + 1)

theorem P12566822961681362854.correct : P12566822961681362854.Spec := by
  intro n
  simp only [A026281, Nat.add_sub_cancel]

end A026281

/-! ## A026281.P7983000970862376725

`n-(1-(a(n-1)-a(a(n-1)-n)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A026281.P7983000970862376725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (n : ℤ) - (1 - (a (n - 1) - a (a (n - 1) - (n : ℤ)).toNat))

end

end A026281.P7983000970862376725

namespace A026281

/-- `n-(1-(a(n-1)-a(a(n-1)-n)))` -/
def P7983000970862376725.Spec : Prop :=
  ∀ n, P7983000970862376725.a n = A026281 (n + 1)

end A026281

/-! ## A026281.P9918049895003451177

`A026282(n+1)-(n+4)`
-/

namespace A026281.P9918049895003451177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026282 (n + 1) - (n + 4 : ℤ)

end

end A026281.P9918049895003451177

namespace A026281

/-- `A026282(n+1)-(n+4)` -/
def P9918049895003451177.Spec : Prop :=
  ∀ n, P9918049895003451177.a n = A026281 (n + 1)

theorem P9918049895003451177.correct : P9918049895003451177.Spec := by
  intro n
  simp only [A026281, Nat.add_sub_cancel, A026281.P9918049895003451177.a, A026281.P12566822961681362854.a, A026282, A026282.P10518951122286550026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026281

/-! ## A026281.P10190195259609621917

`A000010(n-a(a(n-1)%n))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A026281.P10190195259609621917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000010 ((n : ℤ) - a (Int.tmod (a (n - 1)) (n : ℤ)).toNat).toNat + a (n - 1)

end

end A026281.P10190195259609621917

namespace A026281

/-- `A000010(n-a(a(n-1)%n))+a(n-1)` -/
def P10190195259609621917.Spec : Prop :=
  ∀ n, P10190195259609621917.a n = A026281 (n + 1)

end A026281

/-! ## A026281.P4968671696321786315

`a(n-1)+A007318(a(n-a(a(n-1)-n)))` with `a(0)=1`
-/

namespace A026281.P4968671696321786315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (a ((n : ℤ) - a (a (n - 1) - (n : ℤ)).toNat).toNat).toNat

end

end A026281.P4968671696321786315

namespace A026281

/-- `a(n-1)+A007318(a(n-a(a(n-1)-n)))` -/
def P4968671696321786315.Spec : Prop :=
  ∀ n, P4968671696321786315.a n = A026281 (n + 1)

end A026281

/-! ## A026281.P7074148041642126875

`A005206(A026282(n+1)-4)`
-/

namespace A026281.P7074148041642126875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A026282 (n + 1) - 4).toNat

end

end A026281.P7074148041642126875

namespace A026281

/-- `A005206(A026282(n+1)-4)` -/
def P7074148041642126875.Spec : Prop :=
  ∀ n, P7074148041642126875.a n = A026281 (n + 1)

end A026281

/-! ## A026281.P14651559066363490500

`record[A026280(n+1)+n]-n`
-/

namespace A026281.P14651559066363490500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026280 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A026281.P14651559066363490500

namespace A026281

/-- `record[A026280(n+1)+n]-n` -/
def P14651559066363490500.Spec : Prop :=
  ∀ n, P14651559066363490500.a n = A026281 (n + 1)

end A026281

/-!
# A026282: a(n) = greatest k such that s(k) = n, where s = A026280.

The programs for A026282, the canonical program `A026282.P10518951122286550026` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026282 has offset 1).

The definition of A026282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026282.P10518951122286550026

`A026281(n+1)+4+n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026282

/-- `A026281(n+1)+4+n` -/
def P10518951122286550026.Spec : Prop :=
  ∀ n, P10518951122286550026.a n = A026282 (n + 1)

theorem P10518951122286550026.correct : P10518951122286550026.Spec := by
  intro n
  simp only [A026282, Nat.add_sub_cancel]

end A026282

/-! ## A026282.P3036656737330554912

`A026281(n+1)+A020705(n)`
-/

namespace A026282.P3036656737330554912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026281 (n + 1) + A020705 n

end

end A026282.P3036656737330554912

namespace A026282

/-- `A026281(n+1)+A020705(n)` -/
def P3036656737330554912.Spec : Prop :=
  ∀ n, P3036656737330554912.a n = A026282 (n + 1)

theorem P3036656737330554912.correct : P3036656737330554912.Spec := by
  intro n
  simp only [A026282, Nat.add_sub_cancel, A026282.P3036656737330554912.a, A026282.P10518951122286550026.a, A020705, A020705.P1213730512334166827.a, A026281, A026281.P12566822961681362854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026282

/-! ## A026282.P11496958639934127878

`record[A026280(n+1)+n+4]`
-/

namespace A026282.P11496958639934127878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026280 (n + 1) + (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026282.P11496958639934127878

namespace A026282

/-- `record[A026280(n+1)+n+4]` -/
def P11496958639934127878.Spec : Prop :=
  ∀ n, P11496958639934127878.a n = A026282 (n + 1)

end A026282

/-! ## A026282.P6423821666413162877

`lt[A026280(n+1), A026261(n+1)]+1`
-/

namespace A026282.P6423821666413162877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A026282.P6423821666413162877

namespace A026282

/-- `lt[A026280(n+1), A026261(n+1)]+1` -/
def P6423821666413162877.Spec : Prop :=
  ∀ n, (P6423821666413162877.a n : ℤ) = A026282 (n + 1)

end A026282

/-! ## A026282.P5071508871665581844

`lt[2*A026280(A233583(n+1)), n]`
-/

namespace A026282.P5071508871665581844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026280 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026282.P5071508871665581844

namespace A026282

/-- `lt[2*A026280(A233583(n+1)), n]` -/
def P5071508871665581844.Spec : Prop :=
  ∀ n, (P5071508871665581844.a n : ℤ) = A026282 (n + 1)

end A026282

/-! ## A026282.P12720864661709892552

`lt[A026280(A233583(n+1)), A026261(n+1)]`
-/

namespace A026282.P12720864661709892552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026280 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026282.P12720864661709892552

namespace A026282

/-- `lt[A026280(A233583(n+1)), A026261(n+1)]` -/
def P12720864661709892552.Spec : Prop :=
  ∀ n, (P12720864661709892552.a n : ℤ) = A026282 (n + 1)

end A026282

/-! ## A026282.P16542963085097883243

`lt[A026280(A233583(n+1)), A026272(n+1)]`
-/

namespace A026282.P16542963085097883243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026280 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026282.P16542963085097883243

namespace A026282

/-- `lt[A026280(A233583(n+1)), A026272(n+1)]` -/
def P16542963085097883243.Spec : Prop :=
  ∀ n, (P16542963085097883243.a n : ℤ) = A026282 (n + 1)

end A026282

/-! ## A026282.P7527648080123271408

`lt[A026280(A233583(n+1))+1, A026280(n+1)]`
-/

namespace A026282.P7527648080123271408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026280 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026280 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026282.P7527648080123271408

namespace A026282

/-- `lt[A026280(A233583(n+1))+1, A026280(n+1)]` -/
def P7527648080123271408.Spec : Prop :=
  ∀ n, (P7527648080123271408.a n : ℤ) = A026282 (n + 1)

end A026282

/-! ## A026282.P17968545924424967099

`record[A054081(A167499(n+3))]`
-/

namespace A026282.P17968545924424967099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054081 (A167499 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026282.P17968545924424967099

namespace A026282

/-- `record[A054081(A167499(n+3))]` -/
def P17968545924424967099.Spec : Prop :=
  ∀ n, P17968545924424967099.a n = A026282 (n + 1)

end A026282

/-!
# A026284: a(n) = a(m) if a(m) has already occurred exactly once and n = a(m) + m + 4, else a(n) = least positive integer that has not yet occurred.

The programs for A026284, there is no canonical definition to state claims against.
-/

/-! ## A026284.P12763378544404483145

`A167971(lt[A187829(n+1), A334035(n+1)])`
-/

namespace A026284.P12763378544404483145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167971 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026284.P12763378544404483145

/-! ## A026284.P6564480250432230998

`A033930(lt[A347470(2*n), A091972(2*n+1)])`
-/

namespace A026284.P6564480250432230998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026284.P6564480250432230998

/-! ## A026284.P11169682566790098095

`A001511(lcm(A039599(n), A366277(n+1)))`
-/

namespace A026284.P11169682566790098095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lcm (A039599 n) (A366277 (n + 1)))

end

end A026284.P11169682566790098095

/-! ## A026284.P10472344582256698096

`A025581(lt[A161618(n+1), A334824(n)])`
-/

namespace A026284.P10472344582256698096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A026284.P10472344582256698096

/-! ## A026284.P5551668366509492360

`A007953(eq[A000007(n), A347470(2*n)])`
-/

namespace A026284.P5551668366509492360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347470 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A026284.P5551668366509492360

/-!
# A026285: a(n) = least k such that s(k) = n, where s = A026284.

The programs for A026285, the canonical program `A026285.P543354236630135827` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026285 has offset 1).

The definition of A026285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026285.P543354236630135827

`a(n-1)+n-a(a(n-1)-n)-2` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A026285

/-- `a(n-1)+n-a(a(n-1)-n)-2` -/
def P543354236630135827.Spec : Prop :=
  ∀ n, P543354236630135827.a n = A026285 (n + 1)

theorem P543354236630135827.correct : P543354236630135827.Spec := by
  intro n
  simp only [A026285, Nat.add_sub_cancel]

end A026285

/-! ## A026285.P257752960416872105

`A026286(n+1)-(n+5)`
-/

namespace A026285.P257752960416872105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026286 (n + 1) - (n + 5 : ℤ)

end

end A026285.P257752960416872105

namespace A026285

/-- `A026286(n+1)-(n+5)` -/
def P257752960416872105.Spec : Prop :=
  ∀ n, P257752960416872105.a n = A026285 (n + 1)

theorem P257752960416872105.correct : P257752960416872105.Spec := by
  intro n
  simp only [A026285, Nat.add_sub_cancel, A026285.P257752960416872105.a, A026285.P543354236630135827.a, A026286, A026286.P2604312345630252657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026285

/-! ## A026285.P18403667876418198859

`a(n-1)+A007318(n-a(a(n-1)-n))` with `a(0)=1`
-/

namespace A026285.P18403667876418198859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 ((n : ℤ) - a (a (n - 1) - (n : ℤ)).toNat).toNat

end

end A026285.P18403667876418198859

namespace A026285

/-- `a(n-1)+A007318(n-a(a(n-1)-n))` -/
def P18403667876418198859.Spec : Prop :=
  ∀ n, P18403667876418198859.a n = A026285 (n + 1)

end A026285

/-! ## A026285.P1976768773479822736

`A000010(A000010(n+1-a(a(n-1)%n)))+a(n-1)` with `a(0)=1`
-/

namespace A026285.P1976768773479822736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (A000010 ((n + 1 : ℤ) - a (Int.tmod (a (n - 1)) (n : ℤ)).toNat).toNat).toNat + a (n - 1)

end

end A026285.P1976768773479822736

namespace A026285

/-- `A000010(A000010(n+1-a(a(n-1)%n)))+a(n-1)` -/
def P1976768773479822736.Spec : Prop :=
  ∀ n, P1976768773479822736.a n = A026285 (n + 1)

end A026285

/-! ## A026285.P14978263335334640078

`record[A026284(n+1)+n]-n`
-/

namespace A026285.P14978263335334640078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A026285.P14978263335334640078

namespace A026285

/-- `record[A026284(n+1)+n]-n` -/
def P14978263335334640078.Spec : Prop :=
  ∀ n, P14978263335334640078.a n = A026285 (n + 1)

end A026285

/-! ## A026285.P7978178512411514655

`eq[char[A026286(n+1)], A000007(n)]`
-/

namespace A026285.P7978178512411514655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026286 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A026285.P7978178512411514655

namespace A026285

/-- `eq[char[A026286(n+1)], A000007(n)]` -/
def P7978178512411514655.Spec : Prop :=
  ∀ n, (P7978178512411514655.a n : ℤ) = A026285 (n + 1)

end A026285

/-!
# A026286: a(n) = greatest k such that s(k) = n, where s = A026284.

The programs for A026286, the canonical program `A026286.P2604312345630252657` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026286 has offset 1).

The definition of A026286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026286.P2604312345630252657

`A026285(n+1)+5+n`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A026286

/-- `A026285(n+1)+5+n` -/
def P2604312345630252657.Spec : Prop :=
  ∀ n, P2604312345630252657.a n = A026286 (n + 1)

theorem P2604312345630252657.correct : P2604312345630252657.Spec := by
  intro n
  simp only [A026286, Nat.add_sub_cancel]

end A026286

/-! ## A026286.P996553209434056578

`A026285(n+1)+A020710(n)`
-/

namespace A026286.P996553209434056578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026285 (n + 1) + A020710 n

end

end A026286.P996553209434056578

namespace A026286

/-- `A026285(n+1)+A020710(n)` -/
def P996553209434056578.Spec : Prop :=
  ∀ n, P996553209434056578.a n = A026286 (n + 1)

theorem P996553209434056578.correct : P996553209434056578.Spec := by
  intro n
  simp only [A026286, Nat.add_sub_cancel, A026286.P996553209434056578.a, A026286.P2604312345630252657.a, A020710, A020710.P12161966585787702209.a, A026285, A026285.P543354236630135827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A026286

/-! ## A026286.P18159561901226818284

`record[A026284(n+1)+n+5]`
-/

namespace A026286.P18159561901226818284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (n + 1) + (n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026286.P18159561901226818284

namespace A026286

/-- `record[A026284(n+1)+n+5]` -/
def P18159561901226818284.Spec : Prop :=
  ∀ n, P18159561901226818284.a n = A026286 (n + 1)

end A026286

/-! ## A026286.P8760900479308252203

`A020710(record[A026284(n+1)+n])`
-/

namespace A026286.P8760900479308252203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A026286.P8760900479308252203

namespace A026286

/-- `A020710(record[A026284(n+1)+n])` -/
def P8760900479308252203.Spec : Prop :=
  ∀ n, P8760900479308252203.a n = A026286 (n + 1)

end A026286

/-! ## A026286.P5001023855732881345

`lt[A026284(n+1), A026261(n+1)]+1`
-/

namespace A026286.P5001023855732881345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A026286.P5001023855732881345

namespace A026286

/-- `lt[A026284(n+1), A026261(n+1)]+1` -/
def P5001023855732881345.Spec : Prop :=
  ∀ n, (P5001023855732881345.a n : ℤ) = A026286 (n + 1)

end A026286

/-! ## A026286.P5577053038773414195

`lt[A026284(n+1), A026272(n+1)]+1`
-/

namespace A026286.P5577053038773414195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A026286.P5577053038773414195

namespace A026286

/-- `lt[A026284(n+1), A026272(n+1)]+1` -/
def P5577053038773414195.Spec : Prop :=
  ∀ n, (P5577053038773414195.a n : ℤ) = A026286 (n + 1)

end A026286

/-! ## A026286.P7651219718350809914

`lt[2*A026284(A233583(n+1)), n]`
-/

namespace A026286.P7651219718350809914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026284 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A026286.P7651219718350809914

namespace A026286

/-- `lt[2*A026284(A233583(n+1)), n]` -/
def P7651219718350809914.Spec : Prop :=
  ∀ n, (P7651219718350809914.a n : ℤ) = A026286 (n + 1)

end A026286

/-! ## A026286.P14346516253089485278

`lt[A026284(A233583(n+1)), A026261(n+1)]`
-/

namespace A026286.P14346516253089485278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026286.P14346516253089485278

namespace A026286

/-- `lt[A026284(A233583(n+1)), A026261(n+1)]` -/
def P14346516253089485278.Spec : Prop :=
  ∀ n, (P14346516253089485278.a n : ℤ) = A026286 (n + 1)

end A026286

/-! ## A026286.P15408478103036524027

`lt[A026284(A233583(n+1)), A026272(n+1)]`
-/

namespace A026286.P15408478103036524027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026286.P15408478103036524027

namespace A026286

/-- `lt[A026284(A233583(n+1)), A026272(n+1)]` -/
def P15408478103036524027.Spec : Prop :=
  ∀ n, (P15408478103036524027.a n : ℤ) = A026286 (n + 1)

end A026286

/-! ## A026286.P7977396705407236634

`lt[A026284(A233583(n+1))+1, A026284(n+1)]`
-/

namespace A026286.P7977396705407236634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026284 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A026286.P7977396705407236634

namespace A026286

/-- `lt[A026284(A233583(n+1))+1, A026284(n+1)]` -/
def P7977396705407236634.Spec : Prop :=
  ∀ n, (P7977396705407236634.a n : ℤ) = A026286 (n + 1)

end A026286

/-!
# A026288: Number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, s(1) = 1, s(n) = 2, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also T(n,n-2), where T is the array in A026268.

The programs for A026288, the canonical program `A026288.P16717584627320479828` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A026288 has offset 2).

The definition of A026288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A026288.P7049919199703375264

`Δ[Δ[A382987(n)]]`
-/

namespace A026288.P7049919199703375264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026288.P7049919199703375264

namespace A026288

/-- `Δ[Δ[A382987(n)]]` -/
def P7049919199703375264.Spec : Prop :=
  ∀ n, P7049919199703375264.a n = A026288 (n + 2)

end A026288

/-! ## A026288.P15394497484072427321

`Δ[Δ[A275210(n)+A275209(n)]]`
-/

namespace A026288.P15394497484072427321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275210 n + A275209 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026288.P15394497484072427321

namespace A026288

/-- `Δ[Δ[A275210(n)+A275209(n)]]` -/
def P15394497484072427321.Spec : Prop :=
  ∀ n, P15394497484072427321.a n = A026288 (n + 2)

end A026288

/-! ## A026288.P16717584627320479828

`Δ[A102071(n+2)%A102071(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A026288

/-- `Δ[A102071(n+2)%A102071(n+1)]` -/
def P16717584627320479828.Spec : Prop :=
  ∀ n, P16717584627320479828.a n = A026288 (n + 2)

theorem P16717584627320479828.correct : P16717584627320479828.Spec := by
  intro n
  simp only [A026288, Nat.add_sub_cancel]

end A026288

/-! ## A026288.P3935769512238221352

`A026268(∑[n+3])`
-/

namespace A026288.P3935769512238221352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026288.P3935769512238221352

namespace A026288

/-- `A026268(∑[n+3])` -/
def P3935769512238221352.Spec : Prop :=
  ∀ n, P3935769512238221352.a n = A026288 (n + 2)

end A026288

/-! ## A026288.P2350271657199817677

`record[A026268(A131032(n+2)+n)]`
-/

namespace A026288.P2350271657199817677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A131032 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026288.P2350271657199817677

namespace A026288

/-- `record[A026268(A131032(n+2)+n)]` -/
def P2350271657199817677.Spec : Prop :=
  ∀ n, P2350271657199817677.a n = A026288 (n + 2)

end A026288

/-! ## A026288.P14700291651245043587

`record[A026268(n)/A026268(n+3)]`
-/

namespace A026288.P14700291651245043587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026268 n : ℚ) / (A026268 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026288.P14700291651245043587

namespace A026288

/-- `record[A026268(n)/A026268(n+3)]` -/
def P14700291651245043587.Spec : Prop :=
  ∀ n, P14700291651245043587.a n = (A026288 (n + 2) : ℚ)

end A026288

/-! ## A026288.P8906560980025887784

`record[A026268(n)-A355360(n+3)]`
-/

namespace A026288.P8906560980025887784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 n - A355360 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026288.P8906560980025887784

namespace A026288

/-- `record[A026268(n)-A355360(n+3)]` -/
def P8906560980025887784.Spec : Prop :=
  ∀ n, P8906560980025887784.a n = A026288 (n + 2)

end A026288

/-!
# A026289: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, s(1) = 1, s(n) = 3, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also a(n) = T(n,n-3), where T is the array in A026268.

The programs for A026289, there is no canonical definition to state claims against.
-/

/-! ## A026289.P16643391798580009128

`A026268(∑[n+4]+2)`
-/

namespace A026289.P16643391798580009128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A026289.P16643391798580009128

/-! ## A026289.P15143919641784082055

`record[A026268(n)/A026268(n+4)]`
-/

namespace A026289.P15143919641784082055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026268 n : ℚ) / (A026268 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026289.P15143919641784082055

/-! ## A026289.P2668147792629625605

`record[A026268(A046691(A020986(n)))]`
-/

namespace A026289.P2668147792629625605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A046691 (A020986 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026289.P2668147792629625605

/-! ## A026289.P12757147016160026476

`or(A209939(A184945(3*n+1)), A291020(n))`
-/

namespace A026289.P12757147016160026476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209939 (A184945 (3 * n + 1)).toNat) (A291020 n)

end

end A026289.P12757147016160026476

/-!
# A026290: a(n) = number of (s(0), s(1), ..., s(n)) such that every s(i) is an integer, s(0) = 0, s(1) = 1, s(n) = 4, |s(i) - s(i-1)| <= 1 for i >=2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also a(n) = T(n,n-4), where T is the array in A026268.

The programs for A026290, there is no canonical definition to state claims against.
-/

/-! ## A026290.P1005921201766650888

`A026268(∑[n+5]+5)`
-/

namespace A026290.P1005921201766650888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A026290.P1005921201766650888

/-! ## A026290.P15305283286025069024

`record[C(A026268(n), A064315(n+5))]`
-/

namespace A026290.P15305283286025069024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026268 n).toNat (A064315 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A026290.P15305283286025069024

/-! ## A026290.P14868476230062534339

`A070098(A058481(n+2)-A000040(2*n+1))`
-/

namespace A026290.P14868476230062534339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (A058481 (n + 2) - A000040 (2 * n + 1)).toNat

end

end A026290.P14868476230062534339

/-!
# A026291: a(n) = T(2n-1,n), where T is the array in A026268.

The programs for A026291, there is no canonical definition to state claims against.
-/

/-! ## A026291.P9779214797032179134

`A026111(n+2)-A026117(2*n+1)`
-/

namespace A026291.P9779214797032179134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026111 (n + 2) - A026117 (2 * n + 1)

end

end A026291.P9779214797032179134

/-! ## A026291.P9468445647479896115

`A026268(2*(n+2)²)`
-/

namespace A026291.P9468445647479896115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (2 * (n + 2) ^ 2)

end

end A026291.P9468445647479896115

/-! ## A026291.P11475268890267202708

`A026268(A001105(n+2))%A000079(3*(n+1))`
-/

namespace A026291.P11475268890267202708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026268 (A001105 (n + 2)).toNat) (A000079 (3 * (n + 1)))

end

end A026291.P11475268890267202708

/-! ## A026291.P5010250592281189653

`A026268(A001105(n+2))%A056543(n+5)`
-/

namespace A026291.P5010250592281189653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026268 (A001105 (n + 2)).toNat) (A056543 (n + 5))

end

end A026291.P5010250592281189653

/-!
# A026292: a(n) = T(2n,n), where T is the array in A026268.

The programs for A026292, there is no canonical definition to state claims against.
-/

/-! ## A026292.P5855243381906906879

`A026297(2*n)`
-/

namespace A026292.P5855243381906906879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026297 (2 * n)

end

end A026292.P5855243381906906879

/-! ## A026292.P17404472349512447011

`or(char[1], A026297(A005843(n)))`
-/

namespace A026292.P17404472349512447011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A026297 (A005843 n).toNat)

end

end A026292.P17404472349512447011

/-! ## A026292.P13775031347547360066

`lcm(A020985(n), A026297(A005843(n)))`
-/

namespace A026292.P13775031347547360066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A026297 (A005843 n).toNat)

end

end A026292.P13775031347547360066

/-! ## A026292.P11466962319041473675

`or(A019590(n+1), A026297(A004277(n)))`
-/

namespace A026292.P11466962319041473675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A026297 (A004277 n).toNat)

end

end A026292.P11466962319041473675

/-! ## A026292.P5970173931301903894

`A026297(A005843(n))/A029653(A000096(n))`
-/

namespace A026292.P5970173931301903894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026297 (A005843 n).toNat : ℚ) / (A029653 (A000096 n).toNat : ℚ)

end

end A026292.P5970173931301903894

/-! ## A026292.P4505351089645991818

`A026297(A005843(n))/A001222(A118749(n+1))`
-/

namespace A026292.P4505351089645991818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026297 (A005843 n).toNat : ℚ) / (A001222 (A118749 (n + 1)).toNat : ℚ)

end

end A026292.P4505351089645991818

/-! ## A026292.P4233556305017734658

`A026297(A005843(n))%A026291(n+2)`
-/

namespace A026292.P4233556305017734658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026297 (A005843 n).toNat) (A026291 (n + 2))

end

end A026292.P4233556305017734658

/-! ## A026292.P8564304357652237779

`A026268(∑[4*n])`
-/

namespace A026292.P8564304357652237779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A026292.P8564304357652237779

/-! ## A026292.P7673849034606292051

`A026297(A004277(n))%A001348(n+1)`
-/

namespace A026292.P7673849034606292051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026297 (A004277 n).toNat) (A001348 (n + 1))

end

end A026292.P7673849034606292051

/-!
# A026293: a(n) = T(3n,n), where T is the array in A026268.

The programs for A026293, there is no canonical definition to state claims against.
-/

/-! ## A026293.P1086385218707940313

`A026268(A062725(n))`
-/

namespace A026293.P1086385218707940313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A062725 n).toNat

end

end A026293.P1086385218707940313

/-! ## A026293.P6163786406917129697

`A026268(A062728(n)-n)`
-/

namespace A026293.P6163786406917129697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A062728 n - (n : ℤ)).toNat

end

end A026293.P6163786406917129697

/-! ## A026293.P6509521847030899507

`A026268(A002943(n)+∑[n])`
-/

namespace A026293.P6509521847030899507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A002943 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A026293.P6509521847030899507

/-! ## A026293.P9066205531058814287

`A026268(A000217(3*n)+n)`
-/

namespace A026293.P9066205531058814287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A026293.P9066205531058814287

/-! ## A026293.P3117218727989829801

`A026268(A125202(n+1)+A000124(n))`
-/

namespace A026293.P3117218727989829801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A125202 (n + 1) + A000124 n).toNat

end

end A026293.P3117218727989829801

/-!
# A026294: T(4n,n), where T is the array in A026268.

The programs for A026294, there is no canonical definition to state claims against.
-/

/-! ## A026294.P16087588579474846845

`A026268(n*(floor(2/acot(4*n))+3))`
-/

namespace A026294.P16087588579474846845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 ((n : ℤ) * (⌊2 / SequenceMachineLib.acot (4 * n : ℝ)⌋ + 3)).toNat

end

end A026294.P16087588579474846845

/-! ## A026294.P6095903248517184199

`A026268(A139276(n))`
-/

namespace A026294.P6095903248517184199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A139276 n).toNat

end

end A026294.P6095903248517184199

/-! ## A026294.P1604412490946470333

`A026268(n*A017101(n))`
-/

namespace A026294.P1604412490946470333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 ((n : ℤ) * A017101 n).toNat

end

end A026294.P1604412490946470333

/-! ## A026294.P13998987569572400619

`A026268(A014105(2*n)+n)`
-/

namespace A026294.P13998987569572400619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A014105 (2 * n) + (n : ℤ)).toNat

end

end A026294.P13998987569572400619

/-! ## A026294.P4291900265613943979

`A026268(A000384(2*n+1)-A016777(n))`
-/

namespace A026294.P4291900265613943979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A000384 (2 * n + 1) - A016777 n).toNat

end

end A026294.P4291900265613943979

/-!
# A026295: a(n) = T(2n,n-1), where T is the array in A026268.

The programs for A026295, there is no canonical definition to state claims against.
-/

/-! ## A026295.P6050530929743559570

`A026115(n+1)+A026112(n)-A026128(n)`
-/

namespace A026295.P6050530929743559570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026115 (n + 1) + (A026112 n - A026128 n)

end

end A026295.P6050530929743559570

/-! ## A026295.P10328010034951279816

`A026268(A132209(n+1))`
-/

namespace A026295.P10328010034951279816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A132209 (n + 1)).toNat

end

end A026295.P10328010034951279816

/-! ## A026295.P832256330098424090

`A026268(A142463(n+1))`
-/

namespace A026295.P832256330098424090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A142463 (n + 1)).toNat

end

end A026295.P832256330098424090

/-! ## A026295.P9799316139969647844

`A026268(A001844(n+1)-2)`
-/

namespace A026295.P9799316139969647844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A001844 (n + 1) - 2).toNat

end

end A026295.P9799316139969647844

/-! ## A026295.P2799559718447577556

`A026268(A099776(n+1)-2)`
-/

namespace A026295.P2799559718447577556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A099776 (n + 1) - 2).toNat

end

end A026295.P2799559718447577556

/-! ## A026295.P39529868900273867

`A026268(A047838(2*n+3))`
-/

namespace A026295.P39529868900273867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A047838 (2 * n + 3)).toNat

end

end A026295.P39529868900273867

/-! ## A026295.P10718361684840324011

`A026268(A014105(n+1)+n)`
-/

namespace A026295.P10718361684840324011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A014105 (n + 1) + (n : ℤ)).toNat

end

end A026295.P10718361684840324011

/-! ## A026295.P12136380610694561443

`A026268(A000096(2*n+1)+n+1)`
-/

namespace A026295.P12136380610694561443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A000096 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A026295.P12136380610694561443

/-!
# A026296: a(n) = T(2n,n+1), where T is the array in A026268.

The programs for A026296, there is no canonical definition to state claims against.
-/

/-! ## A026296.P15361991024049491013

`A026116(n+1)-A026112(n)%A026115(n+1)`
-/

namespace A026296.P15361991024049491013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026116 (n + 1) - Int.tmod (A026112 n) (A026115 (n + 1))

end

end A026296.P15361991024049491013

/-! ## A026296.P15335560370150656132

`A026116(n+1)-A026112(n)%A016277(n)`
-/

namespace A026296.P15335560370150656132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026116 (n + 1) - Int.tmod (A026112 n) (A016277 n)

end

end A026296.P15335560370150656132

/-! ## A026296.P9190034509936101915

`A026268(A001844(n+1))`
-/

namespace A026296.P9190034509936101915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A001844 (n + 1)).toNat

end

end A026296.P9190034509936101915

/-! ## A026296.P2971642914541934081

`A026268(A099776(n+1))`
-/

namespace A026296.P2971642914541934081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A099776 (n + 1)).toNat

end

end A026296.P2971642914541934081

/-! ## A026296.P5419704392336535031

`A026268(A132209(n+1)+2)`
-/

namespace A026296.P5419704392336535031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A132209 (n + 1) + 2).toNat

end

end A026296.P5419704392336535031

/-! ## A026296.P473775577159788998

`A026268(A142463(n+1)+2)`
-/

namespace A026296.P473775577159788998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A142463 (n + 1) + 2).toNat

end

end A026296.P473775577159788998

/-! ## A026296.P448953515316837809

`A026268(A047838(2*n+3)+2)`
-/

namespace A026296.P448953515316837809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A047838 (2 * n + 3) + 2).toNat

end

end A026296.P448953515316837809

/-! ## A026296.P4201248507242958942

`A026268(A016777(n+1)+A000384(n+1))`
-/

namespace A026296.P4201248507242958942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A016777 (n + 1) + A000384 (n + 1)).toNat

end

end A026296.P4201248507242958942

/-!
# A026297: a(n) = T(n,[ n/2 ]), where T is the array in A026268.

The programs for A026297, there is no canonical definition to state claims against.
-/

/-! ## A026297.P7495580251679203671

`A026268(∑[and(n, -2)]+n)`
-/

namespace A026297.P7495580251679203671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A026297.P7495580251679203671

/-! ## A026297.P14333902957122051711

`A026268(floor(A005563(n)/2))`
-/

namespace A026297.P14333902957122051711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 ⌊(A005563 n : ℚ) / 2⌋.toNat

end

end A026297.P14333902957122051711

/-! ## A026297.P11504181627869506561

`A026268(∑[A052928(n)]+n)`
-/

namespace A026297.P11504181627869506561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A026297.P11504181627869506561

/-! ## A026297.P16112945499070631138

`A026268(A000217(n)+floor(n/2))`
-/

namespace A026297.P16112945499070631138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A000217 n + ⌊(n : ℚ) / 2⌋).toNat

end

end A026297.P16112945499070631138

/-! ## A026297.P71847787022247372

`A026268(A047838(n+2)-(n+1))`
-/

namespace A026297.P71847787022247372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026268 (A047838 (n + 2) - (n + 1 : ℤ)).toNat

end

end A026297.P71847787022247372

/-!
# A026299: Number of (s(0), s(1), ..., s(n)) such that every s(i) is a nonnegative integer, s(0) = 0, s(1) = 1, |s(i) - s(i-1)| <= 1 for i >= 2, |s(2) - s(1)| = 1, |s(3) - s(2)| = 1 if s(2) = 1. Also sum of numbers in row n+1 of the array T in A026268.

The programs for A026299, there is no canonical definition to state claims against.
-/

/-! ## A026299.P13624527691905589093

`Δ[A180562(A001844(n))%(3^n)]`
-/

namespace A026299.P13624527691905589093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180562 (A001844 n).toNat) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026299.P13624527691905589093

/-! ## A026299.P4374849725071579540

`A000007(n)+Δ[A180562(A001844(n))]`
-/

namespace A026299.P4374849725071579540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A026299.P4374849725071579540

/-! ## A026299.P15517261537091407977

`Δ[A180562(A001844(n))+A057427(n)]`
-/

namespace A026299.P15517261537091407977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (A001844 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026299.P15517261537091407977

/-! ## A026299.P758276580774129664

`Δ[A180562(A001844(n))-A054977(n)]`
-/

namespace A026299.P758276580774129664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180562 (A001844 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026299.P758276580774129664

