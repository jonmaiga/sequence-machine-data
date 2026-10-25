import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A192001: Triangle with sums of nonnegative integer powers of positive first n integers in the columns.

The programs for A192001, there is no canonical definition to state claims against.
-/

/-! ## A192001.P11569211920866558122

`A103438(A061579(n))+A009999(n)`
-/

namespace A192001.P11569211920866558122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (A061579 n).toNat + A009999 n

end

end A192001.P11569211920866558122

/-! ## A192001.P2781524439054535104

`A103438(∑[char[∑[n]]]+∑[char[∑[n]]]²-n)`
-/

namespace A192001.P2781524439054535104
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A192001.P2781524439054535104

/-! ## A192001.P12193326684514812219

`A143328(n+1)+A033665(A288972(n))`
-/

namespace A192001.P12193326684514812219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143328 (n + 1) + A033665 (A288972 n).toNat

end

end A192001.P12193326684514812219

/-! ## A192001.P11183339151327694780

`A250002(A293724(n))+A143328(n+1)`
-/

namespace A192001.P11183339151327694780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A293724 n).toNat + A143328 (n + 1)

end

end A192001.P11183339151327694780

/-! ## A192001.P8678237290046129719

`A143328(n+1)+A010815(A136345(3*(n+1)))`
-/

namespace A192001.P8678237290046129719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143328 (n + 1) + A010815 (A136345 (3 * (n + 1))).toNat

end

end A192001.P8678237290046129719

/-!
# A192002: Counting sequence for Wythoff AB-numbers smaller than n.

The programs for A192002, the canonical program `A192002.P15230033611196310100` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192002 has offset 1).

The definition of A192002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192002.P15230033611196310100

`floor((n+1)/ϕ)-floor((1+n+1)/(1+ϕ))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192002

/-- `floor((n+1)/ϕ)-floor((1+n+1)/(1+ϕ))` -/
def P15230033611196310100.Spec : Prop :=
  ∀ n, P15230033611196310100.a n = A192002 (n + 1)

theorem P15230033611196310100.correct : P15230033611196310100.Spec := by
  intro n
  simp only [A192002, Nat.add_sub_cancel]

end A192002

/-! ## A192002.P7070309313293770880

`comp[2*floor(n*ϕ²)]%(n+1)`
-/

namespace A192002.P7070309313293770880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1)

end

end A192002.P7070309313293770880

namespace A192002

/-- `comp[2*floor(n*ϕ²)]%(n+1)` -/
def P7070309313293770880.Spec : Prop :=
  ∀ n, (P7070309313293770880.a n : ℤ) = A192002 (n + 1)

end A192002

/-! ## A192002.P7713064066568694508

`∑[Δ[floor(ϕ*(n+2))]%Δ[floor(ϕ*n)]]`
-/

namespace A192002.P7713064066568694508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192002.P7713064066568694508

namespace A192002

/-- `∑[Δ[floor(ϕ*(n+2))]%Δ[floor(ϕ*n)]]` -/
def P7713064066568694508.Spec : Prop :=
  ∀ n, P7713064066568694508.a n = A192002 (n + 1)

end A192002

/-! ## A192002.P8713824590215189566

`∑[C(Δ[floor(n/ϕ)], 2-Δ[floor((n+1)/ϕ)])]`
-/

namespace A192002.P8713824590215189566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f2 (n + 1) - f2 n).toNat (2 - (f3 (n + 1) - f3 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192002.P8713824590215189566

namespace A192002

/-- `∑[C(Δ[floor(n/ϕ)], 2-Δ[floor((n+1)/ϕ)])]` -/
def P8713824590215189566.Spec : Prop :=
  ∀ n, (P8713824590215189566.a n : ℤ) = A192002 (n + 1)

end A192002

/-! ## A192002.P8332562923232151522

`∑[and(2-Δ[floor((n+1)/ϕ)], Δ[floor(n/ϕ)])]`
-/

namespace A192002.P8332562923232151522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - (f2 (n + 1) - f2 n)) (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192002.P8332562923232151522

namespace A192002

/-- `∑[and(2-Δ[floor((n+1)/ϕ)], Δ[floor(n/ϕ)])]` -/
def P8332562923232151522.Spec : Prop :=
  ∀ n, P8332562923232151522.a n = A192002 (n + 1)

end A192002

/-! ## A192002.P9439878535712486225

`∑[A188009(n+2)]`
-/

namespace A192002.P9439878535712486225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192002.P9439878535712486225

namespace A192002

/-- `∑[A188009(n+2)]` -/
def P9439878535712486225.Spec : Prop :=
  ∀ n, P9439878535712486225.a n = A192002 (n + 1)

end A192002

/-! ## A192002.P4457132129619583630

`∑[1-A014677(n)²]`
-/

namespace A192002.P4457132129619583630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014677 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192002.P4457132129619583630

namespace A192002

/-- `∑[1-A014677(n)²]` -/
def P4457132129619583630.Spec : Prop :=
  ∀ n, P4457132129619583630.a n = A192002 (n + 1)

end A192002

/-! ## A192002.P15590933570564372045

`∑[char[A003623(n+1)]]`
-/

namespace A192002.P15590933570564372045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192002.P15590933570564372045

namespace A192002

/-- `∑[char[A003623(n+1)]]` -/
def P15590933570564372045.Spec : Prop :=
  ∀ n, (P15590933570564372045.a n : ℤ) = A192002 (n + 1)

end A192002

/-! ## A192002.P4677866836876158434

`A005206(A060144(n))`
-/

namespace A192002.P4677866836876158434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A060144 n).toNat

end

end A192002.P4677866836876158434

namespace A192002

/-- `A005206(A060144(n))` -/
def P4677866836876158434.Spec : Prop :=
  ∀ n, P4677866836876158434.a n = A192002 (n + 1)

end A192002

/-!
# A192004: Alternating row sums of array A187360: minimal polynomial of 2*cos(Pi/n) evaluated for x=-1.

The programs for A192004, the canonical program `A192004.P3480592969460435440` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192004 has offset 1).

The definition of A192004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192004.P5098928564308765107

`ratio[2*a(floor(n/2))]` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A192004.P5098928564308765107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A192004.P5098928564308765107

namespace A192004

/-- `ratio[2*a(floor(n/2))]` -/
def P5098928564308765107.Spec : Prop :=
  ∀ n, P5098928564308765107.a n = (A192004 (n + 1) : ℚ)

end A192004

/-! ## A192004.P3480592969460435440

`a(floor((lcm(2, n)-n)/2))` with `a(0)=1, a(1)=-1, a(2)=-2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192004

/-- `a(floor((lcm(2, n)-n)/2))` -/
def P3480592969460435440.Spec : Prop :=
  ∀ n, P3480592969460435440.a n = A192004 (n + 1)

theorem P3480592969460435440.correct : P3480592969460435440.Spec := by
  intro n
  simp only [A192004, Nat.add_sub_cancel]

end A192004

/-! ## A192004.P1720468877807059825

`a(n%2*(n-1)/2)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A192004.P1720468877807059825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (SequenceMachineLib.roundAway (((n % 2 : ℕ) : ℚ) * (((n : ℤ) - 1 : ℚ) / 2))).toNat

end

end A192004.P1720468877807059825

namespace A192004

/-- `a(n%2*(n-1)/2)` -/
def P1720468877807059825.Spec : Prop :=
  ∀ n, P1720468877807059825.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P1091667614225743948

`a(gcd(xor(1, n²), ∑[n])-1)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A192004.P1091667614225743948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A192004.P1091667614225743948

namespace A192004

/-- `a(gcd(xor(1, n²), ∑[n])-1)` -/
def P1091667614225743948.Spec : Prop :=
  ∀ n, P1091667614225743948.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P6300900760054565413

`ratio[2/a(floor(n/2))^(-1)]` with `a(0)=-1, a(1)=-1, a(2)=1`
-/

namespace A192004.P6300900760054565413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1, -1, 1] fun n f1 =>
  2 / f1 ⌊(n : ℚ) / 2⌋.toNat ^ (-1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A192004.P6300900760054565413

namespace A192004

/-- `ratio[2/a(floor(n/2))^(-1)]` -/
def P6300900760054565413.Spec : Prop :=
  ∀ n, P6300900760054565413.a n = (A192004 (n + 1) : ℚ)

end A192004

/-! ## A192004.P9628602712361036445

`ratio[a(floor(n/2))/(1-1/2)]` with `a(0)=-1, a(1)=-1, a(2)=1`
-/

namespace A192004.P9628602712361036445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1, -1, 1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) / f1 n

end

end A192004.P9628602712361036445

namespace A192004

/-- `ratio[a(floor(n/2))/(1-1/2)]` -/
def P9628602712361036445.Spec : Prop :=
  ∀ n, P9628602712361036445.a n = (A192004 (n + 1) : ℚ)

end A192004

/-! ## A192004.P2521032696558642002

`a(A152271(n)-1)` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A192004.P2521032696558642002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (A152271 n - 1).toNat

end

end A192004.P2521032696558642002

namespace A192004

/-- `a(A152271(n)-1)` -/
def P2521032696558642002.Spec : Prop :=
  ∀ n, P2521032696558642002.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P15200598251406210983

`a(∑[n]-(A266287(n)-n))` with `a(0)=1, a(1)=-1, a(2)=-2`
-/

namespace A192004.P15200598251406210983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2] fun n a =>
  a (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A266287 n - (n : ℤ))).toNat

end

end A192004.P15200598251406210983

namespace A192004

/-- `a(∑[n]-(A266287(n)-n))` -/
def P15200598251406210983.Spec : Prop :=
  ∀ n, P15200598251406210983.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P6017365403584884804

`A087204(A369029(n))`
-/

namespace A192004.P6017365403584884804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (A369029 n).toNat

end

end A192004.P6017365403584884804

namespace A192004

/-- `A087204(A369029(n))` -/
def P6017365403584884804.Spec : Prop :=
  ∀ n, P6017365403584884804.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P659792010518034868

`A087204(A303077(n+1))`
-/

namespace A192004.P659792010518034868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (A303077 (n + 1)).toNat

end

end A192004.P659792010518034868

namespace A192004

/-- `A087204(A303077(n+1))` -/
def P659792010518034868.Spec : Prop :=
  ∀ n, P659792010518034868.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P15765963745511137765

`A087204(A347241(n+1))`
-/

namespace A192004.P15765963745511137765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (A347241 (n + 1)).toNat

end

end A192004.P15765963745511137765

namespace A192004

/-- `A087204(A347241(n+1))` -/
def P15765963745511137765.Spec : Prop :=
  ∀ n, P15765963745511137765.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P11709323037071022247

`A087204(A369033(n+1))`
-/

namespace A192004.P11709323037071022247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 (A369033 (n + 1)).toNat

end

end A192004.P11709323037071022247

namespace A192004

/-- `A087204(A369033(n+1))` -/
def P11709323037071022247.Spec : Prop :=
  ∀ n, P11709323037071022247.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P9079864143435071290

`A057079(A303077(n+1)+1)`
-/

namespace A192004.P9079864143435071290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A303077 (n + 1) + 1).toNat

end

end A192004.P9079864143435071290

namespace A192004

/-- `A057079(A303077(n+1)+1)` -/
def P9079864143435071290.Spec : Prop :=
  ∀ n, P9079864143435071290.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P15351377334837438602

`A101675(A303077(n+1)-1)`
-/

namespace A192004.P15351377334837438602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101675 (A303077 (n + 1) - 1).toNat

end

end A192004.P15351377334837438602

namespace A192004

/-- `A101675(A303077(n+1)-1)` -/
def P15351377334837438602.Spec : Prop :=
  ∀ n, P15351377334837438602.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P18071179158061617943

`A057079(A151762(4*(n+1)))`
-/

namespace A192004.P18071179158061617943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A151762 (4 * (n + 1))).toNat

end

end A192004.P18071179158061617943

namespace A192004

/-- `A057079(A151762(4*(n+1)))` -/
def P18071179158061617943.Spec : Prop :=
  ∀ n, P18071179158061617943.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P12777458312655846918

`A100051(A303077(n+1)+6)`
-/

namespace A192004.P12777458312655846918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (A303077 (n + 1) + 6).toNat

end

end A192004.P12777458312655846918

namespace A192004

/-- `A100051(A303077(n+1)+6)` -/
def P12777458312655846918.Spec : Prop :=
  ∀ n, P12777458312655846918.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P4890048221046645038

`A187036(3*n+1)+xor(1, A187036(2*n))`
-/

namespace A192004.P4890048221046645038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187036 (3 * n + 1) + Int.xor 1 (A187036 (2 * n))

end

end A192004.P4890048221046645038

namespace A192004

/-- `A187036(3*n+1)+xor(1, A187036(2*n))` -/
def P4890048221046645038.Spec : Prop :=
  ∀ n, P4890048221046645038.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P2175762801408144169

`A107393(A003958(n+1))-A158388(n)`
-/

namespace A192004.P2175762801408144169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A003958 (n + 1)).toNat - A158388 n

end

end A192004.P2175762801408144169

namespace A192004

/-- `A107393(A003958(n+1))-A158388(n)` -/
def P2175762801408144169.Spec : Prop :=
  ∀ n, P2175762801408144169.a n = A192004 (n + 1)

end A192004

/-! ## A192004.P4911647426707879333

`A141533(gcd(A006530(n+1), A226023(n)))`
-/

namespace A192004.P4911647426707879333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141533 (Int.gcd (A006530 (n + 1)) (A226023 n))

end

end A192004.P4911647426707879333

namespace A192004

/-- `A141533(gcd(A006530(n+1), A226023(n)))` -/
def P4911647426707879333.Spec : Prop :=
  ∀ n, P4911647426707879333.a n = A192004 (n + 1)

end A192004

/-!
# A192005: Number of non-cyclic abelian groups of finite order. The order is given by A013929.

The programs for A192005, there is no canonical definition to state claims against.
-/

/-! ## A192005.P103672091820961602

`A000688(A013929(n+1))-1`
-/

namespace A192005.P103672091820961602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A013929 (n + 1)).toNat - 1

end

end A192005.P103672091820961602

/-! ## A192005.P10122051511748037959

`A000688(sqrt(A062320(n+1)))-1`
-/

namespace A192005.P10122051511748037959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (SequenceMachineLib.roundAway (Real.sqrt (A062320 (n + 1) : ℝ))).toNat - 1

end

end A192005.P10122051511748037959

/-! ## A192005.P1274907465831806398

`A000688(record[A088609(n+2)])-1`
-/

namespace A192005.P1274907465831806398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A192005.P1274907465831806398

/-! ## A192005.P10421640592038332949

`A000688(record[A105570(n+4)])-1`
-/

namespace A192005.P10421640592038332949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A192005.P10421640592038332949

/-! ## A192005.P15332918179850038711

`A000688(eq[0, A008683(n+1)]+1)-1`
-/

namespace A192005.P15332918179850038711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A192005.P15332918179850038711

/-! ## A192005.P10874013909458616783

`A000688(lt[1, A000188(n+1)]+1)-1`
-/

namespace A192005.P10874013909458616783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A192005.P10874013909458616783

/-! ## A192005.P1950730021242328792

`A000688(lt[1, A000688(n+1)]+1)-1`
-/

namespace A192005.P1950730021242328792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A192005.P1950730021242328792

/-! ## A192005.P11062918501827534665

`A023443(A000688(A013929(n+1)))`
-/

namespace A192005.P11062918501827534665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000688 (A013929 (n + 1)).toNat).toNat

end

end A192005.P11062918501827534665

/-! ## A192005.P8028454686467839762

`A000720(p?[A008578(A000688(n+1))])`
-/

namespace A192005.P8028454686467839762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192005.P8028454686467839762

/-! ## A192005.P722264661198716676

`A003963(p?[A008578(A000688(n+1))])`
-/

namespace A192005.P722264661198716676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192005.P722264661198716676

/-! ## A192005.P13029317631204441449

`A026233(p?[A008578(A000688(n+1))])`
-/

namespace A192005.P13029317631204441449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192005.P13029317631204441449

/-! ## A192005.P18366596781751055182

`A055396(p?[A008578(A000688(n+1))])`
-/

namespace A192005.P18366596781751055182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A192005.P18366596781751055182

/-! ## A192005.P13602843620861713516

`A000688(lt[1, A285718(n+1)])-1`
-/

namespace A192005.P13602843620861713516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A192005.P13602843620861713516

/-! ## A192005.P14615164955206658073

`A057918(A000688(A013929(n+1))²)`
-/

namespace A192005.P14615164955206658073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A000688 (A013929 (n + 1)).toNat ^ 2).toNat

end

end A192005.P14615164955206658073

/-!
# A192006: a(n) = Sum_{d|n} Kronecker(-14, d) with a(0) = 2.

The programs for A192006, there is no canonical definition to state claims against.
-/

/-! ## A192006.P16195097711514962422

`A035176(gcd(n, A168101(n)))`
-/

namespace A192006.P16195097711514962422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (Int.gcd (n : ℤ) (A168101 n))

end

end A192006.P16195097711514962422

/-! ## A192006.P250570154551664539

`A035176(xor(1, A141044(n))+n)`
-/

namespace A192006.P250570154551664539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (Int.xor 1 (A141044 n) + (n : ℤ)).toNat

end

end A192006.P250570154551664539

/-! ## A192006.P7161456126367821217

`A035176(xor(1, xor(n, A141044(n))))`
-/

namespace A192006.P7161456126367821217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (Int.xor 1 (Int.xor (n : ℤ) (A141044 n))).toNat

end

end A192006.P7161456126367821217

/-! ## A192006.P5098022309066227434

`A035176(A004442(ceil(2/(n+1)))+n)`
-/

namespace A192006.P5098022309066227434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A004442 ⌈2 / (n + 1 : ℚ)⌉.toNat + (n : ℤ)).toNat

end

end A192006.P5098022309066227434

/-! ## A192006.P12441933099197066839

`A035176(A028310(n))+A000007(n)`
-/

namespace A192006.P12441933099197066839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A028310 n).toNat + A000007 n

end

end A192006.P12441933099197066839

/-! ## A192006.P679119143922390618

`A035176(A168101(n)-A008586(n))`
-/

namespace A192006.P679119143922390618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A168101 n - A008586 n).toNat

end

end A192006.P679119143922390618

/-! ## A192006.P10477766400921624496

`A035176(A004442(xor(n, A141044(n))))`
-/

namespace A192006.P10477766400921624496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A004442 (Int.xor (n : ℤ) (A141044 n)).toNat).toNat

end

end A192006.P10477766400921624496

/-! ## A192006.P16392110601573156096

`A035176(A000007(n)+n)+A000007(n)`
-/

namespace A192006.P16392110601573156096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A000007 n + (n : ℤ)).toNat + A000007 n

end

end A192006.P16392110601573156096

/-! ## A192006.P5846428543872593410

`A035176(n*a(A102669(n)))` with `a(0)=2`
-/

namespace A192006.P5846428543872593410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A035176 ((n : ℤ) * a (A102669 n).toNat).toNat

end

end A192006.P5846428543872593410

/-! ## A192006.P9050624977942929007

`A035176(A004277(n))+A000007(n)`
-/

namespace A192006.P9050624977942929007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A004277 n).toNat + A000007 n

end

end A192006.P9050624977942929007

/-! ## A192006.P10397799942397875343

`A035176(A065033(2*n)+A000038(n))`
-/

namespace A192006.P10397799942397875343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A065033 (2 * n) + A000038 n).toNat

end

end A192006.P10397799942397875343

/-! ## A192006.P9174115245924912105

`A035176(or(A000038(n), A065033(2*n)))`
-/

namespace A192006.P9174115245924912105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (Int.lor (A000038 n) (A065033 (2 * n))).toNat

end

end A192006.P9174115245924912105

/-! ## A192006.P17074572292319885514

`A035176(A168101(n)+2*n)`
-/

