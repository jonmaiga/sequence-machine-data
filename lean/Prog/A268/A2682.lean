import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C025

/-!
# A268200: Nonnegative numbers n such that abs(n^4 - 97n^3 + 3294n^2 - 45458n + 213589) is prime.

The programs for A268200, there is no canonical definition to state claims against.
-/

/-! ## A268200.P13581783173096069098

`floor(A332339(n)/A003349(n+1))+n`
-/

namespace A268200.P13581783173096069098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332339 n : ℚ) / (A003349 (n + 1) : ℚ)⌋ + (n : ℤ)

end

end A268200.P13581783173096069098

/-! ## A268200.P10826291492876309159

`round(A324756(n)/A121035(n+1)+n)`
-/

namespace A268200.P10826291492876309159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A324756 n : ℚ) / (A121035 (n + 1) : ℚ) + (n : ℚ))

end

end A268200.P10826291492876309159

/-! ## A268200.P18045621436281772169

`round(A233285(A346471(2*n+3))/12)+n`
-/

namespace A268200.P18045621436281772169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A233285 (A346471 (2 * n + 3)).toNat : ℚ) / 12) + (n : ℤ)

end

end A268200.P18045621436281772169

/-! ## A268200.P2057841699463844347

`floor(A325650(n+1)/A025507(n+1))+n`
-/

namespace A268200.P2057841699463844347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325650 (n + 1) : ℚ) / (A025507 (n + 1) : ℚ)⌋ + (n : ℤ)

end

end A268200.P2057841699463844347

/-! ## A268200.P14936973427979404252

`floor(A331382(n+2)/A035137(n+1))+n`
-/

namespace A268200.P14936973427979404252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331382 (n + 2) : ℚ) / (A035137 (n + 1) : ℚ)⌋ + (n : ℤ)

end

end A268200.P14936973427979404252

/-! ## A268200.P15892484709884334676

`round(A338903(n+1)/A352492(n+5)+n)`
-/

namespace A268200.P15892484709884334676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A338903 (n + 1) : ℚ) / (A352492 (n + 5) : ℚ) + (n : ℚ))

end

end A268200.P15892484709884334676

/-! ## A268200.P105706676426840776

`ceil(A178858(n+1)/A102617(n+1))-1+n`
-/

namespace A268200.P105706676426840776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A178858 (n + 1) : ℚ) / (A102617 (n + 1) : ℚ)⌉ - 1 + (n : ℤ)

end

end A268200.P105706676426840776

/-! ## A268200.P8848253307741167092

`A123108(lt[A137734(n), A112133(3*n+5)])`
-/

namespace A268200.P8848253307741167092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112133 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A268200.P8848253307741167092

/-! ## A268200.P15778777429790949844

`A006257(floor(A026268(n)/A066085(n+1)))+n`
-/

namespace A268200.P15778777429790949844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 ⌊(A026268 n : ℚ) / (A066085 (n + 1) : ℚ)⌋.toNat + (n : ℤ)

end

end A268200.P15778777429790949844

/-! ## A268200.P7324593274295734662

`floor((A311348(n)+A311229(n))/A352540(n+2)+n)`
-/

namespace A268200.P7324593274295734662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A311348 n + A311229 n : ℚ) / (A352540 (n + 2) : ℚ) + (n : ℚ)⌋

end

end A268200.P7324593274295734662

/-!
# A268201: a(n) = 4*n^3 - 6*n^2 + 3*n - 1.

The programs for A268201, the canonical program `A268201.P4305419308101700443` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268201 has offset 1).

The definition of A268201 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268201.P4305419308101700443

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=13, a(2)=62, a(3)=171`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A268201

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4305419308101700443.Spec : Prop :=
  ∀ n, P4305419308101700443.a n = A268201 (n + 1)

theorem P4305419308101700443.correct : P4305419308101700443.Spec := by
  intro n
  simp only [A268201, Nat.add_sub_cancel]

end A268201

/-! ## A268201.P4518389716998736901

`∑[12*n²]+n`
-/

namespace A268201.P4518389716998736901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A268201.P4518389716998736901

namespace A268201

/-- `∑[12*n²]+n` -/
def P4518389716998736901.Spec : Prop :=
  ∀ n, (P4518389716998736901.a n : ℤ) = A268201 (n + 1)

end A268201

/-! ## A268201.P3532221832343601227

`floor(or(1, 2*n)^3/2)`
-/

namespace A268201.P3532221832343601227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) ^ 3 : ℚ) / 2⌋

end

end A268201.P3532221832343601227

namespace A268201

/-- `floor(or(1, 2*n)^3/2)` -/
def P3532221832343601227.Spec : Prop :=
  ∀ n, P3532221832343601227.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P6791541202394393249

`floor(xor(1, 2*n)^3/2)`
-/

namespace A268201.P6791541202394393249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n) ^ 3 : ℚ) / 2⌋

end

end A268201.P6791541202394393249

namespace A268201

/-- `floor(xor(1, 2*n)^3/2)` -/
def P6791541202394393249.Spec : Prop :=
  ∀ n, P6791541202394393249.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P7936931482402114808

`floor(Δ[C(2*n², 2)/2])`
-/

namespace A268201.P7936931482402114808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n ^ 2) 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A268201.P7936931482402114808

namespace A268201

/-- `floor(Δ[C(2*n², 2)/2])` -/
def P7936931482402114808.Spec : Prop :=
  ∀ n, P7936931482402114808.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P13364488573499794207

`floor(sinh(3*log(2*n+1)))`
-/

namespace A268201.P13364488573499794207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (3 * Real.log (2 * n + 1 : ℝ))⌋

end

end A268201.P13364488573499794207

namespace A268201

/-- `floor(sinh(3*log(2*n+1)))` -/
def P13364488573499794207.Spec : Prop :=
  ∀ n, P13364488573499794207.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P2768681408739285968

`round(sinh(3*log(2*n+1)))`
-/

namespace A268201.P2768681408739285968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (3 * Real.log (2 * n + 1 : ℝ)))

end

end A268201.P2768681408739285968

namespace A268201

/-- `round(sinh(3*log(2*n+1)))` -/
def P2768681408739285968.Spec : Prop :=
  ∀ n, P2768681408739285968.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P12293414587808982073

`Δ[n²²-C(n+1, 2)]`
-/

namespace A268201.P12293414587808982073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (Nat.choose (n + 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268201.P12293414587808982073

namespace A268201

/-- `Δ[n²²-C(n+1, 2)]` -/
def P12293414587808982073.Spec : Prop :=
  ∀ n, P12293414587808982073.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P8239995602636934897

`lcm(n, n+1-Δ[n²²])`
-/

namespace A268201.P8239995602636934897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A268201.P8239995602636934897

namespace A268201

/-- `lcm(n, n+1-Δ[n²²])` -/
def P8239995602636934897.Spec : Prop :=
  ∀ n, (P8239995602636934897.a n : ℤ) = A268201 (n + 1)

end A268201

/-! ## A268201.P972723394539106525

`xor(1, (2*n+1)^3)/2`
-/

namespace A268201.P972723394539106525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((2 * n + 1) ^ 3) : ℚ) / 2

end

end A268201.P972723394539106525

namespace A268201

/-- `xor(1, (2*n+1)^3)/2` -/
def P972723394539106525.Spec : Prop :=
  ∀ n, P972723394539106525.a n = (A268201 (n + 1) : ℚ)

end A268201

/-! ## A268201.P1698718229644249130

`n*∑[a(n-1)+8]` with `a(0)=3, a(1)=10`
-/

namespace A268201.P1698718229644249130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268201.P1698718229644249130

namespace A268201

/-- `n*∑[a(n-1)+8]` -/
def P1698718229644249130.Spec : Prop :=
  ∀ n, (P1698718229644249130.a n : ℤ) = A268201 (n + 1)

end A268201

/-! ## A268201.P8891298016347163745

`round(cot(2/(2*n+1)^3))`
-/

namespace A268201.P8891298016347163745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((2 * n + 1) ^ 3 : ℚ) : ℝ))

end

end A268201.P8891298016347163745

namespace A268201

/-- `round(cot(2/(2*n+1)^3))` -/
def P8891298016347163745.Spec : Prop :=
  ∀ n, P8891298016347163745.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P13149982778619575379

`and(-2, (2*n+1)^3)/2`
-/

namespace A268201.P13149982778619575379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) ((2 * n + 1) ^ 3 : ℤ) : ℚ) / 2

end

end A268201.P13149982778619575379

namespace A268201

/-- `and(-2, (2*n+1)^3)/2` -/
def P13149982778619575379.Spec : Prop :=
  ∀ n, P13149982778619575379.a n = (A268201 (n + 1) : ℚ)

end A268201

/-! ## A268201.P16959324076494604476

`floor(lcm(2, (2*n+1)^3)/4)`
-/

namespace A268201.P16959324076494604476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 ((2 * n + 1) ^ 3) : ℚ) / 4⌋

end

end A268201.P16959324076494604476

namespace A268201

/-- `floor(lcm(2, (2*n+1)^3)/4)` -/
def P16959324076494604476.Spec : Prop :=
  ∀ n, P16959324076494604476.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P16891082775890381560

`floor((2*n+1)/Δ[atan(2*n)])`
-/

namespace A268201.P16891082775890381560
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A268201.P16891082775890381560

namespace A268201

/-- `floor((2*n+1)/Δ[atan(2*n)])` -/
def P16891082775890381560.Spec : Prop :=
  ∀ n, P16891082775890381560.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P12025659555493660213

`n*record[lcm(n+1, n+3)-n]`
-/

namespace A268201.P12025659555493660213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n + 3) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268201.P12025659555493660213

namespace A268201

/-- `n*record[lcm(n+1, n+3)-n]` -/
def P12025659555493660213.Spec : Prop :=
  ∀ n, P12025659555493660213.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P10820456070497838949

`Δ[((n+1)²+n²)*C(n, 2)]`
-/

namespace A268201.P10820456070497838949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n ^ 2) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A268201.P10820456070497838949

namespace A268201

/-- `Δ[((n+1)²+n²)*C(n, 2)]` -/
def P10820456070497838949.Spec : Prop :=
  ∀ n, P10820456070497838949.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P961844148195523141

`floor((2*n+1)^3/gcd(2, 2*n))`
-/

namespace A268201.P961844148195523141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1) ^ 3 : ℚ) / (Nat.gcd 2 (2 * n) : ℚ)⌋

end

end A268201.P961844148195523141

namespace A268201

/-- `floor((2*n+1)^3/gcd(2, 2*n))` -/
def P961844148195523141.Spec : Prop :=
  ∀ n, P961844148195523141.a n = A268201 (n + 1)

end A268201

/-! ## A268201.P3309604623897482061

`floor(C(2*n+1, 2*n)^3/2)`
-/

namespace A268201.P3309604623897482061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) (2 * n) ^ 3 : ℚ) / 2⌋

end

end A268201.P3309604623897482061

namespace A268201

/-- `floor(C(2*n+1, 2*n)^3/2)` -/
def P3309604623897482061.Spec : Prop :=
  ∀ n, P3309604623897482061.a n = A268201 (n + 1)

end A268201

/-!
# A268202: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A268202, there is no canonical definition to state claims against.
-/

/-! ## A268202.P15783912284246386252

`A268195(2^n-1)`
-/

namespace A268202.P15783912284246386252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268195 (2 ^ n - 1)

end

end A268202.P15783912284246386252

/-! ## A268202.P14613991561301633652

`record[A268195(A255565(n))]`
-/

namespace A268202.P14613991561301633652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268195 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268202.P14613991561301633652

/-! ## A268202.P14130952694239589523

`record[A268195(A303765(n))]`
-/

namespace A268202.P14130952694239589523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268195 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268202.P14130952694239589523

/-! ## A268202.P2955124294512305053

`record[A268195(A324865(n+1))]`
-/

namespace A268202.P2955124294512305053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268195 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268202.P2955124294512305053

/-! ## A268202.P17076268252860309745

`record[A268195(A130321(n)-1)]`
-/

namespace A268202.P17076268252860309745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268195 (A130321 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268202.P17076268252860309745

/-!
# A268203: Number of nX4 0..4 arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A268203, there is no canonical definition to state claims against.
-/

/-! ## A268203.P9800703484388478524

`A268204(A141214(n+1))`
-/

namespace A268203.P9800703484388478524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268204 (A141214 (n + 1)).toNat

end

end A268203.P9800703484388478524

/-!
# A268204: T(n,k)=Number of nXk 0..k arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A268204, there is no canonical definition to state claims against.
-/

/-! ## A268204.P7769314826146320575

`A268249(n+1)-A102681(A095975(n+4))`
-/

namespace A268204.P7769314826146320575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268249 (n + 1) - A102681 (A095975 (n + 4)).toNat

end

end A268204.P7769314826146320575

/-! ## A268204.P6561826079389693476

`A268249(n+1)-A056975(A083881(n))`
-/

namespace A268204.P6561826079389693476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268249 (n + 1) - A056975 (A083881 n).toNat

end

end A268204.P6561826079389693476

/-! ## A268204.P16457770073248049921

`A268249(n+1)+A138514(A071382(n+1))`
-/

namespace A268204.P16457770073248049921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268249 (n + 1) + A138514 (A071382 (n + 1)).toNat

end

end A268204.P16457770073248049921

/-!
# A268205: Number of 1Xn 0..n arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A268205, there is no canonical definition to state claims against.
-/

/-! ## A268205.P1731704953480720629

`A269409((n+1)²+n²)`
-/

namespace A268205.P1731704953480720629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 ((n + 1) ^ 2 + n ^ 2)

end

end A268205.P1731704953480720629

/-! ## A268205.P8909349942907124594

`record[gcd(A114327(n), A269409(n+1))]`
-/

namespace A268205.P8909349942907124594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A269409 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268205.P8909349942907124594

/-! ## A268205.P14601112668928523842

`gcd(A000038(n), A269409(A001844(n)))`
-/

namespace A268205.P14601112668928523842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A269409 (A001844 n).toNat)

end

end A268205.P14601112668928523842

/-! ## A268205.P16053470598150958841

`A269409(A001844(n))%A223872(n+1)`
-/

namespace A268205.P16053470598150958841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269409 (A001844 n).toNat) (A223872 (n + 1))

end

end A268205.P16053470598150958841

/-! ## A268205.P1958143428041257953

`lcm(A269409(A001844(n)), A343785(n+1))`
-/

namespace A268205.P1958143428041257953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A269409 (A001844 n).toNat) (A343785 (n + 1))

end

end A268205.P1958143428041257953

/-!
# A268206: Number of 2Xn 0..n arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A268206, there is no canonical definition to state claims against.
-/

/-! ## A268206.P7077671629488582406

`A268205(n+1)²`
-/

namespace A268206.P7077671629488582406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268205 (n + 1) ^ 2

end

end A268206.P7077671629488582406

/-! ## A268206.P11308283154113442754

`A269409(2*n²+n+1+n)²`
-/

namespace A268206.P11308283154113442754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (2 * n ^ 2 + n + 1 + n) ^ 2

end

end A268206.P11308283154113442754

/-! ## A268206.P16477045349635325113

`record[gcd(A269409(n+1)², A114327(n))]`
-/

namespace A268206.P16477045349635325113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269409 (n + 1) ^ 2) (A114327 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268206.P16477045349635325113

/-! ## A268206.P16783884361846903229

`A268205(n+1)^A000032(A185238(n))`
-/

namespace A268206.P16783884361846903229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268205 (n + 1) : ℚ) ^ (A000032 (A185238 n).toNat : ℤ)

end

end A268206.P16783884361846903229

/-! ## A268206.P16972612596910488103

`A268205(n+1)^A020639(A002620(2*n+3))`
-/

namespace A268206.P16972612596910488103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268205 (n + 1) : ℚ) ^ (A020639 (A002620 (2 * n + 3)).toNat : ℤ)

end

end A268206.P16972612596910488103

/-!
# A268207: Number of 3Xn 0..n arrays with every repeated value in every row and column greater than the previous repeated value.

The programs for A268207, there is no canonical definition to state claims against.
-/

/-! ## A268207.P645777749572897469

`A268204(∑[n+2]+4)`
-/

namespace A268207.P645777749572897469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268204 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268207.P645777749572897469

/-!
# A268208: Number of paths from (0,0) to (n,n) using only steps North, Northeast and East (i.e., steps E(1,0), D(1,1), and N(0,1)) that do not cross y=x "vertically".

The programs for A268208, the canonical program `A268208.P1334128481122148219` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268208 has offset 0).

The definition of A268208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268208.P7210699614171421898

`∑[A370479(n)]`
-/

namespace A268208.P7210699614171421898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268208.P7210699614171421898

namespace A268208

/-- `∑[A370479(n)]` -/
def P7210699614171421898.Spec : Prop :=
  ∀ n, P7210699614171421898.a n = A268208 n

end A268208

/-! ## A268208.P3988691300211790087

`floor(acot(n)+Δ[A006319(n)])`
-/

namespace A268208.P3988691300211790087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A268208.P3988691300211790087

namespace A268208

/-- `floor(acot(n)+Δ[A006319(n)])` -/
def P3988691300211790087.Spec : Prop :=
  ∀ n, P3988691300211790087.a n = A268208 n

end A268208

/-! ## A268208.P17959756224764417272

`Δ[A106579(A055998(n)+1)]`
-/

namespace A268208.P17959756224764417272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A055998 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P17959756224764417272

namespace A268208

/-- `Δ[A106579(A055998(n)+1)]` -/
def P17959756224764417272.Spec : Prop :=
  ∀ n, P17959756224764417272.a n = A268208 n

end A268208

/-! ## A268208.P6276608471335174274

`A006318(n)+∑[A110190(n)]`
-/

namespace A268208.P6276608471335174274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268208.P6276608471335174274

namespace A268208

/-- `A006318(n)+∑[A110190(n)]` -/
def P6276608471335174274.Spec : Prop :=
  ∀ n, P6276608471335174274.a n = A268208 n

end A268208

/-! ## A268208.P1191080347590244135

`∑[A110190(n)+A006319(n)]`
-/

namespace A268208.P1191080347590244135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n + A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268208.P1191080347590244135

namespace A268208

/-- `∑[A110190(n)+A006319(n)]` -/
def P1191080347590244135.Spec : Prop :=
  ∀ n, P1191080347590244135.a n = A268208 n

end A268208

/-! ## A268208.P8833068339707855308

`A000007(n)+Δ[A006319(n)]`
-/

namespace A268208.P8833068339707855308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A268208.P8833068339707855308

namespace A268208

/-- `A000007(n)+Δ[A006319(n)]` -/
def P8833068339707855308.Spec : Prop :=
  ∀ n, P8833068339707855308.a n = A268208 n

end A268208

/-! ## A268208.P4740476985282271777

`Δ[A057427(n)+A006319(n)]`
-/

namespace A268208.P4740476985282271777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P4740476985282271777

namespace A268208

/-- `Δ[A057427(n)+A006319(n)]` -/
def P4740476985282271777.Spec : Prop :=
  ∀ n, P4740476985282271777.a n = A268208 n

end A268208

/-! ## A268208.P8113145163961647768

`Δ[A006319(n)-A057428(n)]`
-/

namespace A268208.P8113145163961647768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P8113145163961647768

namespace A268208

/-- `Δ[A006319(n)-A057428(n)]` -/
def P8113145163961647768.Spec : Prop :=
  ∀ n, P8113145163961647768.a n = A268208 n

end A268208

/-! ## A268208.P4805598933964297639

`Δ[A036453(n+1)+A006319(n)]`
-/

namespace A268208.P4805598933964297639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P4805598933964297639

namespace A268208

/-- `Δ[A036453(n+1)+A006319(n)]` -/
def P4805598933964297639.Spec : Prop :=
  ∀ n, P4805598933964297639.a n = A268208 n

end A268208

/-! ## A268208.P13519202878842595084

`Δ[A006319(n)-A014963(4*n+2)]`
-/

namespace A268208.P13519202878842595084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n - A014963 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P13519202878842595084

namespace A268208

/-- `Δ[A006319(n)-A014963(4*n+2)]` -/
def P13519202878842595084.Spec : Prop :=
  ∀ n, P13519202878842595084.a n = A268208 n

end A268208

/-! ## A268208.P5796533154901920176

`A006319(n+1)+A000007(n)-A006319(n)`
-/

namespace A268208.P5796533154901920176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 (n + 1) + (A000007 n - A006319 n)

end

end A268208.P5796533154901920176

namespace A268208

/-- `A006319(n+1)+A000007(n)-A006319(n)` -/
def P5796533154901920176.Spec : Prop :=
  ∀ n, P5796533154901920176.a n = A268208 n

end A268208

/-! ## A268208.P16057614698069800318

`A006319(n+1)+A155069(n)-A006318(n)`
-/

namespace A268208.P16057614698069800318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 (n + 1) + (A155069 n - A006318 n)

end

end A268208.P16057614698069800318

namespace A268208

/-- `A006319(n+1)+A155069(n)-A006318(n)` -/
def P16057614698069800318.Spec : Prop :=
  ∀ n, P16057614698069800318.a n = A268208 n

end A268208

/-! ## A268208.P1334128481122148219

`A238112(n+1)+A238112(n+1)+A155069(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A268208

/-- `A238112(n+1)+A238112(n+1)+A155069(n)` -/
def P1334128481122148219.Spec : Prop :=
  ∀ n, P1334128481122148219.a n = A268208 n

theorem P1334128481122148219.correct : P1334128481122148219.Spec := by
  intro n
  simp only [A268208]

end A268208

/-! ## A268208.P5926329020353546974

`A006319(n+1)+A155069(n)-A155069(n+1)`
-/

namespace A268208.P5926329020353546974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 (n + 1) + (A155069 n - A155069 (n + 1))

end

end A268208.P5926329020353546974

namespace A268208

/-- `A006319(n+1)+A155069(n)-A155069(n+1)` -/
def P5926329020353546974.Spec : Prop :=
  ∀ n, P5926329020353546974.a n = A268208 n

end A268208

/-! ## A268208.P184996909569369796

`Δ[Δ[A155069(n)]]`
-/

namespace A268208.P184996909569369796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P184996909569369796

namespace A268208

/-- `Δ[Δ[A155069(n)]]` -/
def P184996909569369796.Spec : Prop :=
  ∀ n, P184996909569369796.a n = A268208 n

end A268208

/-! ## A268208.P17225233581694319242

`Δ[Δ[abs(A086456(n))]]`
-/

namespace A268208.P17225233581694319242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086456 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P17225233581694319242

namespace A268208

/-- `Δ[Δ[abs(A086456(n))]]` -/
def P17225233581694319242.Spec : Prop :=
  ∀ n, P17225233581694319242.a n = A268208 n

end A268208

/-! ## A268208.P4654120266885312429

`Δ[Δ[abs(A103137(n))]]`
-/

namespace A268208.P4654120266885312429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103137 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P4654120266885312429

namespace A268208

/-- `Δ[Δ[abs(A103137(n))]]` -/
def P4654120266885312429.Spec : Prop :=
  ∀ n, P4654120266885312429.a n = A268208 n

end A268208

/-! ## A268208.P2316491461923267715

`Δ[Δ[A080247(C(n, 2))]]`
-/

namespace A268208.P2316491461923267715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (Nat.choose n 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268208.P2316491461923267715

namespace A268208

/-- `Δ[Δ[A080247(C(n, 2))]]` -/
def P2316491461923267715.Spec : Prop :=
  ∀ n, P2316491461923267715.a n = A268208 n

end A268208

/-! ## A268208.P1596322978522799300

`abs(Δ[A080247(∑[n]+1)])`
-/

namespace A268208.P1596322978522799300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A268208.P1596322978522799300

namespace A268208

/-- `abs(Δ[A080247(∑[n]+1)])` -/
def P1596322978522799300.Spec : Prop :=
  ∀ n, P1596322978522799300.a n = A268208 n

end A268208

/-!
# A268209: Numbers m of the form 2^k + 1 such that m - k is a prime q (for k >= 0).

The programs for A268209, there is no canonical definition to state claims against.
-/

/-! ## A268209.P1379343078951242567

`A100362(n+1)+A100361(n+1)`
-/

namespace A268209.P1379343078951242567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100362 (n + 1) + A100361 (n + 1)

end

end A268209.P1379343078951242567

/-! ## A268209.P9330301663486096922

`2^A100361(n+1)+1`
-/

namespace A268209.P9330301663486096922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A100361 (n + 1) : ℤ) + 1

end

end A268209.P9330301663486096922

/-! ## A268209.P6136775730502032159

`A000051(A100361(n+1))`
-/

namespace A268209.P6136775730502032159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A100361 (n + 1)).toNat

