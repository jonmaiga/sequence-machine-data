import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A400700: Start with a set of four adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

The programs for A400700, the canonical program `A400700.P1160826016266712974` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400700 has offset 0).

The definition of A400700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400700.P1160826016266712974

`ogf((4+2x+2x^2-4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400700

/-- `ogf((4+2x+2x^2-4x^3+2x^4)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P1160826016266712974.Spec : Prop :=
  ∀ n, P1160826016266712974.a n = A400700 n

theorem P1160826016266712974.correct : P1160826016266712974.Spec := by
  intro n
  simp only [A400700]

end A400700

/-! ## A400700.P14819664891141702491

`(3*n²+13*n+12+2*n%3)/3`
-/

namespace A400700.P14819664891141702491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n ^ 2 + 13 * n + 12 + 2 * (n % 3) : ℕ) : ℚ) / 3

end

end A400700.P14819664891141702491

namespace A400700

/-- `(3*n²+13*n+12+2*n%3)/3` -/
def P14819664891141702491.Spec : Prop :=
  ∀ n, P14819664891141702491.a n = (A400700 n : ℚ)

end A400700

/-! ## A400700.P12201784668580416589

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=4, a(1)=10, a(2)=18, a(3)=26, a(4)=38`
-/

namespace A400700.P12201784668580416589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10, 18, 26, 38] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A400700.P12201784668580416589

namespace A400700

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P12201784668580416589.Spec : Prop :=
  ∀ n, P12201784668580416589.a n = A400700 n

end A400700

/-! ## A400700.P8695989080318386227

`∑[a(n-3)+6]` with `a(0)=4, a(1)=6, a(2)=8, a(3)=8`
-/

namespace A400700.P8695989080318386227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 6, 8, 8] fun n f1 =>
  f1 (n - 3) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400700.P8695989080318386227

namespace A400700

/-- `∑[a(n-3)+6]` -/
def P8695989080318386227.Spec : Prop :=
  ∀ n, (P8695989080318386227.a n : ℤ) = A400700 n

end A400700

/-! ## A400700.P4722972859257851935

`(n+3)²-(∑[gcd(3, n)]+2)`
-/

namespace A400700.P4722972859257851935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)

end

end A400700.P4722972859257851935

namespace A400700

/-- `(n+3)²-(∑[gcd(3, n)]+2)` -/
def P4722972859257851935.Spec : Prop :=
  ∀ n, P4722972859257851935.a n = A400700 n

end A400700

/-! ## A400700.P15845371088295707021

`∑[∑[floor(a(n-3))]]` with `a(0)=4, a(1)=2, a(2)=2, a(3)=0, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A400700.P15845371088295707021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 2, 0, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400700.P15845371088295707021

namespace A400700

/-- `∑[∑[floor(a(n-3))]]` -/
def P15845371088295707021.Spec : Prop :=
  ∀ n, (P15845371088295707021.a n : ℤ) = A400700 n

end A400700

/-! ## A400700.P12159396214684051106

`Δ[ceil((n+1)*(n+2)²/3)]`
-/

namespace A400700.P12159396214684051106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) * (n + 2) ^ 2 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400700.P12159396214684051106

namespace A400700

/-- `Δ[ceil((n+1)*(n+2)²/3)]` -/
def P12159396214684051106.Spec : Prop :=
  ∀ n, P12159396214684051106.a n = A400700 n

end A400700

/-! ## A400700.P11821446760997363131

`A063213(n+1)+A027688(n)`
-/

namespace A400700.P11821446760997363131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063213 (n + 1) + A027688 n

end

end A400700.P11821446760997363131

namespace A400700

/-- `A063213(n+1)+A027688(n)` -/
def P11821446760997363131.Spec : Prop :=
  ∀ n, P11821446760997363131.a n = A400700 n

end A400700

/-! ## A400700.P4443865090801323101

`A386480(n)+A063218(n+1)`
-/

namespace A400700.P4443865090801323101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 n + A063218 (n + 1)

end

end A400700.P4443865090801323101

namespace A400700

/-- `A386480(n)+A063218(n+1)` -/
def P4443865090801323101.Spec : Prop :=
  ∀ n, P4443865090801323101.a n = A400700 n

end A400700

/-! ## A400700.P8179928572986571682

`A104675(n)-A047410(n+1)`
-/

namespace A400700.P8179928572986571682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 n - A047410 (n + 1)

end

end A400700.P8179928572986571682

namespace A400700

/-- `A104675(n)-A047410(n+1)` -/
def P8179928572986571682.Spec : Prop :=
  ∀ n, P8179928572986571682.a n = A400700 n

end A400700

/-! ## A400700.P16807327982424625887

`A108195(n+1)-A047623(n+1)`
-/

namespace A400700.P16807327982424625887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108195 (n + 1) - A047623 (n + 1)

end

end A400700.P16807327982424625887

namespace A400700

/-- `A108195(n+1)-A047623(n+1)` -/
def P16807327982424625887.Spec : Prop :=
  ∀ n, P16807327982424625887.a n = A400700 n

end A400700

/-! ## A400700.P14642735436214995932

`A399934(n+1)-A047378(n+1)`
-/

namespace A400700.P14642735436214995932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399934 (n + 1) - A047378 (n + 1)

end

end A400700.P14642735436214995932

namespace A400700

/-- `A399934(n+1)-A047378(n+1)` -/
def P14642735436214995932.Spec : Prop :=
  ∀ n, P14642735436214995932.a n = A400700 n

end A400700

/-! ## A400700.P3056185651208423814

`A047284(n+2)+(n+1)²`
-/

namespace A400700.P3056185651208423814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047284 (n + 2) + ((n + 1) ^ 2 : ℤ)

end

end A400700.P3056185651208423814

namespace A400700

/-- `A047284(n+2)+(n+1)²` -/
def P3056185651208423814.Spec : Prop :=
  ∀ n, P3056185651208423814.a n = A400700 n

end A400700

/-! ## A400700.P16449576690142053426

`A047284(n+2)+A000217(n+1)+A000217(n)`
-/

namespace A400700.P16449576690142053426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047284 (n + 2) + A000217 (n + 1) + A000217 n

end

end A400700.P16449576690142053426

namespace A400700

/-- `A047284(n+2)+A000217(n+1)+A000217(n)` -/
def P16449576690142053426.Spec : Prop :=
  ∀ n, P16449576690142053426.a n = A400700 n

end A400700

/-! ## A400700.P4944025596642177405

`Δ[A397981(n+1)]+(n+1)²`
-/

namespace A400700.P4944025596642177405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 1) ^ 2 : ℤ)

end

end A400700.P4944025596642177405

namespace A400700

/-- `Δ[A397981(n+1)]+(n+1)²` -/
def P4944025596642177405.Spec : Prop :=
  ∀ n, P4944025596642177405.a n = A400700 n

end A400700

/-!
# A400701: Start with a set of five adjacent collinear points in a hexagonal lattice. Every iteration, add to the set the points in the lattice which are adjacent to at least two points already in the set. This sequence gives the number of points in the set after n iterations.

The programs for A400701, the canonical program `A400701.P3330372214790239244` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400701 has offset 0).

The definition of A400701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400701.P3330372214790239244