namespace A192006.P17074572292319885514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A168101 n + (2 * n : ℤ)).toNat

end

end A192006.P17074572292319885514

/-! ## A192006.P11467393276680779072

`A035176(A168101(n)+n+n)`
-/

namespace A192006.P11467393276680779072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A168101 n + (n : ℤ) + (n : ℤ)).toNat

end

end A192006.P11467393276680779072

/-!
# A192007: E.g.f. sin(cos(x)-1) (even part).

The programs for A192007, there is no canonical definition to state claims against.
-/

/-! ## A192007.P8992989158123579033

`A089077(A035489(n))`
-/

namespace A192007.P8992989158123579033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089077 (A035489 n).toNat

end

end A192007.P8992989158123579033

/-!
# A192008: Modified linear phone booth sequence: number of ways to occupy n phone booths in a row, one by one, each time picking a phone booth adjacent to the smallest number of previously occupied phone booths.

The programs for A192008, there is no canonical definition to state claims against.
-/

/-! ## A192008.P1019742046988949910

`and(∑[A087299(n)], A277743(n+4))`
-/

namespace A192008.P1019742046988949910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A277743 (n + 4))

end

end A192008.P1019742046988949910

/-! ## A192008.P14983876098107708077

`and(∏[A280608(n)], A277743(n+4))`
-/

namespace A192008.P14983876098107708077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∏ j ∈ Finset.range (n + 1), f1 j) (A277743 (n + 4))

end

end A192008.P14983876098107708077

/-! ## A192008.P5299815706982790004

`A165904(n)+A006925(A006720(n))`
-/

namespace A192008.P5299815706982790004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165904 n + A006925 (A006720 n).toNat

end

end A192008.P5299815706982790004

/-!
# A192009: Modified cyclic phone booth sequence: number of ways to occupy n labeled phone booths in a circle one by one, each time picking a phone booth adjacent to the smallest number of previously occupied phone booths.

The programs for A192009, there is no canonical definition to state claims against.
-/

/-! ## A192009.P11157110093500125167

`(n+1)*A276657(n+1)`
-/

namespace A192009.P11157110093500125167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A276657 (n + 1)

end

end A192009.P11157110093500125167

/-! ## A192009.P2965237390736562263

`A018708(A329739(n))*A018710(n+1)`
-/

namespace A192009.P2965237390736562263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018708 (A329739 n).toNat * A018710 (n + 1)

end

end A192009.P2965237390736562263

/-!
# A192010: The smallest number with n digits in its prime factorization (total count of digits of all bases and exponents).

The programs for A192010, there is no canonical definition to state claims against.
-/

/-! ## A192010.P250852017715237731

`A267191(A240506(n))`
-/

namespace A192010.P250852017715237731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267191 (A240506 n).toNat

end

end A192010.P250852017715237731

/-!
# A192011: Let P(0,x) = -1, P(1,x) = 2*x, and P(n,x) = x*P(n-1,x) - P(n-2,x) for n > 1. This sequence is the triangle of polynomial coefficients in order of decreasing exponents.

The programs for A192011, there is no canonical definition to state claims against.
-/

/-! ## A192011.P9815356844813938

`4*A192174(n)-A195662(n)`
-/

namespace A192011.P9815356844813938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A192174 n - A195662 n

end

end A192011.P9815356844813938

/-! ## A192011.P3128136484448667118

`3*A192174(n)%(n+1)-A135929(n)`
-/

namespace A192011.P3128136484448667118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (A192174 n) (n + 1 : ℤ) - A135929 n

end

end A192011.P3128136484448667118

/-! ## A192011.P724312853364441850

`3*A192174(abs(1-n)+1)-A135929(n)`
-/

namespace A192011.P724312853364441850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192174 (|1 - (n : ℤ)| + 1).toNat - A135929 n

end

end A192011.P724312853364441850

/-! ## A192011.P2523316716473786337

`A053119(n)+A195662(n)-A192174(n)`
-/

namespace A192011.P2523316716473786337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n + (A195662 n - A192174 n)

end

end A192011.P2523316716473786337

/-! ## A192011.P17478178104698192591

`3*A057427(n)*A192174(n)-A135929(n)`
-/

namespace A192011.P17478178104698192591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A057427 n * A192174 n) - A135929 n

end

end A192011.P17478178104698192591

/-! ## A192011.P16392947501357338680

`3*and(1, A000040(n+1))*A192174(n)-A135929(n)`
-/

namespace A192011.P16392947501357338680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (Int.land 1 (A000040 (n + 1)) * A192174 n) - A135929 n

end

end A192011.P16392947501357338680

/-! ## A192011.P13999946470760707947

`3*A000045(ceil(n/(n+1)))*A192174(n)-A135929(n)`
-/

namespace A192011.P13999946470760707947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000045 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A192174 n) - A135929 n

end

end A192011.P13999946470760707947

/-! ## A192011.P10312147547212716711

`A049310(A061579(n))+A195662(n)-A192174(n)`
-/

namespace A192011.P10312147547212716711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A061579 n).toNat + (A195662 n - A192174 n)

end

end A192011.P10312147547212716711

/-! ## A192011.P15987220714761834001

`A195662(n)+A053118(n)/A130321(n)-A192174(n)`
-/

namespace A192011.P15987220714761834001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195662 n : ℚ) + (A053118 n : ℚ) / (A130321 n : ℚ) - (A192174 n : ℚ)

end

end A192011.P15987220714761834001

/-! ## A192011.P1495119455238954131

`A195673(n)-A192174(n)`
-/

namespace A192011.P1495119455238954131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195673 n - A192174 n

end

end A192011.P1495119455238954131

/-!
# A192012: Number of ways to use the elements of set {1,..,k}, 0<=k<=3*n, once each to form a collection of n (possibly empty) sets, each with at most 3 elements.

The programs for A192012, there is no canonical definition to state claims against.
-/

/-! ## A192012.P7856801187329665824

`∑[A144416(n)]`
-/

namespace A192012.P7856801187329665824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192012.P7856801187329665824

/-! ## A192012.P3114673346698591653

`∑[A144422(n)/n!]`
-/

namespace A192012.P3114673346698591653
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192012.P3114673346698591653

/-! ## A192012.P2734745625752177380

`∑[A144422(n)/A000142(n)]`
-/

namespace A192012.P2734745625752177380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144422 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192012.P2734745625752177380

/-! ## A192012.P12555188689001132424

`∑[A144510(A167614(n+1))]`
-/

namespace A192012.P12555188689001132424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192012.P12555188689001132424

/-!
# A192013: a(n) = Sum_{d|n} Kronecker(-6, d).

The programs for A192013, there is no canonical definition to state claims against.
-/

/-! ## A192013.P3681536566393059457

`A000377(n+1)`
-/

namespace A192013.P3681536566393059457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (n + 1)

end

end A192013.P3681536566393059457

/-! ## A192013.P1796391166575156809

`A190611(2*(n+1))`
-/

namespace A192013.P1796391166575156809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (2 * (n + 1))

end

end A192013.P1796391166575156809

/-! ## A192013.P7435225122762461721

`abs(A115660(n+1))`
-/

namespace A192013.P7435225122762461721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115660 (n + 1)|

end

end A192013.P7435225122762461721

/-! ## A192013.P17514218049900190101

`abs(A128581(n+1))`
-/

namespace A192013.P17514218049900190101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128581 (n + 1)|

end

end A192013.P17514218049900190101

/-! ## A192013.P9428922321752629191

`∑{d}[n+1, A109017(#)]`
-/

namespace A192013.P9428922321752629191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109017 d

end

end A192013.P9428922321752629191

/-! ## A192013.P2463341907213306093

`-A190611((n+1)/2^val(n+1, 2))`
-/

namespace A192013.P2463341907213306093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A190611 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A192013.P2463341907213306093

/-! ## A192013.P13807920283891126170

`A129402(A025480(n))`
-/

namespace A192013.P13807920283891126170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (A025480 n).toNat

end

end A192013.P13807920283891126170

/-! ## A192013.P12677766284833338044

`A129402(A101279(n+1))`
-/

namespace A192013.P12677766284833338044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129402 (A101279 (n + 1)).toNat

end

end A192013.P12677766284833338044

/-! ## A192013.P4229087365563423504

`gcd(A000038(n), A115660(n+1))`
-/

namespace A192013.P4229087365563423504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A115660 (n + 1))

end

end A192013.P4229087365563423504

/-! ## A192013.P7573244299683555768

`gcd(A127802(n), A128581(n+1))`
-/

namespace A192013.P7573244299683555768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127802 n) (A128581 (n + 1))

end

end A192013.P7573244299683555768

/-! ## A192013.P7718591255462753051

`lcm(A020985(n), A115660(n+1))`
-/

namespace A192013.P7718591255462753051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A115660 (n + 1))

end

end A192013.P7718591255462753051

/-! ## A192013.P17613840218818796143

`lcm(A033999(n), A128581(n+1))`
-/

namespace A192013.P17613840218818796143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A128581 (n + 1))

end

end A192013.P17613840218818796143

/-! ## A192013.P8506507180729776454

`A046113(n+1)-A115660(n+1)`
-/

namespace A192013.P8506507180729776454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (n + 1) - A115660 (n + 1)

end

end A192013.P8506507180729776454

/-! ## A192013.P14169373670820994936

`abs(A190611(n+1))`
-/

namespace A192013.P14169373670820994936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190611 (n + 1)|

end

end A192013.P14169373670820994936

/-! ## A192013.P3562036209640053911

`abs(A261122(n+1))`
-/

namespace A192013.P3562036209640053911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261122 (n + 1)|

end

end A192013.P3562036209640053911

/-! ## A192013.P10232002163107968506

`lcm(A160357(n), A261122(n+1))`
-/

namespace A192013.P10232002163107968506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160357 n) (A261122 (n + 1))

end

end A192013.P10232002163107968506

/-! ## A192013.P12759160677613571313

`∑{d}[A190611(n+1), A000010(#)]`
-/

namespace A192013.P12759160677613571313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A192013.P12759160677613571313

/-! ## A192013.P1700609466046081371

`A115660(n+1)+A108563(n+1)`
-/

namespace A192013.P1700609466046081371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (n + 1) + A108563 (n + 1)

end

end A192013.P1700609466046081371

/-! ## A192013.P4802679646791530665

`A115660(2*(n+1))+A046113(n+1)`
-/

namespace A192013.P4802679646791530665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (2 * (n + 1)) + A046113 (n + 1)

end

end A192013.P4802679646791530665

/-! ## A192013.P7084526386136668750

`A261122(4*(n+1))`
-/

namespace A192013.P7084526386136668750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261122 (4 * (n + 1))

end

end A192013.P7084526386136668750

/-!
# A192015: Arithmetic derivative of prime powers: a(n) = A003415(A000961(n)).

The programs for A192015, the canonical program `A192015.P4229160100283672966` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192015 has offset 1).

The definition of A192015 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A003415, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192015.P13763126220731146343

`A025474(n+1)*A025473(n+1)^(A025474(n+1)-1)`
-/

namespace A192015.P13763126220731146343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025474 (n + 1) : ℚ) * (A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) - 1 : ℤ)

end

end A192015.P13763126220731146343

namespace A192015

/-- `A025474(n+1)*A025473(n+1)^(A025474(n+1)-1)` -/
def P13763126220731146343.Spec : Prop :=
  ∀ n, P13763126220731146343.a n = (A192015 (n + 1) : ℚ)

end A192015

/-! ## A192015.P4229160100283672966

`A003415(A000961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A192015

/-- `A003415(A000961(n+1))` -/
def P4229160100283672966.Spec : Prop :=
  ∀ n, P4229160100283672966.a n = A192015 (n + 1)

theorem P4229160100283672966.correct : P4229160100283672966.Spec := by
  intro n
  simp only [A192015, Nat.add_sub_cancel]

end A192015

/-! ## A192015.P13731435606986650329

`A000961(n+1)-A192134(n+1)`
-/

namespace A192015.P13731435606986650329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A192134 (n + 1)

end

end A192015.P13731435606986650329

namespace A192015

/-- `A000961(n+1)-A192134(n+1)` -/
def P13731435606986650329.Spec : Prop :=
  ∀ n, P13731435606986650329.a n = A192015 (n + 1)

theorem P13731435606986650329.correct : P13731435606986650329.Spec := by
  intro n
  simp only [A192015, Nat.add_sub_cancel, A192015.P13731435606986650329.a, A192015.P4229160100283672966.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A192134, A192134.P4831734951795111241.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192015

/-! ## A192015.P17888250204490637923

`A192083(n+1)/A138929(n+1)`
-/

namespace A192015.P17888250204490637923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192083 (n + 1) : ℚ) / (A138929 (n + 1) : ℚ)

end

end A192015.P17888250204490637923

namespace A192015

/-- `A192083(n+1)/A138929(n+1)` -/
def P17888250204490637923.Spec : Prop :=
  ∀ n, P17888250204490637923.a n = (A192015 (n + 1) : ℚ)

end A192015

/-! ## A192015.P1158477666948681513

`sqrt(A056798(n+1))-A192134(n+1)`
-/

namespace A192015.P1158477666948681513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (n + 1) : ℝ) - (A192134 (n + 1) : ℝ)

end

end A192015.P1158477666948681513

namespace A192015

/-- `sqrt(A056798(n+1))-A192134(n+1)` -/
def P1158477666948681513.Spec : Prop :=
  ∀ n, P1158477666948681513.a n = (A192015 (n + 1) : ℝ)

end A192015

/-! ## A192015.P5233901783324356969

`A181062(n+1)+1-A192134(n+1)`
-/

namespace A192015.P5233901783324356969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1) + (1 - A192134 (n + 1))

end

end A192015.P5233901783324356969

namespace A192015

/-- `A181062(n+1)+1-A192134(n+1)` -/
def P5233901783324356969.Spec : Prop :=
  ∀ n, P5233901783324356969.a n = A192015 (n + 1)

theorem P5233901783324356969.correct : P5233901783324356969.Spec := by
  intro n
  simp only [A192015, Nat.add_sub_cancel, A192015.P5233901783324356969.a, A192015.P4229160100283672966.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A181062, A181062.P6529548857799504333.a, A192134, A192134.P4831734951795111241.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192015

/-! ## A192015.P8154424189586709429

`A138929(n+1)/2-A192134(n+1)`
-/

namespace A192015.P8154424189586709429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2 - (A192134 (n + 1) : ℚ)

end

end A192015.P8154424189586709429

namespace A192015

/-- `A138929(n+1)/2-A192134(n+1)` -/
def P8154424189586709429.Spec : Prop :=
  ∀ n, P8154424189586709429.a n = (A192015 (n + 1) : ℚ)

theorem P8154424189586709429.correct : P8154424189586709429.Spec := by
  intro n
  simp only [A192015, Nat.add_sub_cancel, A192015.P8154424189586709429.a, A192015.P4229160100283672966.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A138929, A138929.P2871587686834618281.a, A192134, A192134.P4831734951795111241.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192015

/-! ## A192015.P13855963580111161650

`A192083(n+1)/(2*A000961(n+1))`
-/

namespace A192015.P13855963580111161650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192083 (n + 1) : ℚ) / (2 * A000961 (n + 1) : ℚ)

end

end A192015.P13855963580111161650

namespace A192015

/-- `A192083(n+1)/(2*A000961(n+1))` -/
def P13855963580111161650.Spec : Prop :=
  ∀ n, P13855963580111161650.a n = (A192015 (n + 1) : ℚ)

end A192015

/-! ## A192015.P16494218517726487851

`∑[A057820(A028310(n))]-A192134(n+1)`
-/

namespace A192015.P16494218517726487851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192134 (n + 1)

end

end A192015.P16494218517726487851

namespace A192015

/-- `∑[A057820(A028310(n))]-A192134(n+1)` -/
def P16494218517726487851.Spec : Prop :=
  ∀ n, P16494218517726487851.a n = A192015 (n + 1)

end A192015

/-! ## A192015.P8914381600081835606

`A246655(n+1)-(A192134(n+1)+A057820(n+1))`
-/

namespace A192015.P8914381600081835606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - (A192134 (n + 1) + A057820 (n + 1))

end

end A192015.P8914381600081835606

namespace A192015

/-- `A246655(n+1)-(A192134(n+1)+A057820(n+1))` -/
def P8914381600081835606.Spec : Prop :=
  ∀ n, P8914381600081835606.a n = A192015 (n + 1)

theorem P8914381600081835606.correct : P8914381600081835606.Spec := by
  intro n
  simp only [A192015, Nat.add_sub_cancel, A192015.P8914381600081835606.a, A192015.P4229160100283672966.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A057820, A057820.P915405789854175386.a, A192134, A192134.P4831734951795111241.a, A246655, A246655.P2302191067120461210.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192015

/-! ## A192015.P7126981609980270678

`A309269(n+1)-(A246655(n+1)+A192134(n+1))`
-/

namespace A192015.P7126981609980270678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309269 (n + 1) - (A246655 (n + 1) + A192134 (n + 1))

end

end A192015.P7126981609980270678

namespace A192015

/-- `A309269(n+1)-(A246655(n+1)+A192134(n+1))` -/
def P7126981609980270678.Spec : Prop :=
  ∀ n, P7126981609980270678.a n = A192015 (n + 1)

theorem P7126981609980270678.correct : P7126981609980270678.Spec := by
  intro n
  simp only [A192015, Nat.add_sub_cancel, A192015.P7126981609980270678.a, A192015.P4229160100283672966.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A192134, A192134.P4831734951795111241.a, A246655, A246655.P2302191067120461210.a, A309269, A309269.P6439327140874271105.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192015

/-! ## A192015.P11149567839118852201

`(A000961(n+1)-A085730(n+1))*A025474(n+1)`
-/

namespace A192015.P11149567839118852201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) - A085730 (n + 1)) * A025474 (n + 1)

end

end A192015.P11149567839118852201

namespace A192015

/-- `(A000961(n+1)-A085730(n+1))*A025474(n+1)` -/
def P11149567839118852201.Spec : Prop :=
  ∀ n, P11149567839118852201.a n = A192015 (n + 1)

end A192015

/-! ## A192015.P5232817025525381291

`A121315(n+1)/A246655(n+1)-A192134(n+1)`
-/

namespace A192015.P5232817025525381291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121315 (n + 1) : ℚ) / (A246655 (n + 1) : ℚ) - (A192134 (n + 1) : ℚ)

end

end A192015.P5232817025525381291

namespace A192015

/-- `A121315(n+1)/A246655(n+1)-A192134(n+1)` -/
def P5232817025525381291.Spec : Prop :=
  ∀ n, P5232817025525381291.a n = (A192015 (n + 1) : ℚ)

end A192015

/-! ## A192015.P5806924225326105277

`A000961(n+1)/A025473(n+1)*A025474(n+1)`
-/

namespace A192015.P5806924225326105277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) / (A025473 (n + 1) : ℚ) * (A025474 (n + 1) : ℚ)

end

end A192015.P5806924225326105277

namespace A192015

/-- `A000961(n+1)/A025473(n+1)*A025474(n+1)` -/
def P5806924225326105277.Spec : Prop :=
  ∀ n, P5806924225326105277.a n = (A192015 (n + 1) : ℚ)

end A192015

/-! ## A192015.P13892659662060481683

`∑{d}[A138929(n+1)/2, A300251(#)]`
-/

namespace A192015.P13892659662060481683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A192015.P13892659662060481683

namespace A192015

/-- `∑{d}[A138929(n+1)/2, A300251(#)]` -/
def P13892659662060481683.Spec : Prop :=
  ∀ n, P13892659662060481683.a n = A192015 (n + 1)

end A192015

/-! ## A192015.P8227654821750986935

`A025474(n+1)*A069359(A000961(n+1))`
-/

namespace A192015.P8227654821750986935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1) * A069359 (A000961 (n + 1)).toNat

end

end A192015.P8227654821750986935

namespace A192015

/-- `A025474(n+1)*A069359(A000961(n+1))` -/
def P8227654821750986935.Spec : Prop :=
  ∀ n, P8227654821750986935.a n = A192015 (n + 1)

end A192015

/-! ## A192015.P9388602215561308592

`A025474(n+1)*A069359(lt[A001221(n+1), 2]+1)`
-/

namespace A192015.P9388602215561308592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1) * A069359 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A192015.P9388602215561308592

