import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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
# A344800: Numbers that are the sum of five squares in seven or more ways.

The programs for A344800, there is no canonical definition to state claims against.
-/

/-! ## A344800.P7200829827411053159

`lt[A083946(A000040(n+1)), A025429(n)]`
-/

namespace A344800.P7200829827411053159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344800.P7200829827411053159

/-!
# A344801: Numbers that are the sum of five squares in eight or more ways.

The programs for A344801, there is no canonical definition to state claims against.
-/

/-! ## A344801.P1289008186921962599

`lt[A274979(2*n+3), A000670(A025429(n))]`
-/

namespace A344801.P1289008186921962599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274979 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344801.P1289008186921962599

/-!
# A344802: Numbers that are the sum of five squares in nine or more ways.

The programs for A344802, there is no canonical definition to state claims against.
-/

/-! ## A344802.P272070897175297450

`lt[A031897(n+2), A001053(A025429(n))]`
-/

namespace A344802.P272070897175297450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031897 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001053 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344802.P272070897175297450

/-!
# A344803: Numbers that are the sum of five squares in ten or more ways.

The programs for A344803, there is no canonical definition to state claims against.
-/

/-! ## A344803.P5662137540521840613

`lt[1, A260528(A025429(n))]`
-/

namespace A344803.P5662137540521840613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260528 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344803.P5662137540521840613

/-!
# A344805: Numbers that are the sum of six squares in one or more ways.

The programs for A344805, the canonical program `A344805.P4192150206449984841` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344805 has offset 1).

The definition of A344805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344805.P4192150206449984841

`2*a(n-1)-a(n-2)` with `a(0)=6, a(1)=9, a(2)=12, a(3)=14, a(4)=15, a(5)=17, a(6)=18, a(7)=20, a(8)=21`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A344805

/-- `2*a(n-1)-a(n-2)` -/
def P4192150206449984841.Spec : Prop :=
  ∀ n, P4192150206449984841.a n = A344805 (n + 1)

theorem P4192150206449984841.correct : P4192150206449984841.Spec := by
  intro n
  simp only [A344805, Nat.add_sub_cancel]

end A344805

/-!
# A344806: Numbers that are the sum of six squares in two or more ways.

The programs for A344806, there is no canonical definition to state claims against.
-/

/-! ## A344806.P5060931449295542094

`lt[A324924(n+1), A025430(n)²]`
-/

namespace A344806.P5060931449295542094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025430 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344806.P5060931449295542094

/-!
# A344807: Numbers that are the sum of six squares in three or more ways.

The programs for A344807, there is no canonical definition to state claims against.
-/

/-! ## A344807.P11179705033781399190

`A344812(n+1)-48`
-/

namespace A344807.P11179705033781399190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344812 (n + 1) - 48

end

end A344807.P11179705033781399190

/-!
# A344808: Numbers that are the sum of six squares in four or more ways.

The programs for A344808, there is no canonical definition to state claims against.
-/

/-! ## A344808.P7408405431752241281

`lt[0, A219903(A025430(n))]`
-/

namespace A344808.P7408405431752241281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219903 (A025430 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344808.P7408405431752241281

/-!
# A344809: Numbers that are the sum of six squares in five or more ways.

The programs for A344809, the canonical program `A344809.P4607849316742958979` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344809 has offset 1).

The definition of A344809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344809.P4607849316742958979

`A047700(n+1)+49`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A344809

/-- `A047700(n+1)+49` -/
def P4607849316742958979.Spec : Prop :=
  ∀ n, P4607849316742958979.a n = A344809 (n + 1)

theorem P4607849316742958979.correct : P4607849316742958979.Spec := by
  intro n
  simp only [A344809, Nat.add_sub_cancel]

end A344809

/-!
# A344810: Numbers that are the sum of six squares in six or more ways.

The programs for A344810, there is no canonical definition to state claims against.
-/

/-! ## A344810.P13454181052055789103

`lt[A215798(n+1), A001353(A025430(n))]`
-/

namespace A344810.P13454181052055789103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (A025430 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344810.P13454181052055789103

/-!
# A344811: Numbers that are the sum of six squares in seven or more ways.

The programs for A344811, there is no canonical definition to state claims against.
-/

/-! ## A344811.P16089129346217157451

`lt[35, A270929(A025430(n)+2)]`
-/

namespace A344811.P16089129346217157451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270929 (A025430 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344811.P16089129346217157451

/-!
# A344812: Numbers that are the sum of six squares in eight or more ways.

The programs for A344812, there is no canonical definition to state claims against.
-/

/-! ## A344812.P3745839710289384280

`A344807(n+1)+48`
-/

namespace A344812.P3745839710289384280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344807 (n + 1) + 48

end

end A344812.P3745839710289384280

/-!
# A344814: a(n) = Sum_{k=1..n} floor(n/k) * 3^(k-1).

The programs for A344814, the canonical program `A344814.P1384823878643924912` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344814 has offset 1).

The definition of A344814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344814.P1446324159186622699

`∑[∑{d}[n+1, 3^(#-1)]]`
-/

namespace A344814.P1446324159186622699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (3 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344814.P1446324159186622699

namespace A344814

/-- `∑[∑{d}[n+1, 3^(#-1)]]` -/
def P1446324159186622699.Spec : Prop :=
  ∀ n, P1446324159186622699.a n = (A344814 (n + 1) : ℚ)

end A344814

/-! ## A344814.P5225941899336249366

`∑{d}[n+1, 3^(#-1)]+a(n-1)` with `a(0)=1`
-/

namespace A344814.P5225941899336249366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (3 : ℚ) ^ ((d : ℤ) - 1 : ℤ) + a (n - 1)

end

end A344814.P5225941899336249366

namespace A344814

/-- `∑{d}[n+1, 3^(#-1)]+a(n-1)` -/
def P5225941899336249366.Spec : Prop :=
  ∀ n, P5225941899336249366.a n = (A344814 (n + 1) : ℚ)

end A344814

/-! ## A344814.P1384823878643924912

`∑[A034730(n+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344814

/-- `∑[A034730(n+1)]` -/
def P1384823878643924912.Spec : Prop :=
  ∀ n, P1384823878643924912.a n = A344814 (n + 1)

theorem P1384823878643924912.correct : P1384823878643924912.Spec := by
  intro n
  simp only [A344814, Nat.add_sub_cancel]

end A344814

/-! ## A344814.P10320113373292309304

`∑[∑{d}[n+1, 3^#]/3]`
-/

namespace A344814.P10320113373292309304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), 3 ^ d : ℕ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344814.P10320113373292309304

namespace A344814

/-- `∑[∑{d}[n+1, 3^#]/3]` -/
def P10320113373292309304.Spec : Prop :=
  ∀ n, P10320113373292309304.a n = (A344814 (n + 1) : ℚ)

end A344814

/-! ## A344814.P17791044820862889679

`∑[A363913(n+1)/3]`
-/

namespace A344814.P17791044820862889679
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363913 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344814.P17791044820862889679

namespace A344814

/-- `∑[A363913(n+1)/3]` -/
def P17791044820862889679.Spec : Prop :=
  ∀ n, P17791044820862889679.a n = (A344814 (n + 1) : ℚ)

end A344814

/-! ## A344814.P17641876238572374968

`∑[A308813(A056000(n)+7)]`
-/

namespace A344814.P17641876238572374968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A056000 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344814.P17641876238572374968

namespace A344814

/-- `∑[A308813(A056000(n)+7)]` -/
def P17641876238572374968.Spec : Prop :=
  ∀ n, P17641876238572374968.a n = A344814 (n + 1)

end A344814

/-! ## A344814.P15776766411583098456

`∑[A308813(A052905(n+1)+2)]`
-/

namespace A344814.P15776766411583098456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A052905 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344814.P15776766411583098456

namespace A344814

/-- `∑[A308813(A052905(n+1)+2)]` -/
def P15776766411583098456.Spec : Prop :=
  ∀ n, P15776766411583098456.a n = A344814 (n + 1)

end A344814

/-!
# A344815: a(n) = Sum_{k=1..n} floor(n/k) * 4^(k-1).

The programs for A344815, the canonical program `A344815.P322017115133410734` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344815 has offset 1).

The definition of A344815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344815.P11257601586022151098

`∑[∑{d}[n+1, 4^(#-1)]]`
-/

namespace A344815.P11257601586022151098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (4 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344815.P11257601586022151098

namespace A344815

/-- `∑[∑{d}[n+1, 4^(#-1)]]` -/
def P11257601586022151098.Spec : Prop :=
  ∀ n, P11257601586022151098.a n = (A344815 (n + 1) : ℚ)

end A344815

/-! ## A344815.P14249607556751677735

`∑[∑{d}[n+1, 4^#]/4]`
-/

namespace A344815.P14249607556751677735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), 4 ^ d : ℕ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344815.P14249607556751677735

namespace A344815

/-- `∑[∑{d}[n+1, 4^#]/4]` -/
def P14249607556751677735.Spec : Prop :=
  ∀ n, P14249607556751677735.a n = (A344815 (n + 1) : ℚ)

end A344815

/-! ## A344815.P8874920955581520193

`∑{d}[n+1, 4^(#-1)]+a(n-1)` with `a(0)=1`
-/

namespace A344815.P8874920955581520193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (4 : ℚ) ^ ((d : ℤ) - 1 : ℤ) + a (n - 1)

end

end A344815.P8874920955581520193

namespace A344815

/-- `∑{d}[n+1, 4^(#-1)]+a(n-1)` -/
def P8874920955581520193.Spec : Prop :=
  ∀ n, P8874920955581520193.a n = (A344815 (n + 1) : ℚ)

end A344815

/-! ## A344815.P322017115133410734

`∑[A339684(n+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344815

/-- `∑[A339684(n+1)]` -/
def P322017115133410734.Spec : Prop :=
  ∀ n, P322017115133410734.a n = A344815 (n + 1)

theorem P322017115133410734.correct : P322017115133410734.Spec := by
  intro n
  simp only [A344815, Nat.add_sub_cancel]

end A344815

/-! ## A344815.P5520501734745883648

`∑[record[A339684(A324347(n))]]`
-/

namespace A344815.P5520501734745883648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339684 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344815.P5520501734745883648

namespace A344815

/-- `∑[record[A339684(A324347(n))]]` -/
def P5520501734745883648.Spec : Prop :=
  ∀ n, P5520501734745883648.a n = A344815 (n + 1)

end A344815

/-! ## A344815.P16494093129802598883

`∑[record[A339684(A193738(n))]]`
-/

namespace A344815.P16494093129802598883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339684 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344815.P16494093129802598883

namespace A344815

/-- `∑[record[A339684(A193738(n))]]` -/
def P16494093129802598883.Spec : Prop :=
  ∀ n, P16494093129802598883.a n = A344815 (n + 1)

end A344815

/-! ## A344815.P303221106083087574

`∑[A308813(A046691(n+3))]`
-/

namespace A344815.P303221106083087574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A046691 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344815.P303221106083087574

namespace A344815

/-- `∑[A308813(A046691(n+3))]` -/
def P303221106083087574.Spec : Prop :=
  ∀ n, P303221106083087574.a n = A344815 (n + 1)

end A344815

/-! ## A344815.P8085323908721911358

`∑[A308813(Δ[A023545(n+1)])]`
-/

namespace A344815.P8085323908721911358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344815.P8085323908721911358

namespace A344815

/-- `∑[A308813(Δ[A023545(n+1)])]` -/
def P8085323908721911358.Spec : Prop :=
  ∀ n, P8085323908721911358.a n = A344815 (n + 1)

end A344815

/-!
# A344816: a(n) = Sum_{k=1..n} floor(n/k) * 5^(k-1).

The programs for A344816, the canonical program `A344816.P16042371263441308375` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344816 has offset 1).

The definition of A344816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344816.P268452636516781614

`∑[∑{d}[n+1, 5^(#-1)]]`
-/

namespace A344816.P268452636516781614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (5 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344816.P268452636516781614

namespace A344816

/-- `∑[∑{d}[n+1, 5^(#-1)]]` -/
def P268452636516781614.Spec : Prop :=
  ∀ n, P268452636516781614.a n = (A344816 (n + 1) : ℚ)

end A344816

/-! ## A344816.P5892066220241191432

`∑[∑{d}[n+1, 5^#]/5]`
-/

namespace A344816.P5892066220241191432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), 5 ^ d : ℕ) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344816.P5892066220241191432

namespace A344816

/-- `∑[∑{d}[n+1, 5^#]/5]` -/
def P5892066220241191432.Spec : Prop :=
  ∀ n, P5892066220241191432.a n = (A344816 (n + 1) : ℚ)

end A344816

/-! ## A344816.P811854698813045388

`∑{d}[n+1, 5^(#-1)]+a(n-1)` with `a(0)=1`
-/

namespace A344816.P811854698813045388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ d ∈ Nat.divisors (f1 n), (5 : ℚ) ^ ((d : ℤ) - 1 : ℤ) + a (n - 1)

end

end A344816.P811854698813045388

namespace A344816

/-- `∑{d}[n+1, 5^(#-1)]+a(n-1)` -/
def P811854698813045388.Spec : Prop :=
  ∀ n, P811854698813045388.a n = (A344816 (n + 1) : ℚ)

end A344816

/-! ## A344816.P16042371263441308375

`∑[A339685(n+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344816

/-- `∑[A339685(n+1)]` -/
def P16042371263441308375.Spec : Prop :=
  ∀ n, P16042371263441308375.a n = A344816 (n + 1)

theorem P16042371263441308375.correct : P16042371263441308375.Spec := by
  intro n
  simp only [A344816, Nat.add_sub_cancel]

end A344816

/-! ## A344816.P5569296960748041623

`∑[record[A339685(A193738(n))]]`
-/

namespace A344816.P5569296960748041623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339685 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344816.P5569296960748041623

namespace A344816

/-- `∑[record[A339685(A193738(n))]]` -/
def P5569296960748041623.Spec : Prop :=
  ∀ n, P5569296960748041623.a n = A344816 (n + 1)

end A344816

/-! ## A344816.P16575816930375251434

`∑[A308813(A052905(n+3))]`
-/

namespace A344816.P16575816930375251434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A052905 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344816.P16575816930375251434

namespace A344816

/-- `∑[A308813(A052905(n+3))]` -/
def P16575816930375251434.Spec : Prop :=
  ∀ n, P16575816930375251434.a n = A344816 (n + 1)

end A344816

/-!
# A344817: a(n) = Sum_{k=1..n} floor(n/k) * (-2)^(k-1).

The programs for A344817, the canonical program `A344817.P3238812888044311668` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344817 has offset 1).

The definition of A344817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344817.P3228456324831195813

`∑[∑{d}[n+1, (-2)^(#-1)]]`
-/

namespace A344817.P3228456324831195813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344817.P3228456324831195813

namespace A344817

/-- `∑[∑{d}[n+1, (-2)^(#-1)]]` -/
def P3228456324831195813.Spec : Prop :=
  ∀ n, P3228456324831195813.a n = (A344817 (n + 1) : ℚ)

end A344817

/-! ## A344817.P3238812888044311668

`∑[or(1, ∑{d}[n+1, A123344(#)])]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344817

/-- `∑[or(1, ∑{d}[n+1, A123344(#)])]` -/
def P3238812888044311668.Spec : Prop :=
  ∀ n, P3238812888044311668.a n = A344817 (n + 1)

theorem P3238812888044311668.correct : P3238812888044311668.Spec := by
  intro n
  simp only [A344817, Nat.add_sub_cancel]

end A344817

/-! ## A344817.P11145787407981640264

`∑[(-1)^n*A081295(n+1)]`
-/

namespace A344817.P11145787407981640264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A081295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344817.P11145787407981640264

namespace A344817

/-- `∑[(-1)^n*A081295(n+1)]` -/
def P11145787407981640264.Spec : Prop :=
  ∀ n, P11145787407981640264.a n = A344817 (n + 1)

end A344817

/-! ## A344817.P10104577933560732595

`(2*A345034(n+1)+n+1)/3`
-/

namespace A344817.P10104577933560732595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A345034 (n + 1) + (n + 1 : ℤ) : ℚ) / 3

end

end A344817.P10104577933560732595

namespace A344817

/-- `(2*A345034(n+1)+n+1)/3` -/
def P10104577933560732595.Spec : Prop :=
  ∀ n, P10104577933560732595.a n = (A344817 (n + 1) : ℚ)

end A344817

/-! ## A344817.P10814866124377241269

`∑[∑{d}[n+1, A123344(#)]%A098196(n+3)]`
-/

namespace A344817.P10814866124377241269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f2 n), A123344 d) (A098196 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344817.P10814866124377241269

namespace A344817

/-- `∑[∑{d}[n+1, A123344(#)]%A098196(n+3)]` -/
def P10814866124377241269.Spec : Prop :=
  ∀ n, P10814866124377241269.a n = A344817 (n + 1)

end A344817

/-!
# A344818: a(n) = Sum_{k=1..n} floor(n/k) * (-3)^(k-1).

The programs for A344818, the canonical program `A344818.P377779174704466084` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344818 has offset 1).

The definition of A344818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344818.P5472775563746660831

`∑[∑{d}[n+1, (-3)^(#-1)]]`
-/

namespace A344818.P5472775563746660831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-3 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344818.P5472775563746660831

namespace A344818

/-- `∑[∑{d}[n+1, (-3)^(#-1)]]` -/
def P5472775563746660831.Spec : Prop :=
  ∀ n, P5472775563746660831.a n = (A344818 (n + 1) : ℚ)

end A344818

/-! ## A344818.P377779174704466084

`∑[(-1)^n*A101561(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344818

/-- `∑[(-1)^n*A101561(n)]` -/
def P377779174704466084.Spec : Prop :=
  ∀ n, P377779174704466084.a n = A344818 (n + 1)

theorem P377779174704466084.correct : P377779174704466084.Spec := by
  intro n
  simp only [A344818, Nat.add_sub_cancel]

end A344818

/-! ## A344818.P8579796777675255779

`∑[A101561(n)/A033999(n)]`
-/

namespace A344818.P8579796777675255779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101561 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344818.P8579796777675255779

namespace A344818

/-- `∑[A101561(n)/A033999(n)]` -/
def P8579796777675255779.Spec : Prop :=
  ∀ n, P8579796777675255779.a n = (A344818 (n + 1) : ℚ)

end A344818

/-! ## A344818.P5989751253673082004

`a(n-1)+(-1)^n*A101561(n)*A007318(C(2, n+2))` with `a(0)=1`
-/

namespace A344818.P5989751253673082004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-1) ^ n * A101561 n * A007318 (Nat.choose 2 (n + 2))

end

end A344818.P5989751253673082004

namespace A344818

/-- `a(n-1)+(-1)^n*A101561(n)*A007318(C(2, n+2))` -/
def P5989751253673082004.Spec : Prop :=
  ∀ n, P5989751253673082004.a n = A344818 (n + 1)

end A344818

/-! ## A344818.P10139916569209755319

`A344824(A027379(n+2))`
-/

namespace A344818.P10139916569209755319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344824 (A027379 (n + 2)).toNat

end

end A344818.P10139916569209755319

namespace A344818

/-- `A344824(A027379(n+2))` -/
def P10139916569209755319.Spec : Prop :=
  ∀ n, P10139916569209755319.a n = A344818 (n + 1)

end A344818

/-!
# A344819: a(n) = Sum_{k=1..n} floor(n/k) * (-4)^(k-1).

The programs for A344819, the canonical program `A344819.P1923381151925912591` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344819 has offset 1).

The definition of A344819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344819.P13223456252009485562

`∑[∑{d}[n+1, (-4)^(#-1)]]`
-/

namespace A344819.P13223456252009485562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-4 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344819.P13223456252009485562

namespace A344819

/-- `∑[∑{d}[n+1, (-4)^(#-1)]]` -/
def P13223456252009485562.Spec : Prop :=
  ∀ n, P13223456252009485562.a n = (A344819 (n + 1) : ℚ)

end A344819

/-! ## A344819.P1923381151925912591

`∑[(-1)^n*A101562(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344819

/-- `∑[(-1)^n*A101562(n)]` -/
def P1923381151925912591.Spec : Prop :=
  ∀ n, P1923381151925912591.a n = A344819 (n + 1)

theorem P1923381151925912591.correct : P1923381151925912591.Spec := by
  intro n
  simp only [A344819, Nat.add_sub_cancel]

end A344819

/-! ## A344819.P7291542538349532984

`∑[A101562(n)/A033999(n)]`
-/

namespace A344819.P7291542538349532984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101562 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344819.P7291542538349532984

namespace A344819

/-- `∑[A101562(n)/A033999(n)]` -/
def P7291542538349532984.Spec : Prop :=
  ∀ n, P7291542538349532984.a n = (A344819 (n + 1) : ℚ)

end A344819

/-! ## A344819.P12343944656726850609

`∑[A101562(n)/A056594(2*n)]`
-/

namespace A344819.P12343944656726850609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101562 n : ℚ) / (A056594 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344819.P12343944656726850609

namespace A344819

/-- `∑[A101562(n)/A056594(2*n)]` -/
def P12343944656726850609.Spec : Prop :=
  ∀ n, P12343944656726850609.a n = (A344819 (n + 1) : ℚ)

end A344819

/-! ## A344819.P5075370730702823762

`A344824(A000124(n+4)+n)`
-/

namespace A344819.P5075370730702823762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344824 (A000124 (n + 4) + (n : ℤ)).toNat

end

end A344819.P5075370730702823762

namespace A344819

/-- `A344824(A000124(n+4)+n)` -/
def P5075370730702823762.Spec : Prop :=
  ∀ n, P5075370730702823762.a n = A344819 (n + 1)

end A344819

/-!
# A344820: a(n) = Sum_{k=1..n} floor(n/k) * (-n)^(k-1).

The programs for A344820, there is no canonical definition to state claims against.
-/

/-! ## A344820.P5379294543736984516

`A344824(2*(n+1)²)`
-/

namespace A344820.P5379294543736984516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344824 (2 * (n + 1) ^ 2)

end

end A344820.P5379294543736984516

/-!
# A344821: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where A(n,k) = Sum_{j=1..n} floor(n/j) * k^(j-1).

The programs for A344821, there is no canonical definition to state claims against.
-/

/-! ## A344821.P18026652944924911730

`A000523(A018006(A210489(n)))`
-/

namespace A344821.P18026652944924911730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A018006 (A210489 n).toNat).toNat

end

end A344821.P18026652944924911730

/-! ## A344821.P1556526559100748086

`A000194(A038101(A210489(n))²)`
-/

namespace A344821.P1556526559100748086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A038101 (A210489 n).toNat ^ 2).toNat

end

end A344821.P1556526559100748086

/-! ## A344821.P9499896926414988080

`A325678(A132813(n)+A059268(n))`
-/

namespace A344821.P9499896926414988080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A132813 n + A059268 n).toNat

end

end A344821.P9499896926414988080

/-! ## A344821.P8169970908762429416

`A360109(A000295(n+3))+A181971(n)`
-/

namespace A344821.P8169970908762429416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 (A000295 (n + 3)).toNat + A181971 n

end

end A344821.P8169970908762429416

/-! ## A344821.P7222923500143819550

`A088519(A079502(n))`
-/

namespace A344821.P7222923500143819550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A079502 n).toNat

end

end A344821.P7222923500143819550

/-!
# A344822: Numbers m with decimal expansion (d_1, ..., d_k) such that d_i = m * i mod 10 for i = 1..k.

The programs for A344822, there is no canonical definition to state claims against.
-/

/-! ## A344822.P4439727064874905883

`∩[A048407(n), A055645(n)]`
-/

namespace A344822.P4439727064874905883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344822.P4439727064874905883

/-! ## A344822.P5775338112061176219

`∩[A048407(n), A055646(n)]`
-/

namespace A344822.P5775338112061176219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344822.P5775338112061176219

/-! ## A344822.P15369709200080474807

`∩[A048407(n), A055647(n)]`
-/

namespace A344822.P15369709200080474807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055647 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344822.P15369709200080474807

/-! ## A344822.P7400892000017926564

`∩[A048407(n), A055648(n)]`
-/

namespace A344822.P7400892000017926564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055648 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344822.P7400892000017926564

/-! ## A344822.P3129128687637899278

`∩[A024660(n), A122639(n)]`
-/

namespace A344822.P3129128687637899278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122639 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344822.P3129128687637899278

/-!
# A344823: Numbers m with decimal expansion (d_1, ..., d_k) such that d_i = m ^ i mod 10 for i = 1..k.

The programs for A344823, there is no canonical definition to state claims against.
-/

/-! ## A344823.P17952768768975103655

`filter[A344749(n+1), A136522(#)]`
-/

namespace A344823.P17952768768975103655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A344823.P17952768768975103655

/-! ## A344823.P12809786644287861180

`eq[A151949(n), A376556(n)]`
-/

namespace A344823.P12809786644287861180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344823.P12809786644287861180

/-! ## A344823.P7069110398783174565

`eq[A347688(n), A376556(n)]`
-/

namespace A344823.P7069110398783174565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376556 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344823.P7069110398783174565

/-! ## A344823.P3526339262292731298

`filter[A023768(n+1), A202022(#)]`
-/

namespace A344823.P3526339262292731298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A344823.P3526339262292731298

/-! ## A344823.P4797200871258180903

`filter[A023794(n+1), A202022(#)]`
-/

namespace A344823.P4797200871258180903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A344823.P4797200871258180903

/-!
# A344824: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where A(n,k) = Sum_{j=1..n} floor(n/j) * (-k)^(j-1).

The programs for A344824, there is no canonical definition to state claims against.
-/

/-! ## A344824.P4854659146826471573

`A242443(A145324(n+1)+1)-A023443(A208510(n+1))`
-/

namespace A344824.P4854659146826471573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242443 (A145324 (n + 1) + 1).toNat - A023443 (A208510 (n + 1)).toNat

end

end A344824.P4854659146826471573

/-! ## A344824.P2655430203595996644

`A080099(n)-A033999(A018008(n))`
-/

namespace A344824.P2655430203595996644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 n - A033999 (A018008 n).toNat

end

end A344824.P2655430203595996644

/-! ## A344824.P7058652430311390644

`A343863(n)-A087117(A156952(n))`
-/

namespace A344824.P7058652430311390644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343863 n - A087117 (A156952 n).toNat

end

end A344824.P7058652430311390644

/-! ## A344824.P11415630089902264930

`A194883(A259465(n))-A259475(n)`
-/

namespace A344824.P11415630089902264930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194883 (A259465 n).toNat - A259475 n

end

end A344824.P11415630089902264930

/-! ## A344824.P5532656931796669620

`A126572(n+1)-A001221(A022187(n))`
-/

namespace A344824.P5532656931796669620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126572 (n + 1) - A001221 (A022187 n).toNat

end

end A344824.P5532656931796669620

/-!
# A344825: Integers whose digit sum is prime and whose digit product is a perfect square > 0.

The programs for A344825, there is no canonical definition to state claims against.
-/

/-! ## A344825.P18175795070210998724

`∩[A028834(n+1), A050626(n+1)]`
-/

namespace A344825.P18175795070210998724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344825.P18175795070210998724

/-! ## A344825.P9959625988057951153

`∩[A050626(n+1), A129630(n+1)+1]`
-/

namespace A344825.P9959625988057951153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129630 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344825.P9959625988057951153

/-! ## A344825.P15603483856029250571

`∩[eq[2, A306509(n+1)]+1, A050626(n+1)]`
-/

namespace A344825.P15603483856029250571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A344825.P15603483856029250571

/-! ## A344825.P10128506469998639125

`∩[A050626(n+1), A020725(A129630(n+1))]`
-/

namespace A344825.P10128506469998639125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A129630 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344825.P10128506469998639125

/-!
# A344827: a(n) is the smallest b > 1 such that prime(n), prime(n+1) and prime(n+2) are all base-b Wieferich primes.

The programs for A344827, there is no canonical definition to state claims against.
-/

/-! ## A344827.P17740634733171852633

`A319060(∑[n+1])`
-/

namespace A344827.P17740634733171852633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319060 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344827.P17740634733171852633

/-! ## A344827.P17214867783541478341

`A286816(∑[n+3]+1)`
-/

namespace A344827.P17214867783541478341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A344827.P17214867783541478341

/-! ## A344827.P3055250481106125000

`or(char[5], A319060(A000217(n+1)))`
-/

namespace A344827.P3055250481106125000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319060 (A000217 (n + 1)).toNat)

end

end A344827.P3055250481106125000

/-! ## A344827.P10601569765952013205

`A319060(A000217(n+1))+A036597(n)`
-/

namespace A344827.P10601569765952013205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319060 (A000217 (n + 1)).toNat + A036597 n

end

end A344827.P10601569765952013205

/-!
# A344828: a(n) is the smallest b > 1 such that prime(n), prime(n+1), prime(n+2) and prime(n+3) are all base-b Wieferich primes.

The programs for A344828, there is no canonical definition to state claims against.
-/

/-! ## A344828.P7414595079106249923

`A319061(∑[n+1])`
-/

namespace A344828.P7414595079106249923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344828.P7414595079106249923

/-! ## A344828.P8898290283145438052

`A319061(Δ[A000292(n)])+char[8]`
-/

namespace A344828.P8898290283145438052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319061 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A344828.P8898290283145438052

/-! ## A344828.P17986482507581187343

`A319061(∑[A199343(n)])-char[8]`
-/

namespace A344828.P17986482507581187343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319061 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A344828.P17986482507581187343

/-! ## A344828.P6229393691111374248

`A326681(n)+A319061(Δ[A000292(n)])`
-/

namespace A344828.P6229393691111374248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A319061 (f1 (n + 1) - f1 n).toNat

end

end A344828.P6229393691111374248

/-!
# A344829: a(n) is the smallest b > 1 such that prime(n), prime(n+1), prime(n+2), prime(n+3) and prime(n+4) are all base-b Wieferich primes.

The programs for A344829, there is no canonical definition to state claims against.
-/

/-! ## A344829.P5255275245698953554

`A319062(∑[n+1])`
-/

namespace A344829.P5255275245698953554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319062 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344829.P5255275245698953554

/-!
# A344830: a(n) is the smallest b > 1 such that prime(n), prime(n+1), prime(n+2), prime(n+3), prime(n+4) and prime(n+5) are all base-b Wieferich primes.

The programs for A344830, there is no canonical definition to state claims against.
-/

/-! ## A344830.P10051595442170912015

`A319063(∑[n+1])`
-/

namespace A344830.P10051595442170912015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319063 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344830.P10051595442170912015

/-!
# A344831: a(n) is the smallest b > 1 such that prime(n), prime(n+1), prime(n+2), prime(n+3), prime(n+4), prime(n+5) and prime(n+6) are all base-b Wieferich primes.

The programs for A344831, there is no canonical definition to state claims against.
-/

/-! ## A344831.P8065838291547199654

`A319064(∑[n+1])`
-/

namespace A344831.P8065838291547199654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319064 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344831.P8065838291547199654

/-! ## A344831.P980708159365114097

`A026568(n+1)*A319064(A262544(n+1))`
-/

namespace A344831.P980708159365114097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026568 (n + 1) * A319064 (A262544 (n + 1)).toNat

end

end A344831.P980708159365114097

/-!
# A344832: a(n) is the smallest b > 1 such that prime(n), prime(n+1), prime(n+2), prime(n+3), prime(n+4), prime(n+5), prime(n+6) and prime(n+7) are all base-b Wieferich primes.

The programs for A344832, there is no canonical definition to state claims against.
-/

/-! ## A344832.P17085897198142634830

`A319065(∑[n+1])`
-/

namespace A344832.P17085897198142634830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344832.P17085897198142634830

/-! ## A344832.P11947873274184805859

`A319065(C(n+2, 2))*A362824(n)`
-/

namespace A344832.P11947873274184805859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319065 (Nat.choose (n + 2) 2) * A362824 n

end

end A344832.P11947873274184805859

/-!
# A344833: a(n) is the number of ways to write n as Sum_{k = 2..14} x_k^k with x_k > 0 for k = 2..14.

The programs for A344833, there is no canonical definition to state claims against.
-/

/-! ## A344833.P9605503859565335487

`A025466(record[A006530(n+2)²-A245562(3*(n+1))])`
-/

namespace A344833.P9605503859565335487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2 - A245562 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344833.P9605503859565335487

/-!
# A344834: Square array T(n, k), n, k >= 0, read by antidiagonals; T(n, k) = (n * 2^max(0, w(k)-w(n))) AND (k * 2^max(0, w(n)-w(k))) (where AND denotes the bitwise AND operator and w = A070939).

The programs for A344834, there is no canonical definition to state claims against.
-/

/-! ## A344834.P10882735609310691781

`A344835(n)-A344836(n)`
-/

namespace A344834.P10882735609310691781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344835 n - A344836 n

end

end A344834.P10882735609310691781

/-! ## A344834.P8586929050220252461

`and(A344837(n), A344838(n))`
-/

namespace A344834.P8586929050220252461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A344837 n) (A344838 n)

end

end A344834.P8586929050220252461

/-! ## A344834.P3296288182271980433

`A344837(n)+A344838(n)-A344835(n)`
-/

namespace A344834.P3296288182271980433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344837 n + (A344838 n - A344835 n)

end

end A344834.P3296288182271980433

/-! ## A344834.P10692352554783467045

`A344837(n)-and(A344836(n), A344837(n))`
-/

namespace A344834.P10692352554783467045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344837 n - Int.land (A344836 n) (A344837 n)

end

end A344834.P10692352554783467045

/-! ## A344834.P14568016864948889179

`A344838(n)-and(A344836(n), A344838(n))`
-/

namespace A344834.P14568016864948889179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 n - Int.land (A344836 n) (A344838 n)

end

end A344834.P14568016864948889179

/-! ## A344834.P2433719049907864238

`or(A003984(n), A344836(n))-A344836(n)`
-/

namespace A344834.P2433719049907864238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003984 n) (A344836 n) - A344836 n

end

end A344834.P2433719049907864238

/-! ## A344834.P17992697735909326065

`and(A075426(n), A344837(n))`
-/

namespace A344834.P17992697735909326065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075426 n) (A344837 n)

end

end A344834.P17992697735909326065

/-!
# A344835: Square array T(n, k), n, k >= 0, read by antidiagonals; T(n, k) = (n * 2^max(0, w(k)-w(n))) OR (k * 2^max(0, w(n)-w(k))) (where OR denotes the bitwise OR operator and w = A070939).

The programs for A344835, there is no canonical definition to state claims against.
-/

/-! ## A344835.P15206776676600168606

`A344836(n)+A344834(n)`
-/

namespace A344835.P15206776676600168606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344836 n + A344834 n

end

end A344835.P15206776676600168606

/-! ## A344835.P16608754804032882752

`or(A003984(n), A344836(n))`
-/

namespace A344835.P16608754804032882752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003984 n) (A344836 n)

end

end A344835.P16608754804032882752

/-! ## A344835.P3224483005925598950

`or(A344836(n), A344837(n))`
-/

namespace A344835.P3224483005925598950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A344836 n) (A344837 n)

end

end A344835.P3224483005925598950

/-! ## A344835.P8881488852582794833

`or(A344836(n), A344838(n))`
-/

namespace A344835.P8881488852582794833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A344836 n) (A344838 n)

end

end A344835.P8881488852582794833

/-! ## A344835.P7620094232609412790

`or(A344837(n), A344838(n))`
-/

namespace A344835.P7620094232609412790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A344837 n) (A344838 n)

end

end A344835.P7620094232609412790

/-! ## A344835.P14332803889580747797

`A344837(n)+A344838(n)-A344834(n)`
-/

namespace A344835.P14332803889580747797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344837 n + (A344838 n - A344834 n)

end

end A344835.P14332803889580747797

/-! ## A344835.P10131719097645323085

`A344836(n)+and(A344837(n), A344838(n))`
-/

namespace A344835.P10131719097645323085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344836 n + Int.land (A344837 n) (A344838 n)

end

end A344835.P10131719097645323085

/-!
# A344836: Square array T(n, k), n, k >= 0, read by antidiagonals; T(n, k) = (n * 2^max(0, w(k)-w(n))) XOR (k * 2^max(0, w(n)-w(k))) (where XOR denotes the bitwise XOR operator and w = A070939).

The programs for A344836, there is no canonical definition to state claims against.
-/

/-! ## A344836.P1669631652465294291

`A344835(n)-A344834(n)`
-/

namespace A344836.P1669631652465294291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344835 n - A344834 n

end

end A344836.P1669631652465294291

/-! ## A344836.P16378542194704927050

`xor(A344837(n), A344838(n))`
-/

namespace A344836.P16378542194704927050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344837 n) (A344838 n)

end

end A344836.P16378542194704927050

/-! ## A344836.P987133882304953904

`A344835(n)-and(A344837(n), A344838(n))`
-/

namespace A344836.P987133882304953904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344835 n - Int.land (A344837 n) (A344838 n)

end

end A344836.P987133882304953904

/-! ## A344836.P12295840476616942269

`or(A344837(n), A344838(n))-A344834(n)`
-/

namespace A344836.P12295840476616942269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A344837 n) (A344838 n) - A344834 n

end

end A344836.P12295840476616942269

/-! ## A344836.P45909781439307117

`xor(A344839(n)+A344837(n), A344837(n))`
-/

namespace A344836.P45909781439307117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344839 n + A344837 n) (A344837 n)

end

end A344836.P45909781439307117

/-! ## A344836.P16867903971505115712

`xor(A344838(n)-A344839(n), A344838(n))`
-/

namespace A344836.P16867903971505115712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344838 n - A344839 n) (A344838 n)

end

end A344836.P16867903971505115712

/-! ## A344836.P17051990307068095064

`xor(A344834(n)%A001399(n), A344835(n))`
-/

namespace A344836.P17051990307068095064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A344834 n) (A001399 n)) (A344835 n)

