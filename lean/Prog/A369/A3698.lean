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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A369801: Maximum number of segments between n points on a circle so that they can be colored in 2 colors so that each of them intersects (at an internal point) at most one other segment of the same color.

The programs for A369801, there is no canonical definition to state claims against.
-/

/-! ## A369801.P13293067334589178422

`∑[A095407(∑[A349547(n+1)])]`
-/

namespace A369801.P13293067334589178422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349547 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369801.P13293067334589178422

/-! ## A369801.P9253938024811823016

`∑[A096862(∑[A232741(2*n+1)])]`
-/

namespace A369801.P9253938024811823016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096862 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369801.P9253938024811823016

/-! ## A369801.P4234981761303194219

`∑[A000120(record[A192493(2*n+1)])]`
-/

namespace A369801.P4234981761303194219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192493 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369801.P4234981761303194219

/-! ## A369801.P11137379527131427874

`∑[A030567(A062929(n+1))]+n+1`
-/

namespace A369801.P11137379527131427874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030567 (A062929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A369801.P11137379527131427874

/-! ## A369801.P10516275698023366741

`A005245(A070766(n+1))+A001414(n+1)`
-/

namespace A369801.P10516275698023366741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (A070766 (n + 1)).toNat + A001414 (n + 1)

end

end A369801.P10516275698023366741

/-!
# A369802: Inversion count of the Eytzinger array layout of n elements.

The programs for A369802, there is no canonical definition to state claims against.
-/

/-! ## A369802.P10382970581043352597

`∑[∑[n*char[2^n]]-n]`
-/

namespace A369802.P10382970581043352597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369802.P10382970581043352597

/-! ## A369802.P11318949620049061795

`∑[or(n, a(n-1))]-∑[n]` with `a(0)=0`
-/

namespace A369802.P11318949620049061795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor n (f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A369802.P11318949620049061795

/-! ## A369802.P9601544413710432142

`abs(∑[(a(n-1)-1+n)%n])` with `a(0)=0`
-/

namespace A369802.P9601544413710432142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (f1 (n - 1) - 1 + (n : ℤ)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A369802.P9601544413710432142

/-! ## A369802.P13370695963938528273

`∑[2^ceil(log2(n+1))]%C(n+2, 2)`
-/

namespace A369802.P13370695963938528273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (Nat.choose (n + 2) 2 : ℤ)

end

end A369802.P13370695963938528273

/-! ## A369802.P10748145880123573262

`abs(∑[and(a(n-1)+n-1, -(n+1))])` with `a(0)=0`
-/

namespace A369802.P10748145880123573262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.land (f1 (n - 1) + ((n : ℤ) - 1)) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A369802.P10748145880123573262

/-! ## A369802.P4732515719919922199

`∑[A035327(n)]-1`
-/

namespace A369802.P4732515719919922199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A369802.P4732515719919922199

/-! ## A369802.P11866180811447277550

`∑[n]-A256249(n)`
-/

namespace A369802.P11866180811447277550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A256249 n

end

end A369802.P11866180811447277550

/-! ## A369802.P1583020195828926378

`(A261692(n)-n)/2`
-/

namespace A369802.P1583020195828926378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261692 n - (n : ℤ) : ℚ) / 2

end

end A369802.P1583020195828926378

/-! ## A369802.P2974393481661243688

`A181497(n+1)-∑[n+1]`
-/

namespace A369802.P2974393481661243688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181497 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A369802.P2974393481661243688

/-! ## A369802.P9832485052841898360

`A023443(∑[A035327(n)])`
-/

namespace A369802.P9832485052841898360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A369802.P9832485052841898360

/-!
# A369803: Expansion of 1/(1 - x^2/(1-x)^5).

The programs for A369803, the canonical program `A369803.P14754195087370424647` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369803 has offset 0).

The definition of A369803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-5x+9x^2-10x^3+5x^4-x^5))` (program `A369803.P14754195087370424647`, by `A369803.P14754195087370424647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369803.P14754195087370424647

`ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-5x+9x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369803

/-- `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-5x+9x^2-10x^3+5x^4-x^5))` -/
def P14754195087370424647.Spec : Prop :=
  ∀ n, P14754195087370424647.a n = A369803 n

theorem P14754195087370424647.correct : P14754195087370424647.Spec := by
  intro n
  simp only [A369803]

end A369803

/-! ## A369803.P2497551897792124500

`5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=5, a(4)=16, a(5)=45`
-/

namespace A369803.P2497551897792124500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 5, 16, 45] fun n a =>
  5 * a (n - 1) - 9 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A369803.P2497551897792124500

namespace A369803

/-- `5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2497551897792124500.Spec : Prop :=
  ∀ n, P2497551897792124500.a n = A369803 n

end A369803

/-! ## A369803.P10967819415305409973

`A001687(abs(1-4*n)+n)`
-/

namespace A369803.P10967819415305409973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (|1 - (4 * n : ℤ)| + (n : ℤ)).toNat

end

end A369803.P10967819415305409973

namespace A369803

/-- `A001687(abs(1-4*n)+n)` -/
def P10967819415305409973.Spec : Prop :=
  ∀ n, P10967819415305409973.a n = A369803 n

end A369803

/-!
# A369804: Expansion of 1/(1 - x^3/(1-x)^5).

The programs for A369804, the canonical program `A369804.P15576181346841773169` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369804 has offset 0).

The definition of A369804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-5x+10x^2-11x^3+5x^4-x^5))` (program `A369804.P15576181346841773169`, by `A369804.P15576181346841773169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369804.P15576181346841773169

`ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-5x+10x^2-11x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369804

/-- `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-5x+10x^2-11x^3+5x^4-x^5))` -/
def P15576181346841773169.Spec : Prop :=
  ∀ n, P15576181346841773169.a n = A369804 n

theorem P15576181346841773169.correct : P15576181346841773169.Spec := by
  intro n
  simp only [A369804]

end A369804

/-! ## A369804.P7916915743163379562

`5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=5, a(5)=15`
-/

namespace A369804.P7916915743163379562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 5, 15] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 11 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A369804.P7916915743163379562

namespace A369804

/-- `5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7916915743163379562.Spec : Prop :=
  ∀ n, P7916915743163379562.a n = A369804 n

end A369804

/-! ## A369804.P8510333878802154891

`A052920(lt[A070682(n), 1])`
-/

namespace A369804.P8510333878802154891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070682 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A369804.P8510333878802154891

namespace A369804

/-- `A052920(lt[A070682(n), 1])` -/
def P8510333878802154891.Spec : Prop :=
  ∀ n, P8510333878802154891.a n = A369804 n

end A369804

/-!
# A369805: Expansion of 1/(1 - x^2/(1-x)^7).

The programs for A369805, the canonical program `A369805.P1641190130095492859` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369805 has offset 0).

The definition of A369805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+20x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A369805.P1641190130095492859`, by `A369805.P1641190130095492859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369805.P1641190130095492859

`ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+20x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369805

/-- `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+20x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P1641190130095492859.Spec : Prop :=
  ∀ n, P1641190130095492859.a n = A369805 n

theorem P1641190130095492859.correct : P1641190130095492859.Spec := by
  intro n
  simp only [A369805]

end A369805

/-! ## A369805.P14252818368733521426

`A369813(A116728(n+2))`
-/

namespace A369805.P14252818368733521426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (A116728 (n + 2)).toNat

end

end A369805.P14252818368733521426

namespace A369805

/-- `A369813(A116728(n+2))` -/
def P14252818368733521426.Spec : Prop :=
  ∀ n, P14252818368733521426.a n = A369805 n

end A369805

/-!
# A369806: Expansion of 1/(1 - x^3/(1-x)^7).

The programs for A369806, the canonical program `A369806.P11265911360706235146` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369806 has offset 0).

The definition of A369806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-36x^3+35x^4-21x^5+7x^6-x^7))` (program `A369806.P11265911360706235146`, by `A369806.P11265911360706235146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369806.P11265911360706235146

`ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-36x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369806

/-- `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-36x^3+35x^4-21x^5+7x^6-x^7))` -/
def P11265911360706235146.Spec : Prop :=
  ∀ n, P11265911360706235146.a n = A369806 n

theorem P11265911360706235146.correct : P11265911360706235146.Spec := by
  intro n
  simp only [A369806]

end A369806

/-! ## A369806.P11073164337973528856

`A373905(n)-A095076(A068854(3*n+4))`
-/

namespace A369806.P11073164337973528856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373905 n - A095076 (A068854 (3 * n + 4)).toNat

end

end A369806.P11073164337973528856

namespace A369806

/-- `A373905(n)-A095076(A068854(3*n+4))` -/
def P11073164337973528856.Spec : Prop :=
  ∀ n, P11073164337973528856.a n = A369806 n

end A369806

/-!
# A369807: Expansion of 1/(1 - x^4/(1-x)^7).

The programs for A369807, the canonical program `A369807.P4858244919196684496` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369807 has offset 0).

The definition of A369807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+34x^4-21x^5+7x^6-x^7))` (program `A369807.P4858244919196684496`, by `A369807.P4858244919196684496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369807.P4858244919196684496

`ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+34x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369807

/-- `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+34x^4-21x^5+7x^6-x^7))` -/
def P4858244919196684496.Spec : Prop :=
  ∀ n, P4858244919196684496.a n = A369807 n

theorem P4858244919196684496.correct : P4858244919196684496.Spec := by
  intro n
  simp only [A369807]

end A369807

/-! ## A369807.P17367439539051818464

`A373906(n)-A323022(A083767(n+1))`
-/

namespace A369807.P17367439539051818464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373906 n - A323022 (A083767 (n + 1)).toNat

end

end A369807.P17367439539051818464

namespace A369807

/-- `A373906(n)-A323022(A083767(n+1))` -/
def P17367439539051818464.Spec : Prop :=
  ∀ n, P17367439539051818464.a n = A369807 n

end A369807

/-! ## A369807.P9837290991503641128

`A373906(n)-A288381(A128104(n+1))`
-/

namespace A369807.P9837290991503641128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373906 n - A288381 (A128104 (n + 1)).toNat

end

end A369807.P9837290991503641128

namespace A369807

/-- `A373906(n)-A288381(A128104(n+1))` -/
def P9837290991503641128.Spec : Prop :=
  ∀ n, P9837290991503641128.a n = A369807 n

end A369807

/-! ## A369807.P14449044073523447865

`A333882(n+2)-A373068(A252002(n+1))`
-/

namespace A369807.P14449044073523447865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333882 (n + 2) - A373068 (A252002 (n + 1)).toNat

end

end A369807.P14449044073523447865

namespace A369807

/-- `A333882(n+2)-A373068(A252002(n+1))` -/
def P14449044073523447865.Spec : Prop :=
  ∀ n, P14449044073523447865.a n = A369807 n

end A369807

/-! ## A369807.P10057364013205539661

`A373906(n)-A377191(A247634(3*n+5))`
-/

namespace A369807.P10057364013205539661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373906 n - A377191 (A247634 (3 * n + 5)).toNat

end

end A369807.P10057364013205539661

namespace A369807

/-- `A373906(n)-A377191(A247634(3*n+5))` -/
def P10057364013205539661.Spec : Prop :=
  ∀ n, P10057364013205539661.a n = A369807 n

end A369807

/-!
# A369808: Expansion of 1/(1 - x^5/(1-x)^7).

The programs for A369808, the canonical program `A369808.P3030177608709493081` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369808 has offset 0).

The definition of A369808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+35x^4-22x^5+7x^6-x^7))` (program `A369808.P3030177608709493081`, by `A369808.P3030177608709493081.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369808.P3030177608709493081

`ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+35x^4-22x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369808

/-- `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+35x^4-22x^5+7x^6-x^7))` -/
def P3030177608709493081.Spec : Prop :=
  ∀ n, P3030177608709493081.a n = A369808 n

theorem P3030177608709493081.correct : P3030177608709493081.Spec := by
  intro n
  simp only [A369808]

end A369808

/-! ## A369808.P1127913038477658524

`A107025(n)-A055396(A075179(n))`
-/

namespace A369808.P1127913038477658524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107025 n - A055396 (A075179 n).toNat

end

end A369808.P1127913038477658524

namespace A369808

/-- `A107025(n)-A055396(A075179(n))` -/
def P1127913038477658524.Spec : Prop :=
  ∀ n, P1127913038477658524.a n = A369808 n

end A369808

/-! ## A369808.P14437527483163073812

`A107025(n)-A123110(A025537(n))`
-/

namespace A369808.P14437527483163073812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107025 n - A123110 (A025537 n).toNat

end

end A369808.P14437527483163073812

namespace A369808

/-- `A107025(n)-A123110(A025537(n))` -/
def P14437527483163073812.Spec : Prop :=
  ∀ n, P14437527483163073812.a n = A369808 n

end A369808

/-! ## A369808.P6971765297188158916

`A107025(n)-A011655(A056654(n+1))`
-/

namespace A369808.P6971765297188158916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107025 n - A011655 (A056654 (n + 1)).toNat

end

end A369808.P6971765297188158916

namespace A369808

/-- `A107025(n)-A011655(A056654(n+1))` -/
def P6971765297188158916.Spec : Prop :=
  ∀ n, P6971765297188158916.a n = A369808 n

end A369808

/-! ## A369808.P6697355005025441704

`A107025(n)-A124010(A038041(n+1))`
-/

namespace A369808.P6697355005025441704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107025 n - A124010 (A038041 (n + 1)).toNat

end

end A369808.P6697355005025441704

namespace A369808

/-- `A107025(n)-A124010(A038041(n+1))` -/
def P6697355005025441704.Spec : Prop :=
  ∀ n, P6697355005025441704.a n = A369808 n

end A369808

/-!
# A369809: Expansion of 1/(1 - x^6/(1-x)^7).

The programs for A369809, the canonical program `A369809.P6924715565229467766` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369809 has offset 0).

The definition of A369809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+6x^6-x^7))` (program `A369809.P6924715565229467766`, by `A369809.P6924715565229467766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369809.P6924715565229467766

`ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+6x^6-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369809

/-- `ogf((1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+6x^6-x^7))` -/
def P6924715565229467766.Spec : Prop :=
  ∀ n, P6924715565229467766.a n = A369809 n

theorem P6924715565229467766.correct : P6924715565229467766.Spec := by
  intro n
  simp only [A369809]

end A369809

/-! ## A369809.P6168276174441762598

`A127841(A017005(n)^A304118(n+1))`
-/

namespace A369809.P6168276174441762598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (SequenceMachineLib.roundAway ((A017005 n : ℚ) ^ (A304118 (n + 1) : ℤ))).toNat

end

end A369809.P6168276174441762598

namespace A369809

/-- `A127841(A017005(n)^A304118(n+1))` -/
def P6168276174441762598.Spec : Prop :=
  ∀ n, P6168276174441762598.a n = A369809 n

end A369809

/-! ## A369809.P14305059854518009909

`A127841(C(A017005(n), A304118(n+1)))`
-/

namespace A369809.P14305059854518009909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (Nat.choose (A017005 n).toNat (A304118 (n + 1)).toNat)

end

end A369809.P14305059854518009909

namespace A369809

/-- `A127841(C(A017005(n), A304118(n+1)))` -/
def P14305059854518009909.Spec : Prop :=
  ∀ n, P14305059854518009909.a n = A369809 n

end A369809

/-! ## A369809.P16759394391873479120

`A243741(n+6)^Δ[A024643(n)]`
-/

namespace A369809.P16759394391873479120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243741 (n + 6) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A369809.P16759394391873479120

namespace A369809

/-- `A243741(n+6)^Δ[A024643(n)]` -/
def P16759394391873479120.Spec : Prop :=
  ∀ n, P16759394391873479120.a n = (A369809 n : ℚ)

end A369809

/-! ## A369809.P563213506106165638

`A243741(n+6)%(A080052(n+1)+1)`
-/

namespace A369809.P563213506106165638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243741 (n + 6)) (A080052 (n + 1) + 1)

end

end A369809.P563213506106165638

namespace A369809

/-- `A243741(n+6)%(A080052(n+1)+1)` -/
def P563213506106165638.Spec : Prop :=
  ∀ n, P563213506106165638.a n = A369809 n