end

end A268209.P6136775730502032159

/-! ## A268209.P4607508740834717284

`A139553(n)+A000079(A100361(n+1))`
-/

namespace A268209.P4607508740834717284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139553 n + A000079 (A100361 (n + 1)).toNat

end

end A268209.P4607508740834717284

/-! ## A268209.P13848668225189107819

`A057427(A303283(n+1))+A000079(A100361(n+1))`
-/

namespace A268209.P13848668225189107819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A303283 (n + 1)).toNat + A000079 (A100361 (n + 1)).toNat

end

end A268209.P13848668225189107819

/-!
# A268212: Numbers n of the form 2^k + 1 such that n^2 - n - 1 is a prime q (for k >= 0).

The programs for A268212, there is no canonical definition to state claims against.
-/

/-! ## A268212.P7059736054775258459

`2^A098855(n+1)+1`
-/

namespace A268212.P7059736054775258459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A098855 (n + 1) : ℤ) + 1

end

end A268212.P7059736054775258459

/-! ## A268212.P11939704912564766861

`A000051(A098855(n+1))`
-/

namespace A268212.P11939704912564766861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A098855 (n + 1)).toNat

end

end A268212.P11939704912564766861

/-! ## A268212.P2345702805724749155

`A048578(A098855(n+1)-1)`
-/

namespace A268212.P2345702805724749155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (A098855 (n + 1) - 1).toNat

end

end A268212.P2345702805724749155

/-! ## A268212.P9392677595594214030

`A048578(eq[n, n*A191618(n+1)])`
-/

namespace A268212.P9392677595594214030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A191618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268212.P9392677595594214030

/-! ## A268212.P2058014370122935160

`A275216(n)+A000079(A098855(n+1))`
-/

namespace A268212.P2058014370122935160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275216 n + A000079 (A098855 (n + 1)).toNat

end

end A268212.P2058014370122935160

/-!
# A268213: Number of paths from (0,0) to (n,n) that use E(1,0) and N(0,1) as steps and have even number of East steps below the line y=x-1.

The programs for A268213, there is no canonical definition to state claims against.
-/

/-! ## A268213.P4678027876841869381

`A000984(n)-A268214(n)`
-/

namespace A268213.P4678027876841869381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A268214 n

end

end A268213.P4678027876841869381

/-! ## A268213.P9709767160407636564

`record[A081668(n)]-A268214(n)`
-/

namespace A268213.P9709767160407636564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268214 n

end

end A268213.P9709767160407636564

/-! ## A268213.P18004281875950171476

`record[A126869(n)]-A268214(n)`
-/

namespace A268213.P18004281875950171476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268214 n

end

end A268213.P18004281875950171476

/-! ## A268213.P2222369732060548186

`A001405(2*n)-A268214(n)`
-/

namespace A268213.P2222369732060548186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A268214 n

end

end A268213.P2222369732060548186

/-! ## A268213.P18267343568048309480

`A081668(2*n)-A268214(n)`
-/

namespace A268213.P18267343568048309480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - A268214 n

end

end A268213.P18267343568048309480

/-! ## A268213.P2313844672071200942

`A126869(2*n)-A268214(n)`
-/

namespace A268213.P2313844672071200942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A268214 n

end

end A268213.P2313844672071200942

/-! ## A268213.P900873820724744525

`record[A094527(n)]-A268214(n)`
-/

namespace A268213.P900873820724744525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268214 n

end

end A268213.P900873820724744525

/-!
# A268214: Number of paths from (0,0) to (n,n) that use E(1,0) and N(0,1) as steps and have odd number of East steps below the line y=x-1.

The programs for A268214, there is no canonical definition to state claims against.
-/

/-! ## A268214.P16782478424398167162

`A000984(n)-A268213(n)`
-/

namespace A268214.P16782478424398167162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A268213 n

end

end A268214.P16782478424398167162

/-! ## A268214.P12376961296414888687

`record[A081668(n)]-A268213(n)`
-/

namespace A268214.P12376961296414888687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268213 n

end

end A268214.P12376961296414888687

/-! ## A268214.P13599385984639447664

`record[A126869(n)]-A268213(n)`
-/

namespace A268214.P13599385984639447664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268213 n

end

end A268214.P13599385984639447664

/-! ## A268214.P8607073070589595813

`A081668(2*n)-A268213(n)`
-/

namespace A268214.P8607073070589595813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - A268213 n

end

end A268214.P8607073070589595813

/-! ## A268214.P11168560800227127840

`A126869(2*n)-A268213(n)`
-/

namespace A268214.P11168560800227127840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A268213 n

end

end A268214.P11168560800227127840

/-! ## A268214.P18032216311928791122

`record[A094527(n)]-A268213(n)`
-/

namespace A268214.P18032216311928791122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A268213 n

end

end A268214.P18032216311928791122

/-!
# A268215: Coefficients of e.g.f. for numbers of graded interval orders.

The programs for A268215, there is no canonical definition to state claims against.
-/

/-! ## A268215.P12113275606255758463

`A267196(n)+A228909(n)`
-/

namespace A268215.P12113275606255758463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267196 n + A228909 n

end

end A268215.P12113275606255758463

/-! ## A268215.P776127183055279268

`A167137(n)-A052876(n)`
-/

namespace A268215.P776127183055279268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167137 n - A052876 n

end

end A268215.P776127183055279268

/-!
# A268217: Triangle read by rows: T(n,k) (n>=3, k=3..n) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,2,3,4,...,s,n} where s is the size of the largest proper open set in t.

The programs for A268217, the canonical program `A268217.P5610168321208635427` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268217 has offset 3).

The definition of A268217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268217.P5610168321208635427

`A133196(n+1)/2*A119741(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A268217

/-- `A133196(n+1)/2*A119741(n+2)` -/
def P5610168321208635427.Spec : Prop :=
  ∀ n, P5610168321208635427.a n = (A268217 (n + 3) : ℚ)

end A268217

/-! ## A268217.P2303306882102345357

`A014682(A119741(n+2)*A133196(n+1))`
-/

namespace A268217.P2303306882102345357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A119741 (n + 2) * A133196 (n + 1)).toNat

end

end A268217.P2303306882102345357

namespace A268217

/-- `A014682(A119741(n+2)*A133196(n+1))` -/
def P2303306882102345357.Spec : Prop :=
  ∀ n, P2303306882102345357.a n = A268217 (n + 3)

end A268217

/-! ## A268217.P13369916644678340666

`A325564(A119741(n+2)*A133196(n+1))-1`
-/

namespace A268217.P13369916644678340666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (A119741 (n + 2) * A133196 (n + 1)).toNat - 1

end

end A268217.P13369916644678340666

namespace A268217

/-- `A325564(A119741(n+2)*A133196(n+1))-1` -/
def P13369916644678340666.Spec : Prop :=
  ∀ n, P13369916644678340666.a n = A268217 (n + 3)

end A268217

/-!
# A268218: a(n) = (n!/3!)*Sum(1/k!,k=1..n-3).

The programs for A268218, there is no canonical definition to state claims against.
-/

/-! ## A268218.P17430361312287238277

`C(n, 3)+n*a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A268218.P17430361312287238277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  Nat.choose n 3 + n * a (n - 1)

end

end A268218.P17430361312287238277

/-! ## A268218.P9296098741114540455

`4*A268219(n+1)/(n+1)`
-/

namespace A268218.P9296098741114540455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A268219 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A268218.P9296098741114540455

/-! ## A268218.P17100405773128853725

`∑[A002265(A083920(n!))]`
-/

namespace A268218.P17100405773128853725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A083920 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268218.P17100405773128853725

/-! ## A268218.P372479771673746602

`∑[A002265(A083920(∏[round(1/acot(n))]))]`
-/

namespace A268218.P372479771673746602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A083920 (∏ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268218.P372479771673746602

/-!
# A268219: a(n) = (n!/4!)*Sum(1/k!,k=1..n-4).

The programs for A268219, there is no canonical definition to state claims against.
-/

/-! ## A268219.P4215223830691004654

`A115772(C(comp[∑[n-2]]+1, 9))`
-/

namespace A268219.P4215223830691004654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115772 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) 9)

end

end A268219.P4215223830691004654

/-! ## A268219.P11686313898336770705

`5*A085854(A344605(n))`
-/

namespace A268219.P11686313898336770705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A085854 (A344605 n).toNat

end

end A268219.P11686313898336770705

/-! ## A268219.P18044264514205384382

`∑{d}[A262129(n), A059995(#)]`
-/

namespace A268219.P18044264514205384382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059995 d

end

end A268219.P18044264514205384382

/-! ## A268219.P17706103881763829465

`A000120(A185035(2*n+1))*A000332(n)`
-/

namespace A268219.P17706103881763829465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A185035 (2 * n + 1)).toNat * A000332 n

end

end A268219.P17706103881763829465

/-!
# A268220: a(n) = (n!/5!)*Sum(1/k!,k=1..n-5).

The programs for A268220, there is no canonical definition to state claims against.
-/

/-! ## A268220.P2931668890613789958

`A108613(A181936(n))`
-/

namespace A268220.P2931668890613789958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108613 (A181936 n).toNat

end

end A268220.P2931668890613789958

/-! ## A268220.P9337901530743571877

`n*A322678(A212385(n))`
-/

namespace A268220.P9337901530743571877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A322678 (A212385 n).toNat

end

end A268220.P9337901530743571877

/-! ## A268220.P18375796615977147606

`C(n, 6)*A118088(A000389(n))`
-/

namespace A268220.P18375796615977147606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 6 : ℤ) * A118088 (A000389 n).toNat

end

end A268220.P18375796615977147606

/-! ## A268220.P3080367150960121141

`A108613(A038504(n)-A108613(n))`
-/

namespace A268220.P3080367150960121141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108613 (A038504 n - A108613 n).toNat

end

end A268220.P3080367150960121141

/-! ## A268220.P18182774163804477177

`A007953(A201649(n+1))*A034348(n+1)`
-/

namespace A268220.P18182774163804477177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A201649 (n + 1)).toNat * A034348 (n + 1)

end

end A268220.P18182774163804477177

/-!
# A268221: Triangle read by rows: T(n,k) (n>=4, k=3..n-1) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,3,4,5,...,s,n} where s is the size of the largest proper open set in t.

The programs for A268221, the canonical program `A268221.P1002273436628734708` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268221 has offset 4).

The definition of A268221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268221.P1002273436628734708

`A000292(A003057(n+2))*A181511(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A268221

/-- `A000292(A003057(n+2))*A181511(n+1)` -/
def P1002273436628734708.Spec : Prop :=
  ∀ n, P1002273436628734708.a n = A268221 (n + 4)

theorem P1002273436628734708.correct : P1002273436628734708.Spec := by
  intro n
  simp only [A268221, Nat.add_sub_cancel]

end A268221

/-! ## A268221.P5318365247473120447

`A000292(A003056(n)+2)*A181511(n+1)`
-/

namespace A268221.P5318365247473120447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A003056 n + 2).toNat * A181511 (n + 1)

end

end A268221.P5318365247473120447

namespace A268221

/-- `A000292(A003056(n)+2)*A181511(n+1)` -/
def P5318365247473120447.Spec : Prop :=
  ∀ n, P5318365247473120447.a n = A268221 (n + 4)

end A268221

/-! ## A268221.P1802437111753188501

`A000292(A003057(n+2))*A008279(A007401(n+1))`
-/

namespace A268221.P1802437111753188501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A003057 (n + 2)).toNat * A008279 (A007401 (n + 1)).toNat

end

end A268221.P1802437111753188501

namespace A268221

/-- `A000292(A003057(n+2))*A008279(A007401(n+1))` -/
def P1802437111753188501.Spec : Prop :=
  ∀ n, P1802437111753188501.a n = A268221 (n + 4)

end A268221

/-! ## A268221.P14343271928194969482

`A124774(4*A224195(n+1))`
-/

namespace A268221.P14343271928194969482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (4 * A224195 (n + 1)).toNat

end

end A268221.P14343271928194969482

namespace A268221

/-- `A124774(4*A224195(n+1))` -/
def P14343271928194969482.Spec : Prop :=
  ∀ n, P14343271928194969482.a n = A268221 (n + 4)

end A268221

/-! ## A268221.P13764073663222846254

`A124774(lcm(4, A224195(n+1)))`
-/

namespace A268221.P13764073663222846254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (Int.lcm 4 (A224195 (n + 1)))

end

end A268221.P13764073663222846254

namespace A268221

/-- `A124774(lcm(4, A224195(n+1)))` -/
def P13764073663222846254.Spec : Prop :=
  ∀ n, P13764073663222846254.a n = A268221 (n + 4)

end A268221

/-!
# A268222: Triangle read by rows: T(n,k) (n>=5, k=3..n-2) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,4,5,6,...,s,n} where s is the size of the largest proper open set in t.

The programs for A268222, there is no canonical definition to state claims against.
-/

/-! ## A268222.P10631876162530436648

`record[A358170(A070939(n)+3)]`
-/

namespace A268222.P10631876162530436648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (A070939 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268222.P10631876162530436648

/-! ## A268222.P4317621750772594872

`record[A055231(A260443(n+4))]`
-/

namespace A268222.P4317621750772594872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A260443 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268222.P4317621750772594872

/-!
# A268223: Triangle read by rows: T(n,k) (n>=6, k=3..n-3) is the number of topologies t on n points having exactly k open sets such that t contains exactly one open set of size m for each m in {0,5,6,7,...,s,n} where s is the size of the largest proper open set in t.

The programs for A268223, the canonical program `A268223.P12854693730269524273` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268223 has offset 6).

The definition of A268223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268223.P12854693730269524273

`A178822(A007401(n+1))*A233543(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A268223

/-- `A178822(A007401(n+1))*A233543(n)` -/
def P12854693730269524273.Spec : Prop :=
  ∀ n, P12854693730269524273.a n = A268223 (n + 6)

theorem P12854693730269524273.correct : P12854693730269524273.Spec := by
  intro n
  simp only [A268223, Nat.add_sub_cancel]

end A268223

/-! ## A268223.P6610903078152534912

`A124774(16*A224195(n+1))`
-/

namespace A268223.P6610903078152534912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (16 * A224195 (n + 1)).toNat

end

end A268223.P6610903078152534912

namespace A268223

/-- `A124774(16*A224195(n+1))` -/
def P6610903078152534912.Spec : Prop :=
  ∀ n, P6610903078152534912.a n = A268223 (n + 6)

end A268223

/-! ## A268223.P17634334898792435185

`A124774(lcm(16, A224195(n+1)))`
-/

namespace A268223.P17634334898792435185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (Int.lcm 16 (A224195 (n + 1)))

end

end A268223.P17634334898792435185

namespace A268223

/-- `A124774(lcm(16, A224195(n+1)))` -/
def P17634334898792435185.Spec : Prop :=
  ∀ n, P17634334898792435185.a n = A268223 (n + 6)

end A268223

/-!
# A268224: Closed simply-typed lambda terms with at most one free variable.

The programs for A268224, there is no canonical definition to state claims against.
-/

/-! ## A268224.P2041633557253110461

`A175526(A078945(n))-A085854(n)`
-/

namespace A268224.P2041633557253110461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (A078945 n).toNat - A085854 n

end

end A268224.P2041633557253110461

/-!
# A268225: Number of types of lambda-terms of term size n.

The programs for A268225, there is no canonical definition to state claims against.
-/

/-! ## A268225.P15443231700664568036

`A322440(A061775(n^n+1))`
-/

namespace A268225.P15443231700664568036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322440 (A061775 (n ^ n + 1)).toNat

end

end A268225.P15443231700664568036

/-! ## A268225.P14032100475598836153

`A002635(∏[Δ[A003623(n+1)]])`
-/

namespace A268225.P14032100475598836153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A268225.P14032100475598836153

/-!
# A268226: Complement of A056991.

The programs for A268226, the canonical program `A268226.P15297867010475618727` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268226 has offset 1).

The definition of A268226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268226.P15297867010475618727

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=6, a(4)=8, a(5)=11`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A268226

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P15297867010475618727.Spec : Prop :=
  ∀ n, P15297867010475618727.a n = A268226 (n + 1)

theorem P15297867010475618727.correct : P15297867010475618727.Spec := by
  intro n
  simp only [A268226, Nat.add_sub_cancel]

end A268226

/-! ## A268226.P8766414841559396249

`comp[dr(n-n²)+n]`
-/

namespace A268226.P8766414841559396249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n : ℤ) - (n ^ 2 : ℤ)) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A268226.P8766414841559396249

namespace A268226

/-- `comp[dr(n-n²)+n]` -/
def P8766414841559396249.Spec : Prop :=
  ∀ n, (P8766414841559396249.a n : ℤ) = A268226 (n + 1)

end A268226

/-! ## A268226.P7899056131724863268

`a(n-5)+9` with `a(0)=2, a(1)=3, a(2)=5, a(3)=6, a(4)=8`
-/

namespace A268226.P7899056131724863268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 6, 8] fun n a =>
  a (n - 5) + 9

end

end A268226.P7899056131724863268

namespace A268226

/-- `a(n-5)+9` -/
def P7899056131724863268.Spec : Prop :=
  ∀ n, (P7899056131724863268.a n : ℤ) = A268226 (n + 1)

end A268226

/-! ## A268226.P12182489411608778513

`∑[floor(a(n-5))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=1, a(4)=2, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A268226.P12182489411608778513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 1, 2, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268226.P12182489411608778513

namespace A268226

/-- `∑[floor(a(n-5))]` -/
def P12182489411608778513.Spec : Prop :=
  ∀ n, (P12182489411608778513.a n : ℤ) = A268226 (n + 1)

end A268226

/-! ## A268226.P14847148484735611059

`record[n+2-val((n+1)*(n+2), 3)]`
-/

namespace A268226.P14847148484735611059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (SequenceMachineLib.valuation ((n + 1) * (n + 2)) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268226.P14847148484735611059

namespace A268226

/-- `record[n+2-val((n+1)*(n+2), 3)]` -/
def P14847148484735611059.Spec : Prop :=
  ∀ n, P14847148484735611059.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P3032853926220377647

`comp[A242660(n+1)]`
-/

namespace A268226.P3032853926220377647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268226.P3032853926220377647

namespace A268226

/-- `comp[A242660(n+1)]` -/
def P3032853926220377647.Spec : Prop :=
  ∀ n, (P3032853926220377647.a n : ℤ) = A268226 (n + 1)

end A268226

/-! ## A268226.P4155367482007471054

`A004773(A057355(n))+n+2`
-/

namespace A268226.P4155367482007471054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A057355 n).toNat + (n + 2 : ℤ)

end

end A268226.P4155367482007471054

namespace A268226

/-- `A004773(A057355(n))+n+2` -/
def P4155367482007471054.Spec : Prop :=
  ∀ n, P4155367482007471054.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P1419315472870966448

`A187318(n)+2-A011658(n)`
-/

namespace A268226.P1419315472870966448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n + (2 - A011658 n)

end

end A268226.P1419315472870966448

namespace A268226

/-- `A187318(n)+2-A011658(n)` -/
def P1419315472870966448.Spec : Prop :=
  ∀ n, P1419315472870966448.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P1895653980421797417

`∪[A016051(n+1), A016789(n)]`
-/

namespace A268226.P1895653980421797417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268226.P1895653980421797417

namespace A268226

/-- `∪[A016051(n+1), A016789(n)]` -/
def P1895653980421797417.Spec : Prop :=
  ∀ n, (P1895653980421797417.a n : ℤ) = A268226 (n + 1)

end A268226

/-! ## A268226.P8251846936947391470

`A047497(n+1)+A002266(n)+1`
-/

namespace A268226.P8251846936947391470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047497 (n + 1) + (A002266 n + 1)

end

end A268226.P8251846936947391470

namespace A268226

/-- `A047497(n+1)+A002266(n)+1` -/
def P8251846936947391470.Spec : Prop :=
  ∀ n, P8251846936947391470.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P2131081250034490361

`A194509(n+1)+A047516(n+1)`
-/

namespace A268226.P2131081250034490361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (n + 1) + A047516 (n + 1)

end

end A268226.P2131081250034490361

namespace A268226

/-- `A194509(n+1)+A047516(n+1)` -/
def P2131081250034490361.Spec : Prop :=
  ∀ n, P2131081250034490361.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P13474570696896459246

`∪[A056527(n+1)+1, A016789(n)]`
-/

namespace A268226.P13474570696896459246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268226.P13474570696896459246

namespace A268226

/-- `∪[A056527(n+1)+1, A016789(n)]` -/
def P13474570696896459246.Spec : Prop :=
  ∀ n, (P13474570696896459246.a n : ℤ) = A268226 (n + 1)

end A268226

/-! ## A268226.P16998433478418415161

`∪[A125758(n+1)-1, A016789(n)]`
-/

namespace A268226.P16998433478418415161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268226.P16998433478418415161

namespace A268226

/-- `∪[A125758(n+1)-1, A016789(n)]` -/
def P16998433478418415161.Spec : Prop :=
  ∀ n, (P16998433478418415161.a n : ℤ) = A268226 (n + 1)

end A268226

/-! ## A268226.P11805459902962466262

`A398061(n+1)-A398055(n)`
-/

namespace A268226.P11805459902962466262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398061 (n + 1) - A398055 n

end

end A268226.P11805459902962466262

namespace A268226

/-- `A398061(n+1)-A398055(n)` -/
def P11805459902962466262.Spec : Prop :=
  ∀ n, P11805459902962466262.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P16205983584508677726

`A002266(n)+A032796(n+2)+A002266(n)`
-/

namespace A268226.P16205983584508677726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 n + (A032796 (n + 2) + A002266 n)

end

end A268226.P16205983584508677726

namespace A268226

/-- `A002266(n)+A032796(n+2)+A002266(n)` -/
def P16205983584508677726.Spec : Prop :=
  ∀ n, P16205983584508677726.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P8934111329942428008

`A032766(A047226(n+1))+2`
-/

namespace A268226.P8934111329942428008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A047226 (n + 1)).toNat + 2

end

end A268226.P8934111329942428008

namespace A268226

/-- `A032766(A047226(n+1))+2` -/
def P8934111329942428008.Spec : Prop :=
  ∀ n, P8934111329942428008.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P1984797957456940316

`A007494(A047253(n+1))`
-/

namespace A268226.P1984797957456940316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A047253 (n + 1)).toNat

end

end A268226.P1984797957456940316

namespace A268226

/-- `A007494(A047253(n+1))` -/
def P1984797957456940316.Spec : Prop :=
  ∀ n, P1984797957456940316.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P7245052939691683060

`A007494(A047248(n+2)-1)`
-/

namespace A268226.P7245052939691683060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A047248 (n + 2) - 1).toNat

end

end A268226.P7245052939691683060

namespace A268226

/-- `A007494(A047248(n+2)-1)` -/
def P7245052939691683060.Spec : Prop :=
  ∀ n, P7245052939691683060.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P13963250592262214432

`A267528(A047248(n+2))`
-/