end

end A344836.P17051990307068095064

/-!
# A344837: Square array T(n, k), n, k >= 0, read by antidiagonals; T(n, k) = min(n * 2^max(0, w(k)-w(n)), k * 2^max(0, w(n)-w(k))) (where w = A070939).

The programs for A344837, there is no canonical definition to state claims against.
-/

/-! ## A344837.P5333035156924622754

`A344838(n)-A344839(n)`
-/

namespace A344837.P5333035156924622754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 n - A344839 n

end

end A344837.P5333035156924622754

/-! ## A344837.P13969827731544935057

`xor(A344836(n), A344838(n))`
-/

namespace A344837.P13969827731544935057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344836 n) (A344838 n)

end

end A344837.P13969827731544935057

/-! ## A344837.P347710683737899535

`A344834(n)+A344835(n)-A344838(n)`
-/

namespace A344837.P347710683737899535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344834 n + (A344835 n - A344838 n)

end

end A344837.P347710683737899535

/-! ## A344837.P17366970009099153279

`A344835(n)-and(A344836(n), A344838(n))`
-/

namespace A344837.P17366970009099153279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344835 n - Int.land (A344836 n) (A344838 n)

end

end A344837.P17366970009099153279

/-!
# A344838: Square array T(n, k), n, k >= 0, read by antidiagonals; T(n, k) = max(n * 2^max(0, w(k)-w(n)), k * 2^max(0, w(n)-w(k))) (where w = A070939).

The programs for A344838, there is no canonical definition to state claims against.
-/

/-! ## A344838.P16075290107378329491

`A344839(n)+A344837(n)`
-/

namespace A344838.P16075290107378329491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344839 n + A344837 n

end

end A344838.P16075290107378329491

/-! ## A344838.P5423165867050333974

`xor(A344836(n), A344837(n))`
-/

namespace A344838.P5423165867050333974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344836 n) (A344837 n)

end

end A344838.P5423165867050333974

/-! ## A344838.P12784307962654086247

`A344834(n)+A344835(n)-A344837(n)`
-/

namespace A344838.P12784307962654086247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344834 n + (A344835 n - A344837 n)

end

end A344838.P12784307962654086247

/-! ## A344838.P3295534353731772441

`A344835(n)-and(A344836(n), A344837(n))`
-/

namespace A344838.P3295534353731772441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344835 n - Int.land (A344836 n) (A344837 n)

end

end A344838.P3295534353731772441

/-! ## A344838.P12570267557630405385

`A344837(n)-(A000035(2*n)-A344839(n))`
-/

namespace A344838.P12570267557630405385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344837 n - (A000035 (2 * n) - A344839 n)

end

end A344838.P12570267557630405385

/-!
# A344839: Square array T(n, k), n, k >= 0, read by antidiagonals; T(n, k) = abs(n * 2^max(0, w(k)-w(n)) - k * 2^max(0, w(n)-w(k))) (where w = A070939).

The programs for A344839, there is no canonical definition to state claims against.
-/

/-! ## A344839.P17552398747353513738

`A344838(n)-A344837(n)`
-/

namespace A344839.P17552398747353513738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 n - A344837 n

end

end A344839.P17552398747353513738

/-! ## A344839.P7082545593729814668

`xor(A344836(n), A344837(n))-A344837(n)`
-/

namespace A344839.P7082545593729814668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A344836 n) (A344837 n) - A344837 n

end

end A344839.P7082545593729814668

/-! ## A344839.P18183556182899192712

`A344838(n)-xor(A344836(n), A344838(n))`
-/

namespace A344839.P18183556182899192712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 n - Int.xor (A344836 n) (A344838 n)

end

end A344839.P18183556182899192712

/-! ## A344839.P14903157910319248995

`A344834(n)+A344835(n)-A344837(n)-A344837(n)`
-/

namespace A344839.P14903157910319248995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344834 n + (A344835 n - A344837 n) - A344837 n

end

end A344839.P14903157910319248995

/-! ## A344839.P17953948142529170765

`A344838(n)-(A344834(n)+A344835(n)-A344838(n))`
-/

namespace A344839.P17953948142529170765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 n - (A344834 n + (A344835 n - A344838 n))

end

end A344839.P17953948142529170765

/-! ## A344839.P2124155611912935749

`A344836(n)%A048266(A341458(n+1))`
-/

namespace A344839.P2124155611912935749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344836 n) (A048266 (A341458 (n + 1)).toNat)

end

end A344839.P2124155611912935749

/-!
# A344840: a(0) = 1; a(n) = 5 * Sum_{k=1..n} binomial(n,k) * a(k-1).

The programs for A344840, there is no canonical definition to state claims against.
-/

/-! ## A344840.P1547714998014285645

`or(1, A001951(A166697(n)))`
-/

namespace A344840.P1547714998014285645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001951 (A166697 n).toNat)

end

end A344840.P1547714998014285645

/-!
# A344842: Numbers with digits in nondecreasing order whose digit sum is prime and whose digit product is a perfect square > 0.