end A369809

/-!
# A369810: Number of ways to color n+1 identical balls using n distinct colors (each color is used) and place them in n numbered cells so that each cell contains at least one ball.

The programs for A369810, the canonical program `A369810.P6592128196772303573` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369810 has offset 1).

The definition of A369810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369810.P10833848087829644098

`(n+1)²*A006595(n)`
-/

namespace A369810.P10833848087829644098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A006595 n

end

end A369810.P10833848087829644098

namespace A369810

/-- `(n+1)²*A006595(n)` -/
def P10833848087829644098.Spec : Prop :=
  ∀ n, P10833848087829644098.a n = A369810 (n + 1)

theorem P10833848087829644098.correct : P10833848087829644098.Spec := by
  intro n
  simp only [A369810, Nat.add_sub_cancel, A369810.P10833848087829644098.a, A369810.P6592128196772303573.a, A006595, A006595.P14384664050802915494.a, A284816, A284816.P9637811502053019596.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A369810

/-! ## A369810.P6592128196772303573

`(n+1)*A284816(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A369810

/-- `(n+1)*A284816(n+1)` -/
def P6592128196772303573.Spec : Prop :=
  ∀ n, P6592128196772303573.a n = A369810 (n + 1)

theorem P6592128196772303573.correct : P6592128196772303573.Spec := by
  intro n
  simp only [A369810, Nat.add_sub_cancel]

end A369810

/-! ## A369810.P14452856946810406700

`(n+1)!*(n+1)*((n+1)²+n+1+2)/4`
-/

namespace A369810.P14452856946810406700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) * (n + 1) * ((n + 1) ^ 2 + (n + 1) + 2) : ℚ) / 4

end

end A369810.P14452856946810406700

namespace A369810

/-- `(n+1)!*(n+1)*((n+1)²+n+1+2)/4` -/
def P14452856946810406700.Spec : Prop :=
  ∀ n, P14452856946810406700.a n = (A369810 (n + 1) : ℚ)

end A369810

/-! ## A369810.P8071333378284462837

`Δ[(n+1)!/2*∑[n]]`
-/

namespace A369810.P8071333378284462837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369810.P8071333378284462837

namespace A369810

/-- `Δ[(n+1)!/2*∑[n]]` -/
def P8071333378284462837.Spec : Prop :=
  ∀ n, P8071333378284462837.a n = (A369810 (n + 1) : ℚ)

end A369810

/-! ## A369810.P549848834225213660

`Δ[n/4*Δ[(n+1)!]]`
-/

namespace A369810.P549848834225213660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369810.P549848834225213660

namespace A369810

/-- `Δ[n/4*Δ[(n+1)!]]` -/
def P549848834225213660.Spec : Prop :=
  ∀ n, P549848834225213660.a n = (A369810 (n + 1) : ℚ)

end A369810

/-! ## A369810.P5691870949784978206

`Δ[∏[n+1]/2*∑[n]]`
-/

namespace A369810.P5691870949784978206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369810.P5691870949784978206

namespace A369810

/-- `Δ[∏[n+1]/2*∑[n]]` -/
def P5691870949784978206.Spec : Prop :=
  ∀ n, P5691870949784978206.a n = (A369810 (n + 1) : ℚ)

end A369810

/-! ## A369810.P5608933851225185025

`(n+1)!*(n+1)*((n+1)²+n+3)/4`
-/

namespace A369810.P5608933851225185025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * ((n + 1 : ℚ) * (((n + 1) ^ 2 + (n + 3) : ℚ) / 4))

end

end A369810.P5608933851225185025

namespace A369810

/-- `(n+1)!*(n+1)*((n+1)²+n+3)/4` -/
def P5608933851225185025.Spec : Prop :=
  ∀ n, P5608933851225185025.a n = (A369810 (n + 1) : ℚ)

end A369810

/-! ## A369810.P3559342644445676795

`A001809(n+2)-A001809(n+1)`
-/

namespace A369810.P3559342644445676795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 (n + 2) - A001809 (n + 1)

end

end A369810.P3559342644445676795

namespace A369810

/-- `A001809(n+2)-A001809(n+1)` -/
def P3559342644445676795.Spec : Prop :=
  ∀ n, P3559342644445676795.a n = A369810 (n + 1)

end A369810

/-!
# A369812: The index of the record values in A369354.

The programs for A369812, there is no canonical definition to state claims against.
-/

/-! ## A369812.P8458148157957173938

`or(((5*n)²-15*n)/2, A353855(A001003(n)))`
-/

namespace A369812.P8458148157957173938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((((5 * n) ^ 2 : ℤ) - (15 * n : ℤ) : ℚ) / 2)) (A353855 (A001003 n).toNat)

end

end A369812.P8458148157957173938

/-!
# A369813: Expansion of 1/(1 - x^2 - x^7).

The programs for A369813, the canonical program `A369813.P2063964410010190329` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369813 has offset 0).

The definition of A369813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^7))` (program `A369813.P2063964410010190329`, by `A369813.P2063964410010190329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369813.P2063964410010190329

`ogf(1/(1-x^2-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369813

/-- `ogf(1/(1-x^2-x^7))` -/
def P2063964410010190329.Spec : Prop :=
  ∀ n, P2063964410010190329.a n = A369813 n

theorem P2063964410010190329.correct : P2063964410010190329.Spec := by
  intro n
  simp only [A369813]

end A369813

/-! ## A369813.P1405422004852151706

`a(n-2)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=0, a(6)=1`
-/

namespace A369813.P1405422004852151706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 0, 1] fun n a =>
  a (n - 2) + a (n - 7)

end

end A369813.P1405422004852151706

namespace A369813

/-- `a(n-2)+a(n-7)` -/
def P1405422004852151706.Spec : Prop :=
  ∀ n, (P1405422004852151706.a n : ℤ) = A369813 n

end A369813

/-! ## A369813.P10988640351534002961

`A390256(A392355(n))`
-/

namespace A369813.P10988640351534002961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A392355 n).toNat

end

end A369813.P10988640351534002961

namespace A369813

/-- `A390256(A392355(n))` -/
def P10988640351534002961.Spec : Prop :=
  ∀ n, P10988640351534002961.a n = A369813 n

end A369813

/-! ## A369813.P13980168370969142920

`and(A031219(n+1), A169942(A076571(n)))`
-/

namespace A369813.P13980168370969142920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031219 (n + 1)) (A169942 (A076571 n).toNat)

end

end A369813.P13980168370969142920

namespace A369813

/-- `and(A031219(n+1), A169942(A076571(n)))` -/
def P13980168370969142920.Spec : Prop :=
  ∀ n, P13980168370969142920.a n = A369813 n

end A369813

/-! ## A369813.P246469736447027801

`and(A031219(n+1), A324840(A137688(n)))`
-/

namespace A369813.P246469736447027801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031219 (n + 1)) (A324840 (A137688 n).toNat)

end

end A369813.P246469736447027801

namespace A369813

/-- `and(A031219(n+1), A324840(A137688(n)))` -/
def P246469736447027801.Spec : Prop :=
  ∀ n, P246469736447027801.a n = A369813 n

end A369813

/-!
# A369814: Expansion of 1/(1 - x^3 - x^7).

The programs for A369814, the canonical program `A369814.P5340147483609864214` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369814 has offset 0).

The definition of A369814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^7))` (program `A369814.P5340147483609864214`, by `A369814.P5340147483609864214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369814.P17157304789799325429

`a(n-3)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=0, a(6)=1`
-/

namespace A369814.P17157304789799325429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 0, 1] fun n a =>
  a (n - 3) + a (n - 7)

end

end A369814.P17157304789799325429

namespace A369814

/-- `a(n-3)+a(n-7)` -/
def P17157304789799325429.Spec : Prop :=
  ∀ n, (P17157304789799325429.a n : ℤ) = A369814 n

end A369814

/-! ## A369814.P5340147483609864214

`ogf(1/(1-x^3-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369814

/-- `ogf(1/(1-x^3-x^7))` -/
def P5340147483609864214.Spec : Prop :=
  ∀ n, P5340147483609864214.a n = A369814 n

theorem P5340147483609864214.correct : P5340147483609864214.Spec := by
  intro n
  simp only [A369814]

end A369814

/-! ## A369814.P5827801950716915319

`and(A000959(A088357(n)), A239928(n+3))`
-/

namespace A369814.P5827801950716915319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000959 (A088357 n).toNat) (A239928 (n + 3))

end

end A369814.P5827801950716915319

namespace A369814

/-- `and(A000959(A088357(n)), A239928(n+3))` -/
def P5827801950716915319.Spec : Prop :=
  ∀ n, P5827801950716915319.a n = A369814 n

end A369814

/-! ## A369814.P8595520072833572107

`and(A060747(A328850(n+1)), A239928(n+3))`
-/

namespace A369814.P8595520072833572107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060747 (A328850 (n + 1)).toNat) (A239928 (n + 3))

end

end A369814.P8595520072833572107

namespace A369814

/-- `and(A060747(A328850(n+1)), A239928(n+3))` -/
def P8595520072833572107.Spec : Prop :=
  ∀ n, P8595520072833572107.a n = A369814 n

end A369814

/-! ## A369814.P11306509777926412081

`(A127841(Δ[n²])^A014963(n+2)²)^(n%3)`
-/

namespace A369814.P11306509777926412081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A127841 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A014963 (n + 2) ^ 2 : ℤ)) ^ (n % 3)

end

end A369814.P11306509777926412081

namespace A369814

/-- `(A127841(Δ[n²])^A014963(n+2)²)^(n%3)` -/
def P11306509777926412081.Spec : Prop :=
  ∀ n, P11306509777926412081.a n = (A369814 n : ℚ)

end A369814

/-!
# A369815: Expansion of 1/(1 - x^4 - x^7).

The programs for A369815, the canonical program `A369815.P8532698812263953015` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369815 has offset 0).

The definition of A369815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^4-x^7))` (program `A369815.P8532698812263953015`, by `A369815.P8532698812263953015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369815.P17253508976624175154

`a(n-4)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=0`
-/

namespace A369815.P17253508976624175154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 0, 0] fun n a =>
  a (n - 4) + a (n - 7)

end

end A369815.P17253508976624175154

namespace A369815

/-- `a(n-4)+a(n-7)` -/
def P17253508976624175154.Spec : Prop :=
  ∀ n, (P17253508976624175154.a n : ℤ) = A369815 n

end A369815

/-! ## A369815.P8532698812263953015

`ogf(1/(1-x^4-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369815

/-- `ogf(1/(1-x^4-x^7))` -/
def P8532698812263953015.Spec : Prop :=
  ∀ n, P8532698812263953015.a n = A369815 n

theorem P8532698812263953015.correct : P8532698812263953015.Spec := by
  intro n
  simp only [A369815]

end A369815

/-! ## A369815.P5498310497464401553

`A025581(A017857(2*n)^A364788(2*(n+2)))`
-/

namespace A369815.P5498310497464401553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A017857 (2 * n) : ℚ) ^ (A364788 (2 * (n + 2)) : ℤ))).toNat

end

end A369815.P5498310497464401553

namespace A369815

/-- `A025581(A017857(2*n)^A364788(2*(n+2)))` -/
def P5498310497464401553.Spec : Prop :=
  ∀ n, P5498310497464401553.a n = A369815 n

end A369815

/-! ## A369815.P1497395916675082121

`A144225(lt[A366843(n+2), A003415(3*(n+1))])`
-/

namespace A369815.P1497395916675082121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366843 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369815.P1497395916675082121

namespace A369815

/-- `A144225(lt[A366843(n+2), A003415(3*(n+1))])` -/
def P1497395916675082121.Spec : Prop :=
  ∀ n, P1497395916675082121.a n = A369815 n

end A369815

/-! ## A369815.P10365371206671422074

`A185044(A238858(n))+A025870(n)`
-/

namespace A369815.P10365371206671422074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A238858 n).toNat + A025870 n

end

end A369815.P10365371206671422074

namespace A369815

/-- `A185044(A238858(n))+A025870(n)` -/
def P10365371206671422074.Spec : Prop :=
  ∀ n, P10365371206671422074.a n = A369815 n

end A369815

/-!
# A369816: Expansion of 1/(1 - x^5 - x^7).

The programs for A369816, the canonical program `A369816.P6154105334135926354` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369816 has offset 0).

The definition of A369816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^7))` (program `A369816.P6154105334135926354`, by `A369816.P6154105334135926354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A369816.P10378641675832711108

`a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=0`
-/

namespace A369816.P10378641675832711108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1, 0] fun n a =>
  a (n - 5) + a (n - 7)

end

end A369816.P10378641675832711108

namespace A369816

/-- `a(n-5)+a(n-7)` -/
def P10378641675832711108.Spec : Prop :=
  ∀ n, (P10378641675832711108.a n : ℤ) = A369816 n

end A369816

/-! ## A369816.P6154105334135926354

`ogf(1/(1-x^5-x^7))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369816

/-- `ogf(1/(1-x^5-x^7))` -/
def P6154105334135926354.Spec : Prop :=
  ∀ n, P6154105334135926354.a n = A369816 n

theorem P6154105334135926354.correct : P6154105334135926354.Spec := by
  intro n
  simp only [A369816]

end A369816

/-! ## A369816.P15377840932997545589

`A281243(2*(n+2))^A378345(ceil(n/2))`
-/

namespace A369816.P15377840932997545589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281243 (2 * (n + 2)) : ℚ) ^ (A378345 ⌈(n : ℚ) / 2⌉.toNat : ℤ)

end

end A369816.P15377840932997545589

namespace A369816

/-- `A281243(2*(n+2))^A378345(ceil(n/2))` -/
def P15377840932997545589.Spec : Prop :=
  ∀ n, P15377840932997545589.a n = (A369816 n : ℚ)

end A369816

/-! ## A369816.P4317195201800155383

`∑{e}[A308400(n)^A213625(3*n+1)+1, #]`
-/

namespace A369816.P4317195201800155383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308400 n : ℚ) ^ (A213625 (3 * n + 1) : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A369816.P4317195201800155383

namespace A369816

/-- `∑{e}[A308400(n)^A213625(3*n+1)+1, #]` -/
def P4317195201800155383.Spec : Prop :=
  ∀ n, (P4317195201800155383.a n : ℤ) = A369816 n

end A369816

/-! ## A369816.P9696152650159059473

`A281243(2*(n+2))%A001358(A015128(n))`
-/

namespace A369816.P9696152650159059473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281243 (2 * (n + 2))) (A001358 (A015128 n).toNat)

end

end A369816.P9696152650159059473

namespace A369816

/-- `A281243(2*(n+2))%A001358(A015128(n))` -/
def P9696152650159059473.Spec : Prop :=
  ∀ n, P9696152650159059473.a n = A369816 n

end A369816

/-!
# A369817: The fifth term of the greedy B_n set of natural numbers.

The programs for A369817, the canonical program `A369817.P13519257380716828343` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369817 has offset 1).

The definition of A369817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369817.P13519257380716828343

