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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A263801: Partial sums of odd double factorials (A001147) with alternating signs.

The programs for A263801, there is no canonical definition to state claims against.
-/

/-! ## A263801.P4374083836932978236

`∑[∏[1-2*n]]`
-/

namespace A263801.P4374083836932978236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263801.P4374083836932978236

/-! ## A263801.P17648489956817145822

`floor(∑[∏[a(n-1)-2]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263801.P17648489956817145822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263801.P17648489956817145822

/-! ## A263801.P13495094348400519365

`ceil(∑[∏[a(n-1)-2]])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A263801.P13495094348400519365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263801.P13495094348400519365

/-! ## A263801.P8101961797718820979

`round(∑[∏[a(n-1)-2]])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A263801.P8101961797718820979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263801.P8101961797718820979

/-! ## A263801.P2209045440825301689

`∏[1-2*n]+a(n-1)` with `a(0)=1`
-/

namespace A263801.P2209045440825301689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A263801.P2209045440825301689

/-! ## A263801.P9882697188583484827

`floor(∑[(1-2*n)*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A263801.P9882697188583484827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (1 - (2 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263801.P9882697188583484827

/-! ## A263801.P8756542104343842677

`∑[(1-2*n)*a(n-1)]/2` with `a(0)=2`
-/

namespace A263801.P8756542104343842677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (1 - (2 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A263801.P8756542104343842677

/-! ## A263801.P3818715747187361104

`2-∑[A096713(n²)]`
-/

namespace A263801.P3818715747187361104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096713 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263801.P3818715747187361104

/-! ## A263801.P571140076472241123

`a(n-1)-A096713(n*n)` with `a(0)=1`
-/

namespace A263801.P571140076472241123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A096713 (n * n)

end

end A263801.P571140076472241123

/-!
# A263803: Number of conjugacy classes of independent sets of permutations of n points, i.e., subsets of the symmetric group of degree n up to relabeling the points with the property that none of the elements in the subset can be generated by the rest of the subset.

The programs for A263803, there is no canonical definition to state claims against.
-/

/-! ## A263803.P3508022755819173542

`n^n+A360615(7^n)+1`
-/

namespace A263803.P3508022755819173542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) + (A360615 (7 ^ n) + 1)

end

end A263803.P3508022755819173542

/-!
# A263804: Triangle read by rows giving successive states of cellular automaton generated by "Rule 157" initiated with a single ON (black) cell.

The programs for A263804, the canonical program `A263804.P1371526510976708710` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263804 has offset 0).

The definition of A263804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263804.P10420392280043380118

`ceil((A000194(n)-sqrt(n))^n)`
-/

namespace A263804.P10420392280043380118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000194 n : ℝ) - Real.sqrt (n : ℝ)) ^ n⌉

end

end A263804.P10420392280043380118

namespace A263804

/-- `ceil((A000194(n)-sqrt(n))^n)` -/
def P10420392280043380118.Spec : Prop :=
  ∀ n, P10420392280043380118.a n = A263804 n

end A263804

/-! ## A263804.P1371526510976708710

`A267687(A020703(n+1)-1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A263804

/-- `A267687(A020703(n+1)-1)` -/
def P1371526510976708710.Spec : Prop :=
  ∀ n, P1371526510976708710.a n = A263804 n

theorem P1371526510976708710.correct : P1371526510976708710.Spec := by
  intro n
  simp only [A263804]

end A263804

/-! ## A263804.P1877169691265831846

`A267006(n*A266974(n+1))`
-/

namespace A263804.P1877169691265831846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 ((n : ℤ) * A266974 (n + 1)).toNat

end

end A263804.P1877169691265831846

namespace A263804

/-- `A267006(n*A266974(n+1))` -/
def P1877169691265831846.Spec : Prop :=
  ∀ n, P1877169691265831846.a n = A263804 n

end A263804

/-! ## A263804.P1173041201576406658

`A267050(n*A266974(n+1))`
-/

namespace A263804.P1173041201576406658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267050 ((n : ℤ) * A266974 (n + 1)).toNat

end

end A263804.P1173041201576406658

namespace A263804

/-- `A267050(n*A266974(n+1))` -/
def P1173041201576406658.Spec : Prop :=
  ∀ n, P1173041201576406658.a n = A263804 n

end A263804

/-! ## A263804.P15524662936893480664

`char[A079813(n+1)+or(n, A079813(n+1))]`
-/

namespace A263804.P15524662936893480664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (n + 1) + Int.lor (n : ℤ) (A079813 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A263804.P15524662936893480664

namespace A263804

/-- `char[A079813(n+1)+or(n, A079813(n+1))]` -/
def P15524662936893480664.Spec : Prop :=
  ∀ n, (P15524662936893480664.a n : ℤ) = A263804 n

end A263804

/-! ## A263804.P1208541928441732829

`A267687(A020703(n+2)*A267687(n))`
-/

namespace A263804.P1208541928441732829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267687 (A020703 (n + 2) * A267687 n).toNat

end

end A263804.P1208541928441732829

namespace A263804

/-- `A267687(A020703(n+2)*A267687(n))` -/
def P1208541928441732829.Spec : Prop :=
  ∀ n, P1208541928441732829.a n = A263804 n

end A263804

/-! ## A263804.P1308694231653551413

`A267687(A020703(n+2))`
-/

namespace A263804.P1308694231653551413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267687 (A020703 (n + 2)).toNat

end

end A263804.P1308694231653551413

namespace A263804

/-- `A267687(A020703(n+2))` -/
def P1308694231653551413.Spec : Prop :=
  ∀ n, P1308694231653551413.a n = A263804 n

end A263804

/-! ## A263804.P1774283373572408951

`A266974(A000037(n+1)*A266974(n+1))`
-/

namespace A263804.P1774283373572408951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 (A000037 (n + 1) * A266974 (n + 1)).toNat

end

end A263804.P1774283373572408951

namespace A263804

/-- `A266974(A000037(n+1)*A266974(n+1))` -/
def P1774283373572408951.Spec : Prop :=
  ∀ n, P1774283373572408951.a n = A263804 n

end A263804

/-! ## A263804.P18057415920694351461

`A266974(A020703(n+2)*A266974(n+1))`
-/

namespace A263804.P18057415920694351461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266974 (A020703 (n + 2) * A266974 (n + 1)).toNat

end

end A263804.P18057415920694351461

namespace A263804

/-- `A266974(A020703(n+2)*A266974(n+1))` -/
def P18057415920694351461.Spec : Prop :=
  ∀ n, P18057415920694351461.a n = A263804 n

end A263804

/-! ## A263804.P10965974592002434518

`A267525(A080037(n))`
-/

namespace A263804.P10965974592002434518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 (A080037 n).toNat

end

end A263804.P10965974592002434518

namespace A263804

/-- `A267525(A080037(n))` -/
def P10965974592002434518.Spec : Prop :=
  ∀ n, P10965974592002434518.a n = A263804 n

end A263804

/-! ## A263804.P13126548017173734319

`A267525(A000267(comp[A000267(n)²])+n+1)`
-/

namespace A263804.P13126548017173734319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 (A000267 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (n + 1 : ℤ)).toNat

end

end A263804.P13126548017173734319

namespace A263804

/-- `A267525(A000267(comp[A000267(n)²])+n+1)` -/
def P13126548017173734319.Spec : Prop :=
  ∀ n, P13126548017173734319.a n = A263804 n

end A263804

/-! ## A263804.P12959325780924340999

`A267525(A265413(n+1))`
-/

namespace A263804.P12959325780924340999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267525 (A265413 (n + 1)).toNat

end

end A263804.P12959325780924340999

namespace A263804

/-- `A267525(A265413(n+1))` -/
def P12959325780924340999.Spec : Prop :=
  ∀ n, P12959325780924340999.a n = A263804 n

end A263804

/-!
# A263805: Binary representation of the n-th iteration of the "Rule 157" elementary cellular automaton starting with a single ON (black) cell.

The programs for A263805, there is no canonical definition to state claims against.
-/

/-! ## A263805.P1486473141826391259

`A287743(comp[2*(n+1)])+A002275(n)`
-/

namespace A263805.P1486473141826391259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287743 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A002275 n

end

end A263805.P1486473141826391259

/-! ## A263805.P5420136563313584571

`A056830(abs(or(1, -n))+n)+A056830(n)`
-/

namespace A263805.P5420136563313584571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (|Int.lor 1 (-(n : ℤ))| + (n : ℤ)).toNat + A056830 n

end

end A263805.P5420136563313584571

/-! ## A263805.P9004263766722038560

`A056830(abs(∑[(-1)^n]-n)+n)+A056830(n)`
-/

namespace A263805.P9004263766722038560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (|∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)| + (n : ℤ)).toNat + A056830 n

end

end A263805.P9004263766722038560

/-! ## A263805.P14342212247236955322

`A007088(A263806(n))`
-/

namespace A263805.P14342212247236955322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A263806 n).toNat

end

end A263805.P14342212247236955322

/-! ## A263805.P5610151145616419829

`A007088(lcm(A000079(n+1), A005578(n))-1)`
-/

namespace A263805.P5610151145616419829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lcm (A000079 (n + 1)) (A005578 n) - 1)

end

end A263805.P5610151145616419829

/-!
# A263806: Decimal representation of the n-th iteration of the "Rule 157" elementary cellular automaton starting with a single ON (black) cell.

The programs for A263806, the canonical program `A263806.P108164490323309945` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263806 has offset 0).

The definition of A263806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263806.P108164490323309945

`3*a(n-1)+14*a(n-2)-48*a(n-3)+32*a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=47, a(4)=95`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263806

/-- `3*a(n-1)+14*a(n-2)-48*a(n-3)+32*a(n-4)` -/
def P108164490323309945.Spec : Prop :=
  ∀ n, P108164490323309945.a n = A263806 n

theorem P108164490323309945.correct : P108164490323309945.Spec := by
  intro n
  simp only [A263806]

end A263806

/-! ## A263806.P2233710132896938945

`record[or(A001045(n), A077980(n))]`
-/

namespace A263806.P2233710132896938945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A077980 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263806.P2233710132896938945

namespace A263806

/-- `record[or(A001045(n), A077980(n))]` -/
def P2233710132896938945.Spec : Prop :=
  ∀ n, P2233710132896938945.a n = A263806 n

end A263806

/-! ## A263806.P16517620212345948312

`record[or(A005578(n), A077980(n))]`
-/

namespace A263806.P16517620212345948312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005578 n) (A077980 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263806.P16517620212345948312

namespace A263806

/-- `record[or(A005578(n), A077980(n))]` -/
def P16517620212345948312.Spec : Prop :=
  ∀ n, P16517620212345948312.a n = A263806 n

end A263806

/-! ## A263806.P18323064544839717386

`record[or(A024493(n), A077980(n))]`
-/

namespace A263806.P18323064544839717386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024493 n) (A077980 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263806.P18323064544839717386

namespace A263806

/-- `record[or(A024493(n), A077980(n))]` -/
def P18323064544839717386.Spec : Prop :=
  ∀ n, P18323064544839717386.a n = A263806 n

end A263806

/-! ## A263806.P11039197737957763044

`lcm(A000079(n+1), A005578(n))-1`
-/

namespace A263806.P11039197737957763044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 (n + 1)) (A005578 n) : ℤ) - 1

end

end A263806.P11039197737957763044

namespace A263806

/-- `lcm(A000079(n+1), A005578(n))-1` -/
def P11039197737957763044.Spec : Prop :=
  ∀ n, P11039197737957763044.a n = A263806 n

end A263806

/-! ## A263806.P357766273521515523

`A000975(n)+A000975(A053438(n))`
-/

namespace A263806.P357766273521515523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + A000975 (A053438 n).toNat

end

end A263806.P357766273521515523

namespace A263806

/-- `A000975(n)+A000975(A053438(n))` -/
def P357766273521515523.Spec : Prop :=
  ∀ n, P357766273521515523.a n = A263806 n

end A263806

/-! ## A263806.P1926113893540124205

`or(A000225(n), A005578(A014601(n)))`
-/

namespace A263806.P1926113893540124205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A005578 (A014601 n).toNat)

end

end A263806.P1926113893540124205

namespace A263806

/-- `or(A000225(n), A005578(A014601(n)))` -/
def P1926113893540124205.Spec : Prop :=
  ∀ n, P1926113893540124205.a n = A263806 n

end A263806

/-! ## A263806.P247339577532433164

`or(A000225(n), A000975(A053438(n)))`
-/

namespace A263806.P247339577532433164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A000975 (A053438 n).toNat)

end

end A263806.P247339577532433164

namespace A263806

/-- `or(A000225(n), A000975(A053438(n)))` -/
def P247339577532433164.Spec : Prop :=
  ∀ n, P247339577532433164.a n = A263806 n

end A263806

/-! ## A263806.P1898290696295298605

`or(A005578(n+1), A005578(A014601(n)))`
-/

namespace A263806.P1898290696295298605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005578 (n + 1)) (A005578 (A014601 n).toNat)

end

end A263806.P1898290696295298605

namespace A263806

/-- `or(A005578(n+1), A005578(A014601(n)))` -/
def P1898290696295298605.Spec : Prop :=
  ∀ n, P1898290696295298605.a n = A263806 n

end A263806

/-! ## A263806.P5201262044802406687

`or(A024493(n+1), A024493(A014601(n)))`
-/

namespace A263806.P5201262044802406687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024493 (n + 1)) (A024493 (A014601 n).toNat)

end

end A263806.P5201262044802406687

namespace A263806

/-- `or(A024493(n+1), A024493(A014601(n)))` -/
def P5201262044802406687.Spec : Prop :=
  ∀ n, P5201262044802406687.a n = A263806 n

end A263806

/-! ## A263806.P2514422761595155372

`or(A005578(n+1), A005578(A042948(n+1)-1))`
-/

namespace A263806.P2514422761595155372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005578 (n + 1)) (A005578 (A042948 (n + 1) - 1).toNat)

end

end A263806.P2514422761595155372

namespace A263806

/-- `or(A005578(n+1), A005578(A042948(n+1)-1))` -/
def P2514422761595155372.Spec : Prop :=
  ∀ n, P2514422761595155372.a n = A263806 n

end A263806

/-! ## A263806.P13652311658194329269

`or(A001045(n+1), A001045(A052928(n+1)+n))`
-/

namespace A263806.P13652311658194329269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 (n + 1)) (A001045 (A052928 (n + 1) + (n : ℤ)).toNat)

end

end A263806.P13652311658194329269

namespace A263806

/-- `or(A001045(n+1), A001045(A052928(n+1)+n))` -/
def P13652311658194329269.Spec : Prop :=
  ∀ n, P13652311658194329269.a n = A263806 n

end A263806

/-!
# A263807: Total number of ON (black) cells after n iterations of the "Rule 157" elementary cellular automaton starting with a single ON (black) cell.

The programs for A263807, the canonical program `A263807.P11266358441854257011` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263807 has offset 0).

The definition of A263807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263807.P11266358441854257011

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263807

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P11266358441854257011.Spec : Prop :=
  ∀ n, P11266358441854257011.a n = A263807 n

theorem P11266358441854257011.correct : P11266358441854257011.Spec := by
  intro n
  simp only [A263807]

end A263807

/-! ## A263807.P1583703336636953004

`∑[round(3/(2*acot(n)))]`
-/

namespace A263807.P1583703336636953004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (2 * SequenceMachineLib.acot (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P1583703336636953004

namespace A263807

/-- `∑[round(3/(2*acot(n)))]` -/
def P1583703336636953004.Spec : Prop :=
  ∀ n, P1583703336636953004.a n = A263807 n

end A263807

/-! ## A263807.P1106568367229767664

`∑[ceil(3*n/2)]+1`
-/

namespace A263807.P1106568367229767664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A263807.P1106568367229767664

namespace A263807

/-- `∑[ceil(3*n/2)]+1` -/
def P1106568367229767664.Spec : Prop :=
  ∀ n, P1106568367229767664.a n = A263807 n

end A263807

/-! ## A263807.P3808769106222877307

`∑[comp[lcm(3, n+1)]+1]`
-/

namespace A263807.P3808769106222877307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P3808769106222877307

namespace A263807

/-- `∑[comp[lcm(3, n+1)]+1]` -/
def P3808769106222877307.Spec : Prop :=
  ∀ n, (P3808769106222877307.a n : ℤ) = A263807 n

end A263807

/-! ## A263807.P4928838554634402056

`∑[record[lcm(9, n)/9+1]]`
-/

namespace A263807.P4928838554634402056
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 n : ℚ) / 9 + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P4928838554634402056

namespace A263807

/-- `∑[record[lcm(9, n)/9+1]]` -/
def P4928838554634402056.Spec : Prop :=
  ∀ n, P4928838554634402056.a n = (A263807 n : ℚ)

end A263807

/-! ## A263807.P298943801355907152

`∑[a(n-2)+3]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A263807.P298943801355907152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P298943801355907152

namespace A263807

/-- `∑[a(n-2)+3]` -/
def P298943801355907152.Spec : Prop :=
  ∀ n, (P298943801355907152.a n : ℤ) = A263807 n

end A263807

/-! ## A263807.P3301347526237316389

`∑[abs(record[2-gcd(3, n)+n])]`
-/

namespace A263807.P3301347526237316389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 3 n : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P3301347526237316389

namespace A263807

/-- `∑[abs(record[2-gcd(3, n)+n])]` -/
def P3301347526237316389.Spec : Prop :=
  ∀ n, P3301347526237316389.a n = A263807 n

end A263807

/-! ## A263807.P9438643874829406630

`∑[comp[record[xor(1, n+1)]+n]]`
-/

namespace A263807.P9438643874829406630
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P9438643874829406630

namespace A263807

/-- `∑[comp[record[xor(1, n+1)]+n]]` -/
def P9438643874829406630.Spec : Prop :=
  ∀ n, (P9438643874829406630.a n : ℤ) = A263807 n

end A263807

/-! ## A263807.P17633602492098580249

`∑[∑[3-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A263807.P17633602492098580249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P17633602492098580249

namespace A263807

/-- `∑[∑[3-a(n-1)]]` -/
def P17633602492098580249.Spec : Prop :=
  ∀ n, P17633602492098580249.a n = A263807 n

end A263807

/-! ## A263807.P1301399326708269575

`∑[floor(2/acot(n))-floor(n/2)]`
-/

namespace A263807.P1301399326708269575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P1301399326708269575

namespace A263807

/-- `∑[floor(2/acot(n))-floor(n/2)]` -/
def P1301399326708269575.Spec : Prop :=
  ∀ n, P1301399326708269575.a n = A263807 n

end A263807

/-! ## A263807.P746022828494248458

`ogf((1+x+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A263807.P746022828494248458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1] [1, -2, 0, 2, -1] n

end

end A263807.P746022828494248458

namespace A263807

/-- `ogf((1+x+x^3)/(1-2x+2x^3-x^4))` -/
def P746022828494248458.Spec : Prop :=
  ∀ n, P746022828494248458.a n = A263807 n

end A263807

/-! ## A263807.P11119314470483564846

`floor(C(n+2, 2)+((n-1)/2)²)`
-/

namespace A263807.P11119314470483564846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) + (((n : ℤ) - 1 : ℚ) / 2) ^ 2⌋

end

end A263807.P11119314470483564846

namespace A263807

/-- `floor(C(n+2, 2)+((n-1)/2)²)` -/
def P11119314470483564846.Spec : Prop :=
  ∀ n, P11119314470483564846.a n = A263807 n

end A263807

/-! ## A263807.P16119054360349618961

`floor((n+1)/2+a(n-1)+n)` with `a(0)=1`
-/

namespace A263807.P16119054360349618961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n + 1 : ℚ) / 2 + (a (n - 1) + (n : ℤ) : ℚ)⌋

end

end A263807.P16119054360349618961

namespace A263807

/-- `floor((n+1)/2+a(n-1)+n)` -/
def P16119054360349618961.Spec : Prop :=
  ∀ n, P16119054360349618961.a n = A263807 n

end A263807

/-! ## A263807.P2837388919619687309

`floor(2*n-((n-1)/2-a(n-1)))` with `a(0)=1`
-/

namespace A263807.P2837388919619687309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(2 * n : ℚ) - (((n : ℤ) - 1 : ℚ) / 2 - (a (n - 1) : ℚ))⌋

end

end A263807.P2837388919619687309

namespace A263807

/-- `floor(2*n-((n-1)/2-a(n-1)))` -/
def P2837388919619687309.Spec : Prop :=
  ∀ n, P2837388919619687309.a n = A263807 n

end A263807

/-! ## A263807.P959666639573139635

`∑[eq[(n+2)*(n-1), lcm(n+2, n-1)]]`
-/

namespace A263807.P959666639573139635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P959666639573139635

namespace A263807

/-- `∑[eq[(n+2)*(n-1), lcm(n+2, n-1)]]` -/
def P959666639573139635.Spec : Prop :=
  ∀ n, (P959666639573139635.a n : ℤ) = A263807 n

end A263807

/-! ## A263807.P17709939646878417756

`∑[A294732(n+2)]`
-/

namespace A263807.P17709939646878417756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P17709939646878417756

namespace A263807

/-- `∑[A294732(n+2)]` -/
def P17709939646878417756.Spec : Prop :=
  ∀ n, P17709939646878417756.a n = A263807 n

end A263807

/-! ## A263807.P1255032416263596177

`∑[A065033(n)+n]`
-/

namespace A263807.P1255032416263596177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P1255032416263596177

namespace A263807

/-- `∑[A065033(n)+n]` -/
def P1255032416263596177.Spec : Prop :=
  ∀ n, P1255032416263596177.a n = A263807 n

end A263807

/-! ## A263807.P12667639014722989429

`∑[ceil(A008486(n)/2)]`
-/

namespace A263807.P12667639014722989429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008486 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P12667639014722989429

namespace A263807

/-- `∑[ceil(A008486(n)/2)]` -/
def P12667639014722989429.Spec : Prop :=
  ∀ n, P12667639014722989429.a n = A263807 n

end A263807

/-! ## A263807.P1147193825643756092

`∑[∑[2-A266591(n)]]`
-/

namespace A263807.P1147193825643756092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A266591 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P1147193825643756092

namespace A263807

/-- `∑[∑[2-A266591(n)]]` -/
def P1147193825643756092.Spec : Prop :=
  ∀ n, P1147193825643756092.a n = A263807 n

end A263807

/-! ## A263807.P13431075670189504856

`∑[record[A106610(n)+1]]`
-/

namespace A263807.P13431075670189504856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263807.P13431075670189504856

namespace A263807

/-- `∑[record[A106610(n)+1]]` -/
def P13431075670189504856.Spec : Prop :=
  ∀ n, P13431075670189504856.a n = A263807 n

end A263807

/-!
# A263808: Numbers k such that the iterated subtraction of the decimal digits eventually reaches -k.

The programs for A263808, there is no canonical definition to state claims against.
-/

/-! ## A263808.P7248036938928538792

`A180477(n+1)-A178798(A295679(n))`
-/

namespace A263808.P7248036938928538792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180477 (n + 1) - A178798 (A295679 n).toNat

end

end A263808.P7248036938928538792

/-! ## A263808.P1204673235340246681

`A271239(n+1)-A178798(A295679(n))`
-/

namespace A263808.P1204673235340246681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271239 (n + 1) - A178798 (A295679 n).toNat

end

end A263808.P1204673235340246681

/-! ## A263808.P14039118777677763570

`A180477(n+1)+A178798(A295679(n)+2)`
-/

namespace A263808.P14039118777677763570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180477 (n + 1) + A178798 (A295679 n + 2).toNat

end

end A263808.P14039118777677763570

/-! ## A263808.P16659456574889632221

`A271239(n+1)+A178798(A295679(n)+2)`
-/

namespace A263808.P16659456574889632221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271239 (n + 1) + A178798 (A295679 n + 2).toNat

end

end A263808.P16659456574889632221

/-!
# A263810: Numbers k such that k = tau(k) * phi(k-2) + 1.

The programs for A263810, there is no canonical definition to state claims against.
-/

/-! ## A263810.P12545648342188911189

`A249541(n+1)+char[7]`
-/

namespace A263810.P12545648342188911189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249541 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263810.P12545648342188911189

/-! ## A263810.P7771673237189326038

`char[7]+A203966(n+1)+2`
-/

namespace A263810.P7771673237189326038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A203966 (n + 1) + 2)