namespace A192015

/-- `A025474(n+1)*A069359(lt[A001221(n+1), 2]+1)` -/
def P9388602215561308592.Spec : Prop :=
  ∀ n, P9388602215561308592.a n = A192015 (n + 1)

end A192015

/-! ## A192015.P1915480971149059879

`A025474(n+1)*A069359(A025473(n+1)^A025474(n+1))`
-/

namespace A192015.P1915480971149059879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025474 (n + 1) * A069359 (SequenceMachineLib.roundAway ((A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ))).toNat

end

end A192015.P1915480971149059879

namespace A192015

/-- `A025474(n+1)*A069359(A025473(n+1)^A025474(n+1))` -/
def P1915480971149059879.Spec : Prop :=
  ∀ n, P1915480971149059879.a n = A192015 (n + 1)

end A192015

/-! ## A192015.P8639180555726710967

`A003415(eq[1, A066882(n)])`
-/

namespace A192015.P8639180555726710967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192015.P8639180555726710967

namespace A192015

/-- `A003415(eq[1, A066882(n)])` -/
def P8639180555726710967.Spec : Prop :=
  ∀ n, P8639180555726710967.a n = A192015 (n + 1)

end A192015

/-! ## A192015.P3045341376178513612

`A003415(record[A008475(n+1)])`
-/

namespace A192015.P3045341376178513612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192015.P3045341376178513612

namespace A192015

/-- `A003415(record[A008475(n+1)])` -/
def P3045341376178513612.Spec : Prop :=
  ∀ n, P3045341376178513612.a n = A192015 (n + 1)

end A192015

/-!
# A192016: Second arithmetic derivative of prime powers: a(n) = A068346(A000961(n)).

The programs for A192016, the canonical program `A192016.P16767294491399354515` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192016 has offset 1).

The definition of A192016 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000961, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192016.P16767294491399354515

`A068346(A000961(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A192016

/-- `A068346(A000961(n+1))` -/
def P16767294491399354515.Spec : Prop :=
  ∀ n, P16767294491399354515.a n = A192016 (n + 1)

theorem P16767294491399354515.correct : P16767294491399354515.Spec := by
  intro n
  simp only [A192016, Nat.add_sub_cancel]

end A192016

/-! ## A192016.P15191325140762394795

`A003415(A192015(n+1))`
-/

namespace A192016.P15191325140762394795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A192015 (n + 1)).toNat

end

end A192016.P15191325140762394795

namespace A192016

/-- `A003415(A192015(n+1))` -/
def P15191325140762394795.Spec : Prop :=
  ∀ n, P15191325140762394795.a n = A192016 (n + 1)

end A192016

/-! ## A192016.P10732990778461750893

`A068346(sqrt(A056798(n+1)))`
-/

namespace A192016.P10732990778461750893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A192016.P10732990778461750893

namespace A192016

/-- `A068346(sqrt(A056798(n+1)))` -/
def P10732990778461750893.Spec : Prop :=
  ∀ n, P10732990778461750893.a n = A192016 (n + 1)

end A192016

/-! ## A192016.P4189257694216155529

`A068346(record[A068794(n+1)])`
-/

namespace A192016.P4189257694216155529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192016.P4189257694216155529

namespace A192016

/-- `A068346(record[A068794(n+1)])` -/
def P4189257694216155529.Spec : Prop :=
  ∀ n, P4189257694216155529.a n = A192016 (n + 1)

end A192016

/-! ## A192016.P9384348739283803891

`A068346(A181062(n+1)+1)`
-/

namespace A192016.P9384348739283803891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (A181062 (n + 1) + 1).toNat

end

end A192016.P9384348739283803891

namespace A192016

/-- `A068346(A181062(n+1)+1)` -/
def P9384348739283803891.Spec : Prop :=
  ∀ n, P9384348739283803891.a n = A192016 (n + 1)

theorem P9384348739283803891.correct : P9384348739283803891.Spec := by
  intro n
  simp only [A192016, Nat.add_sub_cancel, A192016.P9384348739283803891.a, A192016.P16767294491399354515.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A068346, A068346.P16736836852944168196.a, A181062, A181062.P6529548857799504333.a, A000079, A000079.P10855139691139572931.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192016

/-! ## A192016.P3541800178759306861

`A068346(lt[A001221(n+1), 2]+1)`
-/

namespace A192016.P3541800178759306861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A192016.P3541800178759306861

namespace A192016

/-- `A068346(lt[A001221(n+1), 2]+1)` -/
def P3541800178759306861.Spec : Prop :=
  ∀ n, P3541800178759306861.a n = A192016 (n + 1)

end A192016

/-! ## A192016.P6314060569420962338

`A068346(record[(n+1)/A008480(n+1)])`
-/

namespace A192016.P6314060569420962338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008480 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A192016.P6314060569420962338

namespace A192016

/-- `A068346(record[(n+1)/A008480(n+1)])` -/
def P6314060569420962338.Spec : Prop :=
  ∀ n, P6314060569420962338.a n = A192016 (n + 1)

end A192016

/-! ## A192016.P7254256739179009382

`A068346(record[(n+1)/A063919(n+1)])`
-/

namespace A192016.P7254256739179009382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A063919 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A192016.P7254256739179009382

namespace A192016

/-- `A068346(record[(n+1)/A063919(n+1)])` -/
def P7254256739179009382.Spec : Prop :=
  ∀ n, P7254256739179009382.a n = A192016 (n + 1)

end A192016

/-! ## A192016.P17249564694167460246

`A068346(A025473(n+1)^A025474(n+1))`
-/

namespace A192016.P17249564694167460246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (SequenceMachineLib.roundAway ((A025473 (n + 1) : ℚ) ^ (A025474 (n + 1) : ℤ))).toNat

end

end A192016.P17249564694167460246

namespace A192016

/-- `A068346(A025473(n+1)^A025474(n+1))` -/
def P17249564694167460246.Spec : Prop :=
  ∀ n, P17249564694167460246.a n = A192016 (n + 1)

end A192016

/-! ## A192016.P8593080194095532662

`A003415(A000961(n+1)-A192134(n+1))`
-/

namespace A192016.P8593080194095532662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000961 (n + 1) - A192134 (n + 1)).toNat

end

end A192016.P8593080194095532662

namespace A192016

/-- `A003415(A000961(n+1)-A192134(n+1))` -/
def P8593080194095532662.Spec : Prop :=
  ∀ n, P8593080194095532662.a n = A192016 (n + 1)

end A192016

/-!
# A192019: The Wiener index of the binary Fibonacci tree of order n.

The programs for A192019, there is no canonical definition to state claims against.
-/

/-! ## A192019.P8277199238215703414

`A377057(A082019(n+1))-A001595(n)`
-/

namespace A192019.P8277199238215703414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377057 (A082019 (n + 1)).toNat - A001595 n

end

end A192019.P8277199238215703414

/-!
# A192020: Triangle read by rows: T(n,k) is the number of unordered pairs of nodes at distance k in the binomial tree of order n (1 <= k <= 2n-1; entries in row n are the coefficients of the corresponding Wiener polynomial).

The programs for A192020, there is no canonical definition to state claims against.
-/

/-! ## A192020.P2023153566470167994

`A235501(2*C(floor(sqrt(n))+2, 2)+n)`
-/

namespace A192020.P2023153566470167994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235501 (2 * Nat.choose (Nat.sqrt n + 2) 2 + n)

end

end A192020.P2023153566470167994

/-! ## A192020.P10494579409155012230

`A156665(A161983(n))`
-/

namespace A192020.P10494579409155012230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (A161983 n).toNat

end

end A192020.P10494579409155012230

/-! ## A192020.P8930740020077391003

`A235501(A317303(n+1))`
-/

namespace A192020.P8930740020077391003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235501 (A317303 (n + 1)).toNat

end

end A192020.P8930740020077391003

/-! ## A192020.P14383135158489330953

`A156665(A007606(n+1)-1)`
-/

namespace A192020.P14383135158489330953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (A007606 (n + 1) - 1).toNat

end

end A192020.P14383135158489330953

/-! ## A192020.P4976101529431438957

`A156665(lt[0, A057211(n+1)])`
-/

namespace A192020.P4976101529431438957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A192020.P4976101529431438957

/-! ## A192020.P12256447882183892126

`A156665(eq[1, A057211(n+1)])`
-/

namespace A192020.P12256447882183892126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192020.P12256447882183892126

/-! ## A192020.P8326938498025649312

`A156665(2*n-A196199(n))`
-/

namespace A192020.P8326938498025649312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 ((2 * n : ℤ) - A196199 n).toNat

end

end A192020.P8326938498025649312

/-! ## A192020.P8057423531156116711

`A156665(n-A196199(n)+n)`
-/

namespace A192020.P8057423531156116711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A192020.P8057423531156116711

/-! ## A192020.P10430274791895999178

`A156665(n-(A196199(n)-n))`
-/

namespace A192020.P10430274791895999178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A192020.P10430274791895999178

/-! ## A192020.P12824441170510712459

`A156665(A048760(n)+A028392(n))`
-/

namespace A192020.P12824441170510712459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156665 (A048760 n + A028392 n).toNat

end

end A192020.P12824441170510712459

/-!
# A192021: The Wiener index of the binomial tree of order n.

The programs for A192021, the canonical program `A192021.P11825110376656350950` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192021 has offset 0).

The definition of A192021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192021.P13770759813273138070

`2^(n-1)*(1+2^n*(n-1))`
-/

namespace A192021.P13770759813273138070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (1 + (2 ^ n : ℤ) * ((n : ℤ) - 1) : ℚ)

end

end A192021.P13770759813273138070

namespace A192021

/-- `2^(n-1)*(1+2^n*(n-1))` -/
def P13770759813273138070.Spec : Prop :=
  ∀ n, P13770759813273138070.a n = (A192021 n : ℚ)

theorem P13770759813273138070.correct : P13770759813273138070.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A192021, Nat.add_sub_cancel, A192021.P13770759813273138070.a, A192021.P11825110376656350950.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A192021, Nat.add_sub_cancel, A192021.P13770759813273138070.a, A192021.P11825110376656350950.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A192021

/-! ## A192021.P11825110376656350950

`10*a(n-1)-32*a(n-2)+32*a(n-3)` with `a(0)=0, a(1)=1, a(2)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192021

/-- `10*a(n-1)-32*a(n-2)+32*a(n-3)` -/
def P11825110376656350950.Spec : Prop :=
  ∀ n, P11825110376656350950.a n = A192021 n

theorem P11825110376656350950.correct : P11825110376656350950.Spec := by
  intro n
  simp only [A192021]

end A192021

/-! ## A192021.P11154835128213940006

`2^n*A000337(n)/2`
-/

namespace A192021.P11154835128213940006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) * A000337 n : ℚ) / 2

end

end A192021.P11154835128213940006

namespace A192021

/-- `2^n*A000337(n)/2` -/
def P11154835128213940006.Spec : Prop :=
  ∀ n, P11154835128213940006.a n = (A192021 n : ℚ)

theorem P11154835128213940006.correct : P11154835128213940006.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A192021, Nat.add_sub_cancel, A192021.P11154835128213940006.a, A192021.P11825110376656350950.a, A000337, A000337.P10298485350018343423.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A192021, Nat.add_sub_cancel, A192021.P11154835128213940006.a, A192021.P11825110376656350950.a, A000337, A000337.P10298485350018343423.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A192021

/-! ## A192021.P11315990930100824961

`∑[n*2^n]*A011782(n)/2`
-/

namespace A192021.P11315990930100824961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011782 n : ℚ) / 2

end

end A192021.P11315990930100824961

namespace A192021

/-- `∑[n*2^n]*A011782(n)/2` -/
def P11315990930100824961.Spec : Prop :=
  ∀ n, P11315990930100824961.a n = (A192021 n : ℚ)

end A192021

/-! ## A192021.P17471037079244728558

`lcm(∑[n*2^(n-1)], A131577(n))`
-/

namespace A192021.P17471037079244728558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A131577 n)

end

end A192021.P17471037079244728558

namespace A192021

/-- `lcm(∑[n*2^(n-1)], A131577(n))` -/
def P17471037079244728558.Spec : Prop :=
  ∀ n, (P17471037079244728558.a n : ℤ) = A192021 n

end A192021

/-! ## A192021.P18146443951877464331

`A002699(n)-A006516(n)`
-/

namespace A192021.P18146443951877464331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n - A006516 n

end

end A192021.P18146443951877464331

namespace A192021

/-- `A002699(n)-A006516(n)` -/
def P18146443951877464331.Spec : Prop :=
  ∀ n, P18146443951877464331.a n = A192021 n

end A192021

/-! ## A192021.P13848260506132126856

`A086093(n)-A094375(n)`
-/

namespace A192021.P13848260506132126856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086093 n - A094375 n

end

end A192021.P13848260506132126856

namespace A192021

/-- `A086093(n)-A094375(n)` -/
def P13848260506132126856.Spec : Prop :=
  ∀ n, P13848260506132126856.a n = A192021 n

end A192021

/-! ## A192021.P5941137258268099891

`lcm(A000337(n), A011782(n))`
-/

namespace A192021.P5941137258268099891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000337 n) (A011782 n)

end

end A192021.P5941137258268099891

namespace A192021

/-- `lcm(A000337(n), A011782(n))` -/
def P5941137258268099891.Spec : Prop :=
  ∀ n, (P5941137258268099891.a n : ℤ) = A192021 n

end A192021

/-! ## A192021.P10590737509381924385

`A011782(n)*A036799(n)/2`
-/

namespace A192021.P10590737509381924385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n * A036799 n : ℚ) / 2

end

end A192021.P10590737509381924385

namespace A192021

/-- `A011782(n)*A036799(n)/2` -/
def P10590737509381924385.Spec : Prop :=
  ∀ n, P10590737509381924385.a n = (A192021 n : ℚ)

end A192021

/-! ## A192021.P1832343339984231657

`(A002697(n+1)-A006516(n+1))/2`
-/

namespace A192021.P1832343339984231657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 (n + 1) - A006516 (n + 1) : ℚ) / 2

end

end A192021.P1832343339984231657

namespace A192021

/-- `(A002697(n+1)-A006516(n+1))/2` -/
def P1832343339984231657.Spec : Prop :=
  ∀ n, P1832343339984231657.a n = (A192021 n : ℚ)

end A192021

/-! ## A192021.P7749268145825117700

`((n-1)*A000079(n)+1)*A000079(n)/2`
-/

namespace A192021.P7749268145825117700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - 1) * A000079 n + 1) * A000079 n : ℚ) / 2

end

end A192021.P7749268145825117700

namespace A192021

/-- `((n-1)*A000079(n)+1)*A000079(n)/2` -/
def P7749268145825117700.Spec : Prop :=
  ∀ n, P7749268145825117700.a n = (A192021 n : ℚ)

theorem P7749268145825117700.correct : P7749268145825117700.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A192021, Nat.add_sub_cancel, A192021.P7749268145825117700.a, A192021.P11825110376656350950.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A192021, Nat.add_sub_cancel, A192021.P7749268145825117700.a, A192021.P11825110376656350950.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A192021

/-! ## A192021.P5350135434099383500

`A002697(n)+A002697(n)-A006516(n)`
-/

namespace A192021.P5350135434099383500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (A002697 n - A006516 n)

end

end A192021.P5350135434099383500

namespace A192021

/-- `A002697(n)+A002697(n)-A006516(n)` -/
def P5350135434099383500.Spec : Prop :=
  ∀ n, P5350135434099383500.a n = A192021 n

end A192021

/-! ## A192021.P4922675136867847388

`A000079(n)*A001792(n)-A010036(n)`
-/

namespace A192021.P4922675136867847388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001792 n - A010036 n

end

end A192021.P4922675136867847388

namespace A192021

/-- `A000079(n)*A001792(n)-A010036(n)` -/
def P4922675136867847388.Spec : Prop :=
  ∀ n, P4922675136867847388.a n = A192021 n

end A192021

/-! ## A192021.P9963605132701239835

`A131577(n)-A131577(n)*A159964(n)`
-/

namespace A192021.P9963605132701239835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A131577 n * A159964 n

end

end A192021.P9963605132701239835

namespace A192021

/-- `A131577(n)-A131577(n)*A159964(n)` -/
def P9963605132701239835.Spec : Prop :=
  ∀ n, P9963605132701239835.a n = A192021 n

end A192021

/-! ## A192021.P8203927341076678594

`A001792(n)*A011782(n+1)-A010036(n)`
-/

namespace A192021.P8203927341076678594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n * A011782 (n + 1) - A010036 n

end

end A192021.P8203927341076678594

namespace A192021

/-- `A001792(n)*A011782(n+1)-A010036(n)` -/
def P8203927341076678594.Spec : Prop :=
  ∀ n, P8203927341076678594.a n = A192021 n

end A192021

/-!
# A192023: The Wiener index of the comb-shaped graph |_|_|...|_| with 2n (n>=1) nodes. The Wiener index of a connected graph is the sum of the distances between all unordered pairs of vertices in the graph.

The programs for A192023, the canonical program `A192023.P3295291955986755228` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192023 has offset 1).

The definition of A192023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192023.P3295291955986755228

`(n+1)*(2*(n+1)²+6*(n+1)-5)/3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192023

/-- `(n+1)*(2*(n+1)²+6*(n+1)-5)/3` -/
def P3295291955986755228.Spec : Prop :=
  ∀ n, P3295291955986755228.a n = (A192023 (n + 1) : ℚ)

end A192023

/-! ## A192023.P2536584852617077410

`∑[∑[ogf((1+6x-3x^2)/(1-2x+x^2))]]`
-/

namespace A192023.P2536584852617077410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192023.P2536584852617077410

namespace A192023

/-- `∑[∑[ogf((1+6x-3x^2)/(1-2x+x^2))]]` -/
def P2536584852617077410.Spec : Prop :=
  ∀ n, P2536584852617077410.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P7771050768020233324

`ogf((1+6x-3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A192023.P7771050768020233324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -3] [1, -4, 6, -4, 1] n

end

end A192023.P7771050768020233324

namespace A192023

/-- `ogf((1+6x-3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P7771050768020233324.Spec : Prop :=
  ∀ n, P7771050768020233324.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P1139836387816275785

`floor(∑[∑[a(n-1)+4]])` with `a(0)=1, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A192023.P1139836387816275785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192023.P1139836387816275785

namespace A192023

/-- `floor(∑[∑[a(n-1)+4]])` -/
def P1139836387816275785.Spec : Prop :=
  ∀ n, (P1139836387816275785.a n : ℤ) = A192023 (n + 1)

end A192023

/-! ## A192023.P7940731392634480188

`-∑[xor((n+3)*2*n, -1)]`
-/

namespace A192023.P7940731392634480188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 3) * (2 * n) : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192023.P7940731392634480188

namespace A192023

/-- `-∑[xor((n+3)*2*n, -1)]` -/
def P7940731392634480188.Spec : Prop :=
  ∀ n, P7940731392634480188.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P5233914740785519033

`∑[lcm(2, (n+1)²+n)]-(n+1)`
-/

namespace A192023.P5233914740785519033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A192023.P5233914740785519033

namespace A192023

/-- `∑[lcm(2, (n+1)²+n)]-(n+1)` -/
def P5233914740785519033.Spec : Prop :=
  ∀ n, P5233914740785519033.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P12727799876190521683

`∑[n-2]+∑[C(n+3+n, 2)]`
-/

