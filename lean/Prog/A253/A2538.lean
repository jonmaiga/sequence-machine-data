import SequenceMachineLib
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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A253800: Number of (n+2) X (7+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum plus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253800, there is no canonical definition to state claims against.
-/

/-! ## A253800.P3049737201405375902

`A253801(A374008(n+1))`
-/

namespace A253800.P3049737201405375902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A374008 (n + 1)).toNat

end

end A253800.P3049737201405375902

/-! ## A253800.P8098241350678862780

`A253801(eq[6, A193592(n)])`
-/

namespace A253800.P8098241350678862780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253800.P8098241350678862780

/-! ## A253800.P2576497869857182788

`A253801(A000096(n+6)-5)`
-/

namespace A253800.P2576497869857182788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (A000096 (n + 6) - 5).toNat

end

end A253800.P2576497869857182788

/-! ## A253800.P10669778536269388487

`A253801(eq[2, A219347(n)-2])`
-/

namespace A253800.P10669778536269388487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253800.P10669778536269388487

/-!
# A253802: a(n) gives the odd leg of one of the two Pythagorean triangles with hypotenuse A080109(n) = A002144(n)^2. This is the smaller of the two possible odd legs.

The programs for A253802, there is no canonical definition to state claims against.
-/

/-! ## A253802.P11324101608992662752

`sqrt(A080175(n+1)-(4*A253803(n+1))²)`
-/

namespace A253802.P11324101608992662752
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080175 (n + 1) - (4 * A253803 (n + 1)) ^ 2 : ℝ)

end

end A253802.P11324101608992662752

/-!
# A253803: a(n) gives one fourth of the even leg of one of the two Pythagorean triangles with hypotenuse A080109(n) = A002144(n)^2. The odd leg is given in A253802(n).

The programs for A253803, there is no canonical definition to state claims against.
-/

/-! ## A253803.P5571696425838334101

`sqrt(A080109(n+1)²-A253802(n+1)²)/4`
-/

namespace A253803.P5571696425838334101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) ^ 2 - A253802 (n + 1) ^ 2 : ℝ) / 4

end

end A253803.P5571696425838334101

/-!
# A253804: a(n) gives the odd leg of the second of the two Pythagorean triangles with hypotenuse A080109(n) = A002144(n)^2. This is the larger of the two possible odd legs.

The programs for A253804, there is no canonical definition to state claims against.
-/

/-! ## A253804.P12267502685741686674

`sqrt(A080175(n+1)-(4*A253805(n+1))²)`
-/

namespace A253804.P12267502685741686674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080175 (n + 1) - (4 * A253805 (n + 1)) ^ 2 : ℝ)

end

end A253804.P12267502685741686674

/-!
# A253805: a(n) gives one fourth of the even leg of the second of the two Pythagorean triangles with hypotenuse A080109(n) = A002144(n)^2. The odd leg is given in A253804.

The programs for A253805, there is no canonical definition to state claims against.
-/

/-! ## A253805.P13005292628953721903

`sqrt(A080109(n+1)²-A253804(n+1)²)/4`
-/

namespace A253805.P13005292628953721903
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) ^ 2 - A253804 (n + 1) ^ 2 : ℝ) / 4

end

end A253805.P13005292628953721903

/-!
# A253806: One half of the maximal values of the length of the period for Fibonacci numbers modulo p (A001175(p)) for primes p > 5, according to Wall's Theorems 6 and 7.

The programs for A253806, there is no canonical definition to state claims against.
-/

/-! ## A253806.P15999579726777247937

`A060305(n+4)/2*A296240(n+4)`
-/

namespace A253806.P15999579726777247937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060305 (n + 4) : ℚ) / 2 * (A296240 (n + 4) : ℚ)

end

end A253806.P15999579726777247937

/-!
# A253807: Primitive part of A006190(n), n >= 1.

The programs for A253807, there is no canonical definition to state claims against.
-/

/-! ## A253807.P5963832605483927444

`A324660(A324660(n))+A309525(n+1)`
-/

namespace A253807.P5963832605483927444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 (A324660 n).toNat + A309525 (n + 1)

end

end A253807.P5963832605483927444

/-! ## A253807.P6218604556837394081

`A141541(A005418(n+1))*A309525(n+1)`
-/

namespace A253807.P6218604556837394081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141541 (A005418 (n + 1)).toNat * A309525 (n + 1)

end

end A253807.P6218604556837394081

/-!
# A253809: Array of pairs (x,y) of Markoff triples (x,y,z) with x <= y <= z, for z given in A002559.

The programs for A253809, there is no canonical definition to state claims against.
-/

/-! ## A253809.P10229405846603931283

`A291694(comp[3*n])`
-/

namespace A253809.P10229405846603931283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291694 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A253809.P10229405846603931283

/-! ## A253809.P12367063384210993481

`or(char[1], A291694(A001651(n+1)))`
-/

namespace A253809.P12367063384210993481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A291694 (A001651 (n + 1)).toNat)

end

end A253809.P12367063384210993481

/-! ## A253809.P13872111472501455674

`A291694(A001651(n+1))%A002147(n)`
-/

namespace A253809.P13872111472501455674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291694 (A001651 (n + 1)).toNat) (A002147 n)

end

end A253809.P13872111472501455674

/-! ## A253809.P10159177144520603834

`A266227(n+1)*A291694(A001651(n+1))`
-/

namespace A253809.P10159177144520603834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1) * A291694 (A001651 (n + 1)).toNat

end

end A253809.P10159177144520603834

/-! ## A253809.P8587991053324295148

`A291694(A008619(3*n))/A001222(A002147(n))`
-/

namespace A253809.P8587991053324295148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291694 (A008619 (3 * n)).toNat : ℚ) / (A001222 (A002147 n).toNat : ℚ)

end

end A253809.P8587991053324295148

/-!
# A253811: Part of the y solutions of the Pell equation x^2 - 2*y^2 = +7.

The programs for A253811, the canonical program `A253811.P18355093658697737424` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253811 has offset 0).

The definition of A253811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253811.P18355093658697737424

`6*a(n-1)-a(n-2)` with `a(0)=3, a(1)=19`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253811

/-- `6*a(n-1)-a(n-2)` -/
def P18355093658697737424.Spec : Prop :=
  ∀ n, P18355093658697737424.a n = A253811 n

theorem P18355093658697737424.correct : P18355093658697737424.Spec := by
  intro n
  simp only [A253811]

end A253811

/-! ## A253811.P424720411954398584

`3*A001109(n+1)+A001109(n)`
-/

namespace A253811.P424720411954398584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001109 (n + 1) + A001109 n

end

end A253811.P424720411954398584

namespace A253811

/-- `3*A001109(n+1)+A001109(n)` -/
def P424720411954398584.Spec : Prop :=
  ∀ n, P424720411954398584.a n = A253811 n

end A253811

/-! ## A253811.P17829817323012894435

`ogf((3+x)/(1-6x+x^2))`
-/

namespace A253811.P17829817323012894435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -6, 1] n

end

end A253811.P17829817323012894435

namespace A253811

/-- `ogf((3+x)/(1-6x+x^2))` -/
def P17829817323012894435.Spec : Prop :=
  ∀ n, P17829817323012894435.a n = A253811 n

end A253811

/-! ## A253811.P9115856657764806610

`or(3, floor(a(n-1)/(3-sqrt(8))))` with `a(0)=3`
-/

namespace A253811.P9115856657764806610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 3 ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

end

end A253811.P9115856657764806610

namespace A253811

/-- `or(3, floor(a(n-1)/(3-sqrt(8))))` -/
def P9115856657764806610.Spec : Prop :=
  ∀ n, P9115856657764806610.a n = A253811 n

end A253811

/-! ## A253811.P8697588581662859984

`or(2, round(a(n-1)/(3-sqrt(8))))` with `a(0)=3`
-/

namespace A253811.P8697588581662859984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 2 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))))

end

end A253811.P8697588581662859984

namespace A253811

/-- `or(2, round(a(n-1)/(3-sqrt(8))))` -/
def P8697588581662859984.Spec : Prop :=
  ∀ n, P8697588581662859984.a n = A253811 n

end A253811

/-! ## A253811.P18076414114816448548

`Δ[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=4`
-/

namespace A253811.P18076414114816448548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253811.P18076414114816448548

namespace A253811

/-- `Δ[floor(a(n-1)/(3-sqrt(8)))]` -/
def P18076414114816448548.Spec : Prop :=
  ∀ n, P18076414114816448548.a n = A253811 n

end A253811

/-! ## A253811.P14841971070887283145

`Δ[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=4`
-/

namespace A253811.P14841971070887283145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253811.P14841971070887283145

namespace A253811

/-- `Δ[round(a(n-1)/(3-sqrt(8)))]` -/
def P14841971070887283145.Spec : Prop :=
  ∀ n, P14841971070887283145.a n = A253811 n

end A253811

/-! ## A253811.P11105588075573831693

`Δ[A038723(n)]`
-/

namespace A253811.P11105588075573831693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253811.P11105588075573831693

namespace A253811

/-- `Δ[A038723(n)]` -/
def P11105588075573831693.Spec : Prop :=
  ∀ n, P11105588075573831693.a n = A253811 n

end A253811

/-! ## A253811.P17034474833435349333

`A077442(Δ[n²])`
-/

namespace A253811.P17034474833435349333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A253811.P17034474833435349333

namespace A253811

/-- `A077442(Δ[n²])` -/
def P17034474833435349333.Spec : Prop :=
  ∀ n, P17034474833435349333.a n = A253811 n

end A253811

/-! ## A253811.P12313713523199464361

`Δ[A182191(n)/2]`
-/

namespace A253811.P12313713523199464361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182191 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253811.P12313713523199464361

namespace A253811

/-- `Δ[A182191(n)/2]` -/
def P12313713523199464361.Spec : Prop :=
  ∀ n, P12313713523199464361.a n = (A253811 n : ℚ)

end A253811

/-! ## A253811.P14608279716550821355

`Δ[A266507(n)/2]`
-/

namespace A253811.P14608279716550821355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266507 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253811.P14608279716550821355

namespace A253811

/-- `Δ[A266507(n)/2]` -/
def P14608279716550821355.Spec : Prop :=
  ∀ n, P14608279716550821355.a n = (A253811 n : ℚ)

end A253811

/-! ## A253811.P533188203673819119

`Δ[A006452(Δ[n²])]`
-/

namespace A253811.P533188203673819119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253811.P533188203673819119

namespace A253811

/-- `Δ[A006452(Δ[n²])]` -/
def P533188203673819119.Spec : Prop :=
  ∀ n, P533188203673819119.a n = A253811 n

end A253811

/-! ## A253811.P8225755331548761173

`A078343(2*(n+1))`
-/

namespace A253811.P8225755331548761173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078343 (2 * (n + 1))

end

end A253811.P8225755331548761173

namespace A253811

/-- `A078343(2*(n+1))` -/
def P8225755331548761173.Spec : Prop :=
  ∀ n, P8225755331548761173.a n = A253811 n

end A253811

/-! ## A253811.P1491711918166451995

`A048746(2*n)+2`
-/

namespace A253811.P1491711918166451995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048746 (2 * n) + 2

end

end A253811.P1491711918166451995

namespace A253811

/-- `A048746(2*n)+2` -/
def P1491711918166451995.Spec : Prop :=
  ∀ n, P1491711918166451995.a n = A253811 n

end A253811

/-! ## A253811.P8123038135630025379

`A082981(4*n+3)`
-/

namespace A253811.P8123038135630025379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082981 (4 * n + 3)

end

end A253811.P8123038135630025379

namespace A253811

/-- `A082981(4*n+3)` -/
def P8123038135630025379.Spec : Prop :=
  ∀ n, P8123038135630025379.a n = A253811 n

end A253811

/-! ## A253811.P15018568007443187744

`A266504(4*n+3)`
-/

namespace A253811.P15018568007443187744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266504 (4 * n + 3)

end

end A253811.P15018568007443187744

namespace A253811

/-- `A266504(4*n+3)` -/
def P15018568007443187744.Spec : Prop :=
  ∀ n, P15018568007443187744.a n = A253811 n

end A253811

/-! ## A253811.P6600356326232388113

`A073301(6*n+3)`
-/

namespace A253811.P6600356326232388113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073301 (6 * n + 3)

end

end A253811.P6600356326232388113

namespace A253811

/-- `A073301(6*n+3)` -/
def P6600356326232388113.Spec : Prop :=
  ∀ n, P6600356326232388113.a n = A253811 n

end A253811

/-! ## A253811.P17308743632665272307

`A174192(Δ[n²])+1`
-/

namespace A253811.P17308743632665272307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A253811.P17308743632665272307

namespace A253811

/-- `A174192(Δ[n²])+1` -/
def P17308743632665272307.Spec : Prop :=
  ∀ n, P17308743632665272307.a n = A253811 n

end A253811

/-! ## A253811.P15875054734894604529

`record[Δ[A089499(n+1)]]`
-/

namespace A253811.P15875054734894604529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253811.P15875054734894604529

namespace A253811

/-- `record[Δ[A089499(n+1)]]` -/
def P15875054734894604529.Spec : Prop :=
  ∀ n, P15875054734894604529.a n = A253811 n

end A253811

/-! ## A253811.P3507351498908736771

`Δ[A174192(2*n)/2]`
-/

namespace A253811.P3507351498908736771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174192 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253811.P3507351498908736771

namespace A253811

/-- `Δ[A174192(2*n)/2]` -/
def P3507351498908736771.Spec : Prop :=
  ∀ n, P3507351498908736771.a n = (A253811 n : ℚ)

end A253811

/-!
# A253812: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253812, there is no canonical definition to state claims against.
-/

/-! ## A253812.P408682252154121384

`A253820(∑[4*n]+1)`
-/

namespace A253812.P408682252154121384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253812.P408682252154121384

/-! ## A253812.P4435440109338239406

`lcm(2, A253820(A001844(n)))`
-/

namespace A253812.P4435440109338239406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253820 (A001844 n).toNat)

end

end A253812.P4435440109338239406

/-! ## A253812.P14800041978830131066

`record[A253820(Δ[A235355(n)])]`
-/

namespace A253812.P14800041978830131066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253812.P14800041978830131066

/-! ## A253812.P16830120374350156154

`record[A253820(A330613(n+1))]`
-/

namespace A253812.P16830120374350156154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253812.P16830120374350156154

/-! ## A253812.P16573162701326458859

`record[gcd(A003987(n), A253820(n+1))]`
-/

namespace A253812.P16573162701326458859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A253820 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253812.P16573162701326458859

/-!
# A253813: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253813, there is no canonical definition to state claims against.
-/

/-! ## A253813.P13583801647747254350

`A254804(∑[n]+1)`
-/

namespace A253813.P13583801647747254350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253813.P13583801647747254350

/-! ## A253813.P12530861872854823587

`record[A254804(n+1)]`
-/

namespace A253813.P12530861872854823587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253813.P12530861872854823587

/-! ## A253813.P6250652328786196058

`lcm(2, A254804(A000124(n)))`
-/

namespace A253813.P6250652328786196058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254804 (A000124 n).toNat)

end

end A253813.P6250652328786196058

/-! ## A253813.P7201123032923941821

`A254804(A000124(n))*A262681(n)`
-/

namespace A253813.P7201123032923941821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A000124 n).toNat * A262681 n

end

end A253813.P7201123032923941821

/-! ## A253813.P7575302331645038721

`A254804(A000124(n))+A000007(n+1)`
-/

namespace A253813.P7575302331645038721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254804 (A000124 n).toNat + A000007 (n + 1)

end

end A253813.P7575302331645038721

/-!
# A253814: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253814, there is no canonical definition to state claims against.
-/

/-! ## A253814.P12430610072315701980

`A253820(∑[n+1]+2)`
-/

namespace A253814.P12430610072315701980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253814.P12430610072315701980

/-! ## A253814.P15467510733483219709

`A253820(A167487(n)-5)+char[23]`
-/

namespace A253814.P15467510733483219709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A167487 n - 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253814.P15467510733483219709

/-! ## A253814.P1449892332591766347

`record[A010054(n)*A253820(n+2)]`
-/

namespace A253814.P1449892332591766347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253820 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253814.P1449892332591766347

/-! ## A253814.P9897539181642539466

`record[A253820(n+3)/A093565(n)]`
-/

namespace A253814.P9897539181642539466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253820 (n + 3) : ℚ) / (A093565 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253814.P9897539181642539466

/-! ## A253814.P4360499995219223753

`record[gcd(A002262(n), A253820(n+2))]`
-/

namespace A253814.P4360499995219223753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253820 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253814.P4360499995219223753

/-!
# A253815: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253815, there is no canonical definition to state claims against.
-/

/-! ## A253815.P16096684312637691818

`A253820(∑[n+2]+4)`
-/

namespace A253815.P16096684312637691818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253815.P16096684312637691818

/-! ## A253815.P7463456942099814220

`record[A023531(n)*A253820(n+4)]`
-/

namespace A253815.P7463456942099814220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A253820 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253815.P7463456942099814220

/-! ## A253815.P9864022060432276168

`lcm(gcd(2, n), A253820(A167614(n+1)))`
-/

namespace A253815.P9864022060432276168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.gcd 2 n : ℤ) (A253820 (A167614 (n + 1)).toNat)

end

end A253815.P9864022060432276168

/-! ## A253815.P6267044184735650264

`record[A253820(A145018(n+1)-2*n)]`
-/

namespace A253815.P6267044184735650264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A145018 (n + 1) - (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253815.P6267044184735650264

/-! ## A253815.P17753174999691659002

`A253820(A167614(n+1))+A011739(n)`
-/

namespace A253815.P17753174999691659002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A167614 (n + 1)).toNat + A011739 n

end

end A253815.P17753174999691659002

/-!
# A253816: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253816, there is no canonical definition to state claims against.
-/

/-! ## A253816.P13013534984549238485

`A253820(∑[n+3]+7)`
-/

namespace A253816.P13013534984549238485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253816.P13013534984549238485

/-! ## A253816.P17469035058216781671