The programs for A344842, there is no canonical definition to state claims against.
-/

/-! ## A344842.P4138908522392819985

`∩[A344825(n+1), A179239(n)]`
-/

namespace A344842.P4138908522392819985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344842.P4138908522392819985

/-! ## A344842.P6941939156665761852

`∩[A009994(n+1), A344825(n+1)]`
-/

namespace A344842.P6941939156665761852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344842.P6941939156665761852

/-! ## A344842.P2894027180002154968

`∩[A344825(n+1), A381509(n+1)]`
-/

namespace A344842.P2894027180002154968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344842.P2894027180002154968

/-! ## A344842.P4020194273408180720

`∩[A344825(n+1), A355222(a(n-1)+1)]` with `a(0)=1`
-/

namespace A344842.P4020194273408180720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A355222 (f2 (n - 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344842.P4020194273408180720

/-! ## A344842.P13191626280860673366

`record[A004185(A344825(n+1))]`
-/

namespace A344842.P13191626280860673366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A344825 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344842.P13191626280860673366

/-!
# A344843: The smallest of three consecutive integers that are products of three or more primes.

The programs for A344843, the canonical program `A344843.P4941616825028739545` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344843 has offset 1).

The definition of A344843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344843.P4941616825028739545

`∩[A357077(n+1)-1, A357077(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A344843

/-- `∩[A357077(n+1)-1, A357077(n+1)]` -/
def P4941616825028739545.Spec : Prop :=
  ∀ n, (P4941616825028739545.a n : ℤ) = A344843 (n + 1)

theorem P4941616825028739545.correct : P4941616825028739545.Spec := by
  intro n
  simp only [A344843, Nat.add_sub_cancel]

end A344843

/-! ## A344843.P13229882619640484044

`∩[A357077(n+1), A023443(A357077(n+1))]`
-/

namespace A344843.P13229882619640484044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A357077 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344843.P13229882619640484044

namespace A344843

/-- `∩[A357077(n+1), A023443(A357077(n+1))]` -/
def P13229882619640484044.Spec : Prop :=
  ∀ n, (P13229882619640484044.a n : ℤ) = A344843 (n + 1)

end A344843

/-! ## A344843.P9943123728886103801

`∩[A357077(n+2), A233583(A357077(n+2))]`
-/

namespace A344843.P9943123728886103801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A357077 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344843.P9943123728886103801

namespace A344843

/-- `∩[A357077(n+2), A233583(A357077(n+2))]` -/
def P9943123728886103801.Spec : Prop :=
  ∀ n, (P9943123728886103801.a n : ℤ) = A344843 (n + 1)

end A344843

/-!
# A344845: a(n)/2 is the smallest possible area of a non-obtuse triangle with integer coordinates in the plane and with shortest side of length sqrt(A001481(n+1)).

The programs for A344845, there is no canonical definition to state claims against.
-/

/-! ## A344845.P586537567339780913

`A056792(A026668(n)-A053735(n))`
-/

namespace A344845.P586537567339780913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 (A026668 n - A053735 n).toNat

end

end A344845.P586537567339780913

/-! ## A344845.P16800464201629232491

`A007094(n)+A000120(A074128(n+1))`
-/

namespace A344845.P16800464201629232491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 n + A000120 (A074128 (n + 1)).toNat

end

end A344845.P16800464201629232491

/-! ## A344845.P1346905708150545961

`A341462(n)+A001222(A001793(n+1))`
-/

namespace A344845.P1346905708150545961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341462 (n + 19) + A001222 (A001793 (n + 1)).toNat

end

end A344845.P1346905708150545961

/-!
# A344846: Sum of the prime numbers appearing along the border of an n X n square array whose elements are the numbers from 1..n^2, listed in increasing order by rows.

The programs for A344846, there is no canonical definition to state claims against.
-/

/-! ## A344846.P8062182744914451907

`A139562(n+1)-A344847(n+1)`
-/

namespace A344846.P8062182744914451907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139562 (n + 1) - A344847 (n + 1)

end

end A344846.P8062182744914451907

/-! ## A344846.P188246472275749199

`A034387((n+1)²)-A344847(n+1)`
-/

namespace A344846.P188246472275749199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 ((n + 1) ^ 2) - A344847 (n + 1)

end

end A344846.P188246472275749199

/-! ## A344846.P13701084090145396239

`A100352(A000125(n))-A277103(n)`
-/

namespace A344846.P13701084090145396239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100352 (A000125 n).toNat - A277103 n

end

end A344846.P13701084090145396239

/-!
# A344847: Sum of the prime numbers in, but not on the border of, an n X n square array whose elements are the numbers from 1..n^2, listed in increasing order by rows.

The programs for A344847, there is no canonical definition to state claims against.
-/

/-! ## A344847.P1756076620998434495

`A139562(n+1)-A344846(n+1)`
-/

namespace A344847.P1756076620998434495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139562 (n + 1) - A344846 (n + 1)

end

end A344847.P1756076620998434495

/-! ## A344847.P1089752017205730626

`A034387((n+1)²)-A344846(n+1)`
-/

namespace A344847.P1089752017205730626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 ((n + 1) ^ 2) - A344846 (n + 1)

end

end A344847.P1089752017205730626

/-! ## A344847.P8876542698327582462

`A007504(A000720((n+1)²))-A344846(n+1)`
-/

namespace A344847.P8876542698327582462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 ((n + 1) ^ 2)).toNat - A344846 (n + 1)

end

end A344847.P8876542698327582462

/-!
# A344848: Fixed points of A219360.

The programs for A344848, there is no canonical definition to state claims against.
-/

/-! ## A344848.P5920601191628399580

`eq[n+1, A219360(n+1)]+1`
-/

namespace A344848.P5920601191628399580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344848.P5920601191628399580

/-! ## A344848.P8232601811260730518

`eq[n, A219360(A028310(n))]`
-/

namespace A344848.P8232601811260730518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219360 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344848.P8232601811260730518

/-! ## A344848.P3678319083442820749

`eq[n, A219360(A065033(2*n))]`
-/

namespace A344848.P3678319083442820749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219360 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344848.P3678319083442820749

/-! ## A344848.P13031147745745925546

`eq[n, A219360(A123108(2*n))]`
-/

namespace A344848.P13031147745745925546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219360 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344848.P13031147745745925546

/-! ## A344848.P6880206381380340692

`eq[n, A219360(A004277(n)-n)]`
-/

namespace A344848.P6880206381380340692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219360 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344848.P6880206381380340692

/-! ## A344848.P1057320564278131968

`eq[n, A219360(A065033(n)+A004526(n))]`
-/

namespace A344848.P1057320564278131968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219360 (A065033 n + A004526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344848.P1057320564278131968

/-!
# A344849: a(n) is the numerator of Catalan-Daehee number d(n).

The programs for A344849, there is no canonical definition to state claims against.
-/

/-! ## A344849.P3424018008045641634

`A054345(or(1, n)^n)`
-/

namespace A344849.P3424018008045641634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054345 (Nat.lor 1 n ^ n)

end

end A344849.P3424018008045641634

/-!
# A344850: a(n) is the denominator of Catalan-Daehee number d(n).

The programs for A344850, there is no canonical definition to state claims against.
-/

/-! ## A344850.P16412482464818563001

`A000265(A344758(n+1))*A000265(A068550(n))`
-/

namespace A344850.P16412482464818563001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A344758 (n + 1)).toNat * A000265 (A068550 n).toNat

end

end A344850.P16412482464818563001

/-! ## A344850.P4400043215749903957

`A000265(A068550(n)*A344758(n+1))`
-/

namespace A344850.P4400043215749903957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A068550 n * A344758 (n + 1)).toNat

end

end A344850.P4400043215749903957

/-! ## A344850.P10287533160203891851

`A093803(A068550(n)*A344758(n+1))`
-/

namespace A344850.P10287533160203891851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A068550 n * A344758 (n + 1)).toNat

end

end A344850.P10287533160203891851

/-! ## A344850.P5048796833063026985

`A093803(lcm(A068550(n), A344758(n+1)))`
-/

namespace A344850.P5048796833063026985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (Int.lcm (A068550 n) (A344758 (n + 1)))

end

end A344850.P5048796833063026985

/-! ## A344850.P14024555038871128570

`A000265(A072486(n+1)/A209564(n+1))`
-/

namespace A344850.P14024555038871128570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A072486 (n + 1) : ℚ) / (A209564 (n + 1) : ℚ))).toNat

end

end A344850.P14024555038871128570

/-!
# A344851: a(n) = (n^2) mod (2^A070939(n)).

The programs for A344851, the canonical program `A344851.P15786609980723481136` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344851 has offset 0).

The definition of A344851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²%(2^A070939(n))` (program `A344851.P15786609980723481136`, by `A344851.P15786609980723481136.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344851.P15786609980723481136

`n²%(2^A070939(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344851

/-- `n²%(2^A070939(n))` -/
def P15786609980723481136.Spec : Prop :=
  ∀ n, P15786609980723481136.a n = A344851 n

theorem P15786609980723481136.correct : P15786609980723481136.Spec := by
  intro n
  simp only [A344851]

end A344851

/-! ## A344851.P11312663244002851960

`and(n², ∑[n*char[2^n]])`
-/

namespace A344851.P11312663244002851960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344851.P11312663244002851960

namespace A344851

/-- `and(n², ∑[n*char[2^n]])` -/
def P11312663244002851960.Spec : Prop :=
  ∀ n, (P11312663244002851960.a n : ℤ) = A344851 n

end A344851

/-! ## A344851.P13192580286303516000

`-(-n²%(2^ceil(log2(n+1))))`
-/

namespace A344851.P13192580286303516000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(n ^ 2 : ℤ)) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A344851.P13192580286303516000

namespace A344851

/-- `-(-n²%(2^ceil(log2(n+1))))` -/
def P13192580286303516000.Spec : Prop :=
  ∀ n, P13192580286303516000.a n = A344851 n

end A344851

/-! ## A344851.P10543586876527668593

`n²%A062383(n)`
-/

namespace A344851.P10543586876527668593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A062383 n)

end

end A344851.P10543586876527668593

namespace A344851

/-- `n²%A062383(n)` -/
def P10543586876527668593.Spec : Prop :=
  ∀ n, P10543586876527668593.a n = A344851 n

end A344851

/-! ## A344851.P10640722600951111173

`or(A003817(n), A334042(n))-A334042(n)`
-/

namespace A344851.P10640722600951111173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003817 n) (A334042 n) - A334042 n

end

end A344851.P10640722600951111173

namespace A344851

/-- `or(A003817(n), A334042(n))-A334042(n)` -/
def P10640722600951111173.Spec : Prop :=
  ∀ n, P10640722600951111173.a n = A344851 n

end A344851

/-!
# A344852: Number of rooted binary trees with n leaves with minimal Symmetry Nodes Index (SNI) or, equivalently, with the maximal number of symmetry nodes.

The programs for A344852, the canonical program `A344852.P14663846341276911988` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344852 has offset 1).

The definition of A344852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344852.P14663846341276911988

`A001147(n-∑[val(n+1, 2)])`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344852

/-- `A001147(n-∑[val(n+1, 2)])` -/
def P14663846341276911988.Spec : Prop :=
  ∀ n, P14663846341276911988.a n = A344852 (n + 1)

theorem P14663846341276911988.correct : P14663846341276911988.Spec := by
  intro n
  simp only [A344852, Nat.add_sub_cancel]

end A344852

/-! ## A344852.P13839683337947809382

`A001147(∑{e}[2*a(n-1)/and(n+1, -(n+1)), #])` with `a(0)=1`
-/

namespace A344852.P13839683337947809382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A344852.P13839683337947809382

namespace A344852

/-- `A001147(∑{e}[2*a(n-1)/and(n+1, -(n+1)), #])` -/
def P13839683337947809382.Spec : Prop :=
  ∀ n, P13839683337947809382.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P4198194014595927728

`A001147(A048881(n))`
-/

namespace A344852.P4198194014595927728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A048881 n).toNat

end

end A344852.P4198194014595927728

namespace A344852

/-- `A001147(A048881(n))` -/
def P4198194014595927728.Spec : Prop :=
  ∀ n, P4198194014595927728.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P7421096926865426155

`A001147(log2(A048896(n)))`
-/

namespace A344852.P7421096926865426155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (SequenceMachineLib.roundAway (Real.logb 2 (A048896 n : ℝ))).toNat

end

end A344852.P7421096926865426155

namespace A344852

/-- `A001147(log2(A048896(n)))` -/
def P7421096926865426155.Spec : Prop :=
  ∀ n, P7421096926865426155.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P14749329851250883480

`A001147(val(A048896(n), 2))`
-/

namespace A344852.P14749329851250883480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (SequenceMachineLib.valuation (A048896 n).toNat 2)

end

end A344852.P14749329851250883480

namespace A344852

/-- `A001147(val(A048896(n), 2))` -/
def P14749329851250883480.Spec : Prop :=
  ∀ n, P14749329851250883480.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P18303580881730302815

`A001147(∑{e}[A048896(n), #])`
-/

namespace A344852.P18303580881730302815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A344852.P18303580881730302815

namespace A344852

/-- `A001147(∑{e}[A048896(n), #])` -/
def P18303580881730302815.Spec : Prop :=
  ∀ n, P18303580881730302815.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P18344487135783219548

`A001147(A000120(n+1)-1)`
-/

namespace A344852.P18344487135783219548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A000120 (n + 1) - 1).toNat

end

end A344852.P18344487135783219548

namespace A344852

/-- `A001147(A000120(n+1)-1)` -/
def P18344487135783219548.Spec : Prop :=
  ∀ n, P18344487135783219548.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P5438496288963761714

`A001147(n-A011371(n+1))`
-/

namespace A344852.P5438496288963761714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 ((n : ℤ) - A011371 (n + 1)).toNat

end

end A344852.P5438496288963761714

namespace A344852

/-- `A001147(n-A011371(n+1))` -/
def P5438496288963761714.Spec : Prop :=
  ∀ n, P5438496288963761714.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P3378028503334392204

`A001147(A000120(and(n, n+1)))`
-/

namespace A344852.P3378028503334392204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A000120 (Nat.land n (n + 1))).toNat

end

end A344852.P3378028503334392204

namespace A344852

/-- `A001147(A000120(and(n, n+1)))` -/
def P3378028503334392204.Spec : Prop :=
  ∀ n, P3378028503334392204.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P172476820433910809

`A001147(2*n+1-A005187(n+1))`
-/

namespace A344852.P172476820433910809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 ((2 * n + 1 : ℤ) - A005187 (n + 1)).toNat

end

end A344852.P172476820433910809

namespace A344852

/-- `A001147(2*n+1-A005187(n+1))` -/
def P172476820433910809.Spec : Prop :=
  ∀ n, P172476820433910809.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P1212924171480994603

`A043302(A000217(A000120(n+1)))`
-/

namespace A344852.P1212924171480994603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043302 (A000217 (A000120 (n + 1)).toNat).toNat

end

end A344852.P1212924171480994603

namespace A344852

/-- `A043302(A000217(A000120(n+1)))` -/
def P1212924171480994603.Spec : Prop :=
  ∀ n, P1212924171480994603.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P1654341012669703377

`A124794(A147610(n+2))`
-/

namespace A344852.P1654341012669703377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A147610 (n + 2)).toNat

end

end A344852.P1654341012669703377

namespace A344852

/-- `A124794(A147610(n+2))` -/
def P1654341012669703377.Spec : Prop :=
  ∀ n, P1654341012669703377.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P15553183399818677362

`A001147(val(A001405(n), 2))`
-/

namespace A344852.P15553183399818677362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (SequenceMachineLib.valuation (A001405 n).toNat 2)

end

end A344852.P15553183399818677362

namespace A344852

/-- `A001147(val(A001405(n), 2))` -/
def P15553183399818677362.Spec : Prop :=
  ∀ n, P15553183399818677362.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P6619760903934287213

`A001147(val(C(n, floor(n/2)), 2))`
-/

namespace A344852.P6619760903934287213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (SequenceMachineLib.valuation (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat) 2)

end

end A344852.P6619760903934287213

namespace A344852

/-- `A001147(val(C(n, floor(n/2)), 2))` -/
def P6619760903934287213.Spec : Prop :=
  ∀ n, P6619760903934287213.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P13182875666637832092

`A001147(val(A000108(n), 2))`
-/

namespace A344852.P13182875666637832092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (SequenceMachineLib.valuation (A000108 n).toNat 2)

end

end A344852.P13182875666637832092

namespace A344852

/-- `A001147(val(A000108(n), 2))` -/
def P13182875666637832092.Spec : Prop :=
  ∀ n, P13182875666637832092.a n = A344852 (n + 1)

end A344852

/-! ## A344852.P8491049083761665052

`A001147(val(A001700(n), 2))`
-/

namespace A344852.P8491049083761665052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (SequenceMachineLib.valuation (A001700 n).toNat 2)

end

end A344852.P8491049083761665052

namespace A344852

/-- `A001147(val(A001700(n), 2))` -/
def P8491049083761665052.Spec : Prop :=
  ∀ n, P8491049083761665052.a n = A344852 (n + 1)

end A344852

/-!
# A344853: a(n) = n minus (sum of digits of n in base 3).

The programs for A344853, the canonical program `A344853.P1953230496886263085` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344853 has offset 0).

The definition of A344853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344853.P1953230496886263085