end

end A263810.P7771673237189326038

/-! ## A263810.P15794210058002574256

`A249541(n+1-floor(n/7))`
-/

namespace A263810.P15794210058002574256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249541 ((n + 1 : ℤ) - ⌊(n : ℚ) / 7⌋).toNat

end

end A263810.P15794210058002574256

/-!
# A263811: Numbers k such that k = tau(k) * phi(k-1) + 1.

The programs for A263811, there is no canonical definition to state claims against.
-/

/-! ## A263811.P6099407217625312825

`∪[A247203(n+1), A247164(n+2)²]`
-/

namespace A263811.P6099407217625312825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247164 (n + 2) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263811.P6099407217625312825

/-! ## A263811.P17467410911638267154

`∪[A248796(A072944(n+1))², A247203(n+1)]`
-/

namespace A263811.P17467410911638267154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248796 (A072944 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247203 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263811.P17467410911638267154

/-! ## A263811.P7584013033264398487

`∩[A071593(n+1), A263581(n+1)]`
-/

namespace A263811.P7584013033264398487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A263811.P7584013033264398487

/-!
# A263812: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,0 0,1 0,2 or 1,0.

The programs for A263812, there is no canonical definition to state claims against.
-/

/-! ## A263812.P11279403419106202936

`A263816(∑[n+2])`
-/

namespace A263812.P11279403419106202936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263812.P11279403419106202936

/-! ## A263812.P8581123170260989982

`record[A263816(A198455(n+1))]`
-/

namespace A263812.P8581123170260989982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263812.P8581123170260989982

/-! ## A263812.P5931312408366230372

`record[A263816(A165157(n)+2)]`
-/

namespace A263812.P5931312408366230372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A165157 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263812.P5931312408366230372

/-! ## A263812.P13304419718765312658

`record[A263816(A198456(n+1)-1)]`
-/

namespace A263812.P13304419718765312658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A198456 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263812.P13304419718765312658

/-!
# A263813: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having index change (+-,+-) 0,0 0,1 0,2 or 1,0.

The programs for A263813, there is no canonical definition to state claims against.
-/

/-! ## A263813.P15711185343391155979

`A263816(∑[n+3]+1)`
-/

namespace A263813.P15711185343391155979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263813.P15711185343391155979

/-!
# A263814: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change (+-,+-) 0,0 0,1 0,2 or 1,0.

The programs for A263814, there is no canonical definition to state claims against.
-/

/-! ## A263814.P14768579260926928350

`A263816(∑[n+4]+3)`
-/

namespace A263814.P14768579260926928350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A263814.P14768579260926928350

/-! ## A263814.P7374603859753597467

`A263816(A027379(n+2))+A025439(n)`
-/

namespace A263814.P7374603859753597467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A027379 (n + 2)).toNat + A025439 n

end

end A263814.P7374603859753597467

/-!
# A263815: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change (+-,+-) 0,0 0,1 0,2 or 1,0.

The programs for A263815, there is no canonical definition to state claims against.
-/

/-! ## A263815.P16644861983072690192

`A263816(Δ[A264443(n)])`
-/

namespace A263815.P16644861983072690192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (f1 (n + 1) - f1 n).toNat

end

end A263815.P16644861983072690192

/-!
# A263817: Number of (1+1)X(n+1) arrays of permutations of 0..n*2+1 with each element having index change (+-,+-) 0,0 0,1 0,2 or 1,0.

The programs for A263817, there is no canonical definition to state claims against.
-/

/-! ## A263817.P18177105068142070455

`A263816(∑[n]+1)`
-/

namespace A263817.P18177105068142070455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263817.P18177105068142070455

/-! ## A263817.P17242533775897893842

`record[A263816(∑[A057979(n)])]`
-/

namespace A263817.P17242533775897893842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263817.P17242533775897893842

/-! ## A263817.P4634245169520120915

`and(-1, A263816(A000124(n)))`
-/

namespace A263817.P4634245169520120915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A263816 (A000124 n).toNat)

end

end A263817.P4634245169520120915

/-! ## A263817.P1806144256848684968

`record[A263816(A114091(n+1))]`
-/

namespace A263817.P1806144256848684968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263817.P1806144256848684968

/-! ## A263817.P2523631440374318063

`record[A263816(record[A057027(n+1)])]`
-/

namespace A263817.P2523631440374318063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263817.P2523631440374318063

/-!
# A263818: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,0 0,1 0,2 or 1,0.

The programs for A263818, there is no canonical definition to state claims against.
-/

/-! ## A263818.P7957022620110507949

`A263816(∑[n+1]+2)`
-/

namespace A263818.P7957022620110507949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A263818.P7957022620110507949

/-! ## A263818.P18401411923120398159

`record[gcd(A211402(n+1), A263816(n+3))]`
-/

namespace A263818.P18401411923120398159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211402 (n + 1)) (A263816 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263818.P18401411923120398159

/-! ## A263818.P7352221273958314246

`record[A263816(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A263818.P7352221273958314246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263818.P7352221273958314246

/-! ## A263818.P16483101214185752771

`A049710(3*n+2)*A263816(A133263(n+1))`
-/

namespace A263818.P16483101214185752771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (3 * n + 2) * A263816 (A133263 (n + 1)).toNat

end

end A263818.P16483101214185752771

/-!
# A263819: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change (+-,+-) 0,0 0,1 0,2 or 1,0.

The programs for A263819, there is no canonical definition to state claims against.
-/

/-! ## A263819.P10617942364642646416

`A263816(∑[n+2]+4)`
-/

namespace A263819.P10617942364642646416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A263819.P10617942364642646416

/-! ## A263819.P15108013838311036366

`A263816(A167614(n+1))+A025437(n)`
-/

namespace A263819.P15108013838311036366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A167614 (n + 1)).toNat + A025437 n

end

end A263819.P15108013838311036366

/-! ## A263819.P16886173173766183888

`A263816(A167614(n+1))+A025439(n)`
-/

namespace A263819.P16886173173766183888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A167614 (n + 1)).toNat + A025439 n

end

end A263819.P16886173173766183888

/-! ## A263819.P16192036201311658336

`A263816(A167614(n+1))+A025442(n)`
-/

namespace A263819.P16192036201311658336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A167614 (n + 1)).toNat + A025442 n

end

end A263819.P16192036201311658336

/-!
# A263820: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change (+-,+-) 0,0 0,1 0,2 or 1,0.

The programs for A263820, there is no canonical definition to state claims against.
-/

/-! ## A263820.P16927245434390252125

`A263816(A167614(n+2)+1)`
-/

namespace A263820.P16927245434390252125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (A167614 (n + 2) + 1).toNat

end

end A263820.P16927245434390252125

/-! ## A263820.P15794280790033747065

`A263816(Δ[A264443(n)-n²])`
-/

namespace A263820.P15794280790033747065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263816 (f1 (n + 1) - f1 n).toNat

end

end A263820.P15794280790033747065

/-!
# A263822: Conjectured number of terms in A263644 less than 10^n.

The programs for A263822, there is no canonical definition to state claims against.
-/

/-! ## A263822.P112262257934129342

`A306558(n-char[6])`
-/

namespace A263822.P112262257934129342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306558 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A263822.P112262257934129342

/-! ## A263822.P13848009115453547109

`xor(char[6], A306558(n))`
-/

namespace A263822.P13848009115453547109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A306558 n)

end

end A263822.P13848009115453547109

/-! ## A263822.P17924517707757329907

`A064365(5*C(n, 7))`
-/

namespace A263822.P17924517707757329907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 (5 * Nat.choose n 7)

end

end A263822.P17924517707757329907

/-! ## A263822.P6194007883414905641

`∑[A281456(∑[(n+1)²])]`
-/

namespace A263822.P6194007883414905641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281456 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263822.P6194007883414905641

/-! ## A263822.P9976664099200799586

`∑[∑[∑[A174614(n+2)]]]`
-/

namespace A263822.P9976664099200799586
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174614 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263822.P9976664099200799586

/-!
# A263823: a(n) = n! * Sum_{k=0..n} Fibonacci(k-1)/k!, where Fibonacci(-1) = 1, Fibonacci(n) = A000045(n) for n>=0.

The programs for A263823, the canonical program `A263823.P9343177768317350608` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263823 has offset 0).

The definition of A263823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263823.P9343177768317350608

`(n+1)*a(n-1)+(2-n)*a(n-2)+(2-n)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263823

/-- `(n+1)*a(n-1)+(2-n)*a(n-2)+(2-n)*a(n-3)` -/
def P9343177768317350608.Spec : Prop :=
  ∀ n, P9343177768317350608.a n = A263823 n

theorem P9343177768317350608.correct : P9343177768317350608.Spec := by
  intro n
  simp only [A263823]

end A263823

/-! ## A263823.P12374309255079090494

`A212804(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A263823.P12374309255079090494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212804 n + (n : ℤ) * a (n - 1)

end

end A263823.P12374309255079090494

namespace A263823

/-- `A212804(n)+n*a(n-1)` -/
def P12374309255079090494.Spec : Prop :=
  ∀ n, P12374309255079090494.a n = A263823 n

end A263823

/-! ## A263823.P12168275468692488726

`Δ[A000045(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A263823.P12168275468692488726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A263823.P12168275468692488726

namespace A263823

/-- `Δ[A000045(n)]+n*a(n-1)` -/
def P12168275468692488726.Spec : Prop :=
  ∀ n, P12168275468692488726.a n = A263823 n

end A263823

/-! ## A263823.P12563984914181998152

`A000045(n-1)+n*a(n-1)` with `a(0)=1`
-/

namespace A263823.P12563984914181998152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n - 1) + (n : ℤ) * a (n - 1)

end

end A263823.P12563984914181998152

namespace A263823

/-- `A000045(n-1)+n*a(n-1)` -/
def P12563984914181998152.Spec : Prop :=
  ∀ n, P12563984914181998152.a n = A263823 n

end A263823

/-! ## A263823.P4375211227153528438

`n*a(n-1)-A152163(n+1)` with `a(0)=1`
-/

namespace A263823.P4375211227153528438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - A152163 (n + 1)

end

end A263823.P4375211227153528438

namespace A263823

/-- `n*a(n-1)-A152163(n+1)` -/
def P4375211227153528438.Spec : Prop :=
  ∀ n, P4375211227153528438.a n = A263823 n

end A263823

/-! ## A263823.P138476375488761425

`n*a(n-1)+A104449(n)-A000032(n)` with `a(0)=1`
-/

namespace A263823.P138476375488761425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (A104449 n - A000032 n)

end

end A263823.P138476375488761425

namespace A263823

/-- `n*a(n-1)+A104449(n)-A000032(n)` -/
def P138476375488761425.Spec : Prop :=
  ∀ n, P138476375488761425.a n = A263823 n

end A263823

/-! ## A263823.P15964481255974589358

`∑[A212804(n)/A000142(n)]*A000142(n)`
-/

namespace A263823.P15964481255974589358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212804 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000142 n : ℚ)

end

end A263823.P15964481255974589358

namespace A263823

/-- `∑[A212804(n)/A000142(n)]*A000142(n)` -/
def P15964481255974589358.Spec : Prop :=
  ∀ n, P15964481255974589358.a n = (A263823 n : ℚ)

end A263823

/-!
# A263824: Permutation of the nonnegative integers: [6k+3, 6k+4, 6k+5, 6k, 6k+1, 6k+2, ...].

The programs for A263824, the canonical program `A263824.P9003383139860245974` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263824 has offset 0).

The definition of A263824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263824.P9003383139860245974