namespace A268226.P13963250592262214432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A047248 (n + 2)).toNat

end

end A268226.P13963250592262214432

namespace A268226

/-- `A267528(A047248(n+2))` -/
def P13963250592262214432.Spec : Prop :=
  ∀ n, P13963250592262214432.a n = A268226 (n + 1)

end A268226

/-! ## A268226.P9026208495888547608

`A168183(A047448(n+2))`
-/

namespace A268226.P9026208495888547608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (A047448 (n + 2)).toNat

end

end A268226.P9026208495888547608

namespace A268226

/-- `A168183(A047448(n+2))` -/
def P9026208495888547608.Spec : Prop :=
  ∀ n, P9026208495888547608.a n = A268226 (n + 1)

end A268226

/-!
# A268227: a(n) = sum of digits of (2n)^2.

The programs for A268227, the canonical program `A268227.P16759885280140667015` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268227 has offset 0).

The definition of A268227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268227.P16759885280140667015

`∑{digits}[(2*n)², #]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A268227

/-- `∑{digits}[(2*n)², #]` -/
def P16759885280140667015.Spec : Prop :=
  ∀ n, (P16759885280140667015.a n : ℤ) = A268227 n

theorem P16759885280140667015.correct : P16759885280140667015.Spec := by
  intro n
  simp only [A268227]

end A268227

/-! ## A268227.P14742902624435848164

`log(∏{digits}[(2*n)², exp(#)])`
-/

namespace A268227.P14742902624435848164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A268227.P14742902624435848164

namespace A268227

/-- `log(∏{digits}[(2*n)², exp(#)])` -/
def P14742902624435848164.Spec : Prop :=
  ∀ n, P14742902624435848164.a n = (A268227 n : ℝ)

end A268227

/-! ## A268227.P2179653179149657439

`val(∏{digits}[(2*n)², 2^#], 2)`
-/

namespace A268227.P2179653179149657439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2

end

end A268227.P2179653179149657439

namespace A268227

/-- `val(∏{digits}[(2*n)², 2^#], 2)` -/
def P2179653179149657439.Spec : Prop :=
  ∀ n, (P2179653179149657439.a n : ℤ) = A268227 n

end A268227

/-! ## A268227.P7178648037587115932

`A004159(2*n)`
-/

namespace A268227.P7178648037587115932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (2 * n)

end

end A268227.P7178648037587115932

namespace A268227

/-- `A004159(2*n)` -/
def P7178648037587115932.Spec : Prop :=
  ∀ n, P7178648037587115932.a n = A268227 n

end A268227

/-! ## A268227.P8342826958109019799

`A118881(2*n)-A067552(2*n)`
-/

namespace A268227.P8342826958109019799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (2 * n) - A067552 (2 * n)

end

end A268227.P8342826958109019799

namespace A268227

/-- `A118881(2*n)-A067552(2*n)` -/
def P8342826958109019799.Spec : Prop :=
  ∀ n, P8342826958109019799.a n = A268227 n

end A268227

/-! ## A268227.P4405245564426059791

`A280637(2*n)-1`
-/

namespace A268227.P4405245564426059791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280637 (2 * n) - 1

end

end A268227.P4405245564426059791

namespace A268227

/-- `A280637(2*n)-1` -/
def P4405245564426059791.Spec : Prop :=
  ∀ n, P4405245564426059791.a n = A268227 n

end A268227

/-! ## A268227.P7625646897448026072

`(2*n)²-A224977(2*n)`
-/

namespace A268227.P7625646897448026072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A224977 (2 * n)

end

end A268227.P7625646897448026072

namespace A268227

/-- `(2*n)²-A224977(2*n)` -/
def P7625646897448026072.Spec : Prop :=
  ∀ n, P7625646897448026072.a n = A268227 n

end A268227

/-! ## A268227.P4712073791818522025

`A004092(2*n²)`
-/

namespace A268227.P4712073791818522025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (2 * n ^ 2)

end

end A268227.P4712073791818522025

namespace A268227

/-- `A004092(2*n²)` -/
def P4712073791818522025.Spec : Prop :=
  ∀ n, P4712073791818522025.a n = A268227 n

end A268227

/-! ## A268227.P16578715933072438561

`A092383(2*n²)`
-/

namespace A268227.P16578715933072438561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092383 (2 * n ^ 2)

end

end A268227.P16578715933072438561

namespace A268227

/-- `A092383(2*n²)` -/
def P16578715933072438561.Spec : Prop :=
  ∀ n, P16578715933072438561.a n = A268227 n

end A268227

/-! ## A268227.P10646880883341943707

`A326746((2*n)²)`
-/

namespace A268227.P10646880883341943707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 ((2 * n) ^ 2)

end

end A268227.P10646880883341943707

namespace A268227

/-- `A326746((2*n)²)` -/
def P10646880883341943707.Spec : Prop :=
  ∀ n, P10646880883341943707.a n = A268227 n

end A268227

/-!
# A268228: a(n) = sum of digits of (2n + 1)^2.

The programs for A268228, the canonical program `A268228.P10558893402885558714` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268228 has offset 0).

The definition of A268228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268228.P10558893402885558714

`A007953(A016754(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A268228

/-- `A007953(A016754(n))` -/
def P10558893402885558714.Spec : Prop :=
  ∀ n, P10558893402885558714.a n = A268228 n

theorem P10558893402885558714.correct : P10558893402885558714.Spec := by
  intro n
  simp only [A268228]

end A268228

/-! ## A268228.P4420067107908716800

`∑{digits}[Δ[n²]², #]`
-/

namespace A268228.P4420067107908716800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A268228.P4420067107908716800

namespace A268228

/-- `∑{digits}[Δ[n²]², #]` -/
def P4420067107908716800.Spec : Prop :=
  ∀ n, (P4420067107908716800.a n : ℤ) = A268228 n

end A268228

/-! ## A268228.P12078625328034394503

`∑{digits}[∑[8*n], #]+1`
-/

namespace A268228.P12078625328034394503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1

end

end A268228.P12078625328034394503

namespace A268228

/-- `∑{digits}[∑[8*n], #]+1` -/
def P12078625328034394503.Spec : Prop :=
  ∀ n, (P12078625328034394503.a n : ℤ) = A268228 n

end A268228

/-! ## A268228.P7459794297566757304

`log(∏{digits}[(2*n+1)², exp(#)])`
-/

namespace A268228.P7459794297566757304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A268228.P7459794297566757304

namespace A268228

/-- `log(∏{digits}[(2*n+1)², exp(#)])` -/
def P7459794297566757304.Spec : Prop :=
  ∀ n, P7459794297566757304.a n = (A268228 n : ℝ)

end A268228

/-! ## A268228.P3064789543987724282

`2*∑{digits}[(2*n+1)², #/2]`
-/

namespace A268228.P3064789543987724282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x : ℚ) / 2).sum

end

end A268228.P3064789543987724282

namespace A268228

/-- `2*∑{digits}[(2*n+1)², #/2]` -/
def P3064789543987724282.Spec : Prop :=
  ∀ n, P3064789543987724282.a n = (A268228 n : ℚ)

end A268228

/-! ## A268228.P11030392188857688940

`val(∏{digits}[(2*n+1)², 2^#], 2)`
-/

namespace A268228.P11030392188857688940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2

end

end A268228.P11030392188857688940

namespace A268228

/-- `val(∏{digits}[(2*n+1)², 2^#], 2)` -/
def P11030392188857688940.Spec : Prop :=
  ∀ n, (P11030392188857688940.a n : ℤ) = A268228 n

end A268228

/-! ## A268228.P17323688410438544237

`∑{digits}[(2*n+1)², #]%(n+3)²`
-/

namespace A268228.P17323688410438544237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 3) ^ 2

end

end A268228.P17323688410438544237

namespace A268228

/-- `∑{digits}[(2*n+1)², #]%(n+3)²` -/
def P17323688410438544237.Spec : Prop :=
  ∀ n, (P17323688410438544237.a n : ℤ) = A268228 n

end A268228

/-! ## A268228.P12729212577504333757

`∑{digits}[(2*n+1)², #]^gcd(n, n+1)`
-/

namespace A268228.P12729212577504333757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ Nat.gcd n (n + 1)

end

end A268228.P12729212577504333757

namespace A268228

/-- `∑{digits}[(2*n+1)², #]^gcd(n, n+1)` -/
def P12729212577504333757.Spec : Prop :=
  ∀ n, (P12729212577504333757.a n : ℤ) = A268228 n

end A268228

/-! ## A268228.P14196622742331831522

`∑{digits}[(2*n+1)², #]^and(1, 2*n+1)`
-/

namespace A268228.P14196622742331831522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ Nat.land 1 (2 * n + 1)

end

end A268228.P14196622742331831522

namespace A268228

/-- `∑{digits}[(2*n+1)², #]^and(1, 2*n+1)` -/
def P14196622742331831522.Spec : Prop :=
  ∀ n, (P14196622742331831522.a n : ℤ) = A268228 n

end A268228

/-! ## A268228.P14592372437952535659

`∑{digits}[(2*n+1)², #]^xor(2*n+1, 2*n)`
-/

namespace A268228.P14592372437952535659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ Nat.xor (2 * n + 1) (2 * n)

end

end A268228.P14592372437952535659

namespace A268228

/-- `∑{digits}[(2*n+1)², #]^xor(2*n+1, 2*n)` -/
def P14592372437952535659.Spec : Prop :=
  ∀ n, (P14592372437952535659.a n : ℤ) = A268228 n

end A268228

/-! ## A268228.P982387782578785613

`A004159(Δ[n²])`
-/

namespace A268228.P982387782578785613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A268228.P982387782578785613

namespace A268228

/-- `A004159(Δ[n²])` -/
def P982387782578785613.Spec : Prop :=
  ∀ n, P982387782578785613.a n = A268228 n

end A268228

/-! ## A268228.P9056558578457848244

`floor(sqrt(A004159(2*n+1)²+1))`
-/

namespace A268228.P9056558578457848244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A004159 (2 * n + 1) ^ 2 + 1)

end

end A268228.P9056558578457848244

namespace A268228

/-- `floor(sqrt(A004159(2*n+1)²+1))` -/
def P9056558578457848244.Spec : Prop :=
  ∀ n, P9056558578457848244.a n = A268228 n

end A268228

/-! ## A268228.P8119474210283764188

`(2*n+1)²-A224977(2*n+1)`
-/

namespace A268228.P8119474210283764188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - A224977 (2 * n + 1)

end

end A268228.P8119474210283764188

namespace A268228

/-- `(2*n+1)²-A224977(2*n+1)` -/
def P8119474210283764188.Spec : Prop :=
  ∀ n, P8119474210283764188.a n = A268228 n

end A268228

/-! ## A268228.P6815355073317909180

`filter[A004159(2*n+1), A267683(#)]`
-/

namespace A268228.P6815355073317909180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267683 (f1 j).toNat = 1) n)

end

end A268228.P6815355073317909180

namespace A268228

/-- `filter[A004159(2*n+1), A267683(#)]` -/
def P6815355073317909180.Spec : Prop :=
  ∀ n, P6815355073317909180.a n = A268228 n

end A268228

/-! ## A268228.P11041784767881054900

`filter[A004159(2*n+1), A267813(#)]`
-/

namespace A268228.P11041784767881054900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267813 (f1 j).toNat = 1) n)

end

end A268228.P11041784767881054900

namespace A268228

/-- `filter[A004159(2*n+1), A267813(#)]` -/
def P11041784767881054900.Spec : Prop :=
  ∀ n, P11041784767881054900.a n = A268228 n

end A268228

/-! ## A268228.P12049447343473499628

`filter[A004159(2*n+1), A374039(#)]`
-/

namespace A268228.P12049447343473499628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A268228.P12049447343473499628

namespace A268228

/-- `filter[A004159(2*n+1), A374039(#)]` -/
def P12049447343473499628.Spec : Prop :=
  ∀ n, P12049447343473499628.a n = A268228 n

end A268228

/-! ## A268228.P3356402019667147323

`A240752(2*n+1)+A004159(2*n)`
-/

namespace A268228.P3356402019667147323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (2 * n + 1) + A004159 (2 * n)

end

end A268228.P3356402019667147323

namespace A268228

/-- `A240752(2*n+1)+A004159(2*n)` -/
def P3356402019667147323.Spec : Prop :=
  ∀ n, P3356402019667147323.a n = A268228 n

end A268228

/-! ## A268228.P14724094788261040911

`A071317(2*n+1)-A071317(2*n)`
-/

namespace A268228.P14724094788261040911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071317 (2 * n + 1) - A071317 (2 * n)

end

end A268228.P14724094788261040911

namespace A268228

/-- `A071317(2*n+1)-A071317(2*n)` -/
def P14724094788261040911.Spec : Prop :=
  ∀ n, P14724094788261040911.a n = A268228 n

end A268228

/-! ## A268228.P550381572898267802

`A118881(2*n+1)-A067552(2*n+1)`
-/

namespace A268228.P550381572898267802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (2 * n + 1) - A067552 (2 * n + 1)

end

end A268228.P550381572898267802

namespace A268228

/-- `A118881(2*n+1)-A067552(2*n+1)` -/
def P550381572898267802.Spec : Prop :=
  ∀ n, P550381572898267802.a n = A268228 n

end A268228

/-! ## A268228.P12855424129726086749

`A004159(2*n+1)*A034839(A004159(2*n+1)²)`
-/

namespace A268228.P12855424129726086749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (2 * n + 1) * A034839 (A004159 (2 * n + 1) ^ 2).toNat

end

end A268228.P12855424129726086749

namespace A268228

/-- `A004159(2*n+1)*A034839(A004159(2*n+1)²)` -/
def P12855424129726086749.Spec : Prop :=
  ∀ n, P12855424129726086749.a n = A268228 n

end A268228

/-!
# A268229: Rotate the Sierpinski triangle A047999 counterclockwise by 45 degrees to get a square array; a(n) = period of row n.

The programs for A268229, there is no canonical definition to state claims against.
-/

/-! ## A268229.P2093739519558714208

`A007088(A268230(n))`
-/

namespace A268229.P2093739519558714208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A268230 n).toNat

end

end A268229.P2093739519558714208

/-! ## A268229.P11110392005028638451

`A185544(2*A268230(n))`
-/

namespace A268229.P11110392005028638451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A268230 n).toNat

end

end A268229.P11110392005028638451

/-!
# A268230: Decimal equivalents of A268229.

The programs for A268230, the canonical program `A268230.P9683439550737180113` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268230 has offset 0).

The definition of A268230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268230.P9683439550737180113