namespace A192023.P12727799876190521683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3 + n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A192023.P12727799876190521683

namespace A192023

/-- `∑[n-2]+∑[C(n+3+n, 2)]` -/
def P12727799876190521683.Spec : Prop :=
  ∀ n, P12727799876190521683.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P16132744448418068339

`Δ[n²]²+∑[4*C(n, 2)]+n`
-/

namespace A192023.P16132744448418068339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ)

end

end A192023.P16132744448418068339

namespace A192023

/-- `Δ[n²]²+∑[4*C(n, 2)]+n` -/
def P16132744448418068339.Spec : Prop :=
  ∀ n, P16132744448418068339.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P1453786021379930226

`∑[∑[a(n-1)+4]]+n+1` with `a(0)=0, a(1)=8`
-/

namespace A192023.P1453786021379930226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A192023.P1453786021379930226

namespace A192023

/-- `∑[∑[a(n-1)+4]]+n+1` -/
def P1453786021379930226.Spec : Prop :=
  ∀ n, (P1453786021379930226.a n : ℤ) = A192023 (n + 1)

end A192023

/-! ## A192023.P694394722171207331

`∑[(n+3)*lcm(n, 2*n)]+n+1`
-/

namespace A192023.P694394722171207331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.lcm n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A192023.P694394722171207331

namespace A192023

/-- `∑[(n+3)*lcm(n, 2*n)]+n+1` -/
def P694394722171207331.Spec : Prop :=
  ∀ n, (P694394722171207331.a n : ℤ) = A192023 (n + 1)

end A192023

/-! ## A192023.P1884746596443592109

`∑[(n+3)*2*n]+C(n+1, n)`
-/

namespace A192023.P1884746596443592109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) n

end

end A192023.P1884746596443592109

namespace A192023

/-- `∑[(n+3)*2*n]+C(n+1, n)` -/
def P1884746596443592109.Spec : Prop :=
  ∀ n, (P1884746596443592109.a n : ℤ) = A192023 (n + 1)

end A192023

/-! ## A192023.P7591497603783835072

`a(n-1)+(n+3)*2*n+1` with `a(0)=1`
-/

namespace A192023.P7591497603783835072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n + 3) * (2 * n) + 1)

end

end A192023.P7591497603783835072

namespace A192023

/-- `a(n-1)+(n+3)*2*n+1` -/
def P7591497603783835072.Spec : Prop :=
  ∀ n, (P7591497603783835072.a n : ℤ) = A192023 (n + 1)

end A192023

/-! ## A192023.P17581773570080363629

`∑[(n+3)*xor(1, 2*n+1)]+n+1`
-/

namespace A192023.P17581773570080363629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.xor 1 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A192023.P17581773570080363629

namespace A192023

/-- `∑[(n+3)*xor(1, 2*n+1)]+n+1` -/
def P17581773570080363629.Spec : Prop :=
  ∀ n, (P17581773570080363629.a n : ℤ) = A192023 (n + 1)

end A192023

/-! ## A192023.P8921277242903949041

`∑[(n+3)*2*n]+gcd(n+1, ∑[2*n])`
-/

namespace A192023.P8921277242903949041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A192023.P8921277242903949041

namespace A192023

/-- `∑[(n+3)*2*n]+gcd(n+1, ∑[2*n])` -/
def P8921277242903949041.Spec : Prop :=
  ∀ n, (P8921277242903949041.a n : ℤ) = A192023 (n + 1)

end A192023

/-! ## A192023.P12176983582849177438

`∑[(n+3)*and(2*n+1, 2*n)]+n+1`
-/

namespace A192023.P12176983582849177438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.land (2 * n + 1) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A192023.P12176983582849177438

namespace A192023

/-- `∑[(n+3)*and(2*n+1, 2*n)]+n+1` -/
def P12176983582849177438.Spec : Prop :=
  ∀ n, (P12176983582849177438.a n : ℤ) = A192023 (n + 1)

end A192023

/-! ## A192023.P12501510011965778409

`∑[A059993(n)]`
-/

namespace A192023.P12501510011965778409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192023.P12501510011965778409

namespace A192023

/-- `∑[A059993(n)]` -/
def P12501510011965778409.Spec : Prop :=
  ∀ n, P12501510011965778409.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P6633438294825833656

`∑[A139570(n)+1]`
-/

namespace A192023.P6633438294825833656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192023.P6633438294825833656

namespace A192023

/-- `∑[A139570(n)+1]` -/
def P6633438294825833656.Spec : Prop :=
  ∀ n, P6633438294825833656.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P10720267562575231347

`∑[A090288(n)-1]`
-/

namespace A192023.P10720267562575231347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192023.P10720267562575231347

namespace A192023

/-- `∑[A090288(n)-1]` -/
def P10720267562575231347.Spec : Prop :=
  ∀ n, P10720267562575231347.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P8206019504093396010

`∑[A028884(n)+n²]`
-/

namespace A192023.P8206019504093396010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192023.P8206019504093396010

namespace A192023

/-- `∑[A028884(n)+n²]` -/
def P8206019504093396010.Spec : Prop :=
  ∀ n, P8206019504093396010.a n = A192023 (n + 1)

end A192023

/-! ## A192023.P7741081811312079787

`A081438(n)-∑[n²]`
-/

namespace A192023.P7741081811312079787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192023.P7741081811312079787

namespace A192023

/-- `A081438(n)-∑[n²]` -/
def P7741081811312079787.Spec : Prop :=
  ∀ n, P7741081811312079787.a n = A192023 (n + 1)

end A192023

/-!
# A192025: The Wiener index of the double-comb graph \/_\/_\/...\/_\/ with 3n (n>=1) nodes. The Wiener index of a connected graph is the sum of the distances between all unordered pairs of vertices in the graph.

The programs for A192025, the canonical program `A192025.P11244563126178496015` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192025 has offset 1).

The definition of A192025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192025.P11244563126178496015