`ogf((5+3x+2x^2-5x^3+x^4-2x^5+2x^6)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400701

/-- `ogf((5+3x+2x^2-5x^3+x^4-2x^5+2x^6)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P3330372214790239244.Spec : Prop :=
  ∀ n, P3330372214790239244.a n = A400701 n

theorem P3330372214790239244.correct : P3330372214790239244.Spec := by
  intro n
  simp only [A400701]

end A400701

/-!
# A400707: A variant of Gijswijt's sequence A090822, starting with 1,2 instead of 1.

The programs for A400707, there is no canonical definition to state claims against.
-/

/-! ## A400707.P69518860601679421

`A016736(A027559(n+1))`
-/

namespace A400707.P69518860601679421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016736 (A027559 (n + 1)).toNat

end

end A400707.P69518860601679421

/-! ## A400707.P12182174364699504506

`A384883(A108269(n+1))`
-/

namespace A400707.P12182174364699504506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384883 (A108269 (n + 1)).toNat

end

end A400707.P12182174364699504506

/-! ## A400707.P11208652370596046997

`A370560(A220769(n+1))`
-/

namespace A400707.P11208652370596046997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370560 (A220769 (n + 1)).toNat

end

end A400707.P11208652370596046997

/-! ## A400707.P4109642356843106337

`A384883(A249034(n+1))`
-/

namespace A400707.P4109642356843106337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384883 (A249034 (n + 1)).toNat

end

end A400707.P4109642356843106337

/-! ## A400707.P333962278117259423

`A186440(A338942(n+2))`
-/

namespace A400707.P333962278117259423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186440 (A338942 (n + 2)).toNat

end

end A400707.P333962278117259423

/-!
# A400716: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)) / (1 - x).

The programs for A400716, there is no canonical definition to state claims against.
-/

/-! ## A400716.P2941407831383196985

`A090689(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A400716.P2941407831383196985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A090689 (a (n - 1)).toNat

end

end A400716.P2941407831383196985

/-!
# A400717: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)^2) / (1 - x).

The programs for A400717, there is no canonical definition to state claims against.
-/

/-! ## A400717.P17369881869958408709

`A255128(A149489(n))`
-/

namespace A400717.P17369881869958408709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255128 (A149489 n).toNat

end

end A400717.P17369881869958408709

/-!
# A400728: The sequence of side lengths that occur when drawing a sequence of squares in the plane with integer side lengths such that the bottom-left corner of the k-th square is at the nonnegative integer point (k, y_k) and the square has side length a(k), subject to the conditions that (1) every initial segment has the property that the interior of each square has a distinct pattern made by the perimeters of the other squares, and (2) we greedily minimize the side length and then minimize the y-value.

The programs for A400728, there is no canonical definition to state claims against.
-/

/-! ## A400728.P2466250287555230724

`A087974(A232487(n+1))`
-/

namespace A400728.P2466250287555230724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087974 (A232487 (n + 1)).toNat

end

end A400728.P2466250287555230724

/-! ## A400728.P1638013241458094038

`A395530(A201474(n+1))`
-/

namespace A400728.P1638013241458094038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395530 (A201474 (n + 1)).toNat

end

end A400728.P1638013241458094038

/-! ## A400728.P7742764224840041119

`A100961(A142854(n+2))`
-/

namespace A400728.P7742764224840041119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 (A142854 (n + 2)).toNat

end

end A400728.P7742764224840041119

/-!
# A400729: The sequence of y-values that occur when drawing a sequence of squares in the plane with integer side lengths such that the bottom-left corner of the k-th square is at the nonnegative integer point (k, a(k)) and the square has side length s_k, subject to the conditions that (1) every initial sequence has the property that the interior of each square has a distinct pattern made by the perimeters of the other squares, and (2) we greedily minimize the side length and then minimize the y-value.

The programs for A400729, there is no canonical definition to state claims against.
-/

/-! ## A400729.P13788220606285910837

`A235127(A084083(n))`
-/

namespace A400729.P13788220606285910837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A084083 n).toNat

end

end A400729.P13788220606285910837

/-! ## A400729.P14482445992975443193

`A096972(A287628(n))`
-/

namespace A400729.P14482445992975443193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096972 (A287628 n).toNat

end

end A400729.P14482445992975443193

/-! ## A400729.P397235026449939538

`A345388(A289891(n))`
-/

namespace A400729.P397235026449939538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345388 (A289891 n).toNat

end

end A400729.P397235026449939538

/-! ## A400729.P11767446343323263006

`A163536(A000081(n+1))`
-/

namespace A400729.P11767446343323263006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163536 (A000081 (n + 1)).toNat

end

end A400729.P11767446343323263006

/-! ## A400729.P6313274055152331729

`A163536(A145550(n+1))`
-/

namespace A400729.P6313274055152331729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163536 (A145550 (n + 1)).toNat

end

end A400729.P6313274055152331729

/-!
# A400732: Numbers k such that k^2 - 1 and k^2 + 1 are both exponentially odd numbers (A268335).

The programs for A400732, there is no canonical definition to state claims against.
-/

/-! ## A400732.P6648566056155915487

`∩[A400730(n+1), A400731(n+1)]`
-/

namespace A400732.P6648566056155915487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400732.P6648566056155915487

/-!
# A400736: Three-dimensional multiplication table read by triangular shells.

The programs for A400736, there is no canonical definition to state claims against.
-/

/-! ## A400736.P14721714414941712639

`A057556(3*n+1)*A057556(3*n+2)*A057556(3*n+3)`
-/

namespace A400736.P14721714414941712639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057556 (3 * n + 1) * A057556 (3 * n + 2) * A057556 (3 * n + 3)

end

end A400736.P14721714414941712639

/-! ## A400736.P5440533629139565938

`A144625(3*n)*A144625(3*n+1)*A144625(3*n+2)`
-/

namespace A400736.P5440533629139565938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144625 (3 * n) * A144625 (3 * n + 1) * A144625 (3 * n + 2)

end

end A400736.P5440533629139565938

/-! ## A400736.P10402144901575176806

`A144627(n)*A144628(n)*A144629(n)`
-/

namespace A400736.P10402144901575176806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144627 n * A144628 n * A144629 n

end

end A400736.P10402144901575176806

/-! ## A400736.P4662302674370031951

`and(A110454(n+1), A113063(n+1))`
-/

namespace A400736.P4662302674370031951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110454 (n + 1)) (A113063 (n + 1))

end

end A400736.P4662302674370031951

/-! ## A400736.P3845268648257947310

`and(A002962(n+1), A113063(n+1))`
-/

namespace A400736.P3845268648257947310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002962 (n + 1)) (A113063 (n + 1))

end

end A400736.P3845268648257947310

/-!
# A400743: Primes p such that the multiplicative order of 16 modulo p is even.

The programs for A400743, there is no canonical definition to state claims against.
-/

/-! ## A400743.P6741147873408046820

`A128852(A115916(n+2))`
-/

namespace A400743.P6741147873408046820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128852 (A115916 (n + 2)).toNat

end

end A400743.P6741147873408046820

/-!
# A400744: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - x)) / (1 - 2*x).

The programs for A400744, there is no canonical definition to state claims against.
-/

/-! ## A400744.P13527533737217141807

`A035110(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A400744.P13527533737217141807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A035110 (a (n - 1)).toNat

end

end A400744.P13527533737217141807

/-!
# A400746: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)) / (1 - x)^2.

The programs for A400746, there is no canonical definition to state claims against.
-/

/-! ## A400746.P14892844457621332751

`A134338(A113682(n))`
-/

namespace A400746.P14892844457621332751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134338 (A113682 n).toNat

end

end A400746.P14892844457621332751

/-!
# A400748: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - x)^2) / (1 - 2*x).

The programs for A400748, there is no canonical definition to state claims against.
-/

/-! ## A400748.P4797136954621303151

`A116924(A041969(n))`
-/

namespace A400748.P4797136954621303151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116924 (A041969 n).toNat

end

end A400748.P4797136954621303151

/-!
# A400749: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - 2*x)^2) / (1 - x)^2.

The programs for A400749, there is no canonical definition to state claims against.
-/

/-! ## A400749.P2902289848989115159

`A361379(n²*a(n-1))` with `a(0)=1`
-/

namespace A400749.P2902289848989115159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A361379 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A400749.P2902289848989115159

/-!
# A400751: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - x)^2) / (1 - 2*x)^2.

The programs for A400751, there is no canonical definition to state claims against.
-/

/-! ## A400751.P13778246590313914160

`A109310(a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A400751.P13778246590313914160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A109310 (a (n - 1)).toNat

end

end A400751.P13778246590313914160

/-!
# A400753: Row sums of the Riordan array (1/(1-3*x), x/(1-3*x)^3).

The programs for A400753, the canonical program `A400753.P10274350832908785409` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400753 has offset 0).

The definition of A400753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400753.P10274350832908785409

`ogf((1-6x+9x^2)/(1-10x+27x^2-27x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400753

/-- `ogf((1-6x+9x^2)/(1-10x+27x^2-27x^3))` -/
def P10274350832908785409.Spec : Prop :=
  ∀ n, P10274350832908785409.a n = A400753 n

theorem P10274350832908785409.correct : P10274350832908785409.Spec := by
  intro n
  simp only [A400753]

end A400753

/-! ## A400753.P16467801667034276594

`∑{#}[n, C(n+2*#, 3*#)*3^(n-#)]`
-/

namespace A400753.P16467801667034276594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2 * k) (3 * k) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A400753.P16467801667034276594

namespace A400753

/-- `∑{#}[n, C(n+2*#, 3*#)*3^(n-#)]` -/
def P16467801667034276594.Spec : Prop :=
  ∀ n, P16467801667034276594.a n = (A400753 n : ℚ)

end A400753

/-! ## A400753.P13077378004979924483

`10*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=4, a(2)=22`
-/

namespace A400753.P13077378004979924483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 22] fun n a =>
  10 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A400753.P13077378004979924483

namespace A400753

/-- `10*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P13077378004979924483.Spec : Prop :=
  ∀ n, P13077378004979924483.a n = A400753 n

end A400753

/-! ## A400753.P5389395736127751915

`A084386(3*n)`
-/

namespace A400753.P5389395736127751915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084386 (3 * n)

end

end A400753.P5389395736127751915

namespace A400753

/-- `A084386(3*n)` -/
def P5389395736127751915.Spec : Prop :=
  ∀ n, P5389395736127751915.a n = A400753 n

end A400753

/-! ## A400753.P12886106754647069564

`A052900(3*(n+1))/3`
-/

namespace A400753.P12886106754647069564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052900 (3 * (n + 1)) : ℚ) / 3

end

end A400753.P12886106754647069564

namespace A400753

/-- `A052900(3*(n+1))/3` -/
def P12886106754647069564.Spec : Prop :=
  ∀ n, P12886106754647069564.a n = (A400753 n : ℚ)

end A400753

/-!
# A400754: Row sums of the Riordan array (1/(1-3*x)^2, x/(1-3*x)^3).

The programs for A400754, the canonical program `A400754.P4279432807320805709` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400754 has offset 0).

The definition of A400754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400754.P4279432807320805709

`ogf((1-3x)/(1-10x+27x^2-27x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400754

/-- `ogf((1-3x)/(1-10x+27x^2-27x^3))` -/
def P4279432807320805709.Spec : Prop :=
  ∀ n, P4279432807320805709.a n = A400754 n

theorem P4279432807320805709.correct : P4279432807320805709.Spec := by
  intro n
  simp only [A400754]

end A400754

/-! ## A400754.P13732877577048158346

`∑{#}[n, C(n+2*#+1, 3*#+1)*3^(n-#)]`
-/

namespace A400754.P13732877577048158346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 2 * k + 1) (3 * k + 1) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A400754.P13732877577048158346

namespace A400754

/-- `∑{#}[n, C(n+2*#+1, 3*#+1)*3^(n-#)]` -/
def P13732877577048158346.Spec : Prop :=
  ∀ n, P13732877577048158346.a n = (A400754 n : ℚ)

end A400754

/-! ## A400754.P7591449410658991033

`10*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=7, a(2)=43`
-/

namespace A400754.P7591449410658991033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 43] fun n a =>
  10 * a (n - 1) - 27 * a (n - 2) + 27 * a (n - 3)

end

end A400754.P7591449410658991033

namespace A400754

/-- `10*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P7591449410658991033.Spec : Prop :=
  ∀ n, P7591449410658991033.a n = A400754 n

end A400754

/-! ## A400754.P11864301670218732055

`∑{#}[n, 3^(n-#)*A400753(#)]`
-/

namespace A400754.P11864301670218732055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A400753 k : ℚ)

end

end A400754.P11864301670218732055

namespace A400754

/-- `∑{#}[n, 3^(n-#)*A400753(#)]` -/
def P11864301670218732055.Spec : Prop :=
  ∀ n, P11864301670218732055.a n = (A400754 n : ℚ)

end A400754

/-! ## A400754.P1241050334893440819

`A084386(3*n+1)`
-/

namespace A400754.P1241050334893440819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084386 (3 * n + 1)

end

end A400754.P1241050334893440819

namespace A400754

/-- `A084386(3*n+1)` -/
def P1241050334893440819.Spec : Prop :=
  ∀ n, P1241050334893440819.a n = A400754 n

end A400754

/-!
# A400755: Triangle read by rows: T(n,k) = denominator(n/(n + k)), with 1 <= k <= n.

The programs for A400755, the canonical program `A400755.P10011494647645333911` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400755 has offset 1).

The definition of A400755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400755.P11477066797840731786

`lcm(row(n)+1, col(n)+1)/(row(n)+1)+lcm(row(n)+1, col(n)+1)/(col(n)+1)`
-/

namespace A400755.P11477066797840731786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℚ) / (SequenceMachineLib.triRow n + 1 : ℚ) + (Nat.lcm (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℚ) / (SequenceMachineLib.triCol n + 1 : ℚ)

end

end A400755.P11477066797840731786

namespace A400755

/-- `lcm(row(n)+1, col(n)+1)/(row(n)+1)+lcm(row(n)+1, col(n)+1)/(col(n)+1)` -/
def P11477066797840731786.Spec : Prop :=
  ∀ n, P11477066797840731786.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P10011494647645333911

`A059026(n+1)+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400755

/-- `A059026(n+1)+1` -/
def P10011494647645333911.Spec : Prop :=
  ∀ n, P10011494647645333911.a n = A400755 (n + 1)

theorem P10011494647645333911.correct : P10011494647645333911.Spec := by
  intro n
  simp only [A400755, Nat.add_sub_cancel]

end A400755

/-! ## A400755.P9631098683072155006

`A020725(A059026(n+1))`
-/

namespace A400755.P9631098683072155006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A059026 (n + 1)).toNat

end

end A400755.P9631098683072155006

namespace A400755

/-- `A020725(A059026(n+1))` -/
def P9631098683072155006.Spec : Prop :=
  ∀ n, P9631098683072155006.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P1294536104266546659

`A164306(n+1)+A054531(n+1)`
-/

namespace A400755.P1294536104266546659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1) + A054531 (n + 1)

end

end A400755.P1294536104266546659

namespace A400755

/-- `A164306(n+1)+A054531(n+1)` -/
def P1294536104266546659.Spec : Prop :=
  ∀ n, P1294536104266546659.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P293868166546449915

`A108872(n+1)/A050873(n+1)`
-/

namespace A400755.P293868166546449915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A400755.P293868166546449915

namespace A400755

/-- `A108872(n+1)/A050873(n+1)` -/
def P293868166546449915.Spec : Prop :=
  ∀ n, P293868166546449915.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P8587893247953728232

`(A002260(n+1)+A002024(n+1))/A050873(n+1)`
-/

namespace A400755.P8587893247953728232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) + A002024 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A400755.P8587893247953728232

namespace A400755

/-- `(A002260(n+1)+A002024(n+1))/A050873(n+1)` -/
def P8587893247953728232.Spec : Prop :=
  ∀ n, P8587893247953728232.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P7439377501314715427

`A054531(n+1)+A051537(n+1)/A054531(n+1)`
-/

namespace A400755.P7439377501314715427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054531 (n + 1) : ℚ) + (A051537 (n + 1) : ℚ) / (A054531 (n + 1) : ℚ)

end

end A400755.P7439377501314715427

namespace A400755

/-- `A054531(n+1)+A051537(n+1)/A054531(n+1)` -/
def P7439377501314715427.Spec : Prop :=
  ∀ n, P7439377501314715427.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P17372690159812131186

`(A199408(n+1)+A050873(n+1))/A050873(n+1)`
-/

namespace A400755.P17372690159812131186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199408 (n + 1) + A050873 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A400755.P17372690159812131186

namespace A400755

/-- `(A199408(n+1)+A050873(n+1))/A050873(n+1)` -/
def P17372690159812131186.Spec : Prop :=
  ∀ n, P17372690159812131186.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P3275526791555680672

`A164306(n+1)+A051537(n+1)/A164306(n+1)`
-/

namespace A400755.P3275526791555680672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164306 (n + 1) : ℚ) + (A051537 (n + 1) : ℚ) / (A164306 (n + 1) : ℚ)

end

end A400755.P3275526791555680672

namespace A400755

/-- `A164306(n+1)+A051537(n+1)/A164306(n+1)` -/
def P3275526791555680672.Spec : Prop :=
  ∀ n, P3275526791555680672.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P6444306380021776244

`A051173(n+1)*A221919(n+1)/A221918(n+1)`
-/

namespace A400755.P6444306380021776244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) * A221919 (n + 1) : ℚ) / (A221918 (n + 1) : ℚ)

end

end A400755.P6444306380021776244

namespace A400755

/-- `A051173(n+1)*A221919(n+1)/A221918(n+1)` -/
def P6444306380021776244.Spec : Prop :=
  ∀ n, P6444306380021776244.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P13228863720765309846

`A277227(n+2)+A164306(n+1)`
-/

namespace A400755.P13228863720765309846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 2) + A164306 (n + 1)

end

end A400755.P13228863720765309846

namespace A400755

/-- `A277227(n+2)+A164306(n+1)` -/
def P13228863720765309846.Spec : Prop :=
  ∀ n, P13228863720765309846.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P18034706789928930825

`A277227(n+2)+A051537(n+1)/A277227(n+2)`
-/

namespace A400755.P18034706789928930825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277227 (n + 2) : ℚ) + (A051537 (n + 1) : ℚ) / (A277227 (n + 2) : ℚ)

end

end A400755.P18034706789928930825

namespace A400755

/-- `A277227(n+2)+A051537(n+1)/A277227(n+2)` -/
def P18034706789928930825.Spec : Prop :=
  ∀ n, P18034706789928930825.a n = (A400755 (n + 1) : ℚ)

end A400755

/-! ## A400755.P8485212600616825220

`A341315(A014132(n+1))`
-/

namespace A400755.P8485212600616825220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341315 (A014132 (n + 1)).toNat

end

end A400755.P8485212600616825220

namespace A400755

/-- `A341315(A014132(n+1))` -/
def P8485212600616825220.Spec : Prop :=
  ∀ n, P8485212600616825220.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P15921932082581089846

`A341315(A185871(n+1))`
-/

namespace A400755.P15921932082581089846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341315 (A185871 (n + 1)).toNat

end

end A400755.P15921932082581089846

namespace A400755

/-- `A341315(A185871(n+1))` -/
def P15921932082581089846.Spec : Prop :=
  ∀ n, P15921932082581089846.a n = A400755 (n + 1)

end A400755

/-! ## A400755.P4138338316880860849

`A316436(A087112(n+1))`
-/

namespace A400755.P4138338316880860849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (A087112 (n + 1)).toNat

end

end A400755.P4138338316880860849

namespace A400755

/-- `A316436(A087112(n+1))` -/
def P4138338316880860849.Spec : Prop :=
  ∀ n, P4138338316880860849.a n = A400755 (n + 1)

end A400755

/-!
# A400758: Number of equivalence classes of Dyck paths of semilength n+1 up to permutation of primitive components, and permutations and reflection of nested primitive components.

The programs for A400758, there is no canonical definition to state claims against.
-/

/-! ## A400758.P2149276787392631341

`∑[A005217(n)]`
-/

namespace A400758.P2149276787392631341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400758.P2149276787392631341

/-!
# A400763: Numbers k such that the k-th composition in standard order is a palindrome. Positions of palindromes in A066099.

The programs for A400763, the canonical program `A400763.P8225141009874305220` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400763 has offset 1).

The definition of A400763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A044051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A400763.P8225141009874305220

`A044051(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A400763

/-- `A044051(n+1)-1` -/
def P8225141009874305220.Spec : Prop :=
  ∀ n, P8225141009874305220.a n = A400763 (n + 1)

theorem P8225141009874305220.correct : P8225141009874305220.Spec := by
  intro n
  simp only [A400763, Nat.add_sub_cancel]

end A400763

/-! ## A400763.P13090741073820232307

`eq[1, A141707(n+1)]`
-/

namespace A400763.P13090741073820232307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P13090741073820232307

namespace A400763

/-- `eq[1, A141707(n+1)]` -/
def P13090741073820232307.Spec : Prop :=
  ∀ n, (P13090741073820232307.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P12328264612157690517

`(A164302(n+1)-2)/4`
-/

namespace A400763.P12328264612157690517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164302 (n + 1) - 2 : ℚ) / 4

end

end A400763.P12328264612157690517

namespace A400763

/-- `(A164302(n+1)-2)/4` -/
def P12328264612157690517.Spec : Prop :=
  ∀ n, P12328264612157690517.a n = (A400763 (n + 1) : ℚ)

end A400763

/-! ## A400763.P10168679193172664314

`eq[0, A037888(2*n+1)]`
-/

namespace A400763.P10168679193172664314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P10168679193172664314

namespace A400763

/-- `eq[0, A037888(2*n+1)]` -/
def P10168679193172664314.Spec : Prop :=
  ∀ n, (P10168679193172664314.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P4235152365667385468

`eq[0, A055945(2*n+1)]`
-/

namespace A400763.P4235152365667385468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P4235152365667385468

namespace A400763

/-- `eq[0, A055945(2*n+1)]` -/
def P4235152365667385468.Spec : Prop :=
  ∀ n, (P4235152365667385468.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P3624234019750223234

`eq[0, A066057(2*n+1)]`
-/

namespace A400763.P3624234019750223234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P3624234019750223234

namespace A400763

/-- `eq[0, A066057(2*n+1)]` -/
def P3624234019750223234.Spec : Prop :=
  ∀ n, (P3624234019750223234.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P10281104186201709474

`eq[0, A144078(2*n+1)]`
-/

namespace A400763.P10281104186201709474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144078 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P10281104186201709474

namespace A400763

/-- `eq[0, A144078(2*n+1)]` -/
def P10281104186201709474.Spec : Prop :=
  ∀ n, (P10281104186201709474.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P1610974994184599458

`eq[0, A161502(2*n+1)]`
-/

namespace A400763.P1610974994184599458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161502 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P1610974994184599458

namespace A400763

/-- `eq[0, A161502(2*n+1)]` -/
def P1610974994184599458.Spec : Prop :=
  ∀ n, (P1610974994184599458.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P6526230236288194760

`eq[0, A175919(2*n+1)]`
-/

namespace A400763.P6526230236288194760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P6526230236288194760

namespace A400763

/-- `eq[0, A175919(2*n+1)]` -/
def P6526230236288194760.Spec : Prop :=
  ∀ n, (P6526230236288194760.a n : ℤ) = A400763 (n + 1)

end A400763

/-! ## A400763.P12265556714756237564

`eq[0, A178226(2*n+1)]`
-/

namespace A400763.P12265556714756237564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A400763.P12265556714756237564

namespace A400763

/-- `eq[0, A178226(2*n+1)]` -/
def P12265556714756237564.Spec : Prop :=
  ∀ n, (P12265556714756237564.a n : ℤ) = A400763 (n + 1)

end A400763

/-!
# A400765: Numbers k such that the k-th composition in standard order is an even-length palindrome. Positions of even-length palindromes in A066099.

The programs for A400765, there is no canonical definition to state claims against.
-/

/-! ## A400765.P5861455267118125591

`(A264619(n)-1)/2`
-/

namespace A400765.P5861455267118125591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264619 n - 1 : ℚ) / 2

end

end A400765.P5861455267118125591

/-! ## A400765.P15561074874820382663

`A004524(A264619(n))`
-/

namespace A400765.P15561074874820382663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A264619 n).toNat

end

end A400765.P15561074874820382663

/-! ## A400765.P15239551743614249937

`A333776(A351010(n+1))`
-/

namespace A400765.P15239551743614249937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333776 (A351010 (n + 1)).toNat

end

end A400765.P15239551743614249937

/-! ## A400765.P12216715203800501732

`eq[A001285(n), A141707(n+1)]`
-/

namespace A400765.P12216715203800501732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400765.P12216715203800501732

/-! ## A400765.P4981698991501583714

`eq[A010059(n), A141707(n+1)]`
-/

namespace A400765.P4981698991501583714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400765.P4981698991501583714

/-! ## A400765.P1511792995810422662

`eq[A102393(n), A145342(n+1)]`
-/

namespace A400765.P1511792995810422662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400765.P1511792995810422662

/-! ## A400765.P17095578140570475118

`eq[A106400(n), A141707(n+1)]`
-/

namespace A400765.P17095578140570475118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400765.P17095578140570475118

/-! ## A400765.P9707267165211801171

`eq[A000069(n+1), A265509(n)]`
-/

namespace A400765.P9707267165211801171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400765.P9707267165211801171

/-! ## A400765.P6601754329174632460

`eq[A026147(n+1), A265509(n)]`
-/

namespace A400765.P6601754329174632460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400765.P6601754329174632460

/-! ## A400765.P10845184144875799642

`A044051(A092754(2*n+1))-1`
-/

namespace A400765.P10845184144875799642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044051 (A092754 (2 * n + 1)).toNat - 1

end

end A400765.P10845184144875799642

/-!
# A400766: Numbers k such that the k-th composition in standard order is an odd-length palindrome. Positions of odd-length palindromes in A066099.

The programs for A400766, there is no canonical definition to state claims against.
-/

/-! ## A400766.P1460730032914473292

`eq[A010060(n), A141707(n+1)]`
-/

namespace A400766.P1460730032914473292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P1460730032914473292

/-! ## A400766.P2657334607048442340

`eq[A102394(n), A145342(n+1)]`
-/

namespace A400766.P2657334607048442340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P2657334607048442340

/-! ## A400766.P4420164715931469747

`eq[A001969(n+1), A265509(n)]`
-/

namespace A400766.P4420164715931469747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P4420164715931469747

/-! ## A400766.P2354131433167400449

`eq[A181155(n+1), A265509(n)]`
-/

namespace A400766.P2354131433167400449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P2354131433167400449

/-! ## A400766.P900471879234165471

`eq[A105670(n+1), A341916(n)]`
-/

namespace A400766.P900471879234165471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P900471879234165471

/-! ## A400766.P7821881568914910137

`eq[A265510(n), A385663(n+1)]`
-/

namespace A400766.P7821881568914910137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265510 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P7821881568914910137

/-! ## A400766.P13955950409260418555

`eq[A001969(n+1), A141708(n+1)]`
-/

namespace A400766.P13955950409260418555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P13955950409260418555

/-! ## A400766.P5367099317646619182

`eq[A001969(n+1), A145341(n+1)]`
-/

namespace A400766.P5367099317646619182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P5367099317646619182

/-! ## A400766.P16024311870136632142

`eq[A141708(n+1), A181155(n+1)]`
-/

namespace A400766.P16024311870136632142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P16024311870136632142

/-! ## A400766.P9208037282979062368

`eq[A145341(n+1), A181155(n+1)]`
-/

namespace A400766.P9208037282979062368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A400766.P9208037282979062368

/-!
# A400769: a(n) = mu(n^2 + n + 1).

The programs for A400769, the canonical program `A400769.P1291810996516571968` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400769 has offset 0).

The definition of A400769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008683(n²+n+1)` (program `A400769.P1291810996516571968`, by `A400769.P1291810996516571968.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400769.P1291810996516571968

`A008683(n²+n+1)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400769

/-- `A008683(n²+n+1)` -/
def P1291810996516571968.Spec : Prop :=
  ∀ n, P1291810996516571968.a n = A400769 n

theorem P1291810996516571968.correct : P1291810996516571968.Spec := by
  intro n
  simp only [A400769]

end A400769

/-! ## A400769.P12696986522295350676

`Δ[A400770(abs(n-1))]`
-/

namespace A400769.P12696986522295350676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400770 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400769.P12696986522295350676

namespace A400769

/-- `Δ[A400770(abs(n-1))]` -/
def P12696986522295350676.Spec : Prop :=
  ∀ n, P12696986522295350676.a n = A400769 n

end A400769

/-! ## A400769.P2666157344329446669

`A355689(n²+n+1)`
-/

namespace A400769.P2666157344329446669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n ^ 2 + (n + 1))

end

end A400769.P2666157344329446669

namespace A400769

/-- `A355689(n²+n+1)` -/
def P2666157344329446669.Spec : Prop :=
  ∀ n, P2666157344329446669.a n = A400769 n

end A400769

/-! ## A400769.P5078033093522777007

`A355690(n²+n+1)`
-/

namespace A400769.P5078033093522777007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (n ^ 2 + (n + 1))

end

end A400769.P5078033093522777007

namespace A400769

/-- `A355690(n²+n+1)` -/
def P5078033093522777007.Spec : Prop :=
  ∀ n, P5078033093522777007.a n = A400769 n

end A400769

/-! ## A400769.P7224143806913434177

`A067856(n²+n+1)`
-/

namespace A400769.P7224143806913434177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n ^ 2 + (n + 1))

end

end A400769.P7224143806913434177

namespace A400769

/-- `A067856(n²+n+1)` -/
def P7224143806913434177.Spec : Prop :=
  ∀ n, P7224143806913434177.a n = A400769 n

end A400769

/-! ## A400769.P3088296474904944889

`A085384(n²+n+1)`
-/

namespace A400769.P3088296474904944889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (n ^ 2 + (n + 1))

end

end A400769.P3088296474904944889

namespace A400769

/-- `A085384(n²+n+1)` -/
def P3088296474904944889.Spec : Prop :=
  ∀ n, P3088296474904944889.a n = A400769 n

end A400769

/-! ## A400769.P4380393236948831668

`A085639(n²+n+1)`
-/

namespace A400769.P4380393236948831668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085639 (n ^ 2 + (n + 1))

end

end A400769.P4380393236948831668

namespace A400769

/-- `A085639(n²+n+1)` -/
def P4380393236948831668.Spec : Prop :=
  ∀ n, P4380393236948831668.a n = A400769 n

end A400769

/-! ## A400769.P8027308314923921668

`A086831(n²+n+1)`
-/

namespace A400769.P8027308314923921668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (n ^ 2 + (n + 1))

end

end A400769.P8027308314923921668

namespace A400769

/-- `A086831(n²+n+1)` -/
def P8027308314923921668.Spec : Prop :=
  ∀ n, P8027308314923921668.a n = A400769 n

end A400769

/-! ## A400769.P15864203956699346546

`A131038(n²+n+1)`
-/

namespace A400769.P15864203956699346546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131038 (n ^ 2 + (n + 1))

end

end A400769.P15864203956699346546

namespace A400769

/-- `A131038(n²+n+1)` -/
def P15864203956699346546.Spec : Prop :=
  ∀ n, P15864203956699346546.a n = A400769 n

end A400769

/-! ## A400769.P17133893540384043441

`A359432(n²+n+1)`
-/

namespace A400769.P17133893540384043441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359432 (n ^ 2 + n + 1)

end

end A400769.P17133893540384043441

namespace A400769

/-- `A359432(n²+n+1)` -/
def P17133893540384043441.Spec : Prop :=
  ∀ n, P17133893540384043441.a n = A400769 n

end A400769

/-! ## A400769.P10853183279063633005

`A099990(∑[n])`
-/

namespace A400769.P10853183279063633005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A400769.P10853183279063633005

namespace A400769

/-- `A099990(∑[n])` -/
def P10853183279063633005.Spec : Prop :=
  ∀ n, P10853183279063633005.a n = A400769 n

end A400769

/-! ## A400769.P10854611391297457437

`A080323(n²+n+1)`
-/

namespace A400769.P10854611391297457437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n ^ 2 + (n + 1))

end

end A400769.P10854611391297457437

namespace A400769

/-- `A080323(n²+n+1)` -/
def P10854611391297457437.Spec : Prop :=
  ∀ n, P10854611391297457437.a n = A400769 n

end A400769

/-! ## A400769.P15238261719800721634

`A343370(n²+n+1)`
-/

namespace A400769.P15238261719800721634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343370 (n ^ 2 + (n + 1))

end

end A400769.P15238261719800721634

namespace A400769

/-- `A343370(n²+n+1)` -/
def P15238261719800721634.Spec : Prop :=
  ∀ n, P15238261719800721634.a n = A400769 n

end A400769

/-! ## A400769.P13443543716496436219

`A086823(A112087(n+1))`
-/

namespace A400769.P13443543716496436219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086823 (A112087 (n + 1)).toNat

end

end A400769.P13443543716496436219

namespace A400769

/-- `A086823(A112087(n+1))` -/
def P13443543716496436219.Spec : Prop :=
  ∀ n, P13443543716496436219.a n = A400769 n

end A400769

/-! ## A400769.P7139306803039319224

`A087003(n²+n+1)`
-/

namespace A400769.P7139306803039319224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n ^ 2 + (n + 1))

end

end A400769.P7139306803039319224

namespace A400769

/-- `A087003(n²+n+1)` -/
def P7139306803039319224.Spec : Prop :=
  ∀ n, P7139306803039319224.a n = A400769 n

end A400769

/-! ## A400769.P518519325172334915

`A092152(n²+n+1)`
-/

namespace A400769.P518519325172334915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n ^ 2 + (n + 1))

end

end A400769.P518519325172334915

namespace A400769

/-- `A092152(n²+n+1)` -/
def P518519325172334915.Spec : Prop :=
  ∀ n, P518519325172334915.a n = A400769 n

end A400769

/-! ## A400769.P15039253294811873053

`A092673(n²+n+1)`
-/

namespace A400769.P15039253294811873053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n ^ 2 + (n + 1))

end

end A400769.P15039253294811873053

namespace A400769

/-- `A092673(n²+n+1)` -/
def P15039253294811873053.Spec : Prop :=
  ∀ n, P15039253294811873053.a n = A400769 n

end A400769

/-! ## A400769.P16430109386674258874

`A197774(n²+n+1)`
-/

namespace A400769.P16430109386674258874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (n ^ 2 + (n + 1))

end

end A400769.P16430109386674258874

namespace A400769

/-- `A197774(n²+n+1)` -/
def P16430109386674258874.Spec : Prop :=
  ∀ n, P16430109386674258874.a n = A400769 n

end A400769

/-! ## A400769.P15270179956284216807

`A209635(n²+n+1)`
-/

namespace A400769.P15270179956284216807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n ^ 2 + (n + 1))

end

end A400769.P15270179956284216807

namespace A400769

/-- `A209635(n²+n+1)` -/
def P15270179956284216807.Spec : Prop :=
  ∀ n, P15270179956284216807.a n = A400769 n

end A400769

/-! ## A400769.P17592624493397419264

`A219009(n²+n+1)`
-/

namespace A400769.P17592624493397419264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (n ^ 2 + (n + 1))

end

end A400769.P17592624493397419264

namespace A400769

/-- `A219009(n²+n+1)` -/
def P17592624493397419264.Spec : Prop :=
  ∀ n, P17592624493397419264.a n = A400769 n

end A400769

/-!
# A400770: a(n) = Sum_{k=0..n} mu(k^2 + k + 1).

The programs for A400770, the canonical program `A400770.P6014380429317486619` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400770 has offset 0).

The definition of A400770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400770.P6014380429317486619

`∑[A400769(n)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400770

/-- `∑[A400769(n)]` -/
def P6014380429317486619.Spec : Prop :=
  ∀ n, P6014380429317486619.a n = A400770 n

theorem P6014380429317486619.correct : P6014380429317486619.Spec := by
  intro n
  simp only [A400770]

end A400770

/-! ## A400770.P1811547762114326221

`∑[A008683(n²+n+1)]`
-/

namespace A400770.P1811547762114326221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P1811547762114326221

namespace A400770

/-- `∑[A008683(n²+n+1)]` -/
def P1811547762114326221.Spec : Prop :=
  ∀ n, P1811547762114326221.a n = A400770 n

end A400770

/-! ## A400770.P2397733483845485875

`∑[A355689(n²+n+1)]`
-/

namespace A400770.P2397733483845485875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P2397733483845485875

namespace A400770

/-- `∑[A355689(n²+n+1)]` -/
def P2397733483845485875.Spec : Prop :=
  ∀ n, P2397733483845485875.a n = A400770 n

end A400770

/-! ## A400770.P11573905621113222382

`∑[A355690(n²+n+1)]`
-/

namespace A400770.P11573905621113222382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P11573905621113222382

namespace A400770

/-- `∑[A355690(n²+n+1)]` -/
def P11573905621113222382.Spec : Prop :=
  ∀ n, P11573905621113222382.a n = A400770 n

end A400770

/-! ## A400770.P12175442674900135834

`∑[A067856(n²+n+1)]`
-/

namespace A400770.P12175442674900135834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P12175442674900135834

namespace A400770

/-- `∑[A067856(n²+n+1)]` -/
def P12175442674900135834.Spec : Prop :=
  ∀ n, P12175442674900135834.a n = A400770 n

end A400770

/-! ## A400770.P1775612757585347115

`∑[A085384(n²+n+1)]`
-/

namespace A400770.P1775612757585347115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085384 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P1775612757585347115

namespace A400770

/-- `∑[A085384(n²+n+1)]` -/
def P1775612757585347115.Spec : Prop :=
  ∀ n, P1775612757585347115.a n = A400770 n

end A400770

/-! ## A400770.P13808792334290245202

`∑[A085639(n²+n+1)]`
-/

namespace A400770.P13808792334290245202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085639 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P13808792334290245202

namespace A400770

/-- `∑[A085639(n²+n+1)]` -/
def P13808792334290245202.Spec : Prop :=
  ∀ n, P13808792334290245202.a n = A400770 n

end A400770

/-! ## A400770.P12895747738614489199

`∑[A086831(n²+n+1)]`
-/

namespace A400770.P12895747738614489199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086831 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P12895747738614489199

namespace A400770

/-- `∑[A086831(n²+n+1)]` -/
def P12895747738614489199.Spec : Prop :=
  ∀ n, P12895747738614489199.a n = A400770 n

end A400770

/-! ## A400770.P5330289724736780178

`∑[A131038(n²+n+1)]`
-/

namespace A400770.P5330289724736780178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131038 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P5330289724736780178

namespace A400770

/-- `∑[A131038(n²+n+1)]` -/
def P5330289724736780178.Spec : Prop :=
  ∀ n, P5330289724736780178.a n = A400770 n

end A400770

/-! ## A400770.P8623368191489337749

`∑[A099990(∑[n])]`
-/

namespace A400770.P8623368191489337749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099990 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P8623368191489337749

namespace A400770

/-- `∑[A099990(∑[n])]` -/
def P8623368191489337749.Spec : Prop :=
  ∀ n, P8623368191489337749.a n = A400770 n

end A400770

/-! ## A400770.P7606792735209845267

`∑[A080323(n²+n+1)]`
-/

namespace A400770.P7606792735209845267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080323 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P7606792735209845267

namespace A400770

/-- `∑[A080323(n²+n+1)]` -/
def P7606792735209845267.Spec : Prop :=
  ∀ n, P7606792735209845267.a n = A400770 n

end A400770

/-! ## A400770.P17829226504911788718

`∑[A343370(n²+n+1)]`
-/

namespace A400770.P17829226504911788718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343370 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P17829226504911788718

namespace A400770

/-- `∑[A343370(n²+n+1)]` -/
def P17829226504911788718.Spec : Prop :=
  ∀ n, P17829226504911788718.a n = A400770 n

end A400770

/-! ## A400770.P13239344524520500667

`∑[A087003(n²+n+1)]`
-/

namespace A400770.P13239344524520500667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P13239344524520500667

namespace A400770

/-- `∑[A087003(n²+n+1)]` -/
def P13239344524520500667.Spec : Prop :=
  ∀ n, P13239344524520500667.a n = A400770 n

end A400770

/-! ## A400770.P5159459618458447061

`∑[A092152(n²+n+1)]`
-/

namespace A400770.P5159459618458447061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P5159459618458447061

namespace A400770

/-- `∑[A092152(n²+n+1)]` -/
def P5159459618458447061.Spec : Prop :=
  ∀ n, P5159459618458447061.a n = A400770 n

end A400770

/-! ## A400770.P5303876857729209287

`∑[A092673(n²+n+1)]`
-/

namespace A400770.P5303876857729209287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P5303876857729209287

namespace A400770

/-- `∑[A092673(n²+n+1)]` -/
def P5303876857729209287.Spec : Prop :=
  ∀ n, P5303876857729209287.a n = A400770 n

end A400770

/-! ## A400770.P6468774903293683704

`∑[A197774(n²+n+1)]`
-/

namespace A400770.P6468774903293683704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197774 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P6468774903293683704

namespace A400770

/-- `∑[A197774(n²+n+1)]` -/
def P6468774903293683704.Spec : Prop :=
  ∀ n, P6468774903293683704.a n = A400770 n

end A400770

/-! ## A400770.P321040576013826633

`∑[A209635(n²+n+1)]`
-/

namespace A400770.P321040576013826633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P321040576013826633

namespace A400770

/-- `∑[A209635(n²+n+1)]` -/
def P321040576013826633.Spec : Prop :=
  ∀ n, P321040576013826633.a n = A400770 n

end A400770

/-! ## A400770.P1418696776192314811

`∑[A219009(n²+n+1)]`
-/

namespace A400770.P1418696776192314811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219009 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P1418696776192314811

namespace A400770

/-- `∑[A219009(n²+n+1)]` -/
def P1418696776192314811.Spec : Prop :=
  ∀ n, P1418696776192314811.a n = A400770 n

end A400770

/-! ## A400770.P203242257874567055

`∑[A253206(n²+n+1)]`
-/

namespace A400770.P203242257874567055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253206 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P203242257874567055

namespace A400770

/-- `∑[A253206(n²+n+1)]` -/
def P203242257874567055.Spec : Prop :=
  ∀ n, P203242257874567055.a n = A400770 n

end A400770

/-! ## A400770.P11103724644726224071

`∑[A317673(n²+n+1)]`
-/

namespace A400770.P11103724644726224071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317673 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P11103724644726224071

namespace A400770

/-- `∑[A317673(n²+n+1)]` -/
def P11103724644726224071.Spec : Prop :=
  ∀ n, P11103724644726224071.a n = A400770 n

end A400770

/-!
# A400779: a(n) = Sum_{d|n} gcd(n,d+1).

The programs for A400779, the canonical program `A400779.P9186177373831134570` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400779 has offset 1).

The definition of A400779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, gcd(n+1, #+1)]` (program `A400779.P9186177373831134570`, by `A400779.P9186177373831134570.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A400779.P9186177373831134570

`∑{d}[n+1, gcd(n+1, #+1)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400779

/-- `∑{d}[n+1, gcd(n+1, #+1)]` -/
def P9186177373831134570.Spec : Prop :=
  ∀ n, (P9186177373831134570.a n : ℤ) = A400779 (n + 1)

theorem P9186177373831134570.correct : P9186177373831134570.Spec := by
  intro n
  simp only [A400779, Nat.add_sub_cancel]

end A400779

/-!
# A400783: Number of unordered 4-element sets of partitions summing to n.

The programs for A400783, there is no canonical definition to state claims against.
-/

/-! ## A400783.P12572073434613180244

`A319315(A215982(n+2))`
-/

namespace A400783.P12572073434613180244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319315 (A215982 (n + 2)).toNat

end

end A400783.P12572073434613180244

/-!
# A400784: Number of unordered 5-element sets of partitions summing to n.

The programs for A400784, there is no canonical definition to state claims against.
-/

/-! ## A400784.P5801300227021038785

`A187209(a(n-1))+n+1` with `a(0)=1, a(1)=1`
-/

namespace A400784.P5801300227021038785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A187209 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A400784.P5801300227021038785

/-! ## A400784.P16299618394320622123

`A124455(A058053(n))`
-/

namespace A400784.P16299618394320622123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (A058053 n).toNat

end

end A400784.P16299618394320622123

/-! ## A400784.P13036110367116191799

`A230022(A024207(n))`
-/

namespace A400784.P13036110367116191799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230022 (A024207 n).toNat

end

end A400784.P13036110367116191799

/-! ## A400784.P4838480749848936761

`A111654(A156733(n))`
-/

namespace A400784.P4838480749848936761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A156733 n).toNat

end

end A400784.P4838480749848936761

/-!
# A400791: a(n) = Sum_{d|n, d >= 4} d * floor((d - 2)/2).

The programs for A400791, the canonical program `A400791.P12289460489753655867` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400791 has offset 1).

The definition of A400791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A400791.P12289460489753655867

`∑{d}[n+1, #*A140106(#)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A400791

/-- `∑{d}[n+1, #*A140106(#)]` -/
def P12289460489753655867.Spec : Prop :=
  ∀ n, P12289460489753655867.a n = A400791 (n + 1)

theorem P12289460489753655867.correct : P12289460489753655867.Spec := by
  intro n
  simp only [A400791, Nat.add_sub_cancel]

end A400791

/-!
# A400793: Positions of primes in A400792.

The programs for A400793, there is no canonical definition to state claims against.
-/

/-! ## A400793.P8087557729425208600

`record[A397358(n+2)]`
-/

namespace A400793.P8087557729425208600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A400793.P8087557729425208600

/-! ## A400793.P12621413979795540571

`A397358(A181325(n))`
-/

namespace A400793.P12621413979795540571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (A181325 n).toNat

end

end A400793.P12621413979795540571

/-! ## A400793.P15215587481454092609

`A397358(A390240(n))`
-/

namespace A400793.P15215587481454092609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (A390240 n).toNat

end

end A400793.P15215587481454092609

/-! ## A400793.P1589502013218328313

`A397358(A000040(n+1))`
-/

namespace A400793.P1589502013218328313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (A000040 (n + 1)).toNat

end

end A400793.P1589502013218328313

/-! ## A400793.P5950287333730354359

`A397358(A030291(n+1))`
-/

namespace A400793.P5950287333730354359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397358 (A030291 (n + 1)).toNat

end

end A400793.P5950287333730354359

/-!
# A400794: Positions of primorials in A400792.

The programs for A400794, there is no canonical definition to state claims against.
-/

/-! ## A400794.P16630788440358745042

`A048259(A114121(n))`
-/

namespace A400794.P16630788440358745042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048259 (A114121 n).toNat

end

end A400794.P16630788440358745042

/-!
# A400796: a(n) = (n^2 + 4*Legendre(n,5))/5.

The programs for A400796, the canonical program `A400796.P792017740949119045` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400796 has offset 0).

The definition of A400796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400796.P792017740949119045

`ogf((x-2x^2+2x^3+2x^4-2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A400796

/-- `ogf((x-2x^2+2x^3+2x^4-2x^5+x^6)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P792017740949119045.Spec : Prop :=
  ∀ n, P792017740949119045.a n = A400796 n

theorem P792017740949119045.correct : P792017740949119045.Spec := by
  intro n
  simp only [A400796]

end A400796

/-! ## A400796.P3386589619091131734

`(n²+8/sqrt(5)*(cos(2*π*n/5)-cos(4*π*n/5)))/5`
-/

namespace A400796.P3386589619091131734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℝ) + 8 / Real.sqrt (5 : ℝ) * (Real.cos (2 * Real.pi * (n : ℝ) / 5) - Real.cos (4 * Real.pi * (n : ℝ) / 5))) / 5

end

end A400796.P3386589619091131734

namespace A400796

/-- `(n²+8/sqrt(5)*(cos(2*π*n/5)-cos(4*π*n/5)))/5` -/
def P3386589619091131734.Spec : Prop :=
  ∀ n, P3386589619091131734.a n = (A400796 n : ℝ)

end A400796

/-! ## A400796.P8268997589707844789

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=4, a(5)=5, a(6)=8`
-/

namespace A400796.P8268997589707844789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 4, 5, 8] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A400796.P8268997589707844789

namespace A400796

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P8268997589707844789.Spec : Prop :=
  ∀ n, P8268997589707844789.a n = A400796 n

end A400796

/-! ## A400796.P5361869639390655282

`(n²+4*A080891(n))/5`
-/

namespace A400796.P5361869639390655282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + 4 * A080891 n : ℚ) / 5

end

end A400796.P5361869639390655282

namespace A400796

/-- `(n²+4*A080891(n))/5` -/
def P5361869639390655282.Spec : Prop :=
  ∀ n, P5361869639390655282.a n = (A400796 n : ℚ)

end A400796

/-! ## A400796.P16925568493025359279

`a(n-2)+4*floor((n+1)/5)` with `a(0)=0, a(1)=1`
-/

namespace A400796.P16925568493025359279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 4 * ⌊(n + 1 : ℚ) / 5⌋

end

end A400796.P16925568493025359279

namespace A400796

/-- `a(n-2)+4*floor((n+1)/5)` -/
def P16925568493025359279.Spec : Prop :=
  ∀ n, P16925568493025359279.a n = A400796 n

end A400796

/-! ## A400796.P5861013082477438964

`A080891(n)+A008738(n)`
-/

namespace A400796.P5861013082477438964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n + A008738 n

end

end A400796.P5861013082477438964

namespace A400796

/-- `A080891(n)+A008738(n)` -/
def P5861013082477438964.Spec : Prop :=
  ∀ n, P5861013082477438964.a n = A400796 n

end A400796

/-! ## A400796.P4791827176671834786

`A080891(n)+A008798(2*n+1)`
-/

namespace A400796.P4791827176671834786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n + A008798 (2 * n + 1)

end

end A400796.P4791827176671834786

namespace A400796

/-- `A080891(n)+A008798(2*n+1)` -/
def P4791827176671834786.Spec : Prop :=
  ∀ n, P4791827176671834786.a n = A400796 n

end A400796

/-! ## A400796.P13573332884414468745

`A100047(2*n)+A008798(2*n+1)`
-/

namespace A400796.P13573332884414468745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (2 * n) + A008798 (2 * n + 1)

end

end A400796.P13573332884414468745

namespace A400796

/-- `A100047(2*n)+A008798(2*n+1)` -/
def P13573332884414468745.Spec : Prop :=
  ∀ n, P13573332884414468745.a n = A400796 n

end A400796

/-!
# A400797: a(n) = A400796(n) mod 5.

The programs for A400797, the canonical program `A400797.P15196637446887860738` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A400797 has offset 0).

The definition of A400797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A400797.P15196637446887860738

`A400796(n)%5`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A400797

/-- `A400796(n)%5` -/
def P15196637446887860738.Spec : Prop :=
  ∀ n, P15196637446887860738.a n = A400797 n

theorem P15196637446887860738.correct : P15196637446887860738.Spec := by
  intro n
  simp only [A400797]

end A400797