`floor((n+4)/2)*(n+1)²+floor((3*(n+1)+2)/2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369817

/-- `floor((n+4)/2)*(n+1)²+floor((3*(n+1)+2)/2)` -/
def P13519257380716828343.Spec : Prop :=
  ∀ n, P13519257380716828343.a n = A369817 (n + 1)

theorem P13519257380716828343.correct : P13519257380716828343.Spec := by
  intro n
  simp only [A369817, Nat.add_sub_cancel]

end A369817

/-! ## A369817.P15121787194062520055

`(n+2)*(∑[n+2]-gcd(n, ∑[n]))`
-/

namespace A369817.P15121787194062520055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ))

end

end A369817.P15121787194062520055

namespace A369817

/-- `(n+2)*(∑[n+2]-gcd(n, ∑[n]))` -/
def P15121787194062520055.Spec : Prop :=
  ∀ n, P15121787194062520055.a n = A369817 (n + 1)

end A369817

/-! ## A369817.P7161031484284445589

`abs(1-A370754(n+1))`
-/

namespace A369817.P7161031484284445589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A370754 (n + 1)|

end

end A369817.P7161031484284445589

namespace A369817

/-- `abs(1-A370754(n+1))` -/
def P7161031484284445589.Spec : Prop :=
  ∀ n, P7161031484284445589.a n = A369817 (n + 1)

end A369817

/-! ## A369817.P14420376405338027718

`(n+2)*A053439(n+1)`
-/

namespace A369817.P14420376405338027718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A053439 (n + 1)

end

end A369817.P14420376405338027718

namespace A369817

/-- `(n+2)*A053439(n+1)` -/
def P14420376405338027718.Spec : Prop :=
  ∀ n, P14420376405338027718.a n = A369817 (n + 1)

end A369817

/-! ## A369817.P15041251631724956917

`(n+2)*A385406(A374084(n+1))`
-/

namespace A369817.P15041251631724956917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A385406 (A374084 (n + 1)).toNat

end

end A369817.P15041251631724956917

namespace A369817

/-- `(n+2)*A385406(A374084(n+1))` -/
def P15041251631724956917.Spec : Prop :=
  ∀ n, P15041251631724956917.a n = A369817 (n + 1)

end A369817

/-!
# A369818: The sixth term of the greedy B_n set of natural numbers.

The programs for A369818, there is no canonical definition to state claims against.
-/

/-! ## A369818.P12840571673960531819

`A365515(A166136(n+4))`
-/

namespace A369818.P12840571673960531819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A166136 (n + 4)).toNat

end

end A369818.P12840571673960531819

/-! ## A369818.P5660950625272209572

`A365515(A167499(n+4)+1)`
-/

namespace A369818.P5660950625272209572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A167499 (n + 4) + 1).toNat

end

end A369818.P5660950625272209572

/-! ## A369818.P17039520899418001709

`A365515(A000124(n+7)-8-2*n)`
-/

namespace A369818.P17039520899418001709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A000124 (n + 7) - 8 - (2 * n : ℤ)).toNat

end

end A369818.P17039520899418001709

/-!
# A369819: The seventh term of the greedy B_n set of natural numbers.

The programs for A369819, there is no canonical definition to state claims against.
-/

/-! ## A369819.P499875250656002224

`A365515(A000124(n+7)-(n+1))`
-/

namespace A369819.P499875250656002224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365515 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A369819.P499875250656002224

/-!
# A369823: S is a "boomerang sequence": replace each digit d of S by its sixth power: the sequence S remains identical to itself if we follow each result with a comma.

The programs for A369823, there is no canonical definition to state claims against.
-/

/-! ## A369823.P14866530142867625912

`A350847(∑[6*(1-n)²-1])^12`
-/

namespace A369823.P14866530142867625912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (1 - (n : ℤ)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 12

end

end A369823.P14866530142867625912

/-!
# A369824: S is a "boomerang sequence": replace each digit d of S by its eighth power: the sequence S remains identical to itself if we follow each result with a comma.

The programs for A369824, there is no canonical definition to state claims against.
-/

/-! ## A369824.P12307541089340619402

`A000290(A362977(n)^4)`
-/

namespace A369824.P12307541089340619402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A362977 n ^ 4).toNat

end

end A369824.P12307541089340619402

/-! ## A369824.P6359448453130194785

`A000290(A362977(n)²²)`
-/

namespace A369824.P6359448453130194785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((A362977 n ^ 2) ^ 2).toNat

end

end A369824.P6359448453130194785

/-!
# A369827: Number of labeled graphs on 2n nodes with n connected components.

The programs for A369827, there is no canonical definition to state claims against.
-/

/-! ## A369827.P2586183452525909694

`A143543(A004277(n²))`
-/

namespace A369827.P2586183452525909694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (A004277 (n ^ 2)).toNat

end

end A369827.P2586183452525909694

/-! ## A369827.P14933208978101777289

`A143543(2*A028310(n²))`
-/

namespace A369827.P14933208978101777289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (2 * A028310 (n ^ 2)).toNat

end

end A369827.P14933208978101777289

/-! ## A369827.P9023473643179590903

`A143543(A058331(n)-A057427(n))`
-/

namespace A369827.P9023473643179590903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (A058331 n - A057427 n).toNat

end

end A369827.P9023473643179590903

/-! ## A369827.P5971460571621914357

`A143543(xor(A057427(n), A058331(n)))`
-/

namespace A369827.P5971460571621914357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (Int.xor (A057427 n) (A058331 n)).toNat

end

end A369827.P5971460571621914357

/-! ## A369827.P15248191085448113243

`A143543(A179865(n+1)+A000326(n))`
-/

namespace A369827.P15248191085448113243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (A179865 (n + 1) + A000326 n).toNat

end

end A369827.P15248191085448113243

/-!
# A369828: Number of simple graphs on 2n labeled nodes with n edges where each maximally connected subgraph has at most one cycle.

The programs for A369828, there is no canonical definition to state claims against.
-/

/-! ## A369828.P3564051555257104402

`A144228(∑[4*n])`
-/

namespace A369828.P3564051555257104402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A369828.P3564051555257104402

/-! ## A369828.P15073190062775926320

`A144228(A046092(n))+A000035(2*n)`
-/

namespace A369828.P15073190062775926320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144228 (A046092 n).toNat + A000035 (2 * n)

end

end A369828.P15073190062775926320

/-!
# A369831: a(n) is the number of distinct values of the permanent of an n X n symmetric Toeplitz matrix using the integers 1 to n.

The programs for A369831, there is no canonical definition to state claims against.
-/

/-! ## A369831.P12285295100943620203

`n!-(char[2]+char[4])`
-/

namespace A369831.P12285295100943620203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A369831.P12285295100943620203

/-! ## A369831.P15016670417851682634

`A369833(n)-char[4]`
-/

namespace A369831.P15016670417851682634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369833 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A369831.P15016670417851682634

/-! ## A369831.P4497480900236121903

`A244465(n+1)+n!`
-/

namespace A369831.P4497480900236121903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244465 (n + 1) + (Nat.factorial n : ℤ)

end

end A369831.P4497480900236121903

/-! ## A369831.P3474000478906257813

`A247223(n+3)+n!`
-/

namespace A369831.P3474000478906257813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247223 (n + 3) + (Nat.factorial n : ℤ)

end

end A369831.P3474000478906257813

/-! ## A369831.P10494682496409954773

`A353348(n+4)+n!`
-/

namespace A369831.P10494682496409954773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (n + 4) + (Nat.factorial n : ℤ)

end

end A369831.P10494682496409954773

/-!
# A369832: a(n) is the number of distinct values of the determinant of an n X n symmetric Toeplitz matrix using the first n prime numbers.

The programs for A369832, there is no canonical definition to state claims against.
-/

/-! ## A369832.P6469088054908147866

`A000142(n)-A037860(A143916(n))`
-/

namespace A369832.P6469088054908147866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A037860 (A143916 n).toNat

end

end A369832.P6469088054908147866

/-! ## A369832.P5722367846355096540

`A000142(n)-A325223(A192744(n))`
-/

namespace A369832.P5722367846355096540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A325223 (A192744 n).toNat

end

end A369832.P5722367846355096540

/-! ## A369832.P6925183808011008006

`n!-A127324(A003001(n))`
-/

namespace A369832.P6925183808011008006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A127324 (A003001 n).toNat

end

end A369832.P6925183808011008006

/-!
# A369833: a(n) is the number of distinct values of the permanent of an n X n symmetric Toeplitz matrix using the first n prime numbers.

The programs for A369833, there is no canonical definition to state claims against.
-/

/-! ## A369833.P8100557697822332044

`(n-char[2])!`
-/

namespace A369833.P8100557697822332044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A369833.P8100557697822332044

/-! ## A369833.P9964444255997297730

`gcd(n!, C(2, n))`
-/

namespace A369833.P9964444255997297730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial n) (Nat.choose 2 n)

end

end A369833.P9964444255997297730

/-! ## A369833.P11749249138809536954

`n!/(char[2]+1)`
-/

namespace A369833.P11749249138809536954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)

end

end A369833.P11749249138809536954

/-! ## A369833.P1269206454059726763

`C(n!, char[2]+1)`
-/

namespace A369833.P1269206454059726763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial n) ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A369833.P1269206454059726763

/-! ## A369833.P13530805389561499125

`∑{digits}[n, (n%#!)!]`
-/

namespace A369833.P13530805389561499125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (n % Nat.factorial x)).sum

end

end A369833.P13530805389561499125

/-!
# A369835: a(n) is the number of distinct values of the permanent of an n X n symmetric Toeplitz matrix using the integers 0 to n-1.

The programs for A369835, there is no canonical definition to state claims against.
-/

/-! ## A369835.P2853283593563487442

`n!-A127323(2*n)`
-/

namespace A369835.P2853283593563487442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A127323 (2 * n)

end

end A369835.P2853283593563487442

/-! ## A369835.P14484490443457847051

`A000142(n)-A127323(2*n)`
-/

namespace A369835.P14484490443457847051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A127323 (2 * n)

end

end A369835.P14484490443457847051

/-! ## A369835.P18330240018241609882

`n!-A001222(A324387(n+1))`
-/

namespace A369835.P18330240018241609882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A001222 (A324387 (n + 1)).toNat

end

end A369835.P18330240018241609882

/-! ## A369835.P16219214197574046285

`n!-A002265(A319653(n+2))`
-/

namespace A369835.P16219214197574046285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A002265 (A319653 (n + 2)).toNat

end

end A369835.P16219214197574046285

/-! ## A369835.P7089777671164152223

`A000142(n)-A002375(A034867(n))`
-/

namespace A369835.P7089777671164152223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A002375 (A034867 n).toNat

end

end A369835.P7089777671164152223

/-!
# A369836: Number of compositions of 5*n into parts 1 and 5.

The programs for A369836, the canonical program `A369836.P541515226587760680` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369836 has offset 0).

The definition of A369836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369836.P541515226587760680

`A003520(5*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369836

/-- `A003520(5*n)` -/
def P541515226587760680.Spec : Prop :=
  ∀ n, P541515226587760680.a n = A369836 n

theorem P541515226587760680.correct : P541515226587760680.Spec := by
  intro n
  simp only [A369836]

end A369836

/-! ## A369836.P2279904230788192264

`6*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=34, a(4)=140`
-/

namespace A369836.P2279904230788192264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8, 34, 140] fun n a =>
  6 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A369836.P2279904230788192264

namespace A369836

/-- `6*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2279904230788192264.Spec : Prop :=
  ∀ n, P2279904230788192264.a n = A369836 n

end A369836

/-! ## A369836.P14451051416793377949

`∑[A079675(n+1)]`
-/

namespace A369836.P14451051416793377949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369836.P14451051416793377949

namespace A369836

/-- `∑[A079675(n+1)]` -/
def P14451051416793377949.Spec : Prop :=
  ∀ n, P14451051416793377949.a n = A369836 n

end A369836

/-! ## A369836.P15129892608929879641

`Δ[A099562(5*n)]`
-/

namespace A369836.P15129892608929879641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099562 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369836.P15129892608929879641

namespace A369836

/-- `Δ[A099562(5*n)]` -/
def P15129892608929879641.Spec : Prop :=
  ∀ n, P15129892608929879641.a n = A369836 n

end A369836

/-! ## A369836.P11676650002227581281

`A017899(5*(n+1))`
-/

namespace A369836.P11676650002227581281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (5 * (n + 1))

end

end A369836.P11676650002227581281

namespace A369836

/-- `A017899(5*(n+1))` -/
def P11676650002227581281.Spec : Prop :=
  ∀ n, P11676650002227581281.a n = A369836 n

end A369836

/-! ## A369836.P10552770670482653111

`A226516(A017281(n+1))`
-/

namespace A369836.P10552770670482653111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017281 (n + 1)).toNat

end

end A369836.P10552770670482653111

namespace A369836

/-- `A226516(A017281(n+1))` -/
def P10552770670482653111.Spec : Prop :=
  ∀ n, P10552770670482653111.a n = A369836 n

end A369836

/-! ## A369836.P15708877889675279397

`A226516(A017305(n+1)-2)`
-/

namespace A369836.P15708877889675279397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017305 (n + 1) - 2).toNat

end

end A369836.P15708877889675279397

namespace A369836

/-- `A226516(A017305(n+1)-2)` -/
def P15708877889675279397.Spec : Prop :=
  ∀ n, P15708877889675279397.a n = A369836 n

end A369836

/-! ## A369836.P14767777403072867074

`A369839(n+2)-(A369839(n+1)+A079675(n+2))`
-/

namespace A369836.P14767777403072867074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369839 (n + 2) - (A369839 (n + 1) + A079675 (n + 2))

end

end A369836.P14767777403072867074

namespace A369836

/-- `A369839(n+2)-(A369839(n+1)+A079675(n+2))` -/
def P14767777403072867074.Spec : Prop :=
  ∀ n, P14767777403072867074.a n = A369836 n

end A369836

/-!
# A369837: Number of compositions of 5*n-2 into parts 1 and 5.

The programs for A369837, the canonical program `A369837.P16528590521694698990` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369837 has offset 1).

The definition of A369837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369837.P16528590521694698990

`6*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=20, a(3)=80, a(4)=325`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369837

/-- `6*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16528590521694698990.Spec : Prop :=
  ∀ n, P16528590521694698990.a n = A369837 (n + 1)

theorem P16528590521694698990.correct : P16528590521694698990.Spec := by
  intro n
  simp only [A369837, Nat.add_sub_cancel]

end A369837

/-! ## A369837.P15195851395101583321

`A003520(5*(n+1)-2)`
-/

namespace A369837.P15195851395101583321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (5 * (n + 1) - 2)

end

end A369837.P15195851395101583321

namespace A369837

/-- `A003520(5*(n+1)-2)` -/
def P15195851395101583321.Spec : Prop :=
  ∀ n, P15195851395101583321.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P6484888997914158982

`∑[A369838(n+1)]`
-/

namespace A369837.P6484888997914158982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369837.P6484888997914158982

namespace A369837

/-- `∑[A369838(n+1)]` -/
def P6484888997914158982.Spec : Prop :=
  ∀ n, P6484888997914158982.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P13781426647510870458

`∑[∑[A369839(n+1)]]`
-/

namespace A369837.P13781426647510870458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369839 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369837.P13781426647510870458

namespace A369837

/-- `∑[∑[A369839(n+1)]]` -/
def P13781426647510870458.Spec : Prop :=
  ∀ n, P13781426647510870458.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P5246185796428291781

`A017899(A016885(n+1))`
-/

namespace A369837.P5246185796428291781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016885 (n + 1)).toNat

end

end A369837.P5246185796428291781

namespace A369837

/-- `A017899(A016885(n+1))` -/
def P5246185796428291781.Spec : Prop :=
  ∀ n, P5246185796428291781.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P17269243152051039764

`A099562(A016873(n+1))`
-/

namespace A369837.P17269243152051039764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099562 (A016873 (n + 1)).toNat

end

end A369837.P17269243152051039764

namespace A369837

/-- `A099562(A016873(n+1))` -/
def P17269243152051039764.Spec : Prop :=
  ∀ n, P17269243152051039764.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P11158028944218985095

`A226516(A017353(n+1))`
-/

namespace A369837.P11158028944218985095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017353 (n + 1)).toNat

end

end A369837.P11158028944218985095

namespace A369837

/-- `A226516(A017353(n+1))` -/
def P11158028944218985095.Spec : Prop :=
  ∀ n, P11158028944218985095.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P5058677620921399299

`A017899(A016873(n+1)+1)`
-/

namespace A369837.P5058677620921399299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016873 (n + 1) + 1).toNat

end

end A369837.P5058677620921399299

namespace A369837

/-- `A017899(A016873(n+1)+1)` -/
def P5058677620921399299.Spec : Prop :=
  ∀ n, P5058677620921399299.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P16505481319156263762

`A099562(A016861(n+1)+1)`
-/

namespace A369837.P16505481319156263762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099562 (A016861 (n + 1) + 1).toNat

end

end A369837.P16505481319156263762

namespace A369837

/-- `A099562(A016861(n+1)+1)` -/
def P16505481319156263762.Spec : Prop :=
  ∀ n, P16505481319156263762.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P5443703295813687866

`A017899(A016861(n+1)+2)`
-/

namespace A369837.P5443703295813687866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016861 (n + 1) + 2).toNat

end

end A369837.P5443703295813687866

namespace A369837

/-- `A017899(A016861(n+1)+2)` -/
def P5443703295813687866.Spec : Prop :=
  ∀ n, P5443703295813687866.a n = A369837 (n + 1)

end A369837

/-! ## A369837.P4710661506563309009

`A226516(A017329(n+1)+2)`
-/

namespace A369837.P4710661506563309009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017329 (n + 1) + 2).toNat

end

end A369837.P4710661506563309009

namespace A369837

/-- `A226516(A017329(n+1)+2)` -/
def P4710661506563309009.Spec : Prop :=
  ∀ n, P4710661506563309009.a n = A369837 (n + 1)

end A369837

/-!
# A369838: Number of compositions of 5*n-3 into parts 1 and 5.

The programs for A369838, the canonical program `A369838.P13027595951509663324` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369838 has offset 1).

The definition of A369838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369838.P13027595951509663324

`6*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=15, a(3)=60, a(4)=245`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369838

/-- `6*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P13027595951509663324.Spec : Prop :=
  ∀ n, P13027595951509663324.a n = A369838 (n + 1)