`A000079(n)*A133179(A010078(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A268230

/-- `A000079(n)*A133179(A010078(n+1))` -/
def P9683439550737180113.Spec : Prop :=
  ∀ n, P9683439550737180113.a n = A268230 n

theorem P9683439550737180113.correct : P9683439550737180113.Spec := by
  intro n
  simp only [A268230]

end A268230

/-! ## A268230.P4673816094803640558

`A016116(n)*A288807(A010078(n+1))`
-/

namespace A268230.P4673816094803640558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A288807 (A010078 (n + 1)).toNat

end

end A268230.P4673816094803640558

namespace A268230

/-- `A016116(n)*A288807(A010078(n+1))` -/
def P4673816094803640558.Spec : Prop :=
  ∀ n, P4673816094803640558.a n = A268230 n

end A268230

/-! ## A268230.P3578115201953539146

`lcm(A122803(n), A133179(A010078(n+1)))`
-/

namespace A268230.P3578115201953539146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122803 n) (A133179 (A010078 (n + 1)).toNat)

end

end A268230.P3578115201953539146

namespace A268230

/-- `lcm(A122803(n), A133179(A010078(n+1)))` -/
def P3578115201953539146.Spec : Prop :=
  ∀ n, (P3578115201953539146.a n : ℤ) = A268230 n

end A268230

/-! ## A268230.P7541835296771331082

`record[A122111(n+1)]*A133179(A010078(n+1))`
-/

namespace A268230.P7541835296771331082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A133179 (A010078 (n + 1)).toNat

end

end A268230.P7541835296771331082

namespace A268230

/-- `record[A122111(n+1)]*A133179(A010078(n+1))` -/
def P7541835296771331082.Spec : Prop :=
  ∀ n, P7541835296771331082.a n = A268230 n

end A268230

/-! ## A268230.P14991560216242378560

`record[A130321(n)]*A133179(A010078(n+1))`
-/

namespace A268230.P14991560216242378560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A133179 (A010078 (n + 1)).toNat

end

end A268230.P14991560216242378560

namespace A268230

/-- `record[A130321(n)]*A133179(A010078(n+1))` -/
def P14991560216242378560.Spec : Prop :=
  ∀ n, P14991560216242378560.a n = A268230 n

end A268230

/-!
# A268231: Indices of 1's in A047999.

The programs for A268231, the canonical program `A268231.P13230118980298299093` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268231 has offset 1).

The definition of A268231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268231.P13230118980298299093

`lt[A000217(A080098(n)), n+1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268231

/-- `lt[A000217(A080098(n)), n+1]` -/
def P13230118980298299093.Spec : Prop :=
  ∀ n, (P13230118980298299093.a n : ℤ) = A268231 (n + 1)

theorem P13230118980298299093.correct : P13230118980298299093.Spec := by
  intro n
  simp only [A268231, Nat.add_sub_cancel]

end A268231

/-! ## A268231.P14199180388616990281

`eq[0, A050602(n)]`
-/

namespace A268231.P14199180388616990281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268231.P14199180388616990281

namespace A268231

/-- `eq[0, A050602(n)]` -/
def P14199180388616990281.Spec : Prop :=
  ∀ n, (P14199180388616990281.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P13621292402416706972

`eq[0, A086099(A265705(n))]`
-/

namespace A268231.P13621292402416706972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A265705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268231.P13621292402416706972

namespace A268231

/-- `eq[0, A086099(A265705(n))]` -/
def P13621292402416706972.Spec : Prop :=
  ∀ n, (P13621292402416706972.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P507363073560090554

`lt[n, A000217(A280172(n+1))]`
-/

namespace A268231.P507363073560090554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A280172 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268231.P507363073560090554

namespace A268231

/-- `lt[n, A000217(A280172(n+1))]` -/
def P507363073560090554.Spec : Prop :=
  ∀ n, (P507363073560090554.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P7209565511229258936

`eq[1, and(1, A112466(n))]`
-/

namespace A268231.P7209565511229258936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A112466 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268231.P7209565511229258936

namespace A268231

/-- `eq[1, and(1, A112466(n))]` -/
def P7209565511229258936.Spec : Prop :=
  ∀ n, (P7209565511229258936.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P11587785604777825798

`eq[0, A221146(n)]`
-/

namespace A268231.P11587785604777825798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268231.P11587785604777825798

namespace A268231

/-- `eq[0, A221146(n)]` -/
def P11587785604777825798.Spec : Prop :=
  ∀ n, (P11587785604777825798.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P3651433190848015150

`lt[0, A047999(n)]`
-/

namespace A268231.P3651433190848015150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268231.P3651433190848015150

namespace A268231

/-- `lt[0, A047999(n)]` -/
def P3651433190848015150.Spec : Prop :=
  ∀ n, (P3651433190848015150.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P18157082813479082421

`eq[A071053(n)%2, A047999(n)]`
-/

namespace A268231.P18157082813479082421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071053 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268231.P18157082813479082421

namespace A268231

/-- `eq[A071053(n)%2, A047999(n)]` -/
def P18157082813479082421.Spec : Prop :=
  ∀ n, (P18157082813479082421.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P10259241293665384328

`eq[A011973(C(2, n²)), A047999(n)]`
-/

namespace A268231.P10259241293665384328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (Nat.choose 2 (n ^ 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268231.P10259241293665384328

namespace A268231

/-- `eq[A011973(C(2, n²)), A047999(n)]` -/
def P10259241293665384328.Spec : Prop :=
  ∀ n, (P10259241293665384328.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P6959248109154507398

`eq[A047999(floor(10/(n+1))), A047999(n)]`
-/

namespace A268231.P6959248109154507398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 ⌊10 / (n + 1 : ℚ)⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268231.P6959248109154507398

namespace A268231

/-- `eq[A047999(floor(10/(n+1))), A047999(n)]` -/
def P6959248109154507398.Spec : Prop :=
  ∀ n, (P6959248109154507398.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P12457769292892225323

`eq[A047999(n), A057427(A321126(n))]`
-/

namespace A268231.P12457769292892225323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A321126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268231.P12457769292892225323

namespace A268231

/-- `eq[A047999(n), A057427(A321126(n))]` -/
def P12457769292892225323.Spec : Prop :=
  ∀ n, (P12457769292892225323.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P15484515309213126759

`eq[A047999(n), A054977(A324198(n))]`
-/

namespace A268231.P15484515309213126759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A324198 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268231.P15484515309213126759

namespace A268231

/-- `eq[A047999(n), A054977(A324198(n))]` -/
def P15484515309213126759.Spec : Prop :=
  ∀ n, (P15484515309213126759.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P14405988955952195916

`eq[A286108(n), A286108(A286108(n))]`
-/

namespace A268231.P14405988955952195916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 (A286108 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268231.P14405988955952195916

namespace A268231

/-- `eq[A286108(n), A286108(A286108(n))]` -/
def P14405988955952195916.Spec : Prop :=
  ∀ n, (P14405988955952195916.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P9584197427510602496

`eq[A286109(n), A286109(A286109(n))]`
-/

namespace A268231.P9584197427510602496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 (A286109 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268231.P9584197427510602496

namespace A268231

/-- `eq[A286109(n), A286109(A286109(n))]` -/
def P9584197427510602496.Spec : Prop :=
  ∀ n, (P9584197427510602496.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P9231731261852585132

`lt[0, A007318(n)%2]`
-/

namespace A268231.P9231731261852585132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268231.P9231731261852585132

namespace A268231

/-- `lt[0, A007318(n)%2]` -/
def P9231731261852585132.Spec : Prop :=
  ∀ n, (P9231731261852585132.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P5193798955576401990

`eq[1, and(1, A007318(2*n-n))]`
-/

namespace A268231.P5193798955576401990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 (2 * n - n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268231.P5193798955576401990

namespace A268231

/-- `eq[1, and(1, A007318(2*n-n))]` -/
def P5193798955576401990.Spec : Prop :=
  ∀ n, (P5193798955576401990.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P9367984183836059844

`eq[0, A065040(n)]`
-/

namespace A268231.P9367984183836059844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268231.P9367984183836059844

namespace A268231

/-- `eq[0, A065040(n)]` -/
def P9367984183836059844.Spec : Prop :=
  ∀ n, (P9367984183836059844.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P2261443939607900814

`eq[1, A332013(n)]`
-/

namespace A268231.P2261443939607900814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268231.P2261443939607900814

namespace A268231

/-- `eq[1, A332013(n)]` -/
def P2261443939607900814.Spec : Prop :=
  ∀ n, (P2261443939607900814.a n : ℤ) = A268231 (n + 1)

end A268231

/-! ## A268231.P11651109805776976150

`eq[2, A362366(n)]`
-/

namespace A268231.P11651109805776976150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362366 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268231.P11651109805776976150

namespace A268231

/-- `eq[2, A362366(n)]` -/
def P11651109805776976150.Spec : Prop :=
  ∀ n, (P11651109805776976150.a n : ℤ) = A268231 (n + 1)

end A268231

/-!
# A268232: Indices of 0's in A047999.

The programs for A268232, the canonical program `A268232.P6386950122841436999` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268232 has offset 1).

The definition of A268232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268232.P16972931880434160833

`comp[A268231(n+1)]`
-/

namespace A268232.P16972931880434160833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268232.P16972931880434160833

namespace A268232

/-- `comp[A268231(n+1)]` -/
def P16972931880434160833.Spec : Prop :=
  ∀ n, (P16972931880434160833.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P12803248409761608315

`lt[1, A243499(A265705(n))]`
-/

namespace A268232.P12803248409761608315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243499 (A265705 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268232.P12803248409761608315

namespace A268232

/-- `lt[1, A243499(A265705(n))]` -/
def P12803248409761608315.Spec : Prop :=
  ∀ n, (P12803248409761608315.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P6386950122841436999

`lt[n, A000217(A080098(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268232

/-- `lt[n, A000217(A080098(n))]` -/
def P6386950122841436999.Spec : Prop :=
  ∀ n, (P6386950122841436999.a n : ℤ) = A268232 (n + 1)

theorem P6386950122841436999.correct : P6386950122841436999.Spec := by
  intro n
  simp only [A268232, Nat.add_sub_cancel]

end A268232

/-! ## A268232.P2306717571151851868

`lt[A000217(A280172(n+1)), n]`
-/

namespace A268232.P2306717571151851868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A280172 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268232.P2306717571151851868

namespace A268232

/-- `lt[A000217(A280172(n+1)), n]` -/
def P2306717571151851868.Spec : Prop :=
  ∀ n, (P2306717571151851868.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P10306877720446488541

`lt[A000027(n+1), A000124(A080098(n))]`
-/

namespace A268232.P10306877720446488541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A080098 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268232.P10306877720446488541

namespace A268232

/-- `lt[A000027(n+1), A000124(A080098(n))]` -/
def P10306877720446488541.Spec : Prop :=
  ∀ n, (P10306877720446488541.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P1195353796324480652

`eq[0, A047999(n)]`
-/

namespace A268232.P1195353796324480652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268232.P1195353796324480652

namespace A268232

/-- `eq[0, A047999(n)]` -/
def P1195353796324480652.Spec : Prop :=
  ∀ n, (P1195353796324480652.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P423640700668488120

`lt[A047999(n+1), 1]+1`
-/

namespace A268232.P423640700668488120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268232.P423640700668488120

namespace A268232

/-- `lt[A047999(n+1), 1]+1` -/
def P423640700668488120.Spec : Prop :=
  ∀ n, (P423640700668488120.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P1930135508326899541

`A000027(lt[A047999(n), 1])`
-/

namespace A268232.P1930135508326899541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A268232.P1930135508326899541

namespace A268232

/-- `A000027(lt[A047999(n), 1])` -/
def P1930135508326899541.Spec : Prop :=
  ∀ n, P1930135508326899541.a n = A268232 (n + 1)

end A268232

/-! ## A268232.P4892513000788534668

`lt[A286098(n), A286108(n)]`
-/

namespace A268232.P4892513000788534668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268232.P4892513000788534668

namespace A268232

/-- `lt[A286098(n), A286108(n)]` -/
def P4892513000788534668.Spec : Prop :=
  ∀ n, (P4892513000788534668.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P11486500585361329159

`lt[A286109(n), A286099(n)]`
-/

namespace A268232.P11486500585361329159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268232.P11486500585361329159

namespace A268232

/-- `lt[A286109(n), A286099(n)]` -/
def P11486500585361329159.Spec : Prop :=
  ∀ n, (P11486500585361329159.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P16369798594549929818

`lt[A286150(A286098(n)), A286099(n)]`
-/

namespace A268232.P16369798594549929818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286150 (A286098 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268232.P16369798594549929818

namespace A268232

/-- `lt[A286150(A286098(n)), A286099(n)]` -/
def P16369798594549929818.Spec : Prop :=
  ∀ n, (P16369798594549929818.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P6399488648093241942

`lt[A286150(A286098(n)), A286109(n)]`
-/

namespace A268232.P6399488648093241942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286150 (A286098 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A268232.P6399488648093241942

namespace A268232

/-- `lt[A286150(A286098(n)), A286109(n)]` -/
def P6399488648093241942.Spec : Prop :=
  ∀ n, (P6399488648093241942.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P18333318798674572601

`eq[0, A007318(n)%2]`
-/

namespace A268232.P18333318798674572601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268232.P18333318798674572601

namespace A268232

/-- `eq[0, A007318(n)%2]` -/
def P18333318798674572601.Spec : Prop :=
  ∀ n, (P18333318798674572601.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P10877640021349217701

`eq[0, and(1, A007318(n+1))]+1`
-/

namespace A268232.P10877640021349217701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268232.P10877640021349217701

namespace A268232

/-- `eq[0, and(1, A007318(n+1))]+1` -/
def P10877640021349217701.Spec : Prop :=
  ∀ n, (P10877640021349217701.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P4111869237829864717

`eq[0, and(1, A007318(2*n-n))]`
-/

namespace A268232.P4111869237829864717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007318 (2 * n - n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268232.P4111869237829864717

namespace A268232

/-- `eq[0, and(1, A007318(2*n-n))]` -/
def P4111869237829864717.Spec : Prop :=
  ∀ n, (P4111869237829864717.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P9053418670646285841

`eq[A010054(n), A327853(n+1)]`
-/

namespace A268232.P9053418670646285841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268232.P9053418670646285841

namespace A268232

/-- `eq[A010054(n), A327853(n+1)]` -/
def P9053418670646285841.Spec : Prop :=
  ∀ n, (P9053418670646285841.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P846848166464023218

`eq[A010816(n), A327853(n+1)]`
-/

namespace A268232.P846848166464023218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268232.P846848166464023218

namespace A268232

/-- `eq[A010816(n), A327853(n+1)]` -/
def P846848166464023218.Spec : Prop :=
  ∀ n, (P846848166464023218.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P7837544181558990895

`eq[A089812(n), A327853(n+1)]`
-/

namespace A268232.P7837544181558990895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268232.P7837544181558990895

namespace A268232

/-- `eq[A089812(n), A327853(n+1)]` -/
def P7837544181558990895.Spec : Prop :=
  ∀ n, (P7837544181558990895.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P10712900805900685155

`eq[A133089(n), A327853(n+1)]`
-/

namespace A268232.P10712900805900685155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268232.P10712900805900685155

namespace A268232

/-- `eq[A133089(n), A327853(n+1)]` -/
def P10712900805900685155.Spec : Prop :=
  ∀ n, (P10712900805900685155.a n : ℤ) = A268232 (n + 1)

end A268232

/-! ## A268232.P15007068037847477569

`eq[A133988(n), A327853(n+1)]`
-/

namespace A268232.P15007068037847477569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327853 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268232.P15007068037847477569

namespace A268232

/-- `eq[A133988(n), A327853(n+1)]` -/
def P15007068037847477569.Spec : Prop :=
  ∀ n, (P15007068037847477569.a n : ℤ) = A268232 (n + 1)

end A268232

/-!
# A268233: Excess of number of 1's over number of 0's in terms 0 through n of A047999.

The programs for A268233, the canonical program `A268233.P12398711489418578225` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268233 has offset 0).

The definition of A268233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268233.P12398711489418578225

`∑[2*A047999(n)-1]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268233

/-- `∑[2*A047999(n)-1]` -/
def P12398711489418578225.Spec : Prop :=
  ∀ n, P12398711489418578225.a n = A268233 n

theorem P12398711489418578225.correct : P12398711489418578225.Spec := by
  intro n
  simp only [A268233]

end A268233

/-! ## A268233.P11912798322637749349

`∑[1-2*A219463(n)]`
-/

namespace A268233.P11912798322637749349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P11912798322637749349

namespace A268233

/-- `∑[1-2*A219463(n)]` -/
def P11912798322637749349.Spec : Prop :=
  ∀ n, P11912798322637749349.a n = A268233 n

end A268233

/-! ## A268233.P1682760383246034949

`∑[and(2, A028326(n))-1]`
-/

namespace A268233.P1682760383246034949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A028326 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P1682760383246034949

namespace A268233

/-- `∑[and(2, A028326(n))-1]` -/
def P1682760383246034949.Spec : Prop :=
  ∀ n, P1682760383246034949.a n = A268233 n

end A268233

/-! ## A268233.P11498109266259007606

`∑[-(-1)^A007318(n)]`
-/

namespace A268233.P11498109266259007606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A007318 n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P11498109266259007606

namespace A268233

/-- `∑[-(-1)^A007318(n)]` -/
def P11498109266259007606.Spec : Prop :=
  ∀ n, P11498109266259007606.a n = (A268233 n : ℚ)

end A268233

/-! ## A268233.P378483015598177485

`2*A268234(n)-(n+1)`
-/

namespace A268233.P378483015598177485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268234 n - (n + 1 : ℤ)

end

end A268233.P378483015598177485

namespace A268233

/-- `2*A268234(n)-(n+1)` -/
def P378483015598177485.Spec : Prop :=
  ∀ n, P378483015598177485.a n = A268233 n

end A268233

/-! ## A268233.P4477554748693822645

`∑[2*A134059(n)%2-1]`
-/

namespace A268233.P4477554748693822645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A134059 n) 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P4477554748693822645

namespace A268233

/-- `∑[2*A134059(n)%2-1]` -/
def P4477554748693822645.Spec : Prop :=
  ∀ n, P4477554748693822645.a n = A268233 n

end A268233

/-! ## A268233.P8133175564329156518

`∑[2-3^(A014473(n)%2)]`
-/

namespace A268233.P8133175564329156518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (3 : ℚ) ^ (Int.tmod (A014473 n) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P8133175564329156518

namespace A268233

/-- `∑[2-3^(A014473(n)%2)]` -/
def P8133175564329156518.Spec : Prop :=
  ∀ n, P8133175564329156518.a n = (A268233 n : ℚ)

end A268233

/-! ## A268233.P6630255570654791727

`2*∑[and(1, A110814(n))]-n-1`
-/

namespace A268233.P6630255570654791727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A110814 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ) - 1

end

end A268233.P6630255570654791727

namespace A268233

/-- `2*∑[and(1, A110814(n))]-n-1` -/
def P6630255570654791727.Spec : Prop :=
  ∀ n, P6630255570654791727.a n = A268233 n

end A268233

/-! ## A268233.P11281684596944370441

`∑[A111540(and(1, 1-A007318(n)))]`
-/

namespace A268233.P11281684596944370441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111540 (Int.land 1 (1 - A007318 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P11281684596944370441

namespace A268233

/-- `∑[A111540(and(1, 1-A007318(n)))]` -/
def P11281684596944370441.Spec : Prop :=
  ∀ n, P11281684596944370441.a n = A268233 n

end A268233

/-! ## A268233.P10096790972644263349

`∑[A115513(and(1, 1-A007318(n)))]`
-/

namespace A268233.P10096790972644263349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115513 (Int.land 1 (1 - A007318 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P10096790972644263349

namespace A268233

/-- `∑[A115513(and(1, 1-A007318(n)))]` -/
def P10096790972644263349.Spec : Prop :=
  ∀ n, P10096790972644263349.a n = A268233 n

end A268233

/-! ## A268233.P3159256420683173657

`∑[A008459(n)-xor(1, A008459(n))]`
-/

namespace A268233.P3159256420683173657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n - Int.xor 1 (A008459 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P3159256420683173657

namespace A268233

/-- `∑[A008459(n)-xor(1, A008459(n))]` -/
def P3159256420683173657.Spec : Prop :=
  ∀ n, P3159256420683173657.a n = A268233 n

end A268233

/-! ## A268233.P11606955778313934136

`∑[A117440(n)-xor(1, A117440(n))]`
-/

namespace A268233.P11606955778313934136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117440 n - Int.xor 1 (A117440 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P11606955778313934136

namespace A268233

/-- `∑[A117440(n)-xor(1, A117440(n))]` -/
def P11606955778313934136.Spec : Prop :=
  ∀ n, P11606955778313934136.a n = A268233 n

end A268233

/-! ## A268233.P11082975997008099022

`∑[A115638(A307433(n)-1)]`
-/

namespace A268233.P11082975997008099022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (A307433 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P11082975997008099022

namespace A268233

/-- `∑[A115638(A307433(n)-1)]` -/
def P11082975997008099022.Spec : Prop :=
  ∀ n, P11082975997008099022.a n = A268233 n

end A268233

/-! ## A268233.P18373124150406012931

`∑[A033999(A159853(n)+1)]`
-/

namespace A268233.P18373124150406012931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A159853 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P18373124150406012931

namespace A268233

/-- `∑[A033999(A159853(n)+1)]` -/
def P18373124150406012931.Spec : Prop :=
  ∀ n, P18373124150406012931.a n = A268233 n

end A268233

/-! ## A268233.P12958254198667841749

`∑[A062157(A007318(n))]`
-/

namespace A268233.P12958254198667841749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A007318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P12958254198667841749

namespace A268233

/-- `∑[A062157(A007318(n))]` -/
def P12958254198667841749.Spec : Prop :=
  ∀ n, P12958254198667841749.a n = A268233 n

end A268233

/-! ## A268233.P16624874504508608774

`∑[A057077(2*A014473(n))]`
-/

namespace A268233.P16624874504508608774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * A014473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268233.P16624874504508608774

namespace A268233

/-- `∑[A057077(2*A014473(n))]` -/
def P16624874504508608774.Spec : Prop :=
  ∀ n, P16624874504508608774.a n = A268233 n

end A268233

/-!
# A268234: Partial sums of A047999.

The programs for A268234, the canonical program `A268234.P1711840315614425267` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268234 has offset 0).

The definition of A268234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268234.P1711840315614425267

`∑[A047999(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268234

/-- `∑[A047999(n)]` -/
def P1711840315614425267.Spec : Prop :=
  ∀ n, P1711840315614425267.a n = A268234 n

theorem P1711840315614425267.correct : P1711840315614425267.Spec := by
  intro n
  simp only [A268234]

end A268234

/-! ## A268234.P1292559902600548137

`∑[abs(A143200(n))]`
-/

namespace A268234.P1292559902600548137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143200 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P1292559902600548137

namespace A268234

/-- `∑[abs(A143200(n))]` -/
def P1292559902600548137.Spec : Prop :=
  ∀ n, P1292559902600548137.a n = A268234 n

end A268234

/-! ## A268234.P12087932351246839308

`∑[abs(A166282(n))]`
-/

namespace A268234.P12087932351246839308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166282 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P12087932351246839308

namespace A268234

/-- `∑[abs(A166282(n))]` -/
def P12087932351246839308.Spec : Prop :=
  ∀ n, P12087932351246839308.a n = A268234 n

end A268234

/-! ## A268234.P11893845974200106026

`∑[1-A219463(n)]`
-/

namespace A268234.P11893845974200106026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A219463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P11893845974200106026

namespace A268234

/-- `∑[1-A219463(n)]` -/
def P11893845974200106026.Spec : Prop :=
  ∀ n, P11893845974200106026.a n = A268234 n

end A268234

/-! ## A268234.P16533801812045992612

`∑[A007318(n)%2]`
-/

namespace A268234.P16533801812045992612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P16533801812045992612

namespace A268234

/-- `∑[A007318(n)%2]` -/
def P16533801812045992612.Spec : Prop :=
  ∀ n, P16533801812045992612.a n = A268234 n

end A268234

/-! ## A268234.P12911308900023319435

`∑[A008975(n)%2]`
-/

namespace A268234.P12911308900023319435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008975 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P12911308900023319435

namespace A268234

/-- `∑[A008975(n)%2]` -/
def P12911308900023319435.Spec : Prop :=
  ∀ n, P12911308900023319435.a n = A268234 n

end A268234

/-! ## A268234.P10448425243505305919

`∑[A034930(n)%2]`
-/

namespace A268234.P10448425243505305919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034930 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P10448425243505305919

namespace A268234

/-- `∑[A034930(n)%2]` -/
def P10448425243505305919.Spec : Prop :=
  ∀ n, P10448425243505305919.a n = A268234 n

end A268234

/-! ## A268234.P9107562380892421313

`∑[A034931(n)%2]`
-/

namespace A268234.P9107562380892421313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034931 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P9107562380892421313

namespace A268234

/-- `∑[A034931(n)%2]` -/
def P9107562380892421313.Spec : Prop :=
  ∀ n, P9107562380892421313.a n = A268234 n

end A268234

/-! ## A268234.P3296758573779289996

`∑[A110813(n)%2]`
-/

namespace A268234.P3296758573779289996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110813 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P3296758573779289996

namespace A268234

/-- `∑[A110813(n)%2]` -/
def P3296758573779289996.Spec : Prop :=
  ∀ n, P3296758573779289996.a n = A268234 n

end A268234

/-! ## A268234.P13347894662465720938

`∑[A275198(n)%2]`
-/

namespace A268234.P13347894662465720938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275198 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P13347894662465720938

namespace A268234

/-- `∑[A275198(n)%2]` -/
def P13347894662465720938.Spec : Prop :=
  ∀ n, P13347894662465720938.a n = A268234 n

end A268234

/-! ## A268234.P4528537923408278135

`∑[and(1, A027170(n))]`
-/

namespace A268234.P4528537923408278135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027170 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P4528537923408278135

namespace A268234

/-- `∑[and(1, A027170(n))]` -/
def P4528537923408278135.Spec : Prop :=
  ∀ n, P4528537923408278135.a n = A268234 n

end A268234

/-! ## A268234.P12035052732488656727

`∑[and(1, A080232(n))]`
-/

namespace A268234.P12035052732488656727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A080232 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P12035052732488656727

namespace A268234

/-- `∑[and(1, A080232(n))]` -/
def P12035052732488656727.Spec : Prop :=
  ∀ n, P12035052732488656727.a n = A268234 n

end A268234

/-! ## A268234.P13694830705696728703

`∑[and(1, A081579(n))]`
-/

namespace A268234.P13694830705696728703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A081579 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P13694830705696728703

namespace A268234

/-- `∑[and(1, A081579(n))]` -/
def P13694830705696728703.Spec : Prop :=
  ∀ n, P13694830705696728703.a n = A268234 n

end A268234

/-! ## A268234.P11123351216833329523

`∑[and(1, A108561(n))]`
-/

namespace A268234.P11123351216833329523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A108561 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P11123351216833329523

namespace A268234

/-- `∑[and(1, A108561(n))]` -/
def P11123351216833329523.Spec : Prop :=
  ∀ n, P11123351216833329523.a n = A268234 n

end A268234

/-! ## A268234.P15057186586831191107

`∑[and(1, A110814(n))]`
-/

namespace A268234.P15057186586831191107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A110814 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P15057186586831191107

namespace A268234

/-- `∑[and(1, A110814(n))]` -/
def P15057186586831191107.Spec : Prop :=
  ∀ n, P15057186586831191107.a n = A268234 n

end A268234

/-! ## A268234.P6814034675436245368

`∑[and(1, A134059(n))]`
-/

namespace A268234.P6814034675436245368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A134059 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P6814034675436245368

namespace A268234

/-- `∑[and(1, A134059(n))]` -/
def P6814034675436245368.Spec : Prop :=
  ∀ n, P6814034675436245368.a n = A268234 n

end A268234

/-! ## A268234.P9626388994286519778

`∑[and(1, A285117(n))]`
-/

namespace A268234.P9626388994286519778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285117 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P9626388994286519778

namespace A268234

/-- `∑[and(1, A285117(n))]` -/
def P9626388994286519778.Spec : Prop :=
  ∀ n, P9626388994286519778.a n = A268234 n

end A268234

/-! ## A268234.P6479678204871332753

`∑[floor(acot(A004198(n)))]`
-/

namespace A268234.P6479678204871332753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A004198 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P6479678204871332753

namespace A268234

/-- `∑[floor(acot(A004198(n)))]` -/
def P6479678204871332753.Spec : Prop :=
  ∀ n, P6479678204871332753.a n = A268234 n

end A268234

/-! ## A268234.P12192024358529330835

`∑[char[A268231(n+1)]]`
-/

namespace A268234.P12192024358529330835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268231 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P12192024358529330835

namespace A268234

/-- `∑[char[A268231(n+1)]]` -/
def P12192024358529330835.Spec : Prop :=
  ∀ n, (P12192024358529330835.a n : ℤ) = A268234 n

end A268234

/-! ## A268234.P10060688932814451338

`∑[gcd(2, A014473(n))-1]`
-/

namespace A268234.P10060688932814451338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A014473 n) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268234.P10060688932814451338

namespace A268234

/-- `∑[gcd(2, A014473(n))-1]` -/
def P10060688932814451338.Spec : Prop :=
  ∀ n, P10060688932814451338.a n = A268234 n

end A268234

/-!
# A268235: a(n) = Sum_{k=1..n} floor(n/k)*2^(k-1).

The programs for A268235, the canonical program `A268235.P3437335353854557803` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268235 has offset 1).

The definition of A268235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268235.P13973471763891379072

`∑[∑{d}[n+1, 2^(#-1)]]`
-/

namespace A268235.P13973471763891379072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268235.P13973471763891379072

namespace A268235

/-- `∑[∑{d}[n+1, 2^(#-1)]]` -/
def P13973471763891379072.Spec : Prop :=
  ∀ n, P13973471763891379072.a n = (A268235 (n + 1) : ℚ)

end A268235

/-! ## A268235.P15360515440791461489

`∑[∑{d}[n+1, 2^#]/2]`
-/

namespace A268235.P15360515440791461489
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), 2 ^ d : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268235.P15360515440791461489

namespace A268235

/-- `∑[∑{d}[n+1, 2^#]/2]` -/
def P15360515440791461489.Spec : Prop :=
  ∀ n, P15360515440791461489.a n = (A268235 (n + 1) : ℚ)

end A268235

/-! ## A268235.P959647525713378038

`∑{d}[n+1, 2^(#-1)]+a(n-1)` with `a(0)=1`
-/

namespace A268235.P959647525713378038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) + a (n - 1)

end

end A268235.P959647525713378038

namespace A268235

/-- `∑{d}[n+1, 2^(#-1)]+a(n-1)` -/
def P959647525713378038.Spec : Prop :=
  ∀ n, P959647525713378038.a n = (A268235 (n + 1) : ℚ)

end A268235

/-! ## A268235.P3437335353854557803

`∑[A034729(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A268235

/-- `∑[A034729(n+1)]` -/
def P3437335353854557803.Spec : Prop :=
  ∀ n, P3437335353854557803.a n = A268235 (n + 1)

theorem P3437335353854557803.correct : P3437335353854557803.Spec := by
  intro n
  simp only [A268235, Nat.add_sub_cancel]

end A268235

/-! ## A268235.P16520803165172957380

`∑[A055895(n+1)/2]`
-/

namespace A268235.P16520803165172957380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055895 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268235.P16520803165172957380

namespace A268235

/-- `∑[A055895(n+1)/2]` -/
def P16520803165172957380.Spec : Prop :=
  ∀ n, P16520803165172957380.a n = (A268235 (n + 1) : ℚ)

end A268235

/-! ## A268235.P2979128375316086750

`2*A345028(n+1)-(n+1)`
-/

namespace A268235.P2979128375316086750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345028 (n + 1) - (n + 1 : ℤ)

end

end A268235.P2979128375316086750

namespace A268235

/-- `2*A345028(n+1)-(n+1)` -/
def P2979128375316086750.Spec : Prop :=
  ∀ n, P2979128375316086750.a n = A268235 (n + 1)

end A268235

/-! ## A268235.P7256894249312245013

`∑[ceil(∑{d}[n+1, A011782(#+1)]/2)]`
-/

namespace A268235.P7256894249312245013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f2 n), A011782 (d + 1) : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268235.P7256894249312245013

namespace A268235

/-- `∑[ceil(∑{d}[n+1, A011782(#+1)]/2)]` -/
def P7256894249312245013.Spec : Prop :=
  ∀ n, P7256894249312245013.a n = A268235 (n + 1)

end A268235

/-! ## A268235.P9945555166209635836

`∑[A308813(A046691(n+1)+2)]`
-/

namespace A268235.P9945555166209635836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A046691 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268235.P9945555166209635836

namespace A268235

/-- `∑[A308813(A046691(n+1)+2)]` -/
def P9945555166209635836.Spec : Prop :=
  ∀ n, P9945555166209635836.a n = A268235 (n + 1)

end A268235

/-!
# A268238: From the Fouriest transform of n: write n in that base b >= 4 which maximizes the number of 4's; in case of a tie pick the smallest b; sequence gives the number of 4's.

The programs for A268238, there is no canonical definition to state claims against.
-/

/-! ## A268238.P3356460033813024646

`A316865(A268236(n))`
-/

namespace A268238.P3356460033813024646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A268236 n).toNat

end

end A268238.P3356460033813024646

/-!
# A268239: Given an n X n X n grid of points, a(n) is the maximum number of points that can be painted red so that, if any 8 of the red points are chosen, they do not form a cube with sides parallel to the grid.

The programs for A268239, there is no canonical definition to state claims against.
-/

/-! ## A268239.P10249885275932233199

`A000578(n)-A232749(A126972(n))`
-/

namespace A268239.P10249885275932233199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n - A232749 (A126972 n).toNat

end

end A268239.P10249885275932233199

/-! ## A268239.P17064965050492618958

`A324120(A324141(n))+A004068(n)`
-/

namespace A268239.P17064965050492618958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324120 (A324141 n).toNat + A004068 n

end

end A268239.P17064965050492618958

/-!
# A268240: Pascal's tetrahedron of trinomial coefficients (A046816) read mod 2.

The programs for A268240, there is no canonical definition to state claims against.
-/

/-! ## A268240.P12133085261653334921

`A046816(n)%2`
-/

namespace A268240.P12133085261653334921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046816 n) 2

end

end A268240.P12133085261653334921

/-! ## A268240.P17897920678175895503

`and(1, A046816(abs(1-n)+1))`
-/

namespace A268240.P17897920678175895503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046816 (|1 - (n : ℤ)| + 1).toNat)

end

end A268240.P17897920678175895503

/-! ## A268240.P1176040240696642331

`and(A046816(n), A158388(n))`
-/

namespace A268240.P1176040240696642331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A158388 n)

end

end A268240.P1176040240696642331

/-! ## A268240.P16577270613459596472

`and(1, A046816(n)²*A036086(n))`
-/

namespace A268240.P16577270613459596472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046816 n ^ 2 * A036086 n)

end

end A268240.P16577270613459596472

/-! ## A268240.P7653440025074159357

`and(1, (A046816(n)*A142993(n))²)`
-/

namespace A268240.P7653440025074159357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A046816 n * A142993 n) ^ 2)

end

end A268240.P7653440025074159357

/-! ## A268240.P13979882554420705288

`and(1, (A046816(n)*A144130(n))²)`
-/

namespace A268240.P13979882554420705288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A046816 n * A144130 n) ^ 2)

end

end A268240.P13979882554420705288

/-! ## A268240.P16533123005314277215

`A001221(lcm(2, A046816(n))/A046816(n))`
-/

namespace A268240.P16533123005314277215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((Int.lcm 2 (A046816 n) : ℚ) / (A046816 n : ℚ))).toNat

end

end A268240.P16533123005314277215

/-! ## A268240.P1393549968836165776

`and(A046816(n), A057427(n+1))`
-/

namespace A268240.P1393549968836165776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A057427 (n + 1))

end

end A268240.P1393549968836165776

/-! ## A268240.P10811788033819116025

`and(A046816(n), A049705(A013948(n+1)))`
-/

namespace A268240.P10811788033819116025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A049705 (A013948 (n + 1)).toNat)

end

end A268240.P10811788033819116025

/-! ## A268240.P1591711541891988165

`and(A046816(n), A174690(n))`
-/

namespace A268240.P1591711541891988165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A174690 n)

end

end A268240.P1591711541891988165

/-! ## A268240.P15732667894419705374

`and(A046816(n), A174689(n))`
-/

namespace A268240.P15732667894419705374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A174689 n)

end

end A268240.P15732667894419705374

/-! ## A268240.P10387606711138144465

`and(A046816(n), A174790(n))`
-/

namespace A268240.P10387606711138144465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A174790 n)

end

end A268240.P10387606711138144465

/-! ## A268240.P16708371902532506028

`and(A046816(n), A176410(n))`
-/

namespace A268240.P16708371902532506028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A176410 n)

end

end A268240.P16708371902532506028

/-! ## A268240.P6449048936389992434

`and(A046816(n), A077860(n))`
-/

namespace A268240.P6449048936389992434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A077860 n)

end

end A268240.P6449048936389992434

/-! ## A268240.P8203930245052861282

`and(A046816(n), A078621(n+1))`
-/

namespace A268240.P8203930245052861282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A078621 (n + 1))

end

end A268240.P8203930245052861282

/-! ## A268240.P14676351454387390569

`and(A046816(n), A077924(n))`
-/

namespace A268240.P14676351454387390569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A077924 n)

end

end A268240.P14676351454387390569

/-! ## A268240.P16707113536508255374

`and(A046816(n), A077853(n))`
-/

namespace A268240.P16707113536508255374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A077853 n)

end

end A268240.P16707113536508255374

/-! ## A268240.P15913489963135656143

`and(A046816(n), A174692(n))`
-/

namespace A268240.P15913489963135656143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A174692 n)

end

end A268240.P15913489963135656143

/-! ## A268240.P613689247464921681

`and(A046816(n), A077891(n))`
-/

namespace A268240.P613689247464921681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A077891 n)

end

end A268240.P613689247464921681

/-! ## A268240.P1971094963104976598

`and(A046816(n), A077881(n))`
-/

namespace A268240.P1971094963104976598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046816 n) (A077881 n)

end

end A268240.P1971094963104976598

/-!
# A268241: Number of closed factors of length n in Thue-Morse sequence A010060.

The programs for A268241, there is no canonical definition to state claims against.
-/

/-! ## A268241.P10032721789265419590

`and(A000005(A287199(n)), A256739(n+1))`
-/

namespace A268241.P10032721789265419590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A287199 n).toNat) (A256739 (n + 1))

end

end A268241.P10032721789265419590

/-! ## A268241.P11730050931913250216

`A333787(xor(n, A042974(A161951(n+1))))`
-/

namespace A268241.P11730050931913250216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333787 (Int.xor (n : ℤ) (A042974 (A161951 (n + 1)).toNat)).toNat

end

end A268241.P11730050931913250216

/-!
# A268242: Number of privileged factors of length n in Thue-Morse sequence A010060.

The programs for A268242, there is no canonical definition to state claims against.
-/

/-! ## A268242.P9407464869777989976

`A268243(n)*A320750(A222573(n+1))`
-/

namespace A268242.P9407464869777989976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268243 n * A320750 (A222573 (n + 1)).toNat

end

end A268242.P9407464869777989976

/-! ## A268242.P13331826658779006761

`A001285(A317089(2*(n+2)))*A268243(n)`
-/

namespace A268242.P13331826658779006761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A317089 (2 * (n + 2))).toNat * A268243 n

end

end A268242.P13331826658779006761

/-! ## A268242.P294960853236661833

`A268238(∑[A005586(n+2)])*A268243(n)`
-/

namespace A268242.P294960853236661833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268238 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A268243 n

end

end A268242.P294960853236661833

/-! ## A268242.P14667062931732960715

`A268243(n)*A378306(A320912(2*(n+2)))`
-/

namespace A268242.P14667062931732960715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268243 n * A378306 (A320912 (2 * (n + 2))).toNat

end

end A268242.P14667062931732960715

/-! ## A268242.P7444877982384804349

`A091090(A004111(n))*A268243(n)`
-/

namespace A268242.P7444877982384804349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A004111 n).toNat * A268243 n

end

end A268242.P7444877982384804349

/-!
# A268243: Number of privileged palindromes of length n in Thue-Morse sequence A010060.

The programs for A268243, there is no canonical definition to state claims against.
-/

/-! ## A268243.P14957873911969904284

`A211010(A211422(n)*A268242(n))`
-/

namespace A268243.P14957873911969904284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211010 (A211422 n * A268242 n).toNat

end

end A268243.P14957873911969904284

/-! ## A268243.P10334178621562310019

`A211010(lcm(A211422(n), A268242(n)))`
-/

namespace A268243.P10334178621562310019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211010 (Int.lcm (A211422 n) (A268242 n))

end

end A268243.P10334178621562310019

/-! ## A268243.P4582759920658318775

`A211010(A268242(n)%A244563(2*n+3))`
-/

namespace A268243.P4582759920658318775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211010 (Int.tmod (A268242 n) (A244563 (2 * n + 3))).toNat

end

end A268243.P4582759920658318775

/-! ## A268243.P18029512053953482210

`A211010(A268242(n)%A151685(n))`
-/

namespace A268243.P18029512053953482210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211010 (Int.tmod (A268242 n) (A151685 n)).toNat

end

end A268243.P18029512053953482210

/-! ## A268243.P8504438036768472109

`A211010(A268242(n)*A343338(n+1))`
-/

namespace A268243.P8504438036768472109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211010 (A268242 n * A343338 (n + 1)).toNat

end

end A268243.P8504438036768472109

/-!
# A268244: G.f.: (1 + x + 3*x^2 + 11*x^3 + 6*x^4 + 14*x^5 + 12*x^6 + 4*x^7 + 14*x^8 + 4*x^9 + 12*x^10 + 14*x^11 + 5*x^ 12 + 11*x^13 + 9*x^14 - 11*x^15)/((1 - x)^4*(1 - x^2)^12).

The programs for A268244, there is no canonical definition to state claims against.
-/

/-! ## A268244.P2892404385775390300

`A006561(2*(n+1))+A006519(A007283(n)²)`
-/

namespace A268244.P2892404385775390300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (2 * (n + 1)) + A006519 (A007283 n ^ 2).toNat

end

end A268244.P2892404385775390300

/-! ## A268244.P3797644880308018970

`A006561(2*n+2)+A006519(A007283(2*n))`
-/

namespace A268244.P3797644880308018970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (2 * n + 2) + A006519 (A007283 (2 * n)).toNat

end

end A268244.P3797644880308018970

/-!
# A268245: Number of nX4 0..4 arrays with every repeated value in every row greater than or equal to, and every column greater than, the previous repeated value.

The programs for A268245, there is no canonical definition to state claims against.
-/

/-! ## A268245.P10738875814164747189

`A268246(A141214(n+1))`
-/

namespace A268245.P10738875814164747189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268246 (A141214 (n + 1)).toNat

end

end A268245.P10738875814164747189

/-!
# A268246: T(n,k)=Number of nXk 0..k arrays with every repeated value in every row greater than or equal to, and every column greater than, the previous repeated value.

The programs for A268246, there is no canonical definition to state claims against.
-/

/-! ## A268246.P12514486280776138086

`A268103(n+1)-A049336(A340920(n))`
-/

namespace A268246.P12514486280776138086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268103 (n + 1) - A049336 (A340920 n).toNat

end

end A268246.P12514486280776138086

/-! ## A268246.P11458749980998112623

`A268103(n+1)-A285007(A113711(2*n+1))`
-/

namespace A268246.P11458749980998112623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268103 (n + 1) - A285007 (A113711 (2 * n + 1)).toNat

end

end A268246.P11458749980998112623

/-! ## A268246.P13960457888447568891

`A268103(n+1)-A102681(A089259(2*(n+2)))`
-/

namespace A268246.P13960457888447568891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268103 (n + 1) - A102681 (A089259 (2 * (n + 2))).toNat

end

end A268246.P13960457888447568891

/-!
# A268247: Number of 3Xn 0..n arrays with every repeated value in every row greater than or equal to, and every column greater than, the previous repeated value.

The programs for A268247, there is no canonical definition to state claims against.
-/

/-! ## A268247.P6679250227530219319

`A268246(∑[n+2]+4)`
-/

namespace A268247.P6679250227530219319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268246 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268247.P6679250227530219319

/-!
# A268248: Number of nX4 0..4 arrays with every repeated value in every row greater than, and every column greater than or equal to, the previous repeated value.

The programs for A268248, there is no canonical definition to state claims against.
-/

/-! ## A268248.P1501830972175555163

`A268249(A141214(n+1))`
-/

namespace A268248.P1501830972175555163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268249 (A141214 (n + 1)).toNat

end

end A268248.P1501830972175555163

/-! ## A268248.P3373691158545456091

`A268249(∑[A027434(3*n+2)]+4)`
-/

namespace A268248.P3373691158545456091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268249 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A268248.P3373691158545456091

/-!
# A268249: T(n,k)=Number of nXk 0..k arrays with every repeated value in every row greater than, and every column greater than or equal to, the previous repeated value.

The programs for A268249, there is no canonical definition to state claims against.
-/

/-! ## A268249.P14301380371799829131

`A268204(n+1)+A033762(A000108(n+2))`
-/

namespace A268249.P14301380371799829131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268204 (n + 1) + A033762 (A000108 (n + 2)).toNat

end

end A268249.P14301380371799829131

/-! ## A268249.P1386765527049700030

`A268204(n+1)+A033687(A062572(n+3))`
-/

namespace A268249.P1386765527049700030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268204 (n + 1) + A033687 (A062572 (n + 3)).toNat

end

end A268249.P1386765527049700030

/-! ## A268249.P7561678200623936146

`A268204(n+1)+A102681(A095975(n+4))`
-/

namespace A268249.P7561678200623936146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268204 (n + 1) + A102681 (A095975 (n + 4)).toNat

end

end A268249.P7561678200623936146

/-! ## A268249.P11998760096492941294

`A325135(A279569(n+1)+1)+A268204(n+1)`
-/

namespace A268249.P11998760096492941294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A279569 (n + 1) + 1).toNat + A268204 (n + 1)

end

end A268249.P11998760096492941294

/-!
# A268250: Number of 3Xn 0..n arrays with every repeated value in every row greater than, and every column greater than or equal to, the previous repeated value.

The programs for A268250, there is no canonical definition to state claims against.
-/

/-! ## A268250.P977653569885890541

`A268205(n+1)^3`
-/

namespace A268250.P977653569885890541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268205 (n + 1) ^ 3

end

end A268250.P977653569885890541

/-! ## A268250.P8167157320210097545

`A269409(2*n²+n+1+n)^3`
-/

namespace A268250.P8167157320210097545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (2 * n ^ 2 + n + 1 + n) ^ 3

end

end A268250.P8167157320210097545

/-! ## A268250.P1967514828168414271

`A268205(n+1)*A268206(n+1)`
-/

namespace A268250.P1967514828168414271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268205 (n + 1) * A268206 (n + 1)

end

end A268250.P1967514828168414271

/-! ## A268250.P14726288049213743908

`A268205(n+1)²*A269409(A001844(n))%A223872(n+1)`
-/

namespace A268250.P14726288049213743908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268205 (n + 1) ^ 2 * Int.tmod (A269409 (A001844 n).toNat) (A223872 (n + 1))

end

end A268250.P14726288049213743908

/-!
# A268251: Expansion of x*(1 + 2*x - 96*x^2 - 148*x^3 + 45*x^4 + 50*x^5 + 2*x^6)/(1 - 99*x^2 + 99*x^4 - x^6).

The programs for A268251, there is no canonical definition to state claims against.
-/

/-! ## A268251.P10232869504618217146

`eq[1, A169695(floor(n/3)*floor(n/2))]`
-/

namespace A268251.P10232869504618217146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (⌊(n : ℚ) / 3⌋ * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268251.P10232869504618217146

/-! ## A268251.P10074267855105273582

`A103168(A005640(n))+n`
-/

namespace A268251.P10074267855105273582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (A005640 n).toNat + (n : ℤ)

end

end A268251.P10074267855105273582

/-!
# A268254: Number of length-(n+1) 0..n arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268254, there is no canonical definition to state claims against.
-/

/-! ## A268254.P14531804886384493718

`A268261((n+1)²+n²)`
-/

namespace A268254.P14531804886384493718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 ((n + 1) ^ 2 + n ^ 2)

end

end A268254.P14531804886384493718

/-! ## A268254.P6840986528928119048

`record[gcd(A008482(n), A268261(n+1))]`
-/

namespace A268254.P6840986528928119048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A268261 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268254.P6840986528928119048

/-! ## A268254.P2405284500846419651

`lcm(A033999(n), A268261(A001844(n)))`
-/

namespace A268254.P2405284500846419651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A268261 (A001844 n).toNat)

end

end A268254.P2405284500846419651

/-! ## A268254.P17250427859780570639

`or(A000007(n), A268261(A001844(n)))`
-/

namespace A268254.P17250427859780570639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A268261 (A001844 n).toNat)

end

end A268254.P17250427859780570639

/-! ## A268254.P10965173422850370681

`A007318(∑[n])*A268261(A001844(n))`
-/

namespace A268254.P10965173422850370681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A268261 (A001844 n).toNat

end

end A268254.P10965173422850370681

/-!
# A268255: Number of length-(n+1) 0..2 arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268255, the canonical program `A268255.P6101518465043321066` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268255 has offset 1).

The definition of A268255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268255.P6101518465043321066

`7*a(n-1)-15*a(n-2)+7*a(n-3)+6*a(n-4)` with `a(0)=7, a(1)=17, a(2)=42, a(3)=106`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A268255

/-- `7*a(n-1)-15*a(n-2)+7*a(n-3)+6*a(n-4)` -/
def P6101518465043321066.Spec : Prop :=
  ∀ n, P6101518465043321066.a n = A268255 (n + 1)

theorem P6101518465043321066.correct : P6101518465043321066.Spec := by
  intro n
  simp only [A268255, Nat.add_sub_cancel]

end A268255

/-! ## A268255.P17289882842688618905

`A268261(∑[n+2])`
-/

namespace A268255.P17289882842688618905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268255.P17289882842688618905

namespace A268255

/-- `A268261(∑[n+2])` -/
def P17289882842688618905.Spec : Prop :=
  ∀ n, P17289882842688618905.a n = A268255 (n + 1)

end A268255

/-! ## A268255.P3817805108530629681

`record[A268261(A000096(A028920(n)))]`
-/

namespace A268255.P3817805108530629681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268255.P3817805108530629681

namespace A268255

/-- `record[A268261(A000096(A028920(n)))]` -/
def P3817805108530629681.Spec : Prop :=
  ∀ n, P3817805108530629681.a n = A268255 (n + 1)

end A268255

/-! ## A268255.P13123312382528909433

`record[A268261(A000096(A143182(n)))]`
-/

namespace A268255.P13123312382528909433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (A143182 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268255.P13123312382528909433

namespace A268255

/-- `record[A268261(A000096(A143182(n)))]` -/
def P13123312382528909433.Spec : Prop :=
  ∀ n, P13123312382528909433.a n = A268255 (n + 1)

end A268255

/-! ## A268255.P6326774417803704142

`record[A268261(A000096(A002260(n+1)))]`
-/

namespace A268255.P6326774417803704142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268255.P6326774417803704142

namespace A268255

/-- `record[A268261(A000096(A002260(n+1)))]` -/
def P6326774417803704142.Spec : Prop :=
  ∀ n, P6326774417803704142.a n = A268255 (n + 1)

end A268255

/-! ## A268255.P15647138737330211550

`record[A268261(A000096(A002345(n+1)))]`
-/

namespace A268255.P15647138737330211550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (A002345 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268255.P15647138737330211550

namespace A268255

/-- `record[A268261(A000096(A002345(n+1)))]` -/
def P15647138737330211550.Spec : Prop :=
  ∀ n, P15647138737330211550.a n = A268255 (n + 1)

end A268255

/-! ## A268255.P16495010983148964124

`record[A268261(A000096(A273824(n+1)))]`
-/

namespace A268255.P16495010983148964124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (A273824 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268255.P16495010983148964124

namespace A268255

/-- `record[A268261(A000096(A273824(n+1)))]` -/
def P16495010983148964124.Spec : Prop :=
  ∀ n, P16495010983148964124.a n = A268255 (n + 1)

end A268255

/-! ## A268255.P8228873953860632673

`record[A268261(A000096(A277615(n+1)))]`
-/

namespace A268255.P8228873953860632673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (A277615 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268255.P8228873953860632673

namespace A268255

/-- `record[A268261(A000096(A277615(n+1)))]` -/
def P8228873953860632673.Spec : Prop :=
  ∀ n, P8228873953860632673.a n = A268255 (n + 1)

end A268255

/-!
# A268256: Number of length-(n+1) 0..3 arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268256, there is no canonical definition to state claims against.
-/

/-! ## A268256.P13182594510943595441

`A268261(∑[n+3]+1)`
-/

namespace A268256.P13182594510943595441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268256.P13182594510943595441

/-! ## A268256.P17738609806485981076

`A268261(Δ[A008778(n)])%A042792(n)`
-/

namespace A268256.P17738609806485981076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268261 (f1 (n + 1) - f1 n).toNat) (A042792 n)

end

end A268256.P17738609806485981076

/-! ## A268256.P9119881300615379039

`A087960(n)²*A268261(Δ[A008778(n)])`
-/

namespace A268256.P9119881300615379039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A268261 (f1 (n + 1) - f1 n).toNat

end

end A268256.P9119881300615379039

/-! ## A268256.P17370247588944089183

`A268261(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A268256.P17370247588944089183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A268256.P17370247588944089183

/-! ## A268256.P11175711835136112801

`A268261(Δ[A008778(n)])+A142150(2*n+1)`
-/

namespace A268256.P11175711835136112801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n).toNat + A142150 (2 * n + 1)

end

end A268256.P11175711835136112801

/-! ## A268256.P9848920706094114698

`A268261(Δ[A008778(n)])+A086823(9*(n+1))`
-/

namespace A268256.P9848920706094114698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n).toNat + A086823 (9 * (n + 1))

end

end A268256.P9848920706094114698

/-! ## A268256.P1214142047780564543

`A268261(Δ[A008778(n)])+A086831(9*(n+1))`
-/

namespace A268256.P1214142047780564543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n).toNat + A086831 (9 * (n + 1))

end

end A268256.P1214142047780564543

/-! ## A268256.P6401523795479608174

`A014963(C(n+5, 2))*A268261(A034856(n+2))`
-/

namespace A268256.P6401523795479608174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 5) 2) * A268261 (A034856 (n + 2)).toNat

end

end A268256.P6401523795479608174

/-!
# A268257: Number of length-(n+1) 0..4 arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268257, there is no canonical definition to state claims against.
-/

/-! ## A268257.P10750541052466644195

`A268261(∑[n+5]-(n-2))`
-/

namespace A268257.P10750541052466644195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A268257.P10750541052466644195

/-! ## A268257.P5456127535641208462

`A268261(A027379(n+2))%A027265(n+3)`
-/

namespace A268257.P5456127535641208462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268261 (A027379 (n + 2)).toNat) (A027265 (n + 3))

end

end A268257.P5456127535641208462

/-! ## A268257.P5797382099579731580

`A268261(A027379(n+2))/A000124(n+8)²%3`
-/

namespace A268257.P5797382099579731580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268261 (A027379 (n + 2)).toNat : ℚ) / (Int.tmod (A000124 (n + 8) ^ 2) 3 : ℚ)

end

end A268257.P5797382099579731580

/-! ## A268257.P3807790830701571750

`A268261(A027379(n+2))-A358773(A061799(n+1))`
-/

namespace A268257.P3807790830701571750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A027379 (n + 2)).toNat - A358773 (A061799 (n + 1)).toNat

end

end A268257.P3807790830701571750

/-! ## A268257.P16486155663058340466

`A268261(A027379(n+2))-A358773(A160337(n+1))`
-/

namespace A268257.P16486155663058340466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A027379 (n + 2)).toNat - A358773 (A160337 (n + 1)).toNat

end

end A268257.P16486155663058340466

/-! ## A268257.P11733276781389444722

`A268261(A027379(n+2))/A130654(A070079(n+1))`
-/

namespace A268257.P11733276781389444722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268261 (A027379 (n + 2)).toNat : ℚ) / (A130654 (A070079 (n + 1)).toNat : ℚ)

end

end A268257.P11733276781389444722

/-! ## A268257.P17727991263649634721

`A268261(A027379(n+2))-A271910(A000124(n+8))`
-/

namespace A268257.P17727991263649634721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A027379 (n + 2)).toNat - A271910 (A000124 (n + 8)).toNat

end

end A268257.P17727991263649634721

/-!
# A268258: Number of length-(n+1) 0..5 arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268258, there is no canonical definition to state claims against.
-/

/-! ## A268258.P11483128606481811064

`A268261(∑[n+5]+6)`
-/

namespace A268258.P11483128606481811064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A268258.P11483128606481811064

/-!
# A268259: Number of length-(n+1) 0..6 arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268259, there is no canonical definition to state claims against.
-/

/-! ## A268259.P4240110580969079575

`A268261(A052905(n+3))`
-/

namespace A268259.P4240110580969079575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A052905 (n + 3)).toNat

end

end A268259.P4240110580969079575

/-! ## A268259.P12303472582502487582

`A268261(A055998(n+4)-2)`
-/

namespace A268259.P12303472582502487582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A055998 (n + 4) - 2).toNat

end

end A268259.P12303472582502487582

/-! ## A268259.P10665862317350633121

`A268261(Δ[A264443(n+1)]-1)`
-/

namespace A268259.P10665862317350633121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n - 1).toNat

end

end A268259.P10665862317350633121

/-! ## A268259.P16580835342419056013

`A268261(Δ[A026054(n+3)]+1)`
-/

namespace A268259.P16580835342419056013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n + 1).toNat

end

end A268259.P16580835342419056013

/-! ## A268259.P14153514225730340285

`A268261(A000096(n+4)+n+2)`
-/

namespace A268259.P14153514225730340285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A268259.P14153514225730340285

/-! ## A268259.P14793782889176507469

`A268261(A014132(Δ[A264443(n)]))`
-/

namespace A268259.P14793782889176507469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A014132 (f1 (n + 1) - f1 n).toNat).toNat

end

end A268259.P14793782889176507469

/-!
# A268260: Number of length-(n+1) 0..7 arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268260, there is no canonical definition to state claims against.
-/

/-! ## A268260.P5693023530542015383

`A268261(A055999(n+4))`
-/

namespace A268260.P5693023530542015383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A055999 (n + 4)).toNat

end

end A268260.P5693023530542015383

/-! ## A268260.P7962122313130353872

`A268261(Δ[A026054(n+4)])`
-/

namespace A268260.P7962122313130353872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n).toNat

end

end A268260.P7962122313130353872

/-! ## A268260.P4666623836416301033

`A268261(A155212(n+3)+2)`
-/

namespace A268260.P4666623836416301033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A155212 (n + 3) + 2).toNat

end

end A268260.P4666623836416301033

/-! ## A268260.P10916135453984913894

`A268261(A167614(n+6)-9)`
-/

namespace A268260.P10916135453984913894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A167614 (n + 6) - 9).toNat

end

end A268260.P10916135453984913894

/-! ## A268260.P13944518652547191919

`A268261(A000217(n+6)+n+1)`
-/

namespace A268260.P13944518652547191919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A268260.P13944518652547191919

/-! ## A268260.P12969668943419284727

`A268261(A161680(n+7)+n+1)`
-/

namespace A268260.P12969668943419284727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A161680 (n + 7) + (n + 1 : ℤ)).toNat

end

end A268260.P12969668943419284727

/-! ## A268260.P6319038362201260895

`A268261(A034856(n+4)+A004273(n+5))`
-/

namespace A268260.P6319038362201260895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A034856 (n + 4) + A004273 (n + 5)).toNat

end

end A268260.P6319038362201260895

/-!
# A268262: Number of length-(3+1) 0..n arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268262, the canonical program `A268262.P5634008901235146210` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268262 has offset 1).

The definition of A268262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268262.P5634008901235146210

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=9, a(1)=42, a(2)=143, a(3)=378, a(4)=837`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A268262

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5634008901235146210.Spec : Prop :=
  ∀ n, P5634008901235146210.a n = A268262 (n + 1)

theorem P5634008901235146210.correct : P5634008901235146210.Spec := by
  intro n
  simp only [A268262, Nat.add_sub_cancel]

end A268262

/-! ## A268262.P15156787219270098941

`(n+1)^4+(n+2)^3-n`
-/

namespace A268262.P15156787219270098941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) + (((n + 2) ^ 3 : ℤ) - (n : ℤ))

end

end A268262.P15156787219270098941

namespace A268262

/-- `(n+1)^4+(n+2)^3-n` -/
def P15156787219270098941.Spec : Prop :=
  ∀ n, P15156787219270098941.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P6380736020353037190

`floor(((n+1)²+2)/Δ[atan(n+1)])`
-/

namespace A268262.P6380736020353037190
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 + 2 : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A268262.P6380736020353037190

namespace A268262

/-- `floor(((n+1)²+2)/Δ[atan(n+1)])` -/
def P6380736020353037190.Spec : Prop :=
  ∀ n, P6380736020353037190.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P8837331989280585403

`((n+1)²+n+2)*xor(2, (n+1)²)`
-/

namespace A268262.P8837331989280585403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + (n + 2)) * Nat.xor 2 ((n + 1) ^ 2)

end

end A268262.P8837331989280585403

namespace A268262

/-- `((n+1)²+n+2)*xor(2, (n+1)²)` -/
def P8837331989280585403.Spec : Prop :=
  ∀ n, (P8837331989280585403.a n : ℤ) = A268262 (n + 1)

end A268262

/-! ## A268262.P17087624988490335313

`(A183199(n+1)+n)*A183199(n+1)`
-/

namespace A268262.P17087624988490335313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183199 (n + 1) + (n : ℤ)) * A183199 (n + 1)

end

end A268262.P17087624988490335313

namespace A268262

/-- `(A183199(n+1)+n)*A183199(n+1)` -/
def P17087624988490335313.Spec : Prop :=
  ∀ n, P17087624988490335313.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P22158381854937965

`((n+1)²+n+2)*A059100(n+1)`
-/

namespace A268262.P22158381854937965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n + 2 : ℤ) * A059100 (n + 1)

end

end A268262.P22158381854937965

namespace A268262

/-- `((n+1)²+n+2)*A059100(n+1)` -/
def P22158381854937965.Spec : Prop :=
  ∀ n, P22158381854937965.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P11345862141643365440

`A002061(n+2)*A010000(n+1)`
-/

namespace A268262.P11345862141643365440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 2) * A010000 (n + 1)

end

end A268262.P11345862141643365440

namespace A268262

/-- `A002061(n+2)*A010000(n+1)` -/
def P11345862141643365440.Spec : Prop :=
  ∀ n, P11345862141643365440.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P2595684311188842392

`A002061(n+2)*A183199(n+1)`
-/

namespace A268262.P2595684311188842392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 2) * A183199 (n + 1)

end

end A268262.P2595684311188842392

namespace A268262

/-- `A002061(n+2)*A183199(n+1)` -/
def P2595684311188842392.Spec : Prop :=
  ∀ n, P2595684311188842392.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P2900227959616196602

`(A005563(n+1)-n)*(A005563(n+1)-n-n)`
-/

namespace A268262.P2900227959616196602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 (n + 1) - (n : ℤ)) * (A005563 (n + 1) - (n : ℤ) - (n : ℤ))