`2*A054861(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344853

/-- `2*A054861(n)` -/
def P1953230496886263085.Spec : Prop :=
  ∀ n, P1953230496886263085.a n = A344853 n

theorem P1953230496886263085.correct : P1953230496886263085.Spec := by
  intro n
  simp only [A344853]

end A344853

/-! ## A344853.P12366045689420657816

`n-A053735(n)`
-/

namespace A344853.P12366045689420657816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053735 n

end

end A344853.P12366045689420657816

namespace A344853

/-- `n-A053735(n)` -/
def P12366045689420657816.Spec : Prop :=
  ∀ n, P12366045689420657816.a n = A344853 n

theorem P12366045689420657816.correct : P12366045689420657816.Spec := by
  intro n
  simp only [A344853, Nat.add_sub_cancel, A344853.P12366045689420657816.a, A344853.P1953230496886263085.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344853

/-! ## A344853.P9242013719106097394

`2*A004128(floor(n/3))`
-/

namespace A344853.P9242013719106097394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004128 ⌊(n : ℚ) / 3⌋.toNat

end

end A344853.P9242013719106097394

namespace A344853

/-- `2*A004128(floor(n/3))` -/
def P9242013719106097394.Spec : Prop :=
  ∀ n, P9242013719106097394.a n = A344853 n

end A344853

/-! ## A344853.P12667246738799764805

`a(n-1)+val(n², 3)` with `a(0)=0`
-/

namespace A344853.P12667246738799764805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (n ^ 2) 3

end

end A344853.P12667246738799764805

namespace A344853

/-- `a(n-1)+val(n², 3)` -/
def P12667246738799764805.Spec : Prop :=
  ∀ n, (P12667246738799764805.a n : ℤ) = A344853 n

end A344853

/-! ## A344853.P1829819400563098495

`∑[val(n^(2%(n+1)), 3)]`
-/

namespace A344853.P1829819400563098495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ (2 % (n + 1))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344853.P1829819400563098495

namespace A344853

/-- `∑[val(n^(2%(n+1)), 3)]` -/
def P1829819400563098495.Spec : Prop :=
  ∀ n, (P1829819400563098495.a n : ℤ) = A344853 n

end A344853

/-! ## A344853.P14188683616954088589

`a(n-1)+2*val(n, 3)` with `a(0)=0`
-/

namespace A344853.P14188683616954088589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * SequenceMachineLib.valuation n 3

end

end A344853.P14188683616954088589

namespace A344853

/-- `a(n-1)+2*val(n, 3)` -/
def P14188683616954088589.Spec : Prop :=
  ∀ n, (P14188683616954088589.a n : ℤ) = A344853 n

end A344853

/-! ## A344853.P17686997804508290660

`2*(A004128(n)-n)`
-/

namespace A344853.P17686997804508290660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004128 n - (n : ℤ))

end

end A344853.P17686997804508290660

namespace A344853

/-- `2*(A004128(n)-n)` -/
def P17686997804508290660.Spec : Prop :=
  ∀ n, P17686997804508290660.a n = A344853 n

end A344853

/-! ## A344853.P4329400351024755520

`2*(n-A089792(n))`
-/

namespace A344853.P4329400351024755520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - A089792 n)

end

end A344853.P4329400351024755520

namespace A344853

/-- `2*(n-A089792(n))` -/
def P4329400351024755520.Spec : Prop :=
  ∀ n, P4329400351024755520.a n = A344853 n

theorem P4329400351024755520.correct : P4329400351024755520.Spec := by
  intro n
  simp only [A344853, Nat.add_sub_cancel, A344853.P4329400351024755520.a, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, A089792, A089792.P9464686631977204043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344853

/-! ## A344853.P11255504521099575764

`2*n-A230641(n)`
-/

namespace A344853.P11255504521099575764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A230641 n

end

end A344853.P11255504521099575764

namespace A344853

/-- `2*n-A230641(n)` -/
def P11255504521099575764.Spec : Prop :=
  ∀ n, P11255504521099575764.a n = A344853 n

theorem P11255504521099575764.correct : P11255504521099575764.Spec := by
  intro n
  simp only [A344853, Nat.add_sub_cancel, A344853.P11255504521099575764.a, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, A230641, A230641.P12572480448472300178.a, A053735, A053735.P3640341592284089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344853

/-! ## A344853.P1547240852884619552

`A346502(n)-2*n`
-/

namespace A344853.P1547240852884619552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 n - (2 * n : ℤ)

end

end A344853.P1547240852884619552

namespace A344853

/-- `A346502(n)-2*n` -/
def P1547240852884619552.Spec : Prop :=
  ∀ n, P1547240852884619552.a n = A344853 n

end A344853

/-! ## A344853.P6069863082020837325

`n-A365722(3*n)`
-/

namespace A344853.P6069863082020837325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A365722 (3 * n)

end

end A344853.P6069863082020837325

namespace A344853

/-- `n-A365722(3*n)` -/
def P6069863082020837325.Spec : Prop :=
  ∀ n, P6069863082020837325.a n = A344853 n

end A344853

/-! ## A344853.P1293918457631878786

`2*(comp[A096346(n)]-n)`
-/

namespace A344853.P1293918457631878786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096346 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A344853.P1293918457631878786

namespace A344853

/-- `2*(comp[A096346(n)]-n)` -/
def P1293918457631878786.Spec : Prop :=
  ∀ n, P1293918457631878786.a n = A344853 n

end A344853

/-! ## A344853.P6415638050488197809

`1-A173523(n+1)+n`
-/

namespace A344853.P6415638050488197809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A173523 (n + 1) + (n : ℤ)

end

end A344853.P6415638050488197809

namespace A344853

/-- `1-A173523(n+1)+n` -/
def P6415638050488197809.Spec : Prop :=
  ∀ n, P6415638050488197809.a n = A344853 n

theorem P6415638050488197809.correct : P6415638050488197809.Spec := by
  intro n
  simp only [A344853, Nat.add_sub_cancel, A344853.P6415638050488197809.a, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, A173523, A173523.P2383759421144788857.a, A053735, A053735.P3640341592284089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344853

/-! ## A344853.P7234388036428300464

`2*(A120514(n+1)-(n+1))`
-/

namespace A344853.P7234388036428300464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120514 (n + 1) - (n + 1 : ℤ))

end

end A344853.P7234388036428300464

namespace A344853

/-- `2*(A120514(n+1)-(n+1))` -/
def P7234388036428300464.Spec : Prop :=
  ∀ n, P7234388036428300464.a n = A344853 n

end A344853

/-! ## A344853.P17912701195541667093

`A005843(A054861(n))`
-/

namespace A344853.P17912701195541667093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A054861 n).toNat

end

end A344853.P17912701195541667093

namespace A344853

/-- `A005843(A054861(n))` -/
def P17912701195541667093.Spec : Prop :=
  ∀ n, P17912701195541667093.a n = A344853 n

end A344853

/-! ## A344853.P3802474483549975907

`A346502(A002264(n))`
-/

namespace A344853.P3802474483549975907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 (A002264 n).toNat

end

end A344853.P3802474483549975907

namespace A344853

/-- `A346502(A002264(n))` -/
def P3802474483549975907.Spec : Prop :=
  ∀ n, P3802474483549975907.a n = A344853 n

end A344853

/-! ## A344853.P11622924821697362682

`A180019(n)+A066568(n)`
-/

namespace A344853.P11622924821697362682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n + A066568 n

end

end A344853.P11622924821697362682

namespace A344853

/-- `A180019(n)+A066568(n)` -/
def P11622924821697362682.Spec : Prop :=
  ∀ n, P11622924821697362682.a n = A344853 n

theorem P11622924821697362682.correct : P11622924821697362682.Spec := by
  intro n
  simp only [A344853, Nat.add_sub_cancel, A344853.P11622924821697362682.a, A344853.P1953230496886263085.a, A054861, A054861.P6137810495506521191.a, A066568, A066568.P9469533663660008085.a, A180019, A180019.P15303784812221257268.a, A007953, A007953.P3472751987379697826.a, A053735, A053735.P3640341592284089632.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344853

/-! ## A344853.P10146174606884802031

`n-A003313(A006047(n))`
-/

namespace A344853.P10146174606884802031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003313 (A006047 n).toNat

end

end A344853.P10146174606884802031

namespace A344853

/-- `n-A003313(A006047(n))` -/
def P10146174606884802031.Spec : Prop :=
  ∀ n, P10146174606884802031.a n = A344853 n

end A344853

/-! ## A344853.P1895594796825218146

`A005843(A004128(n)-n)`
-/

namespace A344853.P1895594796825218146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A004128 n - (n : ℤ)).toNat

end

end A344853.P1895594796825218146

namespace A344853

/-- `A005843(A004128(n)-n)` -/
def P1895594796825218146.Spec : Prop :=
  ∀ n, P1895594796825218146.a n = A344853 n

end A344853

/-! ## A344853.P17708203887595691695

`A004128(n)-A089792(n)`
-/

namespace A344853.P17708203887595691695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n - A089792 n

end

end A344853.P17708203887595691695

namespace A344853

/-- `A004128(n)-A089792(n)` -/
def P17708203887595691695.Spec : Prop :=
  ∀ n, P17708203887595691695.a n = A344853 n

end A344853

/-!
# A344854: The number of equilateral triangles with vertices from the vertices of the n-dimensional hypercube.

The programs for A344854, there is no canonical definition to state claims against.
-/

/-! ## A344854.P8512063790038254197

`2^n*A344559(n)`
-/

namespace A344854.P8512063790038254197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A344559 n

end

end A344854.P8512063790038254197

/-! ## A344854.P14493845022376559350

`2^n*round(A344560(n)/6)`
-/

namespace A344854.P14493845022376559350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * SequenceMachineLib.roundAway ((A344560 n : ℚ) / 6)

end

end A344854.P14493845022376559350

/-! ## A344854.P9834707879765493873

`2*A011782(n)*A344559(n)`
-/

namespace A344854.P9834707879765493873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 n * A344559 n)

end

end A344854.P9834707879765493873

/-! ## A344854.P9133112545567055070

`round(A344560(n)/6)*A000079(n)`
-/

namespace A344854.P9133112545567055070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A344560 n : ℚ) / 6) * A000079 n

end

end A344854.P9133112545567055070

/-! ## A344854.P5513782458686588277

`round(A344560(n)/6)*Δ[A036563(n)]`
-/

namespace A344854.P5513782458686588277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A344560 n : ℚ) / 6) * (f1 (n + 1) - f1 n)

end

end A344854.P5513782458686588277

/-! ## A344854.P13226768625059117843

`A344559(n)+A000225(n)*A344559(n)`
-/

namespace A344854.P13226768625059117843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344559 n + A000225 n * A344559 n

end

end A344854.P13226768625059117843

/-!
# A344855: Number T(n,k) of permutations of [n] having k cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A344855, there is no canonical definition to state claims against.
-/

/-! ## A344855.P16777515007225159437

`A192002(A022166(n))+A097805(n)`
-/

namespace A344855.P16777515007225159437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A022166 n).toNat + A097805 n

end

end A344855.P16777515007225159437

/-! ## A344855.P16978952436077468872

`A151755(A143395(n))+A048993(n)`
-/

namespace A344855.P16978952436077468872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A143395 n).toNat + A048993 n

end

end A344855.P16978952436077468872

/-! ## A344855.P769895223007547502

`A192002(A058669(n))+A097805(n)`
-/

namespace A344855.P769895223007547502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A058669 n).toNat + A097805 n

end

end A344855.P769895223007547502

/-! ## A344855.P2001162352152351885

`A151755(A143395(n))+A151511(n)`
-/

namespace A344855.P2001162352152351885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A143395 n).toNat + A151511 n

end

end A344855.P2001162352152351885

/-! ## A344855.P8134434190156657555

`and(A065764(A358830(n)), A132393(n))`
-/

namespace A344855.P8134434190156657555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065764 (A358830 n).toNat) (A132393 n)

end

end A344855.P8134434190156657555

/-!
# A344856: Bitwise XOR of prime(n) and n^2.

The programs for A344856, the canonical program `A344856.P15428263594761140791` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344856 has offset 1).

The definition of A344856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344856.P15428263594761140791

`xor((n+1)², A000040(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A344856

/-- `xor((n+1)², A000040(n+1))` -/
def P15428263594761140791.Spec : Prop :=
  ∀ n, P15428263594761140791.a n = A344856 (n + 1)

theorem P15428263594761140791.correct : P15428263594761140791.Spec := by
  intro n
  simp only [A344856, Nat.add_sub_cancel]

end A344856

/-! ## A344856.P9435470683443335114

`xor((n+1)², Δ[A007504(n)])`
-/

namespace A344856.P9435470683443335114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A344856.P9435470683443335114

namespace A344856

/-- `xor((n+1)², Δ[A007504(n)])` -/
def P9435470683443335114.Spec : Prop :=
  ∀ n, P9435470683443335114.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P1389813965203254737

`xor((n+1)², sqrt(A001248(n+1)))`
-/

namespace A344856.P1389813965203254737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A344856.P1389813965203254737

namespace A344856

/-- `xor((n+1)², sqrt(A001248(n+1)))` -/
def P1389813965203254737.Spec : Prop :=
  ∀ n, P1389813965203254737.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P5342649856190349041

`xor((n+1)², ∑[A054541(n+1)])`
-/

namespace A344856.P5342649856190349041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344856.P5342649856190349041

namespace A344856

/-- `xor((n+1)², ∑[A054541(n+1)])` -/
def P5342649856190349041.Spec : Prop :=
  ∀ n, P5342649856190349041.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P10931917300660674049

`xor(A006093(n+1)+1, (n+1)²)`
-/

namespace A344856.P10931917300660674049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006093 (n + 1) + 1) ((n + 1) ^ 2 : ℤ)

end

end A344856.P10931917300660674049

namespace A344856

/-- `xor(A006093(n+1)+1, (n+1)²)` -/
def P10931917300660674049.Spec : Prop :=
  ∀ n, P10931917300660674049.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P15190454587605405284

`xor(A040976(n+1)+2, (n+1)²)`
-/

namespace A344856.P15190454587605405284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A040976 (n + 1) + 2) ((n + 1) ^ 2 : ℤ)

end

end A344856.P15190454587605405284

namespace A344856

/-- `xor(A040976(n+1)+2, (n+1)²)` -/
def P15190454587605405284.Spec : Prop :=
  ∀ n, P15190454587605405284.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P11317939564774696943

`xor(A001748(n+1)/3, (n+1)²)`
-/

namespace A344856.P11317939564774696943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) ((n + 1) ^ 2 : ℤ)

end

end A344856.P11317939564774696943

namespace A344856

/-- `xor(A001748(n+1)/3, (n+1)²)` -/
def P11317939564774696943.Spec : Prop :=
  ∀ n, P11317939564774696943.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P10710780141632024481

`xor(A000040(n+1), A000290(n+1))`
-/

namespace A344856.P10710780141632024481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A000290 (n + 1))

end

end A344856.P10710780141632024481

namespace A344856

/-- `xor(A000040(n+1), A000290(n+1))` -/
def P10710780141632024481.Spec : Prop :=
  ∀ n, P10710780141632024481.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P1281637951325998145

`xor(sqrt(A001248(n+1)), A000290(n+1))`
-/

namespace A344856.P1281637951325998145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (A000290 (n + 1))

end

end A344856.P1281637951325998145

namespace A344856

/-- `xor(sqrt(A001248(n+1)), A000290(n+1))` -/
def P1281637951325998145.Spec : Prop :=
  ∀ n, P1281637951325998145.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P14104907276307254304

`xor(A008864(n+1)-1, ∑[A005408(n)])`
-/

namespace A344856.P14104907276307254304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008864 (n + 1) - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344856.P14104907276307254304

namespace A344856

/-- `xor(A008864(n+1)-1, ∑[A005408(n)])` -/
def P14104907276307254304.Spec : Prop :=
  ∀ n, P14104907276307254304.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P14155341363619284913

`xor(A086801(n+1)+3, ∑[A005408(n)])`
-/

namespace A344856.P14155341363619284913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086801 (n + 1) + 3) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344856.P14155341363619284913

namespace A344856

/-- `xor(A086801(n+1)+3, ∑[A005408(n)])` -/
def P14155341363619284913.Spec : Prop :=
  ∀ n, P14155341363619284913.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P6300640944998586219

`xor((n+1)², A008578(n+2))`
-/

namespace A344856.P6300640944998586219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (A008578 (n + 2))

end

end A344856.P6300640944998586219

namespace A344856

/-- `xor((n+1)², A008578(n+2))` -/
def P6300640944998586219.Spec : Prop :=
  ∀ n, P6300640944998586219.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P1722012509362684986

`xor(A000040(n+1), record[A002061(n)-n])`
-/

namespace A344856.P1722012509362684986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A344856.P1722012509362684986

namespace A344856

/-- `xor(A000040(n+1), record[A002061(n)-n])` -/
def P1722012509362684986.Spec : Prop :=
  ∀ n, P1722012509362684986.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P3613606332528200511

`xor((n+1)², record[A006530(n+2)])`
-/

namespace A344856.P3613606332528200511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A344856.P3613606332528200511

namespace A344856

/-- `xor((n+1)², record[A006530(n+2)])` -/
def P3613606332528200511.Spec : Prop :=
  ∀ n, P3613606332528200511.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P4833778521789976143

`xor((n+1)², record[A020639(n+2)])`
-/

namespace A344856.P4833778521789976143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A344856.P4833778521789976143

namespace A344856

/-- `xor((n+1)², record[A020639(n+2)])` -/
def P4833778521789976143.Spec : Prop :=
  ∀ n, P4833778521789976143.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P4287098155386231302

`xor((n+1)², A082500(2*(n+1)))`
-/

namespace A344856.P4287098155386231302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (A082500 (2 * (n + 1)))

end

end A344856.P4287098155386231302

namespace A344856

/-- `xor((n+1)², A082500(2*(n+1)))` -/
def P4287098155386231302.Spec : Prop :=
  ∀ n, P4287098155386231302.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P13694679300185480240

`xor(A000040(n+1), A051494(2*n))`
-/

namespace A344856.P13694679300185480240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A051494 (2 * n))

end

end A344856.P13694679300185480240

namespace A344856

/-- `xor(A000040(n+1), A051494(2*n))` -/
def P13694679300185480240.Spec : Prop :=
  ∀ n, P13694679300185480240.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P9046902483058003527

`xor(A000040(n+1), A079097(2*n+1))`
-/

namespace A344856.P9046902483058003527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A079097 (2 * n + 1))

end

end A344856.P9046902483058003527

namespace A344856

/-- `xor(A000040(n+1), A079097(2*n+1))` -/
def P9046902483058003527.Spec : Prop :=
  ∀ n, P9046902483058003527.a n = A344856 (n + 1)

end A344856

/-! ## A344856.P9868065855838747252

`xor(A000040(n+1), A087811(2*n+1))`
-/

namespace A344856.P9868065855838747252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A087811 (2 * n + 1))

end

end A344856.P9868065855838747252

namespace A344856

/-- `xor(A000040(n+1), A087811(2*n+1))` -/
def P9868065855838747252.Spec : Prop :=
  ∀ n, P9868065855838747252.a n = A344856 (n + 1)

end A344856

/-!
# A344857: Number of polygons formed when every pair of vertices of a regular n-gon are joined by an infinite line.

The programs for A344857, there is no canonical definition to state claims against.
-/

/-! ## A344857.P15543344166473133811

`A344311(n+1)+A007678(n+1)`
-/

namespace A344857.P15543344166473133811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344311 (n + 1) + A007678 (n + 1)

end

end A344857.P15543344166473133811

/-! ## A344857.P8351581829432923765

`A006533(n+1)+A344311(n+1)-(n+1)`
-/

namespace A344857.P8351581829432923765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006533 (n + 1) + (A344311 (n + 1) - (n + 1 : ℤ))

end

end A344857.P8351581829432923765

/-! ## A344857.P14202785551665518721

`A001478(n+1)+A344311(n+1)+A006533(n+1)`
-/

namespace A344857.P14202785551665518721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A344311 (n + 1) + A006533 (n + 1))

end

end A344857.P14202785551665518721

/-! ## A344857.P9927351170559955319

`A344311(n+1)+A024000(n+2)+A006533(n+1)`
-/

namespace A344857.P9927351170559955319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344311 (n + 1) + (A024000 (n + 2) + A006533 (n + 1))

end

end A344857.P9927351170559955319

/-! ## A344857.P9684076558977830122

`A344311(n+1)+A135565(n+1)+1-A007569(n+1)`
-/

namespace A344857.P9684076558977830122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344311 (n + 1) + (A135565 (n + 1) + (1 - A007569 (n + 1)))

end

end A344857.P9684076558977830122

/-!
# A344858: a(n) = floor(exp(cos(n))).

The programs for A344858, the canonical program `A344858.P3093741757110812585` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344858 has offset 0).

The definition of A344858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(exp(cos(n)))` (program `A344858.P3093741757110812585`, by `A344858.P3093741757110812585.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A344858.P3093741757110812585

`floor(exp(cos(n)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A344858

/-- `floor(exp(cos(n)))` -/
def P3093741757110812585.Spec : Prop :=
  ∀ n, P3093741757110812585.a n = A344858 n

theorem P3093741757110812585.correct : P3093741757110812585.Spec := by
  intro n
  simp only [A344858]

end A344858

/-! ## A344858.P6805406981428031210

`ceil(exp(cos(n)))-1`
-/

namespace A344858.P6805406981428031210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (Real.cos (n : ℝ))⌉ - 1

end

end A344858.P6805406981428031210

namespace A344858

/-- `ceil(exp(cos(n)))-1` -/
def P6805406981428031210.Spec : Prop :=
  ∀ n, P6805406981428031210.a n = A344858 n

end A344858

/-! ## A344858.P815529892229810173

`5%ceil(exp(cos(n)))`
-/

namespace A344858.P815529892229810173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 ⌈Real.exp (Real.cos (n : ℝ))⌉

end

end A344858.P815529892229810173

namespace A344858

/-- `5%ceil(exp(cos(n)))` -/
def P815529892229810173.Spec : Prop :=
  ∀ n, P815529892229810173.a n = A344858 n

end A344858

/-! ## A344858.P9634755946494727436

`ceil(log(ceil(exp(cos(n)))))`
-/

namespace A344858.P9634755946494727436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (⌈Real.exp (Real.cos (n : ℝ))⌉ : ℝ)⌉

end

end A344858.P9634755946494727436

namespace A344858

/-- `ceil(log(ceil(exp(cos(n)))))` -/
def P9634755946494727436.Spec : Prop :=
  ∀ n, P9634755946494727436.a n = A344858 n

end A344858

/-! ## A344858.P16958099633111751308

`ceil(log2(ceil(exp(cos(n)))))`
-/

namespace A344858.P16958099633111751308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (⌈Real.exp (Real.cos (n : ℝ))⌉ : ℝ)⌉

end

end A344858.P16958099633111751308

namespace A344858

/-- `ceil(log2(ceil(exp(cos(n)))))` -/
def P16958099633111751308.Spec : Prop :=
  ∀ n, P16958099633111751308.a n = A344858 n

end A344858

/-!
# A344862: Numbers that are the sum of three fourth powers in ten or more ways.

The programs for A344862, there is no canonical definition to state claims against.
-/

/-! ## A344862.P18414587011105440790

`A344750(A304412(n+1))`
-/

namespace A344862.P18414587011105440790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344750 (A304412 (n + 1)).toNat

end

end A344862.P18414587011105440790

/-!
# A344863: a(n) = mu(sigma(n)).

The programs for A344863, the canonical program `A344863.P2685613827155361813` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344863 has offset 1).

The definition of A344863 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344863.P2685613827155361813

`A008683(A000203(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A344863

/-- `A008683(A000203(n+1))` -/
def P2685613827155361813.Spec : Prop :=
  ∀ n, P2685613827155361813.a n = A344863 (n + 1)

theorem P2685613827155361813.correct : P2685613827155361813.Spec := by
  intro n
  simp only [A344863, Nat.add_sub_cancel]

end A344863

/-! ## A344863.P2325500648869481461

`A008683(∑{d}[n+1, #])`
-/

namespace A344863.P2325500648869481461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A344863.P2325500648869481461

namespace A344863

/-- `A008683(∑{d}[n+1, #])` -/
def P2325500648869481461.Spec : Prop :=
  ∀ n, P2325500648869481461.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P15100870562068189880

`A008683(∑{d}[xor(n, -1), #])^3`
-/

namespace A344863.P15100870562068189880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 3

end

end A344863.P15100870562068189880

namespace A344863

/-- `A008683(∑{d}[xor(n, -1), #])^3` -/
def P15100870562068189880.Spec : Prop :=
  ∀ n, P15100870562068189880.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P2209032923049247590

`A008683(∑{d}[2*n-(n-1), #])^3`
-/

namespace A344863.P2209032923049247590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 3

end

end A344863.P2209032923049247590

namespace A344863

/-- `A008683(∑{d}[2*n-(n-1), #])^3` -/
def P2209032923049247590.Spec : Prop :=
  ∀ n, P2209032923049247590.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P9055706691993156683

`A008683(Δ[A160664(n)])`
-/

namespace A344863.P9055706691993156683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A344863.P9055706691993156683

namespace A344863

/-- `A008683(Δ[A160664(n)])` -/
def P9055706691993156683.Spec : Prop :=
  ∀ n, P9055706691993156683.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P673593171330879618

`A008683(A276528(n+1))`
-/

namespace A344863.P673593171330879618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A276528 (n + 1)).toNat

end

end A344863.P673593171330879618

namespace A344863

/-- `A008683(A276528(n+1))` -/
def P673593171330879618.Spec : Prop :=
  ∀ n, P673593171330879618.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P13899591546676891504

`A008683(A245092(Δ[n²]))`
-/

namespace A344863.P13899591546676891504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A344863.P13899591546676891504

namespace A344863

/-- `A008683(A245092(Δ[n²]))` -/
def P13899591546676891504.Spec : Prop :=
  ∀ n, P13899591546676891504.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P16732164393972217011

`A008683(abs(A143348(n+1)))`
-/

namespace A344863.P16732164393972217011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 |A143348 (n + 1)|.toNat

end

end A344863.P16732164393972217011

namespace A344863

/-- `A008683(abs(A143348(n+1)))` -/
def P16732164393972217011.Spec : Prop :=
  ∀ n, P16732164393972217011.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P11133139603075516639

`A008683(sqrt(A072861(n+1)))`
-/

namespace A344863.P11133139603075516639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A344863.P11133139603075516639

namespace A344863

/-- `A008683(sqrt(A072861(n+1)))` -/
def P11133139603075516639.Spec : Prop :=
  ∀ n, P11133139603075516639.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P4277889713516795822

`A008683(∑[A340793(n+1)])`
-/

namespace A344863.P4277889713516795822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344863.P4277889713516795822

namespace A344863

/-- `A008683(∑[A340793(n+1)])` -/
def P4277889713516795822.Spec : Prop :=
  ∀ n, P4277889713516795822.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P2825691725901194249

`A008683(A039653(n+1)+1)`
-/

namespace A344863.P2825691725901194249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A039653 (n + 1) + 1).toNat