theorem P13027595951509663324.correct : P13027595951509663324.Spec := by
  intro n
  simp only [A369838, Nat.add_sub_cancel]

end A369838

/-! ## A369838.P7761776797612781643

`A003520(5*(n+1)-3)`
-/

namespace A369838.P7761776797612781643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (5 * (n + 1) - 3)

end

end A369838.P7761776797612781643

namespace A369838

/-- `A003520(5*(n+1)-3)` -/
def P7761776797612781643.Spec : Prop :=
  ∀ n, P7761776797612781643.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P17320617277616127390

`∑[∑[A369836(n)]]`
-/

namespace A369838.P17320617277616127390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369836 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369838.P17320617277616127390

namespace A369838

/-- `∑[∑[A369836(n)]]` -/
def P17320617277616127390.Spec : Prop :=
  ∀ n, P17320617277616127390.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P2659947523215463254

`∑[A369839(n+1)]`
-/

namespace A369838.P2659947523215463254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369838.P2659947523215463254

namespace A369838

/-- `∑[A369839(n+1)]` -/
def P2659947523215463254.Spec : Prop :=
  ∀ n, P2659947523215463254.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P14689131926916080244

`∑[A099562(5*(n+1))]`
-/

namespace A369838.P14689131926916080244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099562 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369838.P14689131926916080244

namespace A369838

/-- `∑[A099562(5*(n+1))]` -/
def P14689131926916080244.Spec : Prop :=
  ∀ n, P14689131926916080244.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P5987967170943895338

`A017899(A016873(n+1))`
-/

namespace A369838.P5987967170943895338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016873 (n + 1)).toNat

end

end A369838.P5987967170943895338

namespace A369838

/-- `A017899(A016873(n+1))` -/
def P5987967170943895338.Spec : Prop :=
  ∀ n, P5987967170943895338.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P13115911563805443051

`A099562(A016861(n+1))`
-/

namespace A369838.P13115911563805443051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099562 (A016861 (n + 1)).toNat

end

end A369838.P13115911563805443051

namespace A369838

/-- `A099562(A016861(n+1))` -/
def P13115911563805443051.Spec : Prop :=
  ∀ n, P13115911563805443051.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P3123119189061868082

`A226516(A017329(n+1))`
-/

namespace A369838.P3123119189061868082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017329 (n + 1)).toNat

end

end A369838.P3123119189061868082

namespace A369838

/-- `A226516(A017329(n+1))` -/
def P3123119189061868082.Spec : Prop :=
  ∀ n, P3123119189061868082.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P8081758618817387517

`A017899(A016861(n+1)+1)`
-/

namespace A369838.P8081758618817387517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016861 (n + 1) + 1).toNat

end

end A369838.P8081758618817387517

namespace A369838

/-- `A017899(A016861(n+1)+1)` -/
def P8081758618817387517.Spec : Prop :=
  ∀ n, P8081758618817387517.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P12746684898302565412

`A017899(A008706(n+1)+2)`
-/

namespace A369838.P12746684898302565412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A008706 (n + 1) + 2).toNat

end

end A369838.P12746684898302565412

namespace A369838

/-- `A017899(A008706(n+1)+2)` -/
def P12746684898302565412.Spec : Prop :=
  ∀ n, P12746684898302565412.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P9094705015140611589

`A017899(A016885(n+1)-1)`
-/

namespace A369838.P9094705015140611589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016885 (n + 1) - 1).toNat

end

end A369838.P9094705015140611589

namespace A369838

/-- `A017899(A016885(n+1)-1)` -/
def P9094705015140611589.Spec : Prop :=
  ∀ n, P9094705015140611589.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P15406703221164244528

`A099562(A016873(n+1)-1)`
-/

namespace A369838.P15406703221164244528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099562 (A016873 (n + 1) - 1).toNat

end

end A369838.P15406703221164244528

namespace A369838

/-- `A099562(A016873(n+1)-1)` -/
def P15406703221164244528.Spec : Prop :=
  ∀ n, P15406703221164244528.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P13889212508860851333

`A226516(A017305(n+1)+2)`
-/

namespace A369838.P13889212508860851333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017305 (n + 1) + 2).toNat

end

end A369838.P13889212508860851333

namespace A369838

/-- `A226516(A017305(n+1)+2)` -/
def P13889212508860851333.Spec : Prop :=
  ∀ n, P13889212508860851333.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P3607431121584550773

`A226516(A017353(n+1)-2)`
-/

namespace A369838.P3607431121584550773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017353 (n + 1) - 2).toNat

end

end A369838.P3607431121584550773

namespace A369838

/-- `A226516(A017353(n+1)-2)` -/
def P3607431121584550773.Spec : Prop :=
  ∀ n, P3607431121584550773.a n = A369838 (n + 1)

end A369838

/-! ## A369838.P6956310264157491465

`A369837(n+2)-(A369839(n+2)+A369837(n+1))`
-/

namespace A369838.P6956310264157491465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369837 (n + 2) - (A369839 (n + 2) + A369837 (n + 1))

end

end A369838.P6956310264157491465

namespace A369838

/-- `A369837(n+2)-(A369839(n+2)+A369837(n+1))` -/
def P6956310264157491465.Spec : Prop :=
  ∀ n, P6956310264157491465.a n = A369838 (n + 1)

end A369838

/-!
# A369839: Number of compositions of 5*n-4 into parts 1 and 5.

The programs for A369839, the canonical program `A369839.P14080043794230531007` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369839 has offset 1).

The definition of A369839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369839.P4845811818114062159

`A003520(5*(n+1)-4)`
-/

namespace A369839.P4845811818114062159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (5 * (n + 1) - 4)

end

end A369839.P4845811818114062159

namespace A369839

/-- `A003520(5*(n+1)-4)` -/
def P4845811818114062159.Spec : Prop :=
  ∀ n, P4845811818114062159.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P14080043794230531007

`6*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=45, a(4)=185`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369839

/-- `6*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14080043794230531007.Spec : Prop :=
  ∀ n, P14080043794230531007.a n = A369839 (n + 1)

theorem P14080043794230531007.correct : P14080043794230531007.Spec := by
  intro n
  simp only [A369839, Nat.add_sub_cancel]

end A369839

/-! ## A369839.P7746217646466547203

`∑[A369836(n)]`
-/

namespace A369839.P7746217646466547203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369839.P7746217646466547203

namespace A369839

/-- `∑[A369836(n)]` -/
def P7746217646466547203.Spec : Prop :=
  ∀ n, P7746217646466547203.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P2727677769348043035

`∑[A003520(5*n)]`
-/

namespace A369839.P2727677769348043035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369839.P2727677769348043035

namespace A369839

/-- `∑[A003520(5*n)]` -/
def P2727677769348043035.Spec : Prop :=
  ∀ n, P2727677769348043035.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P15488302793243387294

`A099562(5*(n+1))`
-/

namespace A369839.P15488302793243387294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099562 (5 * (n + 1))

end

end A369839.P15488302793243387294

namespace A369839

/-- `A099562(5*(n+1))` -/
def P15488302793243387294.Spec : Prop :=
  ∀ n, P15488302793243387294.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P5967095203908254094

`∑[∑[A079675(n+1)]]`
-/

namespace A369839.P5967095203908254094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079675 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369839.P5967095203908254094

namespace A369839

/-- `∑[∑[A079675(n+1)]]` -/
def P5967095203908254094.Spec : Prop :=
  ∀ n, P5967095203908254094.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P16724385638426254533

`∑[A017899(5*(n+1))]`
-/

namespace A369839.P16724385638426254533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369839.P16724385638426254533

namespace A369839

/-- `∑[A017899(5*(n+1))]` -/
def P16724385638426254533.Spec : Prop :=
  ∀ n, P16724385638426254533.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P17151597621755444069

`A017899(A016861(n+1))`
-/

namespace A369839.P17151597621755444069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016861 (n + 1)).toNat

end

end A369839.P17151597621755444069

namespace A369839

/-- `A017899(A016861(n+1))` -/
def P17151597621755444069.Spec : Prop :=
  ∀ n, P17151597621755444069.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P1080971346098961979

`A017899(A008706(n+1)+1)`
-/

namespace A369839.P1080971346098961979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A008706 (n + 1) + 1).toNat

end

end A369839.P1080971346098961979

namespace A369839

/-- `A017899(A008706(n+1)+1)` -/
def P1080971346098961979.Spec : Prop :=
  ∀ n, P1080971346098961979.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P6912694034160598269

`A017899(A016873(n+1)-1)`
-/

namespace A369839.P6912694034160598269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016873 (n + 1) - 1).toNat

end

end A369839.P6912694034160598269

namespace A369839

/-- `A017899(A016873(n+1)-1)` -/
def P6912694034160598269.Spec : Prop :=
  ∀ n, P6912694034160598269.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P14323966548501008675

`A017899(A016885(n+1)-2)`
-/

namespace A369839.P14323966548501008675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016885 (n + 1) - 2).toNat

end

end A369839.P14323966548501008675

namespace A369839

/-- `A017899(A016885(n+1)-2)` -/
def P14323966548501008675.Spec : Prop :=
  ∀ n, P14323966548501008675.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P14810190816212799422

`A226516(A017305(n+1))`
-/

namespace A369839.P14810190816212799422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017305 (n + 1)).toNat

end

end A369839.P14810190816212799422

namespace A369839

/-- `A226516(A017305(n+1))` -/
def P14810190816212799422.Spec : Prop :=
  ∀ n, P14810190816212799422.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P10296251560997034564

`Δ[A017899(A008706(n)+2)]`
-/

namespace A369839.P10296251560997034564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A008706 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369839.P10296251560997034564

namespace A369839

/-- `Δ[A017899(A008706(n)+2)]` -/
def P10296251560997034564.Spec : Prop :=
  ∀ n, P10296251560997034564.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P3523371154561413544

`A226516(A017281(n+1)+2)`
-/

namespace A369839.P3523371154561413544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017281 (n + 1) + 2).toNat

end

end A369839.P3523371154561413544

namespace A369839

/-- `A226516(A017281(n+1)+2)` -/
def P3523371154561413544.Spec : Prop :=
  ∀ n, P3523371154561413544.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P16522399098583310638

`A226516(A017329(n+1)-2)`
-/

namespace A369839.P16522399098583310638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 (A017329 (n + 1) - 2).toNat

end

end A369839.P16522399098583310638

namespace A369839

/-- `A226516(A017329(n+1)-2)` -/
def P16522399098583310638.Spec : Prop :=
  ∀ n, P16522399098583310638.a n = A369839 (n + 1)

end A369839

/-! ## A369839.P4158009549397551037

`A369838(n+2)-(A369838(n+1)+A369836(n+1))`
-/

namespace A369839.P4158009549397551037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369838 (n + 2) - (A369838 (n + 1) + A369836 (n + 1))

end

end A369839.P4158009549397551037

namespace A369839

/-- `A369838(n+2)-(A369838(n+1)+A369836(n+1))` -/
def P4158009549397551037.Spec : Prop :=
  ∀ n, P4158009549397551037.a n = A369839 (n + 1)

end A369839

/-!
# A369840: Number of compositions of 5*n into parts 2 and 5.

The programs for A369840, the canonical program `A369840.P6407454552249958706` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369840 has offset 0).

The definition of A369840 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369840.P6407454552249958706

`5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=23`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369840

/-- `5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6407454552249958706.Spec : Prop :=
  ∀ n, P6407454552249958706.a n = A369840 n

theorem P6407454552249958706.correct : P6407454552249958706.Spec := by
  intro n
  simp only [A369840]

end A369840

/-! ## A369840.P8319854956878007140

`A001687(5*n+1)`
-/

namespace A369840.P8319854956878007140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (5 * n + 1)

end

end A369840.P8319854956878007140

namespace A369840

/-- `A001687(5*n+1)` -/
def P8319854956878007140.Spec : Prop :=
  ∀ n, P8319854956878007140.a n = A369840 n

end A369840

/-! ## A369840.P13446531039760884508

`∑[A369803(n)]`
-/

namespace A369840.P13446531039760884508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369840.P13446531039760884508

namespace A369840

/-- `∑[A369803(n)]` -/
def P13446531039760884508.Spec : Prop :=
  ∀ n, P13446531039760884508.a n = A369840 n

end A369840

/-! ## A369840.P1038960564155115140

`A005686(A016873(n))-A369844(n+1)`
-/

namespace A369840.P1038960564155115140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A016873 n).toNat - A369844 (n + 1)

end

end A369840.P1038960564155115140

namespace A369840

/-- `A005686(A016873(n))-A369844(n+1)` -/
def P1038960564155115140.Spec : Prop :=
  ∀ n, P1038960564155115140.a n = A369840 n

end A369840

/-! ## A369840.P1713693715574127557

`A005686(A016873(n))-∑[A001687(5*n)]`
-/

namespace A369840.P1713693715574127557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A016873 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369840.P1713693715574127557

namespace A369840

/-- `A005686(A016873(n))-∑[A001687(5*n)]` -/
def P1713693715574127557.Spec : Prop :=
  ∀ n, P1713693715574127557.a n = A369840 n

end A369840

/-! ## A369840.P18308232974999180469

`A005686(A016873(n))-A001687(A016873(n))`
-/

namespace A369840.P18308232974999180469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (A016873 n).toNat - A001687 (A016873 n).toNat

end

end A369840.P18308232974999180469

namespace A369840

/-- `A005686(A016873(n))-A001687(A016873(n))` -/
def P18308232974999180469.Spec : Prop :=
  ∀ n, P18308232974999180469.a n = A369840 n

end A369840

/-! ## A369840.P3492661152251241138

`A369843(n+2)-(A369843(n+1)+A369803(n+1))`
-/

namespace A369840.P3492661152251241138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369843 (n + 2) - (A369843 (n + 1) + A369803 (n + 1))

end

end A369840.P3492661152251241138

namespace A369840

/-- `A369843(n+2)-(A369843(n+1)+A369803(n+1))` -/
def P3492661152251241138.Spec : Prop :=
  ∀ n, P3492661152251241138.a n = A369840 n

end A369840

/-!
# A369841: n-th digit of the decimal expansion of 1/n, with the digit to the left of the decimal point counted as the first digit.

The programs for A369841, the canonical program `A369841.P9648295290956576277` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369841 has offset 1).

The definition of A369841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369841.P9648295290956576277

`floor(10^n/(n+1))%10`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369841

/-- `floor(10^n/(n+1))%10` -/
def P9648295290956576277.Spec : Prop :=
  ∀ n, P9648295290956576277.a n = A369841 (n + 1)

theorem P9648295290956576277.correct : P9648295290956576277.Spec := by
  intro n
  simp only [A369841, Nat.add_sub_cancel]

end A369841