end

end A268262.P2900227959616196602

namespace A268262

/-- `(A005563(n+1)-n)*(A005563(n+1)-n-n)` -/
def P2900227959616196602.Spec : Prop :=
  ∀ n, P2900227959616196602.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P11334555411030425637

`(A267942(2*n+1)+n)*A267942(2*n+1)`
-/

namespace A268262.P11334555411030425637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267942 (2 * n + 1) + (n : ℤ)) * A267942 (2 * n + 1)

end

end A268262.P11334555411030425637

namespace A268262

/-- `(A267942(2*n+1)+n)*A267942(2*n+1)` -/
def P11334555411030425637.Spec : Prop :=
  ∀ n, P11334555411030425637.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P14582906377478784185

`(A290743(2*(n+1))+n)*A290743(2*(n+1))`
-/

namespace A268262.P14582906377478784185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A290743 (2 * (n + 1)) + (n : ℤ)) * A290743 (2 * (n + 1))

end

end A268262.P14582906377478784185

namespace A268262

/-- `(A290743(2*(n+1))+n)*A290743(2*(n+1))` -/
def P14582906377478784185.Spec : Prop :=
  ∀ n, P14582906377478784185.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P10843694835096921395

`(A200975(2*(n+1))-n)*A200975(2*(n+1))`
-/