`n+3*(-1)^floor(n/3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263824

/-- `n+3*(-1)^floor(n/3)` -/
def P9003383139860245974.Spec : Prop :=
  ∀ n, P9003383139860245974.a n = (A263824 n : ℚ)

end A263824

/-! ## A263824.P17672181650941173771

`∑[2-a(n-3)]` with `a(0)=3, a(1)=1, a(2)=1, a(3)=-5`
-/

namespace A263824.P17672181650941173771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 1, -5] fun n f1 =>
  2 - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263824.P17672181650941173771

namespace A263824

/-- `∑[2-a(n-3)]` -/
def P17672181650941173771.Spec : Prop :=
  ∀ n, P17672181650941173771.a n = A263824 n

end A263824

/-! ## A263824.P12906219578806360964

`3*(A130151(n)+n/3)`
-/

namespace A263824.P12906219578806360964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A130151 n : ℚ) + (n : ℚ) / 3)

end

end A263824.P12906219578806360964

namespace A263824

/-- `3*(A130151(n)+n/3)` -/
def P12906219578806360964.Spec : Prop :=
  ∀ n, P12906219578806360964.a n = (A263824 n : ℚ)

end A263824

/-! ## A263824.P9250148521588720281

`A004442(A330396(A004442(A330396(A004442(n)))))`
-/

namespace A263824.P9250148521588720281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A330396 (A004442 (A330396 (A004442 n).toNat).toNat).toNat).toNat

end

end A263824.P9250148521588720281

namespace A263824

/-- `A004442(A330396(A004442(A330396(A004442(n)))))` -/
def P9250148521588720281.Spec : Prop :=
  ∀ n, P9250148521588720281.a n = A263824 n

end A263824

/-! ## A263824.P13859504951677393530

`A057353(xor(4, A004772(n+1)))`
-/

namespace A263824.P13859504951677393530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Int.xor 4 (A004772 (n + 1))).toNat

end

end A263824.P13859504951677393530

namespace A263824

/-- `A057353(xor(4, A004772(n+1)))` -/
def P13859504951677393530.Spec : Prop :=
  ∀ n, P13859504951677393530.a n = A263824 n

end A263824

/-! ## A263824.P4941942902336187746

`A057353(xor(4, A047519(n+1)))`
-/

namespace A263824.P4941942902336187746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Int.xor 4 (A047519 (n + 1))).toNat

end

end A263824.P4941942902336187746

namespace A263824

/-- `A057353(xor(4, A047519(n+1)))` -/
def P4941942902336187746.Spec : Prop :=
  ∀ n, P4941942902336187746.a n = A263824 n

end A263824

/-! ## A263824.P8030533876309948241

`floor(A100830(3*n+1)/3)`
-/

namespace A263824.P8030533876309948241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100830 (3 * n + 1) : ℚ) / 3⌋

end

end A263824.P8030533876309948241

namespace A263824

/-- `floor(A100830(3*n+1)/3)` -/
def P8030533876309948241.Spec : Prop :=
  ∀ n, P8030533876309948241.a n = A263824 n

end A263824

/-! ## A263824.P759057090987914289

`A002264(A100830(2*n+1+n))`
-/

namespace A263824.P759057090987914289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A100830 (2 * n + 1 + n)).toNat

end

end A263824.P759057090987914289

namespace A263824

/-- `A002264(A100830(2*n+1+n))` -/
def P759057090987914289.Spec : Prop :=
  ∀ n, P759057090987914289.a n = A263824 n

end A263824

/-! ## A263824.P10340303483957445278

`A286297((n+1)²+2)`
-/

namespace A263824.P10340303483957445278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286297 ((n + 1) ^ 2 + 2)

end

end A263824.P10340303483957445278

namespace A263824

/-- `A286297((n+1)²+2)` -/
def P10340303483957445278.Spec : Prop :=
  ∀ n, P10340303483957445278.a n = A263824 n

end A263824

/-!
# A263825: Total number c_{pi_1(B_1)}(n) of n-coverings over the first amphicosm.

The programs for A263825, there is no canonical definition to state claims against.
-/

/-! ## A263825.P13158954878886780572

`A263829(n+1)+A263828(n+1)%A145396(n+1)`
-/

namespace A263825.P13158954878886780572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263829 (n + 1) + Int.tmod (A263828 (n + 1)) (A145396 (n + 1))

end

end A263825.P13158954878886780572

/-!
# A263826: The number c_{Z3 pi_1(B_1)}(2n) of 3-torus 2n-coverings over the first amphicosm.

The programs for A263826, the canonical program `A263826.P15511005818763180610` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263826 has offset 1).

The definition of A263826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263826.P18374249068997658590

`A263832(2*(n+1))+A263830(n+1)`
-/

namespace A263826.P18374249068997658590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263832 (2 * (n + 1)) + A263830 (n + 1)

end

end A263826.P18374249068997658590

namespace A263826

/-- `A263832(2*(n+1))+A263830(n+1)` -/
def P18374249068997658590.Spec : Prop :=
  ∀ n, P18374249068997658590.a n = A263826 (n + 1)

end A263826

/-! ## A263826.P6558467676697445658

`(A145396(n+1)+A001001(n+1))/2`
-/

namespace A263826.P6558467676697445658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145396 (n + 1) + A001001 (n + 1) : ℚ) / 2

end

end A263826.P6558467676697445658

namespace A263826

/-- `(A145396(n+1)+A001001(n+1))/2` -/
def P6558467676697445658.Spec : Prop :=
  ∀ n, P6558467676697445658.a n = (A263826 (n + 1) : ℚ)

end A263826

/-! ## A263826.P987419118574641478

`A263829(2*(n+1))-A263827(n+1)`
-/

namespace A263826.P987419118574641478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263829 (2 * (n + 1)) - A263827 (n + 1)

end

end A263826.P987419118574641478

namespace A263826

/-- `A263829(2*(n+1))-A263827(n+1)` -/
def P987419118574641478.Spec : Prop :=
  ∀ n, P987419118574641478.a n = A263826 (n + 1)

end A263826

/-! ## A263826.P15511005818763180610

`∑{d}[n+1, A000203(#)*A236283((n+1)/#)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263826

/-- `∑{d}[n+1, A000203(#)*A236283((n+1)/#)]` -/
def P15511005818763180610.Spec : Prop :=
  ∀ n, P15511005818763180610.a n = A263826 (n + 1)

theorem P15511005818763180610.correct : P15511005818763180610.Spec := by
  intro n
  simp only [A263826, Nat.add_sub_cancel]

end A263826

/-! ## A263826.P4663778444905847833

`A263832(2*(n+1))+(A145398(n+1)+A001001(n+1))/2`
-/

namespace A263826.P4663778444905847833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263832 (2 * (n + 1)) : ℚ) + (A145398 (n + 1) + A001001 (n + 1) : ℚ) / 2

end

end A263826.P4663778444905847833

namespace A263826

/-- `A263832(2*(n+1))+(A145398(n+1)+A001001(n+1))/2` -/
def P4663778444905847833.Spec : Prop :=
  ∀ n, P4663778444905847833.a n = (A263826 (n + 1) : ℚ)

end A263826

/-! ## A263826.P11687165328262917268

`A001281(A145396(n+1)+A001001(n+1))`
-/

namespace A263826.P11687165328262917268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A145396 (n + 1) + A001001 (n + 1)).toNat

end

end A263826.P11687165328262917268

namespace A263826

/-- `A001281(A145396(n+1)+A001001(n+1))` -/
def P11687165328262917268.Spec : Prop :=
  ∀ n, P11687165328262917268.a n = A263826 (n + 1)

end A263826

/-! ## A263826.P13362522371290544719

`A004525(A145396(n+1)+A001001(n+1))`
-/

namespace A263826.P13362522371290544719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A145396 (n + 1) + A001001 (n + 1)).toNat

end

end A263826.P13362522371290544719

namespace A263826

/-- `A004525(A145396(n+1)+A001001(n+1))` -/
def P13362522371290544719.Spec : Prop :=
  ∀ n, P13362522371290544719.a n = A263826 (n + 1)

end A263826

/-!
# A263827: The number c_{Cc pi_1(B_1)}(2n) of the second amphicosm 2n-coverings over the first amphicosm.

The programs for A263827, the canonical program `A263827.P8673343635422957235` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263827 has offset 1).

The definition of A263827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263827.P6950930233926230884

`2*A327096(n+1)`
-/

namespace A263827.P6950930233926230884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327096 (n + 1)

end

end A263827.P6950930233926230884

namespace A263827

/-- `2*A327096(n+1)` -/
def P6950930233926230884.Spec : Prop :=
  ∀ n, P6950930233926230884.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P8673343635422957235

`∑{d}[n+1, A054785(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A263827

/-- `∑{d}[n+1, A054785(#)]` -/
def P8673343635422957235.Spec : Prop :=
  ∀ n, P8673343635422957235.a n = A263827 (n + 1)

theorem P8673343635422957235.correct : P8673343635422957235.Spec := by
  intro n
  simp only [A263827, Nat.add_sub_cancel]

end A263827

/-! ## A263827.P17015243372667425925

`2*∑{d}[n+1, A002131(#)]`
-/

namespace A263827.P17015243372667425925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A002131 d)

end

end A263827.P17015243372667425925

namespace A263827

/-- `2*∑{d}[n+1, A002131(#)]` -/
def P17015243372667425925.Spec : Prop :=
  ∀ n, P17015243372667425925.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P7571938992692487039

`∑{d}[n+1, #*A054844((n+1)/#)]`
-/

namespace A263827.P7571938992692487039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A054844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263827.P7571938992692487039

namespace A263827

/-- `∑{d}[n+1, #*A054844((n+1)/#)]` -/
def P7571938992692487039.Spec : Prop :=
  ∀ n, P7571938992692487039.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P14457048375716961502

`2*∑{d}[n+1, #*A001227((n+1)/#)]`
-/

namespace A263827.P14457048375716961502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A263827.P14457048375716961502

namespace A263827

/-- `2*∑{d}[n+1, #*A001227((n+1)/#)]` -/
def P14457048375716961502.Spec : Prop :=
  ∀ n, P14457048375716961502.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P13314593478609561601

`A007429(n+1)+A288417(n+1)`
-/

namespace A263827.P13314593478609561601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) + A288417 (n + 1)

end

end A263827.P13314593478609561601

namespace A263827

/-- `A007429(n+1)+A288417(n+1)` -/
def P13314593478609561601.Spec : Prop :=
  ∀ n, P13314593478609561601.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P7160171159368737278

`A263829(2*(n+1))-A263826(n+1)`
-/

namespace A263827.P7160171159368737278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263829 (2 * (n + 1)) - A263826 (n + 1)

end

end A263827.P7160171159368737278

namespace A263827

/-- `A263829(2*(n+1))-A263826(n+1)` -/
def P7160171159368737278.Spec : Prop :=
  ∀ n, P7160171159368737278.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P10042767760796020195

`A263826(2*(n+1))-A263830(2*(n+1))`
-/

namespace A263827.P10042767760796020195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263826 (2 * (n + 1)) - A263830 (2 * (n + 1))

end

end A263827.P10042767760796020195

namespace A263827

/-- `A263826(2*(n+1))-A263830(2*(n+1))` -/
def P10042767760796020195.Spec : Prop :=
  ∀ n, P10042767760796020195.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P6765267862640408785

`A263826(2*n+2)%A263830(2*n+2)`
-/

namespace A263827.P6765267862640408785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263826 (2 * n + 2)) (A263830 (2 * n + 2))

end

end A263827.P6765267862640408785

namespace A263827

/-- `A263826(2*n+2)%A263830(2*n+2)` -/
def P6765267862640408785.Spec : Prop :=
  ∀ n, P6765267862640408785.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P9277662596667187374

`∑{d}[n+1, A026741(#)*A062011((n+1)/#)]`
-/

namespace A263827.P9277662596667187374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A062011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263827.P9277662596667187374

namespace A263827

/-- `∑{d}[n+1, A026741(#)*A062011((n+1)/#)]` -/
def P9277662596667187374.Spec : Prop :=
  ∀ n, P9277662596667187374.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P10042688072765852850

`∑{d}[n+1, A000005(#)*A109043((n+1)/#)]`
-/

namespace A263827.P10042688072765852850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A109043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263827.P10042688072765852850

namespace A263827

/-- `∑{d}[n+1, A000005(#)*A109043((n+1)/#)]` -/
def P10042688072765852850.Spec : Prop :=
  ∀ n, P10042688072765852850.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P17492076740549778954

`∑{d}[n+1, A000593(#)*A171977((n+1)/#)]`
-/

namespace A263827.P17492076740549778954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A171977 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263827.P17492076740549778954

namespace A263827

/-- `∑{d}[n+1, A000593(#)*A171977((n+1)/#)]` -/
def P17492076740549778954.Spec : Prop :=
  ∀ n, P17492076740549778954.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P10174834982876529542

`∑{d}[n+1, A115607(#)*A183037((n+1)/#)]`
-/

namespace A263827.P10174834982876529542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115607 d * A183037 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263827.P10174834982876529542

namespace A263827

/-- `∑{d}[n+1, A115607(#)*A183037((n+1)/#)]` -/
def P10174834982876529542.Spec : Prop :=
  ∀ n, P10174834982876529542.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P14234852582381323529

`∑{d}[n+1, A327095(#)*A366839((n+1)/#)]`
-/

namespace A263827.P14234852582381323529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327095 d * A366839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263827.P14234852582381323529

namespace A263827

/-- `∑{d}[n+1, A327095(#)*A366839((n+1)/#)]` -/
def P14234852582381323529.Spec : Prop :=
  ∀ n, P14234852582381323529.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P11859856901643848920

`∑{d}[n+1, A360156(#)*A360163((n+1)/#)]`
-/

namespace A263827.P11859856901643848920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A360156 d * A360163 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263827.P11859856901643848920

namespace A263827

/-- `∑{d}[n+1, A360156(#)*A360163((n+1)/#)]` -/
def P11859856901643848920.Spec : Prop :=
  ∀ n, P11859856901643848920.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P16379761867755689840

`∑{d}[n+1, A059841(#-1)*A074400((n+1)/#)]`
-/

namespace A263827.P16379761867755689840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A074400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263827.P16379761867755689840

namespace A263827

/-- `∑{d}[n+1, A059841(#-1)*A074400((n+1)/#)]` -/
def P16379761867755689840.Spec : Prop :=
  ∀ n, P16379761867755689840.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P10185378774494860011

`A263832(4*(n+1))`
-/

namespace A263827.P10185378774494860011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263832 (4 * (n + 1))

end

end A263827.P10185378774494860011

namespace A263827

/-- `A263832(4*(n+1))` -/
def P10185378774494860011.Spec : Prop :=
  ∀ n, P10185378774494860011.a n = A263827 (n + 1)

end A263827

/-! ## A263827.P4903561947169592740

`(A145396(2*(n+1))-A145398(2*(n+1)))/2`
-/

namespace A263827.P4903561947169592740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145396 (2 * (n + 1)) - A145398 (2 * (n + 1)) : ℚ) / 2

end

end A263827.P4903561947169592740

namespace A263827

/-- `(A145396(2*(n+1))-A145398(2*(n+1)))/2` -/
def P4903561947169592740.Spec : Prop :=
  ∀ n, P4903561947169592740.a n = (A263827 (n + 1) : ℚ)

end A263827

/-! ## A263827.P1377851133983358319

`A004277(A327096(n+1))`
-/

namespace A263827.P1377851133983358319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A327096 (n + 1)).toNat

end

end A263827.P1377851133983358319

namespace A263827

/-- `A004277(A327096(n+1))` -/
def P1377851133983358319.Spec : Prop :=
  ∀ n, P1377851133983358319.a n = A263827 (n + 1)

end A263827

/-!
# A263828: The number c_{P c pi_1(B_1)}(n) of the first amphicosm n-coverings over the first amphicosm.

The programs for A263828, the canonical program `A263828.P4137114202678511077` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263828 has offset 1).

The definition of A263828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263828.P470596296178208829

`∑{d}[n+1, A285895(#)]`
-/

namespace A263828.P470596296178208829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A285895 d

end

end A263828.P470596296178208829

namespace A263828

/-- `∑{d}[n+1, A285895(#)]` -/
def P470596296178208829.Spec : Prop :=
  ∀ n, P470596296178208829.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P4137114202678511077

`∑{d}[n+1, #*A069733((n+1)/#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A263828

/-- `∑{d}[n+1, #*A069733((n+1)/#)]` -/
def P4137114202678511077.Spec : Prop :=
  ∀ n, P4137114202678511077.a n = A263828 (n + 1)

theorem P4137114202678511077.correct : P4137114202678511077.Spec := by
  intro n
  simp only [A263828, Nat.add_sub_cancel]

end A263828

/-! ## A263828.P4760057844351679416

`∑{d}[n+1, A001227(#)*A080512((n+1)/#)]`
-/

namespace A263828.P4760057844351679416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A080512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P4760057844351679416

namespace A263828

/-- `∑{d}[n+1, A001227(#)*A080512((n+1)/#)]` -/
def P4760057844351679416.Spec : Prop :=
  ∀ n, P4760057844351679416.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P3083137125755901143

`∑{d}[n+1, A026741(#)*A069735((n+1)/#)]`
-/

namespace A263828.P3083137125755901143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A069735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P3083137125755901143

namespace A263828

/-- `∑{d}[n+1, A026741(#)*A069735((n+1)/#)]` -/
def P3083137125755901143.Spec : Prop :=
  ∀ n, P3083137125755901143.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P9589588607587187791

`∑{d}[n+1, A060648(#)*A098108((n+1)/#)]`
-/

namespace A263828.P9589588607587187791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A098108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P9589588607587187791

namespace A263828

/-- `∑{d}[n+1, A060648(#)*A098108((n+1)/#)]` -/
def P9589588607587187791.Spec : Prop :=
  ∀ n, P9589588607587187791.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P3333534582511968626

`∑{d}[n+1, A126246(#)*A133700((n+1)/#)]`
-/

namespace A263828.P3333534582511968626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126246 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P3333534582511968626

namespace A263828

/-- `∑{d}[n+1, A126246(#)*A133700((n+1)/#)]` -/
def P3333534582511968626.Spec : Prop :=
  ∀ n, P3333534582511968626.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P17870582904624737482

`∑{d}[n+1, A046897(#)*A234957((n+1)/#)]`
-/

namespace A263828.P17870582904624737482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046897 d * A234957 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P17870582904624737482

namespace A263828

/-- `∑{d}[n+1, A046897(#)*A234957((n+1)/#)]` -/
def P17870582904624737482.Spec : Prop :=
  ∀ n, P17870582904624737482.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P3545093938142923679

`∑{d}[n+1, A001615(#)*A298735((n+1)/#)]`
-/

namespace A263828.P3545093938142923679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A298735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P3545093938142923679

namespace A263828

/-- `∑{d}[n+1, A001615(#)*A298735((n+1)/#)]` -/
def P3545093938142923679.Spec : Prop :=
  ∀ n, P3545093938142923679.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P9406527956849591085

`∑{d}[n+1, A019590(#)*A327096((n+1)/#)]`
-/

namespace A263828.P9406527956849591085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A327096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P9406527956849591085

namespace A263828

/-- `∑{d}[n+1, A019590(#)*A327096((n+1)/#)]` -/
def P9406527956849591085.Spec : Prop :=
  ∀ n, P9406527956849591085.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P4904200352200014138

`∑{d}[n+1, A037227(#)*A327095((n+1)/#)]`
-/

namespace A263828.P4904200352200014138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037227 d * A327095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P4904200352200014138

namespace A263828

/-- `∑{d}[n+1, A037227(#)*A327095((n+1)/#)]` -/
def P4904200352200014138.Spec : Prop :=
  ∀ n, P4904200352200014138.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P12521024207444758166

`∑{d}[n+1, A060724(#)*A358839((n+1)/#)]`
-/

namespace A263828.P12521024207444758166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060724 d * A358839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P12521024207444758166

namespace A263828

/-- `∑{d}[n+1, A060724(#)*A358839((n+1)/#)]` -/
def P12521024207444758166.Spec : Prop :=
  ∀ n, P12521024207444758166.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P36753290632867983

`∑{d}[n+1, A284059(#)*A327122((n+1)/#)]`
-/

namespace A263828.P36753290632867983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A284059 d * A327122 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P36753290632867983

namespace A263828

/-- `∑{d}[n+1, A284059(#)*A327122((n+1)/#)]` -/
def P36753290632867983.Spec : Prop :=
  ∀ n, P36753290632867983.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P1492147511309513651

`∑{d}[n+1, A000034(#-1)*A002131((n+1)/#)]`
-/

namespace A263828.P1492147511309513651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000034 (d - 1) * A002131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P1492147511309513651

namespace A263828

/-- `∑{d}[n+1, A000034(#-1)*A002131((n+1)/#)]` -/
def P1492147511309513651.Spec : Prop :=
  ∀ n, P1492147511309513651.a n = A263828 (n + 1)

end A263828

/-! ## A263828.P282115636645543122

`∑{d}[n+1, A001227(#)*A257143((n+1)/#)]`
-/

namespace A263828.P282115636645543122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A257143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A263828.P282115636645543122

namespace A263828

/-- `∑{d}[n+1, A001227(#)*A257143((n+1)/#)]` -/
def P282115636645543122.Spec : Prop :=
  ∀ n, P282115636645543122.a n = A263828 (n + 1)

end A263828

/-!
# A263829: Total number c_{pi_1(B_2)}(n) of n-coverings over the second amphicosm.

The programs for A263829, there is no canonical definition to state claims against.
-/

/-! ## A263829.P8347950258937151194

`A263825(n+1)-n%2*A263828(n+1)`
-/

namespace A263829.P8347950258937151194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263825 (n + 1) - ((n % 2 : ℕ) : ℤ) * A263828 (n + 1)

end

end A263829.P8347950258937151194

/-!
# A263830: The number c_{Z^3,pi_1(B_2)}(2n) of 3-torus 2n-coverings over the second amphicosm.

The programs for A263830, the canonical program `A263830.P13012791147232885642` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263830 has offset 1).