`A253820(A034856(n+2)+6)+char[23]`
-/

namespace A253816.P17469035058216781671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A034856 (n + 2) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253816.P17469035058216781671

/-! ## A253816.P10736452169913564916

`A007318(C(2, n))*A253820(A034856(n+2)+6)`
-/

namespace A253816.P10736452169913564916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253820 (A034856 (n + 2) + 6).toNat

end

end A253816.P10736452169913564916

/-! ## A253816.P14684413915441005374

`A253820(A034856(n+2)+6)/A007318(C(n, 2))`
-/

namespace A253816.P14684413915441005374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253820 (A034856 (n + 2) + 6).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A253816.P14684413915441005374

/-! ## A253816.P17548242266720148174

`A007318(floor(n/6))*A253820(A034856(n+2)+6)`
-/

namespace A253816.P17548242266720148174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 6⌋.toNat * A253820 (A034856 (n + 2) + 6).toNat

end

end A253816.P17548242266720148174

/-!
# A253817: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253817, there is no canonical definition to state claims against.
-/

/-! ## A253817.P14036605425618028599

`A253820(A167499(n+3))`
-/

namespace A253817.P14036605425618028599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A167499 (n + 3)).toNat

end

end A253817.P14036605425618028599

/-! ## A253817.P18139139348423089120

`A253820(A077169(n+5))`
-/

namespace A253817.P18139139348423089120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A077169 (n + 5)).toNat

end

end A253817.P18139139348423089120

/-! ## A253817.P18316839483463240134

`A253820(A155212(n)+13)`
-/

namespace A253817.P18316839483463240134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A155212 n + 13).toNat

end

end A253817.P18316839483463240134

/-! ## A253817.P10616043180864345903

`A253820(A056000(n)+15)`
-/

namespace A253817.P10616043180864345903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A056000 n + 15).toNat

end

end A253817.P10616043180864345903

/-! ## A253817.P16244558823174609968

`A253820(eq[7, A066657(n)])`
-/

namespace A253817.P16244558823174609968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253817.P16244558823174609968

/-!
# A253818: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253818, there is no canonical definition to state claims against.
-/

/-! ## A253818.P12072656994393827710

`A253820(∑[n+5]+16)`
-/

namespace A253818.P12072656994393827710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A253818.P12072656994393827710

/-! ## A253818.P16478344357806358027

`A253820(A166136(n+4))+char[18]`
-/

namespace A253818.P16478344357806358027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A166136 (n + 4)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253818.P16478344357806358027

/-! ## A253818.P11492591479149673289

`A007318(C(2, n))*A253820(A166136(n+4))`
-/

namespace A253818.P11492591479149673289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253820 (A166136 (n + 4)).toNat

end

end A253818.P11492591479149673289

/-! ## A253818.P13450251390249983247

`A000041(floor(n/10))*A253820(A166136(n+4))`
-/

namespace A253818.P13450251390249983247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 10⌋.toNat * A253820 (A166136 (n + 4)).toNat

end

end A253818.P13450251390249983247

/-! ## A253818.P15022493153640947345

`A253820(A166136(n+4))/A007318(C(n+2, 2))`
-/

namespace A253818.P15022493153640947345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253820 (A166136 (n + 4)).toNat : ℚ) / (A007318 (Nat.choose (n + 2) 2) : ℚ)

end

end A253818.P15022493153640947345

/-!
# A253819: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum minus antidiagonal median nondecreasing horizontally and vertically.

The programs for A253819, there is no canonical definition to state claims against.
-/

/-! ## A253819.P14836803431839558264

`A253820(A167487(n+5))`
-/

namespace A253819.P14836803431839558264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A167487 (n + 5)).toNat

end

end A253819.P14836803431839558264

/-! ## A253819.P13376511508315394735

`A253820(A056119(n)+28)`
-/

namespace A253819.P13376511508315394735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A056119 n + 28).toNat

end

end A253819.P13376511508315394735

/-! ## A253819.P2848671034070109512

`A253820(eq[11, A066657(n)])`
-/

namespace A253819.P2848671034070109512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253819.P2848671034070109512

/-! ## A253819.P11661348511641291289

`A253820(A167499(n+5)+2)`
-/

namespace A253819.P11661348511641291289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A167499 (n + 5) + 2).toNat

end

end A253819.P11661348511641291289

/-! ## A253819.P11652574387793984397

`A253820(A077169(n+7)+2)`
-/

namespace A253819.P11652574387793984397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253820 (A077169 (n + 7) + 2).toNat

end

end A253819.P11652574387793984397

/-!
# A253821: Indices of octagonal numbers (A000567) which are also centered triangular numbers (A005448).

The programs for A253821, there is no canonical definition to state claims against.
-/

/-! ## A253821.P14632343911379236337

`round(A253822(n+1)/sqrt(2))`
-/

namespace A253821.P14632343911379236337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A253822 (n + 1) : ℝ) / Real.sqrt (2 : ℝ))

end

end A253821.P14632343911379236337

/-! ## A253821.P7330649878793388302

`A260937(n+1)+A174685(n+1)`
-/

namespace A253821.P7330649878793388302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260937 (n + 1) + A174685 (n + 1)

end

end A253821.P7330649878793388302

/-! ## A253821.P7828837256667030319

`A253822(n+1)-A174685(n+1)`
-/

namespace A253821.P7828837256667030319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253822 (n + 1) - A174685 (n + 1)

end

end A253821.P7828837256667030319

/-! ## A253821.P2284151016268672960

`ceil(sqrt(A253823(n+1)/3))`
-/

namespace A253821.P2284151016268672960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A253823 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A253821.P2284151016268672960

/-!
# A253822: Indices of centered triangular numbers (A005448) which are also octagonal numbers (A000567).

The programs for A253822, there is no canonical definition to state claims against.
-/

/-! ## A253822.P12412908490677050419

`round(sqrt(2)*A253821(n+1))`
-/

namespace A253822.P12412908490677050419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A253821 (n + 1) : ℝ))

end

end A253822.P12412908490677050419

/-! ## A253822.P10313857536290414183

`A253821(n+1)+A174685(n+1)`
-/

namespace A253822.P10313857536290414183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253821 (n + 1) + A174685 (n + 1)

end

end A253822.P10313857536290414183

/-! ## A253822.P2993237927959215260

`A260937(n+1)+2*A174685(n+1)`
-/

namespace A253822.P2993237927959215260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260937 (n + 1) + 2 * A174685 (n + 1)

end

end A253822.P2993237927959215260

/-! ## A253822.P11362265424278907280

`2*A253821(n+1)-A260937(n+1)`
-/

namespace A253822.P11362265424278907280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253821 (n + 1) - A260937 (n + 1)

end

end A253822.P11362265424278907280

/-! ## A253822.P15423821099261251916

`A174685(n+1)+ceil(sqrt(A253823(n+1)/3))`
-/

namespace A253822.P15423821099261251916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174685 (n + 1) + ⌈Real.sqrt ((A253823 (n + 1) : ℚ) / 3 : ℝ)⌉

end

end A253822.P15423821099261251916

/-!
# A253823: Octagonal numbers (A000567) which are also centered triangular numbers (A005448).

The programs for A253823, there is no canonical definition to state claims against.
-/

/-! ## A253823.P12474380369479679435

`(3*A253821(n+1)-2)*A253821(n+1)`
-/

namespace A253823.P12474380369479679435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A253821 (n + 1) - 2) * A253821 (n + 1)

end

end A253823.P12474380369479679435

/-!
# A253826: Indices of centered octagonal numbers (A016754) which are also triangular numbers (A000217).

The programs for A253826, the canonical program `A253826.P18199319733379303508` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253826 has offset 1).