namespace A268262.P10843694835096921395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A200975 (2 * (n + 1)) - (n : ℤ)) * A200975 (2 * (n + 1))

end

end A268262.P10843694835096921395

namespace A268262

/-- `(A200975(2*(n+1))-n)*A200975(2*(n+1))` -/
def P10843694835096921395.Spec : Prop :=
  ∀ n, P10843694835096921395.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P8371974482782700710

`(A264754(2*n+1)-n)*A264754(2*n+1)`
-/

namespace A268262.P8371974482782700710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A264754 (2 * n + 1) - (n : ℤ)) * A264754 (2 * n + 1)

end

end A268262.P8371974482782700710

namespace A268262

/-- `(A264754(2*n+1)-n)*A264754(2*n+1)` -/
def P8371974482782700710.Spec : Prop :=
  ∀ n, P8371974482782700710.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P16691858878860921165

`A033638(2*n+3)*((n+1)²+2)`
-/

namespace A268262.P16691858878860921165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 * n + 3) * ((n + 1) ^ 2 + 2 : ℤ)

end

end A268262.P16691858878860921165

namespace A268262

/-- `A033638(2*n+3)*((n+1)²+2)` -/
def P16691858878860921165.Spec : Prop :=
  ∀ n, P16691858878860921165.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P11749839777158198373

`(A000027((n+1)²+1)+n+1)*((n+1)²+2)`
-/

namespace A268262.P11749839777158198373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 ((n + 1) ^ 2 + 1) + (n : ℤ) + 1) * ((n + 1) ^ 2 + 2 : ℤ)

end

end A268262.P11749839777158198373

namespace A268262

/-- `(A000027((n+1)²+1)+n+1)*((n+1)²+2)` -/
def P11749839777158198373.Spec : Prop :=
  ∀ n, P11749839777158198373.a n = A268262 (n + 1)

end A268262

/-! ## A268262.P13382586897348195635

`A059100(n+1)*A144396(A000217(n+1))`
-/

namespace A268262.P13382586897348195635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (n + 1) * A144396 (A000217 (n + 1)).toNat

end

end A268262.P13382586897348195635

namespace A268262

/-- `A059100(n+1)*A144396(A000217(n+1))` -/
def P13382586897348195635.Spec : Prop :=
  ∀ n, P13382586897348195635.a n = A268262 (n + 1)

end A268262

/-!
# A268263: Number of length-(4+1) 0..n arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268263, the canonical program `A268263.P16239416357249793199` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268263 has offset 1).

The definition of A268263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268263.P16239416357249793199

`A269657(n+1)+A269658(n)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A268263

/-- `A269657(n+1)+A269658(n)+1` -/
def P16239416357249793199.Spec : Prop :=
  ∀ n, P16239416357249793199.a n = A268263 (n + 1)

theorem P16239416357249793199.correct : P16239416357249793199.Spec := by
  intro n
  simp only [A268263, Nat.add_sub_cancel]

end A268263

/-! ## A268263.P12656432833508936540

`A268261(A052905(n)+9)`
-/

namespace A268263.P12656432833508936540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A052905 n + 9).toNat

end

end A268263.P12656432833508936540

namespace A268263

/-- `A268261(A052905(n)+9)` -/
def P12656432833508936540.Spec : Prop :=
  ∀ n, P12656432833508936540.a n = A268263 (n + 1)

end A268263

/-! ## A268263.P8857820408542317020

`A268261(A055999(n)+10)`
-/

namespace A268263.P8857820408542317020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A055999 n + 10).toNat

end

end A268263.P8857820408542317020

namespace A268263

/-- `A268261(A055999(n)+10)` -/
def P8857820408542317020.Spec : Prop :=
  ∀ n, P8857820408542317020.a n = A268263 (n + 1)

end A268263

/-! ## A268263.P8636492128695616634

`A268261(A167614(n+2)+1)`
-/

namespace A268263.P8636492128695616634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A167614 (n + 2) + 1).toNat

end

end A268263.P8636492128695616634

namespace A268263

/-- `A268261(A167614(n+2)+1)` -/
def P8636492128695616634.Spec : Prop :=
  ∀ n, P8636492128695616634.a n = A268263 (n + 1)

end A268263

/-! ## A268263.P16089794113613942784

`A268261(A167487(n+2)-3)`
-/

namespace A268263.P16089794113613942784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A167487 (n + 2) - 3).toNat

end

end A268263.P16089794113613942784

namespace A268263

/-- `A268261(A167487(n+2)-3)` -/
def P16089794113613942784.Spec : Prop :=
  ∀ n, P16089794113613942784.a n = A268263 (n + 1)

end A268263

/-! ## A268263.P13210862107608604964

`A268261(A000217(n+3)+4)`
-/

namespace A268263.P13210862107608604964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000217 (n + 3) + 4).toNat

end

end A268263.P13210862107608604964

namespace A268263

/-- `A268261(A000217(n+3)+4)` -/
def P13210862107608604964.Spec : Prop :=
  ∀ n, P13210862107608604964.a n = A268263 (n + 1)

end A268263

/-! ## A268263.P11262969175756672896

`A268261(Δ[A264443(n)-n²])`
-/

namespace A268263.P11262969175756672896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n).toNat

end

end A268263.P11262969175756672896

namespace A268263

/-- `A268261(Δ[A264443(n)-n²])` -/
def P11262969175756672896.Spec : Prop :=
  ∀ n, P11262969175756672896.a n = A268263 (n + 1)

end A268263

/-!
# A268264: Number of length-(5+1) 0..n arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268264, there is no canonical definition to state claims against.
-/

/-! ## A268264.P13332791768113858449

`A268261(A167499(n+3))`
-/

namespace A268264.P13332791768113858449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A167499 (n + 3)).toNat

end

end A268264.P13332791768113858449

/-! ## A268264.P12041344395186633441

`A268261(A056000(n)+15)`
-/

namespace A268264.P12041344395186633441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A056000 n + 15).toNat

end

end A268264.P12041344395186633441

/-! ## A268264.P5787931442137690399

`A268261(A167614(n+3)+2)`
-/

namespace A268264.P5787931442137690399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A167614 (n + 3) + 2).toNat

end

end A268264.P5787931442137690399

/-! ## A268264.P9986149718392002280

`A268261(A000124(n+4)+4)`
-/

namespace A268264.P9986149718392002280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000124 (n + 4) + 4).toNat

end

end A268264.P9986149718392002280

/-! ## A268264.P1792029146890910954

`A268261(A000217(n+4)+5)`
-/

namespace A268264.P1792029146890910954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000217 (n + 4) + 5).toNat

end

end A268264.P1792029146890910954

/-! ## A268264.P11715637503457932849

`A268261(A000096(n+4)-(n-1))`
-/

namespace A268264.P11715637503457932849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A268264.P11715637503457932849

/-! ## A268264.P904000398864717073

`A268261(Δ[A026054(n+3)]-2*n)`
-/

namespace A268264.P904000398864717073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (f1 (n + 1) - f1 n - (2 * n : ℤ)).toNat

end

end A268264.P904000398864717073

/-! ## A268264.P12130827765472721644

`A268261(A052905(n+3)-(2*n+1))`
-/

namespace A268264.P12130827765472721644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A268264.P12130827765472721644

/-!
# A268265: Number of length-(6+1) 0..n arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268265, there is no canonical definition to state claims against.
-/

/-! ## A268265.P16106424514091982328

`A268261(A167614(n+4)+3)`
-/

namespace A268265.P16106424514091982328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A167614 (n + 4) + 3).toNat

end

end A268265.P16106424514091982328

/-! ## A268265.P13584119204915279146

`A268261(A000124(n+5)+5)`
-/

namespace A268265.P13584119204915279146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000124 (n + 5) + 5).toNat

end

end A268265.P13584119204915279146

/-! ## A268265.P16505396226679590467

`A268261(A000217(n+5)+6)`
-/

namespace A268265.P16505396226679590467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000217 (n + 5) + 6).toNat

end

end A268265.P16505396226679590467

/-! ## A268265.P1958555720139151236

`A268261(A034111(n+1)-A055999(n))`
-/

namespace A268265.P1958555720139151236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A034111 (n + 1) - A055999 n).toNat

end

end A268265.P1958555720139151236

/-! ## A268265.P7013298956361089235

`A268261(A034856(n+6)-A004273(n+3))`
-/

namespace A268265.P7013298956361089235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A034856 (n + 6) - A004273 (n + 3)).toNat

end

end A268265.P7013298956361089235

/-!
# A268266: Number of length-(7+1) 0..n arrays with new repeated values introduced in sequential order starting with zero.

The programs for A268266, there is no canonical definition to state claims against.
-/

/-! ## A268266.P12300150984361824675

`A268261(A167487(n+5))`
-/

namespace A268266.P12300150984361824675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A167487 (n + 5)).toNat

end

end A268266.P12300150984361824675

/-! ## A268266.P7658824962618839122

`A268261(A167614(n+5)+4)`
-/

namespace A268266.P7658824962618839122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A167614 (n + 5) + 4).toNat

end

end A268266.P7658824962618839122

/-! ## A268266.P10140177791820327593

`A268261(A133263(n+6)+5)`
-/

namespace A268266.P10140177791820327593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A133263 (n + 6) + 5).toNat

end

end A268266.P10140177791820327593

/-! ## A268266.P3508915718594569649

`A268261(A000096(n+5)+8)`
-/

namespace A268266.P3508915718594569649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000096 (n + 5) + 8).toNat

end

end A268266.P3508915718594569649

/-! ## A268266.P11659485428342580564

`A268261(A000217(n+6)+7)`
-/

namespace A268266.P11659485428342580564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000217 (n + 6) + 7).toNat

end

end A268266.P11659485428342580564

/-! ## A268266.P17363348711836842985

`A268261(A000124(n+7)-(n+1))`
-/

namespace A268266.P17363348711836842985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268261 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A268266.P17363348711836842985

/-!
# A268267: Orbit periods of the iteration s(1)=0, s(m+1)=(2*i*Pi*n)/log(3)+log(1/(-1-2^-s(m)))/log(3).

The programs for A268267, there is no canonical definition to state claims against.
-/

/-! ## A268267.P15612101424085411604

`A136480(Δ[A189379(n+2)+A006592(n+3)])`
-/

namespace A268267.P15612101424085411604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 2) + A006592 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (f1 (n + 1) - f1 n).toNat

end

end A268267.P15612101424085411604

/-! ## A268267.P13246820710749669759

`A353932(A375582(n+1)+A353844(3*n+1))`
-/

namespace A268267.P13246820710749669759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353932 (A375582 (n + 1) + A353844 (3 * n + 1)).toNat

end

end A268267.P13246820710749669759

/-!
# A268269: Primordial LB numbers: LB numbers (A267856) that are not of the form 10*n where n is also an LB number.

The programs for A268269, there is no canonical definition to state claims against.
-/

/-! ## A268269.P16355261274803150351

`filter[A267856(n+1), A095111(#)]`
-/

namespace A268269.P16355261274803150351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095111 (f1 j).toNat = 1) n)

end

end A268269.P16355261274803150351

/-! ## A268269.P16629161738761352180

`A267856(A096304(n+1)^A045995(n))`
-/

namespace A268269.P16629161738761352180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267856 (SequenceMachineLib.roundAway ((A096304 (n + 1) : ℚ) ^ (A045995 n : ℤ))).toNat

end

end A268269.P16629161738761352180

/-! ## A268269.P9377171042610282347

`A267856(A096304(n+1)%A268224(n+3))`
-/

namespace A268269.P9377171042610282347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267856 (Int.tmod (A096304 (n + 1)) (A268224 (n + 3))).toNat

end

end A268269.P9377171042610282347

/-!
# A268271: Primes p such that there is a Fibonacci-type sequence (mod p) that begins with (1,b) and encounters all quadratic residues of p in the first (p-1)/2 iterations (for some b).

The programs for A268271, there is no canonical definition to state claims against.
-/

/-! ## A268271.P15825467249417059937

`∪[A106535(n+1), A308787(n+1)]`
-/

namespace A268271.P15825467249417059937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268271.P15825467249417059937

/-! ## A268271.P5843096288710414908

`p?[A193587(n+1)-A184945(n)]`
-/

namespace A268271.P5843096288710414908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193587 (n + 1) - A184945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268271.P5843096288710414908

/-! ## A268271.P15635923568680568934

`p?[A193587(n+1)]^A251079(n)`
-/

namespace A268271.P15635923568680568934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193587 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A251079 n : ℤ)

end

end A268271.P15635923568680568934

/-! ## A268271.P6439957837697728834

`∩[A082634(n+1), A193587(n+1)]`
-/

namespace A268271.P6439957837697728834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268271.P6439957837697728834

/-! ## A268271.P9461894202930325510

`∩[A112082(n+1), A364867(n+1)]`
-/

namespace A268271.P9461894202930325510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268271.P9461894202930325510

/-!
# A268272: Negabinary evil numbers (see comment).

The programs for A268272, the canonical program `A268272.P11859881272063941346` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268272 has offset 0).

The definition of A268272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268272.P17390945384477270867

`eq[0, A269027(n)]`
-/

namespace A268272.P17390945384477270867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268272.P17390945384477270867

namespace A268272

/-- `eq[0, A269027(n)]` -/
def P17390945384477270867.Spec : Prop :=
  ∀ n, (P17390945384477270867.a n : ℤ) = A268272 n

end A268272

/-! ## A268272.P11859881272063941346