The definition of A263830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263830.P16816836681720455158

`(A145398(n+1)+A001001(n+1))/2`
-/

namespace A263830.P16816836681720455158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145398 (n + 1) + A001001 (n + 1) : ℚ) / 2

end

end A263830.P16816836681720455158

namespace A263830

/-- `(A145398(n+1)+A001001(n+1))/2` -/
def P16816836681720455158.Spec : Prop :=
  ∀ n, P16816836681720455158.a n = (A263830 (n + 1) : ℚ)

end A263830

/-! ## A263830.P13012791147232885642

`A263826(n+1)-A263832(2*(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A263830

/-- `A263826(n+1)-A263832(2*(n+1))` -/
def P13012791147232885642.Spec : Prop :=
  ∀ n, P13012791147232885642.a n = A263830 (n + 1)

theorem P13012791147232885642.correct : P13012791147232885642.Spec := by
  intro n
  simp only [A263830, Nat.add_sub_cancel]

end A263830

/-! ## A263830.P160096927648306435

`A263825(2*(n+1))-3*A263827(n+1)`
-/

namespace A263830.P160096927648306435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263825 (2 * (n + 1)) - 3 * A263827 (n + 1)

end

end A263830.P160096927648306435

namespace A263830

/-- `A263825(2*(n+1))-3*A263827(n+1)` -/
def P160096927648306435.Spec : Prop :=
  ∀ n, P160096927648306435.a n = A263830 (n + 1)

end A263830

/-! ## A263830.P9406612504611294838

`∑{d}[n+1, A000203(#)*A236283((n+1)/#)]-A263832(2*(n+1))`
-/

namespace A263830.P9406612504611294838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A236283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A263832 (2 * (n + 1))

end

end A263830.P9406612504611294838

namespace A263830

/-- `∑{d}[n+1, A000203(#)*A236283((n+1)/#)]-A263832(2*(n+1))` -/
def P9406612504611294838.Spec : Prop :=
  ∀ n, P9406612504611294838.a n = A263830 (n + 1)

end A263830

/-! ## A263830.P4303944718556117617

`A263825(2*(n+1))-A008585(A263827(n+1))`
-/

namespace A263830.P4303944718556117617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263825 (2 * (n + 1)) - A008585 (A263827 (n + 1)).toNat

end

end A263830.P4303944718556117617

namespace A263830

/-- `A263825(2*(n+1))-A008585(A263827(n+1))` -/
def P4303944718556117617.Spec : Prop :=
  ∀ n, P4303944718556117617.a n = A263830 (n + 1)

end A263830

/-! ## A263830.P13934076188100033168

`A001281(A145398(n+1)+A001001(n+1))`
-/

namespace A263830.P13934076188100033168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A145398 (n + 1) + A001001 (n + 1)).toNat

end

end A263830.P13934076188100033168

namespace A263830

/-- `A001281(A145398(n+1)+A001001(n+1))` -/
def P13934076188100033168.Spec : Prop :=
  ∀ n, P13934076188100033168.a n = A263830 (n + 1)

end A263830

/-! ## A263830.P4347822663862266660

`A004525(A145398(n+1)+A001001(n+1))`
-/

namespace A263830.P4347822663862266660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A145398 (n + 1) + A001001 (n + 1)).toNat

end

end A263830.P4347822663862266660

namespace A263830

/-- `A004525(A145398(n+1)+A001001(n+1))` -/
def P4347822663862266660.Spec : Prop :=
  ∀ n, P4347822663862266660.a n = A263830 (n + 1)

end A263830

/-! ## A263830.P8279958723166453780

`A004525(A145398(n+1)+∑{d}[n+1, #*A000203(#)])`
-/

namespace A263830.P8279958723166453780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A145398 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 d).toNat

end

end A263830.P8279958723166453780

namespace A263830

/-- `A004525(A145398(n+1)+∑{d}[n+1, #*A000203(#)])` -/
def P8279958723166453780.Spec : Prop :=
  ∀ n, P8279958723166453780.a n = A263830 (n + 1)

end A263830

/-! ## A263830.P9814191563691405624

`A004526(A145398(n+1)+∑{d}[n+1, #*A000203(#)])`
-/

namespace A263830.P9814191563691405624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A145398 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 d).toNat

end

end A263830.P9814191563691405624

namespace A263830

/-- `A004526(A145398(n+1)+∑{d}[n+1, #*A000203(#)])` -/
def P9814191563691405624.Spec : Prop :=
  ∀ n, P9814191563691405624.a n = A263830 (n + 1)

end A263830

/-!
# A263831: Values of k such that the number of rooted trees with k nodes (A000081(k)) is odd.

The programs for A263831, there is no canonical definition to state claims against.
-/

/-! ## A263831.P12763285632031986529

`comp[A258592(n+1)]`
-/

namespace A263831.P12763285632031986529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A263831.P12763285632031986529

/-! ## A263831.P5001875245237106071

`lt[0, A000081(n)%2]`
-/

namespace A263831.P5001875245237106071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000081 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A263831.P5001875245237106071

/-! ## A263831.P9642382555377067606

`eq[1, gcd(2, A211192(n))]`
-/

namespace A263831.P9642382555377067606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A211192 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263831.P9642382555377067606

/-! ## A263831.P2152143710384026030

`eq[1, gcd(A000081(n), A053644(n))]`
-/

namespace A263831.P2152143710384026030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000081 n) (A053644 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A263831.P2152143710384026030

/-! ## A263831.P8491500307026019485

`eq[1, and(A000081(n), A057427(n))]`
-/

namespace A263831.P8491500307026019485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000081 n) (A057427 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263831.P8491500307026019485

/-!
# A263832: The number c_{Cc,pi_1(B_2)}(n) of the second amphicosm n-coverings over the second amphicosm.

The programs for A263832, the canonical program `A263832.P17990265328339962167` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263832 has offset 1).

The definition of A263832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263832.P17990265328339962167

`(3*A263828(n+1))%A263827(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A263832

/-- `(3*A263828(n+1))%A263827(n+1)` -/
def P17990265328339962167.Spec : Prop :=
  ∀ n, P17990265328339962167.a n = A263832 (n + 1)

theorem P17990265328339962167.correct : P17990265328339962167.Spec := by
  intro n
  simp only [A263832, Nat.add_sub_cancel]

end A263832

/-! ## A263832.P4665117233702906465

`A145396(n+1)%(A263828(n+1)+A145398(n+1))`
-/

namespace A263832.P4665117233702906465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145396 (n + 1)) (A263828 (n + 1) + A145398 (n + 1))

end

end A263832.P4665117233702906465

namespace A263832

/-- `A145396(n+1)%(A263828(n+1)+A145398(n+1))` -/
def P4665117233702906465.Spec : Prop :=
  ∀ n, P4665117233702906465.a n = A263832 (n + 1)

end A263832

/-! ## A263832.P4857053299673257160

`A008585(A263828(n+1))%A263827(n+1)`
-/

namespace A263832.P4857053299673257160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (A263828 (n + 1)).toNat) (A263827 (n + 1))

end

end A263832.P4857053299673257160

namespace A263832

/-- `A008585(A263828(n+1))%A263827(n+1)` -/
def P4857053299673257160.Spec : Prop :=
  ∀ n, P4857053299673257160.a n = A263832 (n + 1)

end A263832

/-! ## A263832.P1008091747843649632

`A008585(∑{d}[n+1, A001227(#)*A080512((n+1)/#)])%(2*A327096(n+1))`
-/

namespace A263832.P1008091747843649632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (∑ d ∈ Nat.divisors (f1 n), A001227 d * A080512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat) (2 * A327096 (n + 1))

end

end A263832.P1008091747843649632

namespace A263832

/-- `A008585(∑{d}[n+1, A001227(#)*A080512((n+1)/#)])%(2*A327096(n+1))` -/
def P1008091747843649632.Spec : Prop :=
  ∀ n, P1008091747843649632.a n = A263832 (n + 1)

end A263832

/-! ## A263832.P13884557907030203203

`A008585(∑{d}[n+1, A001227(#)*A257143((n+1)/#)])%(2*A327096(n+1))`
-/

namespace A263832.P13884557907030203203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (∑ d ∈ Nat.divisors (f1 n), A001227 d * A257143 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat) (2 * A327096 (n + 1))

end

end A263832.P13884557907030203203

namespace A263832

/-- `A008585(∑{d}[n+1, A001227(#)*A257143((n+1)/#)])%(2*A327096(n+1))` -/
def P13884557907030203203.Spec : Prop :=
  ∀ n, P13884557907030203203.a n = A263832 (n + 1)

end A263832

/-! ## A263832.P5241004167907747251

`A008585(∑{d}[n+1, A126246(#)*A133700((n+1)/#)])%(2*A327096(n+1))`
-/

namespace A263832.P5241004167907747251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (∑ d ∈ Nat.divisors (f1 n), A126246 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat) (2 * A327096 (n + 1))

end

end A263832.P5241004167907747251

namespace A263832

/-- `A008585(∑{d}[n+1, A126246(#)*A133700((n+1)/#)])%(2*A327096(n+1))` -/
def P5241004167907747251.Spec : Prop :=
  ∀ n, P5241004167907747251.a n = A263832 (n + 1)

end A263832

/-! ## A263832.P14282328294016870542

`A008585(∑{d}[n+1, A046897(#)*A234957((n+1)/#)])%(2*A327096(n+1))`
-/

namespace A263832.P14282328294016870542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (∑ d ∈ Nat.divisors (f1 n), A046897 d * A234957 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat) (2 * A327096 (n + 1))

end

end A263832.P14282328294016870542

namespace A263832

/-- `A008585(∑{d}[n+1, A046897(#)*A234957((n+1)/#)])%(2*A327096(n+1))` -/
def P14282328294016870542.Spec : Prop :=
  ∀ n, P14282328294016870542.a n = A263832 (n + 1)

end A263832

/-! ## A263832.P11644735090339614701

`A008585(∑{d}[n+1, A001615(#)*A298735((n+1)/#)])%(2*A327096(n+1))`
-/

namespace A263832.P11644735090339614701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 (∑ d ∈ Nat.divisors (f1 n), A001615 d * A298735 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat) (2 * A327096 (n + 1))

end

end A263832.P11644735090339614701

namespace A263832

/-- `A008585(∑{d}[n+1, A001615(#)*A298735((n+1)/#)])%(2*A327096(n+1))` -/
def P11644735090339614701.Spec : Prop :=
  ∀ n, P11644735090339614701.a n = A263832 (n + 1)

end A263832

/-!
# A263835: Sprague-Grundy sequence G(i-Mark({4,8}, {2})).

The programs for A263835, there is no canonical definition to state claims against.
-/

/-! ## A263835.P6837581946356723377

`A336121(A293321(n))`
-/

namespace A263835.P6837581946356723377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A293321 n).toNat

end

end A263835.P6837581946356723377

/-! ## A263835.P13581267023428205131

`A336121(Δ[A293320(n)])`
-/

namespace A263835.P13581267023428205131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (f1 (n + 1) - f1 n).toNat

end

end A263835.P13581267023428205131

/-! ## A263835.P1780260654220803993

`A336312(Δ[A293320(n)])-1`
-/

namespace A263835.P1780260654220803993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (f1 (n + 1) - f1 n).toNat - 1

end

end A263835.P1780260654220803993

/-! ## A263835.P8128381146608145538

`A336121(A293320(n+1)-A293320(n))`
-/

namespace A263835.P8128381146608145538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336121 (A293320 (n + 1) - A293320 n).toNat

end

end A263835.P8128381146608145538

/-! ## A263835.P2739052314994533883

`A336312(A293321(n))-A109008(2*n+3)`
-/

namespace A263835.P2739052314994533883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (A293321 n).toNat - A109008 (2 * n + 3)

end

end A263835.P2739052314994533883

/-!
# A263837: Non-abundant numbers (or nonabundant numbers): complement of A005101; numbers k for which sigma(k) <= 2*k.

The programs for A263837, the canonical program `A263837.P8739801485308913635` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263837 has offset 1).

The definition of A263837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263837.P14094334501940674732

`record[A378665(n+1)]`
-/

namespace A263837.P14094334501940674732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263837.P14094334501940674732

namespace A263837

/-- `record[A378665(n+1)]` -/
def P14094334501940674732.Spec : Prop :=
  ∀ n, P14094334501940674732.a n = A263837 (n + 1)

end A263837

/-! ## A263837.P12066118082004757925

`eq[1, A294935(n+1)]+1`
-/

namespace A263837.P12066118082004757925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263837.P12066118082004757925

namespace A263837

/-- `eq[1, A294935(n+1)]+1` -/
def P12066118082004757925.Spec : Prop :=
  ∀ n, (P12066118082004757925.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P14845700934387895371

`eq[1, A378660(n+1)]+1`
-/

namespace A263837.P14845700934387895371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263837.P14845700934387895371

namespace A263837

/-- `eq[1, A378660(n+1)]+1` -/
def P14845700934387895371.Spec : Prop :=
  ∀ n, (P14845700934387895371.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P8739801485308913635

`lt[A082551(n+1), 1]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263837

/-- `lt[A082551(n+1), 1]+1` -/
def P8739801485308913635.Spec : Prop :=
  ∀ n, (P8739801485308913635.a n : ℤ) = A263837 (n + 1)

theorem P8739801485308913635.correct : P8739801485308913635.Spec := by
  intro n
  simp only [A263837, Nat.add_sub_cancel]

end A263837

/-! ## A263837.P810906349563640699

`lt[A294937(n+1), 1]+1`
-/

namespace A263837.P810906349563640699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263837.P810906349563640699

namespace A263837

/-- `lt[A294937(n+1), 1]+1` -/
def P810906349563640699.Spec : Prop :=
  ∀ n, (P810906349563640699.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P2572416690706872899

`lt[A318679(n+1), 1]+1`
-/

namespace A263837.P2572416690706872899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263837.P2572416690706872899

namespace A263837

/-- `lt[A318679(n+1), 1]+1` -/
def P2572416690706872899.Spec : Prop :=
  ∀ n, (P2572416690706872899.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P12905031029672331455

`lt[A326146(n+1), n]+1`
-/

namespace A263837.P12905031029672331455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326146 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263837.P12905031029672331455

namespace A263837

/-- `lt[A326146(n+1), n]+1` -/
def P12905031029672331455.Spec : Prop :=
  ∀ n, (P12905031029672331455.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P122312331957498223

`comp[A005101(n+1)-1]+1`
-/

namespace A263837.P122312331957498223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A263837.P122312331957498223

namespace A263837

/-- `comp[A005101(n+1)-1]+1` -/
def P122312331957498223.Spec : Prop :=
  ∀ n, (P122312331957498223.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P4725173013667628078

`eq[1, A294890(n+1)+1]+1`
-/

namespace A263837.P4725173013667628078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294890 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263837.P4725173013667628078

namespace A263837

/-- `eq[1, A294890(n+1)+1]+1` -/
def P4725173013667628078.Spec : Prop :=
  ∀ n, (P4725173013667628078.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P7272321399713717002

`lt[A000203(n+1), 2*(n+2)]+1`
-/

namespace A263837.P7272321399713717002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263837.P7272321399713717002

namespace A263837

/-- `lt[A000203(n+1), 2*(n+2)]+1` -/
def P7272321399713717002.Spec : Prop :=
  ∀ n, (P7272321399713717002.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P8699997014450036070

`lt[n, A033879(n+1)+n+1]+1`
-/

namespace A263837.P8699997014450036070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A263837.P8699997014450036070

namespace A263837

/-- `lt[n, A033879(n+1)+n+1]+1` -/
def P8699997014450036070.Spec : Prop :=
  ∀ n, (P8699997014450036070.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P3614271683707305874

`lt[A000203(abs(1-n)+1), n+1+n]`
-/

namespace A263837.P3614271683707305874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A263837.P3614271683707305874

namespace A263837

/-- `lt[A000203(abs(1-n)+1), n+1+n]` -/
def P3614271683707305874.Spec : Prop :=
  ∀ n, (P3614271683707305874.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P9245020801573154849

`eq[A294887(n+1), A294937(n+1)]+1`
-/

namespace A263837.P9245020801573154849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A263837.P9245020801573154849

namespace A263837

/-- `eq[A294887(n+1), A294937(n+1)]+1` -/
def P9245020801573154849.Spec : Prop :=
  ∀ n, (P9245020801573154849.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P10414751824850179033

`eq[A296075(n+1), A318678(n+1)]+1`
-/

namespace A263837.P10414751824850179033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A263837.P10414751824850179033

namespace A263837

/-- `eq[A296075(n+1), A318678(n+1)]+1` -/
def P10414751824850179033.Spec : Prop :=
  ∀ n, (P10414751824850179033.a n : ℤ) = A263837 (n + 1)

end A263837

/-! ## A263837.P10697507821967550421

`filter[A392650(n+1), A294935(#)]`
-/

namespace A263837.P10697507821967550421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A263837.P10697507821967550421

namespace A263837

/-- `filter[A392650(n+1), A294935(#)]` -/
def P10697507821967550421.Spec : Prop :=
  ∀ n, P10697507821967550421.a n = A263837 (n + 1)

end A263837

/-! ## A263837.P1603170049822314361

`filter[A168186(n+1), A294935(#)]`
-/

namespace A263837.P1603170049822314361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A263837.P1603170049822314361

namespace A263837

/-- `filter[A168186(n+1), A294935(#)]` -/
def P1603170049822314361.Spec : Prop :=
  ∀ n, P1603170049822314361.a n = A263837 (n + 1)

end A263837

/-! ## A263837.P14835168926457047601

`filter[A064598(n+1), A294935(#)]`
-/

namespace A263837.P14835168926457047601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A263837.P14835168926457047601

namespace A263837

/-- `filter[A064598(n+1), A294935(#)]` -/
def P14835168926457047601.Spec : Prop :=
  ∀ n, P14835168926457047601.a n = A263837 (n + 1)

end A263837

/-! ## A263837.P12984831676131224007

`filter[A265711(n+1), A294935(#)]`
-/

namespace A263837.P12984831676131224007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A263837.P12984831676131224007

namespace A263837

/-- `filter[A265711(n+1), A294935(#)]` -/
def P12984831676131224007.Spec : Prop :=
  ∀ n, P12984831676131224007.a n = A263837 (n + 1)

end A263837

/-! ## A263837.P14882566171036866273

`filter[A110303(n+1), A294935(#)]`
-/

namespace A263837.P14882566171036866273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A263837.P14882566171036866273

namespace A263837

/-- `filter[A110303(n+1), A294935(#)]` -/
def P14882566171036866273.Spec : Prop :=
  ∀ n, P14882566171036866273.a n = A263837 (n + 1)

end A263837

/-!
# A263838: Reversal numbers: union of A257719 and A257720.

The programs for A263838, there is no canonical definition to state claims against.
-/

/-! ## A263838.P18125637390976925413

`∪[A257719(n+1), A257720(n+1)]`
-/

namespace A263838.P18125637390976925413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A263838.P18125637390976925413

/-!
# A263841: Expansion of (1 - 2*x - x^2)/(sqrt(1+x)*(1-3*x)^(3/2)*2*x) - 1/(2*x).

The programs for A263841, the canonical program `A263841.P10709210720201135454` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263841 has offset 0).

The definition of A263841 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263841.P10709210720201135454

`A005773(n+1)+A132894(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263841

/-- `A005773(n+1)+A132894(n)` -/
def P10709210720201135454.Spec : Prop :=
  ∀ n, P10709210720201135454.a n = A263841 n

theorem P10709210720201135454.correct : P10709210720201135454.Spec := by
  intro n
  simp only [A263841]

end A263841

/-! ## A263841.P11552644662491958873

`A092690(n)+Δ[A097861(n)]`
-/

namespace A263841.P11552644662491958873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 n + (f1 (n + 1) - f1 n)

end

end A263841.P11552644662491958873

namespace A263841

/-- `A092690(n)+Δ[A097861(n)]` -/
def P11552644662491958873.Spec : Prop :=
  ∀ n, P11552644662491958873.a n = A263841 n

end A263841

/-! ## A263841.P8127622300147215660

`(ratio[A005773(n)]+n)*A005773(n)`
-/

namespace A263841.P8127622300147215660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + (n : ℚ)) * (A005773 n : ℚ)

end

end A263841.P8127622300147215660

namespace A263841

/-- `(ratio[A005773(n)]+n)*A005773(n)` -/
def P8127622300147215660.Spec : Prop :=
  ∀ n, P8127622300147215660.a n = (A263841 n : ℚ)

end A263841

/-! ## A263841.P8382230056144283670

`A092690(n)+A005213(2*n+1)`
-/

namespace A263841.P8382230056144283670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092690 n + A005213 (2 * n + 1)

end

end A263841.P8382230056144283670

namespace A263841

/-- `A092690(n)+A005213(2*n+1)` -/
def P8382230056144283670.Spec : Prop :=
  ∀ n, P8382230056144283670.a n = A263841 n

end A263841

/-! ## A263841.P12062417307966883583

`A005773(n+1)+n*A307789(n+1)`
-/

namespace A263841.P12062417307966883583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (n : ℤ) * A307789 (n + 1)

end

end A263841.P12062417307966883583

namespace A263841

/-- `A005773(n+1)+n*A307789(n+1)` -/
def P12062417307966883583.Spec : Prop :=
  ∀ n, P12062417307966883583.a n = A263841 n

end A263841

/-! ## A263841.P7106522739042463755

`A132894(n)+A038622(∑[n])`
-/

namespace A263841.P7106522739042463755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n + A038622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263841.P7106522739042463755

namespace A263841

/-- `A132894(n)+A038622(∑[n])` -/
def P7106522739042463755.Spec : Prop :=
  ∀ n, P7106522739042463755.a n = A263841 n

end A263841

/-! ## A263841.P14049499111029118941

`A132894(n)+record[A038622(n)]`
-/

namespace A263841.P14049499111029118941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132894 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263841.P14049499111029118941

namespace A263841

/-- `A132894(n)+record[A038622(n)]` -/
def P14049499111029118941.Spec : Prop :=
  ∀ n, P14049499111029118941.a n = A263841 n

end A263841

/-!
# A263843: Reversion of g.f. for A162395 (squares with signs).

The programs for A263843, there is no canonical definition to state claims against.
-/

/-! ## A263843.P11238132429920367963

`A007297(n+1)-floor(acot(n))`
-/

namespace A263843.P11238132429920367963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007297 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A263843.P11238132429920367963

/-! ## A263843.P11358458642175009956

`A007297(n+1)-A000007(n)`
-/

namespace A263843.P11358458642175009956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007297 (n + 1) - A000007 n

end

end A263843.P11358458642175009956

/-! ## A263843.P17408020176452701412

`A007297(n+1)*A057427(n)`
-/

namespace A263843.P17408020176452701412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007297 (n + 1) * A057427 n

end

end A263843.P17408020176452701412

/-! ## A263843.P16999363546998339224

`char[A007306(n)]*A007297(n+1)`
-/

namespace A263843.P16999363546998339224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007297 (n + 1)

end

end A263843.P16999363546998339224

/-! ## A263843.P6986114274110462404

`char[A207790(n+1)]*A007297(n+1)`
-/

namespace A263843.P6986114274110462404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007297 (n + 1)

end

end A263843.P6986114274110462404

/-! ## A263843.P1728862473655232133

`char[A307150(n+1)]*A007297(n+1)`
-/

namespace A263843.P1728862473655232133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307150 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A007297 (n + 1)

end

end A263843.P1728862473655232133

/-! ## A263843.P14127177870253811892

`A007297(n+1)*A018783(A008578(n+1))`
-/

namespace A263843.P14127177870253811892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007297 (n + 1) * A018783 (A008578 (n + 1)).toNat

end

end A263843.P14127177870253811892

/-! ## A263843.P10392270890905784344

`A000007(A000007(n)*A007297(n+1))*A007297(n+1)`
-/

namespace A263843.P10392270890905784344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A007297 (n + 1)).toNat * A007297 (n + 1)

end

end A263843.P10392270890905784344

/-! ## A263843.P8541424538249656417

`A007297(n+1)%A078531(n)`
-/

namespace A263843.P8541424538249656417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007297 (n + 1)) (A078531 n)

end

end A263843.P8541424538249656417

/-! ## A263843.P1600026452523982827

`(2*A078531(n))%A085614(n+1)`
-/

namespace A263843.P1600026452523982827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A078531 n) (A085614 (n + 1))

end

end A263843.P1600026452523982827

/-!
# A263844: Constant term in expansion of n in Fraenkel's exotic ternary representation.

The programs for A263844, the canonical program `A263844.P203203564096424831` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263844 has offset 1).

The definition of A263844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263844.P10900256353619100172

`A131555(A286992(n+1))`
-/

namespace A263844.P10900256353619100172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131555 (A286992 (n + 1)).toNat

end

end A263844.P10900256353619100172

namespace A263844

/-- `A131555(A286992(n+1))` -/
def P10900256353619100172.Spec : Prop :=
  ∀ n, P10900256353619100172.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P14624652833563568419

`A282864(Δ[A286687(n+1)])-1`
-/

namespace A263844.P14624652833563568419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282864 (f1 (n + 1) - f1 n).toNat - 1

end

end A263844.P14624652833563568419

namespace A263844

/-- `A282864(Δ[A286687(n+1)])-1` -/
def P14624652833563568419.Spec : Prop :=
  ∀ n, P14624652833563568419.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P12534873596411433940

`A219200(Δ[A286687(n+1)]+3)`
-/

namespace A263844.P12534873596411433940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219200 ((f1 (n + 1) - f1 n + 3).toNat + 41)

end

end A263844.P12534873596411433940

namespace A263844

/-- `A219200(Δ[A286687(n+1)]+3)` -/
def P12534873596411433940.Spec : Prop :=
  ∀ n, P12534873596411433940.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P203203564096424831

`2-(A188374(n+1)+A080764(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263844

/-- `2-(A188374(n+1)+A080764(n))` -/
def P203203564096424831.Spec : Prop :=
  ∀ n, P203203564096424831.a n = A263844 (n + 1)

theorem P203203564096424831.correct : P203203564096424831.Spec := by
  intro n
  simp only [A263844, Nat.add_sub_cancel]

end A263844

/-! ## A263844.P12408272981594216267

`A270788(6-Δ[A286687(n+1)])-1`
-/

namespace A263844.P12408272981594216267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270788 (6 - (f1 (n + 1) - f1 n)).toNat - 1

end

end A263844.P12408272981594216267

namespace A263844

/-- `A270788(6-Δ[A286687(n+1)])-1` -/
def P12408272981594216267.Spec : Prop :=
  ∀ n, P12408272981594216267.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P14970838074783316841

`A308104(Δ[A286687(n+1)]+1)%3`
-/

namespace A263844.P14970838074783316841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308104 (f1 (n + 1) - f1 n + 1).toNat) 3

end

end A263844.P14970838074783316841

namespace A263844

/-- `A308104(Δ[A286687(n+1)]+1)%3` -/
def P14970838074783316841.Spec : Prop :=
  ∀ n, P14970838074783316841.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P10060324537183253042

`Δ[A003152(n+2)]%A261865(n+1)`
-/

namespace A263844.P10060324537183253042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A261865 (n + 1))

end

end A263844.P10060324537183253042

namespace A263844

/-- `Δ[A003152(n+2)]%A261865(n+1)` -/
def P10060324537183253042.Spec : Prop :=
  ∀ n, P10060324537183253042.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P14219778483242943863

`A171588(n+1)+1-A188374(n+1)`
-/

namespace A263844.P14219778483242943863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) + (1 - A188374 (n + 1))

end

end A263844.P14219778483242943863

namespace A263844

/-- `A171588(n+1)+1-A188374(n+1)` -/
def P14219778483242943863.Spec : Prop :=
  ∀ n, P14219778483242943863.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P7486106777153837165

`Δ[A182769(n+1)]%Δ[A182769(n+2)]`
-/

namespace A263844.P7486106777153837165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182769 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A263844.P7486106777153837165

namespace A263844

/-- `Δ[A182769(n+1)]%Δ[A182769(n+2)]` -/
def P7486106777153837165.Spec : Prop :=
  ∀ n, P7486106777153837165.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P14208291509026763777

`(3-Δ[A006337(A003152(n+1)+1)])%3`
-/

namespace A263844.P14208291509026763777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A003152 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 - (f1 (n + 1) - f1 n)) 3

end

end A263844.P14208291509026763777

namespace A263844

/-- `(3-Δ[A006337(A003152(n+1)+1)])%3` -/
def P14208291509026763777.Spec : Prop :=
  ∀ n, P14208291509026763777.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P18402471710405193376

`A006337(∑[A080764(n)])-A080764(n)`
-/

namespace A263844.P18402471710405193376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A080764 n

end

end A263844.P18402471710405193376

namespace A263844

/-- `A006337(∑[A080764(n)])-A080764(n)` -/
def P18402471710405193376.Spec : Prop :=
  ∀ n, P18402471710405193376.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P6830536108465699077

`A286686(n+2)-(A286687(n+1)+A080764(n))`
-/

namespace A263844.P6830536108465699077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 2) - (A286687 (n + 1) + A080764 n)

end

end A263844.P6830536108465699077

namespace A263844

/-- `A286686(n+2)-(A286687(n+1)+A080764(n))` -/
def P6830536108465699077.Spec : Prop :=
  ∀ n, P6830536108465699077.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P9069483464617631327

`A171588(n+1)+A171588(n+1)+A171588(n+2)`
-/

namespace A263844.P9069483464617631327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) + (A171588 (n + 1) + A171588 (n + 2))