The definition of A253826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253826.P18199319733379303508

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=1, a(1)=18, a(2)=595`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253826

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P18199319733379303508.Spec : Prop :=
  ∀ n, P18199319733379303508.a n = A253826 (n + 1)

theorem P18199319733379303508.correct : P18199319733379303508.Spec := by
  intro n
  simp only [A253826, Nat.add_sub_cancel]

end A253826

/-! ## A253826.P8733029436855416705

`∑[34*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=17`
-/

namespace A253826.P8733029436855416705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253826.P8733029436855416705

namespace A253826

/-- `∑[34*a(n-1)-a(n-2)]` -/
def P8733029436855416705.Spec : Prop :=
  ∀ n, P8733029436855416705.a n = A253826 (n + 1)

end A253826

/-! ## A253826.P2162092629695590351

`∑[A056771(n)]`
-/

namespace A253826.P2162092629695590351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253826.P2162092629695590351

namespace A253826

/-- `∑[A056771(n)]` -/
def P2162092629695590351.Spec : Prop :=
  ∀ n, P2162092629695590351.a n = A253826 (n + 1)

end A253826

/-! ## A253826.P4180894673730224041

`∑[A001541(2*n)]`
-/

namespace A253826.P4180894673730224041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253826.P4180894673730224041

namespace A253826

/-- `∑[A001541(2*n)]` -/
def P4180894673730224041.Spec : Prop :=
  ∀ n, P4180894673730224041.a n = A253826 (n + 1)

end A253826

/-! ## A253826.P4294903818150349695

`∑[A144534(2*n)]`
-/

namespace A253826.P4294903818150349695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144534 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253826.P4294903818150349695

namespace A253826

/-- `∑[A144534(2*n)]` -/
def P4294903818150349695.Spec : Prop :=
  ∀ n, P4294903818150349695.a n = A253826 (n + 1)

end A253826

/-! ## A253826.P13204959834026982029

`∑[A001333(4*n)]`
-/

namespace A253826.P13204959834026982029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253826.P13204959834026982029

namespace A253826

/-- `∑[A001333(4*n)]` -/
def P13204959834026982029.Spec : Prop :=
  ∀ n, P13204959834026982029.a n = A253826 (n + 1)

end A253826

/-! ## A253826.P4876586250708890730

`∑[A079496(4*n)]`
-/

namespace A253826.P4876586250708890730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253826.P4876586250708890730

namespace A253826

/-- `∑[A079496(4*n)]` -/
def P4876586250708890730.Spec : Prop :=
  ∀ n, P4876586250708890730.a n = A253826 (n + 1)

end A253826

/-! ## A253826.P10658049247642068310

`∑[A123335(4*n)]`
-/

namespace A253826.P10658049247642068310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253826.P10658049247642068310

namespace A253826

/-- `∑[A123335(4*n)]` -/
def P10658049247642068310.Spec : Prop :=
  ∀ n, P10658049247642068310.a n = A253826 (n + 1)

end A253826

/-! ## A253826.P8740333277592914530

`(A111649(n)+1)/4`
-/

namespace A253826.P8740333277592914530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111649 n + 1 : ℚ) / 4

end

end A253826.P8740333277592914530

namespace A253826

/-- `(A111649(n)+1)/4` -/
def P8740333277592914530.Spec : Prop :=
  ∀ n, P8740333277592914530.a n = (A253826 (n + 1) : ℚ)

end A253826

/-! ## A253826.P11828453099604248497

`∑[A005319(n)²+1]`
-/

namespace A253826.P11828453099604248497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005319 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253826.P11828453099604248497

namespace A253826

/-- `∑[A005319(n)²+1]` -/
def P11828453099604248497.Spec : Prop :=
  ∀ n, P11828453099604248497.a n = A253826 (n + 1)

end A253826

/-!
# A253827: a(n) is the number of primes of the form x^2 + x + prime(n) for 0 <= x <=prime(n).

The programs for A253827, there is no canonical definition to state claims against.
-/

/-! ## A253827.P12144518009693790725

`A188424(A111333(n+1))`
-/

namespace A253827.P12144518009693790725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188424 (A111333 (n + 1)).toNat

end

end A253827.P12144518009693790725

/-! ## A253827.P13408097431792196629

`A302826(A000040(n+1))`
-/

namespace A253827.P13408097431792196629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (A000040 (n + 1)).toNat

end

end A253827.P13408097431792196629

/-! ## A253827.P6339713503750325204

`A302826(A008578(n+2))`
-/

namespace A253827.P6339713503750325204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (A008578 (n + 2)).toNat

end

end A253827.P6339713503750325204

/-! ## A253827.P955628237718001503

`A302826(A182986(n+2))`
-/

namespace A253827.P955628237718001503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (A182986 (n + 2)).toNat

end

end A253827.P955628237718001503

/-! ## A253827.P7342480309027039572

`A188424(record[A007897(n+1)])`
-/

namespace A253827.P7342480309027039572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188424 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253827.P7342480309027039572

/-! ## A253827.P6630983273976569862

`A302826(record[A006530(n+2)])`
-/

namespace A253827.P6630983273976569862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253827.P6630983273976569862

/-! ## A253827.P15801544535469446325

`A302826(record[A014963(n+2)])`
-/

namespace A253827.P15801544535469446325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253827.P15801544535469446325

/-! ## A253827.P15574376289933359157

`A302826(record[A020639(n+2)])`
-/

namespace A253827.P15574376289933359157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253827.P15574376289933359157

/-!
# A253828: Digit of Pi raised to the power of the next digit of Pi.

The programs for A253828, there is no canonical definition to state claims against.
-/

/-! ## A253828.P16273395647732401912

`A000796(n)^A000796(n+1)`
-/

namespace A253828.P16273395647732401912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) : ℚ) ^ (A000796 (n + 1 + 1) : ℤ)

end

end A253828.P16273395647732401912

/-! ## A253828.P15539077176634150919

`A000796(n)^Δ[A046974(n)]`
-/

namespace A253828.P15539077176634150919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000796 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A253828.P15539077176634150919

/-! ## A253828.P1134905680622834094

`A001355(2*n+1)^Δ[A046974(n)]`
-/

namespace A253828.P1134905680622834094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001355 (2 * n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A253828.P1134905680622834094

/-! ## A253828.P6124828413638087290

`(9-A030644(n))^A001355(2*n+3)`
-/

namespace A253828.P6124828413638087290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1) : ℚ) ^ (A001355 (2 * n + 3) : ℤ)

end

end A253828.P6124828413638087290

/-! ## A253828.P4544453724493918562

`dr(A001355(2*n+1))^A001355(2*n+3)`
-/

namespace A253828.P4544453724493918562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A001355 (2 * n + 1)) : ℚ) ^ (A001355 (2 * n + 3) : ℤ)

end

end A253828.P4544453724493918562

/-! ## A253828.P397736519123119482

`A010879(A065253(n+1))^A001355(2*n+3)`
-/

namespace A253828.P397736519123119482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010879 (A065253 (n + 1)).toNat : ℚ) ^ (A001355 (2 * n + 3) : ℤ)

end

end A253828.P397736519123119482

/-! ## A253828.P3013048458357050541

`(A166931(n+1)%A123152(n+1))^A001355(2*n+3)`
-/

namespace A253828.P3013048458357050541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A166931 (n + 1)) (A123152 (n + 1)) : ℚ) ^ (A001355 (2 * n + 3) : ℤ)

end

end A253828.P3013048458357050541

/-! ## A253828.P14702614984184490814

`Δ[A059582(n)]^Δ[A046974(n)]`
-/

namespace A253828.P14702614984184490814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A253828.P14702614984184490814

/-! ## A253828.P5688902024677262890

`Δ[A059582(n)]^Δ[A059582(n+1)]`
-/

namespace A253828.P5688902024677262890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A253828.P5688902024677262890

/-!
# A253829: Triangular array with g.f. Product_{n >= 1} 1/(1 - x*z^n/(1 - z)).

The programs for A253829, there is no canonical definition to state claims against.
-/

/-! ## A253829.P8710107471017128182

`A028657(n)-A331416(A123125(n))`
-/

namespace A253829.P8710107471017128182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 n - A331416 (A123125 n).toNat

end

end A253829.P8710107471017128182

/-! ## A253829.P18386810065483469502

`A166293(n+1)-A166301(A048993(n))`
-/

namespace A253829.P18386810065483469502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166293 (n + 1) - A166301 (A048993 n).toNat

end

end A253829.P18386810065483469502

/-! ## A253829.P12839599173214384993

`A007318(n)+A005136(A326476(n))-1`
-/

namespace A253829.P12839599173214384993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A005136 (A326476 n).toNat - 1)

end

end A253829.P12839599173214384993

/-! ## A253829.P10156971425115423567

`A104878(n)-A018843(A339780(n))`
-/

namespace A253829.P10156971425115423567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104878 n - A018843 (A339780 n).toNat

end

end A253829.P10156971425115423567

/-! ## A253829.P17241476018831575806

`A182576(A187557(n))`
-/

namespace A253829.P17241476018831575806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182576 (A187557 n).toNat

end

end A253829.P17241476018831575806

/-!
# A253830: Triangular array with g.f. Product_{n >= 1} (1 + (x*z)^n/(1 - z)).

The programs for A253830, there is no canonical definition to state claims against.
-/

/-! ## A253830.P17340763293283692192

`A103631(comp[∑[n-1]]%A101847(n+1))`
-/

namespace A253830.P17340763293283692192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A101847 (n + 1))).toNat

end

end A253830.P17340763293283692192

/-! ## A253830.P2194298815220154004

`A103631(A007401(n+1)%A080628(n))`
-/

namespace A253830.P2194298815220154004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (Int.tmod (A007401 (n + 1)) (A080628 n)).toNat

end

end A253830.P2194298815220154004

/-! ## A253830.P8105198983455556287

`lcm(A039961(n+1), A062157(A281891(n)))`
-/

namespace A253830.P8105198983455556287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039961 (n + 1)) (A062157 (A281891 n).toNat)

end

end A253830.P8105198983455556287

/-! ## A253830.P15965637181929732414

`A103631(lt[A178047(3*n+1), A119274(n)])`
-/

namespace A253830.P15965637181929732414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178047 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A253830.P15965637181929732414

/-! ## A253830.P5470508910868642984

`A334028(A285867(n))`
-/

namespace A253830.P5470508910868642984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A285867 n).toNat

end

end A253830.P5470508910868642984

/-!
# A253831: Number of 2-Motzkin paths with no level steps at height 1.

The programs for A253831, there is no canonical definition to state claims against.
-/

/-! ## A253831.P6554144269232259634

`∑[A324979(n+1)+A318229(n+1)]`
-/

namespace A253831.P6554144269232259634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324979 (n + 1) + A318229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253831.P6554144269232259634

/-! ## A253831.P7407256658559175132

`A086622(n)+A055641(A182117(n))`
-/

namespace A253831.P7407256658559175132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086622 n + A055641 (A182117 n).toNat

end

end A253831.P7407256658559175132

/-! ## A253831.P3732940856262005691

`A086622(n)+A086080(A181541(n))`
-/

namespace A253831.P3732940856262005691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086622 n + A086080 (A181541 n).toNat

end

end A253831.P3732940856262005691

/-!
# A253832: a(n) = a(n-1) * (1 + a(n-2)/a(n-4)), a(0) = a(1) = a(2) = a(3) = 1.

The programs for A253832, the canonical program `A253832.P162248038189823715` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253832 has offset 0).

The definition of A253832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253832.P162248038189823715

`a(n-1)*(1+a(n-2)/a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253832

/-- `a(n-1)*(1+a(n-2)/a(n-4))` -/
def P162248038189823715.Spec : Prop :=
  ∀ n, P162248038189823715.a n = (A253832 n : ℚ)

end A253832

/-! ## A253832.P15630841094939931153

`∏[A253853(abs(1-n))]`
-/

namespace A253832.P15630841094939931153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253853 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A253832.P15630841094939931153

namespace A253832

/-- `∏[A253853(abs(1-n))]` -/
def P15630841094939931153.Spec : Prop :=
  ∀ n, P15630841094939931153.a n = A253832 n

end A253832

/-! ## A253832.P3327215487878189519

`a(n-1)*A253853(n-1)` with `a(0)=1`
-/

namespace A253832.P3327215487878189519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A253853 (n - 1)

end

end A253832.P3327215487878189519

namespace A253832

/-- `a(n-1)*A253853(n-1)` -/
def P3327215487878189519.Spec : Prop :=
  ∀ n, P3327215487878189519.a n = A253832 n

end A253832

/-! ## A253832.P5769040673893220028

`∏[a(n-2)*a(n-3)-A260196(n)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A253832.P5769040673893220028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n f1 =>
  f1 (n - 2) * f1 (n - 3) - A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A253832.P5769040673893220028

namespace A253832

/-- `∏[a(n-2)*a(n-3)-A260196(n)]` -/
def P5769040673893220028.Spec : Prop :=
  ∀ n, P5769040673893220028.a n = A253832 n

end A253832

/-! ## A253832.P8608715958291723115

`∏[A253853(n)]/A253853(n)`
-/

namespace A253832.P8608715958291723115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253853 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A253853 n : ℚ)

end

end A253832.P8608715958291723115

namespace A253832

/-- `∏[A253853(n)]/A253853(n)` -/
def P8608715958291723115.Spec : Prop :=
  ∀ n, P8608715958291723115.a n = (A253832 n : ℚ)

end A253832

/-!
# A253833: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253833, there is no canonical definition to state claims against.
-/

/-! ## A253833.P6935256428025288916

`A253841((n+1)²+n²)`
-/

namespace A253833.P6935256428025288916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 ((n + 1) ^ 2 + n ^ 2)

end

end A253833.P6935256428025288916

/-! ## A253833.P2585042353270337633

`or(char[1], A253841(A000982(2*n+1)))`
-/

namespace A253833.P2585042353270337633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253841 (A000982 (2 * n + 1)).toNat)

end

end A253833.P2585042353270337633

/-! ## A253833.P14722377276790311527

`char[A002262(n)]*A253841(A000982(2*n+1))`
-/

namespace A253833.P14722377276790311527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A253841 (A000982 (2 * n + 1)).toNat

end

end A253833.P14722377276790311527

/-! ## A253833.P10315951719449449288

`A253841(A000982(2*n+1))+A000007(n+1)`
-/

namespace A253833.P10315951719449449288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000982 (2 * n + 1)).toNat + A000007 (n + 1)

end

end A253833.P10315951719449449288

/-! ## A253833.P13913281963213873779

`A032741(A000040(n+1))*A253841(A000982(2*n+1))`
-/

namespace A253833.P13913281963213873779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A000040 (n + 1)).toNat * A253841 (A000982 (2 * n + 1)).toNat

end

end A253833.P13913281963213873779

/-!
# A253834: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253834, there is no canonical definition to state claims against.
-/

/-! ## A253834.P17807777083643282578

`A253935(∑[n]+1)`
-/

namespace A253834.P17807777083643282578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253834.P17807777083643282578

/-! ## A253834.P6559680276100217685

`lcm(2, A253935(A000124(n)))`
-/

namespace A253834.P6559680276100217685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253935 (A000124 n).toNat)

end

end A253834.P6559680276100217685

/-! ## A253834.P9254300306877142569

`record[A253935(n+1)/A077028(n)]`
-/

namespace A253834.P9254300306877142569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253935 (n + 1) : ℚ) / (A077028 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253834.P9254300306877142569

/-! ## A253834.P12160586589637573036

`record[A253935(n+1)/A002260(n+1)]`
-/

namespace A253834.P12160586589637573036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253935 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253834.P12160586589637573036

/-! ## A253834.P6843947211711968746

`A253935(A000124(n))*A262681(n)`
-/

namespace A253834.P6843947211711968746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253935 (A000124 n).toNat * A262681 n

end

end A253834.P6843947211711968746

/-!
# A253835: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253835, there is no canonical definition to state claims against.
-/

/-! ## A253835.P6174812088447955604

`A253841(∑[n+2])`
-/

namespace A253835.P6174812088447955604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253835.P6174812088447955604

/-! ## A253835.P12145303147240756342

`record[A253841(A000096(A004736(n+1)))]`
-/

namespace A253835.P12145303147240756342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253835.P12145303147240756342

/-! ## A253835.P17562737877941557434

`record[A253841(A000096(A027750(n+1)))]`
-/

namespace A253835.P17562737877941557434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000096 (A027750 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253835.P17562737877941557434

/-! ## A253835.P17479934657537431389

`record[A253841(A000096(A032742(n+1)))]`
-/

namespace A253835.P17479934657537431389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253835.P17479934657537431389

/-! ## A253835.P8953796574326857612

`record[A253841(A000096(A058933(n+1)))]`
-/

namespace A253835.P8953796574326857612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000096 (A058933 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253835.P8953796574326857612

/-!
# A253836: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253836, there is no canonical definition to state claims against.
-/

/-! ## A253836.P7768231509981737671

`A253841(∑[n+3]+1)`
-/

namespace A253836.P7768231509981737671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253836.P7768231509981737671

/-!
# A253837: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253837, there is no canonical definition to state claims against.
-/

/-! ## A253837.P9881939270000785257

`A253841(A027379(n+2))`
-/

namespace A253837.P9881939270000785257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A027379 (n + 2)).toNat

end

end A253837.P9881939270000785257

/-! ## A253837.P14251658356075935624

`A253841(A055998(n+2))`
-/

namespace A253837.P14251658356075935624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A055998 (n + 2)).toNat

end

end A253837.P14251658356075935624

/-! ## A253837.P16301480683553519617

`A253841(A155212(n)+5)`
-/

namespace A253837.P16301480683553519617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A155212 n + 5).toNat

end

end A253837.P16301480683553519617

/-! ## A253837.P17387766017367914278

`A253841(A056000(n)+7)`
-/

namespace A253837.P17387766017367914278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A056000 n + 7).toNat

end

end A253837.P17387766017367914278

/-! ## A253837.P1312017262635195887

`A253841(A052905(n+1)+2)`
-/

namespace A253837.P1312017262635195887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A052905 (n + 1) + 2).toNat

end

end A253837.P1312017262635195887

/-!
# A253838: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253838, there is no canonical definition to state claims against.
-/

/-! ## A253838.P1577881329442290327

`A253841(∑[n+5]+6)`
-/

namespace A253838.P1577881329442290327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253838.P1577881329442290327

/-! ## A253838.P1860342545414169846

`lcm(A000038(n)!, A253841(A052905(n+2)+1))`
-/

namespace A253838.P1860342545414169846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) (A253841 (A052905 (n + 2) + 1).toNat)

end

end A253838.P1860342545414169846

/-! ## A253838.P15293926410117116450

`char[A004442(n)]*A253841(A052905(n+2)+1)`
-/

namespace A253838.P15293926410117116450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A253841 (A052905 (n + 2) + 1).toNat

end

end A253838.P15293926410117116450

/-! ## A253838.P17614162917139874456

`A253841(A052905(n+2)+1)+char[A016972(2*n)]`
-/

namespace A253838.P17614162917139874456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016972 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A052905 (n + 2) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A253838.P17614162917139874456

/-!
# A253839: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253839, there is no canonical definition to state claims against.
-/

/-! ## A253839.P10611658131400682853

`A253841(A052905(n+3))`
-/

namespace A253839.P10611658131400682853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A052905 (n + 3)).toNat

end

end A253839.P10611658131400682853

/-! ## A253839.P6159233312622953581

`A253841(A055999(n+3)+1)`
-/

namespace A253839.P6159233312622953581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A055999 (n + 3) + 1).toNat

end

end A253839.P6159233312622953581

/-! ## A253839.P11497532435464370887

`A253841(A000217(n+6)-5)`
-/

namespace A253839.P11497532435464370887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000217 (n + 6) - 5).toNat

end

end A253839.P11497532435464370887

/-! ## A253839.P12654914452840201654

`A253841(A000124(n+6)-6)`
-/

namespace A253839.P12654914452840201654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000124 (n + 6) - 6).toNat

end

end A253839.P12654914452840201654

/-! ## A253839.P8231809044652026570

`A253841(Δ[A023551(n+1)]+1)`
-/

namespace A253839.P8231809044652026570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (f1 (n + 1) - f1 n + 1).toNat

end

end A253839.P8231809044652026570

/-!
# A253840: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253840, there is no canonical definition to state claims against.
-/

/-! ## A253840.P12526078046697238148

`A253841(Δ[A023551(n+2)])`
-/

namespace A253840.P12526078046697238148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (f1 (n + 1) - f1 n).toNat

end

end A253840.P12526078046697238148

/-! ## A253840.P6888891391813132050

`A253841(A034856(n+6)-4)`
-/

namespace A253840.P6888891391813132050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A034856 (n + 6) - 4).toNat

end

end A253840.P6888891391813132050

/-! ## A253840.P9797901363126008815

`A253841(A000124(n+7)-7)`
-/

namespace A253840.P9797901363126008815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000124 (n + 7) - 7).toNat

end

end A253840.P9797901363126008815

/-! ## A253840.P3931207136871283030

`A253841(A000217(n+6)+n+1)`
-/

namespace A253840.P3931207136871283030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A253840.P3931207136871283030

/-! ## A253840.P5706796737801674352

`A253841(Δ[n²]+A000124(n+5)+5)`
-/

namespace A253840.P5706796737801674352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A253840.P5706796737801674352

/-!
# A253842: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253842, there is no canonical definition to state claims against.
-/

/-! ## A253842.P10692505955805802692

`A253841(∑[n+1]+2)`
-/

namespace A253842.P10692505955805802692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253842.P10692505955805802692

/-! ## A253842.P15538252941223132983

`record[gcd(A059365(n), A253841(n+2))]`
-/

namespace A253842.P15538252941223132983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059365 n) (A253841 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253842.P15538252941223132983

/-! ## A253842.P9827402065817759198

`record[gcd(A097805(n+1), A253841(n+3))]`
-/

namespace A253842.P9827402065817759198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097805 (n + 1)) (A253841 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253842.P9827402065817759198

/-!
# A253843: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253843, there is no canonical definition to state claims against.
-/

/-! ## A253843.P8881674789473381632

`A253841(∑[n+2]+4)`
-/

namespace A253843.P8881674789473381632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253843.P8881674789473381632

/-! ## A253843.P8995587093532183530

`A253841(A167614(n+1))+A025439(n)`
-/

namespace A253843.P8995587093532183530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A167614 (n + 1)).toNat + A025439 n

end

end A253843.P8995587093532183530

/-! ## A253843.P12039018876306211229

`A253841(A167614(n+1))+A025444(n)`
-/

namespace A253843.P12039018876306211229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A167614 (n + 1)).toNat + A025444 n

end

end A253843.P12039018876306211229

/-! ## A253843.P7449344764958107854

`lcm(A020985(n), A253841(A167614(n+1)))`
-/

namespace A253843.P7449344764958107854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A253841 (A167614 (n + 1)).toNat)

end

end A253843.P7449344764958107854

/-! ## A253843.P3467534208261037776

`A253841(A167614(n+1))%A251638(n+1)`
-/

namespace A253843.P3467534208261037776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253841 (A167614 (n + 1)).toNat) (A251638 (n + 1))

end

end A253843.P3467534208261037776

/-!
# A253844: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253844, there is no canonical definition to state claims against.
-/

/-! ## A253844.P14384642574614831384

`A253841(A145018(n+4))`
-/

namespace A253844.P14384642574614831384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A145018 (n + 4)).toNat

end

end A253844.P14384642574614831384

/-! ## A253844.P4486828116594608292

`A253841(A052905(n)+9)`
-/

namespace A253844.P4486828116594608292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A052905 n + 9).toNat

end

end A253844.P4486828116594608292

/-! ## A253844.P8908486314859535477

`A253841(A055999(n)+10)`
-/

namespace A253844.P8908486314859535477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A055999 n + 10).toNat

end

end A253844.P8908486314859535477

/-! ## A253844.P1160177019909155470

`A253841(Δ[A008778(n)]+6)`
-/

namespace A253844.P1160177019909155470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (f1 (n + 1) - f1 n + 6).toNat

end

end A253844.P1160177019909155470

/-! ## A253844.P6966970714990837124

`A253841(A167614(n+2)+1)`
-/

namespace A253844.P6966970714990837124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A167614 (n + 2) + 1).toNat

end

end A253844.P6966970714990837124

/-!
# A253845: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253845, there is no canonical definition to state claims against.
-/

/-! ## A253845.P15675023645794617544

`A253841(∑[n+3]+n+12)`
-/

namespace A253845.P15675023645794617544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A253845.P15675023645794617544

/-! ## A253845.P17200894497032205612

`A253841(A056000(n)+15)+A025444(n)`
-/

namespace A253845.P17200894497032205612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A056000 n + 15).toNat + A025444 n

end

end A253845.P17200894497032205612

/-! ## A253845.P1676008048573520843

`A158388(n)²*A253841(A027379(n+2)+8)`
-/

namespace A253845.P1676008048573520843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2 * A253841 (A027379 (n + 2) + 8).toNat

end

end A253845.P1676008048573520843

/-! ## A253845.P1718312828430400520

`A178334(n)!*A253841(A027379(n+2)+8)`
-/

namespace A253845.P1718312828430400520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A178334 n).toNat : ℤ) * A253841 (A027379 (n + 2) + 8).toNat

end

end A253845.P1718312828430400520

/-! ## A253845.P256257829367689947

`A023527(n+1)%2*A253841(A167499(n+3))`
-/

namespace A253845.P256257829367689947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023527 (n + 1)) 2 * A253841 (A167499 (n + 3)).toNat

end

end A253845.P256257829367689947

/-!
# A253846: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253846, there is no canonical definition to state claims against.
-/

/-! ## A253846.P18209537858485400637

`A253841(A167499(n+4)+1)`
-/

namespace A253846.P18209537858485400637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A167499 (n + 4) + 1).toNat

end

end A253846.P18209537858485400637

/-! ## A253846.P1444449130660447502

`A253841(A167614(n+4)+3)`
-/

namespace A253846.P1444449130660447502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A167614 (n + 4) + 3).toNat

end

end A253846.P1444449130660447502

/-! ## A253846.P7512841747058585972

`A253841(A000124(n+5)+5)`
-/

namespace A253846.P7512841747058585972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000124 (n + 5) + 5).toNat

end

end A253846.P7512841747058585972

/-! ## A253846.P4043839921321271238

`A253841(A253145(n+4)+6)`
-/

namespace A253846.P4043839921321271238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A253145 (n + 4) + 6).toNat

end

end A253846.P4043839921321271238

/-! ## A253846.P11043526538935487287

`A253841(A000217(n+5)+6)`
-/

namespace A253846.P11043526538935487287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000217 (n + 5) + 6).toNat

end

end A253846.P11043526538935487287

/-!
# A253847: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal sum plus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253847, there is no canonical definition to state claims against.
-/

/-! ## A253847.P3408051032040827044

`A253841(A167487(n+5))`
-/

namespace A253847.P3408051032040827044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A167487 (n + 5)).toNat

end

end A253847.P3408051032040827044

/-! ## A253847.P4447260251633932051

`A253841(A167499(n+5)+2)`
-/

namespace A253847.P4447260251633932051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A167499 (n + 5) + 2).toNat

end

end A253847.P4447260251633932051

/-! ## A253847.P17446735042864332840

`A253841(A000124(n+6)+6)`
-/

namespace A253847.P17446735042864332840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000124 (n + 6) + 6).toNat

end

end A253847.P17446735042864332840

/-! ## A253847.P7356689950642251728

`A253841(A253145(n+5)+7)`
-/

namespace A253847.P7356689950642251728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A253145 (n + 5) + 7).toNat

end

end A253847.P7356689950642251728

/-! ## A253847.P3758044711650212359

`A253841(A000217(n+6)+7)`
-/

namespace A253847.P3758044711650212359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253841 (A000217 (n + 6) + 7).toNat

end

end A253847.P3758044711650212359

/-!
# A253848: Primes p such that the digit sums of p, p + 4 and p^2 + 4 are all prime.

The programs for A253848, there is no canonical definition to state claims against.
-/

/-! ## A253848.P17152321630446825773

`A136801(A230310(n+1))`
-/

namespace A253848.P17152321630446825773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136801 (A230310 (n + 1)).toNat

end

end A253848.P17152321630446825773

/-!
# A253850: Mersenne exponents (A000043) that are the sum of the divisors (A000203) of some n.

The programs for A253850, there is no canonical definition to state claims against.
-/

/-! ## A253850.P9443833849745509740

`p?[∑{d}[ceil(ϕ*n), #]]`
-/

namespace A253850.P9443833849745509740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A253850.P9443833849745509740

/-!
# A253851: 

The programs for A253851, there is no canonical definition to state claims against.
-/

/-! ## A253851.P5000779038748211578

`A000225(A023195(n+1))`
-/

namespace A253851.P5000779038748211578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A023195 (n + 1)).toNat

end

end A253851.P5000779038748211578

/-!
# A253852: a(n) = a(n-4) * (a(n-3) + a(n-1)) / a(n-3), with a(0) = a(1) = a(2) = a(3) = 1.

The programs for A253852, the canonical program `A253852.P18170197630060000884` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253852 has offset 0).

The definition of A253852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253852.P18170197630060000884

`a(n-4)*(a(n-3)+a(n-1))/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253852

/-- `a(n-4)*(a(n-3)+a(n-1))/a(n-3)` -/
def P18170197630060000884.Spec : Prop :=
  ∀ n, P18170197630060000884.a n = (A253852 n : ℚ)

end A253852

/-! ## A253852.P16203861714505539997

`(a(n-1)/a(n-3)+1)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A253852.P16203861714505539997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) / a (n - 3) + 1) * a (n - 4)