end

end A344863.P2825691725901194249

namespace A344863

/-- `A008683(A039653(n+1)+1)` -/
def P2825691725901194249.Spec : Prop :=
  ∀ n, P2825691725901194249.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P3133865868717235084

`A008683(A272027(n+1)/3)`
-/

namespace A344863.P3133865868717235084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A272027 (n + 1) : ℚ) / 3)).toNat

end

end A344863.P3133865868717235084

namespace A344863

/-- `A008683(A272027(n+1)/3)` -/
def P3133865868717235084.Spec : Prop :=
  ∀ n, P3133865868717235084.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P17834819548625516813

`A008683(ceil(A002659(n+1)/2))`
-/

namespace A344863.P17834819548625516813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌈(A002659 (n + 1) : ℚ) / 2⌉.toNat

end

end A344863.P17834819548625516813

namespace A344863

/-- `A008683(ceil(A002659(n+1)/2))` -/
def P17834819548625516813.Spec : Prop :=
  ∀ n, P17834819548625516813.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P11653880844052407781

`A008683(A001065(n+1)+n+1)`
-/

namespace A344863.P11653880844052407781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A344863.P11653880844052407781

namespace A344863

/-- `A008683(A001065(n+1)+n+1)` -/
def P11653880844052407781.Spec : Prop :=
  ∀ n, P11653880844052407781.a n = A344863 (n + 1)

theorem P11653880844052407781.correct : P11653880844052407781.Spec := by
  intro n
  simp only [A344863, Nat.add_sub_cancel, A344863.P11653880844052407781.a, A344863.P2685613827155361813.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008683, A008683.P18254306604665478110.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344863

/-! ## A344863.P5777992815508714460

`A008683(A064987(n+1)/(n+1))`
-/

namespace A344863.P5777992815508714460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A344863.P5777992815508714460

namespace A344863

/-- `A008683(A064987(n+1)/(n+1))` -/
def P5777992815508714460.Spec : Prop :=
  ∀ n, P5777992815508714460.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P9452848116216669690

`A008683(A000203(-xor(n, -1)))^3`
-/

namespace A344863.P9452848116216669690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000203 (-Int.xor (n : ℤ) (-1)).toNat).toNat ^ 3

end

end A344863.P9452848116216669690

namespace A344863

/-- `A008683(A000203(-xor(n, -1)))^3` -/
def P9452848116216669690.Spec : Prop :=
  ∀ n, P9452848116216669690.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P11780003296808613076

`A008683(A000203(2*n-(n-1)))^3`
-/

namespace A344863.P11780003296808613076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat ^ 3

end

end A344863.P11780003296808613076

namespace A344863

/-- `A008683(A000203(2*n-(n-1)))^3` -/
def P11780003296808613076.Spec : Prop :=
  ∀ n, P11780003296808613076.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P12253348891922420976

`A008683(A000203(2*n-(n-1))-and(2, n²))`
-/

namespace A344863.P12253348891922420976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 2 (n ^ 2) : ℤ)).toNat

end

end A344863.P12253348891922420976

namespace A344863

/-- `A008683(A000203(2*n-(n-1))-and(2, n²))` -/
def P12253348891922420976.Spec : Prop :=
  ∀ n, P12253348891922420976.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P3597962650989659062

`A008683(gcd(n, n-1)*A000203(2*n-(n-1)))`
-/

namespace A344863.P3597962650989659062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((Int.gcd (n : ℤ) ((n : ℤ) - 1) : ℤ) * A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

end

end A344863.P3597962650989659062

namespace A344863

/-- `A008683(gcd(n, n-1)*A000203(2*n-(n-1)))` -/
def P3597962650989659062.Spec : Prop :=
  ∀ n, P3597962650989659062.a n = A344863 (n + 1)

end A344863

/-! ## A344863.P8839604031776925858

`A008683(A162296(n+1)+A048250(n+1))`
-/

namespace A344863.P8839604031776925858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A162296 (n + 1) + A048250 (n + 1)).toNat

end

end A344863.P8839604031776925858

namespace A344863

/-- `A008683(A162296(n+1)+A048250(n+1))` -/
def P8839604031776925858.Spec : Prop :=
  ∀ n, P8839604031776925858.a n = A344863 (n + 1)

end A344863

/-!
# A344864: a(n) = mu(d(n)).

The programs for A344864, the canonical program `A344864.P10480218057850576590` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344864 has offset 1).

The definition of A344864 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344864.P10480218057850576590

`A008683(A000005(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A344864

/-- `A008683(A000005(n+1))` -/
def P10480218057850576590.Spec : Prop :=
  ∀ n, P10480218057850576590.a n = A344864 (n + 1)

theorem P10480218057850576590.correct : P10480218057850576590.Spec := by
  intro n
  simp only [A344864, Nat.add_sub_cancel]

end A344864

/-! ## A344864.P18069345509961871238

`∏{e}[∏{e}[n+1, #+1], -floor(1/#)]`
-/

namespace A344864.P18069345509961871238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-⌊1 / (Nat.factorization (f1 n) p : ℚ)⌋)

end

end A344864.P18069345509961871238

namespace A344864

/-- `∏{e}[∏{e}[n+1, #+1], -floor(1/#)]` -/
def P18069345509961871238.Spec : Prop :=
  ∀ n, P18069345509961871238.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P11839263621761077272

`round(1/∏{e}[-∑{d}[n+1, n-lcm(#, n+1)], -#²])`
-/

namespace A344864.P11839263621761077272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f2 n), ((n : ℤ) - (Nat.lcm d (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p ^ 2 : ℤ)) : ℤ) : ℚ))

end

end A344864.P11839263621761077272

namespace A344864

/-- `round(1/∏{e}[-∑{d}[n+1, n-lcm(#, n+1)], -#²])` -/
def P11839263621761077272.Spec : Prop :=
  ∀ n, P11839263621761077272.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P1070335468944738302

`A008683(∏{e}[n+1, #+1])`
-/

namespace A344864.P1070335468944738302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A344864.P1070335468944738302

namespace A344864

/-- `A008683(∏{e}[n+1, #+1])` -/
def P1070335468944738302.Spec : Prop :=
  ∀ n, P1070335468944738302.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P3502863528063359673

`A008683(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A344864.P3502863528063359673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A344864.P3502863528063359673

namespace A344864

/-- `A008683(∑{d}[n+1, ceil(acot(#))])` -/
def P3502863528063359673.Spec : Prop :=
  ∀ n, P3502863528063359673.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P7500291177944914734

`A008683(∑{d}[n+1, ceil(1/#)])`
-/

namespace A344864.P7500291177944914734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉).toNat

end

end A344864.P7500291177944914734

namespace A344864

/-- `A008683(∑{d}[n+1, ceil(1/#)])` -/
def P7500291177944914734.Spec : Prop :=
  ∀ n, P7500291177944914734.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P4028309306156440749

`A008683(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A344864.P4028309306156440749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A344864.P4028309306156440749

namespace A344864

/-- `A008683(∑{d}[n+1, #+1]-∑{d}[n+1, #])` -/
def P4028309306156440749.Spec : Prop :=
  ∀ n, P4028309306156440749.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P13615354620804629952

`A008683(Δ[A006218(n)])`
-/

namespace A344864.P13615354620804629952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A344864.P13615354620804629952

namespace A344864

/-- `A008683(Δ[A006218(n)])` -/
def P13615354620804629952.Spec : Prop :=
  ∀ n, P13615354620804629952.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P3224210985436907684

`A008683(Δ[A054519(n)])`
-/

namespace A344864.P3224210985436907684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat

end

end A344864.P3224210985436907684

namespace A344864

/-- `A008683(Δ[A054519(n)])` -/
def P3224210985436907684.Spec : Prop :=
  ∀ n, P3224210985436907684.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P6517085208203064796

`A053864(A035116(n+1))`
-/

namespace A344864.P6517085208203064796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (A035116 (n + 1)).toNat

end

end A344864.P6517085208203064796

namespace A344864

/-- `A053864(A035116(n+1))` -/
def P6517085208203064796.Spec : Prop :=
  ∀ n, P6517085208203064796.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P17580835209110441872

`A130161(A066446(n+1))`
-/

namespace A344864.P17580835209110441872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130161 (A066446 (n + 1)).toNat

end

end A344864.P17580835209110441872

namespace A344864

/-- `A130161(A066446(n+1))` -/
def P17580835209110441872.Spec : Prop :=
  ∀ n, P17580835209110441872.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P18023211985698188511

`A054524(A184389(n+1))`
-/

namespace A344864.P18023211985698188511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (A184389 (n + 1)).toNat

end

end A344864.P18023211985698188511

namespace A344864

/-- `A054524(A184389(n+1))` -/
def P18023211985698188511.Spec : Prop :=
  ∀ n, P18023211985698188511.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P17855126335433880857

`A189021(A000005(n+1)²)`
-/

namespace A344864.P17855126335433880857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (A000005 (n + 1) ^ 2).toNat

end

end A344864.P17855126335433880857

namespace A344864

/-- `A189021(A000005(n+1)²)` -/
def P17855126335433880857.Spec : Prop :=
  ∀ n, P17855126335433880857.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P12173099734338368392

`A271102(A000005(n+1)²)`
-/

namespace A344864.P12173099734338368392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (A000005 (n + 1) ^ 2).toNat

end

end A344864.P12173099734338368392

namespace A344864

/-- `A271102(A000005(n+1)²)` -/
def P12173099734338368392.Spec : Prop :=
  ∀ n, P12173099734338368392.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P10131695219944127772

`A307445(A000005(n+1)²)`
-/

namespace A344864.P10131695219944127772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A000005 (n + 1) ^ 2).toNat

end

end A344864.P10131695219944127772

namespace A344864

/-- `A307445(A000005(n+1)²)` -/
def P10131695219944127772.Spec : Prop :=
  ∀ n, P10131695219944127772.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P16436088446088923187

`A369453(A000005(n+1)²)`
-/

namespace A344864.P16436088446088923187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369453 (A000005 (n + 1) ^ 2).toNat

end

end A344864.P16436088446088923187

namespace A344864

/-- `A369453(A000005(n+1)²)` -/
def P16436088446088923187.Spec : Prop :=
  ∀ n, P16436088446088923187.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P4043689603717936239

`A307445(A329484(n+1)²)`
-/

namespace A344864.P4043689603717936239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A329484 (n + 1) ^ 2).toNat

end

end A344864.P4043689603717936239

namespace A344864

/-- `A307445(A329484(n+1)²)` -/
def P4043689603717936239.Spec : Prop :=
  ∀ n, P4043689603717936239.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P9033776617162080778

`A008683(A032741(n+1)+1)`
-/

namespace A344864.P9033776617162080778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A032741 (n + 1) + 1).toNat

end

end A344864.P9033776617162080778

namespace A344864

/-- `A008683(A032741(n+1)+1)` -/
def P9033776617162080778.Spec : Prop :=
  ∀ n, P9033776617162080778.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P15955166659588859799

`A008683(A320111(2*(n+1)))`
-/

namespace A344864.P15955166659588859799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A320111 (2 * (n + 1))).toNat

end

end A344864.P15955166659588859799

namespace A344864

/-- `A008683(A320111(2*(n+1)))` -/
def P15955166659588859799.Spec : Prop :=
  ∀ n, P15955166659588859799.a n = A344864 (n + 1)

end A344864

/-! ## A344864.P12290371590414546986

`A369453((2-A378216(n+1))²)`
-/

namespace A344864.P12290371590414546986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369453 ((2 - A378216 (n + 1)) ^ 2).toNat

end

end A344864.P12290371590414546986

namespace A344864

/-- `A369453((2-A378216(n+1))²)` -/
def P12290371590414546986.Spec : Prop :=
  ∀ n, P12290371590414546986.a n = A344864 (n + 1)

end A344864

/-!
# A344865: a(n) is the largest k such that no subsequence of n numbers appears more than once in the sequence of the first k prime gaps while overlapping subsequences are allowed.

The programs for A344865, there is no canonical definition to state claims against.
-/

/-! ## A344865.P17391900429622724961

`A000720(A370517(n+1))+n`
-/

namespace A344865.P17391900429622724961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A370517 (n + 1)).toNat + (n : ℤ)

end

end A344865.P17391900429622724961

/-!
# A344866: Number of polygons formed when every pair of vertices of a regular (2n-1)-gon are joined by an infinite line.

The programs for A344866, the canonical program `A344866.P1105936836514059683` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344866 has offset 1).

The definition of A344866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344866.P1105936836514059683

`(n+1)*((n+1)*((n+1)*(2*(n+1)-11)+23)-21)+7`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A344866

/-- `(n+1)*((n+1)*((n+1)*(2*(n+1)-11)+23)-21)+7` -/
def P1105936836514059683.Spec : Prop :=
  ∀ n, P1105936836514059683.a n = A344866 (n + 1)

theorem P1105936836514059683.correct : P1105936836514059683.Spec := by
  intro n
  simp only [A344866, Nat.add_sub_cancel]

end A344866

/-! ## A344866.P868273858357740848

`n*(n^3+6*C(n, 3))`
-/

namespace A344866.P868273858357740848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 3 + 6 * Nat.choose n 3)

end

end A344866.P868273858357740848

namespace A344866

/-- `n*(n^3+6*C(n, 3))` -/
def P868273858357740848.Spec : Prop :=
  ∀ n, (P868273858357740848.a n : ℤ) = A344866 (n + 1)

theorem P868273858357740848.correct : P868273858357740848.Spec := by
  intro n
  simp only [A344866, Nat.add_sub_cancel, A344866.P868273858357740848.a, A344866.P1105936836514059683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A344866

/-! ## A344866.P9656645785918585375

`n²*∑[a(n-1)+4]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A344866.P9656645785918585375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344866.P9656645785918585375

namespace A344866

/-- `n²*∑[a(n-1)+4]` -/
def P9656645785918585375.Spec : Prop :=
  ∀ n, (P9656645785918585375.a n : ℤ) = A344866 (n + 1)

end A344866

/-! ## A344866.P13890943972586501400

`lcm(n, (2*(1-n)²+n)*n²)`
-/

namespace A344866.P13890943972586501400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((2 * (1 - (n : ℤ)) ^ 2 + (n : ℤ)) * (n ^ 2 : ℤ))

end

end A344866.P13890943972586501400

namespace A344866

/-- `lcm(n, (2*(1-n)²+n)*n²)` -/
def P13890943972586501400.Spec : Prop :=
  ∀ n, (P13890943972586501400.a n : ℤ) = A344866 (n + 1)

end A344866

/-! ## A344866.P1390507620556036559

`floor(n/acot(ceil(Δ[(1-n)^4/2])))`
-/

namespace A344866.P1390507620556036559
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 4 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (⌈f1 (n + 1) - f1 n⌉ : ℝ)⌋

end

end A344866.P1390507620556036559

namespace A344866

/-- `floor(n/acot(ceil(Δ[(1-n)^4/2])))` -/
def P1390507620556036559.Spec : Prop :=
  ∀ n, P1390507620556036559.a n = A344866 (n + 1)

end A344866

/-! ## A344866.P2144590938382391846

`round(n/acot(ceil(Δ[(1-n)^4/2])))`
-/

namespace A344866.P2144590938382391846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 4 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (⌈f1 (n + 1) - f1 n⌉ : ℝ))

end

end A344866.P2144590938382391846

namespace A344866

/-- `round(n/acot(ceil(Δ[(1-n)^4/2])))` -/
def P2144590938382391846.Spec : Prop :=
  ∀ n, P2144590938382391846.a n = A344866 (n + 1)

end A344866

/-! ## A344866.P12459639569911327709

`n*A212133(n)`
-/

namespace A344866.P12459639569911327709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212133 n

end

end A344866.P12459639569911327709

namespace A344866

/-- `n*A212133(n)` -/
def P12459639569911327709.Spec : Prop :=
  ∀ n, P12459639569911327709.a n = A344866 (n + 1)

theorem P12459639569911327709.correct : P12459639569911327709.Spec := by
  intro n
  simp only [A344866, Nat.add_sub_cancel, A344866.P12459639569911327709.a, A344866.P1105936836514059683.a, A212133, A212133.P14369258408973180320.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344866

/-! ## A344866.P16182943303003300605

`A344857(Δ[n²])`
-/

namespace A344866.P16182943303003300605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A344866.P16182943303003300605

namespace A344866

/-- `A344857(Δ[n²])` -/
def P16182943303003300605.Spec : Prop :=
  ∀ n, P16182943303003300605.a n = A344866 (n + 1)

end A344866

/-!
# A344867: a(n) = n * Sum_{d|n} floor(sqrt(d)) / d.

The programs for A344867, the canonical program `A344867.P17921001447351104586` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344867 has offset 1).

The definition of A344867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344867.P17921001447351104586

`∑{d}[n+1, (n+1)/#*floor(sqrt(#))]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A344867

/-- `∑{d}[n+1, (n+1)/#*floor(sqrt(#))]` -/
def P17921001447351104586.Spec : Prop :=
  ∀ n, P17921001447351104586.a n = (A344867 (n + 1) : ℚ)

end A344867

/-!
# A344868: Primes p that are equal to (prime(k)+2*prime(k+1)+3*prime(k+2))/2 for some k.

The programs for A344868, the canonical program `A344868.P11898745600634897145` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344868 has offset 1).

The definition of A344868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344868.P10950543996849573150

`p?[A052288(n+1)+A034961(n+2)]`
-/

namespace A344868.P10950543996849573150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (n + 1) + A034961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344868.P10950543996849573150

namespace A344868

/-- `p?[A052288(n+1)+A034961(n+2)]` -/
def P10950543996849573150.Spec : Prop :=
  ∀ n, P10950543996849573150.a n = A344868 (n + 1)

end A344868

/-! ## A344868.P2690540043384645406

`p?[A115061(n+2)+A034961(n+1)]`
-/

namespace A344868.P2690540043384645406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 2) + A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344868.P2690540043384645406

namespace A344868

/-- `p?[A115061(n+2)+A034961(n+1)]` -/
def P2690540043384645406.Spec : Prop :=
  ∀ n, P2690540043384645406.a n = A344868 (n + 1)