end

end A263844.P9069483464617631327

namespace A263844

/-- `A171588(n+1)+A171588(n+1)+A171588(n+2)` -/
def P9069483464617631327.Spec : Prop :=
  ∀ n, P9069483464617631327.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P4028001681535396878

`A307247(A003151(n+1))`
-/

namespace A263844.P4028001681535396878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A003151 (n + 1)).toNat

end

end A263844.P4028001681535396878

namespace A263844

/-- `A307247(A003151(n+1))` -/
def P4028001681535396878.Spec : Prop :=
  ∀ n, P4028001681535396878.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P317646164940801355

`A307247(A080652(n+1))`
-/

namespace A263844.P317646164940801355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A080652 (n + 1)).toNat

end

end A263844.P317646164940801355

namespace A263844

/-- `A307247(A080652(n+1))` -/
def P317646164940801355.Spec : Prop :=
  ∀ n, P317646164940801355.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P4279360138082877941

`A307247(A082845(n+1))`
-/

namespace A263844.P4279360138082877941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A082845 (n + 1)).toNat

end

end A263844.P4279360138082877941

namespace A263844

/-- `A307247(A082845(n+1))` -/
def P4279360138082877941.Spec : Prop :=
  ∀ n, P4279360138082877941.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P5620646037691629973

`A307247(A188376(n+1))`
-/

namespace A263844.P5620646037691629973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A188376 (n + 1)).toNat

end

end A263844.P5620646037691629973

namespace A263844

/-- `A307247(A188376(n+1))` -/
def P5620646037691629973.Spec : Prop :=
  ∀ n, P5620646037691629973.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P1684061678319783383

`A307247(A184922(n+1)-n)`
-/

namespace A263844.P1684061678319783383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A184922 (n + 1) - (n : ℤ)).toNat

end

end A263844.P1684061678319783383

namespace A263844

/-- `A307247(A184922(n+1)-n)` -/
def P1684061678319783383.Spec : Prop :=
  ∀ n, P1684061678319783383.a n = A263844 (n + 1)

end A263844

/-! ## A263844.P6812594704982661948

`A307247(A001952(n+1)-(n+1))`
-/

namespace A263844.P6812594704982661948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307247 (A001952 (n + 1) - (n + 1 : ℤ)).toNat

end

end A263844.P6812594704982661948

namespace A263844

/-- `A307247(A001952(n+1)-(n+1))` -/
def P6812594704982661948.Spec : Prop :=
  ∀ n, P6812594704982661948.a n = A263844 (n + 1)

end A263844

/-!
# A263845: A258059(n)+1.

The programs for A263845, the canonical program `A263845.P12048050640187622971` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263845 has offset 0).

The definition of A263845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263845.P12048050640187622971