end

end A253852.P16203861714505539997

namespace A253852

/-- `(a(n-1)/a(n-3)+1)*a(n-4)` -/
def P16203861714505539997.Spec : Prop :=
  ∀ n, P16203861714505539997.a n = (A253852 n : ℚ)

end A253852

/-! ## A253852.P10661460621532018445

`a(n-2)*A076839(n+4)` with `a(0)=1, a(1)=1`
-/

namespace A253852.P10661460621532018445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A076839 (n + 4)

end

end A253852.P10661460621532018445

namespace A253852

/-- `a(n-2)*A076839(n+4)` -/
def P10661460621532018445.Spec : Prop :=
  ∀ n, P10661460621532018445.a n = A253852 n

end A253852

/-! ## A253852.P13339891251745959269

`a(n-2)*Δ[A265227(n+3)]` with `a(0)=1, a(1)=1`
-/

namespace A253852.P13339891251745959269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * (f1 (n + 1) - f1 n)

end

end A253852.P13339891251745959269

namespace A253852

/-- `a(n-2)*Δ[A265227(n+3)]` -/
def P13339891251745959269.Spec : Prop :=
  ∀ n, P13339891251745959269.a n = A253852 n

end A253852

/-! ## A253852.P15698892619727670584

`A078495(n+3)/A078495(n)`
-/

namespace A253852.P15698892619727670584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078495 (n + 3) : ℚ) / (A078495 n : ℚ)

end

end A253852.P15698892619727670584

namespace A253852

/-- `A078495(n+3)/A078495(n)` -/
def P15698892619727670584.Spec : Prop :=
  ∀ n, P15698892619727670584.a n = (A253852 n : ℚ)

end A253852

/-!
# A253853: a(n) = 1 + a(n-2)*a(n-3), with a(0) = a(1) = a(2) = 1.

The programs for A253853, the canonical program `A253853.P8636596441030551462` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253853 has offset 0).

The definition of A253853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-2)*a(n-3)` (program `A253853.P8636596441030551462`, by `A253853.P8636596441030551462.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253853.P8636596441030551462

`1+a(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253853

/-- `1+a(n-2)*a(n-3)` -/
def P8636596441030551462.Spec : Prop :=
  ∀ n, (P8636596441030551462.a n : ℤ) = A253853 n

theorem P8636596441030551462.correct : P8636596441030551462.Spec := by
  intro n
  simp only [A253853]

end A253853

/-! ## A253853.P2664064795426607020

`a(n-2)/a(n-3)^(-1)+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A253853.P2664064795426607020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) / a (n - 3) ^ (-1 : ℤ) + 1

end

end A253853.P2664064795426607020

namespace A253853

/-- `a(n-2)/a(n-3)^(-1)+1` -/
def P2664064795426607020.Spec : Prop :=
  ∀ n, P2664064795426607020.a n = (A253853 n : ℚ)

end A253853

/-! ## A253853.P10009723904668867709

`a(n-2)*a(n-3)-A057428(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A253853.P10009723904668867709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) * a (n - 3) - A057428 n

end

end A253853.P10009723904668867709

namespace A253853

/-- `a(n-2)*a(n-3)-A057428(n)` -/
def P10009723904668867709.Spec : Prop :=
  ∀ n, P10009723904668867709.a n = A253853 n

end A253853

/-! ## A253853.P2904122791770352735

`a(n-2)*a(n-3)-A260196(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A253853.P2904122791770352735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) * a (n - 3) - A260196 n

end

end A253853.P2904122791770352735

namespace A253853

/-- `a(n-2)*a(n-3)-A260196(n)` -/
def P2904122791770352735.Spec : Prop :=
  ∀ n, P2904122791770352735.a n = A253853 n

end A253853

/-! ## A253853.P4472214527299472411

`ratio[A253832(n)]`
-/

namespace A253853.P4472214527299472411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253832 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A253853.P4472214527299472411

namespace A253853

/-- `ratio[A253832(n)]` -/
def P4472214527299472411.Spec : Prop :=
  ∀ n, P4472214527299472411.a n = (A253853 n : ℚ)

end A253853

/-!
# A253855: a(n) = H_n(4,2) where H_n is the n-th hyperoperator.

The programs for A253855, there is no canonical definition to state claims against.
-/

/-! ## A253855.P798067452087734661

`a(n-1)²` with `a(0)=3, a(1)=6, a(2)=8, a(3)=16`
-/

namespace A253855.P798067452087734661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 8, 16] fun n a =>
  a (n - 1) ^ 2

end

end A253855.P798067452087734661

/-!
# A253856: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253856, there is no canonical definition to state claims against.
-/

/-! ## A253856.P3162754457110561798

`A254491(∑[n]+1)`
-/

namespace A253856.P3162754457110561798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254491 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253856.P3162754457110561798

/-! ## A253856.P2332792228927204226

`lcm(2, A254491(A000124(n)))`
-/

namespace A253856.P2332792228927204226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254491 (A000124 n).toNat)

end

end A253856.P2332792228927204226

/-! ## A253856.P13436666786065273740

`record[A254491(n+1)/A158116(n)]`
-/

namespace A253856.P13436666786065273740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254491 (n + 1) : ℚ) / (A158116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253856.P13436666786065273740

/-! ## A253856.P13740919492192737865

`record[root(A254491(n+1), A007318(n))]`
-/

namespace A253856.P13740919492192737865
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254491 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253856.P13740919492192737865

/-! ## A253856.P1954126306605322525

`record[root(A254491(n+1), A131061(n))]`
-/

namespace A253856.P1954126306605322525
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254491 (n + 1) : ℝ) ^ (1 / (A131061 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253856.P1954126306605322525

/-!
# A253857: Number of (n+2) X (2+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253857, there is no canonical definition to state claims against.
-/

/-! ## A253857.P11111428172619306535

`A253863(∑[n+1]+2)`
-/

namespace A253857.P11111428172619306535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253857.P11111428172619306535

/-! ## A253857.P15832679326680760397

`record[A253863(abs(A201163(n)))]`
-/

namespace A253857.P15832679326680760397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253857.P15832679326680760397

/-! ## A253857.P8282328595275041377

`record[A253863(lt[A158116(n), n])]`
-/

namespace A253857.P8282328595275041377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158116 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253857.P8282328595275041377

/-! ## A253857.P85572666776067325

`record[A253863(Δ[A003453(n+5)])]`
-/

namespace A253857.P85572666776067325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253857.P85572666776067325

/-! ## A253857.P9395584426930622202

`record[gcd(A253830(n+1), A253863(n+3))]`
-/

namespace A253857.P9395584426930622202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253830 (n + 1)) (A253863 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253857.P9395584426930622202

/-!
# A253858: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253858, there is no canonical definition to state claims against.
-/

/-! ## A253858.P12966756651464035007

`A253863(∑[n+2]+4)`
-/

namespace A253858.P12966756651464035007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253858.P12966756651464035007

/-! ## A253858.P7454912037808917848

`lcm(2, A253863(A167614(n+1)))`
-/

namespace A253858.P7454912037808917848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253863 (A167614 (n + 1)).toNat)

end

end A253858.P7454912037808917848

/-! ## A253858.P7467749328310306976

`A016056(n)*A253863(A167614(n+1))`
-/

namespace A253858.P7467749328310306976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016056 n * A253863 (A167614 (n + 1)).toNat

end

end A253858.P7467749328310306976

/-! ## A253858.P10880338162215529289

`A253863(A167614(n+1))%A253859(n+1)`
-/

namespace A253858.P10880338162215529289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253863 (A167614 (n + 1)).toNat) (A253859 (n + 1))

end

end A253858.P10880338162215529289

/-! ## A253858.P11368305932288197385

`A253863(A055999(n)+4)%A253859(n+1)`
-/

namespace A253858.P11368305932288197385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253863 (A055999 n + 4).toNat) (A253859 (n + 1))

end

end A253858.P11368305932288197385

/-!
# A253859: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253859, there is no canonical definition to state claims against.
-/

/-! ## A253859.P17561780602449773012

`A253863(A374004(n+1))`
-/

namespace A253859.P17561780602449773012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A374004 (n + 1)).toNat

end

end A253859.P17561780602449773012

/-! ## A253859.P16201250110588125811

`A253863(A141214(n)+7)`
-/

namespace A253859.P16201250110588125811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A141214 n + 7).toNat

end

end A253859.P16201250110588125811

/-! ## A253859.P14265112661609437644

`A253863(A052905(n)+9)`
-/

namespace A253859.P14265112661609437644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A052905 n + 9).toNat

end

end A253859.P14265112661609437644

/-! ## A253859.P12712690659922583989

`A253863(A055999(n)+10)`
-/

namespace A253859.P12712690659922583989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A055999 n + 10).toNat

end

end A253859.P12712690659922583989

/-! ## A253859.P11180965107898884658

`A253863(A167614(n+2)+1)`
-/

namespace A253859.P11180965107898884658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A167614 (n + 2) + 1).toNat

end

end A253859.P11180965107898884658

/-!
# A253860: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253860, there is no canonical definition to state claims against.
-/

/-! ## A253860.P15345102014510178865

`A253863(A374005(n+1))`
-/

namespace A253860.P15345102014510178865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A374005 (n + 1)).toNat

end

end A253860.P15345102014510178865

/-! ## A253860.P12682095381147138860

`A253863(eq[6, A131818(n+1)])`
-/

namespace A253860.P12682095381147138860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253860.P12682095381147138860

/-! ## A253860.P6195404993359479013

`A253863(Δ[A264443(n)])`
-/

namespace A253860.P6195404993359479013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (f1 (n + 1) - f1 n).toNat

end

end A253860.P6195404993359479013

/-! ## A253860.P9913109823124433659

`A253863(Δ[A023545(n+1)])`
-/

namespace A253860.P9913109823124433659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (f1 (n + 1) - f1 n).toNat

end

end A253860.P9913109823124433659

/-! ## A253860.P15129659582126386931

`A253863(eq[6, A185782(n+1)])`
-/

namespace A253860.P15129659582126386931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253860.P15129659582126386931

/-!
# A253861: Number of (n+2) X (6+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253861, there is no canonical definition to state claims against.
-/

/-! ## A253861.P11368202152197832272

`A253863(A374007(n+1))`
-/

namespace A253861.P11368202152197832272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A374007 (n + 1)).toNat

end

end A253861.P11368202152197832272

/-! ## A253861.P10391658572814471715

`A253863(eq[7, A131818(n+1)])`
-/

namespace A253861.P10391658572814471715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253861.P10391658572814471715

/-! ## A253861.P3652425228352523246

`A253863(Δ[A264443(n+1)]-1)`
-/

namespace A253861.P3652425228352523246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (f1 (n + 1) - f1 n - 1).toNat

end

end A253861.P3652425228352523246

/-! ## A253861.P10238768152877015891

`A253863(eq[6, A195079(n+1)])`
-/

namespace A253861.P10238768152877015891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253861.P10238768152877015891

/-!
# A253862: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal minimum nondecreasing horizontally and vertically.

The programs for A253862, there is no canonical definition to state claims against.
-/

/-! ## A253862.P1012964214551232880

`A253863(A374008(n+1))`
-/

namespace A253862.P1012964214551232880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A374008 (n + 1)).toNat

end

end A253862.P1012964214551232880

/-! ## A253862.P5795598488164767404

`A253863(A055999(n+4))`
-/

namespace A253862.P5795598488164767404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253863 (A055999 (n + 4)).toNat

end

end A253862.P5795598488164767404

/-!
# A253864: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253864, there is no canonical definition to state claims against.
-/

/-! ## A253864.P810877248561565921

`A253871(∑[4*n]+1)`
-/

namespace A253864.P810877248561565921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253864.P810877248561565921

/-!
# A253865: Number of (n+2) X (2+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253865, there is no canonical definition to state claims against.
-/

/-! ## A253865.P10336740421746273573

`A253871(∑[n+2])`
-/

namespace A253865.P10336740421746273573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253865.P10336740421746273573

/-! ## A253865.P5568979850162763641

`record[A253871(A000217(val(n+1, 2)+2)-1)]`
-/

namespace A253865.P5568979850162763641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A000217 (SequenceMachineLib.valuation (n + 1) 2 + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253865.P5568979850162763641

/-! ## A253865.P18151284224139765751

`record[A253871(A198453(n+1))]`
-/

namespace A253865.P18151284224139765751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253865.P18151284224139765751

/-!
# A253866: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253866, there is no canonical definition to state claims against.
-/

/-! ## A253866.P6392742013068163366

`A253871(∑[n+3]+1)`
-/

namespace A253866.P6392742013068163366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253866.P6392742013068163366

/-!
# A253867: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253867, there is no canonical definition to state claims against.
-/

/-! ## A253867.P16565122315920666775

`A253871(A141214(n+1))`
-/

namespace A253867.P16565122315920666775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A141214 (n + 1)).toNat

end

end A253867.P16565122315920666775

/-! ## A253867.P4033834996286447395

`A253871(A027379(n+2))`
-/

namespace A253867.P4033834996286447395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A027379 (n + 2)).toNat

end

end A253867.P4033834996286447395

/-! ## A253867.P3789141770423221563

`A253871(A055998(n+2))`
-/

namespace A253867.P3789141770423221563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A055998 (n + 2)).toNat

end

end A253867.P3789141770423221563

/-! ## A253867.P15932068771228945091

`A253871(A155212(n)+5)`
-/

namespace A253867.P15932068771228945091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A155212 n + 5).toNat

end

end A253867.P15932068771228945091

/-! ## A253867.P15271598114910637716

`A253871(A056000(n)+7)`
-/

namespace A253867.P15271598114910637716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A056000 n + 7).toNat

end

end A253867.P15271598114910637716

/-!
# A253868: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253868, there is no canonical definition to state claims against.
-/

/-! ## A253868.P18265597195073010919

`A253871(A046691(n+3))`
-/

namespace A253868.P18265597195073010919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A046691 (n + 3)).toNat

end

end A253868.P18265597195073010919

/-! ## A253868.P5456270515166206048

`A253871(eq[3, A152157(n)])`
-/

namespace A253868.P5456270515166206048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253868.P5456270515166206048

/-! ## A253868.P4046026162394508963

`A253871(eq[4, A193592(n)])`
-/

namespace A253868.P4046026162394508963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253868.P4046026162394508963

/-! ## A253868.P7991028133014383120

`A253871(Δ[A023545(n+1)])`
-/

namespace A253868.P7991028133014383120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (f1 (n + 1) - f1 n).toNat

end

end A253868.P7991028133014383120

/-! ## A253868.P13935785329765003821

`A253871(eq[4, A168396(n+1)])`
-/

namespace A253868.P13935785329765003821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253868.P13935785329765003821

/-!
# A253869: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253869, there is no canonical definition to state claims against.
-/

/-! ## A253869.P4604308277796129681

`A253871(eq[5, A193592(n)])`
-/

namespace A253869.P4604308277796129681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253869.P4604308277796129681

/-! ## A253869.P149793685938552724

`A253871(Δ[A023545(n+2)]-1)`
-/

namespace A253869.P149793685938552724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (f1 (n + 1) - f1 n - 1).toNat

end

end A253869.P149793685938552724

/-!
# A253870: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253870, there is no canonical definition to state claims against.
-/

/-! ## A253870.P5762651670408984231

`A253871(A055999(n+4))`
-/

namespace A253870.P5762651670408984231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A055999 (n + 4)).toNat

end

end A253870.P5762651670408984231

/-! ## A253870.P9033099118364363853

`A253871(eq[6, A193592(n)])`
-/

namespace A253870.P9033099118364363853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253870.P9033099118364363853

/-!
# A253872: Number of (2+2) X (n+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253872, there is no canonical definition to state claims against.
-/

/-! ## A253872.P12970918892337661816

`A253871(∑[n+1]+2)`
-/

namespace A253872.P12970918892337661816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253872.P12970918892337661816

/-! ## A253872.P6636210608125947121

`record[A010054(n)*A253871(n+2)]`
-/

namespace A253872.P6636210608125947121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A253871 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253872.P6636210608125947121

/-! ## A253872.P4168647049619981135

`record[gcd(A002262(n), A253871(n+2))]`
-/

namespace A253872.P4168647049619981135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A253871 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253872.P4168647049619981135

/-! ## A253872.P179239467023725989

`record[gcd(A025581(n), A253871(n+3))]`
-/

namespace A253872.P179239467023725989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A253871 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253872.P179239467023725989

/-! ## A253872.P4530534240961119151

`record[A253871(C(val(n+1, 2)+2, 2)+2)]`
-/