`(n+1)*(3*(n+1)²+12*(n+1)-7)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192025

/-- `(n+1)*(3*(n+1)²+12*(n+1)-7)/2` -/
def P11244563126178496015.Spec : Prop :=
  ∀ n, P11244563126178496015.a n = (A192025 (n + 1) : ℚ)

end A192025

/-! ## A192025.P14177756699822001187

`A180569(n+1)+∑[4*n]`
-/

namespace A192025.P14177756699822001187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180569 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192025.P14177756699822001187

namespace A192025

/-- `A180569(n+1)+∑[4*n]` -/
def P14177756699822001187.Spec : Prop :=
  ∀ n, P14177756699822001187.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P6172070028901022023

`n+4+3*n*Δ[A008778(n)]`
-/

namespace A192025.P6172070028901022023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) + (3 * n : ℤ) * (f1 (n + 1) - f1 n)

end

end A192025.P6172070028901022023

namespace A192025

/-- `n+4+3*n*Δ[A008778(n)]` -/
def P6172070028901022023.Spec : Prop :=
  ∀ n, P6172070028901022023.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P4238174025323253664

`3*(A111694(n+1)+1)+n+1`
-/

namespace A192025.P4238174025323253664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A111694 (n + 1) + 1) + (n + 1 : ℤ)

end

end A192025.P4238174025323253664

namespace A192025

/-- `3*(A111694(n+1)+1)+n+1` -/
def P4238174025323253664.Spec : Prop :=
  ∀ n, P4238174025323253664.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P5736414622318967682

`(∑[n+3]+1)*A008585(n)+n+4`
-/

namespace A192025.P5736414622318967682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A008585 n + (n + 4 : ℤ)

end

end A192025.P5736414622318967682

namespace A192025

/-- `(∑[n+3]+1)*A008585(n)+n+4` -/
def P5736414622318967682.Spec : Prop :=
  ∀ n, P5736414622318967682.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P17412781411421715606

`A194715(n)+A130423(n+1)`
-/

namespace A192025.P17412781411421715606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 n + A130423 (n + 1)

end

end A192025.P17412781411421715606

namespace A192025

/-- `A194715(n)+A130423(n+1)` -/
def P17412781411421715606.Spec : Prop :=
  ∀ n, P17412781411421715606.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P8679317724637816924

`A081271(n)+∑[A081271(n)]+2`
-/

namespace A192025.P8679317724637816924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081271 n + (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A192025.P8679317724637816924

namespace A192025

/-- `A081271(n)+∑[A081271(n)]+2` -/
def P8679317724637816924.Spec : Prop :=
  ∀ n, P8679317724637816924.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P4056893047417197358

`A145910(n)+∑[A145910(n)]-n`
-/

namespace A192025.P4056893047417197358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A192025.P4056893047417197358

namespace A192025

/-- `A145910(n)+∑[A145910(n)]-n` -/
def P4056893047417197358.Spec : Prop :=
  ∀ n, P4056893047417197358.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P6888414689997350270

`A016789(n)²+n*A005448(n+1)`
-/

namespace A192025.P6888414689997350270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n ^ 2 + (n : ℤ) * A005448 (n + 1)

end

end A192025.P6888414689997350270

namespace A192025

/-- `A016789(n)²+n*A005448(n+1)` -/
def P6888414689997350270.Spec : Prop :=
  ∀ n, P6888414689997350270.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P3718084184409918085

`∑[A000217(A016777(n))]+(6*n+3)*(n+1)`
-/

namespace A192025.P3718084184409918085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((6 * n + 3) * (n + 1) : ℤ)

end

end A192025.P3718084184409918085

namespace A192025

/-- `∑[A000217(A016777(n))]+(6*n+3)*(n+1)` -/
def P3718084184409918085.Spec : Prop :=
  ∀ n, P3718084184409918085.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P612661759383248266

`A180569(n+1)-(n+1)²+Δ[A000578(n)]+n`
-/

namespace A192025.P612661759383248266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180569 (n + 1) - ((n + 1) ^ 2 : ℤ) + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A192025.P612661759383248266

namespace A192025

/-- `A180569(n+1)-(n+1)²+Δ[A000578(n)]+n` -/
def P612661759383248266.Spec : Prop :=
  ∀ n, P612661759383248266.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P1838714297969854549

`A062708(n+1)+∑[A145910(n)]`
-/

namespace A192025.P1838714297969854549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192025.P1838714297969854549

namespace A192025

/-- `A062708(n+1)+∑[A145910(n)]` -/
def P1838714297969854549.Spec : Prop :=
  ∀ n, P1838714297969854549.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P7417471115155924422

`A046092(n)+∑[A062728(n+1)-4]`
-/

namespace A192025.P7417471115155924422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192025.P7417471115155924422

namespace A192025

/-- `A046092(n)+∑[A062728(n+1)-4]` -/
def P7417471115155924422.Spec : Prop :=
  ∀ n, P7417471115155924422.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P7435562602979412254

`A060488(2*n+3)+∑[∑[n]]`
-/

namespace A192025.P7435562602979412254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (2 * n + 3) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A192025.P7435562602979412254

namespace A192025

/-- `A060488(2*n+3)+∑[∑[n]]` -/
def P7435562602979412254.Spec : Prop :=
  ∀ n, P7435562602979412254.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P5085551713440668260

`A045943(2*n+1)+A004188(n+1)`
-/

namespace A192025.P5085551713440668260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (2 * n + 1) + A004188 (n + 1)

end

end A192025.P5085551713440668260

namespace A192025

/-- `A045943(2*n+1)+A004188(n+1)` -/
def P5085551713440668260.Spec : Prop :=
  ∀ n, P5085551713440668260.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P11170311647181355406

`A051937(n+4)+A006503(2*n+1)`
-/

namespace A192025.P11170311647181355406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051937 (n + 4) + A006503 (2 * n + 1)

end

end A192025.P11170311647181355406

namespace A192025

/-- `A051937(n+4)+A006503(2*n+1)` -/
def P11170311647181355406.Spec : Prop :=
  ∀ n, P11170311647181355406.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P11372048705322334867

`A046092(2*n+1)+n*A000326(n+1)`
-/

namespace A192025.P11372048705322334867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (2 * n + 1) + (n : ℤ) * A000326 (n + 1)

end

end A192025.P11372048705322334867

namespace A192025

/-- `A046092(2*n+1)+n*A000326(n+1)` -/
def P11372048705322334867.Spec : Prop :=
  ∀ n, P11372048705322334867.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P11053980386374644659

`A005448(2*(n+1))+n*A005448(n+2)`
-/

namespace A192025.P11053980386374644659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (2 * (n + 1)) + (n : ℤ) * A005448 (n + 2)

end

end A192025.P11053980386374644659

namespace A192025

/-- `A005448(2*(n+1))+n*A005448(n+2)` -/
def P11053980386374644659.Spec : Prop :=
  ∀ n, P11053980386374644659.a n = A192025 (n + 1)

end A192025

/-! ## A192025.P13696830475426842954

`A147875(2*n+1)+n*A211539(2*n)`
-/

namespace A192025.P13696830475426842954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 (2 * n + 1) + (n : ℤ) * A211539 (2 * n)

end

end A192025.P13696830475426842954

namespace A192025

/-- `A147875(2*n+1)+n*A211539(2*n)` -/
def P13696830475426842954.Spec : Prop :=
  ∀ n, P13696830475426842954.a n = A192025 (n + 1)

end A192025

/-!
# A192026: Square array read by antidiagonals: W(n,m) (n >= 3, m >= 1) is the Wiener index of the graph G(n,m) obtained from an n-wheel graph by adjoining m pendant edges at each node of the cycle.

The programs for A192026, there is no canonical definition to state claims against.
-/

/-! ## A192026.P14217073643375172497

`6*A106420(A069882(n+1))`
-/

namespace A192026.P14217073643375172497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A106420 (A069882 (n + 1)).toNat

end

end A192026.P14217073643375172497

/-! ## A192026.P7402776119742314619

`A040375(A034474(n))*A106420(n+1)`
-/

namespace A192026.P7402776119742314619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040375 (A034474 n).toNat * A106420 (n + 1)

end

end A192026.P7402776119742314619

/-!
# A192028: Square array read by antidiagonals: W(n,m) (n >= 1, m >= 1) is the Wiener index of the graph G(n,m) obtained from the n-circuit graph by joining at each of its nodes a path with m nodes (n >= 1, m >= 1; if m=1, then the n-circuit is not modified).

The programs for A192028, there is no canonical definition to state claims against.
-/

/-! ## A192028.P13438598315778669814

`A051679(A005960(n+1))%A231829(n+1)`
-/

namespace A192028.P13438598315778669814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051679 (A005960 (n + 1)).toNat) (A231829 (n + 1))

end

end A192028.P13438598315778669814

/-!
# A192030: Square array read by antidiagonals: W(n,p) (n>=1, p>=1) is the Wiener index of the graph G(n,p) obtained in the following way: consider n copies of a star tree with p-1 edges, add a vertex to their union, and connect this vertex with the roots of the star trees.

The programs for A192030, there is no canonical definition to state claims against.
-/

/-! ## A192030.P15238249167352738791

`(n+1-C(n², 2)%comp[∑[n]])*A003991(n+1)`
-/

namespace A192030.P15238249167352738791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((Nat.choose (n ^ 2) 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℕ) : ℤ)) * A003991 (n + 1)

end

end A192030.P15238249167352738791

/-! ## A192030.P16575511624353090828

`A098359(n+1)+A049207(n)`
-/

namespace A192030.P16575511624353090828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098359 (n + 1) + A049207 n

end

end A192030.P16575511624353090828

/-! ## A192030.P12187236824584470288

`A049207(n)+A003991(n+1)²`
-/

namespace A192030.P12187236824584470288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049207 n + A003991 (n + 1) ^ 2

end

end A192030.P12187236824584470288

/-! ## A192030.P11345506789119256360

`A003991(n+1)*A129312(n+1)`
-/

namespace A192030.P11345506789119256360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A129312 (n + 1)

end

end A192030.P11345506789119256360

/-! ## A192030.P10208679372302761624

`(A141387(n)+1)*A003991(n+1)`
-/

namespace A192030.P10208679372302761624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141387 n + 1) * A003991 (n + 1)

end

end A192030.P10208679372302761624

/-! ## A192030.P6838114260354101407

`(A059036(n)+1)*A129312(n+1)`
-/

namespace A192030.P6838114260354101407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059036 n + 1) * A129312 (n + 1)

end

end A192030.P6838114260354101407

/-! ## A192030.P3154819608494079866

`A049207(n)+A000005(A036561(n))²`
-/

namespace A192030.P3154819608494079866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049207 n + A000005 (A036561 n).toNat ^ 2

end

end A192030.P3154819608494079866

/-! ## A192030.P1690304387217499763

`A049207(n)+A000005(A175840(n))²`
-/

namespace A192030.P1690304387217499763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049207 n + A000005 (A175840 n).toNat ^ 2

end

end A192030.P1690304387217499763

/-! ## A192030.P17380003555674734963

`A000005(A036561(n))*A129312(n+1)`
-/

namespace A192030.P17380003555674734963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 n).toNat * A129312 (n + 1)

end

end A192030.P17380003555674734963

/-! ## A192030.P16631507333536359206

`(A004247(n)+A003991(n+1))*A003991(n+1)`
-/

namespace A192030.P16631507333536359206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n + A003991 (n + 1)) * A003991 (n + 1)

end

end A192030.P16631507333536359206

/-!
# A192032: Square array read by antidiagonals: W(m,n) (m >= 0, n >= 0) is the Wiener index of the graph G(m,n) obtained in the following way: connect by an edge the center of an m-edge star with the center of an n-edge star. The Wiener index of a connected graph is the sum of distances between all unordered pairs of vertices in the graph.

The programs for A192032, there is no canonical definition to state claims against.
-/

/-! ## A192032.P5378388304026689019

`∑[∑[char[∑[n]]]²-n-(n-floor(sqrt(2*n))*char[∑[n]])]`
-/

namespace A192032.P5378388304026689019
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - ((n : ℤ) - ((Nat.sqrt (2 * n) * (if ∃ j, f5 j = n then 1 else 0) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192032.P5378388304026689019

/-! ## A192032.P3999458827847449601

`C(∑[char[∑[n]]], 2)+∑[∑[char[∑[n]]]²]%(n+1)+1+n`
-/

namespace A192032.P3999458827847449601
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f5 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + ((∑ j ∈ Finset.range (n + 1), f4 j) % (n + 1) + 1 + n)

end

end A192032.P3999458827847449601

/-! ## A192032.P14812008614673288143

`∑[∑[2*n]%comp[∑[n]]-n]+C(∑[char[∑[n]]], 2)+1+n`
-/

namespace A192032.P14812008614673288143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℕ) : ℤ) - (n : ℤ)

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 + 1 + n : ℤ)

end

end A192032.P14812008614673288143

/-! ## A192032.P15836090293038499564

`A004247(n)+∑[char[∑[n]]]²`
-/

namespace A192032.P15836090293038499564
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A192032.P15836090293038499564

/-! ## A192032.P14373277009302082502

`log2(A117401(n))+∑[char[∑[n]]]²`
-/

namespace A192032.P14373277009302082502
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A117401 n : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℝ)

end

end A192032.P14373277009302082502

/-! ## A192032.P16248616969677247816

`∑[char[∑[n]]]²+A077028(n)-1`
-/

namespace A192032.P16248616969677247816
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (A077028 n - 1)

end

end A192032.P16248616969677247816

/-! ## A192032.P13307155194539845832

`∑[char[∑[n]]]²+1-A176270(n)`
-/

namespace A192032.P13307155194539845832
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (1 - A176270 n)

end

end A192032.P13307155194539845832

/-! ## A192032.P10858298711121272977

`A204250(n+1)+∑[char[∑[n+1]]]²`
-/

namespace A192032.P10858298711121272977
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A192032.P10858298711121272977

/-! ## A192032.P757854709014619031

`A004201(n+1)+∑[round(sqrt(2*(n+1)))²-(2*n+1)]`
-/

namespace A192032.P757854709014619031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192032.P757854709014619031

/-! ## A192032.P12163871238959709630

`A105020(n)+A091435(n)`
-/

namespace A192032.P12163871238959709630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n + A091435 n

end

end A192032.P12163871238959709630

/-!
# A192033: Expansion of x*(3*x^2+x+1)/((x-1)*(2*x-1)*(x+1)).

The programs for A192033, the canonical program `A192033.P11229874977035395909` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192033 has offset 0).

The definition of A192033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+3x^3)/(1-2x-x^2+2x^3))` (program `A192033.P11229874977035395909`, by `A192033.P11229874977035395909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192033.P11229874977035395909

`ogf((x+x^2+3x^3)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192033

/-- `ogf((x+x^2+3x^3)/(1-2x-x^2+2x^3))` -/
def P11229874977035395909.Spec : Prop :=
  ∀ n, P11229874977035395909.a n = A192033 n

theorem P11229874977035395909.correct : P11229874977035395909.Spec := by
  intro n
  simp only [A192033]

end A192033

/-! ## A192033.P12022729700252363801

`gcd(2, n+1)²+2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A192033.P12022729700252363801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.gcd 2 (n + 1) ^ 2 + 2 * a (n - 1)

end

end A192033.P12022729700252363801

namespace A192033

/-- `gcd(2, n+1)²+2*a(n-1)` -/
def P12022729700252363801.Spec : Prop :=
  ∀ n, (P12022729700252363801.a n : ℤ) = A192033 n

end A192033

/-! ## A192033.P15424493195621943931

`2*a(n-2)+a(n-1)+5` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192033.P15424493195621943931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  2 * a (n - 2) + (a (n - 1) + 5)

end

end A192033.P15424493195621943931

namespace A192033

/-- `2*a(n-2)+a(n-1)+5` -/
def P15424493195621943931.Spec : Prop :=
  ∀ n, (P15424493195621943931.a n : ℤ) = A192033 n

end A192033

/-! ## A192033.P9847941352067502616

`a(n-1)+a(n-2)+a(n-2)+5` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A192033.P9847941352067502616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + 5))

end

end A192033.P9847941352067502616

namespace A192033

/-- `a(n-1)+a(n-2)+a(n-2)+5` -/
def P9847941352067502616.Spec : Prop :=
  ∀ n, (P9847941352067502616.a n : ℤ) = A192033 n

end A192033

/-! ## A192033.P15559182869622253265

`A266550(n+2)-Δ[comp[3*(n+1)]]`
-/

namespace A192033.P15559182869622253265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266550 (n + 2) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A192033.P15559182869622253265

namespace A192033

/-- `A266550(n+2)-Δ[comp[3*(n+1)]]` -/
def P15559182869622253265.Spec : Prop :=
  ∀ n, P15559182869622253265.a n = A192033 n

end A192033

/-! ## A192033.P9761096053728791321

`abs((n+1)%2-(A003945(n)-1))-1`
-/

namespace A192033.P9761096053728791321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 1) % 2 : ℕ) : ℤ) - (A003945 n - 1)| - 1

end

end A192033.P9761096053728791321

namespace A192033

/-- `abs((n+1)%2-(A003945(n)-1))-1` -/
def P9761096053728791321.Spec : Prop :=
  ∀ n, P9761096053728791321.a n = A192033 n

end A192033

/-! ## A192033.P16611113575206665632

`A083329(n)-A040001(n)`
-/

namespace A192033.P16611113575206665632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n - A040001 n

end

end A192033.P16611113575206665632

namespace A192033

/-- `A083329(n)-A040001(n)` -/
def P16611113575206665632.Spec : Prop :=
  ∀ n, P16611113575206665632.a n = A192033 n

end A192033

/-! ## A192033.P13843319883359061902

`A055010(n)-A134451(n)`
-/

namespace A192033.P13843319883359061902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n - A134451 n

end

end A192033.P13843319883359061902

namespace A192033

/-- `A055010(n)-A134451(n)` -/
def P13843319883359061902.Spec : Prop :=
  ∀ n, P13843319883359061902.a n = A192033 n

end A192033

/-! ## A192033.P15685161148749318055

`A369491(n)-A266591(n)`
-/

namespace A192033.P15685161148749318055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369491 n - A266591 n

end

end A192033.P15685161148749318055

namespace A192033

/-- `A369491(n)-A266591(n)` -/
def P15685161148749318055.Spec : Prop :=
  ∀ n, P15685161148749318055.a n = A192033 n

end A192033

/-! ## A192033.P9505056658529466599

`A083329(n)-A005918(n)%4`
-/

namespace A192033.P9505056658529466599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n - Int.tmod (A005918 n) 4

end

end A192033.P9505056658529466599

namespace A192033

/-- `A083329(n)-A005918(n)%4` -/
def P9505056658529466599.Spec : Prop :=
  ∀ n, P9505056658529466599.a n = A192033 n

end A192033

/-! ## A192033.P7915006700883474593

`3*A011782(n)-A020639(A008585(n+1))`
-/

namespace A192033.P7915006700883474593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A011782 n - A020639 (A008585 (n + 1)).toNat

end

end A192033.P7915006700883474593

namespace A192033

/-- `3*A011782(n)-A020639(A008585(n+1))` -/
def P7915006700883474593.Spec : Prop :=
  ∀ n, P7915006700883474593.a n = A192033 n

end A192033

/-! ## A192033.P11689561885286150534

`A029744(2*n+1)-or(A134451(2*n), A134451(n+1))`
-/

namespace A192033.P11689561885286150534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (2 * n + 1) - Int.lor (A134451 (2 * n)) (A134451 (n + 1))

end

end A192033.P11689561885286150534

namespace A192033

/-- `A029744(2*n+1)-or(A134451(2*n), A134451(n+1))` -/
def P11689561885286150534.Spec : Prop :=
  ∀ n, P11689561885286150534.a n = A192033 n

end A192033

/-! ## A192033.P14858686921113104844

`A154117(n)-A051049(n)`
-/

namespace A192033.P14858686921113104844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154117 n - A051049 n

end

end A192033.P14858686921113104844

namespace A192033

/-- `A154117(n)-A051049(n)` -/
def P14858686921113104844.Spec : Prop :=
  ∀ n, P14858686921113104844.a n = A192033 n

end A192033

/-! ## A192033.P3068624795089514986

`A014131(n)%A087940(n+1)`
-/

namespace A192033.P3068624795089514986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014131 n) (A087940 (n + 1))

end

end A192033.P3068624795089514986

namespace A192033

/-- `A014131(n)%A087940(n+1)` -/
def P3068624795089514986.Spec : Prop :=
  ∀ n, P3068624795089514986.a n = A192033 n

end A192033

/-! ## A192033.P7837120662098961372

`A003945(n+1)-(A004119(n)+A000034(n+1))`
-/

namespace A192033.P7837120662098961372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) - (A004119 n + A000034 (n + 1))

end

end A192033.P7837120662098961372

namespace A192033

/-- `A003945(n+1)-(A004119(n)+A000034(n+1))` -/
def P7837120662098961372.Spec : Prop :=
  ∀ n, P7837120662098961372.a n = A192033 n

end A192033

/-!
# A192035: Numbers k with equal remainders of (product of divisors of k) mod (sum of divisors of k) and (product of proper divisors of k) mod (sum of proper divisors of k).

The programs for A192035, there is no canonical definition to state claims against.
-/

/-! ## A192035.P10826985468407881560

`A176235(A100720(n))`
-/

namespace A192035.P10826985468407881560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176235 (A100720 n).toNat

end

end A192035.P10826985468407881560

/-!
# A192037: Generalized Euler phi function (for p=5).

The programs for A192037, there is no canonical definition to state claims against.
-/

/-! ## A192037.P14161473788745010749

`A060765(A318099(n+2)^floor(∏{e}[n+1, #+1]/2))`
-/

namespace A192037.P14161473788745010749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060765 (SequenceMachineLib.roundAway ((A318099 (n + 2) : ℚ) ^ (⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋ : ℤ))).toNat

end

end A192037.P14161473788745010749

/-!
# A192045: Ordered sums 3*f+5*g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A192045, there is no canonical definition to state claims against.
-/

/-! ## A192045.P2148009510139002545

`lt[A090707(A159634(n+5)), A046134(n+3)]`
-/

namespace A192045.P2148009510139002545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090707 (A159634 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192045.P2148009510139002545

/-!
# A192046: Ordered sequence of nonnegative differences 3f-5g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A192046, there is no canonical definition to state claims against.
-/

/-! ## A192046.P13008240304856321080

`∑[A071178(A038274(n))]`
-/

namespace A192046.P13008240304856321080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A038274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192046.P13008240304856321080

/-! ## A192046.P2215302749836921741

`∑[A071178(A038310(n))]`
-/

namespace A192046.P2215302749836921741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A038310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192046.P2215302749836921741

/-!
# A192047: Ordered sequence of nonnegative differences 5f-3g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A192047, there is no canonical definition to state claims against.
-/

/-! ## A192047.P4520299818166086590

`lt[A324682(n), A325268(A324716(n+1))]`
-/

namespace A192047.P4520299818166086590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325268 (A324716 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192047.P4520299818166086590

/-! ## A192047.P5890895756080094602

`lt[A001221(n+1), A056538(A212122(n+2))]`
-/

namespace A192047.P5890895756080094602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (A212122 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192047.P5890895756080094602

/-! ## A192047.P986177882492102500

`lt[A353835(n+1), A056538(A212122(n+2))]`
-/

namespace A192047.P986177882492102500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (A212122 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192047.P986177882492102500

/-! ## A192047.P633534865482370545

`lt[A182441(A086044(n)), A000203(3*n+4)]`
-/

namespace A192047.P633534865482370545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182441 (A086044 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192047.P633534865482370545

/-! ## A192047.P3525699950286023121

`lt[A139251(3*n), A144946(A263825(n+4))]`
-/

namespace A192047.P3525699950286023121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144946 (A263825 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192047.P3525699950286023121

/-!
# A192048: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={3,5}.

The programs for A192048, there is no canonical definition to state claims against.
-/

/-! ## A192048.P17507435826926102838

`∪[A192046(n+1), A192047(n+1)]`
-/

namespace A192048.P17507435826926102838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192048.P17507435826926102838

/-! ## A192048.P8716374876794594038

`lt[A018783(n), A320347(A134332(3*n+5))]`
-/

namespace A192048.P8716374876794594038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320347 (A134332 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192048.P8716374876794594038

/-! ## A192048.P7351006389971474103

`lt[A325677(A124934(n+1)), A006530(3*n+5)]`
-/

namespace A192048.P7351006389971474103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325677 (A124934 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192048.P7351006389971474103

/-! ## A192048.P4663472903191783989

`lt[A000720(2*n+3), A007953(A162290(n+3))]`
-/

namespace A192048.P4663472903191783989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A162290 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192048.P4663472903191783989

/-! ## A192048.P13388729114426277614

`lt[A060775(3*n+5)-A127372(2*n+3), 2]`
-/

namespace A192048.P13388729114426277614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (3 * n + 5) - A127372 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A192048.P13388729114426277614

/-!
# A192049: Ordered sums 4*f+5*g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A192049, there is no canonical definition to state claims against.
-/

/-! ## A192049.P3358535356905044106

`lt[A297279(n+1), A078812(A124914(2*n+3))]`
-/

namespace A192049.P3358535356905044106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A124914 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192049.P3358535356905044106

/-!
# A192051: Ordered sequence of nonnegative differences 5f-4g, where f and g are Lucas numbers (A000032 beginning at 1).

The programs for A192051, there is no canonical definition to state claims against.
-/

/-! ## A192051.P18090515553585532329

`eq[A124474(A258709(n)), A190683(n+1)]`
-/

namespace A192051.P18090515553585532329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124474 (A258709 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190683 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192051.P18090515553585532329

/-! ## A192051.P5566413027706263302

`eq[A165587(A249716(n)), A226519(n+1)]`
-/

namespace A192051.P5566413027706263302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165587 (A249716 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192051.P5566413027706263302

/-!
# A192052: Ordered sequence of nonnegative differences c*f-d*g, where f and g are Lucas numbers (A000032 beginning at 1) and {c,d}={4,5}.

The programs for A192052, there is no canonical definition to state claims against.
-/

/-! ## A192052.P2309593012248945971

`∪[A192050(n+1), A192051(n+1)]`
-/

namespace A192052.P2309593012248945971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192052.P2309593012248945971

/-! ## A192052.P15252349592324993952

`eq[A129344(n+1), A129344(A091965(n))]`
-/

namespace A192052.P15252349592324993952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (A091965 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192052.P15252349592324993952

/-! ## A192052.P3663977744445931892

`eq[A003484(A138938(n+1)), A136690(n)]`
-/

namespace A192052.P3663977744445931892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A138938 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192052.P3663977744445931892

/-! ## A192052.P9061855321438279954

`lt[A016411(A007318(3*n+1)), A079200(3*n+4)]`
-/

namespace A192052.P9061855321438279954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016411 (A007318 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079200 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192052.P9061855321438279954

/-! ## A192052.P16839048973437915946

`eq[0, and(8, A217198(n+1))]`
-/

namespace A192052.P16839048973437915946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 8 (A217198 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192052.P16839048973437915946

/-!
# A192053: Maximum probability of permutation from bad "shuffle" times n^n.

The programs for A192053, there is no canonical definition to state claims against.
-/

/-! ## A192053.P3210110412489148830

`A013560(∑{digits}[n, #+1])`
-/

namespace A192053.P3210110412489148830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013560 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x + 1).sum

end

end A192053.P3210110412489148830

/-! ## A192053.P2721702800835057236

`A013560(n+1)+char[10]`
-/

namespace A192053.P2721702800835057236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013560 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A192053.P2721702800835057236

/-! ## A192053.P6464452587087638604

`A013560(A007953(n)+1)`
-/

namespace A192053.P6464452587087638604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013560 (A007953 n + 1).toNat

end

end A192053.P6464452587087638604

/-! ## A192053.P7355002950396803618

`A013560(A007954(n)+1)`
-/

namespace A192053.P7355002950396803618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013560 (A007954 n + 1).toNat

end

end A192053.P7355002950396803618

/-! ## A192053.P5453005196401797605

`A013560(A080464(n)+1)`
-/

namespace A192053.P5453005196401797605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013560 (A080464 (n + 10) + 1).toNat

end

end A192053.P5453005196401797605

/-!
# A192054: Let u, v be binary vectors of length n, let f(u,v) be length of longest carry propagation when we form the binary sum u+v; then a(n) = Sum_{u,v} f(u,v).

The programs for A192054, there is no canonical definition to state claims against.
-/

/-! ## A192054.P4035782683539582062

`A358638(A151148(n+1))`
-/

namespace A192054.P4035782683539582062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A151148 (n + 1)).toNat

end

end A192054.P4035782683539582062

/-!
# A192055: E.g.f. satisfies: A(x) = Sum_{n>=0} A(2^n*x)^n * x^n/n!.

The programs for A192055, there is no canonical definition to state claims against.
-/

/-! ## A192055.P10583521477375035127

`A224513(floor(((∑[n+1]+1)/2*n!+C(n, 2)/2*n!)/6))`
-/

namespace A192055.P10583521477375035127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224513 ⌊(((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ) + (Nat.choose n 2 : ℚ) / 2 * (Nat.factorial n : ℚ)) / 6⌋.toNat

end

end A192055.P10583521477375035127

/-!
# A192057: G.f. C(x) satisfies: C(C(x)) + S(S(x)) = x where S(C(x)) = 2*x*C(x).

The programs for A192057, there is no canonical definition to state claims against.
-/

/-! ## A192057.P11028410157998611559

`A192059(n+1)/A051700(A000108(n))`
-/

namespace A192057.P11028410157998611559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192059 (n + 1) : ℚ) / (A051700 (A000108 n).toNat : ℚ)

end

end A192057.P11028410157998611559

/-! ## A192057.P2226955848528079

`A192059(n+1)/A089723(A050535(n))`
-/

namespace A192057.P2226955848528079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192059 (n + 1) : ℚ) / (A089723 (A050535 n).toNat : ℚ)

end

end A192057.P2226955848528079

/-! ## A192057.P12128544745859747370

`A192059(n+1)/A014963(A193775(n))`
-/

namespace A192057.P12128544745859747370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192059 (n + 1) : ℚ) / (A014963 (A193775 n).toNat : ℚ)

end

end A192057.P12128544745859747370

/-! ## A192057.P8228502362785797486

`A192059(n+1)/A192022(A245732(n))`
-/

namespace A192057.P8228502362785797486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192059 (n + 1) : ℚ) / (A192022 (A245732 n).toNat : ℚ)

end

end A192057.P8228502362785797486

/-!
# A192058: G.f. S(x) satisfies: C(C(x)) + S(S(x)) = x where S(C(x)) = 2*x*C(x).

The programs for A192058, there is no canonical definition to state claims against.
-/

/-! ## A192058.P15648105553484430881

`A156663(A026627(n))`
-/

namespace A192058.P15648105553484430881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 (A026627 n).toNat

end

end A192058.P15648105553484430881

/-! ## A192058.P15018361131125157528

`A156663(A148806(n+1))`
-/

namespace A192058.P15018361131125157528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 (A148806 (n + 1)).toNat

end

end A192058.P15018361131125157528

/-! ## A192058.P5462740243371601613

`A111813(A096338(n)+3)`
-/

namespace A192058.P5462740243371601613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111813 (A096338 n + 3).toNat

end

end A192058.P5462740243371601613

/-! ## A192058.P3196348965768263426

`and(-2, A324510(A232970(n)))`
-/

namespace A192058.P3196348965768263426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A324510 (A232970 n).toNat)

end

end A192058.P3196348965768263426

/-!
# A192059: G.f. C(C(x)) where C(x) satisfies: C(C(x)) + S(S(x)) = x where S(C(x)) = 2*x*C(x).

The programs for A192059, there is no canonical definition to state claims against.
-/

/-! ## A192059.P6079457979665481912

`A003989(A000108(n))*A192057(n+1)`
-/

namespace A192059.P6079457979665481912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A000108 n).toNat * A192057 (n + 1)

end

end A192059.P6079457979665481912

/-! ## A192059.P7709268953313016475

`A138121(A001088(n))*A192057(n+1)`
-/

namespace A192059.P7709268953313016475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (A001088 n).toNat * A192057 (n + 1)

end

end A192059.P7709268953313016475

/-! ## A192059.P12505796748872358047

`A006519(A138265(n))*A192057(n+1)`
-/

namespace A192059.P12505796748872358047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A138265 n).toNat * A192057 (n + 1)

end

end A192059.P12505796748872358047

/-! ## A192059.P1545895074195386418

`A014963(A193775(n))*A192057(n+1)`
-/

namespace A192059.P1545895074195386418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A193775 n).toNat * A192057 (n + 1)

end

end A192059.P1545895074195386418

/-! ## A192059.P18341243409073119649

`A192022(A245732(n))*A192057(n+1)`
-/

namespace A192059.P18341243409073119649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192022 (A245732 n).toNat * A192057 (n + 1)

end

end A192059.P18341243409073119649

/-!
# A192061: Number of 12-core partitions of n.

The programs for A192061, there is no canonical definition to state claims against.
-/

/-! ## A192061.P2672313397812960357

`A175595(eq[13, A004736(n+1)])`
-/

namespace A192061.P2672313397812960357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192061.P2672313397812960357

/-! ## A192061.P8683851276611343838

`A175595(A000217(n+12)+n)`
-/

namespace A192061.P8683851276611343838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A192061.P8683851276611343838

/-! ## A192061.P9425378127852362181

`∑[A002865(n)%A097013(2*(n+2))]`
-/

namespace A192061.P9425378127852362181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002865 n) (A097013 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192061.P9425378127852362181

/-! ## A192061.P4643612575457111924

`A259480(A058276(n)+A000217(n))`
-/

namespace A192061.P4643612575457111924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259480 (A058276 n + A000217 n).toNat

end

end A192061.P4643612575457111924

/-! ## A192061.P7452927431555792507

`A000041(n)-A005928(A008891(n))`
-/

namespace A192061.P7452927431555792507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A005928 (A008891 n).toNat

end

end A192061.P7452927431555792507

/-!
# A192062: Square Array T(ij) read by antidiagonals (from NE to SW) with columns 2j being the denominators of continued fraction convergents to square root of (j^2 + 2j).

The programs for A192062, there is no canonical definition to state claims against.
-/

/-! ## A192062.P15119434398377198926

`A316269(n+2)/A191971(n)`
-/

namespace A192062.P15119434398377198926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316269 (n + 2) : ℚ) / (A191971 n : ℚ)

end

end A192062.P15119434398377198926

/-! ## A192062.P8103295311523198211

`A172371(n)/A124778(A109613(n))`
-/

namespace A192062.P8103295311523198211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172371 n : ℚ) / (A124778 (A109613 n).toNat : ℚ)

end

end A192062.P8103295311523198211

/-! ## A192062.P2477096906856031045

`lcm(A124778(n), A172371(n))/A124778(n)`
-/

namespace A192062.P2477096906856031045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A124778 n) (A172371 n) : ℚ) / (A124778 n : ℚ)

end

end A192062.P2477096906856031045

/-! ## A192062.P8577151166409780433

`A172371(n)^A172395(A325567(n+1))`
-/

namespace A192062.P8577151166409780433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172371 n : ℚ) ^ (A172395 (A325567 (n + 1)).toNat : ℤ)

end

end A192062.P8577151166409780433

/-! ## A192062.P5680448756766432341

`A105243(A204213(n+1))`
-/

namespace A192062.P5680448756766432341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105243 (A204213 (n + 1)).toNat

end

end A192062.P5680448756766432341

/-!
# A192063: E.g.f. 1-sqrt(cos(2*x)) (even part).

The programs for A192063, there is no canonical definition to state claims against.
-/

/-! ## A192063.P13357213960699487913

`lcm(A008475(A000079(n)), A008990(n))`
-/

namespace A192063.P13357213960699487913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008475 (A000079 n).toNat) (A008990 n)

end

end A192063.P13357213960699487913

/-!
# A192064: Number of primes in the range [2^n-n, 2^n].

The programs for A192064, there is no canonical definition to state claims against.
-/

/-! ## A192064.P4289666973379674766

`A320838(∑[n]%A102369(n))`
-/

namespace A192064.P4289666973379674766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320838 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A102369 n)).toNat

end

end A192064.P4289666973379674766

/-! ## A192064.P2145906744272274541

`A073490(xor(A001281(n), A052377(n+1)))`
-/

namespace A192064.P2145906744272274541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (Int.xor (A001281 n) (A052377 (n + 1))).toNat

end

end A192064.P2145906744272274541

/-! ## A192064.P9966786005390987032

`A143792(A181842(n+10)+A101723(n+9))`
-/

namespace A192064.P9966786005390987032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143792 (A181842 (n + 10) + A101723 (n + 9)).toNat

end

end A192064.P9966786005390987032

/-! ## A192064.P9526908571166512842

`A196189(A056150(n+3))%3`
-/

namespace A192064.P9526908571166512842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196189 (A056150 (n + 3)).toNat) 3