`val(12*n+4, 4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263845

/-- `val(12*n+4, 4)` -/
def P12048050640187622971.Spec : Prop :=
  ∀ n, (P12048050640187622971.a n : ℤ) = A263845 n

theorem P12048050640187622971.correct : P12048050640187622971.Spec := by
  intro n
  simp only [A263845]

end A263845

/-! ## A263845.P9606483225228304735

`val(n+1+n+n, 4)+1`
-/

namespace A263845.P9606483225228304735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1 + n + n) 4 + 1

end

end A263845.P9606483225228304735

namespace A263845

/-- `val(n+1+n+n, 4)+1` -/
def P9606483225228304735.Spec : Prop :=
  ∀ n, (P9606483225228304735.a n : ℤ) = A263845 n

end A263845

/-! ## A263845.P7622718814254469962

`floor(A087229(n)/2)`
-/

namespace A263845.P7622718814254469962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087229 n : ℚ) / 2⌋

end

end A263845.P7622718814254469962

namespace A263845

/-- `floor(A087229(n)/2)` -/
def P7622718814254469962.Spec : Prop :=
  ∀ n, P7622718814254469962.a n = A263845 n

end A263845

/-! ## A263845.P3269171221807392467

`A235127(3*n+1)+1`
-/

namespace A263845.P3269171221807392467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (3 * n + 1) + 1

end

end A263845.P3269171221807392467

namespace A263845

/-- `A235127(3*n+1)+1` -/
def P3269171221807392467.Spec : Prop :=
  ∀ n, P3269171221807392467.a n = A263845 n

end A263845

/-! ## A263845.P2656476416537282595

`A008619(val(Δ[n²]+n, 2))`
-/

namespace A263845.P2656476416537282595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat 2)

end

end A263845.P2656476416537282595

namespace A263845

/-- `A008619(val(Δ[n²]+n, 2))` -/
def P2656476416537282595.Spec : Prop :=
  ∀ n, P2656476416537282595.a n = A263845 n

end A263845

/-! ## A263845.P10655828698012416759

`a(n-1)*A258059(n)+1` with `a(0)=1`
-/

namespace A263845.P10655828698012416759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A258059 n + 1

end

end A263845.P10655828698012416759

namespace A263845

/-- `a(n-1)*A258059(n)+1` -/
def P10655828698012416759.Spec : Prop :=
  ∀ n, P10655828698012416759.a n = A263845 n

end A263845

/-! ## A263845.P6350593726354078751

`A115362(A004468(n))`
-/

namespace A263845.P6350593726354078751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A004468 n).toNat

end

end A263845.P6350593726354078751

namespace A263845

/-- `A115362(A004468(n))` -/
def P6350593726354078751.Spec : Prop :=
  ∀ n, P6350593726354078751.a n = A263845 n

end A263845

/-! ## A263845.P10189461037260444262

`A115362(A048647(n))`
-/

namespace A263845.P10189461037260444262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A048647 n).toNat

end

end A263845.P10189461037260444262

namespace A263845

/-- `A115362(A048647(n))` -/
def P10189461037260444262.Spec : Prop :=
  ∀ n, P10189461037260444262.a n = A263845 n

end A263845

/-! ## A263845.P16432602139415756920

`A244415(A016933(n))`
-/

namespace A263845.P16432602139415756920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A016933 n).toNat

end

end A263845.P16432602139415756920

namespace A263845

/-- `A244415(A016933(n))` -/
def P16432602139415756920.Spec : Prop :=
  ∀ n, P16432602139415756920.a n = A263845 n

end A263845

/-! ## A263845.P2743202748464376789

`A057554(A087229(n)²)`
-/

namespace A263845.P2743202748464376789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A087229 n ^ 2).toNat

end

end A263845.P2743202748464376789

namespace A263845

/-- `A057554(A087229(n)²)` -/
def P2743202748464376789.Spec : Prop :=
  ∀ n, P2743202748464376789.a n = A263845 n

end A263845

/-! ## A263845.P1073986388262935804

`A001511(A292371(n)+1)`
-/

namespace A263845.P1073986388262935804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A292371 n + 1).toNat

end

end A263845.P1073986388262935804

namespace A263845

/-- `A001511(A292371(n)+1)` -/
def P1073986388262935804.Spec : Prop :=
  ∀ n, P1073986388262935804.a n = A263845 n

end A263845

/-! ## A263845.P13828333019583998288

`A004526(A371093(n))+1`
-/

namespace A263845.P13828333019583998288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A371093 n).toNat + 1

end

end A263845.P13828333019583998288

namespace A263845

/-- `A004526(A371093(n))+1` -/
def P13828333019583998288.Spec : Prop :=
  ∀ n, P13828333019583998288.a n = A263845 n

end A263845

/-! ## A263845.P4072187713469549997

`A244415(A165355(n))+1`
-/

namespace A263845.P4072187713469549997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A165355 n).toNat + 1

end

end A263845.P4072187713469549997

namespace A263845

/-- `A244415(A165355(n))+1` -/
def P4072187713469549997.Spec : Prop :=
  ∀ n, P4072187713469549997.a n = A263845 n

end A263845

/-! ## A263845.P2758916247119744622

`A254046(A215090(n+1))`
-/

namespace A263845.P2758916247119744622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254046 (A215090 (n + 1)).toNat

end

end A263845.P2758916247119744622

namespace A263845

/-- `A254046(A215090(n+1))` -/
def P2758916247119744622.Spec : Prop :=
  ∀ n, P2758916247119744622.a n = A263845 n

end A263845

/-! ## A263845.P17293442577566860081

`A244415(A047255(n+1))+1`
-/

namespace A263845.P17293442577566860081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A047255 (n + 1)).toNat + 1

end

end A263845.P17293442577566860081

namespace A263845

/-- `A244415(A047255(n+1))+1` -/
def P17293442577566860081.Spec : Prop :=
  ∀ n, P17293442577566860081.a n = A263845 n

end A263845

/-! ## A263845.P3129046292517942249

`A007814(A292371(n)+1)+1`
-/

namespace A263845.P3129046292517942249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A292371 n + 1).toNat + 1

end

end A263845.P3129046292517942249

namespace A263845

/-- `A007814(A292371(n)+1)+1` -/
def P3129046292517942249.Spec : Prop :=
  ∀ n, P3129046292517942249.a n = A263845 n

end A263845

/-! ## A263845.P18426181303960512390

`A244415(A063914(n+1))+1`
-/

namespace A263845.P18426181303960512390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A063914 (n + 1)).toNat + 1

end

end A263845.P18426181303960512390

namespace A263845

/-- `A244415(A063914(n+1))+1` -/
def P18426181303960512390.Spec : Prop :=
  ∀ n, P18426181303960512390.a n = A263845 n

end A263845

/-! ## A263845.P7401328879445788579

`A008615(A138750(A016933(A375961(n))))`
-/

namespace A263845.P7401328879445788579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A138750 (A016933 (A375961 n).toNat).toNat).toNat

end

end A263845.P7401328879445788579

namespace A263845

/-- `A008615(A138750(A016933(A375961(n))))` -/
def P7401328879445788579.Spec : Prop :=
  ∀ n, P7401328879445788579.a n = A263845 n

end A263845

/-! ## A263845.P5321940033939947497

`A115362(A048724(n))`
-/

namespace A263845.P5321940033939947497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 (A048724 n).toNat

end

end A263845.P5321940033939947497

namespace A263845

/-- `A115362(A048724(n))` -/
def P5321940033939947497.Spec : Prop :=
  ∀ n, P5321940033939947497.a n = A263845 n

end A263845

/-! ## A263845.P5828064449417505874

`A057554((A072078(3*n+1)+1)²)`
-/

namespace A263845.P5828064449417505874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 ((A072078 (3 * n + 1) + 1) ^ 2).toNat

end

end A263845.P5828064449417505874

namespace A263845

/-- `A057554((A072078(3*n+1)+1)²)` -/
def P5828064449417505874.Spec : Prop :=
  ∀ n, P5828064449417505874.a n = A263845 n

end A263845

/-!
# A263846: Floor of cube root of n-th prime.

The programs for A263846, the canonical program `A263846.P12034222114530177158` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263846 has offset 1).

The definition of A263846 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A048766, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A263846.P12034222114530177158

`A048766(A000040(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263846

/-- `A048766(A000040(n+1))` -/
def P12034222114530177158.Spec : Prop :=
  ∀ n, P12034222114530177158.a n = A263846 (n + 1)

theorem P12034222114530177158.correct : P12034222114530177158.Spec := by
  intro n
  simp only [A263846, Nat.add_sub_cancel]

end A263846

/-! ## A263846.P7574385107063709339

`floor(root(p?[round(8*n/7)]², 6))`
-/

namespace A263846.P7574385107063709339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A263846.P7574385107063709339

namespace A263846

/-- `floor(root(p?[round(8*n/7)]², 6))` -/
def P7574385107063709339.Spec : Prop :=
  ∀ n, P7574385107063709339.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P5009795242808556865

`∑[char[∑[A060199(n)]]]`
-/

namespace A263846.P5009795242808556865
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263846.P5009795242808556865

namespace A263846

/-- `∑[char[∑[A060199(n)]]]` -/
def P5009795242808556865.Spec : Prop :=
  ∀ n, (P5009795242808556865.a n : ℤ) = A263846 (n + 1)

end A263846

/-! ## A263846.P9475978538705861284

`∑[char[A038098(n+1)]]`
-/

namespace A263846.P9475978538705861284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263846.P9475978538705861284

namespace A263846

/-- `∑[char[A038098(n+1)]]` -/
def P9475978538705861284.Spec : Prop :=
  ∀ n, (P9475978538705861284.a n : ℤ) = A263846 (n + 1)

end A263846

/-! ## A263846.P13076875205489603310

`floor(root(p?[xor(1, n)], 3))`
-/

namespace A263846.P13076875205489603310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A263846.P13076875205489603310

namespace A263846

/-- `floor(root(p?[xor(1, n)], 3))` -/
def P13076875205489603310.Spec : Prop :=
  ∀ n, P13076875205489603310.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P4966197022476018820

`ceil(root(p?[xor(1, n)], 3))-1`
-/

namespace A263846.P4966197022476018820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (3 : ℝ))⌉ - 1

end

end A263846.P4966197022476018820

namespace A263846

/-- `ceil(root(p?[xor(1, n)], 3))-1` -/
def P4966197022476018820.Spec : Prop :=
  ∀ n, P4966197022476018820.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P5893623445711316925

`floor(root(p?[a(n-2)+2], 3))` with `a(0)=1, a(1)=0`
-/

namespace A263846.P5893623445711316925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A263846.P5893623445711316925

namespace A263846

/-- `floor(root(p?[a(n-2)+2], 3))` -/
def P5893623445711316925.Spec : Prop :=
  ∀ n, P5893623445711316925.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P14207042136839391426

`floor(root(p?[n-((-1)^n+2)], 3))`
-/

namespace A263846.P14207042136839391426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((-1) ^ n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A263846.P14207042136839391426

namespace A263846

/-- `floor(root(p?[n-((-1)^n+2)], 3))` -/
def P14207042136839391426.Spec : Prop :=
  ∀ n, P14207042136839391426.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P3081506821251992606

`floor(record[root(A000010(n+1), 3)])`
-/

namespace A263846.P3081506821251992606
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A263846.P3081506821251992606

namespace A263846

/-- `floor(record[root(A000010(n+1), 3)])` -/
def P3081506821251992606.Spec : Prop :=
  ∀ n, P3081506821251992606.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P13077431602664755315

`floor(record[root(A006530(n+2), 3)])`
-/

namespace A263846.P13077431602664755315
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A263846.P13077431602664755315

namespace A263846

/-- `floor(record[root(A006530(n+2), 3)])` -/
def P13077431602664755315.Spec : Prop :=
  ∀ n, P13077431602664755315.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P10915801629393205472

`floor(record[root(A020639(n+2), 3)])`
-/

namespace A263846.P10915801629393205472
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A263846.P10915801629393205472

namespace A263846

/-- `floor(record[root(A020639(n+2), 3)])` -/
def P10915801629393205472.Spec : Prop :=
  ∀ n, P10915801629393205472.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P4919765611719030297

`floor(root(eq[2, A000005(n+1)], 3))`
-/

namespace A263846.P4919765611719030297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A263846.P4919765611719030297

namespace A263846

/-- `floor(root(eq[2, A000005(n+1)], 3))` -/
def P4919765611719030297.Spec : Prop :=
  ∀ n, P4919765611719030297.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P14746624571024217489

`floor(record[root(A014963(n+2), 3)])`
-/

namespace A263846.P14746624571024217489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 2) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A263846.P14746624571024217489

namespace A263846

/-- `floor(record[root(A014963(n+2), 3)])` -/
def P14746624571024217489.Spec : Prop :=
  ∀ n, P14746624571024217489.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P16409500928263880227

`A048766(A006005(n+1))`
-/

namespace A263846.P16409500928263880227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A006005 (n + 1)).toNat

end

end A263846.P16409500928263880227

namespace A263846

/-- `A048766(A006005(n+1))` -/
def P16409500928263880227.Spec : Prop :=
  ∀ n, P16409500928263880227.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P11748081850503837782

`A048766(A006093(n+1))`
-/

namespace A263846.P11748081850503837782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A006093 (n + 1)).toNat

end

end A263846.P11748081850503837782

namespace A263846

/-- `A048766(A006093(n+1))` -/
def P11748081850503837782.Spec : Prop :=
  ∀ n, P11748081850503837782.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P5739504400079493159

`A048766(A014193(n+1))`
-/

namespace A263846.P5739504400079493159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A014193 (n + 1)).toNat

end

end A263846.P5739504400079493159

namespace A263846

/-- `A048766(A014193(n+1))` -/
def P5739504400079493159.Spec : Prop :=
  ∀ n, P5739504400079493159.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P16338708393155666624

`A048766(A014686(n+1))`
-/

namespace A263846.P16338708393155666624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A014686 (n + 1)).toNat

end

end A263846.P16338708393155666624

namespace A263846

/-- `A048766(A014686(n+1))` -/
def P16338708393155666624.Spec : Prop :=
  ∀ n, P16338708393155666624.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P11229242620920523797

`A048766(A039915(n+1))`
-/

namespace A263846.P11229242620920523797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A039915 (n + 1)).toNat

end

end A263846.P11229242620920523797

namespace A263846

/-- `A048766(A039915(n+1))` -/
def P11229242620920523797.Spec : Prop :=
  ∀ n, P11229242620920523797.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P1898291967791343147

`A048766(A082542(n+1))`
-/

namespace A263846.P1898291967791343147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A082542 (n + 1)).toNat

end

end A263846.P1898291967791343147

namespace A263846

/-- `A048766(A082542(n+1))` -/
def P1898291967791343147.Spec : Prop :=
  ∀ n, P1898291967791343147.a n = A263846 (n + 1)

end A263846

/-! ## A263846.P454020701957716673

`A048766(A098392(n+1))`
-/

namespace A263846.P454020701957716673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A098392 (n + 1)).toNat

end

end A263846.P454020701957716673

namespace A263846

/-- `A048766(A098392(n+1))` -/
def P454020701957716673.Spec : Prop :=
  ∀ n, P454020701957716673.a n = A263846 (n + 1)

end A263846

/-!
# A263847: a(n) = p(2*n)-p(2*n-2)-p(n) where p(n) are the partition numbers A000041(n).

The programs for A263847, there is no canonical definition to state claims against.
-/

/-! ## A263847.P1399703980381587547

`A182616(n+1)-A058696(n)`
-/

namespace A263847.P1399703980381587547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 (n + 1) - A058696 n

end

end A263847.P1399703980381587547

/-! ## A263847.P7575910643499648722

`Δ[A000041(2*n)-A000070(n)]`
-/

namespace A263847.P7575910643499648722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263847.P7575910643499648722

/-! ## A263847.P15922488291242172189

`Δ[A086543(2*n)]-A000041(n)`
-/

namespace A263847.P15922488291242172189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 n

end

end A263847.P15922488291242172189

/-! ## A263847.P7340322785871014439

`A182845(n+1)-A000041(n+1)`
-/

namespace A263847.P7340322785871014439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182845 (n + 1) - A000041 (n + 1)

end

end A263847.P7340322785871014439

/-! ## A263847.P2274665855068107382

`A086543(2*(n+1))-A058696(n)`
-/

namespace A263847.P2274665855068107382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086543 (2 * (n + 1)) - A058696 n

end

end A263847.P2274665855068107382

/-! ## A263847.P12311320860789568009

`A182616(n+1)-A000041(2*n)`
-/

namespace A263847.P12311320860789568009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 (n + 1) - A000041 (2 * n)

end

end A263847.P12311320860789568009

/-! ## A263847.P13029627244135515304

`Δ[A000041(2*n)]-A000041(n+1)`
-/

namespace A263847.P13029627244135515304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 (n + 1)

end

end A263847.P13029627244135515304

/-! ## A263847.P11387275310188044853

`Δ[A000041(2*n)-A025065(2*n)]`
-/

namespace A263847.P11387275310188044853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263847.P11387275310188044853

/-! ## A263847.P1012256935745235483

`A238546(2*(n+1))-A000041(2*n)`
-/

namespace A263847.P1012256935745235483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238546 (2 * (n + 1)) - A000041 (2 * n)

end

end A263847.P1012256935745235483

/-! ## A263847.P7030711046014674732

`A238546(2*n+2)%A000041(2*n)`
-/

namespace A263847.P7030711046014674732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238546 (2 * n + 2)) (A000041 (2 * n))

end

end A263847.P7030711046014674732

/-! ## A263847.P5049587642586072761

`Δ[A000041(2*n)-∑[A035363(2*n)]]`
-/

namespace A263847.P5049587642586072761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263847.P5049587642586072761

/-! ## A263847.P1154595358624187443

`A027336(2*(n+1))-A035363(2*(n+1))`
-/

namespace A263847.P1154595358624187443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (2 * (n + 1)) - A035363 (2 * (n + 1))

end

end A263847.P1154595358624187443

/-! ## A263847.P15036617277008997079

`A238546(2*(n+1))-(A000065(2*n)+1)`
-/

namespace A263847.P15036617277008997079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238546 (2 * (n + 1)) - (A000065 (2 * n) + 1)

end

end A263847.P15036617277008997079

/-! ## A263847.P8361935104343926848

`A182616(n+1)-(A182616(n)+A000041(n))`
-/

namespace A263847.P8361935104343926848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 (n + 1) - (A182616 n + A000041 n)

end

end A263847.P8361935104343926848

/-! ## A263847.P16826913273534746562

`A182616(n+1)-(A304710(n)+A000712(n))`
-/

namespace A263847.P16826913273534746562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 (n + 1) - (A304710 n + A000712 n)

end

end A263847.P16826913273534746562

/-! ## A263847.P16971252206122527878

`A058696(n+1)-(A058696(n)+A000041(n+1))`
-/

namespace A263847.P16971252206122527878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - (A058696 n + A000041 (n + 1))

end

end A263847.P16971252206122527878

/-! ## A263847.P5220663545062885094

`A182746(n+1)+A182747(n)-A000041(n+1)`
-/

namespace A263847.P5220663545062885094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182746 (n + 1) + (A182747 n - A000041 (n + 1))

end

end A263847.P5220663545062885094

/-! ## A263847.P6482197406651996701

`A007042(2*n+1)-(A000065(2*n)+A000065(n+1))`
-/

namespace A263847.P6482197406651996701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007042 (2 * n + 1) - (A000065 (2 * n) + A000065 (n + 1))

end

end A263847.P6482197406651996701

/-! ## A263847.P17330246404497806334

`A002865(2*n+1)+A187219(2*(n+1))-A000041(n+1)`
-/

namespace A263847.P17330246404497806334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (2 * n + 1) + (A187219 (2 * (n + 1)) - A000041 (n + 1))

end

end A263847.P17330246404497806334

/-! ## A263847.P17855510224811442277

`Δ[A100824(4*n)-A100824(2*n+1)]`
-/

namespace A263847.P17855510224811442277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (4 * n) - A100824 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263847.P17855510224811442277

/-!
# A263848: Irregular triangle read by rows: row n gives coefficients of basis polynomial {n,k} expressed in terms of binomial coefficients, high order terms first.

The programs for A263848, there is no canonical definition to state claims against.
-/

/-! ## A263848.P2515237194327252665

`A030203(A115004(n+1)%A064307(2*(n+2)))`
-/

namespace A263848.P2515237194327252665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (Int.tmod (A115004 (n + 1)) (A064307 (2 * (n + 2)))).toNat

end

end A263848.P2515237194327252665

/-! ## A263848.P17627255862620401393

`round(cos(record[A217510(n+1)]))`
-/

namespace A263848.P17627255862620401393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A263848.P17627255862620401393

/-! ## A263848.P8280818353371832994

`A388073(A024456(n+1))`
-/

namespace A263848.P8280818353371832994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388073 (A024456 (n + 1)).toNat

end

end A263848.P8280818353371832994

/-! ## A263848.P18196886782730757876

`A008683(xor(22, A195971(2*n)))`
-/

namespace A263848.P18196886782730757876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.xor 22 (A195971 (2 * n))).toNat

end

end A263848.P18196886782730757876

/-! ## A263848.P12100656849076142023

`A089496(A270300(3*n+4)-3+n)`
-/

namespace A263848.P12100656849076142023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089496 (A270300 (3 * n + 4) - 3 + (n : ℤ)).toNat

end

end A263848.P12100656849076142023

/-!
# A263849: Let R = Z[(1+sqrt(5))/2] denote the ring of integers in the real quadratic number field of discriminant 5. Then a(n) is the largest integer k such that every totally positive element nu in R of norm m = A031363(n) can be written as a sum of three squares in R in at least k ways.

The programs for A263849, there is no canonical definition to state claims against.
-/

/-! ## A263849.P5019886986031167910

`A263850(lt[0, A263850(n)])`
-/

namespace A263849.P5019886986031167910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A263849.P5019886986031167910

/-! ## A263849.P11986905416784229226

`A263850(comp[A232681(n+1)])`
-/

namespace A263849.P11986905416784229226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232681 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A263849.P11986905416784229226

/-! ## A263849.P3085348402072097639

`filter[A263850(n), A276398(#)]`
-/

namespace A263849.P3085348402072097639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A263849.P3085348402072097639

/-! ## A263849.P2772620313697799573

`A263850(eq[1, char[A005752(n)]])`
-/

namespace A263849.P2772620313697799573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A263849.P2772620313697799573

/-! ## A263849.P16043590253385353715

`A263850(eq[1, char[A281385(n)]])`
-/

namespace A263849.P16043590253385353715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281385 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263850 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A263849.P16043590253385353715

/-!
# A263851: Number of 4-ascent sequences of length n that avoid the pattern 00.

The programs for A263851, there is no canonical definition to state claims against.
-/

/-! ## A263851.P9178983869039276542

`A353852(A210478(n))+A001815(n)`
-/

namespace A263851.P9178983869039276542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353852 (A210478 n).toNat + A001815 n

end

end A263851.P9178983869039276542

/-! ## A263851.P13135990509255252899

`A118336(A078679(n))`
-/

namespace A263851.P13135990509255252899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118336 (A078679 n).toNat

end

end A263851.P13135990509255252899

/-!
# A263852: Number of 2-ascent sequences of length n with no consecutive repeated letters.

The programs for A263852, there is no canonical definition to state claims against.
-/

/-! ## A263852.P2805588299517337982

`A264909(∑[n+3])`
-/

namespace A263852.P2805588299517337982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263852.P2805588299517337982

/-! ## A263852.P6233522558658877026

`A264909(A027379(n+1))^A178334(n)`
-/