/-!
# A369842: Number of compositions of 5*n-1 into parts 2 and 5.

The programs for A369842, the canonical program `A369842.P2149413243803018358` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369842 has offset 1).

The definition of A369842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369842.P283258950591812604

`A001687(5*(n+1))`
-/

namespace A369842.P283258950591812604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (5 * (n + 1))

end

end A369842.P283258950591812604

namespace A369842

/-- `A001687(5*(n+1))` -/
def P283258950591812604.Spec : Prop :=
  ∀ n, P283258950591812604.a n = A369842 (n + 1)

end A369842

/-! ## A369842.P2149413243803018358

`5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=18, a(4)=52`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369842

/-- `5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2149413243803018358.Spec : Prop :=
  ∀ n, P2149413243803018358.a n = A369842 (n + 1)

theorem P2149413243803018358.correct : P2149413243803018358.Spec := by
  intro n
  simp only [A369842, Nat.add_sub_cancel]

end A369842

/-! ## A369842.P4042450605822013026

`∑[∑[A369840(n)]]`
-/

namespace A369842.P4042450605822013026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369840 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369842.P4042450605822013026

namespace A369842

/-- `∑[∑[A369840(n)]]` -/
def P4042450605822013026.Spec : Prop :=
  ∀ n, P4042450605822013026.a n = A369842 (n + 1)

end A369842

/-! ## A369842.P8577833901771691981

`∑[A369843(n+1)]`
-/

namespace A369842.P8577833901771691981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369842.P8577833901771691981

namespace A369842

/-- `∑[A369843(n+1)]` -/
def P8577833901771691981.Spec : Prop :=
  ∀ n, P8577833901771691981.a n = A369842 (n + 1)

end A369842

/-! ## A369842.P417398078841012425

`Δ[A369844(n+1)]`
-/

namespace A369842.P417398078841012425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369842.P417398078841012425

namespace A369842

/-- `Δ[A369844(n+1)]` -/
def P417398078841012425.Spec : Prop :=
  ∀ n, P417398078841012425.a n = A369842 (n + 1)

end A369842

/-! ## A369842.P6734759657062936791

`A369844(n+2)-A369844(n+1)`
-/

namespace A369842.P6734759657062936791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369844 (n + 2) - A369844 (n + 1)

end

end A369842.P6734759657062936791

namespace A369842

/-- `A369844(n+2)-A369844(n+1)` -/
def P6734759657062936791.Spec : Prop :=
  ∀ n, P6734759657062936791.a n = A369842 (n + 1)

end A369842

/-!
# A369843: Number of compositions of 5*n-3 into parts 2 and 5.

The programs for A369843, the canonical program `A369843.P17162043352831427434` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369843 has offset 1).

The definition of A369843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369843.P17162043352831427434

`5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=34`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369843

/-- `5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17162043352831427434.Spec : Prop :=
  ∀ n, P17162043352831427434.a n = A369843 (n + 1)

theorem P17162043352831427434.correct : P17162043352831427434.Spec := by
  intro n
  simp only [A369843, Nat.add_sub_cancel]

end A369843

/-! ## A369843.P38122041097683640

`A001687(5*(n+1)-2)`
-/

namespace A369843.P38122041097683640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (5 * (n + 1) - 2)

end

end A369843.P38122041097683640

namespace A369843

/-- `A001687(5*(n+1)-2)` -/
def P38122041097683640.Spec : Prop :=
  ∀ n, P38122041097683640.a n = A369843 (n + 1)

end A369843

/-! ## A369843.P4641858729557043458

`∑[A369840(n)]`
-/

namespace A369843.P4641858729557043458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369843.P4641858729557043458

namespace A369843

/-- `∑[A369840(n)]` -/
def P4641858729557043458.Spec : Prop :=
  ∀ n, P4641858729557043458.a n = A369843 (n + 1)

end A369843

/-! ## A369843.P5057859103430596379

`∑[∑[A369803(n)]]`
-/

namespace A369843.P5057859103430596379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369803 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369843.P5057859103430596379

namespace A369843

/-- `∑[∑[A369803(n)]]` -/
def P5057859103430596379.Spec : Prop :=
  ∀ n, P5057859103430596379.a n = A369843 (n + 1)

end A369843

/-! ## A369843.P10532499913829846852

`Δ[A001687(5*n)]`
-/

namespace A369843.P10532499913829846852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369843.P10532499913829846852

namespace A369843

/-- `Δ[A001687(5*n)]` -/
def P10532499913829846852.Spec : Prop :=
  ∀ n, P10532499913829846852.a n = A369843 (n + 1)

end A369843

/-! ## A369843.P15811853632792058888

`A369842(n+2)-(A369842(n+1)+A369840(n+1))`
-/

namespace A369843.P15811853632792058888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369842 (n + 2) - (A369842 (n + 1) + A369840 (n + 1))

end

end A369843.P15811853632792058888

namespace A369843

/-- `A369842(n+2)-(A369842(n+1)+A369840(n+1))` -/
def P15811853632792058888.Spec : Prop :=
  ∀ n, P15811853632792058888.a n = A369843 (n + 1)

end A369843

/-!
# A369844: Number of compositions of 5*n-4 into parts 2 and 5.

The programs for A369844, the canonical program `A369844.P9800654354688213735` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369844 has offset 1).

The definition of A369844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369844.P9800654354688213735

`5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=11, a(4)=29`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369844

/-- `5*a(n-1)-9*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P9800654354688213735.Spec : Prop :=
  ∀ n, P9800654354688213735.a n = A369844 (n + 1)

theorem P9800654354688213735.correct : P9800654354688213735.Spec := by
  intro n
  simp only [A369844, Nat.add_sub_cancel]

end A369844

/-! ## A369844.P5847228546113295040

`A001687(5*(n+1)-3)`
-/

namespace A369844.P5847228546113295040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (5 * (n + 1) - 3)

end

end A369844.P5847228546113295040

namespace A369844

/-- `A001687(5*(n+1)-3)` -/
def P5847228546113295040.Spec : Prop :=
  ∀ n, P5847228546113295040.a n = A369844 (n + 1)

end A369844

/-! ## A369844.P2058875799870981883

`∑[A001687(5*n)]`
-/

namespace A369844.P2058875799870981883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369844.P2058875799870981883

namespace A369844

/-- `∑[A001687(5*n)]` -/
def P2058875799870981883.Spec : Prop :=
  ∀ n, P2058875799870981883.a n = A369844 (n + 1)

end A369844

/-! ## A369844.P12511167165128324667

`∑[∑[A369843(n+1)]-A369843(n+1)]`
-/

namespace A369844.P12511167165128324667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369843 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A369843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369844.P12511167165128324667

namespace A369844

/-- `∑[∑[A369843(n+1)]-A369843(n+1)]` -/
def P12511167165128324667.Spec : Prop :=
  ∀ n, P12511167165128324667.a n = A369844 (n + 1)

end A369844

/-! ## A369844.P5960156823305698043

`Δ[A369803(n)%A181665(n)]`
-/

namespace A369844.P5960156823305698043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369803 n) (A181665 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369844.P5960156823305698043

namespace A369844

/-- `Δ[A369803(n)%A181665(n)]` -/
def P5960156823305698043.Spec : Prop :=
  ∀ n, P5960156823305698043.a n = A369844 (n + 1)

end A369844

/-! ## A369844.P3586661931082571167

`Δ[A369803(n)]%A001611(3*n)`
-/

namespace A369844.P3586661931082571167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001611 (3 * n))

end

end A369844.P3586661931082571167

namespace A369844

/-- `Δ[A369803(n)]%A001611(3*n)` -/
def P3586661931082571167.Spec : Prop :=
  ∀ n, P3586661931082571167.a n = A369844 (n + 1)

end A369844

/-! ## A369844.P722633110179888528

`Δ[A369803(n)]%A014523(n)`
-/

namespace A369844.P722633110179888528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A014523 n)

end

end A369844.P722633110179888528

namespace A369844

/-- `Δ[A369803(n)]%A014523(n)` -/
def P722633110179888528.Spec : Prop :=
  ∀ n, P722633110179888528.a n = A369844 (n + 1)

end A369844

/-!
# A369845: Number of compositions of 5*n into parts 3 and 5.

The programs for A369845, the canonical program `A369845.P17165904175182421461` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369845 has offset 0).

The definition of A369845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369845.P17165904175182421461

`A052920(5*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369845

/-- `A052920(5*n)` -/
def P17165904175182421461.Spec : Prop :=
  ∀ n, P17165904175182421461.a n = A369845 n

theorem P17165904175182421461.correct : P17165904175182421461.Spec := by
  intro n
  simp only [A369845]

end A369845

/-! ## A369845.P11774699788126901494

`5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=7`
-/

namespace A369845.P11774699788126901494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 7] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 11 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A369845.P11774699788126901494

namespace A369845

/-- `5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11774699788126901494.Spec : Prop :=
  ∀ n, P11774699788126901494.a n = A369845 n

end A369845

/-! ## A369845.P4136025516319546813

`∑[A369804(n)]`
-/

namespace A369845.P4136025516319546813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369845.P4136025516319546813

namespace A369845

/-- `∑[A369804(n)]` -/
def P4136025516319546813.Spec : Prop :=
  ∀ n, P4136025516319546813.a n = A369845 n

end A369845

/-! ## A369845.P7391021767361903993

`A369804(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A369845.P7391021767361903993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A369804 n + a (A023443 n).toNat

end

end A369845.P7391021767361903993

namespace A369845

/-- `A369804(n)+a(A023443(n))` -/
def P7391021767361903993.Spec : Prop :=
  ∀ n, P7391021767361903993.a n = A369845 n

end A369845

/-! ## A369845.P2428955283591003568

`A369847(n+2)-(A369847(n+1)+A369804(n+1))`
-/

namespace A369845.P2428955283591003568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369847 (n + 2) - (A369847 (n + 1) + A369804 (n + 1))

end

end A369845.P2428955283591003568

namespace A369845

/-- `A369847(n+2)-(A369847(n+1)+A369804(n+1))` -/
def P2428955283591003568.Spec : Prop :=
  ∀ n, P2428955283591003568.a n = A369845 n

end A369845

/-!
# A369846: Number of compositions of 5*n-1 into parts 3 and 5.

The programs for A369846, the canonical program `A369846.P2936470115510732235` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369846 has offset 1).

The definition of A369846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369846.P221157000847457458

`A052920(5*(n+1)-1)`
-/

namespace A369846.P221157000847457458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (5 * (n + 1) - 1)

end

end A369846.P221157000847457458

namespace A369846

/-- `A052920(5*(n+1)-1)` -/
def P221157000847457458.Spec : Prop :=
  ∀ n, P221157000847457458.a n = A369846 (n + 1)

end A369846

/-! ## A369846.P2936470115510732235

`5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=10, a(4)=21`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369846

/-- `5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2936470115510732235.Spec : Prop :=
  ∀ n, P2936470115510732235.a n = A369846 (n + 1)

theorem P2936470115510732235.correct : P2936470115510732235.Spec := by
  intro n
  simp only [A369846, Nat.add_sub_cancel]

end A369846

/-! ## A369846.P2815791131051604137

`∑[A369848(n+1)]`
-/

namespace A369846.P2815791131051604137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369846.P2815791131051604137

namespace A369846

/-- `∑[A369848(n+1)]` -/
def P2815791131051604137.Spec : Prop :=
  ∀ n, P2815791131051604137.a n = A369846 (n + 1)

end A369846

/-! ## A369846.P16822938663085325132

`Δ[A369804(n+1)]`
-/

namespace A369846.P16822938663085325132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369846.P16822938663085325132

namespace A369846

/-- `Δ[A369804(n+1)]` -/
def P16822938663085325132.Spec : Prop :=
  ∀ n, P16822938663085325132.a n = A369846 (n + 1)

end A369846

/-! ## A369846.P12834418553110818186

`∑[A052920(A016861(n))]`
-/

namespace A369846.P12834418553110818186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (A016861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369846.P12834418553110818186

namespace A369846

/-- `∑[A052920(A016861(n))]` -/
def P12834418553110818186.Spec : Prop :=
  ∀ n, P12834418553110818186.a n = A369846 (n + 1)

end A369846

/-! ## A369846.P5081030404027289513

`A369804(n+2)-A369804(n+1)`
-/

namespace A369846.P5081030404027289513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369804 (n + 2) - A369804 (n + 1)

end

end A369846.P5081030404027289513

namespace A369846

/-- `A369804(n+2)-A369804(n+1)` -/
def P5081030404027289513.Spec : Prop :=
  ∀ n, P5081030404027289513.a n = A369846 (n + 1)

end A369846

/-! ## A369846.P16634661049739153678

`Δ[Δ[A369845(n)]]`
-/

namespace A369846.P16634661049739153678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369846.P16634661049739153678

namespace A369846

/-- `Δ[Δ[A369845(n)]]` -/
def P16634661049739153678.Spec : Prop :=
  ∀ n, P16634661049739153678.a n = A369846 (n + 1)

end A369846

/-!
# A369847: Number of compositions of 5*n-2 into parts 3 and 5.

The programs for A369847, the canonical program `A369847.P3086787416591396124` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369847 has offset 1).

The definition of A369847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369847.P2989080180265154031

`A052920(5*(n+1)-2)`
-/

namespace A369847.P2989080180265154031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (5 * (n + 1) - 2)

end

end A369847.P2989080180265154031

namespace A369847

/-- `A052920(5*(n+1)-2)` -/
def P2989080180265154031.Spec : Prop :=
  ∀ n, P2989080180265154031.a n = A369847 (n + 1)

end A369847

/-! ## A369847.P3086787416591396124

`5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=12`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369847

/-- `5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3086787416591396124.Spec : Prop :=
  ∀ n, P3086787416591396124.a n = A369847 (n + 1)

theorem P3086787416591396124.correct : P3086787416591396124.Spec := by
  intro n
  simp only [A369847, Nat.add_sub_cancel]

end A369847

/-! ## A369847.P8398847563564537534

`∑[A369845(n)]`
-/

namespace A369847.P8398847563564537534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369847.P8398847563564537534

namespace A369847

/-- `∑[A369845(n)]` -/
def P8398847563564537534.Spec : Prop :=
  ∀ n, P8398847563564537534.a n = A369847 (n + 1)

end A369847

/-! ## A369847.P13526766574767686025

`∑[∑[A369804(n)]]`
-/

namespace A369847.P13526766574767686025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369847.P13526766574767686025

namespace A369847

/-- `∑[∑[A369804(n)]]` -/
def P13526766574767686025.Spec : Prop :=
  ∀ n, P13526766574767686025.a n = A369847 (n + 1)

end A369847

/-! ## A369847.P2303701494187212486

`Δ[A369848(n+1)]`
-/

namespace A369847.P2303701494187212486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369847.P2303701494187212486

namespace A369847

/-- `Δ[A369848(n+1)]` -/
def P2303701494187212486.Spec : Prop :=
  ∀ n, P2303701494187212486.a n = A369847 (n + 1)

end A369847

/-! ## A369847.P14485249011959772755

`∑[A052920(5*n)]`
-/

namespace A369847.P14485249011959772755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369847.P14485249011959772755

namespace A369847

/-- `∑[A052920(5*n)]` -/
def P14485249011959772755.Spec : Prop :=
  ∀ n, P14485249011959772755.a n = A369847 (n + 1)

end A369847

/-! ## A369847.P1887767618337340818

`A369848(n+2)-A369848(n+1)`
-/

namespace A369847.P1887767618337340818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369848 (n + 2) - A369848 (n + 1)

end

end A369847.P1887767618337340818

namespace A369847

/-- `A369848(n+2)-A369848(n+1)` -/
def P1887767618337340818.Spec : Prop :=
  ∀ n, P1887767618337340818.a n = A369847 (n + 1)

end A369847

/-!
# A369848: Number of compositions of 5*n-4 into parts 3 and 5.

The programs for A369848, the canonical program `A369848.P10793941372929463724` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369848 has offset 1).

The definition of A369848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369848.P7121672743190281641

`A052920(5*(n+1)-4)`
-/