namespace A253872.P4530534240961119151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (Nat.choose (SequenceMachineLib.valuation (n + 1) 2 + 2) 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253872.P4530534240961119151

/-!
# A253873: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253873, there is no canonical definition to state claims against.
-/

/-! ## A253873.P14456791883994162362

`A253871(∑[n+2]+4)`
-/

namespace A253873.P14456791883994162362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253873.P14456791883994162362

/-! ## A253873.P3566311199920461624

`lcm(2, A253871(A167614(n+1)))`
-/

namespace A253873.P3566311199920461624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253871 (A167614 (n + 1)).toNat)

end

end A253873.P3566311199920461624

/-! ## A253873.P3181212356145282298

`A253871(A167614(n+1))+A025469(n)`
-/

namespace A253873.P3181212356145282298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A167614 (n + 1)).toNat + A025469 n

end

end A253873.P3181212356145282298

/-! ## A253873.P2581567963923752281

`A253871(A167614(n+1))+A185284(n)`
-/

namespace A253873.P2581567963923752281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A167614 (n + 1)).toNat + A185284 n

end

end A253873.P2581567963923752281

/-! ## A253873.P2307872326652842236

`A253871(A167614(n+1))%A209514(n+1)`
-/

namespace A253873.P2307872326652842236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253871 (A167614 (n + 1)).toNat) (A209514 (n + 1))

end

end A253873.P2307872326652842236

/-!
# A253874: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253874, there is no canonical definition to state claims against.
-/

/-! ## A253874.P12059950991768195751

`A253871(A141214(n)+7)`
-/

namespace A253874.P12059950991768195751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A141214 n + 7).toNat

end

end A253874.P12059950991768195751

/-! ## A253874.P5286045399955163233

`A253871(A052905(n)+9)`
-/

namespace A253874.P5286045399955163233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A052905 n + 9).toNat

end

end A253874.P5286045399955163233

/-! ## A253874.P14100013551449740838

`A253871(A055999(n)+10)`
-/

namespace A253874.P14100013551449740838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A055999 n + 10).toNat

end

end A253874.P14100013551449740838

/-! ## A253874.P6174529406571546405

`A253871(A167614(n+2)+1)`
-/

namespace A253874.P6174529406571546405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A167614 (n + 2) + 1).toNat

end

end A253874.P6174529406571546405

/-! ## A253874.P15699235806937911672

`A253871(A027379(n+1)+7)`
-/

namespace A253874.P15699235806937911672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A027379 (n + 1) + 7).toNat

end

end A253874.P15699235806937911672

/-!
# A253875: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253875, there is no canonical definition to state claims against.
-/

/-! ## A253875.P18376731601900428180

`A253871(A167499(n+3))`
-/

namespace A253875.P18376731601900428180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A167499 (n + 3)).toNat

end

end A253875.P18376731601900428180

/-! ## A253875.P5265060487748942154

`A253871(A155212(n)+13)`
-/

namespace A253875.P5265060487748942154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A155212 n + 13).toNat

end

end A253875.P5265060487748942154

/-! ## A253875.P5242427337924126292

`A253871(A056000(n)+15)`
-/

namespace A253875.P5242427337924126292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A056000 n + 15).toNat

end

end A253875.P5242427337924126292

/-! ## A253875.P11329689796447760673

`A253871(A000217(n+4)+5)`
-/

namespace A253875.P11329689796447760673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A000217 (n + 4) + 5).toNat

end

end A253875.P11329689796447760673

/-! ## A253875.P6061807486464964188

`A253871(A141214(n+1)+8)`
-/

namespace A253875.P6061807486464964188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A141214 (n + 1) + 8).toNat

end

end A253875.P6061807486464964188

/-!
# A253876: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253876, there is no canonical definition to state claims against.
-/

/-! ## A253876.P3087005862341455130

`A253871(∑[A020710(n)]+16)`
-/

namespace A253876.P3087005862341455130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A253876.P3087005862341455130

/-!
# A253877: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum minus antidiagonal minimum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A253877, there is no canonical definition to state claims against.
-/

/-! ## A253877.P1041623536945873567

`A253871(A145018(n+7)+3)`
-/

namespace A253877.P1041623536945873567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253871 (A145018 (n + 7) + 3).toNat

end

end A253877.P1041623536945873567

/-!
# A253878: Indices of triangular numbers (A000217) which are also centered heptagonal numbers (A069099).

The programs for A253878, the canonical program `A253878.P11443367901675095446` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253878 has offset 1).

The definition of A253878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253878.P11443367901675095446

`17*a(n-1)-17*a(n-2)+a(n-3)` with `a(0)=1, a(1)=22, a(2)=358`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253878

/-- `17*a(n-1)-17*a(n-2)+a(n-3)` -/
def P11443367901675095446.Spec : Prop :=
  ∀ n, P11443367901675095446.a n = A253878 (n + 1)

theorem P11443367901675095446.correct : P11443367901675095446.Spec := by
  intro n
  simp only [A253878, Nat.add_sub_cancel]

end A253878

/-! ## A253878.P3564773689448832544

`∑[ogf((1+5x+x^2)/(1-16x+x^2))]`
-/

namespace A253878.P3564773689448832544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1] [1, -16, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253878.P3564773689448832544

namespace A253878

/-- `∑[ogf((1+5x+x^2)/(1-16x+x^2))]` -/
def P3564773689448832544.Spec : Prop :=
  ∀ n, P3564773689448832544.a n = A253878 (n + 1)

end A253878

/-! ## A253878.P196526782815231150

`∑[7*A001080(n)]+1`
-/

namespace A253878.P196526782815231150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A001080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A253878.P196526782815231150

namespace A253878

/-- `∑[7*A001080(n)]+1` -/
def P196526782815231150.Spec : Prop :=
  ∀ n, P196526782815231150.a n = A253878 (n + 1)

end A253878

/-! ## A253878.P15015276092464534370

`7*∑[A204517(3*n+2)]+1`
-/

namespace A253878.P15015276092464534370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204517 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A253878.P15015276092464534370

namespace A253878

/-- `7*∑[A204517(3*n+2)]+1` -/
def P15015276092464534370.Spec : Prop :=
  ∀ n, P15015276092464534370.a n = A253878 (n + 1)

end A253878

/-! ## A253878.P348884854725332126

`floor(3/2*A041111(A005843(n)))`
-/

namespace A253878.P348884854725332126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A041111 (A005843 n).toNat : ℚ)⌋

end

end A253878.P348884854725332126

namespace A253878

/-- `floor(3/2*A041111(A005843(n)))` -/
def P348884854725332126.Spec : Prop :=
  ∀ n, P348884854725332126.a n = A253878 (n + 1)

end A253878

/-! ## A253878.P1880122629676761326

`floor(A157456(n+1)+A157456(n+1)/2)`
-/

namespace A253878.P1880122629676761326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157456 (n + 1) : ℚ) + (A157456 (n + 1) : ℚ) / 2⌋

end

end A253878.P1880122629676761326

namespace A253878

/-- `floor(A157456(n+1)+A157456(n+1)/2)` -/
def P1880122629676761326.Spec : Prop :=
  ∀ n, P1880122629676761326.a n = A253878 (n + 1)

end A253878

/-! ## A253878.P16705576120052235942

`floor(Δ[A001080(n)/2])`
-/

namespace A253878.P16705576120052235942
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001080 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A253878.P16705576120052235942

namespace A253878

/-- `floor(Δ[A001080(n)/2])` -/
def P16705576120052235942.Spec : Prop :=
  ∀ n, P16705576120052235942.a n = A253878 (n + 1)

end A253878

/-! ## A253878.P17478900617280444052

`floor(A266698(n+1)/2)`
-/

namespace A253878.P17478900617280444052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266698 (n + 1) : ℚ) / 2⌋

end

end A253878.P17478900617280444052

namespace A253878

/-- `floor(A266698(n+1)/2)` -/
def P17478900617280444052.Spec : Prop :=
  ∀ n, P17478900617280444052.a n = A253878 (n + 1)

end A253878

/-! ## A253878.P7969969578002794785

`(3*A157456(n+1)-1)/2`
-/

namespace A253878.P7969969578002794785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A157456 (n + 1) - 1 : ℚ) / 2

end

end A253878.P7969969578002794785

namespace A253878

/-- `(3*A157456(n+1)-1)/2` -/
def P7969969578002794785.Spec : Prop :=
  ∀ n, P7969969578002794785.a n = (A253878 (n + 1) : ℚ)

end A253878

/-! ## A253878.P1032678569910852755

`A048908(n+1)-A001080(n)`
-/

namespace A253878.P1032678569910852755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048908 (n + 1) - A001080 n

end

end A253878.P1032678569910852755

namespace A253878

/-- `A048908(n+1)-A001080(n)` -/
def P1032678569910852755.Spec : Prop :=
  ∀ n, P1032678569910852755.a n = A253878 (n + 1)

end A253878

/-!
# A253879: Indices of centered heptagonal numbers (A069099) which are also triangular numbers (A000217).

The programs for A253879, the canonical program `A253879.P3157059213940331061` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253879 has offset 1).

The definition of A253879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253879.P3157059213940331061

`17*a(n-1)-17*a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=136`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253879

/-- `17*a(n-1)-17*a(n-2)+a(n-3)` -/
def P3157059213940331061.Spec : Prop :=
  ∀ n, P3157059213940331061.a n = A253879 (n + 1)

theorem P3157059213940331061.correct : P3157059213940331061.Spec := by
  intro n
  simp only [A253879, Nat.add_sub_cancel]

end A253879

/-! ## A253879.P15908136191117647818

`∑[ogf((1-8x)/(1-16x+x^2))]`
-/

namespace A253879.P15908136191117647818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -16, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253879.P15908136191117647818

namespace A253879

/-- `∑[ogf((1-8x)/(1-16x+x^2))]` -/
def P15908136191117647818.Spec : Prop :=
  ∀ n, P15908136191117647818.a n = A253879 (n + 1)

end A253879

/-! ## A253879.P12163320749468095145

`ceil(∑[ceil((sqrt(63)+8)^n)]/2)`
-/

namespace A253879.P12163320749468095145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (63 : ℝ) + 8) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A253879.P12163320749468095145

namespace A253879

/-- `ceil(∑[ceil((sqrt(63)+8)^n)]/2)` -/
def P12163320749468095145.Spec : Prop :=
  ∀ n, P12163320749468095145.a n = A253879 (n + 1)

end A253879

/-! ## A253879.P4822799120815634691

`∑[16*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=8`
-/

namespace A253879.P4822799120815634691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  16 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253879.P4822799120815634691

namespace A253879

/-- `∑[16*a(n-1)-a(n-2)]` -/
def P4822799120815634691.Spec : Prop :=
  ∀ n, P4822799120815634691.a n = A253879 (n + 1)

end A253879

/-! ## A253879.P55045076849776912

`∑[A001081(n)]`
-/

namespace A253879.P55045076849776912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253879.P55045076849776912

namespace A253879

/-- `∑[A001081(n)]` -/
def P55045076849776912.Spec : Prop :=
  ∀ n, P55045076849776912.a n = A253879 (n + 1)

end A253879

/-! ## A253879.P10759363876692548489

`∑[A090727(n)/2]`
-/

namespace A253879.P10759363876692548489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090727 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253879.P10759363876692548489

namespace A253879

/-- `∑[A090727(n)/2]` -/
def P10759363876692548489.Spec : Prop :=
  ∀ n, P10759363876692548489.a n = (A253879 (n + 1) : ℚ)

end A253879

/-! ## A253879.P3787262543657291589

`round(A159678(n+1)/2)`
-/

namespace A253879.P3787262543657291589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A159678 (n + 1) : ℚ) / 2)

end

end A253879.P3787262543657291589

namespace A253879

/-- `round(A159678(n+1)/2)` -/
def P3787262543657291589.Spec : Prop :=
  ∀ n, P3787262543657291589.a n = A253879 (n + 1)

end A253879

/-! ## A253879.P8188486700662857101

`(Δ[A098303(n)]+1)/2`
-/

namespace A253879.P8188486700662857101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098303 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A253879.P8188486700662857101

namespace A253879

/-- `(Δ[A098303(n)]+1)/2` -/
def P8188486700662857101.Spec : Prop :=
  ∀ n, P8188486700662857101.a n = (A253879 (n + 1) : ℚ)

end A253879

/-! ## A253879.P7595861783282138169

`(A084069(2*n+1)+1)/2`
-/

namespace A253879.P7595861783282138169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084069 (2 * n + 1) + 1 : ℚ) / 2

end

end A253879.P7595861783282138169

namespace A253879

/-- `(A084069(2*n+1)+1)/2` -/
def P7595861783282138169.Spec : Prop :=
  ∀ n, P7595861783282138169.a n = (A253879 (n + 1) : ℚ)

end A253879

/-! ## A253879.P3325981947088774030

`record[A202638(n+1)-A077398(n)]`
-/

namespace A253879.P3325981947088774030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (n + 1) - A077398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253879.P3325981947088774030

namespace A253879

/-- `record[A202638(n+1)-A077398(n)]` -/
def P3325981947088774030.Spec : Prop :=
  ∀ n, P3325981947088774030.a n = A253879 (n + 1)

end A253879

/-!
# A253880: Triangular numbers (A000217) that are also centered heptagonal numbers (A069099).

The programs for A253880, the canonical program `A253880.P17666382208869447641` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253880 has offset 1).

The definition of A253880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253880.P17666382208869447641

`254*a(n-1)-a(n-2)` with `a(0)=1, a(1)=253`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253880

/-- `254*a(n-1)-a(n-2)` -/
def P17666382208869447641.Spec : Prop :=
  ∀ n, P17666382208869447641.a n = A253880 (n + 1)

theorem P17666382208869447641.correct : P17666382208869447641.Spec := by
  intro n
  simp only [A253880, Nat.add_sub_cancel]

end A253880

/-! ## A253880.P7727431868282679169

`A041853(2*n)`
-/

namespace A253880.P7727431868282679169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041853 (2 * n)

end

end A253880.P7727431868282679169

namespace A253880

/-- `A041853(2*n)` -/
def P7727431868282679169.Spec : Prop :=
  ∀ n, P7727431868282679169.a n = A253880 (n + 1)

end A253880

/-! ## A253880.P9843757632629508336

`A001081(2*n+1)/8`
-/

namespace A253880.P9843757632629508336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001081 (2 * n + 1) : ℚ) / 8

end

end A253880.P9843757632629508336

namespace A253880

/-- `A001081(2*n+1)/8` -/
def P9843757632629508336.Spec : Prop :=
  ∀ n, P9843757632629508336.a n = (A253880 (n + 1) : ℚ)

end A253880

/-! ## A253880.P2384003198702612429

`A041110(A016813(n))/8`
-/

namespace A253880.P2384003198702612429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041110 (A016813 n).toNat : ℚ) / 8

end

end A253880.P2384003198702612429

namespace A253880

/-- `A041110(A016813(n))/8` -/
def P2384003198702612429.Spec : Prop :=
  ∀ n, P2384003198702612429.a n = (A253880 (n + 1) : ℚ)

end A253880

/-! ## A253880.P8926776480128055693

`A041203(A016789(2*n))/2`
-/

namespace A253880.P8926776480128055693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041203 (A016789 (2 * n)).toNat : ℚ) / 2

end

end A253880.P8926776480128055693

namespace A253880

/-- `A041203(A016789(2*n))/2` -/
def P8926776480128055693.Spec : Prop :=
  ∀ n, P8926776480128055693.a n = (A253880 (n + 1) : ℚ)

end A253880

/-!
# A253882: Number of 3-connected planar triangulations of the sphere with n vertices up to orientation preserving isomorphisms.

The programs for A253882, there is no canonical definition to state claims against.
-/

/-! ## A253882.P13366297972874753990

`A239893((n+1)²+3)`
-/

namespace A253882.P13366297972874753990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239893 ((n + 1) ^ 2 + 3)

end

end A253882.P13366297972874753990

/-! ## A253882.P9365506121013544270

`A342059((n+2)²+2)`
-/

namespace A253882.P9365506121013544270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342059 ((n + 2) ^ 2 + 2)

end

end A253882.P9365506121013544270

/-! ## A253882.P4563196587327411652

`A384964(A133043(2*(n+1))+A002620(2*n+3))`
-/

namespace A253882.P4563196587327411652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384964 (A133043 (2 * (n + 1)) + A002620 (2 * n + 3)).toNat

end

end A253882.P4563196587327411652

/-!
# A253883: Permutation of natural numbers: a(n) = A243505(A122111(n)).

The programs for A253883, the canonical program `A253883.P1510395040157826416` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253883 has offset 1).

The definition of A253883 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243505, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253883.P1510395040157826416