namespace A263852.P6233522558658877026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264909 (A027379 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A263852.P6233522558658877026

/-! ## A263852.P16036563382906205613

`gcd(A000038(n), A264909(A027379(n+1)))`
-/

namespace A263852.P16036563382906205613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A264909 (A027379 (n + 1)).toNat)

end

end A263852.P16036563382906205613

/-! ## A263852.P1075123033742936703

`or(A000007(n), A264909(A027379(n+1)))`
-/

namespace A263852.P1075123033742936703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A264909 (A027379 (n + 1)).toNat)

end

end A263852.P1075123033742936703

/-! ## A263852.P2947363551631679208

`A239700(n+1)*A264909(A027379(n+1))`
-/

namespace A263852.P2947363551631679208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239700 (n + 1) * A264909 (A027379 (n + 1)).toNat

end

end A263852.P2947363551631679208

/-! ## A263852.P3226081998434097732

`A178334(n+2)*A264909(A027379(n+1))`
-/

namespace A263852.P3226081998434097732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 2) * A264909 (A027379 (n + 1)).toNat

end

end A263852.P3226081998434097732

/-! ## A263852.P696398198523861128

`A264909(A027379(n+1))^A178489(n)`
-/

namespace A263852.P696398198523861128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264909 (A027379 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A263852.P696398198523861128

/-! ## A263852.P8748976326170731215

`A193344(A000124(n))-Δ[A138265(n)]`
-/

namespace A263852.P8748976326170731215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193344 (A000124 n).toNat - (f1 (n + 1) - f1 n)

end

end A263852.P8748976326170731215

/-!
# A263853: Number of 3-ascent sequences of length n with no consecutive repeated letters.

The programs for A263853, there is no canonical definition to state claims against.
-/

/-! ## A263853.P11302506483977443067

`A264909(∑[n+3]+n+3)`
-/

namespace A263853.P11302506483977443067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A263853.P11302506483977443067

/-! ## A263853.P14678971523020472472

`(n-1)*A089710(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A263853.P14678971523020472472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((n : ℤ) - 1) * A089710 (a (n - 1)).toNat

end

end A263853.P14678971523020472472

/-!
# A263854: Number of 4-ascent sequences of length n with no consecutive repeated letters.

The programs for A263854, there is no canonical definition to state claims against.
-/

/-! ## A263854.P14266210628667882689

`A264909(A052905(n+2))`
-/

namespace A263854.P14266210628667882689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A052905 (n + 2)).toNat

end

end A263854.P14266210628667882689

/-! ## A263854.P3225864479600789146

`A264909(eq[4, A025581(n)])`
-/

namespace A263854.P3225864479600789146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263854.P3225864479600789146

/-! ## A263854.P924260516896775950

`A264909(eq[9, A099375(n)])`
-/

namespace A263854.P924260516896775950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263854.P924260516896775950

/-! ## A263854.P1178837540681354434

`A264909(eq[16, A130321(n)])`
-/

namespace A263854.P1178837540681354434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263854.P1178837540681354434

/-! ## A263854.P14035122567654250952

`A264909(Δ[A055831(n+4)])`
-/

namespace A263854.P14035122567654250952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (f1 (n + 1) - f1 n).toNat

end

end A263854.P14035122567654250952

/-! ## A263854.P2324045339682953474

`A264909(A167487(n)+A016825(n))`
-/

namespace A263854.P2324045339682953474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 (A167487 n + A016825 n).toNat

end

end A263854.P2324045339682953474

/-!
# A263857: Triangle read by rows: T(n,k) (n>=0, k>=n+1) is the number of posets with n elements and k antichains.

The programs for A263857, there is no canonical definition to state claims against.
-/

/-! ## A263857.P5814788519263582694

`A221171(A254438(n+1)+A075300(n))`
-/

namespace A263857.P5814788519263582694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221171 (A254438 (n + 1) + A075300 n).toNat

end

end A263857.P5814788519263582694

/-!
# A263858: Triangle read by rows: T(n,k) (n>=0, k>=1) is the number of posets with n elements and k maximal chains.

The programs for A263858, there is no canonical definition to state claims against.
-/

/-! ## A263858.P16979271291306512355

`A263862(n)%30`
-/

namespace A263858.P16979271291306512355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263862 n) 30

end

end A263858.P16979271291306512355

/-! ## A263858.P11381988584129034814

`A004151(A263862(n))`
-/

namespace A263858.P11381988584129034814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A263862 n).toNat

end

end A263858.P11381988584129034814

/-! ## A263858.P8507405360002160554

`A263862(A030066(n))`
-/

namespace A263858.P8507405360002160554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263862 (A030066 n).toNat

end

end A263858.P8507405360002160554

/-! ## A263858.P1692527033474033420

`A263862(A032517(n))`
-/

namespace A263858.P1692527033474033420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263862 (A032517 n).toNat

end

end A263858.P1692527033474033420

/-! ## A263858.P10766818969974074672

`A263862(A032520(n))`
-/

namespace A263858.P10766818969974074672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263862 (A032520 n).toNat

end

end A263858.P10766818969974074672

/-!
# A263859: Triangle read by rows: T(n,k) (n>=1, k>=0) is the number of posets with n elements and rank k (or depth k+1).

The programs for A263859, there is no canonical definition to state claims against.
-/

/-! ## A263859.P11788658518388247988

`A357409(A154372(n))`
-/

namespace A263859.P11788658518388247988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A154372 n).toNat

end

end A263859.P11788658518388247988

/-! ## A263859.P3501835173563443137

`A130749(n)+A034463(A347811(n))`
-/

namespace A263859.P3501835173563443137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130749 n + A034463 (A347811 n).toNat

end

end A263859.P3501835173563443137

/-! ## A263859.P4692828090055766349

`A139338(or(A022003(n), A154372(n)))`
-/

namespace A263859.P4692828090055766349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (Int.lor (A022003 n) (A154372 n)).toNat

end

end A263859.P4692828090055766349

/-! ## A263859.P4308536406791347633

`A347832(A347811(n))+A008277(n+1)`
-/

namespace A263859.P4308536406791347633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347832 (A347811 n).toNat + A008277 (n + 1)

end

end A263859.P4308536406791347633

/-!
# A263861: Triangle read by rows: T(n,k) (n>=0, k>=n+1) is the number of posets with n elements and whose order polytope has k facets.

The programs for A263861, there is no canonical definition to state claims against.
-/

/-! ## A263861.P4957368547383146443

`A367306(A263862(n))`
-/

namespace A263861.P4957368547383146443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A263862 n).toNat

end

end A263861.P4957368547383146443

/-! ## A263861.P12043366815806603427

`A263858(n)+Δ[A025437(n)]`
-/

namespace A263861.P12043366815806603427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263858 n + (f1 (n + 1) - f1 n)

end

end A263861.P12043366815806603427

/-! ## A263861.P13763866571393377422

`A263858(n)+Δ[A025442(n)]`
-/

namespace A263861.P13763866571393377422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263858 n + (f1 (n + 1) - f1 n)

end

end A263861.P13763866571393377422

/-! ## A263861.P15854247167803867692

`A263858(n)+Δ[A193517(n+1)]`
-/

namespace A263861.P15854247167803867692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263858 n + (f1 (n + 1) - f1 n)

end

end A263861.P15854247167803867692

/-! ## A263861.P12001449283255375957

`A263858(n)+Δ[A297243(n+1)]`
-/

namespace A263861.P12001449283255375957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263858 n + (f1 (n + 1) - f1 n)

end

end A263861.P12001449283255375957

/-!
# A263862: Triangle read by rows: T(n,k) (n>=0, k>=n+1) is the number of posets with n elements and whose chain polytope has k facets.

The programs for A263862, there is no canonical definition to state claims against.
-/

/-! ## A263862.P13596451596106914827

`A195098(A263861(n)+char[14])`
-/

namespace A263862.P13596451596106914827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A263861 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A263862.P13596451596106914827

/-!
# A263864: Triangle read by rows: T(n,k) (n>=1, k>=1) is the number of posets with n elements whose Hasse diagram has k connected components.

The programs for A263864, there is no canonical definition to state claims against.
-/

/-! ## A263864.P18290574000154178895

`A184398(A144351(n+1))`
-/

namespace A263864.P18290574000154178895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184398 (A144351 (n + 1)).toNat

end

end A263864.P18290574000154178895

/-! ## A263864.P15323730786077675741

`A121208(A350783(n+1))`
-/

namespace A263864.P15323730786077675741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (A350783 (n + 1)).toNat

end

end A263864.P15323730786077675741

/-! ## A263864.P5658402458430539400

`A363069(A130478(n+1))`
-/

namespace A263864.P5658402458430539400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363069 (A130478 (n + 1)).toNat

end

end A263864.P5658402458430539400

/-! ## A263864.P3320470464722514139

`A267305(A350772(n+1))`
-/

namespace A263864.P3320470464722514139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267305 (A350772 (n + 1)).toNat

end

end A263864.P3320470464722514139

/-! ## A263864.P7317227418958101550

`A287864(A238303(n)+A171243(n))`
-/

namespace A263864.P7317227418958101550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A238303 n + A171243 n).toNat

end

end A263864.P7317227418958101550

/-!
# A263866: Number of permutations of [n] with no carrier element, that is, having their exterior (longest pattern that is both a proper prefix and a proper suffix) contained in their interior (permutation obtained by deleting the first and the last entry) as a consecutive pattern.

The programs for A263866, there is no canonical definition to state claims against.
-/

/-! ## A263866.P15156284790541201722

`lcm(4, Δ[A100632(∑[n]+3)])`
-/

namespace A263866.P15156284790541201722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100632 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (f1 (n + 1) - f1 n)

end

end A263866.P15156284790541201722

/-!
# A263867: Number of non-overlapping permutations of length n. A permutation is non-overlapping (sometimes called minimally overlapping) if the shortest permutation containing two occurrences of it as a consecutive pattern has length 2n-1.

The programs for A263867, there is no canonical definition to state claims against.
-/

/-! ## A263867.P17287229819900409486

`A018393(A018433(n+1))+A005315(n+1)`
-/

namespace A263867.P17287229819900409486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018393 (A018433 (n + 1)).toNat + A005315 (n + 1)

end

end A263867.P17287229819900409486

/-!
# A263868: Number of (n+1)X(n+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nondecreasing.

The programs for A263868, there is no canonical definition to state claims against.
-/

/-! ## A263868.P11079963724978325735

`A263873(∑[4*n]+1)`
-/

namespace A263868.P11079963724978325735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263868.P11079963724978325735

/-! ## A263868.P14109298961864472648

`A263873(A001844(n))+char[38]`
-/

namespace A263868.P14109298961864472648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263868.P14109298961864472648

/-! ## A263868.P13963573272762193510

`A015720(n)*A263873(A001844(n))`
-/

namespace A263868.P13963573272762193510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015720 n * A263873 (A001844 n).toNat

end

end A263868.P13963573272762193510

/-! ## A263868.P5733286999109551278

`A243631(n)*A263873(A001844(n))`
-/

namespace A263868.P5733286999109551278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243631 n * A263873 (A001844 n).toNat

end

end A263868.P5733286999109551278

/-!
# A263869: Number of (n+1) X (4+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nondecreasing.

The programs for A263869, there is no canonical definition to state claims against.
-/

/-! ## A263869.P13685812651271853751

`A263873(∑[n+3]+7)`
-/

namespace A263869.P13685812651271853751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A263869.P13685812651271853751

/-! ## A263869.P2269711477102284519

`or(A083916(n+1), A263873(A141214(n)+7))`
-/

namespace A263869.P2269711477102284519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083916 (n + 1)) (A263873 (A141214 n + 7).toNat)

end

end A263869.P2269711477102284519

/-! ## A263869.P517794472299220184

`A263873(A141214(n+1))+A000035(2*n)`
-/

namespace A263869.P517794472299220184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A141214 (n + 1)).toNat + A000035 (2 * n)

end

end A263869.P517794472299220184

/-! ## A263869.P7526751738508379218

`A263873(A141214(n+1))%A253145(3*(n+1))`
-/

namespace A263869.P7526751738508379218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263873 (A141214 (n + 1)).toNat) (A253145 (3 * (n + 1)))

end

end A263869.P7526751738508379218

/-! ## A263869.P13746412559588893720

`A263873(A141214(n+1))%A263873(A155212(n)+13)`
-/

namespace A263869.P13746412559588893720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263873 (A141214 (n + 1)).toNat) (A263873 (A155212 n + 13).toNat)

end

end A263869.P13746412559588893720

/-!
# A263870: Number of (n+1)X(5+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nondecreasing.

The programs for A263870, there is no canonical definition to state claims against.
-/

/-! ## A263870.P17452004142520107429

`A263873(A374005(n+1))`
-/

namespace A263870.P17452004142520107429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A374005 (n + 1)).toNat

end

end A263870.P17452004142520107429

/-! ## A263870.P7465726562914700644

`A263873(A155212(n)+13)`
-/

namespace A263870.P7465726562914700644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A155212 n + 13).toNat

end

end A263870.P7465726562914700644

/-! ## A263870.P17057902386944449542

`A263873(A056000(n)+15)`
-/

namespace A263870.P17057902386944449542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A056000 n + 15).toNat

end

end A263870.P17057902386944449542

/-! ## A263870.P9825426174120030174

`A263873(eq[7, A066657(n)])`
-/

namespace A263870.P9825426174120030174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263870.P9825426174120030174

/-! ## A263870.P1916034424697659454

`A263873(A167614(n+3)+2)`
-/

namespace A263870.P1916034424697659454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A167614 (n + 3) + 2).toNat

end

end A263870.P1916034424697659454

/-!
# A263871: Number of (n+1)X(6+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nondecreasing.

The programs for A263871, there is no canonical definition to state claims against.
-/

/-! ## A263871.P9781812084037235140

`A263873(A374007(n+1))`
-/

namespace A263871.P9781812084037235140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A374007 (n + 1)).toNat

end

end A263871.P9781812084037235140

/-! ## A263871.P3819088944292627126

`A263873(A056115(n)+21)`
-/

namespace A263871.P3819088944292627126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A056115 n + 21).toNat

end

end A263871.P3819088944292627126

/-! ## A263871.P11724254678007127187

`A263873(A000124(n+5)+5)`
-/

namespace A263871.P11724254678007127187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A000124 (n + 5) + 5).toNat

end

end A263871.P11724254678007127187

/-! ## A263871.P3871574386805019796

`A263873(A000217(n+5)+6)`
-/

namespace A263871.P3871574386805019796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A000217 (n + 5) + 6).toNat

end

end A263871.P3871574386805019796

/-! ## A263871.P11182470939303509807

`A263873(A141214(n+2)+9)`
-/

namespace A263871.P11182470939303509807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A141214 (n + 2) + 9).toNat

end

end A263871.P11182470939303509807

/-!
# A263872: Number of (n+1)X(7+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nondecreasing.

The programs for A263872, there is no canonical definition to state claims against.
-/

/-! ## A263872.P7186435655521491265

`A263873(A374008(n+1))`
-/

namespace A263872.P7186435655521491265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A374008 (n + 1)).toNat

end

end A263872.P7186435655521491265

/-! ## A263872.P11527633991631591176

`A263873(A167487(n+5))`
-/

namespace A263872.P11527633991631591176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A167487 (n + 5)).toNat

end

end A263872.P11527633991631591176

/-! ## A263872.P6016174304311088696

`A263873(A056119(n)+28)`
-/

namespace A263872.P6016174304311088696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A056119 n + 28).toNat

end

end A263872.P6016174304311088696

/-! ## A263872.P600011230644723483

`A263873(eq[11, A066657(n)])`
-/

namespace A263872.P600011230644723483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A263872.P600011230644723483

/-! ## A263872.P17050407210763922564

`A263873(A167499(n+5)+2)`
-/

namespace A263872.P17050407210763922564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263873 (A167499 (n + 5) + 2).toNat

end

end A263872.P17050407210763922564

/-!
# A263874: Integers for which the smallest k in A067760 such that n + 2^k is prime increases.

The programs for A263874, there is no canonical definition to state claims against.
-/

/-! ## A263874.P4772682700026463385

`lcm(3, A260350(record[A067760(n)]))/3`
-/

namespace A263874.P4772682700026463385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A260350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) : ℚ) / 3

end

end A263874.P4772682700026463385

/-! ## A263874.P15221849408805648362

`A260350(A263875(n+1)%(3^n))`
-/

namespace A263874.P15221849408805648362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260350 (Int.tmod (A263875 (n + 1)) (3 ^ n : ℤ)).toNat

end

end A263874.P15221849408805648362

/-! ## A263874.P1516796405936510937

`A260350(record[A067760(n)]-A000007(n))`
-/

namespace A263874.P1516796405936510937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000007 n).toNat

end

end A263874.P1516796405936510937

/-! ## A263874.P17472555540412522551

`A260350(record[A067760(n)])-A000038(n)`
-/

namespace A263874.P17472555540412522551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000038 n

end

end A263874.P17472555540412522551

/-! ## A263874.P13053145463450195074

`A260350(record[A067760(n)]-A055641(n))`
-/

namespace A263874.P13053145463450195074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260350 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A055641 n).toNat

end

end A263874.P13053145463450195074

/-!
# A263875: a(n) = least positive k such that A263874(n) + 2^k is prime.

The programs for A263875, there is no canonical definition to state claims against.
-/

/-! ## A263875.P14418186224648659602

`record[A067760(n)]`
-/

namespace A263875.P14418186224648659602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263875.P14418186224648659602

/-! ## A263875.P4799258433844907429

`A067760(floor(A263874(n+1)/2))`
-/

namespace A263875.P4799258433844907429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 ⌊(A263874 (n + 1) : ℚ) / 2⌋.toNat

end

end A263875.P4799258433844907429

/-! ## A263875.P641633647376060210

`A067760((A263874(n+1)-1)/2)`
-/

namespace A263875.P641633647376060210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (SequenceMachineLib.roundAway ((A263874 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A263875.P641633647376060210

/-!
# A263878: a(n) = Sum_{k=0..n} (-1)^k*k*Fibonacci(k), where Fibonacci(k) = A000045(k).

The programs for A263878, the canonical program `A263878.P15627308141221611043` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263878 has offset 0).

The definition of A263878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263878.P15627308141221611043

`(n+1)*A119282(n)-∑[A119282(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A263878

/-- `(n+1)*A119282(n)-∑[A119282(n)]` -/
def P15627308141221611043.Spec : Prop :=
  ∀ n, P15627308141221611043.a n = A263878 n

theorem P15627308141221611043.correct : P15627308141221611043.Spec := by
  intro n
  simp only [A263878]

end A263878

/-! ## A263878.P9245989564767343883

`∑[n*Δ[a(n-2)-a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A263878.P9245989564767343883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P9245989564767343883

namespace A263878

/-- `∑[n*Δ[a(n-2)-a(n-1)]]` -/
def P9245989564767343883.Spec : Prop :=
  ∀ n, P9245989564767343883.a n = A263878 n

end A263878

/-! ## A263878.P2790383501622971705

`∑[n*∑[a(n-2)-a(n-1)]]` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A263878.P2790383501622971705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 2] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P2790383501622971705

namespace A263878

/-- `∑[n*∑[a(n-2)-a(n-1)]]` -/
def P2790383501622971705.Spec : Prop :=
  ∀ n, P2790383501622971705.a n = A263878 n

end A263878

/-! ## A263878.P2619309664598467557

`∑[n*(A355020(n)-1)]`
-/

namespace A263878.P2619309664598467557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A355020 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P2619309664598467557

namespace A263878

/-- `∑[n*(A355020(n)-1)]` -/
def P2619309664598467557.Spec : Prop :=
  ∀ n, P2619309664598467557.a n = A263878 n

end A263878

/-! ## A263878.P4533799910847230889

`-∑[n*Δ[A112469(n)]]`
-/

namespace A263878.P4533799910847230889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A263878.P4533799910847230889

namespace A263878

/-- `-∑[n*Δ[A112469(n)]]` -/
def P4533799910847230889.Spec : Prop :=
  ∀ n, P4533799910847230889.a n = A263878 n

end A263878

/-! ## A263878.P7684825735893915829

`∑[-n*(A119282(n+1)+1)]`
-/

namespace A263878.P7684825735893915829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (A119282 (n + 1) + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P7684825735893915829

namespace A263878

/-- `∑[-n*(A119282(n+1)+1)]` -/
def P7684825735893915829.Spec : Prop :=
  ∀ n, P7684825735893915829.a n = A263878 n

end A263878

/-! ## A263878.P16244865245295409478

`∑[n*Δ[A051792(2*(n+1))]]`
-/

namespace A263878.P16244865245295409478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P16244865245295409478

namespace A263878

/-- `∑[n*Δ[A051792(2*(n+1))]]` -/
def P16244865245295409478.Spec : Prop :=
  ∀ n, P16244865245295409478.a n = A263878 n

end A263878

/-! ## A263878.P10139489639787598617

`∑[A000045(n)*A038608(n)]`
-/

namespace A263878.P10139489639787598617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A038608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P10139489639787598617

namespace A263878

/-- `∑[A000045(n)*A038608(n)]` -/
def P10139489639787598617.Spec : Prop :=
  ∀ n, P10139489639787598617.a n = A263878 n

end A263878

/-! ## A263878.P14244210373637878417

`∑[A000045(n)*A097141(n+2)]`
-/

namespace A263878.P14244210373637878417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A097141 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P14244210373637878417

namespace A263878

/-- `∑[A000045(n)*A097141(n+2)]` -/
def P14244210373637878417.Spec : Prop :=
  ∀ n, P14244210373637878417.a n = A263878 n

end A263878

/-! ## A263878.P6269627849845108239

`∑[n*A000045(n)*A033999(n)]`
-/

namespace A263878.P6269627849845108239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000045 n * A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P6269627849845108239

namespace A263878

/-- `∑[n*A000045(n)*A033999(n)]` -/
def P6269627849845108239.Spec : Prop :=
  ∀ n, P6269627849845108239.a n = A263878 n

end A263878

/-! ## A263878.P6871505693686149072

`∑[n*(A093045(n)-A093042(n))]`
-/

namespace A263878.P6871505693686149072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A093045 n - A093042 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P6871505693686149072

namespace A263878

/-- `∑[n*(A093045(n)-A093042(n))]` -/
def P6871505693686149072.Spec : Prop :=
  ∀ n, P6871505693686149072.a n = A263878 n

end A263878

/-!
# A263879: Length k of the longest chain of primes p_1, p_2, ..., p_k such that p_1 is the n-th prime and p_{i+1} equals 2*p_i + 1 or 2*p_i - 1 for all i < k, the +/ - sign depending on i.

The programs for A263879, there is no canonical definition to state claims against.
-/

/-! ## A263879.P17417391118598400145

`abs(xor(floor(1/(γ-n)), A214280(n+1)))`
-/

namespace A263879.P17417391118598400145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (A214280 (n + 1))|

end

end A263879.P17417391118598400145

/-! ## A263879.P13737845305465732040

`abs(xor(A214280(n+1), A260196(n)))`
-/

namespace A263879.P13737845305465732040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A214280 (n + 1)) (A260196 n)|

end

end A263879.P13737845305465732040

/-! ## A263879.P105358644484551721

`A214280(n+1)+A158388(floor(8*n/13))`
-/

namespace A263879.P105358644484551721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (n + 1) + A158388 ⌊8 * ((n : ℚ) / 13)⌋.toNat

end

end A263879.P105358644484551721

/-! ## A263879.P6412388646927064816

`A214280(n+1)+A033999(A060632(n))`
-/

namespace A263879.P6412388646927064816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (n + 1) + A033999 (A060632 n).toNat

end

end A263879.P6412388646927064816

/-! ## A263879.P11600107966250951870

`A214280(n+1)-A103452(A161680(n))`
-/

namespace A263879.P11600107966250951870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (n + 1) - A103452 (A161680 n).toNat

end

end A263879.P11600107966250951870

/-! ## A263879.P3500246964608044701

`A214280(n+1)-A085384(p?[A004526(n)])`
-/

namespace A263879.P3500246964608044701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (n + 1) - A085384 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A263879.P3500246964608044701

/-! ## A263879.P15799576977753901444

`A214280(n+1)+A033999(A000010(n+1))`
-/

namespace A263879.P15799576977753901444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (n + 1) + A033999 (A000010 (n + 1)).toNat

end

end A263879.P15799576977753901444

/-! ## A263879.P2546225978877866953

`A214280(n+1)-A008683(A136548(n+1))`
-/

namespace A263879.P2546225978877866953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (n + 1) - A008683 (A136548 (n + 1)).toNat

end

end A263879.P2546225978877866953

/-! ## A263879.P18312235048006370170

`A214280(n+1)-A008683(A284374(n+1))`
-/

namespace A263879.P18312235048006370170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (n + 1) - A008683 (A284374 (n + 1)).toNat

end

end A263879.P18312235048006370170

/-! ## A263879.P3414003950680172672

`A214280(n+1)-A008683(record[A119656(n+1)])`
-/

namespace A263879.P3414003950680172672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214280 (n + 1) - A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A263879.P3414003950680172672

/-!
# A263880: Safe primes 2p + 1 such that p is a Fibonacci prime.

The programs for A263880, there is no canonical definition to state claims against.
-/

/-! ## A263880.P14576079638181495217

`2*A155011(n+1)+1`
-/

namespace A263880.P14576079638181495217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155011 (n + 1) + 1

end

end A263880.P14576079638181495217

/-!
# A263882: Babbage quotients b_p = (binomial(2p-1, p-1) - 1)/p^2 with p = prime(n).

The programs for A263882, there is no canonical definition to state claims against.
-/

/-! ## A263882.P2903001009874980714

`A060842(n+2)/2`
-/

namespace A263882.P2903001009874980714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060842 (n + 2) : ℚ) / 2

end

end A263882.P2903001009874980714

/-! ## A263882.P5868295018919791477

`A131868(p?[2*n+1])`
-/

namespace A263882.P5868295018919791477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131868 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A263882.P5868295018919791477

/-! ## A263882.P17947368721915005885

`A131868(A045344(n+1))`
-/

namespace A263882.P17947368721915005885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131868 (A045344 (n + 1)).toNat

end

end A263882.P17947368721915005885

/-! ## A263882.P7266066270718935047

`A131868(A065091(n+1))`
-/

namespace A263882.P7266066270718935047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131868 (A065091 (n + 1)).toNat

end

end A263882.P7266066270718935047

/-! ## A263882.P12914577770111706962

`A131868(A140475(n+1))`
-/

namespace A263882.P12914577770111706962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131868 (A140475 (n + 1)).toNat

end

end A263882.P12914577770111706962

/-!
# A263883: Ivanov's number a(n) = i*(n+2-i) where i = min{j > 0 | j*(j+1) >= 2*(n-1)}.

The programs for A263883, there is no canonical definition to state claims against.
-/

/-! ## A263883.P8017319771146060457

`A003991(∑[n+1-char[∑[n+1]+2]])`
-/

namespace A263883.P8017319771146060457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A263883.P8017319771146060457

/-! ## A263883.P7316948779727593105

`(n+2-A087847(n+2))*A087847(n+2)`
-/

namespace A263883.P7316948779727593105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A087847 (n + 2)) * A087847 (n + 2)

end

end A263883.P7316948779727593105

/-! ## A263883.P4119194079759425735

`(n+2-A000194(A089422(n)))*A000194(A089422(n))`
-/

namespace A263883.P4119194079759425735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A000194 (A089422 n).toNat) * A000194 (A089422 n).toNat

end

end A263883.P4119194079759425735

/-! ## A263883.P6600426884575978301

`A001972(A094708(4*n+1))`
-/

namespace A263883.P6600426884575978301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A094708 (4 * n + 1)).toNat

end

end A263883.P6600426884575978301

/-! ## A263883.P7768715607327268893

`A000005(∏[char[A000096(n)+3]+2]/2)`
-/

namespace A263883.P7768715607327268893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2)).toNat

end

end A263883.P7768715607327268893

/-!
# A263885: Number of permutations of [n] containing exactly one occurrence of the consecutive pattern 132.

The programs for A263885, there is no canonical definition to state claims against.
-/

/-! ## A263885.P13318121945918179959

`A197365(A033638(n+3)+1)`
-/

namespace A263885.P13318121945918179959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (A033638 (n + 3) + 1).toNat

end

end A263885.P13318121945918179959

/-! ## A263885.P9223824724493085903

`A197365(A002620(n+3)+2)`
-/

namespace A263885.P9223824724493085903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (A002620 (n + 3) + 2).toNat

end

end A263885.P9223824724493085903

/-! ## A263885.P13347670758479359955

`A197365(A024206(n+2)+3)`
-/

namespace A263885.P13347670758479359955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197365 (A024206 (n + 2) + 3).toNat

end

end A263885.P13347670758479359955

/-!
# A263895: Expansion of e.g.f.: exp(-x)*x/(1-2*x)^2.

The programs for A263895, the canonical program `A263895.P10748159318213851878` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263895 has offset 0).

The definition of A263895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A263895.P10748159318213851878

`2*(n+1)*a(n-1)+3*a(n-2)+2*(2-n)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A263895

/-- `2*(n+1)*a(n-1)+3*a(n-2)+2*(2-n)*a(n-3)` -/
def P10748159318213851878.Spec : Prop :=
  ∀ n, P10748159318213851878.a n = A263895 n

theorem P10748159318213851878.correct : P10748159318213851878.Spec := by
  intro n
  simp only [A263895]

end A263895

/-! ## A263895.P7700226558516558280

`(A000354(n+1)-A000354(n))/4`
-/

namespace A263895.P7700226558516558280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000354 (n + 1) - A000354 n : ℚ) / 4

end

end A263895.P7700226558516558280

namespace A263895

/-- `(A000354(n+1)-A000354(n))/4` -/
def P7700226558516558280.Spec : Prop :=
  ∀ n, P7700226558516558280.a n = (A263895 n : ℚ)

end A263895

/-! ## A263895.P8761586309884249701

`Δ[A000354(n)/4]`
-/

namespace A263895.P8761586309884249701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000354 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263895.P8761586309884249701

namespace A263895

/-- `Δ[A000354(n)/4]` -/
def P8761586309884249701.Spec : Prop :=
  ∀ n, P8761586309884249701.a n = (A263895 n : ℚ)

end A263895

/-! ## A263895.P12520165307474371941

`n/2*A271212(n)`
-/

namespace A263895.P12520165307474371941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A271212 n : ℚ)

end

end A263895.P12520165307474371941

namespace A263895

/-- `n/2*A271212(n)` -/
def P12520165307474371941.Spec : Prop :=
  ∀ n, P12520165307474371941.a n = (A263895 n : ℚ)

end A263895

/-! ## A263895.P14851346302515085968

`Δ[A334578(2*n)/4]`
-/

namespace A263895.P14851346302515085968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334578 (2 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263895.P14851346302515085968

namespace A263895

/-- `Δ[A334578(2*n)/4]` -/
def P14851346302515085968.Spec : Prop :=
  ∀ n, P14851346302515085968.a n = (A263895 n : ℚ)

end A263895

/-!
# A263896: Central terms of triangle in A075383.

The programs for A263896, there is no canonical definition to state claims against.
-/

/-! ## A263896.P14602897970461712790

`A075383(∑[4*n]+1)`
-/

namespace A263896.P14602897970461712790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A263896.P14602897970461712790

/-! ## A263896.P4232920951742509244

`or(char[2], A075383(A001844(n)))`
-/

namespace A263896.P4232920951742509244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A075383 (A001844 n).toNat)

end

end A263896.P4232920951742509244

/-! ## A263896.P45345397458458193

`∑{d}[A075383((n+1)*2*n+1), A000010(#)]`
-/

namespace A263896.P45345397458458193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075383 ((n + 1) * (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A263896.P45345397458458193

/-! ## A263896.P7745959640486606844

`A007318(∑[n])*A075383(A001844(n))`
-/

namespace A263896.P7745959640486606844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A075383 (A001844 n).toNat

end

end A263896.P7745959640486606844

/-! ## A263896.P878066128710745098

`A075383(A001844(n))%A072141(n+1)`
-/

namespace A263896.P878066128710745098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075383 (A001844 n).toNat) (A072141 (n + 1))

end

end A263896.P878066128710745098

/-!
# A263897: Number of anagram compositions of 2n that can be formed from the compositions of n.

The programs for A263897, there is no canonical definition to state claims against.
-/

/-! ## A263897.P1002792626862338541

`A008616(ceil(sqrt(A222514(n+1))))`
-/

namespace A263897.P1002792626862338541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 ⌈Real.sqrt (A222514 (n + 1) : ℝ)⌉.toNat

end

end A263897.P1002792626862338541

/-! ## A263897.P9558076277074218515

`A108530(n)+A002262(A005165(n))`
-/

namespace A263897.P9558076277074218515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108530 n + A002262 (A005165 n).toNat

end

end A263897.P9558076277074218515

/-! ## A263897.P18220110723416907784

`A191983(A001405(n))+A137954(n)`
-/

namespace A263897.P18220110723416907784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191983 (A001405 n).toNat + A137954 n

end

end A263897.P18220110723416907784

/-! ## A263897.P4177590807406282351

`A316892(n)-A032634(A316892(n))`
-/

namespace A263897.P4177590807406282351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316892 n - A032634 (A316892 n).toNat

end

end A263897.P4177590807406282351

/-!
# A263898: Number of length n arrays of permutations of 0..n-1 with each element moved by -n to n places and the total absolute value of displacements not greater than 2*(n-1).

The programs for A263898, there is no canonical definition to state claims against.
-/

/-! ## A263898.P6937295381154727267

`A263905((n+1)²+n²)`
-/

namespace A263898.P6937295381154727267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263905 ((n + 1) ^ 2 + n ^ 2)

end

end A263898.P6937295381154727267

/-! ## A263898.P8139121746592802874

`A263905(A001844(n))%(4^(n+2))`
-/

namespace A263898.P8139121746592802874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263905 (A001844 n).toNat) (4 ^ (n + 2) : ℤ)

end

end A263898.P8139121746592802874

/-! ## A263898.P6055852259501549121

`record[A077049(n+1)*A263905(n+1)]`
-/

namespace A263898.P6055852259501549121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077049 (n + 1) * A263905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263898.P6055852259501549121

/-! ## A263898.P6732938838600777333

`gcd(A023933(n), A263905(A001844(n)))`
-/

namespace A263898.P6732938838600777333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023933 n) (A263905 (A001844 n).toNat)