namespace A369848.P7121672743190281641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (5 * (n + 1) - 4)

end

end A369848.P7121672743190281641

namespace A369848

/-- `A052920(5*(n+1)-4)` -/
def P7121672743190281641.Spec : Prop :=
  ∀ n, P7121672743190281641.a n = A369848 (n + 1)

end A369848

/-! ## A369848.P10793941372929463724

`5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=11`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369848

/-- `5*a(n-1)-10*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10793941372929463724.Spec : Prop :=
  ∀ n, P10793941372929463724.a n = A369848 (n + 1)

theorem P10793941372929463724.correct : P10793941372929463724.Spec := by
  intro n
  simp only [A369848, Nat.add_sub_cancel]

end A369848

/-! ## A369848.P14058140171948110167

`∑[∑[A369845(n)]-A369845(n)]`
-/

namespace A369848.P14058140171948110167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369845 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A369845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369848.P14058140171948110167

namespace A369848

/-- `∑[∑[A369845(n)]-A369845(n)]` -/
def P14058140171948110167.Spec : Prop :=
  ∀ n, P14058140171948110167.a n = A369848 (n + 1)

end A369848

/-! ## A369848.P15628450831590946932

`A369846(n+2)-(A369847(n+1)+A369846(n+1))`
-/

namespace A369848.P15628450831590946932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369846 (n + 2) - (A369847 (n + 1) + A369846 (n + 1))

end

end A369848.P15628450831590946932

namespace A369848

/-- `A369846(n+2)-(A369847(n+1)+A369846(n+1))` -/
def P15628450831590946932.Spec : Prop :=
  ∀ n, P15628450831590946932.a n = A369848 (n + 1)

end A369848

/-!
# A369849: Number of compositions of 5*n-1 into parts 4 and 5.

The programs for A369849, the canonical program `A369849.P18091356861665842837` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369849 has offset 1).

The definition of A369849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369849.P14334601174050202706

`A017827(5*(n+1)-1)`
-/

namespace A369849.P14334601174050202706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (5 * (n + 1) - 1)

end

end A369849.P14334601174050202706

namespace A369849

/-- `A017827(5*(n+1)-1)` -/
def P14334601174050202706.Spec : Prop :=
  ∀ n, P14334601174050202706.a n = A369849 (n + 1)

end A369849

/-! ## A369849.P18091356861665842837

`5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369849

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)+a(n-5)` -/
def P18091356861665842837.Spec : Prop :=
  ∀ n, P18091356861665842837.a n = A369849 (n + 1)

theorem P18091356861665842837.correct : P18091356861665842837.Spec := by
  intro n
  simp only [A369849, Nat.add_sub_cancel]

end A369849

/-! ## A369849.P13163664410112994502

`∑[A099131(n)]`
-/

namespace A369849.P13163664410112994502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369849.P13163664410112994502

namespace A369849

/-- `∑[A099131(n)]` -/
def P13163664410112994502.Spec : Prop :=
  ∀ n, P13163664410112994502.a n = A369849 (n + 1)

end A369849

/-! ## A369849.P10423775582707904161

`∑[∑[A368475(n)]]`
-/

namespace A369849.P10423775582707904161
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369849.P10423775582707904161

namespace A369849

/-- `∑[∑[A368475(n)]]` -/
def P10423775582707904161.Spec : Prop :=
  ∀ n, P10423775582707904161.a n = A369849 (n + 1)

end A369849

/-! ## A369849.P16471536891967242336

`Δ[A369850(n+1)]`
-/

namespace A369849.P16471536891967242336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369849.P16471536891967242336

namespace A369849

/-- `Δ[A369850(n+1)]` -/
def P16471536891967242336.Spec : Prop :=
  ∀ n, P16471536891967242336.a n = A369849 (n + 1)

end A369849

/-! ## A369849.P3393185739768679633

`∑[A017827(5*n)]`
-/

namespace A369849.P3393185739768679633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369849.P3393185739768679633

namespace A369849

/-- `∑[A017827(5*n)]` -/
def P3393185739768679633.Spec : Prop :=
  ∀ n, P3393185739768679633.a n = A369849 (n + 1)

end A369849

/-! ## A369849.P5190463584092294560

`A127839(5*(n+2))`
-/

namespace A369849.P5190463584092294560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (5 * (n + 2))

end

end A369849.P5190463584092294560

namespace A369849

/-- `A127839(5*(n+2))` -/
def P5190463584092294560.Spec : Prop :=
  ∀ n, P5190463584092294560.a n = A369849 (n + 1)

end A369849

/-! ## A369849.P9701716569035448367

`A369850(n+2)-A369850(n+1)`
-/

namespace A369849.P9701716569035448367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369850 (n + 2) - A369850 (n + 1)

end

end A369849.P9701716569035448367

namespace A369849

/-- `A369850(n+2)-A369850(n+1)` -/
def P9701716569035448367.Spec : Prop :=
  ∀ n, P9701716569035448367.a n = A369849 (n + 1)

end A369849

/-! ## A369849.P13903754039969162393

`Δ[Δ[A369851(n+1)]]`
-/

namespace A369849.P13903754039969162393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369849.P13903754039969162393

namespace A369849

/-- `Δ[Δ[A369851(n+1)]]` -/
def P13903754039969162393.Spec : Prop :=
  ∀ n, P13903754039969162393.a n = A369849 (n + 1)

end A369849

/-!
# A369850: Number of compositions of 5*n-2 into parts 4 and 5.

The programs for A369850, the canonical program `A369850.P8670711628136222143` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369850 has offset 1).

The definition of A369850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369850.P9502295747713274272

`A017827(5*(n+1)-2)`
-/

namespace A369850.P9502295747713274272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (5 * (n + 1) - 2)

end

end A369850.P9502295747713274272

namespace A369850

/-- `A017827(5*(n+1)-2)` -/
def P9502295747713274272.Spec : Prop :=
  ∀ n, P9502295747713274272.a n = A369850 (n + 1)

end A369850

/-! ## A369850.P8670711628136222143

`5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369850

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)+a(n-5)` -/
def P8670711628136222143.Spec : Prop :=
  ∀ n, P8670711628136222143.a n = A369850 (n + 1)

theorem P8670711628136222143.correct : P8670711628136222143.Spec := by
  intro n
  simp only [A369850, Nat.add_sub_cancel]

end A369850

/-! ## A369850.P9900015338440745060

`∑[A127839(5*(n+1))]`
-/

namespace A369850.P9900015338440745060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369850.P9900015338440745060

namespace A369850

/-- `∑[A127839(5*(n+1))]` -/
def P9900015338440745060.Spec : Prop :=
  ∀ n, P9900015338440745060.a n = A369850 (n + 1)

end A369850

/-! ## A369850.P14110976579083457864

`A127839(A016897(n+1))`
-/

namespace A369850.P14110976579083457864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (A016897 (n + 1)).toNat

end

end A369850.P14110976579083457864

namespace A369850

/-- `A127839(A016897(n+1))` -/
def P14110976579083457864.Spec : Prop :=
  ∀ n, P14110976579083457864.a n = A369850 (n + 1)

end A369850

/-! ## A369850.P13090861507959119782

`A127839(A016885(n+1)+1)`
-/

namespace A369850.P13090861507959119782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (A016885 (n + 1) + 1).toNat

end

end A369850.P13090861507959119782

namespace A369850

/-- `A127839(A016885(n+1)+1)` -/
def P13090861507959119782.Spec : Prop :=
  ∀ n, P13090861507959119782.a n = A369850 (n + 1)

end A369850

/-! ## A369850.P3760448816239237331

`Δ[A369851(n+1)]`
-/

namespace A369850.P3760448816239237331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369850.P3760448816239237331

namespace A369850

/-- `Δ[A369851(n+1)]` -/
def P3760448816239237331.Spec : Prop :=
  ∀ n, P3760448816239237331.a n = A369850 (n + 1)

end A369850

/-! ## A369850.P15608412624079866078

`Δ[A017827(A016873(n))]`
-/

namespace A369850.P15608412624079866078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A016873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369850.P15608412624079866078

namespace A369850

/-- `Δ[A017827(A016873(n))]` -/
def P15608412624079866078.Spec : Prop :=
  ∀ n, P15608412624079866078.a n = A369850 (n + 1)

end A369850

/-! ## A369850.P13743047342327612301

`∑[∑[A099131(n)]-A099131(n)]`
-/

namespace A369850.P13743047342327612301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A099131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369850.P13743047342327612301

namespace A369850

/-- `∑[∑[A099131(n)]-A099131(n)]` -/
def P13743047342327612301.Spec : Prop :=
  ∀ n, P13743047342327612301.a n = A369850 (n + 1)

end A369850

/-! ## A369850.P5261900730456906640

`A369851(n+2)-A369851(n+1)`
-/

namespace A369850.P5261900730456906640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369851 (n + 2) - A369851 (n + 1)

end

end A369850.P5261900730456906640

namespace A369850

/-- `A369851(n+2)-A369851(n+1)` -/
def P5261900730456906640.Spec : Prop :=
  ∀ n, P5261900730456906640.a n = A369850 (n + 1)

end A369850

/-! ## A369850.P15829544756439627182

`Δ[Δ[A368475(n+1)]]`
-/

namespace A369850.P15829544756439627182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368475 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369850.P15829544756439627182

namespace A369850

/-- `Δ[Δ[A368475(n+1)]]` -/
def P15829544756439627182.Spec : Prop :=
  ∀ n, P15829544756439627182.a n = A369850 (n + 1)

end A369850

/-!
# A369851: Number of compositions of 5*n-3 into parts 4 and 5.

The programs for A369851, the canonical program `A369851.P4300724213889513205` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369851 has offset 1).

The definition of A369851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A369851.P617577780724024134

`A017827(5*(n+1)-3)`
-/

namespace A369851.P617577780724024134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (5 * (n + 1) - 3)

end

end A369851.P617577780724024134

namespace A369851

/-- `A017827(5*(n+1)-3)` -/
def P617577780724024134.Spec : Prop :=
  ∀ n, P617577780724024134.a n = A369851 (n + 1)

end A369851

/-! ## A369851.P4300724213889513205

`5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=10`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A369851

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)+a(n-5)` -/
def P4300724213889513205.Spec : Prop :=
  ∀ n, P4300724213889513205.a n = A369851 (n + 1)

theorem P4300724213889513205.correct : P4300724213889513205.Spec := by
  intro n
  simp only [A369851, Nat.add_sub_cancel]

end A369851

/-! ## A369851.P13447088517373338202

`A127839(A016885(n+1))`
-/

namespace A369851.P13447088517373338202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (A016885 (n + 1)).toNat

end

end A369851.P13447088517373338202

namespace A369851

/-- `A127839(A016885(n+1))` -/
def P13447088517373338202.Spec : Prop :=
  ∀ n, P13447088517373338202.a n = A369851 (n + 1)

end A369851

/-! ## A369851.P12006072090960688816

`A127839(A016897(n+1)-1)`
-/

namespace A369851.P12006072090960688816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (A016897 (n + 1) - 1).toNat

end

end A369851.P12006072090960688816

namespace A369851

/-- `A127839(A016897(n+1)-1)` -/
def P12006072090960688816.Spec : Prop :=
  ∀ n, P12006072090960688816.a n = A369851 (n + 1)

end A369851

/-! ## A369851.P3135590009005292017

`Δ[A368475(n+1)]`
-/

namespace A369851.P3135590009005292017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369851.P3135590009005292017

namespace A369851

/-- `Δ[A368475(n+1)]` -/
def P3135590009005292017.Spec : Prop :=
  ∀ n, P3135590009005292017.a n = A369851 (n + 1)

end A369851

/-! ## A369851.P341802224719022865

`Δ[A017827(A016813(n)+n)]`
-/

namespace A369851.P341802224719022865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 (A016813 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369851.P341802224719022865

namespace A369851

/-- `Δ[A017827(A016813(n)+n)]` -/
def P341802224719022865.Spec : Prop :=
  ∀ n, P341802224719022865.a n = A369851 (n + 1)

end A369851

/-! ## A369851.P11522929096035530760

`A368475(n+2)-A368475(n+1)`
-/

namespace A369851.P11522929096035530760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368475 (n + 2) - A368475 (n + 1)

end

end A369851.P11522929096035530760

namespace A369851

/-- `A368475(n+2)-A368475(n+1)` -/
def P11522929096035530760.Spec : Prop :=
  ∀ n, P11522929096035530760.a n = A369851 (n + 1)

end A369851

/-! ## A369851.P16648331488172044390

`Δ[Δ[A099131(n)]]`
-/

namespace A369851.P16648331488172044390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099131 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A369851.P16648331488172044390

namespace A369851

/-- `Δ[Δ[A099131(n)]]` -/
def P16648331488172044390.Spec : Prop :=
  ∀ n, P16648331488172044390.a n = A369851 (n + 1)

end A369851

/-!
# A369852: a(1)=1, a(2)=2; thereafter, any two indices n with different a(n) values reach distinct values by a single jump, where jumps are allowed from location i to i+a(i).

The programs for A369852, there is no canonical definition to state claims against.
-/

/-! ## A369852.P11323828927482302122

`gcd(round(n/2)+1, A048967(A001333(n)))`
-/

namespace A369852.P11323828927482302122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1) (A048967 (A001333 n).toNat)

end

end A369852.P11323828927482302122

/-! ## A369852.P10355339545813589063

`gcd(A047409(n+3), A180199(A016969(n)))`
-/

namespace A369852.P10355339545813589063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047409 (n + 3)) (A180199 (A016969 n).toNat)

end

end A369852.P10355339545813589063

/-! ## A369852.P9216097539928549882

`gcd(A004526(n+3), A215461(A085897(n)))`
-/

namespace A369852.P9216097539928549882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (n + 3)) (A215461 (A085897 n).toNat)

end

end A369852.P9216097539928549882

/-! ## A369852.P16442390881689696012

`gcd(A000120(A288652(n)), A037229(n+3))`
-/

namespace A369852.P16442390881689696012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A288652 n).toNat) (A037229 (n + 3))

end

end A369852.P16442390881689696012

/-! ## A369852.P7775225058529736150

`gcd(A000217(n+2), A005574(A128660(n+1)))`
-/

namespace A369852.P7775225058529736150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (n + 2)) (A005574 (A128660 (n + 1)).toNat)

end

end A369852.P7775225058529736150

/-!
# A369853: a(n) = number of subsets of {1,2,...,n} that contain more nonprimes than primes.

The programs for A369853, there is no canonical definition to state claims against.
-/

/-! ## A369853.P9547480172319609032

`A369781(n)-A369854(n)`
-/

namespace A369853.P9547480172319609032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369781 n - A369854 n

end

end A369853.P9547480172319609032

/-! ## A369853.P14149738810998539905

`A369781(n)+1-A037031(n)`
-/

namespace A369853.P14149738810998539905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369781 n + 1 - A037031 n

end

end A369853.P14149738810998539905

/-! ## A369853.P12158618525593995791

`A000079(n)-(A369780(n)+1)-A369854(n)`
-/

namespace A369853.P12158618525593995791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A369780 n + 1) - A369854 n

end

end A369853.P12158618525593995791

/-! ## A369853.P17345804466689633974

`A369781(n)-A070198(n)%A037031(n)`
-/

namespace A369853.P17345804466689633974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369781 n - Int.tmod (A070198 n) (A037031 n)

end

end A369853.P17345804466689633974

/-! ## A369853.P16105043609549148253

`A369781(n)-A023443(C(n, A230980(n)))`
-/

namespace A369853.P16105043609549148253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369781 n - A023443 (Nat.choose n (A230980 n).toNat)

end

end A369853.P16105043609549148253

/-!
# A369854: a(n) = number of nonempty subsets S of {1,2,...,n} such that (number of nonprimes in S) = (number of primes in S).

The programs for A369854, the canonical program `A369854.P4226813083870044623` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369854 has offset 0).

The definition of A369854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369854.P4226813083870044623