end

end A192064.P9526908571166512842

/-! ## A192064.P1099392068002281827

`A139355(∑{p}[A056150(n+3), #])`
-/

namespace A192064.P1099392068002281827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056150 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A192064.P1099392068002281827

/-!
# A192065: Expansion of Product_{k>=1} Q(x^k)^k where Q(x) = Product_{k>=1} (1 + x^k).

The programs for A192065, there is no canonical definition to state claims against.
-/

/-! ## A192065.P3200514958521654761

`A321877(∑[n+2]-1)`
-/

namespace A192065.P3200514958521654761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A192065.P3200514958521654761

/-! ## A192065.P6415609926374044042

`abs(A321877(A034856(n+1))-1)+1`
-/

namespace A192065.P6415609926374044042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321877 (A034856 (n + 1)).toNat - 1| + 1

end

end A192065.P6415609926374044042

/-! ## A192065.P11306098728461471314

`A321877(A034856(n+1))%A003500(n)`
-/

namespace A192065.P11306098728461471314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321877 (A034856 (n + 1)).toNat) (A003500 n)

end

end A192065.P11306098728461471314

/-! ## A192065.P9456209000389939391

`A165326(n)²*A321877(A034856(n+1))`
-/

namespace A192065.P9456209000389939391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n ^ 2 * A321877 (A034856 (n + 1)).toNat

end

end A192065.P9456209000389939391

/-! ## A192065.P4044740286706282365

`A007318(∑[n])*A321877(A034856(n+1))`
-/

namespace A192065.P4044740286706282365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A321877 (A034856 (n + 1)).toNat

end

end A192065.P4044740286706282365

/-! ## A192065.P14851252701620020324

`A000034(8*n)*A321877(A034856(n+1))`
-/

namespace A192065.P14851252701620020324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (8 * n) * A321877 (A034856 (n + 1)).toNat

end

end A192065.P14851252701620020324

/-! ## A192065.P3771630710940948355

`A321877(A034856(n+1))+A080040(n)%2`
-/

namespace A192065.P3771630710940948355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321877 (A034856 (n + 1)).toNat + Int.tmod (A080040 n) 2

end

end A192065.P3771630710940948355

/-! ## A192065.P6751601987978991941

`A041040(n)%2*A321877(A034856(n+1))`
-/

namespace A192065.P6751601987978991941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041040 n) 2 * A321877 (A034856 (n + 1)).toNat

end

end A192065.P6751601987978991941

/-! ## A192065.P3667620508197563117

`A321877(A034856(n+1))^A007318(C(2, n))`
-/

namespace A192065.P3667620508197563117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321877 (A034856 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A192065.P3667620508197563117

/-! ## A192065.P10287488446530675916

`A321877(A034856(n+1))^A008683(gcd(n, n+1))`
-/

namespace A192065.P10287488446530675916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321877 (A034856 (n + 1)).toNat : ℚ) ^ (A008683 (Nat.gcd n (n + 1)) : ℤ)

end

end A192065.P10287488446530675916

/-!
# A192066: Sum of the odd unitary divisors of n.

The programs for A192066, the canonical program `A192066.P7006570664675293436` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192066 has offset 1).

The definition of A192066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192066.P7719543025833121002

`A034448((n+1)/2^val(n+1, 2))`
-/

namespace A192066.P7719543025833121002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A192066.P7719543025833121002

namespace A192066

/-- `A034448((n+1)/2^val(n+1, 2))` -/
def P7719543025833121002.Spec : Prop :=
  ∀ n, P7719543025833121002.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P7006570664675293436

`A107749((n+1)/and(n+1, -(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A192066

/-- `A107749((n+1)/and(n+1, -(n+1)))` -/
def P7006570664675293436.Spec : Prop :=
  ∀ n, P7006570664675293436.a n = A192066 (n + 1)

theorem P7006570664675293436.correct : P7006570664675293436.Spec := by
  intro n
  simp only [A192066, Nat.add_sub_cancel]

end A192066

/-! ## A192066.P10571789518117728895

`A034460((n+1)/2^val(n+1, 2))+(n+1)/2^val(n+1, 2)`
-/

namespace A192066.P10571789518117728895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034460 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A192066.P10571789518117728895

namespace A192066

/-- `A034460((n+1)/2^val(n+1, 2))+(n+1)/2^val(n+1, 2)` -/
def P10571789518117728895.Spec : Prop :=
  ∀ n, P10571789518117728895.a n = (A192066 (n + 1) : ℚ)

end A192066

/-! ## A192066.P15480700961321932175

`A034448(A000265(n+1))`
-/

namespace A192066.P15480700961321932175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A000265 (n + 1)).toNat

end

end A192066.P15480700961321932175

namespace A192066

/-- `A034448(A000265(n+1))` -/
def P15480700961321932175.Spec : Prop :=
  ∀ n, P15480700961321932175.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P3058795647907327543

`A034448(A153733(n)+1)`
-/

namespace A192066.P3058795647907327543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A153733 n + 1).toNat

end

end A192066.P3058795647907327543

namespace A192066

/-- `A034448(A153733(n)+1)` -/
def P3058795647907327543.Spec : Prop :=
  ∀ n, P3058795647907327543.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P8767135675769548119

`A034448(xor(1, A153733(n)))`
-/

namespace A192066.P8767135675769548119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.xor 1 (A153733 n)).toNat

end

end A192066.P8767135675769548119

namespace A192066

/-- `A034448(xor(1, A153733(n)))` -/
def P8767135675769548119.Spec : Prop :=
  ∀ n, P8767135675769548119.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P16247799466787384938

`A034448(2*A025480(n)+1)`
-/

namespace A192066.P16247799466787384938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (2 * A025480 n + 1).toNat

end

end A192066.P16247799466787384938

namespace A192066

/-- `A034448(2*A025480(n)+1)` -/
def P16247799466787384938.Spec : Prop :=
  ∀ n, P16247799466787384938.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P17023613750340980657

`A107749(A000265(2*(n+1)))`
-/

namespace A192066.P17023613750340980657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (A000265 (2 * (n + 1))).toNat

end

end A192066.P17023613750340980657

namespace A192066

/-- `A107749(A000265(2*(n+1)))` -/
def P17023613750340980657.Spec : Prop :=
  ∀ n, P17023613750340980657.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P4564603622891105770

`A034448(A171435(2*(n+1)))`
-/

namespace A192066.P4564603622891105770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A171435 (2 * (n + 1))).toNat

end

end A192066.P4564603622891105770

namespace A192066

/-- `A034448(A171435(2*(n+1)))` -/
def P4564603622891105770.Spec : Prop :=
  ∀ n, P4564603622891105770.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P11397594817056915974

`A345451(A166466(n+1)/3)+1`
-/

namespace A192066.P11397594817056915974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat + 1

end

end A192066.P11397594817056915974

namespace A192066

/-- `A345451(A166466(n+1)/3)+1` -/
def P11397594817056915974.Spec : Prop :=
  ∀ n, P11397594817056915974.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P13274555722697938040

`A360156(n+1)-A107749(n+1)`
-/

namespace A192066.P13274555722697938040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360156 (n + 1) - A107749 (n + 1)

end

end A192066.P13274555722697938040

namespace A192066

/-- `A360156(n+1)-A107749(n+1)` -/
def P13274555722697938040.Spec : Prop :=
  ∀ n, P13274555722697938040.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P17299617436063772815

`A034448((n+1)/A006519(n+1))`
-/

namespace A192066.P17299617436063772815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A192066.P17299617436063772815

namespace A192066

/-- `A034448((n+1)/A006519(n+1))` -/
def P17299617436063772815.Spec : Prop :=
  ∀ n, P17299617436063772815.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P9179386222453509734

`A107749((n+1)/A006519(n+1))`
-/

namespace A192066.P9179386222453509734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A192066.P9179386222453509734

namespace A192066

/-- `A107749((n+1)/A006519(n+1))` -/
def P9179386222453509734.Spec : Prop :=
  ∀ n, P9179386222453509734.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P4625929590387521579

`A107749(n+1)/A038712(n+1)`
-/

namespace A192066.P4625929590387521579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107749 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A192066.P4625929590387521579

namespace A192066

/-- `A107749(n+1)/A038712(n+1)` -/
def P4625929590387521579.Spec : Prop :=
  ∀ n, P4625929590387521579.a n = (A192066 (n + 1) : ℚ)

end A192066

/-! ## A192066.P13108219520240283994

`A328258((n+1)/A006519(n+1))`
-/

namespace A192066.P13108219520240283994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A192066.P13108219520240283994

namespace A192066

/-- `A328258((n+1)/A006519(n+1))` -/
def P13108219520240283994.Spec : Prop :=
  ∀ n, P13108219520240283994.a n = A192066 (n + 1)

end A192066

/-! ## A192066.P9586002315758245250

`A034448(n+1)/A385047(n+1)`
-/

namespace A192066.P9586002315758245250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A385047 (n + 1) : ℚ)

end

end A192066.P9586002315758245250

namespace A192066

/-- `A034448(n+1)/A385047(n+1)` -/
def P9586002315758245250.Spec : Prop :=
  ∀ n, P9586002315758245250.a n = (A192066 (n + 1) : ℚ)

end A192066

/-! ## A192066.P2594356281820814451

`A360156(n+1)/A171977(n+1)`
-/

namespace A192066.P2594356281820814451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360156 (n + 1) : ℚ) / (A171977 (n + 1) : ℚ)

end

end A192066.P2594356281820814451

namespace A192066

/-- `A360156(n+1)/A171977(n+1)` -/
def P2594356281820814451.Spec : Prop :=
  ∀ n, P2594356281820814451.a n = (A192066 (n + 1) : ℚ)

end A192066

/-! ## A192066.P2396877898429507038

`gcd(A034448(n+1), A328258(n+1))`
-/

namespace A192066.P2396877898429507038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034448 (n + 1)) (A328258 (n + 1))

end

end A192066.P2396877898429507038

namespace A192066

/-- `gcd(A034448(n+1), A328258(n+1))` -/
def P2396877898429507038.Spec : Prop :=
  ∀ n, (P2396877898429507038.a n : ℤ) = A192066 (n + 1)

end A192066

/-! ## A192066.P7511008248141462203

`gcd(A034677(n+1), A360156(n+1))`
-/

namespace A192066.P7511008248141462203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034677 (n + 1)) (A360156 (n + 1))

end

end A192066.P7511008248141462203

namespace A192066

/-- `gcd(A034677(n+1), A360156(n+1))` -/
def P7511008248141462203.Spec : Prop :=
  ∀ n, (P7511008248141462203.a n : ℤ) = A192066 (n + 1)

end A192066

/-! ## A192066.P2420099931720132015

`A360156(n+1)/(A038712(n+1)+1)`
-/

namespace A192066.P2420099931720132015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360156 (n + 1) : ℚ) / (A038712 (n + 1) + 1 : ℚ)

end

end A192066.P2420099931720132015

namespace A192066

/-- `A360156(n+1)/(A038712(n+1)+1)` -/
def P2420099931720132015.Spec : Prop :=
  ∀ n, P2420099931720132015.a n = (A192066 (n + 1) : ℚ)

end A192066

/-!
# A192067: Monotonically ordered sums 2^i+3*2^(j-1), for i>=1, j>=1.

The programs for A192067, there is no canonical definition to state claims against.
-/

/-! ## A192067.P9237507656390535836

`record[A133232(3*n+5)+3]`
-/

namespace A192067.P9237507656390535836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (3 * n + 5) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192067.P9237507656390535836

/-!
# A192068: a(n) = Fibonacci(2*n) - (n mod 2).

The programs for A192068, the canonical program `A192068.P3573378295139986079` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192068 has offset 1).

The definition of A192068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192068.P17818407484171905338

`ogf((3x-2x^2)/(1-3x+3x^3-x^4))`
-/

namespace A192068.P17818407484171905338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -3, 0, 3, -1] n

end

end A192068.P17818407484171905338

namespace A192068

/-- `ogf((3x-2x^2)/(1-3x+3x^3-x^4))` -/
def P17818407484171905338.Spec : Prop :=
  ∀ n, P17818407484171905338.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P3573378295139986079

`∑[A081714(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192068

/-- `∑[A081714(n)]` -/
def P3573378295139986079.Spec : Prop :=
  ∀ n, P3573378295139986079.a n = A192068 (n + 1)

theorem P3573378295139986079.correct : P3573378295139986079.Spec := by
  intro n
  simp only [A192068, Nat.add_sub_cancel]

end A192068

/-! ## A192068.P12102144074245483200

`∑[A111573(2*n)]`
-/

namespace A192068.P12102144074245483200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192068.P12102144074245483200

namespace A192068

/-- `∑[A111573(2*n)]` -/
def P12102144074245483200.Spec : Prop :=
  ∀ n, P12102144074245483200.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P10315036110362726773

`A000071(2*(n+1))+n%2`
-/

namespace A192068.P10315036110362726773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * (n + 1)) + ((n % 2 : ℕ) : ℤ)

end

end A192068.P10315036110362726773

namespace A192068

/-- `A000071(2*(n+1))+n%2` -/
def P10315036110362726773.Spec : Prop :=
  ∀ n, P10315036110362726773.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P16888954168493106428

`A111573(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A192068.P16888954168493106428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A111573 (n + n) + a (n - 1)

end

end A192068.P16888954168493106428

namespace A192068

/-- `A111573(n+n)+a(n-1)` -/
def P16888954168493106428.Spec : Prop :=
  ∀ n, P16888954168493106428.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P807939761925343475

`∑[A000045(Δ[n²])-(-1)^n]`
-/

namespace A192068.P807939761925343475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192068.P807939761925343475

namespace A192068

/-- `∑[A000045(Δ[n²])-(-1)^n]` -/
def P807939761925343475.Spec : Prop :=
  ∀ n, P807939761925343475.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P14899592427620688589

`A000032(2*n)+a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A192068.P14899592427620688589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A000032 (2 * n) + a (n - 2)

end

end A192068.P14899592427620688589

namespace A192068

/-- `A000032(2*n)+a(n-2)` -/
def P14899592427620688589.Spec : Prop :=
  ∀ n, P14899592427620688589.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P1014345906402948790

`A000045(2*(n+1))-char[2*n]`
-/

namespace A192068.P1014345906402948790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A192068.P1014345906402948790

namespace A192068

/-- `A000045(2*(n+1))-char[2*n]` -/
def P1014345906402948790.Spec : Prop :=
  ∀ n, P1014345906402948790.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P3232175437784130350

`∑[A000045(2*n+1)]-and(1, n+1)`
-/

namespace A192068.P3232175437784130350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.land 1 (n + 1) : ℤ)

end

end A192068.P3232175437784130350

namespace A192068

/-- `∑[A000045(2*n+1)]-and(1, n+1)` -/
def P3232175437784130350.Spec : Prop :=
  ∀ n, P3232175437784130350.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P16732122542950698259

`A321664(A272975(n+1))`
-/

namespace A192068.P16732122542950698259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (A272975 (n + 1)).toNat

end

end A192068.P16732122542950698259

namespace A192068

/-- `A321664(A272975(n+1))` -/
def P16732122542950698259.Spec : Prop :=
  ∀ n, P16732122542950698259.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P12838692361931165030

`A035508(n)+A000035(n)`
-/

namespace A192068.P12838692361931165030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n + A000035 n

end

end A192068.P12838692361931165030

namespace A192068

/-- `A035508(n)+A000035(n)` -/
def P12838692361931165030.Spec : Prop :=
  ∀ n, P12838692361931165030.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P8888632448954885357

`A166920(n)+A105693(n)`
-/

namespace A192068.P8888632448954885357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 n + A105693 n

end

end A192068.P8888632448954885357

namespace A192068

/-- `A166920(n)+A105693(n)` -/
def P8888632448954885357.Spec : Prop :=
  ∀ n, P8888632448954885357.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P11498019199813500103

`A362067(n)+A074331(n)`
-/

namespace A192068.P11498019199813500103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362067 n + A074331 n

end

end A192068.P11498019199813500103

namespace A192068

/-- `A362067(n)+A074331(n)` -/
def P11498019199813500103.Spec : Prop :=
  ∀ n, P11498019199813500103.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P127568181113547119

`A128533(n)-A000035(n)`
-/

namespace A192068.P127568181113547119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128533 n - A000035 n

end

end A192068.P127568181113547119

namespace A192068

/-- `A128533(n)-A000035(n)` -/
def P127568181113547119.Spec : Prop :=
  ∀ n, P127568181113547119.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P4356890969199825419

`A129905(n)-A110034(n)`
-/