`A243505(A122111(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A253883

/-- `A243505(A122111(n+1))` -/
def P1510395040157826416.Spec : Prop :=
  ∀ n, P1510395040157826416.a n = A253883 (n + 1)

theorem P1510395040157826416.correct : P1510395040157826416.Spec := by
  intro n
  simp only [A253883, Nat.add_sub_cancel]

end A253883

/-! ## A253883.P9873935379139535714

`A122111(A243061(A122111(A241909(n+1))))`
-/

namespace A253883.P9873935379139535714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A243061 (A122111 (A241909 (n + 1)).toNat).toNat).toNat

end

end A253883.P9873935379139535714

namespace A253883

/-- `A122111(A243061(A122111(A241909(n+1))))` -/
def P9873935379139535714.Spec : Prop :=
  ∀ n, P9873935379139535714.a n = A253883 (n + 1)

end A253883

/-! ## A253883.P11580864664971611251

`A122111(A243061(A122111(A048673(A243061(n+1)))))`
-/

namespace A253883.P11580864664971611251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A243061 (A122111 (A048673 (A243061 (n + 1)).toNat).toNat).toNat).toNat

end

end A253883.P11580864664971611251

namespace A253883

/-- `A122111(A243061(A122111(A048673(A243061(n+1)))))` -/
def P11580864664971611251.Spec : Prop :=
  ∀ n, P11580864664971611251.a n = A253883 (n + 1)

end A253883

/-! ## A253883.P1454142596565198425

`A243505(∑{d}[n+1, A329034(#)])`
-/

namespace A253883.P1454142596565198425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243505 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A253883.P1454142596565198425

namespace A253883

/-- `A243505(∑{d}[n+1, A329034(#)])` -/
def P1454142596565198425.Spec : Prop :=
  ∀ n, P1454142596565198425.a n = A253883 (n + 1)

end A253883

/-! ## A253883.P13573139608189704437

`A243505(A243505(A048673(n+1)))`
-/

namespace A253883.P13573139608189704437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243505 (A243505 (A048673 (n + 1)).toNat).toNat

end

end A253883.P13573139608189704437

namespace A253883

/-- `A243505(A243505(A048673(n+1)))` -/
def P13573139608189704437.Spec : Prop :=
  ∀ n, P13573139608189704437.a n = A253883 (n + 1)

end A253883

/-!
# A253884: Permutation of natural numbers: a(n) = A122111(A243506(n)).

The programs for A253884, the canonical program `A253884.P16458333213855723995` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253884 has offset 1).

The definition of A253884 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, A243506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253884.P16458333213855723995

`A122111(A243506(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A253884

/-- `A122111(A243506(n+1))` -/
def P16458333213855723995.Spec : Prop :=
  ∀ n, P16458333213855723995.a n = A253884 (n + 1)

theorem P16458333213855723995.correct : P16458333213855723995.Spec := by
  intro n
  simp only [A253884, Nat.add_sub_cancel]

end A253884

/-! ## A253884.P15067201991007380016

`∑{d}[A243506(n+1), A329034(#)]`
-/

namespace A253884.P15067201991007380016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A253884.P15067201991007380016

namespace A253884

/-- `∑{d}[A243506(n+1), A329034(#)]` -/
def P15067201991007380016.Spec : Prop :=
  ∀ n, P15067201991007380016.a n = A253884 (n + 1)

end A253884

/-! ## A253884.P1050674331179731737

`A122111(A048673(A122111(n+1)))`
-/

namespace A253884.P1050674331179731737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A048673 (A122111 (n + 1)).toNat).toNat

end

end A253884.P1050674331179731737

namespace A253884

/-- `A122111(A048673(A122111(n+1)))` -/
def P1050674331179731737.Spec : Prop :=
  ∀ n, P1050674331179731737.a n = A253884 (n + 1)

end A253884

/-! ## A253884.P2610576978099543904

`A122111(A243066(A122111(A241909(n+1))))`
-/

namespace A253884.P2610576978099543904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A243066 (A122111 (A241909 (n + 1)).toNat).toNat).toNat

end

end A253884.P2610576978099543904

namespace A253884

/-- `A122111(A243066(A122111(A241909(n+1))))` -/
def P2610576978099543904.Spec : Prop :=
  ∀ n, P2610576978099543904.a n = A253884 (n + 1)

end A253884

/-! ## A253884.P14588636623058344469

`A243505(A048673(A048673(A243505(A048673(n+1)))))`
-/

namespace A253884.P14588636623058344469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243505 (A048673 (A048673 (A243505 (A048673 (n + 1)).toNat).toNat).toNat).toNat

end

end A253884.P14588636623058344469

namespace A253884

/-- `A243505(A048673(A048673(A243505(A048673(n+1)))))` -/
def P14588636623058344469.Spec : Prop :=
  ∀ n, P14588636623058344469.a n = A253884 (n + 1)

end A253884

/-!
# A253885: Permutation of even numbers: a(n) = A003961(n+1) - 1.

The programs for A253885, the canonical program `A253885.P8852473244354028115` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253885 has offset 0).

The definition of A253885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253885.P1125485714523403060

`A003961(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253885.P1125485714523403060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - 1

end

end A253885.P1125485714523403060

namespace A253885

/-- `A003961(n+1)-1` -/
def P1125485714523403060.Spec : Prop :=
  ∀ n, P1125485714523403060.a n = A253885 n

end A253885

/-! ## A253885.P16715555451856890624

`A243501(n+1)-2`
-/

namespace A253885.P16715555451856890624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - 2

end

end A253885.P16715555451856890624

namespace A253885

/-- `A243501(n+1)-2` -/
def P16715555451856890624.Spec : Prop :=
  ∀ n, P16715555451856890624.a n = A253885 n

end A253885

/-! ## A253885.P16238468819682991130

`2*A108228(n+1)`
-/

namespace A253885.P16238468819682991130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108228 (n + 1)

end

end A253885.P16238468819682991130

namespace A253885

/-- `2*A108228(n+1)` -/
def P16238468819682991130.Spec : Prop :=
  ∀ n, P16238468819682991130.a n = A253885 n

end A253885

/-! ## A253885.P8399045168547005598

`A336853(n+1)+n`
-/

namespace A253885.P8399045168547005598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) + (n : ℤ)

end

end A253885.P8399045168547005598

namespace A253885

/-- `A336853(n+1)+n` -/
def P8399045168547005598.Spec : Prop :=
  ∀ n, P8399045168547005598.a n = A253885 n

end A253885

/-! ## A253885.P8852473244354028115

`Δ[A252749(n)+n²]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A253885

/-- `Δ[A252749(n)+n²]` -/
def P8852473244354028115.Spec : Prop :=
  ∀ n, P8852473244354028115.a n = A253885 n

theorem P8852473244354028115.correct : P8852473244354028115.Spec := by
  intro n
  simp only [A253885]

end A253885

/-! ## A253885.P26291988320458516

`sqrt(A379481(n+1))-1`
-/

namespace A253885.P26291988320458516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A379481 (n + 1) : ℝ) - 1

end

end A253885.P26291988320458516

namespace A253885

/-- `sqrt(A379481(n+1))-1` -/
def P26291988320458516.Spec : Prop :=
  ∀ n, P26291988320458516.a n = (A253885 n : ℝ)

end A253885

/-! ## A253885.P12386206469798169086

`2*(A048673(n+1)-1)`
-/

namespace A253885.P12386206469798169086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048673 (n + 1) - 1)

end

end A253885.P12386206469798169086

namespace A253885

/-- `2*(A048673(n+1)-1)` -/
def P12386206469798169086.Spec : Prop :=
  ∀ n, P12386206469798169086.a n = A253885 n

end A253885

/-! ## A253885.P615435156605003759

`A249734(n+1)/3-1`
-/

namespace A253885.P615435156605003759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249734 (n + 1) : ℚ) / 3 - 1

end

end A253885.P615435156605003759

namespace A253885

/-- `A249734(n+1)/3-1` -/
def P615435156605003759.Spec : Prop :=
  ∀ n, P615435156605003759.a n = (A253885 n : ℚ)

end A253885

/-! ## A253885.P4059313915530135536

`2*(A349573(n+1)+n)`
-/

namespace A253885.P4059313915530135536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A349573 (n + 1) + (n : ℤ))

end

end A253885.P4059313915530135536

namespace A253885

/-- `2*(A349573(n+1)+n)` -/
def P4059313915530135536.Spec : Prop :=
  ∀ n, P4059313915530135536.a n = A253885 n

end A253885

/-! ## A253885.P5024270821886718034

`∑{d}[n+1, A003972(#)]-1`
-/

namespace A253885.P5024270821886718034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d - 1

end

end A253885.P5024270821886718034

namespace A253885

/-- `∑{d}[n+1, A003972(#)]-1` -/
def P5024270821886718034.Spec : Prop :=
  ∀ n, P5024270821886718034.a n = A253885 n

end A253885

/-! ## A253885.P9444718525321784115

`A252748(n+1)+Δ[n²]`
-/

namespace A253885.P9444718525321784115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A253885.P9444718525321784115

namespace A253885

/-- `A252748(n+1)+Δ[n²]` -/
def P9444718525321784115.Spec : Prop :=
  ∀ n, P9444718525321784115.a n = A253885 n

end A253885

/-! ## A253885.P1757340704247962940

`2*floor(sinh(log(A045965(n+1))))`
-/

namespace A253885.P1757340704247962940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.sinh (Real.log (A045965 (n + 1) : ℝ))⌋

end

end A253885.P1757340704247962940

namespace A253885

/-- `2*floor(sinh(log(A045965(n+1))))` -/
def P1757340704247962940.Spec : Prop :=
  ∀ n, P1757340704247962940.a n = A253885 n

end A253885

/-! ## A253885.P1997504212542073574

`A191002(n+1)/(n+1)-1`
-/

namespace A253885.P1997504212542073574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191002 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A253885.P1997504212542073574

namespace A253885

/-- `A191002(n+1)/(n+1)-1` -/
def P1997504212542073574.Spec : Prop :=
  ∀ n, P1997504212542073574.a n = (A253885 n : ℚ)

end A253885

/-! ## A253885.P10314079695236280712

`A045965(n+1)-A054977(n)`
-/

namespace A253885.P10314079695236280712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) - A054977 n

end

end A253885.P10314079695236280712

namespace A253885

/-- `A045965(n+1)-A054977(n)` -/
def P10314079695236280712.Spec : Prop :=
  ∀ n, P10314079695236280712.a n = A253885 n

end A253885

/-! ## A253885.P5109329622361622020

`A045965(n+1)-(A000007(n)+1)`
-/

namespace A253885.P5109329622361622020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) - (A000007 n + 1)

end

end A253885.P5109329622361622020

namespace A253885

/-- `A045965(n+1)-(A000007(n)+1)` -/
def P5109329622361622020.Spec : Prop :=
  ∀ n, P5109329622361622020.a n = A253885 n

end A253885

/-! ## A253885.P16209608722481629349

`A340071(n+1)*A340073(n+1)`
-/

namespace A253885.P16209608722481629349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (n + 1) * A340073 (n + 1)

end

end A253885.P16209608722481629349

namespace A253885

/-- `A340071(n+1)*A340073(n+1)` -/
def P16209608722481629349.Spec : Prop :=
  ∀ n, P16209608722481629349.a n = A253885 n

end A253885

/-! ## A253885.P8998105301112852758

`A000203(n+1)+A286385(n+1)-1`
-/

namespace A253885.P8998105301112852758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A286385 (n + 1) - 1)

end

end A253885.P8998105301112852758

namespace A253885

/-- `A000203(n+1)+A286385(n+1)-1` -/
def P8998105301112852758.Spec : Prop :=
  ∀ n, P8998105301112852758.a n = A253885 n

end A253885

/-! ## A253885.P7133610329966423940

`A336845(n+1)/A000005(n+1)-1`
-/

namespace A253885.P7133610329966423940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) - 1

end

end A253885.P7133610329966423940

namespace A253885

/-- `A336845(n+1)/A000005(n+1)-1` -/
def P7133610329966423940.Spec : Prop :=
  ∀ n, P7133610329966423940.a n = (A253885 n : ℚ)

end A253885

/-! ## A253885.P3616768179251705595

`A341529(n+1)/A000203(n+1)-1`
-/

namespace A253885.P3616768179251705595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341529 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) - 1

end

end A253885.P3616768179251705595

namespace A253885

/-- `A341529(n+1)/A000203(n+1)-1` -/
def P3616768179251705595.Spec : Prop :=
  ∀ n, P3616768179251705595.a n = (A253885 n : ℚ)

end A253885

/-!
# A253886: Permutation of even numbers: a(n) = A250469(n+1) - 1.

The programs for A253886, there is no canonical definition to state claims against.
-/

/-! ## A253886.P15997441713977218966

`A250469(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253886.P15997441713977218966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250469 (n + 1) - 1

end

end A253886.P15997441713977218966

/-! ## A253886.P5462713159293117868

`A269360(n+1)-2`
-/

namespace A253886.P5462713159293117868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269360 (n + 1) - 2

end

end A253886.P5462713159293117868

/-! ## A253886.P4115516390986656861

`A347378(n+1)+n`
-/

namespace A253886.P4115516390986656861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (n + 1) + (n : ℤ)

end

end A253886.P4115516390986656861

/-! ## A253886.P13266382008955447129

`2*(A250471(n+1)-1)`
-/

namespace A253886.P13266382008955447129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A250471 (n + 1) - 1)

end

end A253886.P13266382008955447129

/-! ## A253886.P8337983891444198215

`A302042(6*n+3)-1`
-/

namespace A253886.P8337983891444198215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (6 * n + 3) - 1

end

end A253886.P8337983891444198215

/-! ## A253886.P10102085733908021162

`Δ[n²]-A346476(n+1)`
-/

namespace A253886.P10102085733908021162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A346476 (n + 1)

end

end A253886.P10102085733908021162

/-! ## A253886.P17516443126683573916

`A046666(A269360(n+1))`
-/

namespace A253886.P17516443126683573916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A269360 (n + 1)).toNat

end

end A253886.P17516443126683573916

/-! ## A253886.P16756363723609814623

`A004273(A250471(n+1))-1`
-/

namespace A253886.P16756363723609814623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A250471 (n + 1)).toNat - 1

end

end A253886.P16756363723609814623

/-! ## A253886.P8370306284364463138

`A005843(A250471(n+1)-1)`
-/

namespace A253886.P8370306284364463138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A250471 (n + 1) - 1).toNat

end

end A253886.P8370306284364463138

/-! ## A253886.P15128673049813997975

`A003961(A266645(n+1))-1`
-/

namespace A253886.P15128673049813997975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A266645 (n + 1)).toNat - 1

end

end A253886.P15128673049813997975

/-! ## A253886.P14989013940931086654

`A253885(A266645(n+1)-1)`
-/

namespace A253886.P14989013940931086654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A266645 (n + 1) - 1).toNat

end

end A253886.P14989013940931086654

/-! ## A253886.P4287084692146479782

`A269382(A269355(n+1)-1)`
-/

namespace A253886.P4287084692146479782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269382 (A269355 (n + 1) - 1).toNat

end

end A253886.P4287084692146479782

/-! ## A253886.P3421272190837580292

`A253885(n)-A280692(n+1)`
-/

namespace A253886.P3421272190837580292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 n - A280692 (n + 1)

end

end A253886.P3421272190837580292

/-! ## A253886.P16347793738761941262

`A003961(n+1)-(A280692(n+1)+1)`
-/

namespace A253886.P16347793738761941262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (A280692 (n + 1) + 1)

end

end A253886.P16347793738761941262

/-! ## A253886.P15221204179848781302

`A000203(n+1)+A346473(n+1)-1`
-/

namespace A253886.P15221204179848781302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A346473 (n + 1) - 1)

end

end A253886.P15221204179848781302

/-! ## A253886.P15018934026955481313

`A346480(n+1)-(A346479(n+1)+1)`
-/

namespace A253886.P15018934026955481313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346480 (n + 1) - (A346479 (n + 1) + 1)

end

end A253886.P15018934026955481313

/-! ## A253886.P5994404914102988556

`A088580(n+1)+A346473(n+1)-2`
-/

namespace A253886.P5994404914102988556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + (A346473 (n + 1) - 2)

end

end A253886.P5994404914102988556

/-! ## A253886.P6228250388219847704

`A243501(n+1)-(A280692(n+1)+2)`
-/

namespace A253886.P6228250388219847704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243501 (n + 1) - (A280692 (n + 1) + 2)

end

end A253886.P6228250388219847704

/-! ## A253886.P17812044131394965467

`A280702(n+1)*A280704(n+1)-1`
-/

namespace A253886.P17812044131394965467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280702 (n + 1) * A280704 (n + 1) - 1

end

end A253886.P17812044131394965467

/-! ## A253886.P2138554507381145386

`xor(A250469(n+1), A260438(2*(n+1)))`
-/

namespace A253886.P2138554507381145386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250469 (n + 1)) (A260438 (2 * (n + 1)))

end

end A253886.P2138554507381145386

/-!
# A253887: Row index of n in A191450: a(3n) = 2n, a(3n+1) = 2n+1, a(3n+2) = a(n+1).

The programs for A253887, the canonical program `A253887.P792903350205784679` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253887 has offset 1).

The definition of A253887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, A064216, A249746, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253887.P10341149555369091971

`A126760(2*(n+1)-1)`
-/

namespace A253887.P10341149555369091971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (2 * (n + 1) - 1)

end

end A253887.P10341149555369091971

namespace A253887

/-- `A126760(2*(n+1)-1)` -/
def P10341149555369091971.Spec : Prop :=
  ∀ n, P10341149555369091971.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P792903350205784679

`A249746(A003602(A064216(n+1)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A253887

/-- `A249746(A003602(A064216(n+1)))` -/
def P792903350205784679.Spec : Prop :=
  ∀ n, P792903350205784679.a n = A253887 (n + 1)

theorem P792903350205784679.correct : P792903350205784679.Spec := by
  intro n
  simp only [A253887, Nat.add_sub_cancel]

end A253887

/-! ## A253887.P3966845307687952675

`A389900(A016921(n))`
-/

namespace A253887.P3966845307687952675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389900 (A016921 n).toNat

end

end A253887.P3966845307687952675

namespace A253887

/-- `A389900(A016921(n))` -/
def P3966845307687952675.Spec : Prop :=
  ∀ n, P3966845307687952675.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P2554494125652743642

`A389900(A271114(n))`
-/

namespace A253887.P2554494125652743642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389900 (A271114 n).toNat

end

end A253887.P2554494125652743642

namespace A253887

/-- `A389900(A271114(n))` -/
def P2554494125652743642.Spec : Prop :=
  ∀ n, P2554494125652743642.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P15944127618013772881

`A389900(A308196(n))`
-/

namespace A253887.P15944127618013772881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389900 (A308196 n).toNat

end

end A253887.P15944127618013772881

namespace A253887

/-- `A389900(A308196(n))` -/
def P15944127618013772881.Spec : Prop :=
  ∀ n, P15944127618013772881.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P2947588352557606588

`A004396(A286577(n+1))`
-/

namespace A253887.P2947588352557606588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A286577 (n + 1)).toNat

end

end A253887.P2947588352557606588

namespace A253887

/-- `A004396(A286577(n+1))` -/
def P2947588352557606588.Spec : Prop :=
  ∀ n, P2947588352557606588.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P7697115207302852975

`A323882(2*n+1)-A323881(2*n+1)`
-/

namespace A253887.P7697115207302852975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (2 * n + 1) - A323881 (2 * n + 1)

end

end A253887.P7697115207302852975

namespace A253887

/-- `A323882(2*n+1)-A323881(2*n+1)` -/
def P7697115207302852975.Spec : Prop :=
  ∀ n, P7697115207302852975.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P11883949536287544146

`A126760(2*n+1)%(n+2)`
-/

namespace A253887.P11883949536287544146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126760 (2 * n + 1)) (n + 2 : ℤ)