end

end A263898.P6732938838600777333

/-! ## A263898.P11021877342924341150

`or(A000007(n), A263905(A001844(n)))`
-/

namespace A263898.P11021877342924341150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A263905 (A001844 n).toNat)

end

end A263898.P11021877342924341150

/-!
# A263899: Number of length n arrays of permutations of 0..n-1 with each element moved by -2 to 2 places and the total absolute value of displacements not greater than 2*(n-1).

The programs for A263899, the canonical program `A263899.P16152381148978745656` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A263899 has offset 1).

The definition of A263899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A263899.P13049293101954234900

`A002524(n+1)-char[or(3, n)]`
-/

namespace A263899.P13049293101954234900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A263899.P13049293101954234900

namespace A263899

/-- `A002524(n+1)-char[or(3, n)]` -/
def P13049293101954234900.Spec : Prop :=
  ∀ n, P13049293101954234900.a n = A263899 (n + 1)

end A263899

/-! ## A263899.P5422283288204103265

`record[A002524(n)-char[A008574(n)]]`
-/

namespace A263899.P5422283288204103265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263899.P5422283288204103265

namespace A263899

/-- `record[A002524(n)-char[A008574(n)]]` -/
def P5422283288204103265.Spec : Prop :=
  ∀ n, P5422283288204103265.a n = A263899 (n + 1)

end A263899

/-! ## A263899.P16152381148978745656

`A002524(n+1)-Δ[A002265(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A263899

/-- `A002524(n+1)-Δ[A002265(n)]` -/
def P16152381148978745656.Spec : Prop :=
  ∀ n, P16152381148978745656.a n = A263899 (n + 1)

theorem P16152381148978745656.correct : P16152381148978745656.Spec := by
  intro n
  simp only [A263899, Nat.add_sub_cancel]

end A263899

/-! ## A263899.P7359267376668349479

`A002524(n+1)-A121262(n+1)`
-/

namespace A263899.P7359267376668349479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 (n + 1) - A121262 (n + 1)

end

end A263899.P7359267376668349479

namespace A263899

/-- `A002524(n+1)-A121262(n+1)` -/
def P7359267376668349479.Spec : Prop :=
  ∀ n, P7359267376668349479.a n = A263899 (n + 1)

end A263899

/-! ## A263899.P14877469320729609918

`Δ[∑[A002524(n)]-A002265(n)]`
-/

namespace A263899.P14877469320729609918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263899.P14877469320729609918

namespace A263899

/-- `Δ[∑[A002524(n)]-A002265(n)]` -/
def P14877469320729609918.Spec : Prop :=
  ∀ n, P14877469320729609918.a n = A263899 (n + 1)

end A263899

/-! ## A263899.P2866255827056733378

`Δ[A002525(n+1)-A002265(n)]`
-/

namespace A263899.P2866255827056733378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 (n + 1) - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263899.P2866255827056733378

namespace A263899

/-- `Δ[A002525(n+1)-A002265(n)]` -/
def P2866255827056733378.Spec : Prop :=
  ∀ n, P2866255827056733378.a n = A263899 (n + 1)

end A263899

/-! ## A263899.P12376295584160921183

`Δ[A002525(n+1)-A004526(A004526(n))]`
-/

namespace A263899.P12376295584160921183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 (n + 1) - A004526 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A263899.P12376295584160921183

namespace A263899

/-- `Δ[A002525(n+1)-A004526(A004526(n))]` -/
def P12376295584160921183.Spec : Prop :=
  ∀ n, P12376295584160921183.a n = A263899 (n + 1)

end A263899