namespace A192068.P4356890969199825419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n - A110034 n

end

end A192068.P4356890969199825419

namespace A192068

/-- `A129905(n)-A110034(n)` -/
def P4356890969199825419.Spec : Prop :=
  ∀ n, P4356890969199825419.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P4318083742144150886

`A001654(n)+∑[A059929(n)]`
-/

namespace A192068.P4318083742144150886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192068.P4318083742144150886

namespace A192068

/-- `A001654(n)+∑[A059929(n)]` -/
def P4318083742144150886.Spec : Prop :=
  ∀ n, P4318083742144150886.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P5764415272333154119

`A079472(n+1)+A064831(n)`
-/

namespace A192068.P5764415272333154119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 (n + 1) + A064831 n

end

end A192068.P5764415272333154119

namespace A192068

/-- `A079472(n+1)+A064831(n)` -/
def P5764415272333154119.Spec : Prop :=
  ∀ n, P5764415272333154119.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P12596351895211588448

`A387784(n)+A387782(n+1)`
-/

namespace A192068.P12596351895211588448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387784 n + A387782 (n + 1)

end

end A192068.P12596351895211588448

namespace A192068

/-- `A387784(n)+A387782(n+1)` -/
def P12596351895211588448.Spec : Prop :=
  ∀ n, P12596351895211588448.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P14700380525898280886

`A059840(n+2)+A001654(n)`
-/

namespace A192068.P14700380525898280886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059840 (n + 2) + A001654 n

end

end A192068.P14700380525898280886

namespace A192068

/-- `A059840(n+2)+A001654(n)` -/
def P14700380525898280886.Spec : Prop :=
  ∀ n, P14700380525898280886.a n = A192068 (n + 1)

end A192068

/-! ## A192068.P14938396425091688684

`A001906(n+1)-A059841(n)`
-/

namespace A192068.P14938396425091688684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A059841 n

end

end A192068.P14938396425091688684

namespace A192068

/-- `A001906(n+1)-A059841(n)` -/
def P14938396425091688684.Spec : Prop :=
  ∀ n, P14938396425091688684.a n = A192068 (n + 1)

end A192068

/-!
# A192069: (A192249)/5.

The programs for A192069, the canonical program `A192069.P1951905682487218386` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192069 has offset 1).

The definition of A192069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 438 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192069.P1951905682487218386

`∑[C(n+4, 4)/5*A000045(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192069

/-- `∑[C(n+4, 4)/5*A000045(n)]` -/
def P1951905682487218386.Spec : Prop :=
  ∀ n, P1951905682487218386.a n = (A192069 (n + 1) : ℚ)

end A192069

/-! ## A192069.P14235557043386385409

`∑[sqrt(A288876(n))*A000045(n)/5]`
-/

namespace A192069.P14235557043386385409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 n : ℝ) * (A000045 n : ℝ) / 5

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192069.P14235557043386385409

namespace A192069

/-- `∑[sqrt(A288876(n))*A000045(n)/5]` -/
def P14235557043386385409.Spec : Prop :=
  ∀ n, P14235557043386385409.a n = (A192069 (n + 1) : ℝ)

end A192069

/-! ## A192069.P16295986911639065962

`∑[A000045(n)*A000332(n+4)/5]`
-/

namespace A192069.P16295986911639065962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * A000332 (n + 4) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192069.P16295986911639065962

namespace A192069

/-- `∑[A000045(n)*A000332(n+4)/5]` -/
def P16295986911639065962.Spec : Prop :=
  ∀ n, P16295986911639065962.a n = (A192069 (n + 1) : ℚ)

end A192069

/-! ## A192069.P5151717521572497278

`∑[C(n+4, 4)*round(ϕ^n/sqrt(5))]/5`
-/

namespace A192069.P5151717521572497278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A192069.P5151717521572497278

namespace A192069

/-- `∑[C(n+4, 4)*round(ϕ^n/sqrt(5))]/5` -/
def P5151717521572497278.Spec : Prop :=
  ∀ n, P5151717521572497278.a n = (A192069 (n + 1) : ℚ)

end A192069

/-! ## A192069.P12454201739420772269

`A192249(n+1)/5`
-/

namespace A192069.P12454201739420772269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192249 (n + 1) : ℚ) / 5

end

end A192069.P12454201739420772269

namespace A192069

/-- `A192249(n+1)/5` -/
def P12454201739420772269.Spec : Prop :=
  ∀ n, P12454201739420772269.a n = (A192069 (n + 1) : ℚ)

end A192069

/-! ## A192069.P8998538757757232896

`∑[A000045(n)*A178821(∑[n])/5]`
-/

namespace A192069.P8998538757757232896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n * A178821 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192069.P8998538757757232896

namespace A192069

/-- `∑[A000045(n)*A178821(∑[n])/5]` -/
def P8998538757757232896.Spec : Prop :=
  ∀ n, P8998538757757232896.a n = (A192069 (n + 1) : ℚ)

end A192069

/-!
# A192070: (A192251)/2.

The programs for A192070, the canonical program `A192070.P14429528532449134624` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192070 has offset 1).

The definition of A192070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192070.P8516017098583478925

`∑[A119693(n)]`
-/

namespace A192070.P8516017098583478925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192070.P8516017098583478925

namespace A192070

/-- `∑[A119693(n)]` -/
def P8516017098583478925.Spec : Prop :=
  ∀ n, P8516017098583478925.a n = A192070 (n + 1)

end A192070

/-! ## A192070.P10429310338358654682

`∑[A119692(n)/2]`
-/

namespace A192070.P10429310338358654682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119692 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192070.P10429310338358654682

namespace A192070

/-- `∑[A119692(n)/2]` -/
def P10429310338358654682.Spec : Prop :=
  ∀ n, P10429310338358654682.a n = (A192070 (n + 1) : ℚ)

end A192070

/-! ## A192070.P14094651558122646115

`A192251(n+1)/2`
-/

namespace A192070.P14094651558122646115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192251 (n + 1) : ℚ) / 2

end

end A192070.P14094651558122646115

namespace A192070

/-- `A192251(n+1)/2` -/
def P14094651558122646115.Spec : Prop :=
  ∀ n, P14094651558122646115.a n = (A192070 (n + 1) : ℚ)

end A192070

/-! ## A192070.P14429528532449134624

`∑[C(2*n, n)/2*A000045(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192070

/-- `∑[C(2*n, n)/2*A000045(n)]` -/
def P14429528532449134624.Spec : Prop :=
  ∀ n, P14429528532449134624.a n = (A192070 (n + 1) : ℚ)

end A192070

/-! ## A192070.P16774873874073987820

`∑[A000045(n)*A088218(n)]`
-/

namespace A192070.P16774873874073987820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A088218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192070.P16774873874073987820

namespace A192070

/-- `∑[A000045(n)*A088218(n)]` -/
def P16774873874073987820.Spec : Prop :=
  ∀ n, P16774873874073987820.a n = A192070 (n + 1)

end A192070

/-!
# A192071: G.f. C(x) satisfies: C(C(x)) + S(S(x)) = x such that C(x)^3 + (3/2)*S(x)^3 = x^3.

The programs for A192071, there is no canonical definition to state claims against.
-/

/-! ## A192071.P9519235243001982178

`(1-A001222((n+2)!-1))*6^n/∏{e}[n+1, #]`
-/

namespace A192071.P9519235243001982178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - A001222 (Nat.factorial (n + 2) - 1)) * (6 ^ n : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)

end

end A192071.P9519235243001982178

/-! ## A192071.P5220352177972605402

`(1-A001222((n+2)!-1))*6^n/A094781(n+1)`
-/

namespace A192071.P5220352177972605402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - A001222 (Nat.factorial (n + 2) - 1)) * (6 ^ n : ℤ) : ℚ) / (A094781 (n + 1) : ℚ)

end

end A192071.P5220352177972605402

/-! ## A192071.P12541161195815446760

`(1-A001222((n+2)!-1))*6^n/A001221(2*∑{d}[n+1, #])`
-/

namespace A192071.P12541161195815446760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - A001222 (Nat.factorial (n + 2) - 1)) * (6 ^ n : ℤ) : ℚ) / (A001221 (2 * (∑ d ∈ Nat.divisors (f1 n), d)) : ℚ)

end

end A192071.P12541161195815446760

/-!
# A192072: G.f. S(x) satisfies: C(C(x)) + S(S(x)) = x such that C(x)^3 + (3/2)*S(x)^3 = x^3.

The programs for A192072, there is no canonical definition to state claims against.
-/

/-! ## A192072.P11925563279028488406

`A182639(A024988(n))`
-/

namespace A192072.P11925563279028488406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182639 (A024988 n).toNat

end

end A192072.P11925563279028488406

/-!
# A192073: G.f. C(C(x)) where C(x) satisfies: C(C(x)) + S(S(x)) = x such that C(x)^3 + (3/2)*S(x)^3 = x^3.

The programs for A192073, there is no canonical definition to state claims against.
-/

/-! ## A192073.P18399082162640471625

`(1-A001222((n+2)!-1))*6^n`
-/

namespace A192073.P18399082162640471625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001222 (Nat.factorial (n + 2) - 1)) * (6 ^ n : ℤ)

end

end A192073.P18399082162640471625

/-! ## A192073.P7738868157912970823

`6^n*A378214(A159077(4^n))`
-/

namespace A192073.P7738868157912970823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A378214 (A159077 (4 ^ n)).toNat

end

end A192073.P7738868157912970823

/-! ## A192073.P11684802044193992229

`A000400(n)*A056594(A000283(n))`
-/

namespace A192073.P11684802044193992229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A056594 (A000283 n).toNat

end

end A192073.P11684802044193992229

/-!
# A192074: a(1) = 0 and a(n) = A066158(n)-2 for n > 1.

The programs for A192074, there is no canonical definition to state claims against.
-/

/-! ## A192074.P8871229607904373185

`A066158(ceil(acot(n)+n))-2`
-/

namespace A192074.P8871229607904373185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066158 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat - 2

end

end A192074.P8871229607904373185

/-! ## A192074.P5877120865669579729

`A066158(n+1)-ceil(cosh(sin(n)))`
-/

namespace A192074.P5877120865669579729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066158 (n + 1) - ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A192074.P5877120865669579729

/-! ## A192074.P12010020254845104702

`A066158(A028310(n)+1)-2`
-/

namespace A192074.P12010020254845104702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066158 (A028310 n + 1).toNat - 2

end

end A192074.P12010020254845104702

/-! ## A192074.P16139081279364751707

`A066158(A233583(n+2))-2`
-/

namespace A192074.P16139081279364751707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066158 (A233583 (n + 2)).toNat - 2

end

end A192074.P16139081279364751707

/-!
# A192075: Number of fixed proper tree 3-dimensional polycubes.

The programs for A192075, there is no canonical definition to state claims against.
-/

/-! ## A192075.P5111862542611575269

`A067366(A159348(n))*A133263(n)`
-/

namespace A192075.P5111862542611575269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067366 (A159348 n).toNat * A133263 n

end

end A192075.P5111862542611575269

/-!
# A192076: Number of fixed proper tree 4-dimensional polycubes.

The programs for A192076, there is no canonical definition to state claims against.
-/

/-! ## A192076.P17652945763477422722

`A059304(n)%A032347(n)!`
-/

namespace A192076.P17652945763477422722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059304 n) (Nat.factorial (A032347 n).toNat : ℤ)

end

end A192076.P17652945763477422722

/-! ## A192076.P12117628364330447557

`A353753(or(n+1, A330801(n)))`
-/

namespace A192076.P12117628364330447557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353753 (Int.lor (n + 1 : ℤ) (A330801 n)).toNat

end

end A192076.P12117628364330447557

/-!
# A192080: Expansion of 1/((1-x)^6 - x^6).

The programs for A192080, the canonical program `A192080.P16440963949127252895` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192080 has offset 0).

The definition of A192080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5))` (program `A192080.P16440963949127252895`, by `A192080.P16440963949127252895.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192080.P7840829234250100707

`abs(A006090(n))`
-/

namespace A192080.P7840829234250100707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006090 n|

end

end A192080.P7840829234250100707

namespace A192080

/-- `abs(A006090(n))` -/
def P7840829234250100707.Spec : Prop :=
  ∀ n, P7840829234250100707.a n = A192080 n

end A192080

/-! ## A192080.P16440963949127252895

`ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A192080

/-- `ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5))` -/
def P16440963949127252895.Spec : Prop :=
  ∀ n, P16440963949127252895.a n = A192080 n

theorem P16440963949127252895.correct : P16440963949127252895.Spec := by
  intro n
  simp only [A192080]

end A192080

/-! ## A192080.P17363585931112725373

`(2^(n+5)+A057079(n+2)-27*A057681(n+1))/6`
-/

namespace A192080.P17363585931112725373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 5) : ℤ) + A057079 (n + 2) - 27 * A057681 (n + 1) : ℚ) / 6

end

end A192080.P17363585931112725373

namespace A192080

/-- `(2^(n+5)+A057079(n+2)-27*A057681(n+1))/6` -/
def P17363585931112725373.Spec : Prop :=
  ∀ n, P17363585931112725373.a n = (A192080 n : ℚ)

end A192080

/-! ## A192080.P16067696501715212418

`A290993(n+5)`
-/

namespace A192080.P16067696501715212418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290993 (n + 5)

end

end A192080.P16067696501715212418

namespace A192080

/-- `A290993(n+5)` -/
def P16067696501715212418.Spec : Prop :=
  ∀ n, P16067696501715212418.a n = A192080 n

end A192080

/-! ## A192080.P16657989260617092110

`∑[∑[∑[A227430(n+2)]]]`
-/

namespace A192080.P16657989260617092110
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192080.P16657989260617092110

namespace A192080

/-- `∑[∑[∑[A227430(n+2)]]]` -/
def P16657989260617092110.Spec : Prop :=
  ∀ n, P16657989260617092110.a n = A192080 n

end A192080

/-! ## A192080.P5029376212547576821

`∑[∑[∑[A119336(n)+a(n-1)]]]` with `a(0)=1`
-/

namespace A192080.P5029376212547576821
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A119336 n + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192080.P5029376212547576821

namespace A192080

/-- `∑[∑[∑[A119336(n)+a(n-1)]]]` -/
def P5029376212547576821.Spec : Prop :=
  ∀ n, P5029376212547576821.a n = A192080 n

end A192080

/-! ## A192080.P1124289524105218189

`A006090(n)*A033999(n)`
-/

namespace A192080.P1124289524105218189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006090 n * A033999 n

end

end A192080.P1124289524105218189

namespace A192080

/-- `A006090(n)*A033999(n)` -/
def P1124289524105218189.Spec : Prop :=
  ∀ n, P1124289524105218189.a n = A192080 n

end A192080

/-! ## A192080.P927497668361439952

`gcd(A000038(n), A006090(n))`
-/

namespace A192080.P927497668361439952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A006090 n)

end

end A192080.P927497668361439952

namespace A192080

/-- `gcd(A000038(n), A006090(n))` -/
def P927497668361439952.Spec : Prop :=
  ∀ n, (P927497668361439952.a n : ℤ) = A192080 n

end A192080

/-! ## A192080.P15028107177602629020

`lcm(A000034(n), A006090(n))`
-/

namespace A192080.P15028107177602629020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A006090 n)

end

end A192080.P15028107177602629020

namespace A192080

/-- `lcm(A000034(n), A006090(n))` -/
def P15028107177602629020.Spec : Prop :=
  ∀ n, (P15028107177602629020.a n : ℤ) = A192080 n

end A192080

/-! ## A192080.P12558949334566351733

`Δ[A306847(n+5)]`
-/

namespace A192080.P12558949334566351733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192080.P12558949334566351733

namespace A192080

/-- `Δ[A306847(n+5)]` -/
def P12558949334566351733.Spec : Prop :=
  ∀ n, P12558949334566351733.a n = A192080 n

end A192080

/-!
# A192082: Let f(n) = A038554(n) + delta(n,1), where delta is the Kronecker symbol. Then a(n) is the fixed point that arises from iterating f (a(n) = 0 or 1).

The programs for A192082, the canonical program `A192082.P13159562364668076303` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192082 has offset 0).

The definition of A192082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192082.P13159562364668076303

`a(A038554(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192082

/-- `a(A038554(n))` -/
def P13159562364668076303.Spec : Prop :=
  ∀ n, (P13159562364668076303.a n : ℤ) = A192082 n

theorem P13159562364668076303.correct : P13159562364668076303.Spec := by
  intro n
  simp only [A192082]

end A192082

/-! ## A192082.P10146242328075546512

`a(floor(A038556(n)/2))` with `a(0)=0, a(1)=1`
-/

namespace A192082.P10146242328075546512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(A038556 n : ℚ) / 2⌋.toNat

end

end A192082.P10146242328075546512

namespace A192082

/-- `a(floor(A038556(n)/2))` -/
def P10146242328075546512.Spec : Prop :=
  ∀ n, (P10146242328075546512.a n : ℤ) = A192082 n

end A192082

/-! ## A192082.P5717306738622839183

`a(A003188(A035327(n)))` with `a(0)=0, a(1)=1`
-/

namespace A192082.P5717306738622839183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A003188 (A035327 n).toNat).toNat

end

end A192082.P5717306738622839183

namespace A192082

/-- `a(A003188(A035327(n)))` -/
def P5717306738622839183.Spec : Prop :=
  ∀ n, (P5717306738622839183.a n : ℤ) = A192082 n

end A192082

/-! ## A192082.P3457778668895331159

`a(A003188(n)-A053644(n))` with `a(0)=0, a(1)=1`
-/

namespace A192082.P3457778668895331159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A003188 n - A053644 n).toNat

end

end A192082.P3457778668895331159

namespace A192082

/-- `a(A003188(n)-A053644(n))` -/
def P3457778668895331159.Spec : Prop :=
  ∀ n, (P3457778668895331159.a n : ℤ) = A192082 n

end A192082

/-! ## A192082.P9381220904839753185

`A038571(n)-A038571(floor(n/2))`
-/

namespace A192082.P9381220904839753185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038571 n - A038571 ⌊(n : ℚ) / 2⌋.toNat

end

end A192082.P9381220904839753185

namespace A192082

/-- `A038571(n)-A038571(floor(n/2))` -/
def P9381220904839753185.Spec : Prop :=
  ∀ n, P9381220904839753185.a n = A192082 n

end A192082

/-! ## A192082.P11429038667098674348

`a(A004526(A038556(n)))` with `a(0)=0, a(1)=1`
-/

namespace A192082.P11429038667098674348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A004526 (A038556 n).toNat).toNat

end

end A192082.P11429038667098674348

namespace A192082

/-- `a(A004526(A038556(n)))` -/
def P11429038667098674348.Spec : Prop :=
  ∀ n, (P11429038667098674348.a n : ℤ) = A192082 n

end A192082

/-!
# A192083: Arithmetic derivative of squares of prime powers: a(n) = A003415(A056798(n)).

The programs for A192083, the canonical program `A192083.P12204997390210467682` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192083 has offset 1).

The definition of A192083 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A056798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192083.P16549020895067829292

`2*A025474(n+1)*A025473(n+1)^(2*A025474(n+1)-1)`
-/

namespace A192083.P16549020895067829292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A025474 (n + 1) : ℚ) * (A025473 (n + 1) : ℚ) ^ (2 * A025474 (n + 1) - 1 : ℤ)

end

end A192083.P16549020895067829292

namespace A192083

/-- `2*A025474(n+1)*A025473(n+1)^(2*A025474(n+1)-1)` -/
def P16549020895067829292.Spec : Prop :=
  ∀ n, P16549020895067829292.a n = (A192083 (n + 1) : ℚ)

end A192083

/-! ## A192083.P12204997390210467682