`A037031(n)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A369854

/-- `A037031(n)-1` -/
def P4226813083870044623.Spec : Prop :=
  ∀ n, P4226813083870044623.a n = A369854 n

theorem P4226813083870044623.correct : P4226813083870044623.Spec := by
  intro n
  simp only [A369854]

end A369854

/-! ## A369854.P7274109763971988902

`A369781(n)-A369853(n)`
-/

namespace A369854.P7274109763971988902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369781 n - A369853 n

end

end A369854.P7274109763971988902

namespace A369854

/-- `A369781(n)-A369853(n)` -/
def P7274109763971988902.Spec : Prop :=
  ∀ n, P7274109763971988902.a n = A369854 n

end A369854

/-! ## A369854.P3238358404593825582

`C(n, ∑[∑{p}[n, C(#, n)]])-1`
-/

namespace A369854.P3238358404593825582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A369854.P3238358404593825582

namespace A369854

/-- `C(n, ∑[∑{p}[n, C(#, n)]])-1` -/
def P3238358404593825582.Spec : Prop :=
  ∀ n, P3238358404593825582.a n = A369854 n

end A369854

/-! ## A369854.P2772755901155655390

`C(n, A230980(n))-1`
-/

namespace A369854.P2772755901155655390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A230980 n).toNat : ℤ) - 1

end

end A369854.P2772755901155655390

namespace A369854

/-- `C(n, A230980(n))-1` -/
def P2772755901155655390.Spec : Prop :=
  ∀ n, P2772755901155655390.a n = A369854 n

end A369854

/-! ## A369854.P12839683577807884932

`A070198(n)%A037031(n)`
-/

namespace A369854.P12839683577807884932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A037031 n)

end

end A369854.P12839683577807884932

namespace A369854

/-- `A070198(n)%A037031(n)` -/
def P12839683577807884932.Spec : Prop :=
  ∀ n, P12839683577807884932.a n = A369854 n

end A369854

/-! ## A369854.P18305734014679344259

`A079782(n+1)%A037031(n)`
-/

namespace A369854.P18305734014679344259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A037031 n)

end

end A369854.P18305734014679344259

namespace A369854

/-- `A079782(n+1)%A037031(n)` -/
def P18305734014679344259.Spec : Prop :=
  ∀ n, P18305734014679344259.a n = A369854 n

end A369854

/-! ## A369854.P14248824746681243515

`A083685(n+1)%A037031(n)`
-/

namespace A369854.P14248824746681243515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A037031 n)

end

end A369854.P14248824746681243515

namespace A369854

/-- `A083685(n+1)%A037031(n)` -/
def P14248824746681243515.Spec : Prop :=
  ∀ n, P14248824746681243515.a n = A369854 n

end A369854

/-! ## A369854.P14928201585065574493

`A121934(n+1)%A037031(n)`
-/

namespace A369854.P14928201585065574493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A037031 n)

end

end A369854.P14928201585065574493

namespace A369854

/-- `A121934(n+1)%A037031(n)` -/
def P14928201585065574493.Spec : Prop :=
  ∀ n, P14928201585065574493.a n = A369854 n

end A369854

/-!
# A369855: a(n) is the smallest error in trying to solve n^5 = x^5 + y^5: for each n from 2 on, find positive integers x and y, x <= y < n such that |n^5 - x^5 - y^5| is minimal and let a(n) = n^5 - x^5 - y^5. In case of a tie, choose the solution with smallest y.

The programs for A369855, there is no canonical definition to state claims against.
-/

/-! ## A369855.P16644033002073573503

`A028310(Δ[(n+1)^5])-(n+1)^5`
-/

namespace A369855.P16644033002073573503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((n + 1) ^ 5 : ℤ)

end

end A369855.P16644033002073573503

/-!
# A369856: Inverse permutation of A371113.

The programs for A369856, there is no canonical definition to state claims against.
-/

/-! ## A369856.P2567768649281852627

`A246443(n+1)%A262211(A038618(2*n+1))`
-/

namespace A369856.P2567768649281852627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246443 (n + 1)) (A262211 (A038618 (2 * n + 1)).toNat)

end

end A369856.P2567768649281852627

/-! ## A369856.P13549506198268977807

`A246443(n+1)%A334560(A059274(n))`
-/

namespace A369856.P13549506198268977807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246443 (n + 1)) (A334560 (A059274 n).toNat)

end

end A369856.P13549506198268977807

/-! ## A369856.P440445786546439771

`A244325(3*(n+1))%A000040(A209593(n+1))`
-/

namespace A369856.P440445786546439771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244325 (3 * (n + 1))) (A000040 (A209593 (n + 1)).toNat)

end

end A369856.P440445786546439771

/-!
# A369865: a(n) = n * Sum_{p|n, p prime} mu(n/p)^2 / p.

The programs for A369865, the canonical program `A369865.P17682209453494408525` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369865 has offset 1).

The definition of A369865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369865.P17682209453494408525

`∑{d}[n+1, A048250(#)*A143519((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369865

/-- `∑{d}[n+1, A048250(#)*A143519((n+1)/#)]` -/
def P17682209453494408525.Spec : Prop :=
  ∀ n, P17682209453494408525.a n = A369865 (n + 1)

theorem P17682209453494408525.correct : P17682209453494408525.Spec := by
  intro n
  simp only [A369865, Nat.add_sub_cancel]

end A369865

/-! ## A369865.P6698275444525327584

`∑{p}[n+1, ceil(n/#)]-A241470(2^∑{e}[n+1, #])`
-/

namespace A369865.P6698275444525327584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ - A241470 (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A369865.P6698275444525327584

namespace A369865

/-- `∑{p}[n+1, ceil(n/#)]-A241470(2^∑{e}[n+1, #])` -/
def P6698275444525327584.Spec : Prop :=
  ∀ n, P6698275444525327584.a n = A369865 (n + 1)

end A369865

/-! ## A369865.P5743336511980157572

`A069359(n+1)-A279415(A011782(n))`
-/

namespace A369865.P5743336511980157572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) - A279415 (A011782 n).toNat

end

end A369865.P5743336511980157572

namespace A369865

/-- `A069359(n+1)-A279415(A011782(n))` -/
def P5743336511980157572.Spec : Prop :=
  ∀ n, P5743336511980157572.a n = A369865 (n + 1)

end A369865

/-! ## A369865.P5961796453529510723

`A345355(n+1)-A179769(A179777(3*n+4))`
-/

namespace A369865.P5961796453529510723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345355 (n + 1) - A179769 (A179777 (3 * n + 4)).toNat

end

end A369865.P5961796453529510723

namespace A369865

/-- `A345355(n+1)-A179769(A179777(3*n+4))` -/
def P5961796453529510723.Spec : Prop :=
  ∀ n, P5961796453529510723.a n = A369865 (n + 1)

end A369865

/-!
# A369867: a(n) = n * Sum_{p|n, p prime} prime(n/p) / p.

The programs for A369867, the canonical program `A369867.P8493917405294498414` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369867 has offset 1).

The definition of A369867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369867.P8493917405294498414

`∑{p}[n+1, A033286((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A369867

/-- `∑{p}[n+1, A033286((n+1)/#)]` -/
def P8493917405294498414.Spec : Prop :=
  ∀ n, P8493917405294498414.a n = A369867 (n + 1)

theorem P8493917405294498414.correct : P8493917405294498414.Spec := by
  intro n
  simp only [A369867, Nat.add_sub_cancel]

end A369867

/-! ## A369867.P797832542364022063

`∑{d}[n+1, A010051(#)*A033286((n+1)/#)]`
-/

namespace A369867.P797832542364022063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A033286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369867.P797832542364022063

namespace A369867

/-- `∑{d}[n+1, A010051(#)*A033286((n+1)/#)]` -/
def P797832542364022063.Spec : Prop :=
  ∀ n, P797832542364022063.a n = A369867 (n + 1)

end A369867

/-! ## A369867.P12189588222648767317

`∑{d}[n+1, A061150(#)*A143519((n+1)/#)]`
-/

namespace A369867.P12189588222648767317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061150 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369867.P12189588222648767317

namespace A369867

/-- `∑{d}[n+1, A061150(#)*A143519((n+1)/#)]` -/
def P12189588222648767317.Spec : Prop :=
  ∀ n, P12189588222648767317.a n = A369867 (n + 1)

end A369867

/-!
# A369869: a(n) = n * Sum_{p|n, p prime} pi(n/p) / p.

The programs for A369869, the canonical program `A369869.P1984379103473463166` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369869 has offset 1).

The definition of A369869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369869.P1984379103473463166

`∑{d}[n+1, A010051(#)*A128913((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A369869

/-- `∑{d}[n+1, A010051(#)*A128913((n+1)/#)]` -/
def P1984379103473463166.Spec : Prop :=
  ∀ n, P1984379103473463166.a n = A369869 (n + 1)

theorem P1984379103473463166.correct : P1984379103473463166.Spec := by
  intro n
  simp only [A369869, Nat.add_sub_cancel]

end A369869

/-!
# A369870: Cumulative sum of digits of base-2 representation of Euler number "e".

The programs for A369870, the canonical program `A369870.P16679001750172927295` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369870 has offset 1).

The definition of A369870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369870.P16679001750172927295

`∑[A004593(n+2)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A369870

/-- `∑[A004593(n+2)]` -/
def P16679001750172927295.Spec : Prop :=
  ∀ n, P16679001750172927295.a n = A369870 (n + 1)

theorem P16679001750172927295.correct : P16679001750172927295.Spec := by
  intro n
  simp only [A369870, Nat.add_sub_cancel]

end A369870

/-! ## A369870.P6808873672765102608

`(A369900(n+1)+n+1)/2`
-/

namespace A369870.P6808873672765102608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369900 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A369870.P6808873672765102608

namespace A369870

/-- `(A369900(n+1)+n+1)/2` -/
def P6808873672765102608.Spec : Prop :=
  ∀ n, P6808873672765102608.a n = (A369870 (n + 1) : ℚ)

end A369870

/-! ## A369870.P11941413955327634018

`∑[and(2, A027437(n))/2]`
-/

namespace A369870.P11941413955327634018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A027437 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369870.P11941413955327634018

namespace A369870

/-- `∑[and(2, A027437(n))/2]` -/
def P11941413955327634018.Spec : Prop :=
  ∀ n, P11941413955327634018.a n = (A369870 (n + 1) : ℚ)

end A369870

/-! ## A369870.P7240281344962524568

`∑[A000122(and(2, -A293337(n)))]`
-/

namespace A369870.P7240281344962524568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.land 2 (-A293337 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369870.P7240281344962524568

namespace A369870

/-- `∑[A000122(and(2, -A293337(n)))]` -/
def P7240281344962524568.Spec : Prop :=
  ∀ n, P7240281344962524568.a n = A369870 (n + 1)

end A369870

/-! ## A369870.P2717598539275764014

`∑[A002530(and(2, A293337(n)-1))]`
-/

namespace A369870.P2717598539275764014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (Int.land 2 (A293337 n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A369870.P2717598539275764014

namespace A369870

/-- `∑[A002530(and(2, A293337(n)-1))]` -/
def P2717598539275764014.Spec : Prop :=
  ∀ n, P2717598539275764014.a n = A369870 (n + 1)

end A369870

/-!
# A369871: a(n) = least prime factor of A024411(n).

The programs for A369871, there is no canonical definition to state claims against.
-/

/-! ## A369871.P10146333462421541519

`A020639(A024411(n+1))`
-/

namespace A369871.P10146333462421541519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024411 (n + 1)).toNat

end

end A369871.P10146333462421541519

/-! ## A369871.P8029017898790046896

`A063918(A024411(n+1)-A318930(2*n+1)+1)`
-/

namespace A369871.P8029017898790046896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (A024411 (n + 1) - A318930 (2 * n + 1) + 1).toNat

end

end A369871.P8029017898790046896

/-! ## A369871.P6596231641492527591

`A063918(A024411(n+1)²)`
-/

namespace A369871.P6596231641492527591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (A024411 (n + 1) ^ 2).toNat

end

end A369871.P6596231641492527591

/-! ## A369871.P12031643492319026163

`A046951(A218600(n+1))+1`
-/

namespace A369871.P12031643492319026163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A218600 (n + 1)).toNat + 1

end

end A369871.P12031643492319026163

/-! ## A369871.P14116266802872192433

`A020639(A112817(n+3)*A134612(n+1))`
-/

namespace A369871.P14116266802872192433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A112817 (n + 3) * A134612 (n + 1)).toNat

end

end A369871.P14116266802872192433

/-!
# A369873: a(n) is the constant term in the expansion of Product_{d|n} (x^d + 1/x^d).

The programs for A369873, there is no canonical definition to state claims against.
-/

/-! ## A369873.P12082827968200907001

`2*A083206(n+1)`
-/

namespace A369873.P12082827968200907001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083206 (n + 1)

end

end A369873.P12082827968200907001

/-! ## A369873.P1505130600701237899

`A083206(gcd(n+1, ∏{p}[n+1, (n+1)/#]))+A083206(n+1)`
-/

namespace A369873.P1505130600701237899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))) + A083206 (n + 1)

end

end A369873.P1505130600701237899

/-! ## A369873.P10965041575739027156

`A083206(A000027(n+1))+A083206(n+1)`
-/

namespace A369873.P10965041575739027156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A000027 (n + 1)).toNat + A083206 (n + 1)

end

end A369873.P10965041575739027156

/-! ## A369873.P18093597645174726506

`A083206(n+1)/2^A163805(A016813(n))`
-/

namespace A369873.P18093597645174726506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083206 (n + 1) : ℚ) / (2 : ℚ) ^ (A163805 (A016813 n).toNat : ℤ)

end

end A369873.P18093597645174726506

/-! ## A369873.P2989049055377520133

`A005843(A083206(n+1))`
-/

namespace A369873.P2989049055377520133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A083206 (n + 1)).toNat

end

end A369873.P2989049055377520133

/-! ## A369873.P15760091011209485938

`A051903(4^A083206(n+1))`
-/

namespace A369873.P15760091011209485938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A083206 (n + 1) : ℤ))).toNat

end

end A369873.P15760091011209485938

/-! ## A369873.P12728446050689411246

`A001222(A000079(A083206(n+1))²)`
-/

namespace A369873.P12728446050689411246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 (A083206 (n + 1)).toNat ^ 2).toNat

end

end A369873.P12728446050689411246

/-!
# A369878: Array read by antidiagonals: T(n,k) is the number of length n necklaces using at most k colors in which the convex hull of a set of beads of any color A cannot be transformed by rotation into the convex hull of a set of beads of any other color B (n >= 1, k >= 1).

The programs for A369878, there is no canonical definition to state claims against.
-/

/-! ## A369878.P16905254258925039349

`A321391(lt[A194711(n+1), A321391(n)])`
-/

namespace A369878.P16905254258925039349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369878.P16905254258925039349

/-! ## A369878.P8480671732766246342

`A010888(A245062(n+1))^A184848(n+1)`
-/

namespace A369878.P8480671732766246342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010888 (A245062 (n + 1)).toNat : ℚ) ^ (A184848 (n + 1) : ℤ)

end

end A369878.P8480671732766246342

/-! ## A369878.P4277101056879632551

`A087179(A303555(n+1))^A184848(n+1)`
-/

namespace A369878.P4277101056879632551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087179 (A303555 (n + 1)).toNat : ℚ) ^ (A184848 (n + 1) : ℤ)

end

end A369878.P4277101056879632551

/-! ## A369878.P9218876738282463361

`A004736(n+1)^A277539(A184720(n+1))`
-/

namespace A369878.P9218876738282463361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) ^ (A277539 (A184720 (n + 1)).toNat : ℤ)

end

end A369878.P9218876738282463361

/-! ## A369878.P15500382150500005137

`A321391(lt[A138731(3*n+2), A157149(n)])`
-/

namespace A369878.P15500382150500005137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138731 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321391 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369878.P15500382150500005137

/-!
# A369888: Sum of products of cubes of parts , counted without multiplicity, in all partitions of n.

The programs for A369888, there is no canonical definition to state claims against.
-/

/-! ## A369888.P7231546768383728387

`∏[dr(A367459(n+3))]`
-/

namespace A369888.P7231546768383728387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A367459 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A369888.P7231546768383728387