theorem P2690540043384645406.correct : P2690540043384645406.Spec := by
  intro n
  simp only [A344868, Nat.add_sub_cancel, A344868.P2690540043384645406.f1, A344868.P2690540043384645406.a, A344868.P11898745600634897145.f1, A344868.P11898745600634897145.a, A034961, A034961.P9480249767911558173.a, A115061, A115061.P11822645177236110390.a, A162345, A162345.P16599755805380939880.f1, A162345.P16599755805380939880.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A011974, A011974.P2665693327137284562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A344868

/-! ## A344868.P11898745600634897145

`p?[A162345(n+2)+A034961(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344868

/-- `p?[A162345(n+2)+A034961(n+1)]` -/
def P11898745600634897145.Spec : Prop :=
  ∀ n, P11898745600634897145.a n = A344868 (n + 1)

theorem P11898745600634897145.correct : P11898745600634897145.Spec := by
  intro n
  simp only [A344868, Nat.add_sub_cancel]

end A344868

/-! ## A344868.P1293438270932802837

`p?[A034961(n+1)+A006370(A031131(n+1))]`
-/

namespace A344868.P1293438270932802837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + A006370 (A031131 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344868.P1293438270932802837

namespace A344868

/-- `p?[A034961(n+1)+A006370(A031131(n+1))]` -/
def P1293438270932802837.Spec : Prop :=
  ∀ n, P1293438270932802837.a n = A344868 (n + 1)

end A344868

/-! ## A344868.P6136042291126404773

`p?[A073273(n+1)+A005408(A024675(n+1))]`
-/

namespace A344868.P6136042291126404773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1) + A005408 (A024675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344868.P6136042291126404773

namespace A344868

/-- `p?[A073273(n+1)+A005408(A024675(n+1))]` -/
def P6136042291126404773.Spec : Prop :=
  ∀ n, P6136042291126404773.a n = A344868 (n + 1)

end A344868

/-!
# A344871: a(n) is the least number that can be represented in exactly n ways as the sum of a prime and its digit reversal.

The programs for A344871, there is no canonical definition to state claims against.
-/

/-! ## A344871.P2630537887834633932

`A311643(A214205(2*n+1)+n%4)`
-/

namespace A344871.P2630537887834633932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311643 (A214205 (2 * n + 1) + ((n % 4 : ℕ) : ℤ)).toNat

end

end A344871.P2630537887834633932

/-!
# A344872: Semiprimes of the form 3m+2.

The programs for A344872, the canonical program `A344872.P10334638005095365363` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344872 has offset 1).

The definition of A344872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344872.P6372957529663985667

`3*(eq[2, A001222(3*n+2)]+1)-1`
-/

namespace A344872.P6372957529663985667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ) - 1

end

end A344872.P6372957529663985667

namespace A344872

/-- `3*(eq[2, A001222(3*n+2)]+1)-1` -/
def P6372957529663985667.Spec : Prop :=
  ∀ n, P6372957529663985667.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P10334638005095365363

`∩[3*n-1, A001358(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A344872

/-- `∩[3*n-1, A001358(n+1)]` -/
def P10334638005095365363.Spec : Prop :=
  ∀ n, (P10334638005095365363.a n : ℤ) = A344872 (n + 1)

theorem P10334638005095365363.correct : P10334638005095365363.Spec := by
  intro n
  simp only [A344872, Nat.add_sub_cancel]

end A344872

/-! ## A344872.P2549169938477090032

`∩[A001358(n+4), 3*n+2]`
-/

namespace A344872.P2549169938477090032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A344872.P2549169938477090032

namespace A344872

/-- `∩[A001358(n+4), 3*n+2]` -/
def P2549169938477090032.Spec : Prop :=
  ∀ n, (P2549169938477090032.a n : ℤ) = A344872 (n + 1)

end A344872

/-! ## A344872.P13613637326282928430

`filter[A369659(n+2), A064911(#)]`
-/

namespace A344872.P13613637326282928430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A344872.P13613637326282928430

namespace A344872

/-- `filter[A369659(n+2), A064911(#)]` -/
def P13613637326282928430.Spec : Prop :=
  ∀ n, P13613637326282928430.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P7210557544088592325

`filter[A369659(n+2), A101040(#)]`
-/

namespace A344872.P7210557544088592325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A344872.P7210557544088592325

namespace A344872

/-- `filter[A369659(n+2), A101040(#)]` -/
def P7210557544088592325.Spec : Prop :=
  ∀ n, P7210557544088592325.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P2572296059563728449

`filter[A369659(n+2), A280710(#)]`
-/

namespace A344872.P2572296059563728449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A344872.P2572296059563728449

namespace A344872

/-- `filter[A369659(n+2), A280710(#)]` -/
def P2572296059563728449.Spec : Prop :=
  ∀ n, P2572296059563728449.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P7101726019387340456

`filter[A369659(n+2), A353471(#)]`
-/

namespace A344872.P7101726019387340456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369659 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A344872.P7101726019387340456

namespace A344872

/-- `filter[A369659(n+2), A353471(#)]` -/
def P7101726019387340456.Spec : Prop :=
  ∀ n, P7101726019387340456.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P6482548244024105403

`filter[A369644(n+1), A064911(#)]`
-/

namespace A344872.P6482548244024105403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A344872.P6482548244024105403

namespace A344872

/-- `filter[A369644(n+1), A064911(#)]` -/
def P6482548244024105403.Spec : Prop :=
  ∀ n, P6482548244024105403.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P14813747180076195722

`filter[A369644(n+1), A101040(#)]`
-/

namespace A344872.P14813747180076195722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A344872.P14813747180076195722

namespace A344872

/-- `filter[A369644(n+1), A101040(#)]` -/
def P14813747180076195722.Spec : Prop :=
  ∀ n, P14813747180076195722.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P9825987386912945573

`filter[A369644(n+1), A280710(#)]`
-/

namespace A344872.P9825987386912945573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A344872.P9825987386912945573

namespace A344872

/-- `filter[A369644(n+1), A280710(#)]` -/
def P9825987386912945573.Spec : Prop :=
  ∀ n, P9825987386912945573.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P5621176742927449829

`filter[A369644(n+1), A353471(#)]`
-/

namespace A344872.P5621176742927449829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A344872.P5621176742927449829

namespace A344872

/-- `filter[A369644(n+1), A353471(#)]` -/
def P5621176742927449829.Spec : Prop :=
  ∀ n, P5621176742927449829.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P9079501471332387562

`filter[A006881(n+1), A359430(#)]`
-/

namespace A344872.P9079501471332387562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A344872.P9079501471332387562

namespace A344872

/-- `filter[A006881(n+1), A359430(#)]` -/
def P9079501471332387562.Spec : Prop :=
  ∀ n, P9079501471332387562.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P5992116663854282437

`filter[A006881(n+1), A369643(#)]`
-/

namespace A344872.P5992116663854282437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369643 (f1 j).toNat = 1) n)

end

end A344872.P5992116663854282437

namespace A344872

/-- `filter[A006881(n+1), A369643(#)]` -/
def P5992116663854282437.Spec : Prop :=
  ∀ n, P5992116663854282437.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P5160058239564527205

`filter[A006881(n+1), A369658(#)]`
-/

namespace A344872.P5160058239564527205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369658 (f1 j).toNat = 1) n)

end

end A344872.P5160058239564527205

namespace A344872

/-- `filter[A006881(n+1), A369658(#)]` -/
def P5160058239564527205.Spec : Prop :=
  ∀ n, P5160058239564527205.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P840966997881477300

`filter[A006881(n+1), A373371(#)]`
-/

namespace A344872.P840966997881477300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373371 (f1 j).toNat = 1) n)

end

end A344872.P840966997881477300

namespace A344872

/-- `filter[A006881(n+1), A373371(#)]` -/
def P840966997881477300.Spec : Prop :=
  ∀ n, P840966997881477300.a n = A344872 (n + 1)

end A344872

/-! ## A344872.P2523220800806530399

`filter[A006881(n+1), A373474(#)]`
-/

namespace A344872.P2523220800806530399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373474 (f1 j).toNat = 1) n)

end

end A344872.P2523220800806530399

namespace A344872

/-- `filter[A006881(n+1), A373474(#)]` -/
def P2523220800806530399.Spec : Prop :=
  ∀ n, P2523220800806530399.a n = A344872 (n + 1)

end A344872

/-!
# A344874: a(n) = A047994(n) - A011772(n).

The programs for A344874, there is no canonical definition to state claims against.
-/

/-! ## A344874.P11801934531280417744

`A047994(n+1)-A011772(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344874.P11801934531280417744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A011772 (n + 1)

end

end A344874.P11801934531280417744

/-! ## A344874.P12239082084865677067

`A344763(n+1)-A323410(n+1)`
-/

namespace A344874.P12239082084865677067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344763 (n + 1) - A323410 (n + 1)

end

end A344874.P12239082084865677067

/-! ## A344874.P12120470428530113425

`A047994(n+1)+A344763(n+1)-(n+1)`
-/

namespace A344874.P12120470428530113425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + (A344763 (n + 1) - (n + 1 : ℤ))

end

end A344874.P12120470428530113425

/-! ## A344874.P8964457618964070568

`A344005(n+1)+A346607(n+1)-A011772(n+1)`
-/

namespace A344874.P8964457618964070568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (n + 1) + (A346607 (n + 1) - A011772 (n + 1))

end

end A344874.P8964457618964070568

/-! ## A344874.P11870853131905635210

`A047994(n+1)+A344876(n+1)-A344875(n+1)`
-/

namespace A344874.P11870853131905635210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + (A344876 (n + 1) - A344875 (n + 1))

end

end A344874.P11870853131905635210

/-! ## A344874.P2482981068834789250

`A047994(n+1)-A344969(n+1)*A344970(n+1)`
-/

namespace A344874.P2482981068834789250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A344969 (n + 1) * A344970 (n + 1)

end

end A344874.P2482981068834789250

/-! ## A344874.P15797575453769450602

`A047994(n+1)-A344005(2*(n+1))`
-/

namespace A344874.P15797575453769450602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A344005 (2 * (n + 1))

end

end A344874.P15797575453769450602

/-!
# A344875: Multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e - 1 for odd primes p.

The programs for A344875, the canonical program `A344875.P1341474813427060519` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344875 has offset 1).

The definition of A344875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344875.P5816074328743888008

`A344878(n+1)*A344879(n+1)`
-/

namespace A344875.P5816074328743888008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) * A344879 (n + 1)

end

end A344875.P5816074328743888008

namespace A344875

/-- `A344878(n+1)*A344879(n+1)` -/
def P5816074328743888008.Spec : Prop :=
  ∀ n, P5816074328743888008.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P1341474813427060519

`2*(n+1)-A323410(2*(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A344875

/-- `2*(n+1)-A323410(2*(n+1))` -/
def P1341474813427060519.Spec : Prop :=
  ∀ n, P1341474813427060519.a n = A344875 (n + 1)

theorem P1341474813427060519.correct : P1341474813427060519.Spec := by
  intro n
  simp only [A344875, Nat.add_sub_cancel]

end A344875

/-! ## A344875.P7120164012796614383

`A344876(n+1)+A011772(n+1)`
-/

namespace A344875.P7120164012796614383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (n + 1) + A011772 (n + 1)

end

end A344875.P7120164012796614383

namespace A344875

/-- `A344876(n+1)+A011772(n+1)` -/
def P7120164012796614383.Spec : Prop :=
  ∀ n, P7120164012796614383.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P4894089829978884402

`A344969(n+1)*A344971(n+1)`
-/

namespace A344875.P4894089829978884402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344969 (n + 1) * A344971 (n + 1)

end

end A344875.P4894089829978884402

namespace A344875

/-- `A344969(n+1)*A344971(n+1)` -/
def P4894089829978884402.Spec : Prop :=
  ∀ n, P4894089829978884402.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P1525740975029652947

`A345947(n+1)*A345948(n+1)`
-/

namespace A344875.P1525740975029652947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345947 (n + 1) * A345948 (n + 1)

end

end A344875.P1525740975029652947

namespace A344875

/-- `A345947(n+1)*A345948(n+1)` -/
def P1525740975029652947.Spec : Prop :=
  ∀ n, P1525740975029652947.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P8405331245479806272

`A344878(n+1)*A345045(2*(n+1))`
-/

namespace A344875.P8405331245479806272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) * A345045 (2 * (n + 1))

end

end A344875.P8405331245479806272

namespace A344875

/-- `A344878(n+1)*A345045(2*(n+1))` -/
def P8405331245479806272.Spec : Prop :=
  ∀ n, P8405331245479806272.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P1731910351495949453

`A354985(2*(n+1))*A354986(2*(n+1))`
-/

namespace A344875.P1731910351495949453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (2 * (n + 1)) * A354986 (2 * (n + 1))

end

end A344875.P1731910351495949453

namespace A344875

/-- `A354985(2*(n+1))*A354986(2*(n+1))` -/
def P1731910351495949453.Spec : Prop :=
  ∀ n, P1731910351495949453.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P4575043724710258542

`∑{d}[n+1, A036987(#-1)*A384056((n+1)/#)]`
-/

namespace A344875.P4575043724710258542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A384056 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344875.P4575043724710258542

namespace A344875

/-- `∑{d}[n+1, A036987(#-1)*A384056((n+1)/#)]` -/
def P4575043724710258542.Spec : Prop :=
  ∀ n, P4575043724710258542.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P6915389940805811166

`A000203(n+1)+A344876(n+1)-A344765(n+1)`
-/

namespace A344875.P6915389940805811166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A344876 (n + 1) - A344765 (n + 1))

end

end A344875.P6915389940805811166

namespace A344875

/-- `A000203(n+1)+A344876(n+1)-A344765(n+1)` -/
def P6915389940805811166.Spec : Prop :=
  ∀ n, P6915389940805811166.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P17034592811348536521

`A344876(n+1)+A345065(n+1)-A345055(n+1)`
-/

namespace A344875.P17034592811348536521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (n + 1) + (A345065 (n + 1) - A345055 (n + 1))

end

end A344875.P17034592811348536521

namespace A344875

/-- `A344876(n+1)+A345065(n+1)-A345055(n+1)` -/
def P17034592811348536521.Spec : Prop :=
  ∀ n, P17034592811348536521.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P11773434034965733339

`A344876(n+1)+A344969(n+1)*A344970(n+1)`
-/

namespace A344875.P11773434034965733339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (n + 1) + A344969 (n + 1) * A344970 (n + 1)

end

end A344875.P11773434034965733339

namespace A344875

/-- `A344876(n+1)+A344969(n+1)*A344970(n+1)` -/
def P11773434034965733339.Spec : Prop :=
  ∀ n, P11773434034965733339.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P1448823539020732633

`A011772(n+1)/A344970(n+1)*A344971(n+1)`
-/

namespace A344875.P1448823539020732633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011772 (n + 1) : ℚ) / (A344970 (n + 1) : ℚ) * (A344971 (n + 1) : ℚ)

end

end A344875.P1448823539020732633

namespace A344875

/-- `A011772(n+1)/A344970(n+1)*A344971(n+1)` -/
def P1448823539020732633.Spec : Prop :=
  ∀ n, P1448823539020732633.a n = (A344875 (n + 1) : ℚ)

end A344875

/-! ## A344875.P10441550196746095897

`A344876(n+1)+A064987(n+1)/(n+1)-A344765(n+1)`
-/

namespace A344875.P10441550196746095897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344876 (n + 1) : ℚ) + ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A344765 (n + 1) : ℚ))

end

end A344875.P10441550196746095897

namespace A344875

/-- `A344876(n+1)+A064987(n+1)/(n+1)-A344765(n+1)` -/
def P10441550196746095897.Spec : Prop :=
  ∀ n, P10441550196746095897.a n = (A344875 (n + 1) : ℚ)

end A344875

/-! ## A344875.P16802557078381960107

`A000203(A006519(n+1))*A047994((n+1)/A006519(n+1))`
-/

namespace A344875.P16802557078381960107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006519 (n + 1)).toNat * A047994 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A344875.P16802557078381960107

namespace A344875

/-- `A000203(A006519(n+1))*A047994((n+1)/A006519(n+1))` -/
def P16802557078381960107.Spec : Prop :=
  ∀ n, P16802557078381960107.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P1990621190165373135

`A344879(n+1)*A345044(2*(n+1))`
-/

namespace A344875.P1990621190165373135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (n + 1) * A345044 (2 * (n + 1))

end

end A344875.P1990621190165373135

namespace A344875

/-- `A344879(n+1)*A345044(2*(n+1))` -/
def P1990621190165373135.Spec : Prop :=
  ∀ n, P1990621190165373135.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P9666049704520068818

`A323408(2*(n+1))-A323407(2*(n+1))`
-/

namespace A344875.P9666049704520068818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (2 * (n + 1)) - A323407 (2 * (n + 1))

end

end A344875.P9666049704520068818

namespace A344875

/-- `A323408(2*(n+1))-A323407(2*(n+1))` -/
def P9666049704520068818.Spec : Prop :=
  ∀ n, P9666049704520068818.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P12024761386756082602

`A345044(2*(n+1))*A345045(2*(n+1))`
-/

namespace A344875.P12024761386756082602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (2 * (n + 1)) * A345045 (2 * (n + 1))

end

end A344875.P12024761386756082602

namespace A344875

/-- `A345044(2*(n+1))*A345045(2*(n+1))` -/
def P12024761386756082602.Spec : Prop :=
  ∀ n, P12024761386756082602.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P13226510785139607319

`A345937(2*(n+1))*A345938(2*(n+1))`
-/

namespace A344875.P13226510785139607319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345937 (2 * (n + 1)) * A345938 (2 * (n + 1))

end

end A344875.P13226510785139607319

namespace A344875

/-- `A345937(2*(n+1))*A345938(2*(n+1))` -/
def P13226510785139607319.Spec : Prop :=
  ∀ n, P13226510785139607319.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P936100664651598806

`A173557(n+1)*A335341(2*(n+1))`
-/

namespace A344875.P936100664651598806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A335341 (2 * (n + 1))

end

end A344875.P936100664651598806

namespace A344875

/-- `A173557(n+1)*A335341(2*(n+1))` -/
def P936100664651598806.Spec : Prop :=
  ∀ n, P936100664651598806.a n = A344875 (n + 1)

end A344875

/-! ## A344875.P6231109109341960773

`A344874(2*(n+1))+A011772(2*(n+1))`
-/

namespace A344875.P6231109109341960773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344874 (2 * (n + 1)) + A011772 (2 * (n + 1))

end

end A344875.P6231109109341960773

namespace A344875

/-- `A344874(2*(n+1))+A011772(2*(n+1))` -/
def P6231109109341960773.Spec : Prop :=
  ∀ n, P6231109109341960773.a n = A344875 (n + 1)

end A344875

/-!
# A344876: a(n) = A344875(n) - A011772(n).

The programs for A344876, there is no canonical definition to state claims against.
-/

/-! ## A344876.P7001680723911326269

`A344875(n+1)-A011772(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344876.P7001680723911326269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) - A011772 (n + 1)

end

end A344876.P7001680723911326269

/-! ## A344876.P9669133163404643935

`A344765(n+1)+A344875(n+1)-A000203(n+1)`
-/

namespace A344876.P9669133163404643935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 1) + (A344875 (n + 1) - A000203 (n + 1))

end

end A344876.P9669133163404643935

/-! ## A344876.P674930648672589849

`A344874(n+1)+A344875(n+1)-A047994(n+1)`
-/

namespace A344876.P674930648672589849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344874 (n + 1) + (A344875 (n + 1) - A047994 (n + 1))

end

end A344876.P674930648672589849

/-! ## A344876.P16448458476381572653

`A344875(n+1)+A344976(n+1)-A344878(n+1)`
-/

namespace A344876.P16448458476381572653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) + (A344976 (n + 1) - A344878 (n + 1))

end

end A344876.P16448458476381572653

/-! ## A344876.P4149483593142559969

`A344875(n+1)+A345055(n+1)-A345065(n+1)`
-/

namespace A344876.P4149483593142559969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) + (A345055 (n + 1) - A345065 (n + 1))

end

end A344876.P4149483593142559969

/-! ## A344876.P10196114466678553972

`A344878(n+1)*A344879(n+1)-A011772(n+1)`
-/

namespace A344876.P10196114466678553972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) * A344879 (n + 1) - A011772 (n + 1)

end

end A344876.P10196114466678553972

/-! ## A344876.P13002394942444615715

`A344969(n+1)*A344971(n+1)-A011772(n+1)`
-/

namespace A344876.P13002394942444615715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344969 (n + 1) * A344971 (n + 1) - A011772 (n + 1)

end

end A344876.P13002394942444615715

/-! ## A344876.P9191123979808753175

`A344875(n+1)-A344969(n+1)*A344970(n+1)`
-/

namespace A344876.P9191123979808753175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) - A344969 (n + 1) * A344970 (n + 1)

end

end A344876.P9191123979808753175

/-! ## A344876.P15275233400551884712

`(A344971(n+1)-A344970(n+1))*A344969(n+1)`
-/

namespace A344876.P15275233400551884712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344971 (n + 1) - A344970 (n + 1)) * A344969 (n + 1)

end

end A344876.P15275233400551884712

/-! ## A344876.P602204799492134965

`A344875(n+1)-(A064987(n+1)/(n+1)-A344765(n+1))`
-/

namespace A344876.P602204799492134965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) - ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A344765 (n + 1) : ℚ))

end

end A344876.P602204799492134965

/-! ## A344876.P1698655330080448011

`(A354986(2*(n+1))-A354987(2*(n+1)))*A354985(2*(n+1))`
-/

namespace A344876.P1698655330080448011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354986 (2 * (n + 1)) - A354987 (2 * (n + 1))) * A354985 (2 * (n + 1))

end

end A344876.P1698655330080448011

/-! ## A344876.P6000301461641084638

`A346607(A022998(n+1))`
-/

namespace A344876.P6000301461641084638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (A022998 (n + 1)).toNat

end

end A344876.P6000301461641084638

/-! ## A344876.P372567106017214066

`A346607(A257088(n+1))`
-/

namespace A344876.P372567106017214066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (A257088 (n + 1)).toNat

end

end A344876.P372567106017214066

/-! ## A344876.P14443602036474768755

`A346607(2*(n+1))`
-/

namespace A344876.P14443602036474768755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346607 (2 * (n + 1))

end

end A344876.P14443602036474768755

/-! ## A344876.P4183702909939477205

`A047994(2*(n+1))-A011772(n+1)`
-/

namespace A344876.P4183702909939477205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (2 * (n + 1)) - A011772 (n + 1)

end

end A344876.P4183702909939477205

/-! ## A344876.P3704395676645805629

`A047994(2*(n+1))-A344005(2*(n+1))`
-/

namespace A344876.P3704395676645805629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (2 * (n + 1)) - A344005 (2 * (n + 1))

end

end A344876.P3704395676645805629

/-! ## A344876.P15389805191886296591

`A182665(2*(n+1))-A323410(2*(n+1))`
-/

namespace A344876.P15389805191886296591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (2 * (n + 1)) - A323410 (2 * (n + 1))

end

end A344876.P15389805191886296591

/-! ## A344876.P14740138041507599196

`A047994(2*(n+1))-A354985(2*(n+1))*A354987(2*(n+1))`
-/

namespace A344876.P14740138041507599196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (2 * (n + 1)) - A354985 (2 * (n + 1)) * A354987 (2 * (n + 1))

end

end A344876.P14740138041507599196

/-! ## A344876.P4076055404270518415

`A354985(2*(n+1))*A354986(2*(n+1))-A344005(2*(n+1))`
-/

namespace A344876.P4076055404270518415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (2 * (n + 1)) * A354986 (2 * (n + 1)) - A344005 (2 * (n + 1))

end

end A344876.P4076055404270518415

/-!
# A344877: a(n) = gcd(n, A344875(n)), where A344875 is multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e -1 for odd primes p.

The programs for A344877, the canonical program `A344877.P6074659472045598504` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344877 has offset 1).

The definition of A344877 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344875, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344877.P6074659472045598504

`gcd(n+1, A344875(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A344877

/-- `gcd(n+1, A344875(n+1))` -/
def P6074659472045598504.Spec : Prop :=
  ∀ n, (P6074659472045598504.a n : ℤ) = A344877 (n + 1)

theorem P6074659472045598504.correct : P6074659472045598504.Spec := by
  intro n
  simp only [A344877, Nat.add_sub_cancel]

end A344877

/-! ## A344877.P18285396319906832519

`gcd(A071262(n), A345948(n+1))`
-/

namespace A344877.P18285396319906832519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071262 n) (A345948 (n + 1))

end

end A344877.P18285396319906832519

namespace A344877

/-- `gcd(A071262(n), A345948(n+1))` -/
def P18285396319906832519.Spec : Prop :=
  ∀ n, (P18285396319906832519.a n : ℤ) = A344877 (n + 1)

end A344877

/-! ## A344877.P6982711869751363910

`n%A323409(2*(n+1))+1`
-/

namespace A344877.P6982711869751363910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A323409 (2 * (n + 1))) + 1