`A003415(A056798(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A192083

/-- `A003415(A056798(n+1))` -/
def P12204997390210467682.Spec : Prop :=
  ∀ n, P12204997390210467682.a n = A192083 (n + 1)

theorem P12204997390210467682.correct : P12204997390210467682.Spec := by
  intro n
  simp only [A192083, Nat.add_sub_cancel]

end A192083

/-! ## A192083.P11426734895425013383

`A138929(n+1)*A192015(n+1)`
-/

namespace A192083.P11426734895425013383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1) * A192015 (n + 1)

end

end A192083.P11426734895425013383

namespace A192083

/-- `A138929(n+1)*A192015(n+1)` -/
def P11426734895425013383.Spec : Prop :=
  ∀ n, P11426734895425013383.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P3885964857570388716

`2*A000961(n+1)*A192015(n+1)`
-/

namespace A192083.P3885964857570388716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000961 (n + 1) * A192015 (n + 1))

end

end A192083.P3885964857570388716

namespace A192083

/-- `2*A000961(n+1)*A192015(n+1)` -/
def P3885964857570388716.Spec : Prop :=
  ∀ n, P3885964857570388716.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P715237307405661406

`A068720(A000961(n+1))`
-/

namespace A192083.P715237307405661406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068720 (A000961 (n + 1)).toNat

end

end A192083.P715237307405661406

namespace A192083

/-- `A068720(A000961(n+1))` -/
def P715237307405661406.Spec : Prop :=
  ∀ n, P715237307405661406.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P14782870840395633787

`A068720(record[A053585(n+1)])`
-/

namespace A192083.P14782870840395633787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192083.P14782870840395633787

namespace A192083

/-- `A068720(record[A053585(n+1)])` -/
def P14782870840395633787.Spec : Prop :=
  ∀ n, P14782870840395633787.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P2733368386033462613

`A068720(A181062(n+1)+1)`
-/

namespace A192083.P2733368386033462613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068720 (A181062 (n + 1) + 1).toNat

end

end A192083.P2733368386033462613

namespace A192083

/-- `A068720(A181062(n+1)+1)` -/
def P2733368386033462613.Spec : Prop :=
  ∀ n, P2733368386033462613.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P13704689485238163290

`2*A190116(eq[1, A028234(n+1)]+1)`
-/

namespace A192083.P13704689485238163290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A192083.P13704689485238163290

namespace A192083

/-- `2*A190116(eq[1, A028234(n+1)]+1)` -/
def P13704689485238163290.Spec : Prop :=
  ∀ n, P13704689485238163290.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P5397139557047114498

`A003415(A000961(n+1))*A138929(n+1)`
-/

namespace A192083.P5397139557047114498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000961 (n + 1)).toNat * A138929 (n + 1)

end

end A192083.P5397139557047114498

namespace A192083

/-- `A003415(A000961(n+1))*A138929(n+1)` -/
def P5397139557047114498.Spec : Prop :=
  ∀ n, P5397139557047114498.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P125496370535670708

`A003415(A138929(n+1)/2)*A138929(n+1)`
-/

namespace A192083.P125496370535670708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A138929 (n + 1) : ℚ) / 2)).toNat * A138929 (n + 1)

end

end A192083.P125496370535670708

namespace A192083

/-- `A003415(A138929(n+1)/2)*A138929(n+1)` -/
def P125496370535670708.Spec : Prop :=
  ∀ n, P125496370535670708.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P6044090200117723165

`A235711(A138929(n+1))`
-/

namespace A192083.P6044090200117723165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235711 (A138929 (n + 1)).toNat

end

end A192083.P6044090200117723165

namespace A192083

/-- `A235711(A138929(n+1))` -/
def P6044090200117723165.Spec : Prop :=
  ∀ n, P6044090200117723165.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P15469933072812124188

`A235711(2*A000961(n+1))`
-/

namespace A192083.P15469933072812124188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235711 (2 * A000961 (n + 1)).toNat

end

end A192083.P15469933072812124188

namespace A192083

/-- `A235711(2*A000961(n+1))` -/
def P15469933072812124188.Spec : Prop :=
  ∀ n, P15469933072812124188.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P1470484886693173880

`A235711(record[2*A008475(n+1)])`
-/

namespace A192083.P1470484886693173880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235711 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192083.P1470484886693173880

namespace A192083

/-- `A235711(record[2*A008475(n+1)])` -/
def P1470484886693173880.Spec : Prop :=
  ∀ n, P1470484886693173880.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P15962403778916645537

`A235711(A005843(record[A008475(n+1)]))`
-/

namespace A192083.P15962403778916645537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235711 (A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A192083.P15962403778916645537

namespace A192083

/-- `A235711(A005843(record[A008475(n+1)]))` -/
def P15962403778916645537.Spec : Prop :=
  ∀ n, P15962403778916645537.a n = A192083 (n + 1)

end A192083

/-! ## A192083.P7649007281930264534

`2*A190116(eq[1, A087802(n+1)]+1)`
-/

namespace A192083.P7649007281930264534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A192083.P7649007281930264534

namespace A192083

/-- `2*A190116(eq[1, A087802(n+1)]+1)` -/
def P7649007281930264534.Spec : Prop :=
  ∀ n, P7649007281930264534.a n = A192083 (n + 1)

end A192083

/-!
# A192084: Second arithmetic derivative of squares of prime powers: a(n)=A068346(A056798(n)).

The programs for A192084, the canonical program `A192084.P12604787591880010754` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192084 has offset 1).

The definition of A192084 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056798, A068346, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A192084.P12604787591880010754

`A068346(A056798(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A192084

/-- `A068346(A056798(n+1))` -/
def P12604787591880010754.Spec : Prop :=
  ∀ n, P12604787591880010754.a n = A192084 (n + 1)

theorem P12604787591880010754.correct : P12604787591880010754.Spec := by
  intro n
  simp only [A192084, Nat.add_sub_cancel]

end A192084

/-! ## A192084.P13444314403255993271

`A192016(A024626(n+1))`
-/

namespace A192084.P13444314403255993271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192016 (A024626 (n + 1)).toNat

end

end A192084.P13444314403255993271

namespace A192084

/-- `A192016(A024626(n+1))` -/
def P13444314403255993271.Spec : Prop :=
  ∀ n, P13444314403255993271.a n = A192084 (n + 1)

end A192084

/-! ## A192084.P301432867383535455

`A192083(n+1)-A368921(A056798(n+1))`
-/

namespace A192084.P301432867383535455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192083 (n + 1) - A368921 (A056798 (n + 1)).toNat

end

end A192084.P301432867383535455

namespace A192084

/-- `A192083(n+1)-A368921(A056798(n+1))` -/
def P301432867383535455.Spec : Prop :=
  ∀ n, P301432867383535455.a n = A192084 (n + 1)

theorem P301432867383535455.correct : P301432867383535455.Spec := by
  intro n
  simp only [A192084, Nat.add_sub_cancel, A192084.P301432867383535455.a, A192084.P12604787591880010754.a, A056798, A056798.P6426982090887198732.a, A068346, A068346.P16736836852944168196.a, A192083, A192083.P12204997390210467682.a, A368921, A368921.P16218200472489161701.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A192084

/-! ## A192084.P5413023939559887773

`∑{d}[A192083(n+1), A300251(#)]`
-/

namespace A192084.P5413023939559887773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A192084.P5413023939559887773

namespace A192084

/-- `∑{d}[A192083(n+1), A300251(#)]` -/
def P5413023939559887773.Spec : Prop :=
  ∀ n, P5413023939559887773.a n = A192084 (n + 1)

end A192084

/-! ## A192084.P3470016630151807375

`∑{d}[A235711(A138929(n+1)), A300251(#)]`
-/

namespace A192084.P3470016630151807375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235711 (A138929 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A192084.P3470016630151807375

namespace A192084

/-- `∑{d}[A235711(A138929(n+1)), A300251(#)]` -/
def P3470016630151807375.Spec : Prop :=
  ∀ n, P3470016630151807375.a n = A192084 (n + 1)

end A192084

/-!
# A192085: Number of ones in the binary expansion of n^3.

The programs for A192085, the canonical program `A192085.P15821628886213675605` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192085 has offset 0).

The definition of A192085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192085.P15821628886213675605

`A000120(A000578(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192085

/-- `A000120(A000578(n))` -/
def P15821628886213675605.Spec : Prop :=
  ∀ n, P15821628886213675605.a n = A192085 n

theorem P15821628886213675605.correct : P15821628886213675605.Spec := by
  intro n
  simp only [A192085]

end A192085

/-! ## A192085.P13899063134314464504

`floor(log2(A209639(n^3)))`
-/

namespace A192085.P13899063134314464504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A209639 (n ^ 3)).toNat

end

end A192085.P13899063134314464504

namespace A192085

/-- `floor(log2(A209639(n^3)))` -/
def P13899063134314464504.Spec : Prop :=
  ∀ n, (P13899063134314464504.a n : ℤ) = A192085 n

end A192085

/-! ## A192085.P7230675987954194794

`A000523(A209639(n^3))`
-/

namespace A192085.P7230675987954194794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A209639 (n ^ 3)).toNat

end

end A192085.P7230675987954194794

namespace A192085

/-- `A000523(A209639(n^3))` -/
def P7230675987954194794.Spec : Prop :=
  ∀ n, P7230675987954194794.a n = A192085 n

end A192085

/-! ## A192085.P8641396589619465392

`A332998(n^3)+A332997(n^3)`
-/

namespace A192085.P8641396589619465392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332998 (n ^ 3) + A332997 (n ^ 3)

end

end A192085.P8641396589619465392

namespace A192085

/-- `A332998(n^3)+A332997(n^3)` -/
def P8641396589619465392.Spec : Prop :=
  ∀ n, P8641396589619465392.a n = A192085 n

end A192085

/-! ## A192085.P16876280089569669948

`∑{e}[A286375(n), #]`
-/

namespace A192085.P16876280089569669948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A192085.P16876280089569669948

namespace A192085

/-- `∑{e}[A286375(n), #]` -/
def P16876280089569669948.Spec : Prop :=
  ∀ n, (P16876280089569669948.a n : ℤ) = A192085 n

end A192085

/-!
# A192088: Number of permutations of [n] realized by the shift on 3 letters.

The programs for A192088, there is no canonical definition to state claims against.
-/

/-! ## A192088.P10423738558277929867

`A192089(n+2)+A059413(n+1)`
-/

namespace A192088.P10423738558277929867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192089 (n + 2) + A059413 (n + 1)

end

end A192088.P10423738558277929867

/-! ## A192088.P10261540432048714152

`A192089(n+2)+∑[A059412(n+1)]`
-/

namespace A192088.P10261540432048714152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192089 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192088.P10261540432048714152

/-! ## A192088.P10407778291868520340

`A192089(n+2)+A059412(n+2)-A027375(n+2)`
-/

namespace A192088.P10407778291868520340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192089 (n + 2) + (A059412 (n + 2) - A027375 (n + 2))

end

end A192088.P10407778291868520340

/-! ## A192088.P4764189195340223004

`A192089(n+2)+A059412(n+2)-A038199(n+2)`
-/

namespace A192088.P4764189195340223004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192089 (n + 2) + (A059412 (n + 2) - A038199 (n + 2))

end

end A192088.P4764189195340223004

/-! ## A192088.P13119570342938851194

`A192089(n+2)+A059412(n+2)-A056267(n+2)`
-/

namespace A192088.P13119570342938851194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192089 (n + 2) + (A059412 (n + 2) - A056267 (n + 2))

end

end A192088.P13119570342938851194

/-!
# A192089: Number of permutations of [n] that require a 3-letter alphabet in order to be realized by a shift.

The programs for A192089, there is no canonical definition to state claims against.
-/

/-! ## A192089.P2704359071497989667

`A192088(n+2)-A059413(n+1)`
-/

namespace A192089.P2704359071497989667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192088 (n + 2) - A059413 (n + 1)

end

end A192089.P2704359071497989667

/-! ## A192089.P13686306177171016701

`A192088(n+2)-∑[A059412(n+1)]`
-/

namespace A192089.P13686306177171016701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192088 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192089.P13686306177171016701

/-! ## A192089.P14207176465397627987

`A192088(n+2)-(A059412(n+2)-A027375(n+2))`
-/

namespace A192089.P14207176465397627987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192088 (n + 2) - (A059412 (n + 2) - A027375 (n + 2))

end

end A192089.P14207176465397627987

/-! ## A192089.P16191046420086957388

`A192088(n+2)-(A059412(n+2)-A038199(n+2))`
-/

namespace A192089.P16191046420086957388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192088 (n + 2) - (A059412 (n + 2) - A038199 (n + 2))

end

end A192089.P16191046420086957388

/-!
# A192091: Number of tatami tilings of a 5 X n grid (with monomers allowed).

The programs for A192091, there is no canonical definition to state claims against.
-/

/-! ## A192091.P17343296978957045975

`filter[A312825(2*n), A189141(#)]`
-/

namespace A192091.P17343296978957045975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312825 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189141 (f1 j).toNat = 1) n)

end

end A192091.P17343296978957045975

/-!
# A192095: Number of tatami tilings of an n X n square with exactly k horizontal dimers and n monomers (no restriction on the number of vertical dimers).

The programs for A192095, there is no canonical definition to state claims against.
-/

/-! ## A192095.P10847641147607014643

`A006530(A011782(n+1))*A008619(A070166(n))`
-/

namespace A192095.P10847641147607014643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011782 (n + 1)).toNat * A008619 (A070166 n).toNat

end

end A192095.P10847641147607014643

/-! ## A192095.P12757891546294861046

`A000005(A110930(n+1))*A000005(A070166(n))`
-/

namespace A192095.P12757891546294861046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A110930 (n + 1)).toNat * A000005 (A070166 n).toNat

end

end A192095.P12757891546294861046

/-!
# A192096: Maximum number of tatami tilings of any m X m square region with exactly n horizontal dimers and m monomers.

The programs for A192096, there is no canonical definition to state claims against.
-/

/-! ## A192096.P15678996904944544185

`2*A022567(n)`
-/

namespace A192096.P15678996904944544185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022567 n

end

end A192096.P15678996904944544185

/-! ## A192096.P13415789447237984241

`2*round(A290133(n)+n/(n+1))`
-/

namespace A192096.P13415789447237984241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A290133 n : ℚ) + (n : ℚ) / (n + 1 : ℚ))

end

end A192096.P13415789447237984241

/-! ## A192096.P14208600126827199891

`2*(A290133(n)+A057427(n))`
-/

namespace A192096.P14208600126827199891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A290133 n + A057427 n)

end

end A192096.P14208600126827199891

/-! ## A192096.P16941363206098362418

`2*(A290133(n)-A057428(n))`
-/

namespace A192096.P16941363206098362418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A290133 n - A057428 n)

end

end A192096.P16941363206098362418

/-! ## A192096.P16066305734482509752

`A022567(A005843(n)/2)+A022567(n)`
-/

namespace A192096.P16066305734482509752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A022567 n

end

end A192096.P16066305734482509752

/-! ## A192096.P3041771165325243168

`A022567(A005843(n)-n)+A022567(n)`
-/

namespace A192096.P3041771165325243168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 (A005843 n - (n : ℤ)).toNat + A022567 n

end

end A192096.P3041771165325243168

/-! ## A192096.P5655858851471043623

`A022567(n)+A022567(n%A022567(n))`
-/

namespace A192096.P5655858851471043623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022567 n + A022567 (Int.tmod (n : ℤ) (A022567 n)).toNat

end

end A192096.P5655858851471043623

/-! ## A192096.P15306169323515224255

`A000007(n+1)+A022567(n)+A022567(n)`
-/

namespace A192096.P15306169323515224255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A022567 n + A022567 n)

end

end A192096.P15306169323515224255

/-! ## A192096.P14771936615734143140

`2*(A290133(n)+char[A290082(n+1)])`
-/

namespace A192096.P14771936615734143140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A290133 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A192096.P14771936615734143140

/-! ## A192096.P2084603591815184317

`record[A112166(n+1)]`
-/

namespace A192096.P2084603591815184317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192096.P2084603591815184317

/-! ## A192096.P1549354075947326715

`A112166(6*n+1)`
-/

namespace A192096.P1549354075947326715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 (6 * n + 1)

end

end A192096.P1549354075947326715

/-! ## A192096.P77284738158121645

`record[abs(A112167(n+1))]`
-/

namespace A192096.P77284738158121645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112167 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192096.P77284738158121645

/-! ## A192096.P7738926412561383142

`record[-A112167(2*n+1)]`
-/

namespace A192096.P7738926412561383142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A112167 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192096.P7738926412561383142

/-! ## A192096.P14638409955809462603

`2*A293377(A034856(n+1))`
-/

namespace A192096.P14638409955809462603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293377 (A034856 (n + 1)).toNat

end

end A192096.P14638409955809462603

/-! ## A192096.P11092173209968561358

`2*A286335(∑[n+3])`
-/

namespace A192096.P11092173209968561358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192096.P11092173209968561358

/-!
# A192097: Number of tatami tilings of an n X n square region with n monomers and floor(n * (n - 1) / 4) horizontal dimers.

The programs for A192097, there is no canonical definition to state claims against.
-/

/-! ## A192097.P3597971098045536821

`∏{e}[∏[A011371(n+3)], #]`
-/

namespace A192097.P3597971098045536821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A192097.P3597971098045536821

/-! ## A192097.P14269686325271601332

`A131996(A362566(n+1))`
-/

namespace A192097.P14269686325271601332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A362566 (n + 1)).toNat

end

end A192097.P14269686325271601332

/-! ## A192097.P14779861087962049910

`A355911(or(∑[n], A000700(n)))`
-/

namespace A192097.P14779861087962049910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000700 n)).toNat

end

end A192097.P14779861087962049910

/-! ## A192097.P9107936632861397057

`A321729(A292599(n+1)+n)`
-/

namespace A192097.P9107936632861397057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321729 (A292599 (n + 1) + (n : ℤ)).toNat

end

end A192097.P9107936632861397057

/-! ## A192097.P16634621094537946848

`A000010(A268182((1-n)²+n))`
-/

namespace A192097.P16634621094537946848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A268182 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat).toNat

end

end A192097.P16634621094537946848

/-!
# A192098: Number of distinct (unordered) pairs of partitions of an 8-element set that have Rand distance n.

The programs for A192098, there is no canonical definition to state claims against.
-/

/-! ## A192098.P5134289477930434112

`A192100(n+57)`
-/

namespace A192098.P5134289477930434112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192100 (n + 57)

end

end A192098.P5134289477930434112

/-!
# A192099: Least number of parts in a partition of n into signed terms of the form 2^k-1.

The programs for A192099, there is no canonical definition to state claims against.
-/

/-! ## A192099.P867455645139924934

`A055472(A015631(n+1)+10*n)%A005811(n+1)+1`
-/

namespace A192099.P867455645139924934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055472 (A015631 (n + 1) + (10 * n : ℤ)).toNat) (A005811 (n + 1)) + 1

end

end A192099.P867455645139924934

/-! ## A192099.P15330489457638702859

`gcd(Δ[A087805(n)], A002336(n))`
-/

namespace A192099.P15330489457638702859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A002336 n)

end

end A192099.P15330489457638702859

/-! ## A192099.P6397600137013632862

`gcd(n*A002336(n), A100661(n+1))`
-/

namespace A192099.P6397600137013632862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A002336 n) (A100661 (n + 1))

end

end A192099.P6397600137013632862

/-! ## A192099.P5603487000442878591

`gcd(A002336(A222251(n)), A100661(n+1))`
-/

namespace A192099.P5603487000442878591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002336 (A222251 n).toNat) (A100661 (n + 1))

end

end A192099.P5603487000442878591

/-! ## A192099.P14937186532998336090

`gcd(A130065(A100661(n+1)), A141592(n+1))`
-/

namespace A192099.P14937186532998336090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130065 (A100661 (n + 1)).toNat) (A141592 (n + 1))

end

end A192099.P14937186532998336090