/-!
# A369889: The sum of squarefree divisors of the cubefree numbers.

The programs for A369889, the canonical program `A369889.P3040492947822450392` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369889 has offset 1).

The definition of A369889 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A369889.P3040492947822450392

`A048250(A004709(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A369889

/-- `A048250(A004709(n+1))` -/
def P3040492947822450392.Spec : Prop :=
  ∀ n, P3040492947822450392.a n = A369889 (n + 1)

theorem P3040492947822450392.correct : P3040492947822450392.Spec := by
  intro n
  simp only [A369889, Nat.add_sub_cancel]

end A369889

/-! ## A369889.P14942159502497903675

`∑{d}[A382888(n+1), #]`
-/

namespace A369889.P14942159502497903675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A369889.P14942159502497903675

namespace A369889

/-- `∑{d}[A382888(n+1), #]` -/
def P14942159502497903675.Spec : Prop :=
  ∀ n, (P14942159502497903675.a n : ℤ) = A369889 (n + 1)

end A369889

/-! ## A369889.P3283207102531864187

`A000203(∏{p}[A004709(n+1), #])`
-/

namespace A369889.P3283207102531864187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A369889.P3283207102531864187

namespace A369889

/-- `A000203(∏{p}[A004709(n+1), #])` -/
def P3283207102531864187.Spec : Prop :=
  ∀ n, P3283207102531864187.a n = A369889 (n + 1)

end A369889

/-! ## A369889.P8633800661043932315

`∏{p}[record[A355261(n+1)], #+1]`
-/

namespace A369889.P8633800661043932315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A369889.P8633800661043932315

namespace A369889

/-- `∏{p}[record[A355261(n+1)], #+1]` -/
def P8633800661043932315.Spec : Prop :=
  ∀ n, (P8633800661043932315.a n : ℤ) = A369889 (n + 1)

end A369889

/-! ## A369889.P15062098415209433358

`A000113(A382888(n+1))`
-/

namespace A369889.P15062098415209433358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A382888 (n + 1)).toNat

end

end A369889.P15062098415209433358

namespace A369889

/-- `A000113(A382888(n+1))` -/
def P15062098415209433358.Spec : Prop :=
  ∀ n, P15062098415209433358.a n = A369889 (n + 1)

end A369889

/-! ## A369889.P5695811261797385487

`A048250(record[A007948(n+1)])`
-/

namespace A369889.P5695811261797385487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A369889.P5695811261797385487

namespace A369889

/-- `A048250(record[A007948(n+1)])` -/
def P5695811261797385487.Spec : Prop :=
  ∀ n, P5695811261797385487.a n = A369889 (n + 1)

end A369889

/-! ## A369889.P3257213613370250282

`A034448(∏{p}[A004709(n+1), #])`
-/

namespace A369889.P3257213613370250282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A369889.P3257213613370250282

namespace A369889

/-- `A034448(∏{p}[A004709(n+1), #])` -/
def P3257213613370250282.Spec : Prop :=
  ∀ n, P3257213613370250282.a n = A369889 (n + 1)

end A369889

/-! ## A369889.P12684658758735015322

`A366764(A004709(2*n+1-n))`
-/

namespace A369889.P12684658758735015322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366764 (A004709 (2 * n + 1 - n)).toNat

end

end A369889.P12684658758735015322

namespace A369889

/-- `A366764(A004709(2*n+1-n))` -/
def P12684658758735015322.Spec : Prop :=
  ∀ n, P12684658758735015322.a n = A369889 (n + 1)

end A369889

/-! ## A369889.P17302643540022426964

`A000203(A007947(A004709(n+1)²))`
-/

namespace A369889.P17302643540022426964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007947 (A004709 (n + 1) ^ 2).toNat).toNat

end

end A369889.P17302643540022426964

namespace A369889

/-- `A000203(A007947(A004709(n+1)²))` -/
def P17302643540022426964.Spec : Prop :=
  ∀ n, P17302643540022426964.a n = A369889 (n + 1)

end A369889

/-! ## A369889.P4430595287877584106

`A033634(A277802(n+1))`
-/

namespace A369889.P4430595287877584106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A277802 (n + 1)).toNat

end

end A369889.P4430595287877584106

namespace A369889

/-- `A033634(A277802(n+1))` -/
def P4430595287877584106.Spec : Prop :=
  ∀ n, P4430595287877584106.a n = A369889 (n + 1)

end A369889

/-!
# A369890: The number of divisors of the largest divisor of n whose exponents in its prime factorization are all powers of 2.

The programs for A369890, there is no canonical definition to state claims against.
-/

/-! ## A369890.P5174747250969476028

`A000005(A353897(n+1))`
-/

namespace A369890.P5174747250969476028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A353897 (n + 1)).toNat

end

end A369890.P5174747250969476028

/-! ## A369890.P11454801737383565191

`∏{e}[A353897(n-log2(1/2)), #+1]`
-/

namespace A369890.P11454801737383565191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A369890.P11454801737383565191

/-! ## A369890.P3013344229052651006

`A367170(A353897(2*n+1-n))`
-/

namespace A369890.P3013344229052651006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A353897 (2 * n + 1 - n)).toNat

end

end A369890.P3013344229052651006

/-! ## A369890.P1096353468700783001

`A000027(∏{e}[A353897(n+1), #+1])`
-/

namespace A369890.P1096353468700783001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A369890.P1096353468700783001

/-! ## A369890.P9096987297932110601

`A020725(∏{e}[A353897(n+1), #+1])-1`
-/

namespace A369890.P9096987297932110601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) - 1

end

end A369890.P9096987297932110601

/-! ## A369890.P15616769280346454812

`A048105(A353897(n+1))+A034444(n+1)`
-/

namespace A369890.P15616769280346454812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A353897 (n + 1)).toNat + A034444 (n + 1)

end

end A369890.P15616769280346454812

/-! ## A369890.P6838104136979545850

`A322483(A372329(n+1))`
-/

namespace A369890.P6838104136979545850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A372329 (n + 1)).toNat

end

end A369890.P6838104136979545850

/-! ## A369890.P17105790304947312748

`A061389(A278254(n+1))`
-/

namespace A369890.P17105790304947312748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A278254 (n + 1)).toNat

end

end A369890.P17105790304947312748

/-! ## A369890.P11567383614482502484

`A061389(A170826(n+1))`
-/

namespace A369890.P11567383614482502484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A170826 (n + 1)).toNat

end

end A369890.P11567383614482502484

/-! ## A369890.P11361913099111622179

`A061389(A103390(n+2))`
-/

namespace A369890.P11361913099111622179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A103390 (n + 2)).toNat

end

end A369890.P11361913099111622179

/-! ## A369890.P8284595486841482656

`A061389((n+1)²)`
-/

namespace A369890.P8284595486841482656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 ((n + 1) ^ 2)

end

end A369890.P8284595486841482656

/-! ## A369890.P12469015495353728546

`A322483(A372379((n+1)²))`
-/

namespace A369890.P12469015495353728546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A372379 ((n + 1) ^ 2)).toNat

end

end A369890.P12469015495353728546

/-! ## A369890.P7528393744423007589

`A046100(A046100(A061389((n+1)*(n+1))))`
-/

namespace A369890.P7528393744423007589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (A046100 (A061389 ((n + 1) * (n + 1))).toNat).toNat

end

end A369890.P7528393744423007589

/-!
# A369893: a(n) = Sum_{p|n, p prime} n^tau(n/p).

The programs for A369893, there is no canonical definition to state claims against.
-/

/-! ## A369893.P6030006697230666194

`A001221(n+1)*A001221(A077659(n+1))*A176029(n+1)`
-/

namespace A369893.P6030006697230666194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A001221 (A077659 (n + 1)).toNat * A176029 (n + 1)

end

end A369893.P6030006697230666194

/-! ## A369893.P14529846195945406214

`A016003(A000244(n))*A369908(n+1)`
-/

namespace A369893.P14529846195945406214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016003 (A000244 n).toNat * A369908 (n + 1)

end

end A369893.P14529846195945406214

/-! ## A369893.P916641472550768589

`A176029(n+1)*A225152(A071404(n+2))`
-/

namespace A369893.P916641472550768589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176029 (n + 1) * A225152 (A071404 (n + 2)).toNat

end

end A369893.P916641472550768589

/-! ## A369893.P8009509872839826322

`A001221(n+1)^A228169(2*(n+1))*A176029(n+1)`
-/

namespace A369893.P8009509872839826322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) ^ (A228169 (2 * (n + 1)) : ℤ) * (A176029 (n + 1) : ℚ)

end

end A369893.P8009509872839826322

/-! ## A369893.P12123286687383333716

`A001221(n+1)*A176029(n+1)*A107078(A334322(n+1))`
-/

namespace A369893.P12123286687383333716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A176029 (n + 1) * A107078 (A334322 (n + 1)).toNat

end

end A369893.P12123286687383333716

/-!
# A369894: a(n) = n * Sum_{p|n, p prime} tau(n/p) / p.

The programs for A369894, the canonical program `A369894.P6022834030566867297` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A369894 has offset 1).

The definition of A369894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A369894.P6022834030566867297

`∑{d}[n+1, A347134(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A369894

/-- `∑{d}[n+1, A347134(#)]` -/
def P6022834030566867297.Spec : Prop :=
  ∀ n, P6022834030566867297.a n = A369894 (n + 1)

theorem P6022834030566867297.correct : P6022834030566867297.Spec := by
  intro n
  simp only [A369894, Nat.add_sub_cancel]

end A369894

/-! ## A369894.P2146440806011899570

`∑{d}[n+1, #*A069359((n+1)/#)]`
-/

namespace A369894.P2146440806011899570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P2146440806011899570

namespace A369894

/-- `∑{d}[n+1, #*A069359((n+1)/#)]` -/
def P2146440806011899570.Spec : Prop :=
  ∀ n, P2146440806011899570.a n = A369894 (n + 1)

end A369894

/-! ## A369894.P16306447378296219642

`∑{d}[n+1, A001221(#)*A018804((n+1)/#)]`
-/

namespace A369894.P16306447378296219642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P16306447378296219642

namespace A369894

/-- `∑{d}[n+1, A001221(#)*A018804((n+1)/#)]` -/
def P16306447378296219642.Spec : Prop :=
  ∀ n, P16306447378296219642.a n = A369894 (n + 1)

end A369894

/-! ## A369894.P14683003848462814410

`∑{d}[n+1, A010051(#)*A038040((n+1)/#)]`
-/

namespace A369894.P14683003848462814410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P14683003848462814410

namespace A369894

/-- `∑{d}[n+1, A010051(#)*A038040((n+1)/#)]` -/
def P14683003848462814410.Spec : Prop :=
  ∀ n, P14683003848462814410.a n = A369894 (n + 1)

end A369894

/-! ## A369894.P5307048236638401350

`∑{d}[n+1, A029935(#)*A062799((n+1)/#)]`
-/

namespace A369894.P5307048236638401350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P5307048236638401350

namespace A369894

/-- `∑{d}[n+1, A029935(#)*A062799((n+1)/#)]` -/
def P5307048236638401350.Spec : Prop :=
  ∀ n, P5307048236638401350.a n = A369894 (n + 1)

end A369894

/-! ## A369894.P16413944333532216454

`∑{d}[n+1, A000203(#)*A117494((n+1)/#)]`
-/

namespace A369894.P16413944333532216454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P16413944333532216454

namespace A369894

/-- `∑{d}[n+1, A000203(#)*A117494((n+1)/#)]` -/
def P16413944333532216454.Spec : Prop :=
  ∀ n, P16413944333532216454.a n = A369894 (n + 1)

end A369894

/-! ## A369894.P16540039535160284247

`∑{d}[n+1, A060640(#)*A143519((n+1)/#)]`
-/

namespace A369894.P16540039535160284247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P16540039535160284247

namespace A369894

/-- `∑{d}[n+1, A060640(#)*A143519((n+1)/#)]` -/
def P16540039535160284247.Spec : Prop :=
  ∀ n, P16540039535160284247.a n = A369894 (n + 1)

end A369894

/-! ## A369894.P15538419195060227124

`∑{d}[n+1, A000010(#)*A323599((n+1)/#)]`
-/

namespace A369894.P15538419195060227124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P15538419195060227124

namespace A369894

/-- `∑{d}[n+1, A000010(#)*A323599((n+1)/#)]` -/
def P15538419195060227124.Spec : Prop :=
  ∀ n, P15538419195060227124.a n = A369894 (n + 1)

end A369894

/-! ## A369894.P18387441417255451745

`∑{d}[n+1, A008836(#)*A347135((n+1)/#)]`
-/

namespace A369894.P18387441417255451745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A347135 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P18387441417255451745

namespace A369894

/-- `∑{d}[n+1, A008836(#)*A347135((n+1)/#)]` -/
def P18387441417255451745.Spec : Prop :=
  ∀ n, P18387441417255451745.a n = A369894 (n + 1)

end A369894

/-! ## A369894.P11374954394057188571

`∑{d}[n+1, A347956(#)*A349432((n+1)/#)]`
-/

namespace A369894.P11374954394057188571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347956 d * A349432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369894.P11374954394057188571

namespace A369894

/-- `∑{d}[n+1, A347956(#)*A349432((n+1)/#)]` -/
def P11374954394057188571.Spec : Prop :=
  ∀ n, P11374954394057188571.a n = A369894 (n + 1)

end A369894

/-!
# A369895: Irregular triangle of iteration steps of A063919 until the end of the terminal cycle is reached, read by rows.

The programs for A369895, there is no canonical definition to state claims against.
-/

/-! ## A369895.P13568292406672691220

`A291711(A073958(n+1))`
-/

namespace A369895.P13568292406672691220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291711 (A073958 (n + 1)).toNat

end

end A369895.P13568292406672691220

/-! ## A369895.P11344712858223323049

`A158416(A167520(n+1)%A105324(n+4))`
-/

namespace A369895.P11344712858223323049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (Int.tmod (A167520 (n + 1)) (A105324 (n + 4))).toNat

end

end A369895.P11344712858223323049

/-! ## A369895.P3590303485191016973

`A152271(lt[A354105(3*n+2), A198661(3*n+1)])`
-/

namespace A369895.P3590303485191016973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354105 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198661 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369895.P3590303485191016973

/-! ## A369895.P3798528287153464266

`Δ[lt[A133380(n+1), A000005(n+1)]]`
-/

namespace A369895.P3798528287153464266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133380 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A369895.P3798528287153464266

/-! ## A369895.P11754808067122326094

`A152271(A353866(n+2)%A100055(n+1))`
-/

namespace A369895.P11754808067122326094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (Int.tmod (A353866 (n + 2)) (A100055 (n + 1))).toNat

end

end A369895.P11754808067122326094

/-!
# A369896: Positive integers k such that k = a/(b+c) + b/(a+c) + c/(a+b) for some positive integers a, b and c.

The programs for A369896, there is no canonical definition to state claims against.
-/

/-! ## A369896.P14948379512331748004

`eq[A002654(A157931(n+1)), A111757(n+1)]`
-/

namespace A369896.P14948379512331748004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A157931 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369896.P14948379512331748004

/-! ## A369896.P4309247534204337093

`eq[A046205(n+1), A333382(A367585(n+1))]`
-/

namespace A369896.P4309247534204337093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A367585 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A369896.P4309247534204337093

/-! ## A369896.P2643049340368637209

`A066047(n+1)-A093555(A066024(3*n+5))`
-/

namespace A369896.P2643049340368637209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066047 (n + 1) - A093555 (A066024 (3 * n + 5)).toNat

end

end A369896.P2643049340368637209

/-! ## A369896.P17935984286695182604

`A005843(lt[A194368(n+5), A096499(3*(n+2))])`
-/

namespace A369896.P17935984286695182604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194368 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096499 (3 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369896.P17935984286695182604

/-! ## A369896.P9789536702712571821

`A325038(lt[A179909(2*(n+2)), A255287(3*n+2)])`
-/

namespace A369896.P9789536702712571821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179909 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255287 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325038 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A369896.P9789536702712571821