end

end A344877.P6982711869751363910

namespace A344877

/-- `n%A323409(2*(n+1))+1` -/
def P6982711869751363910.Spec : Prop :=
  ∀ n, P6982711869751363910.a n = A344877 (n + 1)

end A344877

/-! ## A344877.P8419189545335528126

`gcd(1-A000027(n+2), A345938(2*n+2))`
-/

namespace A344877.P8419189545335528126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000027 (n + 2)) (A345938 (2 * n + 2))

end

end A344877.P8419189545335528126

namespace A344877

/-- `gcd(1-A000027(n+2), A345938(2*n+2))` -/
def P8419189545335528126.Spec : Prop :=
  ∀ n, (P8419189545335528126.a n : ℤ) = A344877 (n + 1)

end A344877

/-! ## A344877.P14524145655544975343

`gcd(A000027(n+1), A345938(2*A000027(n+1)))`
-/

namespace A344877.P14524145655544975343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A345938 (2 * A000027 (n + 1)).toNat)

end

end A344877.P14524145655544975343

namespace A344877

/-- `gcd(A000027(n+1), A345938(2*A000027(n+1)))` -/
def P14524145655544975343.Spec : Prop :=
  ∀ n, (P14524145655544975343.a n : ℤ) = A344877 (n + 1)

end A344877

/-! ## A344877.P1692369430352542031

`gcd(A047994(2*(n+1)), A131738(n))`
-/

namespace A344877.P1692369430352542031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047994 (2 * (n + 1))) (A131738 n)

end

end A344877.P1692369430352542031

namespace A344877

/-- `gcd(A047994(2*(n+1)), A131738(n))` -/
def P1692369430352542031.Spec : Prop :=
  ∀ n, (P1692369430352542031.a n : ℤ) = A344877 (n + 1)

end A344877

/-! ## A344877.P14202857756791673315

`gcd(A028310(A047994(2*n+2)), A028310(n+1))`
-/

namespace A344877.P14202857756791673315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A047994 (2 * n + 2)).toNat) (A028310 (n + 1))

end

end A344877.P14202857756791673315

namespace A344877

/-- `gcd(A028310(A047994(2*n+2)), A028310(n+1))` -/
def P14202857756791673315.Spec : Prop :=
  ∀ n, (P14202857756791673315.a n : ℤ) = A344877 (n + 1)

end A344877

/-! ## A344877.P14236264011806754686

`gcd(A164020(2*n+1)/2, A323410(2*(n+1)))`
-/

namespace A344877.P14236264011806754686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A164020 (2 * n + 1) : ℚ) / 2)) (A323410 (2 * (n + 1)))

end

end A344877.P14236264011806754686

namespace A344877

/-- `gcd(A164020(2*n+1)/2, A323410(2*(n+1)))` -/
def P14236264011806754686.Spec : Prop :=
  ∀ n, (P14236264011806754686.a n : ℤ) = A344877 (n + 1)

end A344877

/-! ## A344877.P6438570576531949579

`gcd(A131209(n), A345938(2*(n+1)))`
-/

namespace A344877.P6438570576531949579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131209 n) (A345938 (2 * (n + 1)))

end

end A344877.P6438570576531949579

namespace A344877

/-- `gcd(A131209(n), A345938(2*(n+1)))` -/
def P6438570576531949579.Spec : Prop :=
  ∀ n, (P6438570576531949579.a n : ℤ) = A344877 (n + 1)

end A344877

/-!
# A344878: a(n) is the least common multiple of numbers (2^(1+e2))-1 and those in the set (p_i^e_i)-1, when the odd part of n = Product (p_i^e_i), and e2 is the 2-adic valuation of n.

The programs for A344878, there is no canonical definition to state claims against.
-/

/-! ## A344878.P16552915732101069162

`A344875(n+1)/A344879(n+1)`
-/

namespace A344878.P16552915732101069162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A344879 (n + 1) : ℚ)

end

end A344878.P16552915732101069162

/-! ## A344878.P18426075392200695855

`A344976(n+1)+A011772(n+1)`
-/

namespace A344878.P18426075392200695855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1) + A011772 (n + 1)

end

end A344878.P18426075392200695855

/-! ## A344878.P6248339543053750837

`A344875(n+1)/A345045(2*(n+1))`
-/

namespace A344878.P6248339543053750837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A345045 (2 * (n + 1)) : ℚ)

end

end A344878.P6248339543053750837

/-! ## A344878.P11559087822011894880

`A344976(n+1)+1-A344763(n+1)+n`
-/

namespace A344878.P11559087822011894880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1) + (1 - A344763 (n + 1) + (n : ℤ))

end

end A344878.P11559087822011894880

/-! ## A344878.P893705427449335223

`A047994(n+1)+A344976(n+1)-A344874(n+1)`
-/

namespace A344878.P893705427449335223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + (A344976 (n + 1) - A344874 (n + 1))

end

end A344878.P893705427449335223

/-! ## A344878.P17417131132621328314

`A344875(n+1)+A344976(n+1)-A344876(n+1)`
-/

namespace A344878.P17417131132621328314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344875 (n + 1) + (A344976 (n + 1) - A344876 (n + 1))

end

end A344878.P17417131132621328314

/-! ## A344878.P14136321797288257446

`A344976(n+1)+A345065(n+1)-A345055(n+1)`
-/

namespace A344878.P14136321797288257446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1) + (A345065 (n + 1) - A345055 (n + 1))

end

end A344878.P14136321797288257446

/-! ## A344878.P4687042940534786352

`(A344876(n+1)+A011772(n+1))/A344879(n+1)`
-/

namespace A344878.P4687042940534786352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344876 (n + 1) + A011772 (n + 1) : ℚ) / (A344879 (n + 1) : ℚ)

end

end A344878.P4687042940534786352

/-! ## A344878.P1932920902732908463

`A345044(A022998(n+1))`
-/

namespace A344878.P1932920902732908463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (A022998 (n + 1)).toNat

end

end A344878.P1932920902732908463

/-! ## A344878.P11363450344499587436

`A345044(A257088(n+1))`
-/

namespace A344878.P11363450344499587436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (A257088 (n + 1)).toNat

end

end A344878.P11363450344499587436

/-! ## A344878.P2289451042528228684

`A345044(2*(n+1))`
-/

namespace A344878.P2289451042528228684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (2 * (n + 1))

end

end A344878.P2289451042528228684

/-! ## A344878.P2400420323945848352

`A344976(n+1)+A344005(2*(n+1))`
-/

namespace A344878.P2400420323945848352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1) + A344005 (2 * (n + 1))

end

end A344878.P2400420323945848352

/-! ## A344878.P3627472549143450263

`A047994(2*(n+1))/A344879(n+1)`
-/

namespace A344878.P3627472549143450263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A344879 (n + 1) : ℚ)

end

end A344878.P3627472549143450263

/-! ## A344878.P12545341757595104682

`A047994(2*(n+1))/A345045(2*(n+1))`
-/

namespace A344878.P12545341757595104682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A345045 (2 * (n + 1)) : ℚ)

end

end A344878.P12545341757595104682

/-!
# A344879: a(n) = A344875(n) / A344878(n), where A344875(n) is multiplicative with a(2^e) = 2^(1+e) - 1, and a(p^e) = p^e -1 for odd primes p, and A344878(n) gives the least common multiple of the same factors.

The programs for A344879, there is no canonical definition to state claims against.
-/

/-! ## A344879.P665220243979498497

`A344875(n+1)/A344878(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344879.P665220243979498497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A344878 (n + 1) : ℚ)

end

end A344879.P665220243979498497

/-! ## A344879.P9100221669832320461

`A345045(2*(n+1))`
-/

namespace A344879.P9100221669832320461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345045 (2 * (n + 1))

end

end A344879.P9100221669832320461

/-! ## A344879.P11374904245330488409

`(A344876(n+1)+A011772(n+1))/A344878(n+1)`
-/

namespace A344879.P11374904245330488409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344876 (n + 1) + A011772 (n + 1) : ℚ) / (A344878 (n + 1) : ℚ)

end

end A344879.P11374904245330488409

/-! ## A344879.P7632787309571866971

`A344875(n+1)/(A344976(n+1)+A011772(n+1))`
-/

namespace A344879.P7632787309571866971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344875 (n + 1) : ℚ) / (A344976 (n + 1) + A011772 (n + 1) : ℚ)

end

end A344879.P7632787309571866971

/-! ## A344879.P9914281791657199720

`(A344876(n+1)+A344969(n+1)*A344970(n+1))/A344878(n+1)`
-/

namespace A344879.P9914281791657199720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344876 (n + 1) + A344969 (n + 1) * A344970 (n + 1) : ℚ) / (A344878 (n + 1) : ℚ)

end

end A344879.P9914281791657199720

/-! ## A344879.P1537938342279701990

`A047994(2*(n+1))/A344878(n+1)`
-/

namespace A344879.P1537938342279701990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A344878 (n + 1) : ℚ)

end

end A344879.P1537938342279701990

/-! ## A344879.P11163148548606872502

`A047994(2*(n+1))/A345044(2*(n+1))`
-/

namespace A344879.P11163148548606872502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (2 * (n + 1)) : ℚ) / (A345044 (2 * (n + 1)) : ℚ)

end

end A344879.P11163148548606872502

/-!
# A344880: a(n) = 1 if for all proper divisors d of n, A011772(d) < A011772(n), otherwise 0.

The programs for A344880, there is no canonical definition to state claims against.
-/

/-! ## A344880.P5907465672043165901

`floor(1/A344590(n+1))`
-/

namespace A344880.P5907465672043165901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A344590 (n + 1) : ℚ)⌋

end

end A344880.P5907465672043165901

/-! ## A344880.P2092644484158238286

`floor(1/A344759(n+1))`
-/

namespace A344880.P2092644484158238286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A344759 (n + 1) : ℚ)⌋

end

end A344880.P2092644484158238286

/-! ## A344880.P16201864204778549416

`char[A344758(n+1)-1]`
-/

namespace A344880.P16201864204778549416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344758 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A344880.P16201864204778549416

/-! ## A344880.P16714915491649356929

`A354993(A022998(n+1))`
-/

namespace A344880.P16714915491649356929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354993 (A022998 (n + 1)).toNat

end

end A344880.P16714915491649356929

/-! ## A344880.P7935752145804453115

`A063524(A344590(n+1))`
-/

namespace A344880.P7935752145804453115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A344590 (n + 1)).toNat

end

end A344880.P7935752145804453115

/-! ## A344880.P14033568017478931095

`A008683(A344590(n+1)²)`
-/

namespace A344880.P14033568017478931095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A344590 (n + 1) ^ 2).toNat

end

end A344880.P14033568017478931095

/-! ## A344880.P18150293289989696115

`A008683(A344759(n+1)²)`
-/

namespace A344880.P18150293289989696115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A344759 (n + 1) ^ 2).toNat

end

end A344880.P18150293289989696115

/-! ## A344880.P3676638190708344824

`A055672(2*A344590(n+1))`
-/

namespace A344880.P3676638190708344824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * A344590 (n + 1)).toNat

end

end A344880.P3676638190708344824

/-! ## A344880.P9100718574290999452

`∑{d}[A344590(n+1), A008683(#)]`
-/

namespace A344880.P9100718574290999452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A344880.P9100718574290999452

/-! ## A344880.P7139487744216441806

`∑{d}[A344759(n+1), A008683(#)]`
-/

namespace A344880.P7139487744216441806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A344880.P7139487744216441806

/-! ## A344880.P10520629013134486449

`1-A107078(A344590(n+1)²)`
-/

namespace A344880.P10520629013134486449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107078 (A344590 (n + 1) ^ 2).toNat

end

end A344880.P10520629013134486449

/-! ## A344880.P4492507555164645143

`A153639(n²%A344759(n+1))`
-/

namespace A344880.P4492507555164645143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153639 (Int.tmod (n ^ 2 : ℤ) (A344759 (n + 1))).toNat

end

end A344880.P4492507555164645143

/-! ## A344880.P961232263226241736

`A129065((n^6)%A344759(n+1))`
-/

namespace A344880.P961232263226241736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129065 (Int.tmod (n ^ 6 : ℤ) (A344759 (n + 1))).toNat

end

end A344880.P961232263226241736

/-! ## A344880.P9289896244193284360

`A008683(A344590(n+1)*A344590(n+1))`
-/

namespace A344880.P9289896244193284360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A344590 (n + 1) * A344590 (n + 1)).toNat

end

end A344880.P9289896244193284360

/-! ## A344880.P8133850709266706125

`A055672(A344590(n+1)+A344590(n+1)²)`
-/

namespace A344880.P8133850709266706125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (A344590 (n + 1) + A344590 (n + 1) ^ 2).toNat

end

end A344880.P8133850709266706125

/-! ## A344880.P4288708132013070411

`A345950(A344590(n+1)+A344590(n+1)²)`
-/

namespace A344880.P4288708132013070411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345950 (A344590 (n + 1) + A344590 (n + 1) ^ 2).toNat

end

end A344880.P4288708132013070411

/-! ## A344880.P6863925351924107542

`A354993(A257088(n+1))`
-/

namespace A344880.P6863925351924107542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354993 (A257088 (n + 1)).toNat

end

end A344880.P6863925351924107542

/-! ## A344880.P8143398320252411976

`and(1, A036262(A344590(n+1)²²))`
-/

namespace A344880.P8143398320252411976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A036262 ((A344590 (n + 1) ^ 2) ^ 2).toNat)

end

end A344880.P8143398320252411976

/-!
# A344881: Numbers such that A011772(k) > A011772(d) for all their proper divisors d.

The programs for A344881, there is no canonical definition to state claims against.
-/

/-! ## A344881.P6289739773120351672

`record[A344758(n+1)]`
-/

namespace A344881.P6289739773120351672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344881.P6289739773120351672

/-! ## A344881.P16586885220006767545

`eq[1, A344590(n+1)]+1`
-/

namespace A344881.P16586885220006767545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344881.P16586885220006767545

/-! ## A344881.P14073952446149788194

`eq[1, A344759(n+1)]+1`
-/

namespace A344881.P14073952446149788194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344881.P14073952446149788194

/-! ## A344881.P2136655385171317492

`lt[0, A344880(n+1)]+1`
-/

namespace A344881.P2136655385171317492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344881.P2136655385171317492

/-! ## A344881.P12179400575767902446

`comp[A344882(n+1)-1]+1`
-/

namespace A344881.P12179400575767902446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344882 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344881.P12179400575767902446

/-! ## A344881.P5820570892691166297

`eq[n, A344758(abs(1-n)+1)]`
-/

namespace A344881.P5820570892691166297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344758 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344881.P5820570892691166297

/-! ## A344881.P2465689010082817326

`∪[A000961(n+1), A344883(n+1)]`
-/

namespace A344881.P2465689010082817326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344881.P2465689010082817326

/-! ## A344881.P5988284660979904029

`∪[A036116(n+1), A344883(n+1)]`
-/

namespace A344881.P5988284660979904029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344881.P5988284660979904029

/-! ## A344881.P6727441607070013774

`∪[A056867(n+1), A344883(n+1)]`
-/

namespace A344881.P6727441607070013774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344881.P6727441607070013774

/-!
# A344882: Numbers k that have such a proper divisor d for which A011772(d) = A011772(k).

The programs for A344882, there is no canonical definition to state claims against.
-/

/-! ## A344882.P11496451821967464750

`comp[C(A344758(n+1), n)]`
-/

namespace A344882.P11496451821967464750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344758 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A344882.P11496451821967464750

/-! ## A344882.P14152251921259344996

`eq[0, A344880(n+1)]+1`
-/

namespace A344882.P14152251921259344996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344882.P14152251921259344996

/-! ## A344882.P7352384650510506046

`lt[1, A344590(n+1)]+1`
-/

namespace A344882.P7352384650510506046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344882.P7352384650510506046

/-! ## A344882.P14745788479128538188

`lt[1, A344759(n+1)]+1`
-/

namespace A344882.P14745788479128538188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344882.P14745788479128538188

/-! ## A344882.P10544511405522545218

`lt[A344880(n+3), 1]+3`
-/

namespace A344882.P10544511405522545218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A344882.P10544511405522545218

/-! ## A344882.P16377109536311285950

`eq[0, A344880(gcd(n, C(4, n)))]`
-/

namespace A344882.P16377109536311285950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (Nat.gcd n (Nat.choose 4 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344882.P16377109536311285950

/-! ## A344882.P12997098056094621433

`eq[0, A344880(A028310(n))]`
-/

namespace A344882.P12997098056094621433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344882.P12997098056094621433

/-! ## A344882.P11542495945276748580

`eq[1, A000010(a(A344759(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A344882.P11542495945276748580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000010 (f2 (A344759 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344882.P11542495945276748580

/-! ## A344882.P13727979170116584143

`eq[1, A000045(a(A344759(n)))]` with `a(0)=0, a(1)=3`
-/

namespace A344882.P13727979170116584143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000045 (f2 (A344759 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344882.P13727979170116584143

/-! ## A344882.P17263818400722213821

`eq[1, A014963(a(A344759(n)))!]` with `a(0)=0, a(1)=3`
-/

namespace A344882.P17263818400722213821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  Nat.factorial (A014963 (f2 (A344759 n).toNat)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344882.P17263818400722213821

/-!
# A344883: Numbers k, not a power of prime, such that for all their proper divisors d A011772(d) < A011772(k).

The programs for A344883, there is no canonical definition to state claims against.
-/

/-! ## A344883.P3388805781855058524

`filter[A024619(n+1), A344880(#)]`
-/

namespace A344883.P3388805781855058524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344880 (f1 j).toNat = 1) n)

end

end A344883.P3388805781855058524

/-! ## A344883.P3643080857860635154

`filter[A106543(n+1), A344880(#)]`
-/

namespace A344883.P3643080857860635154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344880 (f1 j).toNat = 1) n)

end

end A344883.P3643080857860635154

/-! ## A344883.P17442692537913653831

`filter[A344980(n+1), A344880(#)]`
-/

namespace A344883.P17442692537913653831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344880 (f1 j).toNat = 1) n)

end

end A344883.P17442692537913653831

/-! ## A344883.P165163321169895504

`filter[A361102(n+2), A344880(#)]`
-/

namespace A344883.P165163321169895504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344880 (f1 j).toNat = 1) n)

end

end A344883.P165163321169895504

/-! ## A344883.P5969212774559082013

`eq[A020500(n+1), A344590(n+1)]+1`
-/

namespace A344883.P5969212774559082013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344883.P5969212774559082013

/-! ## A344883.P12849404111520544349

`eq[A020500(n+1), A344759(n+1)]+1`
-/

namespace A344883.P12849404111520544349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344759 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344883.P12849404111520544349

/-! ## A344883.P13128574289380107573

`eq[A020500(n+1), A344880(n+1)]+1`
-/

namespace A344883.P13128574289380107573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344883.P13128574289380107573

/-! ## A344883.P3966696451582128987

`eq[A143731(n+1), A344590(n+1)]+1`
-/

namespace A344883.P3966696451582128987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344883.P3966696451582128987

/-!
# A344884: a(n) = 1 if A011772(n) divides A344875(n), otherwise 0; characteristic function of A344974.

The programs for A344884, there is no canonical definition to state claims against.
-/

/-! ## A344884.P7224553280198648561

`floor(1/A344970(n+1))`
-/

namespace A344884.P7224553280198648561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A344970 (n + 1) : ℚ)⌋

end

end A344884.P7224553280198648561

/-! ## A344884.P4308695028383595560

`char[eq[0, A344973(n+1)]]`
-/