end

end A253887.P11883949536287544146

namespace A253887

/-- `A126760(2*n+1)%(n+2)` -/
def P11883949536287544146.Spec : Prop :=
  ∀ n, P11883949536287544146.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P5970915189116423893

`A000027(A126760(2*n+1))`
-/

namespace A253887.P5970915189116423893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A126760 (2 * n + 1)).toNat

end

end A253887.P5970915189116423893

namespace A253887

/-- `A000027(A126760(2*n+1))` -/
def P5970915189116423893.Spec : Prop :=
  ∀ n, P5970915189116423893.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P4822837420751512631

`A014682(2*A126760(2*n+1))`
-/

namespace A253887.P4822837420751512631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A126760 (2 * n + 1)).toNat

end

end A253887.P4822837420751512631

namespace A253887

/-- `A014682(2*A126760(2*n+1))` -/
def P4822837420751512631.Spec : Prop :=
  ∀ n, P4822837420751512631.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P8623349719976529928

`or(A079978(n), A126760(2*n+1))`
-/

namespace A253887.P8623349719976529928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079978 n) (A126760 (2 * n + 1))

end

end A253887.P8623349719976529928

namespace A253887

/-- `or(A079978(n), A126760(2*n+1))` -/
def P8623349719976529928.Spec : Prop :=
  ∀ n, P8623349719976529928.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P10837602783795835690

`A020985(n)²*A126760(2*n+1)`
-/

namespace A253887.P10837602783795835690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A126760 (2 * n + 1)

end

end A253887.P10837602783795835690

namespace A253887

/-- `A020985(n)²*A126760(2*n+1)` -/
def P10837602783795835690.Spec : Prop :=
  ∀ n, P10837602783795835690.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P12513296664611099413

`A057427(n+1)*A126760(2*n+1)`
-/

namespace A253887.P12513296664611099413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A126760 (2 * n + 1)

end

end A253887.P12513296664611099413

namespace A253887

/-- `A057427(n+1)*A126760(2*n+1)` -/
def P12513296664611099413.Spec : Prop :=
  ∀ n, P12513296664611099413.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P15812120054403642740

`A322796(2*n)+A126760(2*n+1)`
-/

namespace A253887.P15812120054403642740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 (2 * n) + A126760 (2 * n + 1)

end

end A253887.P15812120054403642740

namespace A253887

/-- `A322796(2*n)+A126760(2*n+1)` -/
def P15812120054403642740.Spec : Prop :=
  ∀ n, P15812120054403642740.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P18012664775924709921

`A026741(2*A126760(2*n+1))`
-/

namespace A253887.P18012664775924709921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A126760 (2 * n + 1)).toNat

end

end A253887.P18012664775924709921

namespace A253887

/-- `A026741(2*A126760(2*n+1))` -/
def P18012664775924709921.Spec : Prop :=
  ∀ n, P18012664775924709921.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P3762245420889190307

`A133419(2*A126760(2*n+1))`
-/

namespace A253887.P3762245420889190307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133419 (2 * A126760 (2 * n + 1)).toNat

end

end A253887.P3762245420889190307

namespace A253887

/-- `A133419(2*A126760(2*n+1))` -/
def P3762245420889190307.Spec : Prop :=
  ∀ n, P3762245420889190307.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P17694446625221181431

`A004526(2*A126760(2*n+1))`
-/

namespace A253887.P17694446625221181431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A126760 (2 * n + 1)).toNat

end

end A253887.P17694446625221181431

namespace A253887

/-- `A004526(2*A126760(2*n+1))` -/
def P17694446625221181431.Spec : Prop :=
  ∀ n, P17694446625221181431.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P4769191964799933430

`A006370(2*A126760(2*n+1))`
-/

namespace A253887.P4769191964799933430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A126760 (2 * n + 1)).toNat

end

end A253887.P4769191964799933430

namespace A253887

/-- `A006370(2*A126760(2*n+1))` -/
def P4769191964799933430.Spec : Prop :=
  ∀ n, P4769191964799933430.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P880490469587539402

`A389900(A017545(n))`
-/

namespace A253887.P880490469587539402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389900 (A017545 n).toNat

end

end A253887.P880490469587539402

namespace A253887

/-- `A389900(A017545(n))` -/
def P880490469587539402.Spec : Prop :=
  ∀ n, P880490469587539402.a n = A253887 (n + 1)

end A253887

/-! ## A253887.P9316726840451138854

`A389900(A017581(n))`
-/

namespace A253887.P9316726840451138854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389900 (A017581 n).toNat

end

end A253887.P9316726840451138854

namespace A253887

/-- `A389900(A017581(n))` -/
def P9316726840451138854.Spec : Prop :=
  ∀ n, P9316726840451138854.a n = A253887 (n + 1)

end A253887

/-!
# A253888: a(0) = 1; for n >= 1: a(n) = A048673(1+(2*A064216(n))).

The programs for A253888, there is no canonical definition to state claims against.
-/

/-! ## A253888.P15601790145493283078

`A048673(A003961(A064216(A302848(A064216(n+1)))))`
-/

namespace A253888.P15601790145493283078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A003961 (A064216 (A302848 (A064216 (n + 1)).toNat).toNat).toNat).toNat

end

end A253888.P15601790145493283078

/-!
# A253889: a(n) = A048673(floor(A064216(n)/2)).

The programs for A253889, there is no canonical definition to state claims against.
-/

/-! ## A253889.P13538182690221210932

`A283464(and(A064216(n+1), A095121(n)))`
-/

namespace A253889.P13538182690221210932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (Int.land (A064216 (n + 1)) (A095121 n)).toNat

end

end A253889.P13538182690221210932

/-!
# A253890: a(n) = A253560(A253883(n)) = A122111((2*A122111(n)) - 1).

The programs for A253890, the canonical program `A253890.P9042801832584400967` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253890 has offset 1).

The definition of A253890 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253890.P9042801832584400967

`A122111(2*A122111(n+1)-1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253890

/-- `A122111(2*A122111(n+1)-1)` -/
def P9042801832584400967.Spec : Prop :=
  ∀ n, P9042801832584400967.a n = A253890 (n + 1)

theorem P9042801832584400967.correct : P9042801832584400967.Spec := by
  intro n
  simp only [A253890, Nat.add_sub_cancel]

end A253890

/-! ## A253890.P14629336644650599733

`A122111(A005408(A122111(n+1)-1))`
-/

namespace A253890.P14629336644650599733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A005408 (A122111 (n + 1) - 1).toNat).toNat

end

end A253890.P14629336644650599733

namespace A253890

/-- `A122111(A005408(A122111(n+1)-1))` -/
def P14629336644650599733.Spec : Prop :=
  ∀ n, P14629336644650599733.a n = A253890 (n + 1)

end A253890

/-! ## A253890.P456659601383464768

`A253560(A253883(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253890.P456659601383464768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (A253883 (n + 1)).toNat

end

end A253890.P456659601383464768

namespace A253890

/-- `A253560(A253883(n+1))` -/
def P456659601383464768.Spec : Prop :=
  ∀ n, P456659601383464768.a n = A253890 (n + 1)

end A253890

/-! ## A253890.P2145799669171627380

`A122111(A004273(A122111(n+1)))`
-/

namespace A253890.P2145799669171627380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A004273 (A122111 (n + 1)).toNat).toNat

end

end A253890.P2145799669171627380

namespace A253890

/-- `A122111(A004273(A122111(n+1)))` -/
def P2145799669171627380.Spec : Prop :=
  ∀ n, P2145799669171627380.a n = A253890 (n + 1)

end A253890

/-! ## A253890.P11514135705778686076

`A122111(A005843(A122111(n+1))-1)`
-/

namespace A253890.P11514135705778686076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A005843 (A122111 (n + 1)).toNat - 1).toNat

end

end A253890.P11514135705778686076

namespace A253890

/-- `A122111(A005843(A122111(n+1))-1)` -/
def P11514135705778686076.Spec : Prop :=
  ∀ n, P11514135705778686076.a n = A253890 (n + 1)

end A253890

/-!
# A253891: Permutation of natural numbers: a(n) = A245611(A163511(n)).

The programs for A253891, the canonical program `A253891.P1048282681806137115` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253891 has offset 0).

The definition of A253891 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A245611, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253891.P1048282681806137115

`A245611(A163511(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A253891

/-- `A245611(A163511(n))` -/
def P1048282681806137115.Spec : Prop :=
  ∀ n, P1048282681806137115.a n = A253891 n

theorem P1048282681806137115.correct : P1048282681806137115.Spec := by
  intro n
  simp only [A253891]

end A253891

/-! ## A253891.P7615123695731136791

`A245611(A064216(A245612(n)))`
-/

namespace A253891.P7615123695731136791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A064216 (A245612 n).toNat).toNat

end

end A253891.P7615123695731136791

namespace A253891

/-- `A245611(A064216(A245612(n)))` -/
def P7615123695731136791.Spec : Prop :=
  ∀ n, P7615123695731136791.a n = A253891 n

end A253891

/-! ## A253891.P3192547113880814669

`A245611(A243065(A244154(n)))`
-/

namespace A253891.P3192547113880814669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A243065 (A244154 n).toNat).toNat

end

end A253891.P3192547113880814669

namespace A253891

/-- `A245611(A243065(A244154(n)))` -/
def P3192547113880814669.Spec : Prop :=
  ∀ n, P3192547113880814669.a n = A253891 n

end A253891

/-! ## A253891.P1113585695059533664

`A245611(A249823(A275716(n)))`
-/

namespace A253891.P1113585695059533664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245611 (A249823 (A275716 n).toNat).toNat

end

end A253891.P1113585695059533664

namespace A253891

/-- `A245611(A249823(A275716(n)))` -/
def P1113585695059533664.Spec : Prop :=
  ∀ n, P1113585695059533664.a n = A253891 n

end A253891

/-! ## A253891.P861374455709287244

`A243071(A064216(A252463(A163511(2*n))))`
-/

namespace A253891.P861374455709287244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A064216 (A252463 (A163511 (2 * n)).toNat).toNat).toNat

end

end A253891.P861374455709287244

namespace A253891

/-- `A243071(A064216(A252463(A163511(2*n))))` -/
def P861374455709287244.Spec : Prop :=
  ∀ n, P861374455709287244.a n = A253891 n

end A253891

/-!
# A253892: Permutation of natural numbers: a(n) = A243071(A245612(n)).

The programs for A253892, the canonical program `A253892.P16962043896708669236` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253892 has offset 0).

The definition of A253892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, A245612, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253892.P16962043896708669236

`A243071(A245612(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A253892

/-- `A243071(A245612(n))` -/
def P16962043896708669236.Spec : Prop :=
  ∀ n, P16962043896708669236.a n = A253892 n

theorem P16962043896708669236.correct : P16962043896708669236.Spec := by
  intro n
  simp only [A253892]

end A253892

/-! ## A253892.P4424271355801642243

`A243071(A048673(A163511(n)))`
-/

namespace A253892.P4424271355801642243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A048673 (A163511 n).toNat).toNat

end

end A253892.P4424271355801642243

namespace A253892

/-- `A243071(A048673(A163511(n)))` -/
def P4424271355801642243.Spec : Prop :=
  ∀ n, P4424271355801642243.a n = A253892 n

end A253892

/-! ## A253892.P2468706842905650006

`A243071(A249745(A275716(n)))`
-/

namespace A253892.P2468706842905650006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A249745 (A275716 n).toNat).toNat

end

end A253892.P2468706842905650006

namespace A253892

/-- `A243071(A249745(A275716(n)))` -/
def P2468706842905650006.Spec : Prop :=
  ∀ n, P2468706842905650006.a n = A253892 n

end A253892

/-! ## A253892.P15915189736412263894

`A243071(A243066(A005940(n+1)))`
-/

namespace A253892.P15915189736412263894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A243066 (A005940 (n + 1)).toNat).toNat

end

end A253892.P15915189736412263894

namespace A253892

/-- `A243071(A243066(A005940(n+1)))` -/
def P15915189736412263894.Spec : Prop :=
  ∀ n, P15915189736412263894.a n = A253892 n

end A253892

/-! ## A253892.P4429228741931914639

`A243071(A078898(A003961(A163511(n))+1))`
-/

namespace A253892.P4429228741931914639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A078898 (A003961 (A163511 n).toNat + 1).toNat).toNat

end

end A253892.P4429228741931914639

namespace A253892

/-- `A243071(A078898(A003961(A163511(n))+1))` -/
def P4429228741931914639.Spec : Prop :=
  ∀ n, P4429228741931914639.a n = A253892 n

end A253892

/-!
# A253893: a(1) = 0, for n > 1, a(n) = 1 + a(A253889(n)).

The programs for A253893, the canonical program `A253893.P4821075843875187825` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253893 has offset 1).

The definition of A253893 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253893.P12599657717713767502

`A253894(n+1)-1`
-/

namespace A253893.P12599657717713767502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253894 (n + 1) - 1

end

end A253893.P12599657717713767502

namespace A253893

/-- `A253894(n+1)-1` -/
def P12599657717713767502.Spec : Prop :=
  ∀ n, P12599657717713767502.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P4821075843875187825

`A000523(A064216(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A253893

/-- `A000523(A064216(n+1))` -/
def P4821075843875187825.Spec : Prop :=
  ∀ n, P4821075843875187825.a n = A253893 (n + 1)

theorem P4821075843875187825.correct : P4821075843875187825.Spec := by
  intro n
  simp only [A253893, Nat.add_sub_cancel]

end A253893

/-! ## A253893.P9471377898901885987

`floor(log2(A292245(n+1)))`
-/

namespace A253893.P9471377898901885987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A292245 (n + 1)).toNat

end

end A253893.P9471377898901885987

namespace A253893

/-- `floor(log2(A292245(n+1)))` -/
def P9471377898901885987.Spec : Prop :=
  ∀ n, (P9471377898901885987.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P3177549044697026477

`floor(log2(A243502(n+1)))-1`
-/

namespace A253893.P3177549044697026477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A243502 (n + 1)).toNat : ℤ) - 1

end

end A253893.P3177549044697026477

namespace A253893

/-- `floor(log2(A243502(n+1)))-1` -/
def P3177549044697026477.Spec : Prop :=
  ∀ n, P3177549044697026477.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P9186611197034933528

`floor(log2(A349122(2*n+1)))`
-/

namespace A253893.P9186611197034933528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A349122 (2 * n + 1)).toNat

end

end A253893.P9186611197034933528

namespace A253893

/-- `floor(log2(A349122(2*n+1)))` -/
def P9186611197034933528.Spec : Prop :=
  ∀ n, (P9186611197034933528.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P18398788755308867620

`A254044(n+1)+A254045(n+1)-1`
-/

namespace A253893.P18398788755308867620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254044 (n + 1) + (A254045 (n + 1) - 1)

end

end A253893.P18398788755308867620

namespace A253893

/-- `A254044(n+1)+A254045(n+1)-1` -/
def P18398788755308867620.Spec : Prop :=
  ∀ n, P18398788755308867620.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P7584379508656321641

`A028310(ceil(log2(A064216(n+1)+1)))-1`
-/

namespace A253893.P7584379508656321641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌈Real.logb 2 (A064216 (n + 1) + 1 : ℝ)⌉.toNat - 1

end

end A253893.P7584379508656321641

namespace A253893

/-- `A028310(ceil(log2(A064216(n+1)+1)))-1` -/
def P7584379508656321641.Spec : Prop :=
  ∀ n, P7584379508656321641.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P9745795551643813626

`floor(log2(A290099(2*n+1)))`
-/

namespace A253893.P9745795551643813626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A290099 (2 * n + 1)).toNat

end

end A253893.P9745795551643813626

namespace A253893

/-- `floor(log2(A290099(2*n+1)))` -/
def P9745795551643813626.Spec : Prop :=
  ∀ n, (P9745795551643813626.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P10011912346087223570

`A000523(A292245(n+1))`
-/

namespace A253893.P10011912346087223570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A292245 (n + 1)).toNat

end

end A253893.P10011912346087223570

namespace A253893

/-- `A000523(A292245(n+1))` -/
def P10011912346087223570.Spec : Prop :=
  ∀ n, P10011912346087223570.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P6286440278413432014

`A000523(A243502(n+1)/2)`
-/

namespace A253893.P6286440278413432014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A243502 (n + 1) : ℚ) / 2)).toNat

end

end A253893.P6286440278413432014

namespace A253893

/-- `A000523(A243502(n+1)/2)` -/
def P6286440278413432014.Spec : Prop :=
  ∀ n, P6286440278413432014.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P17631231009154157803

`A029837(A064216(n+1)+1)-1`
-/

namespace A253893.P17631231009154157803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A064216 (n + 1) + 1).toNat - 1

end

end A253893.P17631231009154157803

namespace A253893

/-- `A029837(A064216(n+1)+1)-1` -/
def P17631231009154157803.Spec : Prop :=
  ∀ n, P17631231009154157803.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P9735917466296496171

`A000120(A064216(n+1))+A254045(n+1)-1`
-/

namespace A253893.P9735917466296496171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064216 (n + 1)).toNat + (A254045 (n + 1) - 1)

end

end A253893.P9735917466296496171

namespace A253893

/-- `A000120(A064216(n+1))+A254045(n+1)-1` -/
def P9735917466296496171.Spec : Prop :=
  ∀ n, P9735917466296496171.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P13553587754984337352

`A080791(A064216(n+1))+A254044(n+1)-1`
-/

namespace A253893.P13553587754984337352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A064216 (n + 1)).toNat + (A254044 (n + 1) - 1)

end

end A253893.P13553587754984337352

namespace A253893

/-- `A080791(A064216(n+1))+A254044(n+1)-1` -/
def P13553587754984337352.Spec : Prop :=
  ∀ n, P13553587754984337352.a n = A253893 (n + 1)

end A253893

/-! ## A253893.P18401426849557431657

`floor(log2(A064989(Δ[n²])))`
-/

namespace A253893.P18401426849557431657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A064989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A253893.P18401426849557431657

namespace A253893

/-- `floor(log2(A064989(Δ[n²])))` -/
def P18401426849557431657.Spec : Prop :=
  ∀ n, (P18401426849557431657.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P15896899144353788519

`floor(log2(A079707(2*n+1)))`
-/

namespace A253893.P15896899144353788519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A079707 (2 * n + 1)).toNat

end

end A253893.P15896899144353788519

namespace A253893

/-- `floor(log2(A079707(2*n+1)))` -/
def P15896899144353788519.Spec : Prop :=
  ∀ n, (P15896899144353788519.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P15359690706488489593

`floor(log2(A252463(2*n+1)))`
-/

namespace A253893.P15359690706488489593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A252463 (2 * n + 1)).toNat

end

end A253893.P15359690706488489593

namespace A253893

/-- `floor(log2(A252463(2*n+1)))` -/
def P15359690706488489593.Spec : Prop :=
  ∀ n, (P15359690706488489593.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P9683236843763183304

`floor(log2(A283463(2*(n+1))))`
-/

namespace A253893.P9683236843763183304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A283463 (2 * (n + 1))).toNat

end

end A253893.P9683236843763183304

namespace A253893

/-- `floor(log2(A283463(2*(n+1))))` -/
def P9683236843763183304.Spec : Prop :=
  ∀ n, (P9683236843763183304.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P17590237874366300914

`floor(log2(A341515(2*n+1)))`
-/

namespace A253893.P17590237874366300914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A341515 (2 * n + 1)).toNat

end

end A253893.P17590237874366300914

namespace A253893

/-- `floor(log2(A341515(2*n+1)))` -/
def P17590237874366300914.Spec : Prop :=
  ∀ n, (P17590237874366300914.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P5638592847307738254

`floor(log2(A341516(2*n+1)))`
-/

namespace A253893.P5638592847307738254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A341516 (2 * n + 1)).toNat

end

end A253893.P5638592847307738254

namespace A253893

/-- `floor(log2(A341516(2*n+1)))` -/
def P5638592847307738254.Spec : Prop :=
  ∀ n, (P5638592847307738254.a n : ℤ) = A253893 (n + 1)

end A253893

/-! ## A253893.P1572428128860138426

`A059939(A243502(n+1))`
-/

namespace A253893.P1572428128860138426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A243502 (n + 1)).toNat

end

end A253893.P1572428128860138426

namespace A253893

/-- `A059939(A243502(n+1))` -/
def P1572428128860138426.Spec : Prop :=
  ∀ n, P1572428128860138426.a n = A253893 (n + 1)

end A253893

/-!
# A253894: a(1) = 1, for n > 1, a(n) = 1 + a(A253889(n)).

The programs for A253894, the canonical program `A253894.P10317478115399007742` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253894 has offset 1).

The definition of A253894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A253893, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A253894.P10317478115399007742

`A253893(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A253894

/-- `A253893(n+1)+1` -/
def P10317478115399007742.Spec : Prop :=
  ∀ n, P10317478115399007742.a n = A253894 (n + 1)

theorem P10317478115399007742.correct : P10317478115399007742.Spec := by
  intro n
  simp only [A253894, Nat.add_sub_cancel]

end A253894

/-! ## A253894.P16409204527836332074

`A254044(n+1)+A254045(n+1)`
-/

namespace A253894.P16409204527836332074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254044 (n + 1) + A254045 (n + 1)

end

end A253894.P16409204527836332074

namespace A253894

/-- `A254044(n+1)+A254045(n+1)` -/
def P16409204527836332074.Spec : Prop :=
  ∀ n, P16409204527836332074.a n = A253894 (n + 1)

end A253894

/-! ## A253894.P3617710441233104859

`A070939(A064216(n+1))`
-/

namespace A253894.P3617710441233104859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A064216 (n + 1)).toNat