`eq[0, A027615(n)%2]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268272

/-- `eq[0, A027615(n)%2]` -/
def P11859881272063941346.Spec : Prop :=
  ∀ n, (P11859881272063941346.a n : ℤ) = A268272 n

theorem P11859881272063941346.correct : P11859881272063941346.Spec := by
  intro n
  simp only [A268272]

end A268272

/-! ## A268272.P2141594969249822701

`A269027(2*n)+2*n`
-/

namespace A268272.P2141594969249822701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (2 * n) + (2 * n : ℤ)

end

end A268272.P2141594969249822701

namespace A268272

/-- `A269027(2*n)+2*n` -/
def P2141594969249822701.Spec : Prop :=
  ∀ n, P2141594969249822701.a n = A268272 n

end A268272

/-! ## A268272.P15589272827891265481

`A338251(2*A338254(n))`
-/

namespace A268272.P15589272827891265481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 (2 * A338254 n).toNat

end

end A268272.P15589272827891265481

namespace A268272

/-- `A338251(2*A338254(n))` -/
def P15589272827891265481.Spec : Prop :=
  ∀ n, P15589272827891265481.a n = A268272 n

end A268272

/-! ## A268272.P15241026578525522714

`A338251(A338254(n)+A338254(n))`
-/

namespace A268272.P15241026578525522714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 (A338254 n + A338254 n).toNat

end

end A268272.P15241026578525522714

namespace A268272

/-- `A338251(A338254(n)+A338254(n))` -/
def P15241026578525522714.Spec : Prop :=
  ∀ n, P15241026578525522714.a n = A268272 n

end A268272

/-! ## A268272.P9328633275686897890

`eq[1, A001285(A005351(n))]`
-/

namespace A268272.P9328633275686897890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A005351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268272.P9328633275686897890

namespace A268272

/-- `eq[1, A001285(A005351(n))]` -/
def P9328633275686897890.Spec : Prop :=
  ∀ n, (P9328633275686897890.a n : ℤ) = A268272 n

end A268272

/-! ## A268272.P14271049817643259212

`lt[A338241(A338253(n)), 1]`
-/

namespace A268272.P14271049817643259212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 (A338253 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268272.P14271049817643259212

namespace A268272

/-- `lt[A338241(A338253(n)), 1]` -/
def P14271049817643259212.Spec : Prop :=
  ∀ n, (P14271049817643259212.a n : ℤ) = A268272 n

end A268272

/-! ## A268272.P4826442676936220759

`A010060(A005351(2*n))+2*n`
-/

namespace A268272.P4826442676936220759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005351 (2 * n)).toNat + (2 * n : ℤ)

end

end A268272.P4826442676936220759

namespace A268272

/-- `A010060(A005351(2*n))+2*n` -/
def P4826442676936220759.Spec : Prop :=
  ∀ n, P4826442676936220759.a n = A268272 n

end A268272

/-! ## A268272.P1710952304871003091

`A059448(A005351(2*n+1))+2*n`
-/

namespace A268272.P1710952304871003091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (A005351 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A268272.P1710952304871003091

namespace A268272

/-- `A059448(A005351(2*n+1))+2*n` -/
def P1710952304871003091.Spec : Prop :=
  ∀ n, P1710952304871003091.a n = A268272 n

end A268272

/-! ## A268272.P6149224460117677612

`xor(1, A268273(n+1))`
-/

namespace A268272.P6149224460117677612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A268273 (n + 1))

end

end A268272.P6149224460117677612

namespace A268272

/-- `xor(1, A268273(n+1))` -/
def P6149224460117677612.Spec : Prop :=
  ∀ n, P6149224460117677612.a n = A268272 n

end A268272

/-! ## A268272.P10569319927207885055

`A004442(A268273(n+1))`
-/

namespace A268272.P10569319927207885055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A268273 (n + 1)).toNat

end

end A268272.P10569319927207885055

namespace A268272

/-- `A004442(A268273(n+1))` -/
def P10569319927207885055.Spec : Prop :=
  ∀ n, P10569319927207885055.a n = A268272 n

end A268272

/-! ## A268272.P6854247314397357231

`A016813(n)-A268273(n+1)`
-/

namespace A268272.P6854247314397357231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A268273 (n + 1)

end

end A268272.P6854247314397357231

namespace A268272

/-- `A016813(n)-A268273(n+1)` -/
def P6854247314397357231.Spec : Prop :=
  ∀ n, P6854247314397357231.a n = A268272 n

end A268272

/-! ## A268272.P8786538454929291638

`A002943(n)/A268273(n+1)`
-/

namespace A268272.P8786538454929291638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A268273 (n + 1) : ℚ)

end

end A268272.P8786538454929291638

namespace A268272

/-- `A002943(n)/A268273(n+1)` -/
def P8786538454929291638.Spec : Prop :=
  ∀ n, P8786538454929291638.a n = (A268272 n : ℚ)

end A268272

/-! ## A268272.P18312674755659588672

`A065190(A268273(n+1)+2)-2`
-/

namespace A268272.P18312674755659588672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A268273 (n + 1) + 2).toNat - 2

end

end A268272.P18312674755659588672

namespace A268272

/-- `A065190(A268273(n+1)+2)-2` -/
def P18312674755659588672.Spec : Prop :=
  ∀ n, P18312674755659588672.a n = A268272 n

end A268272

/-! ## A268272.P1073786760366293559

`A005408(2*n)-A268273(n+1)`
-/

namespace A268272.P1073786760366293559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * n) - A268273 (n + 1)

end

end A268272.P1073786760366293559

namespace A268272

/-- `A005408(2*n)-A268273(n+1)` -/
def P1073786760366293559.Spec : Prop :=
  ∀ n, P1073786760366293559.a n = A268272 n

end A268272

/-! ## A268272.P11859505098452450048

`A000069(n+1)+A001969(n+1)-A268273(n+1)`
-/

namespace A268272.P11859505098452450048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A268273 (n + 1))

end

end A268272.P11859505098452450048

namespace A268272

/-- `A000069(n+1)+A001969(n+1)-A268273(n+1)` -/
def P11859505098452450048.Spec : Prop :=
  ∀ n, P11859505098452450048.a n = A268272 n

end A268272

/-! ## A268272.P1085421855141798405

`eq[1-A010060(n), A010060(A268273(2*n+1))]`
-/

namespace A268272.P1085421855141798405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A268273 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268272.P1085421855141798405

namespace A268272

/-- `eq[1-A010060(n), A010060(A268273(2*n+1))]` -/
def P1085421855141798405.Spec : Prop :=
  ∀ n, (P1085421855141798405.a n : ℤ) = A268272 n

end A268272

/-! ## A268272.P12754067790101290309

`eq[A010060(2*n+1), A010060(A268273(2*n+1))]`
-/

namespace A268272.P12754067790101290309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A268273 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268272.P12754067790101290309

namespace A268272

/-- `eq[A010060(2*n+1), A010060(A268273(2*n+1))]` -/
def P12754067790101290309.Spec : Prop :=
  ∀ n, (P12754067790101290309.a n : ℤ) = A268272 n

end A268272

/-!
# A268273: Negabinary odious numbers (see comment).

The programs for A268273, the canonical program `A268273.P3579278689426774091` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268273 has offset 1).

The definition of A268273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268273.P8730869267708394886

`comp[A268272(n)]`
-/

namespace A268273.P8730869267708394886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268273.P8730869267708394886

namespace A268273

/-- `comp[A268272(n)]` -/
def P8730869267708394886.Spec : Prop :=
  ∀ n, (P8730869267708394886.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P8914396817757005366

`lt[0, A269027(n)]`
-/

namespace A268273.P8914396817757005366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268273.P8914396817757005366

namespace A268273

/-- `lt[0, A269027(n)]` -/
def P8914396817757005366.Spec : Prop :=
  ∀ n, (P8914396817757005366.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P13671144668053417750

`comp[A317050(2*n)]`
-/

namespace A268273.P13671144668053417750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268273.P13671144668053417750

namespace A268273

/-- `comp[A317050(2*n)]` -/
def P13671144668053417750.Spec : Prop :=
  ∀ n, (P13671144668053417750.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P3579278689426774091

`eq[1, A027615(n)%2]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268273

/-- `eq[1, A027615(n)%2]` -/
def P3579278689426774091.Spec : Prop :=
  ∀ n, (P3579278689426774091.a n : ℤ) = A268273 (n + 1)

theorem P3579278689426774091.correct : P3579278689426774091.Spec := by
  intro n
  simp only [A268273, Nat.add_sub_cancel]

end A268273

/-! ## A268273.P7400368346691698237

`eq[1, and(1, A338253(n))]`
-/

namespace A268273.P7400368346691698237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A338253 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268273.P7400368346691698237

namespace A268273

/-- `eq[1, and(1, A338253(n))]` -/
def P7400368346691698237.Spec : Prop :=
  ∀ n, (P7400368346691698237.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P2681282238266278155

`filter[n+1, A269027(#)]`
-/

namespace A268273.P2681282238266278155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A269027 (f1 j) = 1) n)

end

end A268273.P2681282238266278155

namespace A268273