namespace A344884.P4308695028383595560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344973 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A344884.P4308695028383595560

/-! ## A344884.P17197097728893127392

`floor(1/A354987(2*(n+1)))`
-/

namespace A344884.P17197097728893127392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A354987 (2 * (n + 1)) : ℚ)⌋

end

end A344884.P17197097728893127392

/-! ## A344884.P5975316257295049116

`A000007(A344973(n+1))`
-/

namespace A344884.P5975316257295049116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A344973 (n + 1)).toNat

end

end A344884.P5975316257295049116

/-! ## A344884.P4883942545514840154

`A063524(A344973(n+1)+1)`
-/

namespace A344884.P4883942545514840154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A344973 (n + 1) + 1).toNat

end

end A344884.P4883942545514840154

/-! ## A344884.P2567958888259772868

`A000007(A344970(n+1)-1)`
-/

namespace A344884.P2567958888259772868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A344970 (n + 1) - 1).toNat

end

end A344884.P2567958888259772868

/-! ## A344884.P9840289585701226397

`A171386(A344973(n+1)+3)`
-/

namespace A344884.P9840289585701226397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171386 (A344973 (n + 1) + 3).toNat

end

end A344884.P9840289585701226397

/-! ## A344884.P8716857200824712053

`A010051(2*A344970(n+1))`
-/

namespace A344884.P8716857200824712053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A344970 (n + 1)).toNat

end

end A344884.P8716857200824712053

/-! ## A344884.P15561353198966941104

`A161696(A344970(n+1)+8)`
-/

namespace A344884.P15561353198966941104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161696 (A344970 (n + 1) + 8).toNat

end

end A344884.P15561353198966941104

/-! ## A344884.P3563656110181932181

`A307016(C(2, A344970(n+1)))`
-/

namespace A344884.P3563656110181932181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307016 (Nat.choose 2 (A344970 (n + 1)).toNat)

end

end A344884.P3563656110181932181

/-! ## A344884.P9991370284001620061

`A000007(xor(1, A344970(n+1)))`
-/

namespace A344884.P9991370284001620061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A344970 (n + 1))).toNat

end

end A344884.P9991370284001620061

/-! ## A344884.P11660732082141769

`A109606(C(2, A344970(n+1))+1)`
-/

namespace A344884.P11660732082141769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (Nat.choose 2 (A344970 (n + 1)).toNat + 1)

end

end A344884.P11660732082141769

/-! ## A344884.P6009030485160015071

`C(A344972(n+1), A344971(n+1))`
-/

namespace A344884.P6009030485160015071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344972 (n + 1)).toNat (A344971 (n + 1)).toNat

end

end A344884.P6009030485160015071

/-! ## A344884.P12718431878820018272

`A344973(a(n-1)+1)^A344973(n+1)` with `a(0)=1`
-/

namespace A344884.P12718431878820018272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A344973 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A344973 (n + 1) : ℤ)

end

end A344884.P12718431878820018272

/-! ## A344884.P6254687305846750337

`C(A344973(A344973(n+1)+1), A344973(n+1))`
-/

namespace A344884.P6254687305846750337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344973 (A344973 (n + 1) + 1).toNat).toNat (A344973 (n + 1)).toNat

end

end A344884.P6254687305846750337

/-! ## A344884.P13270110663742624457

`A001222(gcd(A344948(n+1), A344973(n+1)))`
-/

namespace A344884.P13270110663742624457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A344948 (n + 1)) (A344973 (n + 1)))

end

end A344884.P13270110663742624457

/-! ## A344884.P4472152861652044854

`C(A001222(A344948(n+1)), A344970(n+1))`
-/

namespace A344884.P4472152861652044854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A344948 (n + 1)).toNat).toNat (A344970 (n + 1)).toNat

end

end A344884.P4472152861652044854

/-! ## A344884.P6719947816324918222

`A010051(A344970(n+1)+A344970(n+1)²)`
-/

namespace A344884.P6719947816324918222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A344970 (n + 1) + A344970 (n + 1) ^ 2).toNat

end

end A344884.P6719947816324918222

/-! ## A344884.P9283456926010960362

`A344970(n+1)^A106707(A050292(n))`
-/

namespace A344884.P9283456926010960362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344970 (n + 1) : ℚ) ^ (A106707 (A050292 n).toNat : ℤ)

end

end A344884.P9283456926010960362

/-! ## A344884.P1845783584995036228

`A344970(n+1)^A106707(n)`
-/

namespace A344884.P1845783584995036228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344970 (n + 1) : ℚ) ^ (A106707 n : ℤ)

end

end A344884.P1845783584995036228

/-!
# A344885: a(n) = 1 if A011772(n) is equal to A344878(n), otherwise 0; characteristic function of A344979.

The programs for A344885, there is no canonical definition to state claims against.
-/

/-! ## A344885.P7952317581816731228

`∏{d}[A344976(n+1), log(#)]`
-/

namespace A344885.P7952317581816731228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A344885.P7952317581816731228

/-! ## A344885.P1833824415704907633

`A344976(a(n-1)+1)^A344976(n+1)^6` with `a(0)=1`
-/

namespace A344885.P1833824415704907633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A344976 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A344976 (n + 1) ^ 6 : ℤ)

end

end A344885.P1833824415704907633

/-! ## A344885.P9229404531758290060

`val(A005843(n+1), A344976(n+1)+A005843(n+1))`
-/

namespace A344885.P9229404531758290060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005843 (n + 1)).toNat (A344976 (n + 1) + A005843 (n + 1)).toNat

end

end A344885.P9229404531758290060

/-! ## A344885.P12884704494966062778

`char[eq[A011772(n+1), A344878(n+1)]]`
-/

namespace A344885.P12884704494966062778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A344885.P12884704494966062778

/-! ## A344885.P1927096982856604644

`A001221(gcd(A000040(n+1), A344976(n+1)))`
-/

namespace A344885.P1927096982856604644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A000040 (n + 1)) (A344976 (n + 1)))

end

end A344885.P1927096982856604644

/-! ## A344885.P5272992498941439086

`∏{d}[A344976(n+1), A344976(#)]²`
-/

namespace A344885.P5272992498941439086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A344976 d) ^ 2

end

end A344885.P5272992498941439086

/-! ## A344885.P15618525093268943452

`A344976(A343194(n+1)+1)^A344976(n+1)²`
-/

namespace A344885.P15618525093268943452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344976 (A343194 (n + 1) + 1).toNat : ℚ) ^ (A344976 (n + 1) ^ 2 : ℤ)

end

end A344885.P15618525093268943452

/-! ## A344885.P2512576754763902929

`A097806(∑[n+2]-A344976(n+1))`
-/

namespace A344885.P2512576754763902929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A344976 (n + 1)).toNat

end

end A344885.P2512576754763902929

/-! ## A344885.P5190492240218202967

`∏{e}[A344948(n+2)*A344976(n+1), #+1]%2`
-/

namespace A344885.P5190492240218202967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344948 (n + 2) * A344976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) % 2

end

end A344885.P5190492240218202967

/-! ## A344885.P15932963312657108102

`∏{e}[A344948(n+1)*A344976(n+1), A344976(#)]`
-/

namespace A344885.P15932963312657108102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344948 (n + 1) * A344976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A344976 (Nat.factorization (f1 n).natAbs p)

end

end A344885.P15932963312657108102

/-!
# A344886: a(n) is the smallest triangular number that is a multiple of the product of the members of the n-th pair of twin primes.

The programs for A344886, there is no canonical definition to state claims against.
-/

/-! ## A344886.P17574609741607424485

`3*C(A006512(n+1), 4)`
-/

namespace A344886.P17574609741607424485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (A006512 (n + 1)).toNat 4

end

end A344886.P17574609741607424485

/-! ## A344886.P1874509920352426307

`C(C(A014574(n+1), 2), 2)`
-/

namespace A344886.P1874509920352426307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A014574 (n + 1)).toNat 2) 2

end

end A344886.P1874509920352426307

/-! ## A344886.P3564599472423306265

`C(C(A167777(n+2), 2), 2)`
-/

namespace A344886.P3564599472423306265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A167777 (n + 2)).toNat 2) 2

end

end A344886.P3564599472423306265

/-! ## A344886.P14938898641990885287

`C(C(A129297(n+5), 2), 2)`
-/

namespace A344886.P14938898641990885287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A129297 (n + 5)).toNat 2) 2

end

end A344886.P14938898641990885287

/-! ## A344886.P6435128788782498945

`C(C(sqrt(A075369(n+1)), 2), 2)`
-/

namespace A344886.P6435128788782498945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat 2) 2

end

end A344886.P6435128788782498945

/-!
# A344888: a(n) is the least base k >= 2 where n is an undulating number (i.e., with digits of the form abababab...).

The programs for A344888, there is no canonical definition to state claims against.
-/

/-! ## A344888.P5329111550392365678

`A333381(∑[C(or(1, n), n)])+1`
-/

namespace A344888.P5329111550392365678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 1 n) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A344888.P5329111550392365678

/-! ## A344888.P4787321297833523187

`A333381(A140144(n+1))+1`
-/

namespace A344888.P4787321297833523187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A140144 (n + 1)).toNat + 1

end

end A344888.P4787321297833523187

/-! ## A344888.P1848655759571701677

`A235708(A034851(n)*A235717(n+1))`
-/

namespace A344888.P1848655759571701677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235708 (A034851 n * A235717 (n + 1)).toNat

end

end A344888.P1848655759571701677

/-! ## A344888.P15359358094421752145

`A235708(A046854(n)*A235717(n+1))`
-/

namespace A344888.P15359358094421752145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235708 (A046854 n * A235717 (n + 1)).toNat

end

end A344888.P15359358094421752145

/-! ## A344888.P11812089313218310605

`A235708(lcm(A007318(n), A235717(n+1)))`
-/

namespace A344888.P11812089313218310605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235708 (Int.lcm (A007318 n) (A235717 (n + 1)))

end

end A344888.P11812089313218310605

/-!
# A344889: Divide the positive integers into subsets of lengths given by successive primes. a(n) is the product of primes contained in the n-th subset.

The programs for A344889, there is no canonical definition to state claims against.
-/

/-! ## A344889.P4924697957021303001

`ratio[A034386(A007504(n))]`
-/

namespace A344889.P4924697957021303001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A007504 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A344889.P4924697957021303001

/-! ## A344889.P7009156639958027914

`ratio[A034386(∑[A182986(n+1)])]`
-/

namespace A344889.P7009156639958027914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A344889.P7009156639958027914

/-! ## A344889.P3078033047080297191

`ratio[A034386(record[A160793(n+1)])]`
-/

namespace A344889.P3078033047080297191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A344889.P3078033047080297191

/-! ## A344889.P16936664467861604735

`ratio[A034386(A014284(n+1)-1)]`
-/

namespace A344889.P16936664467861604735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A014284 (n + 1) - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A344889.P16936664467861604735

/-! ## A344889.P7770657731520483194

`ratio[A034386(A036439(n+1)-2)]`
-/

namespace A344889.P7770657731520483194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A036439 (n + 1) - 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A344889.P7770657731520483194

/-!
# A344890: Number of partitions of prime(n) containing a prime number of distinct primes and an arbitrary number of nonprimes.

The programs for A344890, there is no canonical definition to state claims against.
-/

/-! ## A344890.P14026508084456559805

`A344715(A000040(n+1))`
-/

namespace A344890.P14026508084456559805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344715 (A000040 (n + 1)).toNat

end

end A344890.P14026508084456559805

/-! ## A344890.P16626678275632063421

`A344715(p?[xor(1, n)])`
-/

namespace A344890.P16626678275632063421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344715 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A344890.P16626678275632063421

/-! ## A344890.P5532251985486173999

`A344715(p?[comp[n²]])`
-/

namespace A344890.P5532251985486173999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344715 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A344890.P5532251985486173999

/-! ## A344890.P16979768082593133154

`A344715(eq[1, 1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n]+1)`
-/

namespace A344890.P16979768082593133154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344715 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A344890.P16979768082593133154

/-! ## A344890.P15112230698752337630

`A344715(A006005(n+1))`
-/

namespace A344890.P15112230698752337630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344715 (A006005 (n + 1)).toNat

end

end A344890.P15112230698752337630

/-!
# A344891: Divide the primes into subsets of lengths given by successive primes, then reverse the order of terms in each subset.

The programs for A344891, the canonical program `A344891.P4793939344871963479` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344891 has offset 1).

The definition of A344891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344891.P4793939344871963479

`A000040(A343809(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A344891

/-- `A000040(A343809(n+1))` -/
def P4793939344871963479.Spec : Prop :=
  ∀ n, P4793939344871963479.a n = A344891 (n + 1)

theorem P4793939344871963479.correct : P4793939344871963479.Spec := by
  intro n
  simp only [A344891, Nat.add_sub_cancel]

end A344891

/-! ## A344891.P8598576752568173385

`p?[A084408(A038722(n+1))]`
-/

namespace A344891.P8598576752568173385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344891.P8598576752568173385

namespace A344891

/-- `p?[A084408(A038722(n+1))]` -/
def P8598576752568173385.Spec : Prop :=
  ∀ n, P8598576752568173385.a n = A344891 (n + 1)

end A344891

/-! ## A344891.P5726154892496805218

`p?[A084408(A061579(n)+1)]`
-/

namespace A344891.P5726154892496805218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344891.P5726154892496805218

namespace A344891

/-- `p?[A084408(A061579(n)+1)]` -/
def P5726154892496805218.Spec : Prop :=
  ∀ n, P5726154892496805218.a n = A344891 (n + 1)

end A344891

/-! ## A344891.P15600004082808144625

`A008578(A343809(n+1)+1)`
-/

namespace A344891.P15600004082808144625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A343809 (n + 1) + 1).toNat

end

end A344891.P15600004082808144625

namespace A344891

/-- `A008578(A343809(n+1)+1)` -/
def P15600004082808144625.Spec : Prop :=
  ∀ n, P15600004082808144625.a n = A344891 (n + 1)

end A344891

/-! ## A344891.P4365817653208466559

`A158611(A343809(n+1)+2)`
-/

namespace A344891.P4365817653208466559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A343809 (n + 1) + 2).toNat

end

end A344891.P4365817653208466559

namespace A344891

/-- `A158611(A343809(n+1)+2)` -/
def P4365817653208466559.Spec : Prop :=
  ∀ n, P4365817653208466559.a n = A344891 (n + 1)

end A344891

/-! ## A344891.P17935209115681320137

`∑{d}[A343809(n+1), A007444(#)]`
-/

namespace A344891.P17935209115681320137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A344891.P17935209115681320137

namespace A344891

/-- `∑{d}[A343809(n+1), A007444(#)]` -/
def P17935209115681320137.Spec : Prop :=
  ∀ n, P17935209115681320137.a n = A344891 (n + 1)

end A344891

/-!
# A344892: Loxton-van der Poorten sequence: base-4 representation contains only -1, 0, +1, converted to ordinary base-4 digits 0,1,2,3.

The programs for A344892, the canonical program `A344892.P11384229101159648878` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344892 has offset 0).

The definition of A344892 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006288, A007090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344892.P11384229101159648878

`A007090(A006288(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A344892

/-- `A007090(A006288(n))` -/
def P11384229101159648878.Spec : Prop :=
  ∀ n, P11384229101159648878.a n = A344892 n

theorem P11384229101159648878.correct : P11384229101159648878.Spec := by
  intro n
  simp only [A344892]

end A344892

/-! ## A344892.P6039247404225515474

`A007090(eq[0, A292372(A048724(n))])`
-/

namespace A344892.P6039247404225515474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A048724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344892.P6039247404225515474

namespace A344892

/-- `A007090(eq[0, A292372(A048724(n))])` -/
def P6039247404225515474.Spec : Prop :=
  ∀ n, P6039247404225515474.a n = A344892 n

end A344892

/-! ## A344892.P14904872063220009045

`A007090(A023717(2*n)-A023717(n))`
-/

namespace A344892.P14904872063220009045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A023717 (2 * n) - A023717 n).toNat

end

end A344892.P14904872063220009045

namespace A344892

/-- `A007090(A023717(2*n)-A023717(n))` -/
def P14904872063220009045.Spec : Prop :=
  ∀ n, P14904872063220009045.a n = A344892 n

end A344892

/-! ## A344892.P8600734579323215515

`A007090(eq[A059905(3*n), A059905(n)])`
-/

namespace A344892.P8600734579323215515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A344892.P8600734579323215515

namespace A344892

/-- `A007090(eq[A059905(3*n), A059905(n)])` -/
def P8600734579323215515.Spec : Prop :=
  ∀ n, P8600734579323215515.a n = A344892 n

end A344892

/-! ## A344892.P9703075616670517410

`A007091(record[A309991(2*n)/2])`
-/

namespace A344892.P9703075616670517410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309991 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A344892.P9703075616670517410

namespace A344892

/-- `A007091(record[A309991(2*n)/2])` -/
def P9703075616670517410.Spec : Prop :=
  ∀ n, P9703075616670517410.a n = A344892 n

end A344892

/-! ## A344892.P5156205045814701310

`A007091(record[A309991(2*n)-n])`
-/

namespace A344892.P5156205045814701310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344892.P5156205045814701310

namespace A344892

/-- `A007091(record[A309991(2*n)-n])` -/
def P5156205045814701310.Spec : Prop :=
  ∀ n, P5156205045814701310.a n = A344892 n

end A344892

/-! ## A344892.P3010392013530137472

`A007090(eq[3, A344893(4*n+1)])`
-/

namespace A344892.P3010392013530137472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344893 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A344892.P3010392013530137472

namespace A344892

/-- `A007090(eq[3, A344893(4*n+1)])` -/
def P3010392013530137472.Spec : Prop :=
  ∀ n, P3010392013530137472.a n = A344892 n

end A344892

/-! ## A344892.P7625264223690210767

`A064770(A007089(2*n)-A007089(n))`
-/

namespace A344892.P7625264223690210767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 (A007089 (2 * n) - A007089 n).toNat

end

end A344892.P7625264223690210767

namespace A344892

/-- `A064770(A007089(2*n)-A007089(n))` -/
def P7625264223690210767.Spec : Prop :=
  ∀ n, P7625264223690210767.a n = A344892 n

end A344892

/-!
# A344896: Number of polygon edges formed by infinite lines when connecting all vertices and all points that divide the sides of an equilateral triangle into n equal parts.

The programs for A344896, there is no canonical definition to state claims against.
-/

/-! ## A344896.P7945816085995634775

`A344279(n+1)+A344657(n+1)-1`
-/

namespace A344896.P7945816085995634775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344279 (n + 1) + A344657 (n + 1) - 1

end

end A344896.P7945816085995634775

/-! ## A344896.P11696925269672486324

`A343755(n+1)-A008486(A051890(n+1))+A344657(n+1)-1`
-/

namespace A344896.P11696925269672486324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343755 (n + 1) - A008486 (A051890 (n + 1)).toNat + (A344657 (n + 1) - 1)

end

end A344896.P11696925269672486324

/-! ## A344896.P9217559038210005806

`A344279(n+1)+A066182(A344657(n+1))`
-/

namespace A344896.P9217559038210005806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344279 (n + 1) + A066182 (A344657 (n + 1)).toNat

end

end A344896.P9217559038210005806

/-!
# A344897: a(n) is the number of divisors of 10^n + 1.

The programs for A344897, there is no canonical definition to state claims against.
-/

/-! ## A344897.P17582897529971077932

`A117592(∑[lcm(2^n, a(n-1))])` with `a(0)=5, a(1)=10, a(2)=1, a(3)=10`
-/

namespace A344897.P17582897529971077932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 10, 1, 10] fun n f1 =>
  Nat.lcm (2 ^ n) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344897.P17582897529971077932

/-! ## A344897.P10432311278318108605

`A064122(A194110(n+2))`
-/

namespace A344897.P10432311278318108605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064122 (A194110 (n + 2)).toNat

end

end A344897.P10432311278318108605

/-! ## A344897.P17000309273584058230

`A205565(A224603(n+2))`
-/

namespace A344897.P17000309273584058230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 (A224603 (n + 2)).toNat

end

end A344897.P17000309273584058230

/-! ## A344897.P12226358540915601120

`A139560(A355958(n+2))`
-/

namespace A344897.P12226358540915601120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139560 (A355958 (n + 2)).toNat

end

end A344897.P12226358540915601120

/-! ## A344897.P2421272291650567005

`A294931(A263639(n+2))`
-/

namespace A344897.P2421272291650567005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294931 (A263639 (n + 2)).toNat

end

end A344897.P2421272291650567005

/-!
# A344899: Number of polygon edges formed when every pair of vertices of a regular n-gon are joined by an infinite line.

The programs for A344899, there is no canonical definition to state claims against.
-/

/-! ## A344899.P5546170729419689822

`A001787(n)-A001222(A213357(n))`
-/

namespace A344899.P5546170729419689822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A001222 (A213357 n).toNat

end

end A344899.P5546170729419689822

/-! ## A344899.P14144648317635240484

`A153249(A046776(n))*A184985(n+1)`
-/

namespace A344899.P14144648317635240484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153249 (A046776 n).toNat * A184985 (n + 1)

end

end A344899.P14144648317635240484

/-! ## A344899.P2917982973539741194

`A002375(A032153(n)*A143592(3*n+4))`
-/

namespace A344899.P2917982973539741194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A032153 n * A143592 (3 * n + 4)).toNat

end

end A344899.P2917982973539741194