end

end A253894.P3617710441233104859

namespace A253894

/-- `A070939(A064216(n+1))` -/
def P3617710441233104859.Spec : Prop :=
  ∀ n, P3617710441233104859.a n = A253894 (n + 1)

end A253894

/-! ## A253894.P13532202240456144909

`floor(log2(A243502(n+1)))`
-/

namespace A253894.P13532202240456144909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A243502 (n + 1)).toNat

end

end A253894.P13532202240456144909

namespace A253894

/-- `floor(log2(A243502(n+1)))` -/
def P13532202240456144909.Spec : Prop :=
  ∀ n, (P13532202240456144909.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P17673863824283128559

`floor(log2(A292245(n+1)))+1`
-/

namespace A253894.P17673863824283128559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A292245 (n + 1)).toNat + 1

end

end A253894.P17673863824283128559

namespace A253894

/-- `floor(log2(A292245(n+1)))+1` -/
def P17673863824283128559.Spec : Prop :=
  ∀ n, (P17673863824283128559.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P11258078713053924343

`floor(log2(A349122(2*n+1)))+1`
-/

namespace A253894.P11258078713053924343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A349122 (2 * n + 1)).toNat + 1

end

end A253894.P11258078713053924343

namespace A253894

/-- `floor(log2(A349122(2*n+1)))+1` -/
def P11258078713053924343.Spec : Prop :=
  ∀ n, (P11258078713053924343.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P8667966344260480049

`A005496(A253893(n+1))`
-/

namespace A253894.P8667966344260480049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A253893 (n + 1)).toNat

end

end A253894.P8667966344260480049

namespace A253894

/-- `A005496(A253893(n+1))` -/
def P8667966344260480049.Spec : Prop :=
  ∀ n, P8667966344260480049.a n = A253894 (n + 1)

end A253894

/-! ## A253894.P3147752148913480227

`floor(log2(A290099(2*n+1)))+1`
-/

namespace A253894.P3147752148913480227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A290099 (2 * n + 1)).toNat + 1

end

end A253894.P3147752148913480227

namespace A253894

/-- `floor(log2(A290099(2*n+1)))+1` -/
def P3147752148913480227.Spec : Prop :=
  ∀ n, (P3147752148913480227.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P10040561601957488231

`A070939(A292245(n+1))`
-/

namespace A253894.P10040561601957488231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A292245 (n + 1)).toNat

end

end A253894.P10040561601957488231

namespace A253894

/-- `A070939(A292245(n+1))` -/
def P10040561601957488231.Spec : Prop :=
  ∀ n, P10040561601957488231.a n = A253894 (n + 1)

end A253894

/-! ## A253894.P18045876201708749563

`A029837(A064216(n+1)+1)`
-/

namespace A253894.P18045876201708749563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A064216 (n + 1) + 1).toNat

end

end A253894.P18045876201708749563

namespace A253894

/-- `A029837(A064216(n+1)+1)` -/
def P18045876201708749563.Spec : Prop :=
  ∀ n, P18045876201708749563.a n = A253894 (n + 1)

end A253894

/-! ## A253894.P17054418779568454221

`A254045(n+1)+A000120(A064216(n+1))`
-/

namespace A253894.P17054418779568454221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254045 (n + 1) + A000120 (A064216 (n + 1)).toNat

end

end A253894.P17054418779568454221

namespace A253894

/-- `A254045(n+1)+A000120(A064216(n+1))` -/
def P17054418779568454221.Spec : Prop :=
  ∀ n, P17054418779568454221.a n = A253894 (n + 1)

end A253894

/-! ## A253894.P6432462860415146836

`A254044(n+1)+A080791(A064216(n+1))`
-/

namespace A253894.P6432462860415146836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254044 (n + 1) + A080791 (A064216 (n + 1)).toNat

end

end A253894.P6432462860415146836

namespace A253894

/-- `A254044(n+1)+A080791(A064216(n+1))` -/
def P6432462860415146836.Spec : Prop :=
  ∀ n, P6432462860415146836.a n = A253894 (n + 1)

end A253894

/-! ## A253894.P6026170301237588645

`A000120(A064216(n+1))+A000120(A292246(n+1))`
-/

namespace A253894.P6026170301237588645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064216 (n + 1)).toNat + A000120 (A292246 (n + 1)).toNat

end

end A253894.P6026170301237588645

namespace A253894

/-- `A000120(A064216(n+1))+A000120(A292246(n+1))` -/
def P6026170301237588645.Spec : Prop :=
  ∀ n, P6026170301237588645.a n = A253894 (n + 1)

end A253894

/-! ## A253894.P6942381967965857744

`floor(log2(A297165(Δ[n²])))`
-/

namespace A253894.P6942381967965857744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A297165 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A253894.P6942381967965857744

namespace A253894

/-- `floor(log2(A297165(Δ[n²])))` -/
def P6942381967965857744.Spec : Prop :=
  ∀ n, (P6942381967965857744.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P213630769175622406

`floor(log2(A266645(2*(n+1))))`
-/

namespace A253894.P213630769175622406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A266645 (2 * (n + 1))).toNat

end

end A253894.P213630769175622406

namespace A253894

/-- `floor(log2(A266645(2*(n+1))))` -/
def P213630769175622406.Spec : Prop :=
  ∀ n, (P213630769175622406.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P14444014325181655912

`floor(log2(A389909(2*n+1)))`
-/

namespace A253894.P14444014325181655912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A389909 (2 * n + 1)).toNat

end

end A253894.P14444014325181655912

namespace A253894

/-- `floor(log2(A389909(2*n+1)))` -/
def P14444014325181655912.Spec : Prop :=
  ∀ n, (P14444014325181655912.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P11622156586664841652

`floor(log2(A064989(2*n+1)))+1`
-/

namespace A253894.P11622156586664841652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A064989 (2 * n + 1)).toNat + 1

end

end A253894.P11622156586664841652

namespace A253894

/-- `floor(log2(A064989(2*n+1)))+1` -/
def P11622156586664841652.Spec : Prop :=
  ∀ n, (P11622156586664841652.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P2597806271186237707

`floor(log2(A283463(2*(n+1))))+1`
-/

namespace A253894.P2597806271186237707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A283463 (2 * (n + 1))).toNat + 1

end

end A253894.P2597806271186237707

namespace A253894

/-- `floor(log2(A283463(2*(n+1))))+1` -/
def P2597806271186237707.Spec : Prop :=
  ∀ n, (P2597806271186237707.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P12900641357303104792

`floor(log2(A297165(2*n+1)+1))`
-/

namespace A253894.P12900641357303104792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A297165 (2 * n + 1) + 1).toNat

end

end A253894.P12900641357303104792

namespace A253894

/-- `floor(log2(A297165(2*n+1)+1))` -/
def P12900641357303104792.Spec : Prop :=
  ∀ n, (P12900641357303104792.a n : ℤ) = A253894 (n + 1)

end A253894

/-! ## A253894.P805321945907366461

`floor(log2(A341515(2*n+1)))+1`
-/

namespace A253894.P805321945907366461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A341515 (2 * n + 1)).toNat + 1

end

end A253894.P805321945907366461

namespace A253894

/-- `floor(log2(A341515(2*n+1)))+1` -/
def P805321945907366461.Spec : Prop :=
  ∀ n, (P805321945907366461.a n : ℤ) = A253894 (n + 1)

end A253894

/-!
# A253895: Total number of octagons in two variants of an octagon expansion after n iterations: either "side-to-side" or "vertex-to-vertex", respectively.

The programs for A253895, there is no canonical definition to state claims against.
-/

/-! ## A253895.P9662606081276923442

`∑[∑[A030496(A164873(n))]]`
-/

namespace A253895.P9662606081276923442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A164873 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253895.P9662606081276923442

/-! ## A253895.P2796592485896415094

`∑[∑[A106487(A231677(n))]]`
-/

namespace A253895.P2796592485896415094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106487 (A231677 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253895.P2796592485896415094

/-! ## A253895.P10279085642795643954

`∑[∑[A076982(A328435(n))]]`
-/

namespace A253895.P10279085642795643954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076982 (A328435 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253895.P10279085642795643954

/-! ## A253895.P18003118940570291700

`∑[∑[A051903(A089748(n+1))]]`
-/

namespace A253895.P18003118940570291700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A089748 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253895.P18003118940570291700

/-! ## A253895.P3351985822724836333

`∑[∑[A135523(A007691(n+1))]]`
-/

namespace A253895.P3351985822724836333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (A007691 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253895.P3351985822724836333

/-!
# A253896: Total number of either concave decagons or concave hexadecagons in two variants of an octagon expansion after n iterations: either "side-to-side" or "vertex-to-vertex", respectively.

The programs for A253896, there is no canonical definition to state claims against.
-/

/-! ## A253896.P14070885949564697397

`∑[∑[A339871(A294768(n))]]`
-/

namespace A253896.P14070885949564697397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339871 (A294768 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253896.P14070885949564697397

/-! ## A253896.P40927300385490286

`∑[∑[A001222(a(n-1)+(n-1)!)]]` with `a(0)=0`
-/

namespace A253896.P40927300385490286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A001222 (f2 (n - 1) + (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253896.P40927300385490286

/-! ## A253896.P12536337026133613381

`∑[∑[A001221(A012821(n))]]`
-/

namespace A253896.P12536337026133613381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A012821 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253896.P12536337026133613381

/-! ## A253896.P13169006567932278005

`∑[∑[A001221(A020101(n))]]`
-/

namespace A253896.P13169006567932278005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020101 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253896.P13169006567932278005

/-! ## A253896.P15034258696723744956

`∑[∑[A076490(A014137(n))]]`
-/

namespace A253896.P15034258696723744956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076490 (A014137 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253896.P15034258696723744956

/-!
# A253897: Numbers n such that the sequence A127644 with a(1) = n is conjectured to give a permutation of the natural numbers.

The programs for A253897, there is no canonical definition to state claims against.
-/

/-! ## A253897.P14259969365318443467

`lt[A001222(A185317(n)), A032741(n)]`
-/

namespace A253897.P14259969365318443467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A185317 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253897.P14259969365318443467

/-! ## A253897.P7564472646480549680

`eq[A000520(n+1)²², A304141(A137502(n+1))]`
-/

namespace A253897.P7564472646480549680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000520 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304141 (A137502 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253897.P7564472646480549680

/-! ## A253897.P16045999941697718283

`lt[A185219(n), A000005(n+3)]+3`
-/

namespace A253897.P16045999941697718283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 3

end

end A253897.P16045999941697718283

/-! ## A253897.P15597056040037797096

`lt[A087897(A004524(n)), A032741(n)]`
-/

namespace A253897.P15597056040037797096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (A004524 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253897.P15597056040037797096

/-! ## A253897.P14237632147016240224

`lt[A008614(A069905(n)), A078898(n)]`
-/

namespace A253897.P14237632147016240224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 (A069905 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A253897.P14237632147016240224

/-!
# A253898: Complement of A253897.

The programs for A253898, there is no canonical definition to state claims against.
-/

/-! ## A253898.P3327273303047277478

`comp[A253897(n+1)-1]+1`
-/

namespace A253898.P3327273303047277478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253897 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A253898.P3327273303047277478

/-! ## A253898.P13381208342634293529

`eq[char[A253897(n+1)], A128541(3*n)]`
-/

namespace A253898.P13381208342634293529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253897 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A253898.P13381208342634293529

/-! ## A253898.P16805837470598937622

`lt[char[A253897(n+1)]*A126646(n), n]`
-/

namespace A253898.P16805837470598937622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253897 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A126646 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A253898.P16805837470598937622

/-! ## A253898.P16728768762709929210

`lt[char[A253897(n+1)]*A154579(n+1), n]`
-/

namespace A253898.P16728768762709929210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253897 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A154579 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A253898.P16728768762709929210

/-! ## A253898.P16273036242086633933

`lt[char[A253897(n+1)]*A273756(n), 2*n]`
-/

namespace A253898.P16273036242086633933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253897 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A273756 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A253898.P16273036242086633933

/-!
# A253899: a(0) = 3, then a(n) is the least prime greater than a(n-1) that follows a gap of exactly 2*n.

The programs for A253899, there is no canonical definition to state claims against.
-/

/-! ## A253899.P6073748097458906700

`or(1, A256454(n)+2*n)`
-/

namespace A253899.P6073748097458906700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A256454 n + (2 * n : ℤ))

end

end A253899.P6073748097458906700

/-! ## A253899.P9196320642183789745

`A256454(round(sqrt(n²+1)))+2*n`
-/

namespace A253899.P9196320642183789745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256454 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (2 * n : ℤ)

end

end A253899.P9196320642183789745

/-! ## A253899.P6820663163176955287

`A004273(n)+A256454(n)+1`
-/

namespace A253899.P6820663163176955287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A256454 n + 1)

end

end A253899.P6820663163176955287

/-! ## A253899.P16303174149430436541

`A256454(A028310(n))+n+n`
-/

namespace A253899.P16303174149430436541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256454 (A028310 n).toNat + (n : ℤ) + (n : ℤ)

end

end A253899.P16303174149430436541

/-! ## A253899.P12312654912065563627

`record[A006257(n)]+A256454(n)+1`
-/

namespace A253899.P12312654912065563627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A256454 n + 1)

end

end A253899.P12312654912065563627

/-! ## A253899.P16628634001344276181

`2*n+A256454(A000007(n)+n)`
-/

namespace A253899.P16628634001344276181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A256454 (A000007 n + (n : ℤ)).toNat

end

end A253899.P16628634001344276181

/-! ## A253899.P5404724309533247673

`Δ[n²]+A256454(n)-A057427(n)`
-/

namespace A253899.P5404724309533247673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A256454 n - A057427 n)

end

end A253899.P5404724309533247673

/-! ## A253899.P5503872119121402865

`A008574(n)+A256454(n)-A005843(n)`
-/

namespace A253899.P5503872119121402865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A256454 n - A005843 n)

end

end A253899.P5503872119121402865