/-- `filter[n+1, A269027(#)]` -/
def P2681282238266278155.Spec : Prop :=
  ∀ n, (P2681282238266278155.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P15632935424221657233

`comp[A053985(xor(n, 2*n))]`
-/

namespace A268273.P15632935424221657233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (Nat.xor n (2 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A268273.P15632935424221657233

namespace A268273

/-- `comp[A053985(xor(n, 2*n))]` -/
def P15632935424221657233.Spec : Prop :=
  ∀ n, (P15632935424221657233.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P13355953515739976617

`Δ[n²]-A269027(2*n)`
-/

namespace A268273.P13355953515739976617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A269027 (2 * n)

end

end A268273.P13355953515739976617

namespace A268273

/-- `Δ[n²]-A269027(2*n)` -/
def P13355953515739976617.Spec : Prop :=
  ∀ n, P13355953515739976617.a n = A268273 (n + 1)

end A268273

/-! ## A268273.P17576763739354855439

`A269027(2*n+1)+2*n`
-/

namespace A268273.P17576763739354855439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (2 * n + 1) + (2 * n : ℤ)

end

end A268273.P17576763739354855439

namespace A268273

/-- `A269027(2*n+1)+2*n` -/
def P17576763739354855439.Spec : Prop :=
  ∀ n, P17576763739354855439.a n = A268273 (n + 1)

end A268273

/-! ## A268273.P9506787487278682219

`eq[3, xor(a(n-1), A098725(n))]` with `a(0)=2`
-/

namespace A268273.P9506787487278682219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  Int.xor (f2 (n - 1)) (A098725 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268273.P9506787487278682219

namespace A268273

/-- `eq[3, xor(a(n-1), A098725(n))]` -/
def P9506787487278682219.Spec : Prop :=
  ∀ n, (P9506787487278682219.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P13850795855922714956

`eq[2, A001285(A005351(n))]`
-/

namespace A268273.P13850795855922714956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A005351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268273.P13850795855922714956

namespace A268273

/-- `eq[2, A001285(A005351(n))]` -/
def P13850795855922714956.Spec : Prop :=
  ∀ n, (P13850795855922714956.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P16603617270189751736

`A016813(n)-A268272(n)`
-/

namespace A268273.P16603617270189751736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A268272 n

end

end A268273.P16603617270189751736

namespace A268273

/-- `A016813(n)-A268272(n)` -/
def P16603617270189751736.Spec : Prop :=
  ∀ n, P16603617270189751736.a n = A268273 (n + 1)

end A268273

/-! ## A268273.P9989320912725226523

`eq[A054977(n), A269027(n)]`
-/

namespace A268273.P9989320912725226523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268273.P9989320912725226523

namespace A268273

/-- `eq[A054977(n), A269027(n)]` -/
def P9989320912725226523.Spec : Prop :=
  ∀ n, (P9989320912725226523.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P4369536060477401218

`eq[A158388(n), A269027(n)]`
-/

namespace A268273.P4369536060477401218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268273.P4369536060477401218

namespace A268273

/-- `eq[A158388(n), A269027(n)]` -/
def P4369536060477401218.Spec : Prop :=
  ∀ n, (P4369536060477401218.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P799962671008683397

`eq[A269027(n), A329684(n)]`
-/

namespace A268273.P799962671008683397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268273.P799962671008683397

namespace A268273

/-- `eq[A269027(n), A329684(n)]` -/
def P799962671008683397.Spec : Prop :=
  ∀ n, (P799962671008683397.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P9321836798396339999

`A338251(2*A338254(n)+1)`
-/

namespace A268273.P9321836798396339999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 (2 * A338254 n + 1).toNat

end

end A268273.P9321836798396339999

namespace A268273

/-- `A338251(2*A338254(n)+1)` -/
def P9321836798396339999.Spec : Prop :=
  ∀ n, P9321836798396339999.a n = A268273 (n + 1)

end A268273

/-! ## A268273.P16988352430361141831

`lt[A338241(A338253(n)+1), 1]`
-/

namespace A268273.P16988352430361141831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 (A338253 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268273.P16988352430361141831

namespace A268273

/-- `lt[A338241(A338253(n)+1), 1]` -/
def P16988352430361141831.Spec : Prop :=
  ∀ n, (P16988352430361141831.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P18290653122592867396

`eq[A269027(n), A283149(n+1)]`
-/

namespace A268273.P18290653122592867396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A268273.P18290653122592867396

namespace A268273

/-- `eq[A269027(n), A283149(n+1)]` -/
def P18290653122592867396.Spec : Prop :=
  ∀ n, (P18290653122592867396.a n : ℤ) = A268273 (n + 1)

end A268273

/-! ## A268273.P6110536167318576798

`A010060(A005351(2*n+1))+2*n`
-/

namespace A268273.P6110536167318576798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A005351 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A268273.P6110536167318576798

namespace A268273

/-- `A010060(A005351(2*n+1))+2*n` -/
def P6110536167318576798.Spec : Prop :=
  ∀ n, P6110536167318576798.a n = A268273 (n + 1)

end A268273

/-! ## A268273.P17935887257360906270

`A338251(A338254(n)+A338254(n)+1)`
-/

namespace A268273.P17935887257360906270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 (A338254 n + (A338254 n + 1)).toNat

end

end A268273.P17935887257360906270

namespace A268273

/-- `A338251(A338254(n)+A338254(n)+1)` -/
def P17935887257360906270.Spec : Prop :=
  ∀ n, P17935887257360906270.a n = A268273 (n + 1)

end A268273

/-!
# A268274: Numbers n such that x^n * (x+1)^(n-1) + 1 is irreducible over GF(2).

The programs for A268274, there is no canonical definition to state claims against.
-/

/-! ## A268274.P2165880365275020942

`∑[gcd(A109492(3*(n+1)), A343242(n+1))]`
-/

namespace A268274.P2165880365275020942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109492 (3 * (n + 1))) (A343242 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268274.P2165880365275020942

/-! ## A268274.P10223665333907806291

`∑[and(Δ[n²], A145742(2*n+3))]`
-/

namespace A268274.P10223665333907806291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (A145742 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268274.P10223665333907806291

/-! ## A268274.P9165418552943782650

`∑[A087246(A133233(2^n-1))]`
-/

namespace A268274.P9165418552943782650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (A133233 (2 ^ n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268274.P9165418552943782650

/-! ## A268274.P4024557509469378079

`∩[A169693(n+1), A280578(n+1)]`
-/

namespace A268274.P4024557509469378079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268274.P4024557509469378079

/-!
# A268275: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A268275, there is no canonical definition to state claims against.
-/

/-! ## A268275.P3659362552646114172

`∑[A268195(n)]`
-/

namespace A268275.P3659362552646114172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268275.P3659362552646114172

/-! ## A268275.P1625232710869203975

`a(n-1)+A268195(n)%A022270(n)` with `a(0)=1`
-/

namespace A268275.P1625232710869203975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A268195 n) (A022270 n)

end

end A268275.P1625232710869203975

/-! ## A268275.P4741401094681089337

`A268195(n)+a(n-1)%A156592(n)` with `a(0)=1`
-/

namespace A268275.P4741401094681089337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268195 n + Int.tmod (a (n - 1)) (A156592 n)

end

end A268275.P4741401094681089337

/-! ## A268275.P3487867393903957620

`a(n-1)+A268195(n)^(1-A000007(n))` with `a(0)=1`
-/

namespace A268275.P3487867393903957620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A268195 n : ℚ) ^ (1 - A000007 n : ℤ)

end

end A268275.P3487867393903957620

/-! ## A268275.P1927472233480044839

`A268195(n%A043317(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A268275.P1927472233480044839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268195 (Int.tmod (n : ℤ) (A043317 (n + 1))).toNat + a (n - 1)

end

end A268275.P1927472233480044839

/-! ## A268275.P12110131528700241509

`∑[∑[A268276(n)]+1-A268276(n)]`
-/

namespace A268275.P12110131528700241509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A268276 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268275.P12110131528700241509

/-! ## A268275.P7285684663927292622

`∑[(2*n+3)²-A272842(n+1)]`
-/

namespace A268275.P7285684663927292622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268275.P7285684663927292622

/-! ## A268275.P10508682414870966547

`a(n-1)-A008683(A031927(n))*A268195(n)` with `a(0)=1`
-/

namespace A268275.P10508682414870966547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A008683 (A031927 n).toNat * A268195 n

end

end A268275.P10508682414870966547

/-!
# A268276: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 366", based on the 5-celled von Neumann neighborhood.

The programs for A268276, there is no canonical definition to state claims against.
-/

/-! ## A268276.P13878938908808317497

`Δ[A268195(n)]`
-/

namespace A268276.P13878938908808317497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268276.P13878938908808317497

/-! ## A268276.P16292602070666785255

`A268195(n+1)-A268195(n)`
-/

namespace A268276.P16292602070666785255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268195 (n + 1) - A268195 n

end

end A268276.P16292602070666785255

/-! ## A268276.P5147479444662353242

`8*(n+2)-A272845(n+1)`
-/

namespace A268276.P5147479444662353242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (n + 2) : ℤ) - A272845 (n + 1)

end

end A268276.P5147479444662353242

/-! ## A268276.P11441941804918646653

`A004771(n+1)+1-A272845(n+1)`
-/

namespace A268276.P11441941804918646653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (n + 1) + (1 - A272845 (n + 1))

end

end A268276.P11441941804918646653

/-! ## A268276.P529812596911705108

`Δ[a(n-1)+A022144(n+1)-A272845(n)]` with `a(0)=7`
-/

namespace A268276.P529812596911705108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + (A022144 (n + 1) - A272845 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268276.P529812596911705108

/-! ## A268276.P10753688390975443116

`Δ[(2*n+3)²-A272842(n+1)]`
-/

namespace A268276.P10753688390975443116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - A272842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268276.P10753688390975443116

/-! ## A268276.P7302179009794434377

`Δ[or(2, A016754(n+1)-A272842(n+1))]`
-/

namespace A268276.P7302179009794434377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A016754 (n + 1) - A272842 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268276.P7302179009794434377

/-! ## A268276.P2048867400158565670

`Δ[or(2, A005408(n+1)²-A272842(n+1))]`
-/

namespace A268276.P2048867400158565670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A005408 (n + 1) ^ 2 - A272842 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268276.P2048867400158565670

/-!
# A268277: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A268277, there is no canonical definition to state claims against.
-/

/-! ## A268277.P10365270462834384986

`A270793(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A268277.P10365270462834384986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270793 (n - 1) + a (n - 1)

end

end A268277.P10365270462834384986

/-! ## A268277.P4235354397585907389

`∑[A270793(abs(A023443(n)))]-4`
-/

namespace A268277.P4235354397585907389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270793 |A023443 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A268277.P4235354397585907389

/-! ## A268277.P10446485375703181812

`Δ[A268503(n)]-A270793(n)`
-/

namespace A268277.P10446485375703181812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270793 n

end

end A268277.P10446485375703181812

/-! ## A268277.P8251552916620068515

`A268503(n+1)-(A270793(n)+A268503(n))`
-/

namespace A268277.P8251552916620068515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268503 (n + 1) - (A270793 n + A268503 n)

end

end A268277.P8251552916620068515

/-! ## A268277.P2391357431850081117

`or(3, 2*n)²-A272273(n+1)`
-/

namespace A268277.P2391357431850081117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (2 * n) ^ 2 : ℤ) - A272273 (n + 1)

end

end A268277.P2391357431850081117

/-!
# A268279: Primes p such that both p and p^2 contain "123" as a substring.

The programs for A268279, there is no canonical definition to state claims against.
-/

/-! ## A268279.P4005037419252484600

`p?[A268278(n+1)]`
-/

namespace A268279.P4005037419252484600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268279.P4005037419252484600

/-! ## A268279.P11016150098812879097

`record[p?[A268278(A007306(n))]]`
-/

namespace A268279.P11016150098812879097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268278 (A007306 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268279.P11016150098812879097

/-!
# A268282: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 369", based on the 5-celled von Neumann neighborhood.

The programs for A268282, there is no canonical definition to state claims against.
-/

/-! ## A268282.P16464983714064027197

`A268277(2^n-1)`
-/

namespace A268282.P16464983714064027197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268277 (2 ^ n - 1)

end

end A268282.P16464983714064027197

/-! ## A268282.P5602909108198495795

`record[A268277(Δ[A228693(n)])]`
-/

namespace A268282.P5602909108198495795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268277 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268282.P5602909108198495795

/-! ## A268282.P2279583664862414482

`record[A268277(A302029(n+1))]`
-/

namespace A268282.P2279583664862414482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268277 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268282.P2279583664862414482

/-! ## A268282.P16352286006242559731

`record[A268277(A323243(n+1))]`
-/

namespace A268282.P16352286006242559731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268277 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268282.P16352286006242559731

/-! ## A268282.P7270498854231718728

`record[A268277(A324865(n+1))]`
-/

namespace A268282.P7270498854231718728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268277 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268282.P7270498854231718728

/-!
# A268283: Number of distinct directed Hamiltonian cycles of the Platonic graphs (in the order of tetrahedral, cubical, octahedral, dodecahedral, and icosahedral graph).

The programs for A268283, there is no canonical definition to state claims against.
-/

/-! ## A268283.P15967339851261858712

`(A038580(n+1)+1)*A144443(n+1)`
-/

namespace A268283.P15967339851261858712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038580 (n + 1) + 1) * A144443 (n + 1)

end

end A268283.P15967339851261858712

/-!
# A268285: a(n) = prime(Bell(n)).

The programs for A268285, there is no canonical definition to state claims against.
-/

/-! ## A268285.P5174812396834613823

`A000040(A011972(∑[n]))`
-/

namespace A268285.P5174812396834613823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A011972 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268285.P5174812396834613823

/-! ## A268285.P17632917279750894514

`A000040(A036073(∑[n]))`
-/

namespace A268285.P17632917279750894514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036073 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268285.P17632917279750894514

/-! ## A268285.P1662583533417958655

`A000040(A095674(∑[n]))`
-/

namespace A268285.P1662583533417958655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A095674 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268285.P1662583533417958655

/-! ## A268285.P7790239754131267040

`A000040(A123346(∑[n]))`
-/

namespace A268285.P7790239754131267040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A123346 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A268285.P7790239754131267040

/-!
# A268286: a(n) = Bell(prime(n)).

The programs for A268286, there is no canonical definition to state claims against.
-/

/-! ## A268286.P14072885498411068642

`A000110(p?[comp[n²]])`
-/

namespace A268286.P14072885498411068642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A268286.P14072885498411068642

/-! ## A268286.P12548672438889407711

`A000110(A000040(n+1))`
-/

namespace A268286.P12548672438889407711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A000040 (n + 1)).toNat

end

end A268286.P12548672438889407711

/-! ## A268286.P9946764502812476476

`A011972(A008837(n+1))`
-/

namespace A268286.P9946764502812476476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A008837 (n + 1)).toNat

end

end A268286.P9946764502812476476

/-! ## A268286.P2447970364592525547

`A011971(A034953(n+1))`
-/

namespace A268286.P2447970364592525547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A034953 (n + 1)).toNat

end

end A268286.P2447970364592525547

/-! ## A268286.P3633275923535329304

`A188164(A100484(n+1))`
-/

namespace A268286.P3633275923535329304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (A100484 (n + 1)).toNat

end

end A268286.P3633275923535329304

/-!
# A268287: a(n) shows how many times the sum of the hours and minutes is prime in an n-hour period starting from midnight.

The programs for A268287, there is no canonical definition to state claims against.
-/

/-! ## A268287.P15292112927577396143

`round(12*log(A319646(3*n)))`
-/

namespace A268287.P15292112927577396143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (12 * Real.log (A319646 (3 * n) : ℝ))

end

end A268287.P15292112927577396143

/-! ## A268287.P5905012650232419026

`A140206(11*n)+A000035(n)`
-/

namespace A268287.P5905012650232419026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140206 (11 * n) + A000035 n

end

end A268287.P5905012650232419026

/-! ## A268287.P7208146317728940045

`A285515(n+1)+A140206(11*n)`
-/

namespace A268287.P7208146317728940045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285515 (n + 1) + A140206 (11 * n)

end

end A268287.P7208146317728940045

/-!
# A268288: a(n) begins the first chain of 9 consecutive positive integers of h-values with symmetrical gaps about the center, where h(k) is the length of the finite sequence k, f(k), f(f(k)), ...., 1 in the Collatz (or 3x + 1) problem.

The programs for A268288, there is no canonical definition to state claims against.
-/

/-! ## A268288.P11640452939665290544

`∩[A268253(n+1)-4, A268253(n+1)]`
-/

namespace A268288.P11640452939665290544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268253 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268288.P11640452939665290544

/-! ## A268288.P557973310872612898

`∩[A268268(n+1)-2, A268268(n+1)]`
-/

namespace A268288.P557973310872612898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268268 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268288.P557973310872612898

/-! ## A268288.P11421197542370856877

`∩[A268268(n+1), A289207(A268268(n+1))]`
-/

namespace A268288.P11421197542370856877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A268268 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268288.P11421197542370856877

/-!
# A268289: a(0)=0; thereafter a(n) = a(n-1) - A037861(n).

The programs for A268289, the canonical program `A268289.P17910930367041413554` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268289 has offset 0).

The definition of A268289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268289.P3516130251696186060

`n-A296062(n)`
-/

namespace A268289.P3516130251696186060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A296062 n

end

end A268289.P3516130251696186060

namespace A268289

/-- `n-A296062(n)` -/
def P3516130251696186060.Spec : Prop :=
  ∀ n, P3516130251696186060.a n = A268289 n

end A268289

/-! ## A268289.P17910930367041413554

`a(n-1)-A037861(n)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268289

/-- `a(n-1)-A037861(n)` -/
def P17910930367041413554.Spec : Prop :=
  ∀ n, P17910930367041413554.a n = A268289 n

theorem P17910930367041413554.correct : P17910930367041413554.Spec := by
  intro n
  simp only [A268289]

end A268289

/-! ## A268289.P5606217185204313165

`A000788(n)-A181132(n)`
-/

namespace A268289.P5606217185204313165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - A181132 n

end

end A268289.P5606217185204313165

namespace A268289

/-- `A000788(n)-A181132(n)` -/
def P5606217185204313165.Spec : Prop :=
  ∀ n, P5606217185204313165.a n = A268289 n

end A268289

/-! ## A268289.P1009003632661584926

`a(n-1)+A000120(n)-A023416(n)` with `a(0)=0`
-/

namespace A268289.P1009003632661584926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000120 n - A023416 n

end

end A268289.P1009003632661584926

namespace A268289

/-- `a(n-1)+A000120(n)-A023416(n)` -/
def P1009003632661584926.Spec : Prop :=
  ∀ n, P1009003632661584926.a n = A268289 n

end A268289

/-! ## A268289.P17458832701572854300

`∑[a(floor(n/2))-(-1)^n]` with `a(0)=0`
-/

namespace A268289.P17458832701572854300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P17458832701572854300

namespace A268289

/-- `∑[a(floor(n/2))-(-1)^n]` -/
def P17458832701572854300.Spec : Prop :=
  ∀ n, P17458832701572854300.a n = A268289 n

end A268289

/-! ## A268289.P7023414520121835332

`∑[a(floor(n/2))+a(n%2)]+1` with `a(0)=-1, a(1)=1, a(2)=0`
-/

namespace A268289.P7023414520121835332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + f1 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A268289.P7023414520121835332

namespace A268289

/-- `∑[a(floor(n/2))+a(n%2)]+1` -/
def P7023414520121835332.Spec : Prop :=
  ∀ n, P7023414520121835332.a n = A268289 n

end A268289

/-! ## A268289.P2175294868785206430

`∑[A145037(n)]`
-/

namespace A268289.P2175294868785206430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P2175294868785206430

namespace A268289

/-- `∑[A145037(n)]` -/
def P2175294868785206430.Spec : Prop :=
  ∀ n, P2175294868785206430.a n = A268289 n

end A268289

/-! ## A268289.P9919182227690860243

`A301336(n)+1`
-/

namespace A268289.P9919182227690860243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n + 1

end

end A268289.P9919182227690860243

namespace A268289

/-- `A301336(n)+1` -/
def P9919182227690860243.Spec : Prop :=
  ∀ n, P9919182227690860243.a n = A268289 n

end A268289

/-! ## A268289.P4644829985058615509

`∑[∑[A269735(n)]]`
-/

namespace A268289.P4644829985058615509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269735 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P4644829985058615509

namespace A268289

/-- `∑[∑[A269735(n)]]` -/
def P4644829985058615509.Spec : Prop :=
  ∀ n, P4644829985058615509.a n = A268289 n

end A268289

/-! ## A268289.P6378358769993713189

`1-∑[A037861(n)]`
-/

namespace A268289.P6378358769993713189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P6378358769993713189

namespace A268289

/-- `1-∑[A037861(n)]` -/
def P6378358769993713189.Spec : Prop :=
  ∀ n, P6378358769993713189.a n = A268289 n

end A268289

/-! ## A268289.P1502617894195260204

`∑[A124754(A003188(n))]`
-/

namespace A268289.P1502617894195260204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (A003188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P1502617894195260204

namespace A268289

/-- `∑[A124754(A003188(n))]` -/
def P1502617894195260204.Spec : Prop :=
  ∀ n, P1502617894195260204.a n = A268289 n

end A268289

/-! ## A268289.P12887585161658897789

`∑[A000120(n)-A080791(n)]`
-/

namespace A268289.P12887585161658897789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P12887585161658897789

namespace A268289

/-- `∑[A000120(n)-A080791(n)]` -/
def P12887585161658897789.Spec : Prop :=
  ∀ n, P12887585161658897789.a n = A268289 n

end A268289

/-! ## A268289.P16175938350372305952

`A000788(n)+1-A059015(n)`
-/

namespace A268289.P16175938350372305952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n + (1 - A059015 n)

end

end A268289.P16175938350372305952

namespace A268289

/-- `A000788(n)+1-A059015(n)` -/
def P16175938350372305952.Spec : Prop :=
  ∀ n, P16175938350372305952.a n = A268289 n

end A268289

/-! ## A268289.P1935541927314335820

`n-A023443(n-A301336(n))`
-/

namespace A268289.P1935541927314335820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 ((n : ℤ) - A301336 n).toNat

end

end A268289.P1935541927314335820

namespace A268289

/-- `n-A023443(n-A301336(n))` -/
def P1935541927314335820.Spec : Prop :=
  ∀ n, P1935541927314335820.a n = A268289 n

end A268289

/-! ## A268289.P11581570626451315480

`∑[log2(A001316(n))-A080791(n)]`
-/

namespace A268289.P11581570626451315480
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A080791 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P11581570626451315480

namespace A268289

/-- `∑[log2(A001316(n))-A080791(n)]` -/
def P11581570626451315480.Spec : Prop :=
  ∀ n, P11581570626451315480.a n = (A268289 n : ℝ)

end A268289

/-! ## A268289.P6383721752135016010

`∑[A000120(n)-∑[A089263(n)]]`
-/

namespace A268289.P6383721752135016010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P6383721752135016010

namespace A268289

/-- `∑[A000120(n)-∑[A089263(n)]]` -/
def P6383721752135016010.Spec : Prop :=
  ∀ n, P6383721752135016010.a n = A268289 n

end A268289

/-! ## A268289.P8841692407439046072

`∑[∑[A088705(n)-A089263(n)]]`
-/

namespace A268289.P8841692407439046072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n - A089263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268289.P8841692407439046072

namespace A268289

/-- `∑[∑[A088705(n)-A089263(n)]]` -/
def P8841692407439046072.Spec : Prop :=
  ∀ n, P8841692407439046072.a n = A268289 n

end A268289

/-! ## A268289.P70243329873150755

`∑[A000120(n)-A023416(n)]+1`
-/

namespace A268289.P70243329873150755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A268289.P70243329873150755

namespace A268289

/-- `∑[A000120(n)-A023416(n)]+1` -/
def P70243329873150755.Spec : Prop :=
  ∀ n, P70243329873150755.a n = A268289 n

end A268289

/-! ## A268289.P597056124614484858

`A000788(n)+1-∑[A023416(n)]`
-/

namespace A268289.P597056124614484858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268289.P597056124614484858

namespace A268289

/-- `A000788(n)+1-∑[A023416(n)]` -/
def P597056124614484858.Spec : Prop :=
  ∀ n, P597056124614484858.a n = A268289 n

end A268289

/-! ## A268289.P7651617805003441344

`∑[A000120(n)]+1-A059015(n)`
-/

namespace A268289.P7651617805003441344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A059015 n)

end

end A268289.P7651617805003441344

namespace A268289

/-- `∑[A000120(n)]+1-A059015(n)` -/
def P7651617805003441344.Spec : Prop :=
  ∀ n, P7651617805003441344.a n = A268289 n

end A268289

/-!
# A268291: a(n) = Sum_{k = 0..n} (k mod 13).

The programs for A268291, the canonical program `A268291.P14007717218343490931` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268291 has offset 0).

The definition of A268291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268291.P14007717218343490931

`∑[n%13]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A268291

/-- `∑[n%13]` -/
def P14007717218343490931.Spec : Prop :=
  ∀ n, (P14007717218343490931.a n : ℤ) = A268291 n

theorem P14007717218343490931.correct : P14007717218343490931.Spec := by
  intro n
  simp only [A268291]

end A268291

/-! ## A268291.P12463813192615004701

`a(n-1)+(n+13)%13` with `a(0)=0`
-/

namespace A268291.P12463813192615004701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 13) % 13

end

end A268291.P12463813192615004701

namespace A268291

/-- `a(n-1)+(n+13)%13` -/
def P12463813192615004701.Spec : Prop :=
  ∀ n, (P12463813192615004701.a n : ℤ) = A268291 n

end A268291

/-! ## A268291.P16904850204758078662

`∑[C(a(n-1)+1, A049872(a(n-1)))]` with `a(0)=0`
-/

namespace A268291.P16904850204758078662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose (f1 (n - 1) + 1) (A049872 (f1 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268291.P16904850204758078662

namespace A268291

/-- `∑[C(a(n-1)+1, A049872(a(n-1)))]` -/
def P16904850204758078662.Spec : Prop :=
  ∀ n, (P16904850204758078662.a n : ℤ) = A268291 n

end A268291

/-! ## A268291.P12222909758848014912

`∑[C(a(n-1)+1, A004917(a(n-1)+1))]` with `a(0)=0`
-/

namespace A268291.P12222909758848014912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose (f1 (n - 1) + 1) (A004917 (f1 (n - 1) + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268291.P12222909758848014912

namespace A268291

/-- `∑[C(a(n-1)+1, A004917(a(n-1)+1))]` -/
def P12222909758848014912.Spec : Prop :=
  ∀ n, (P12222909758848014912.a n : ℤ) = A268291 n

end A268291

/-! ## A268291.P11989211121987091167

`∑[A320467(2*n+1)-1]`
-/

namespace A268291.P11989211121987091167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320467 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268291.P11989211121987091167

namespace A268291

/-- `∑[A320467(2*n+1)-1]` -/
def P11989211121987091167.Spec : Prop :=
  ∀ n, P11989211121987091167.a n = A268291 n

end A268291

/-!
# A268292: a(n) is the total number of isolated 1's at the boundary between n-th and (n-1)-th iterations in the pattern of A267489.

The programs for A268292, the canonical program `A268292.P1495533315852207226` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268292 has offset 0).

The definition of A268292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268292.P1495533315852207226

`∑[∑[char[2*(2*or(1, n)+2)-n]]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A268292

/-- `∑[∑[char[2*(2*or(1, n)+2)-n]]]` -/
def P1495533315852207226.Spec : Prop :=
  ∀ n, (P1495533315852207226.a n : ℤ) = A268292 n

theorem P1495533315852207226.correct : P1495533315852207226.Spec := by
  intro n
  simp only [A268292]

end A268292

/-! ## A268292.P659848125838539142

`∑[∑[char[A047239(n+3)]]]`
-/

namespace A268292.P659848125838539142
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268292.P659848125838539142

namespace A268292

/-- `∑[∑[char[A047239(n+3)]]]` -/
def P659848125838539142.Spec : Prop :=
  ∀ n, (P659848125838539142.a n : ℤ) = A268292 n

end A268292

/-! ## A268292.P58577289731536739

`∑[comp[A047522(n+2)]-n]`
-/

namespace A268292.P58577289731536739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268292.P58577289731536739

namespace A268292

/-- `∑[comp[A047522(n+2)]-n]` -/
def P58577289731536739.Spec : Prop :=
  ∀ n, P58577289731536739.a n = A268292 n

end A268292

/-! ## A268292.P15144373204143964113

`∑[comp[A074231(2*n+3)]-n]`
-/

namespace A268292.P15144373204143964113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074231 (2 * n + 3)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268292.P15144373204143964113

namespace A268292

/-- `∑[comp[A074231(2*n+3)]-n]` -/
def P15144373204143964113.Spec : Prop :=
  ∀ n, P15144373204143964113.a n = A268292 n

end A268292

/-! ## A268292.P7972759623374989580

`A221912(abs(2*(1-n)))`
-/

namespace A268292.P7972759623374989580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221912 |2 * (1 - (n : ℤ))|.toNat

end

end A268292.P7972759623374989580

namespace A268292

/-- `A221912(abs(2*(1-n)))` -/
def P7972759623374989580.Spec : Prop :=
  ∀ n, P7972759623374989580.a n = A268292 n

end A268292

/-! ## A268292.P2093291895934761311

`and(-1, A221912(abs(2-n)+n))`
-/

namespace A268292.P2093291895934761311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221912 (|2 - (n : ℤ)| + (n : ℤ)).toNat)

end

end A268292.P2093291895934761311

namespace A268292

/-- `and(-1, A221912(abs(2-n)+n))` -/
def P2093291895934761311.Spec : Prop :=
  ∀ n, P2093291895934761311.a n = A268292 n

end A268292

/-! ## A268292.P14891102639122876774

`∑[∑[val(A246082(2*n+3), 2)]]`
-/

namespace A268292.P14891102639122876774
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A246082 (2 * n + 3)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268292.P14891102639122876774

namespace A268292

/-- `∑[∑[val(A246082(2*n+3), 2)]]` -/
def P14891102639122876774.Spec : Prop :=
  ∀ n, (P14891102639122876774.a n : ℤ) = A268292 n

end A268292

/-!
# A268293: a(n) = A266489(n)/n, for n>=1.

The programs for A268293, there is no canonical definition to state claims against.
-/

/-! ## A268293.P14926042974722963516

`A266489(n+1)/(n+1)`
-/

namespace A268293.P14926042974722963516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266489 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A268293.P14926042974722963516

/-! ## A268293.P11289535947556362934

`A193421(n)-A065339(A006602(n))`
-/

namespace A268293.P11289535947556362934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193421 n - A065339 (A006602 n).toNat

end

end A268293.P11289535947556362934

/-!
# A268294: E.g.f. satisfies: A(x) = Sum_{n>=1} [Integral exp(n*A(x)) dx]^n/n.

The programs for A268294, there is no canonical definition to state claims against.
-/

/-! ## A268294.P13593712570885389280

`∑[A249117(A099708(n))]`
-/

namespace A268294.P13593712570885389280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249117 (A099708 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268294.P13593712570885389280

/-!
# A268295: Terms at square positions in Pascal's triangle when in flattened form.

The programs for A268295, the canonical program `A268295.P2894376950606773316` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268295 has offset 0).

The definition of A268295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268295.P13572981329260781935

`A028326(n²)/2`
-/

namespace A268295.P13572981329260781935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (n ^ 2) : ℚ) / 2

end

end A268295.P13572981329260781935

namespace A268295

/-- `A028326(n²)/2` -/
def P13572981329260781935.Spec : Prop :=
  ∀ n, P13572981329260781935.a n = (A268295 n : ℚ)

end A268295

/-! ## A268295.P2894376950606773316

`ceil(A109128(n²)/2)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A268295

/-- `ceil(A109128(n²)/2)` -/
def P2894376950606773316.Spec : Prop :=
  ∀ n, P2894376950606773316.a n = A268295 n

theorem P2894376950606773316.correct : P2894376950606773316.Spec := by
  intro n
  simp only [A268295]

end A268295

/-! ## A268295.P9998741910339998720

`ceil(A124927(n²)/2)`
-/

namespace A268295.P9998741910339998720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124927 (n ^ 2) : ℚ) / 2⌉

end

end A268295.P9998741910339998720

namespace A268295

/-- `ceil(A124927(n²)/2)` -/
def P9998741910339998720.Spec : Prop :=
  ∀ n, P9998741910339998720.a n = A268295 n

end A268295

/-! ## A268295.P3086339688362931143

`A007318(n²)`
-/

namespace A268295.P3086339688362931143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n ^ 2)

end

end A268295.P3086339688362931143

namespace A268295

/-- `A007318(n²)` -/
def P3086339688362931143.Spec : Prop :=
  ∀ n, P3086339688362931143.a n = A268295 n

end A268295

/-! ## A268295.P14494980456651941517

`abs(A007318(∑[comp[2*(n+1)]])-1)+1`
-/

namespace A268295.P14494980456651941517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - 1| + 1

end

end A268295.P14494980456651941517

namespace A268295

/-- `abs(A007318(∑[comp[2*(n+1)]])-1)+1` -/
def P14494980456651941517.Spec : Prop :=
  ∀ n, P14494980456651941517.a n = A268295 n

end A268295

/-! ## A268295.P10515171797109605551

`gcd(n, 2*n+1)*A007318(∑[2*n]-n)`
-/

namespace A268295.P10515171797109605551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (2 * n + 1) : ℤ) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A268295.P10515171797109605551

namespace A268295

/-- `gcd(n, 2*n+1)*A007318(∑[2*n]-n)` -/
def P10515171797109605551.Spec : Prop :=
  ∀ n, P10515171797109605551.a n = A268295 n

end A268295

/-! ## A268295.P14052599464194567267

`A007318(∑[2*n+1]-(2*n+1))+C(2, n+3)`
-/

namespace A268295.P14052599464194567267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1)) + (Nat.choose 2 (n + 3) : ℤ)

end

end A268295.P14052599464194567267

namespace A268295

/-- `A007318(∑[2*n+1]-(2*n+1))+C(2, n+3)` -/
def P14052599464194567267.Spec : Prop :=
  ∀ n, P14052599464194567267.a n = A268295 n

end A268295

/-! ## A268295.P7731119000012425141

`A074909(A083920(n²))`
-/

namespace A268295.P7731119000012425141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A083920 (n ^ 2)).toNat

end

end A268295.P7731119000012425141

namespace A268295

/-- `A074909(A083920(n²))` -/
def P7731119000012425141.Spec : Prop :=
  ∀ n, P7731119000012425141.a n = A268295 n

end A268295

/-! ## A268295.P15991467294356163941

`A074909(A271439(n²))`
-/

namespace A268295.P15991467294356163941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A271439 (n ^ 2)).toNat

end

end A268295.P15991467294356163941

namespace A268295

/-- `A074909(A271439(n²))` -/
def P15991467294356163941.Spec : Prop :=
  ∀ n, P15991467294356163941.a n = A268295 n

end A268295

/-! ## A268295.P11071162258035689762

`A007318(A000290(n))%A291382(n)`
-/

namespace A268295.P11071162258035689762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A000290 n).toNat) (A291382 n)

end

end A268295.P11071162258035689762

namespace A268295

/-- `A007318(A000290(n))%A291382(n)` -/
def P11071162258035689762.Spec : Prop :=
  ∀ n, P11071162258035689762.a n = A268295 n

end A268295

/-! ## A268295.P10377616940055409095

`A007318(∑[n])*A007318(A000290(n))`
-/

namespace A268295.P10377616940055409095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A007318 (A000290 n).toNat

end

end A268295.P10377616940055409095

namespace A268295

/-- `A007318(∑[n])*A007318(A000290(n))` -/
def P10377616940055409095.Spec : Prop :=
  ∀ n, P10377616940055409095.a n = A268295 n

end A268295

/-! ## A268295.P13463724723977976782

`lcm(A007318(A000290(n)), A008836(n+1))`
-/

namespace A268295.P13463724723977976782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 (A000290 n).toNat) (A008836 (n + 1))

end

end A268295.P13463724723977976782

namespace A268295

/-- `lcm(A007318(A000290(n)), A008836(n+1))` -/
def P13463724723977976782.Spec : Prop :=
  ∀ n, (P13463724723977976782.a n : ℤ) = A268295 n

end A268295

/-! ## A268295.P17367354746667127343

`or(A007318(A000290(n)), A019590(n+1))`
-/

namespace A268295.P17367354746667127343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A000290 n).toNat) (A019590 (n + 1))

end

end A268295.P17367354746667127343

namespace A268295

/-- `or(A007318(A000290(n)), A019590(n+1))` -/
def P17367354746667127343.Spec : Prop :=
  ∀ n, P17367354746667127343.a n = A268295 n

end A268295

/-! ## A268295.P5084644331103150842

`or(A007318(A000290(n)), A154281(n+1))`
-/

namespace A268295.P5084644331103150842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (A000290 n).toNat) (A154281 (n + 1))

end

end A268295.P5084644331103150842

namespace A268295

/-- `or(A007318(A000290(n)), A154281(n+1))` -/
def P5084644331103150842.Spec : Prop :=
  ∀ n, P5084644331103150842.a n = A268295 n

end A268295

/-! ## A268295.P5746628456421077193

`A007318(A000290(n))^A276317(A276328(n+1))`
-/

namespace A268295.P5746628456421077193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (A000290 n).toNat : ℚ) ^ (A276317 (A276328 (n + 1)).toNat : ℤ)

end

end A268295.P5746628456421077193

namespace A268295

/-- `A007318(A000290(n))^A276317(A276328(n+1))` -/
def P5746628456421077193.Spec : Prop :=
  ∀ n, P5746628456421077193.a n = (A268295 n : ℚ)

end A268295

/-! ## A268295.P8613502090578448614

`abs(A108086(n²))`
-/

namespace A268295.P8613502090578448614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 (n ^ 2)|

end

end A268295.P8613502090578448614

namespace A268295

/-- `abs(A108086(n²))` -/
def P8613502090578448614.Spec : Prop :=
  ∀ n, P8613502090578448614.a n = A268295 n

end A268295

/-! ## A268295.P17473395283708537409

`abs(A117440(n²))`
-/

namespace A268295.P17473395283708537409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 (n ^ 2)|

end

end A268295.P17473395283708537409

namespace A268295

/-- `abs(A117440(n²))` -/
def P17473395283708537409.Spec : Prop :=
  ∀ n, P17473395283708537409.a n = A268295 n

end A268295

/-! ## A268295.P3464190785490022272

`abs(A130595(n²))`
-/

namespace A268295.P3464190785490022272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 (n ^ 2)|

end

end A268295.P3464190785490022272

namespace A268295

/-- `abs(A130595(n²))` -/
def P3464190785490022272.Spec : Prop :=
  ∀ n, P3464190785490022272.a n = A268295 n

end A268295

/-! ## A268295.P10343884955770190814

`sqrt(A008459(n²))`
-/

namespace A268295.P10343884955770190814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 (n ^ 2) : ℝ)

end

end A268295.P10343884955770190814

namespace A268295

/-- `sqrt(A008459(n²))` -/
def P10343884955770190814.Spec : Prop :=
  ∀ n, P10343884955770190814.a n = (A268295 n : ℝ)

end A268295

/-! ## A268295.P5968566082663122974

`A014473(n²)+1`
-/

namespace A268295.P5968566082663122974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 (n ^ 2) + 1

end

end A268295.P5968566082663122974

namespace A268295

/-- `A014473(n²)+1` -/
def P5968566082663122974.Spec : Prop :=
  ∀ n, P5968566082663122974.a n = A268295 n

end A268295

/-!
# A268297: G.f. satisfies: A(x) = Sum_{n>=1} (1 + x^n)/x^n * A(x)^(2*n), where A(0)=0 and A'(0)=1.

The programs for A268297, there is no canonical definition to state claims against.
-/

/-! ## A268297.P10421221682263212081

`A102824(A007719(n))/(-1)^n`
-/

namespace A268297.P10421221682263212081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102824 (A007719 n).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A268297.P10421221682263212081

